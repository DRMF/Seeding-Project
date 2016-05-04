'''
    Started by Divya Gandla, Modified by Kevin Chen without the use of regular expressions
    DRMF Project: Converting Mathematica to LateX
'''

#mathematica = open('Identities.m', 'r').read()
mathematica = open('test.txt', 'r').read()

latex = open('newIdentitiesTest.tex', 'w')

# dictionary containing most conversions
conversion = {

    'general_symbols':
    {
        # Lowercase Greek Alphabet
        'Alpha':'alpha', 'Beta':'beta', 'Gamma':'gamma', 'Delta':'delta', 'Epsilon':'epsilon', 'Zeta':'zeta',
        'Eta':'eta', 'Theta':'theta', 'Iota':'iota', 'Kappa':'kappa', 'Lambda':'lambda', 'Mu':'mu', 'Nu':'nu',
        'Xi':'xi', 'Omicron':'o', 'Pi':'pi', 'Rho':'rho', 'Sigma':'sigma', 'Tau':'tau', 'Upsilon':'upsilon',
        'Phi':'phi', 'Chi':'chi', 'Psi':'phi', 'Omega':'omega',

        # Uppercase Greek Alphabet
        'CapitalAlpha':' A', 'CapitalBeta':' B', 'CapitalGamma':'Gamma', 'CapitalDelta':'Delta',
        'CapitalEpsilon':'E', 'CapitalZeta':' Z', 'CapitalEta':' H', 'CapitalTheta':'Theta', 'CapitalIota':' I',
        'CapitalKappa':'K', 'CapitalLambda':'Lambda', 'CapitalMu':' M', 'CapitalNu':' N', 'CapitalXi':'Xi',
        'CapitalOmicron':'O', 'CapitalPi':'Pi', 'CapitalRho':' P', 'CapitalSigma':'Sigma', 'CapitalTau':' T',
        'CapitalUpsilon':' Y', 'CapitalPhi':'Phi', 'CapitalChi':' X', 'CapitalPsi':'Psi', 'CapitalOmega':'Omega',

        # Special Greek Letters
        'CurlyEpsilon':'varepsilon', 'CurlyTheta':'vartheta', 'CurlyKappa':'varkappa', 'CurlyPi':'varpi',
        'CurlyRho':'varrho', 'FinalSigma':'varsigma', 'CurlyPhi':'varphi', 'CurlyCapitalUpsilon':'varUpsilon',

        # Hebrew Symbols
        'Aleph':'aleph', 'Bet':'beth', 'Gimel':'gimel', 'Dalet':'daleth',

        # Infinity
        'Infinity':'infty',
    },

    # Trigonometric functions
    'trig_functions':
    [
        ['ArcSinh', 'asinh'], ['ArcCosh', 'acosh'], ['ArcTanh', 'atanh'], ['ArcCsch', 'acsch'],
        ['ArcSech', 'asech'], ['ArcCoth', 'acoth'], ['ArcSin', 'asin'], ['ArcCos', 'acos'], ['ArcTan', 'atan'],
        ['ArcCsc', 'acsc'], ['ArcSec', 'asec'], ['ArcCot', 'acot'], ['Sinh', 'sinh'], ['Cosh', 'cosh'],
        ['Tanh', 'tanh'], ['Csch', 'csch'], ['Sech', 'sech'], ['Coth', 'coth'], ['Sin', 'sin'], ['Cos', 'cos'],
        ['Tan', 'tan'], ['Csc', 'csc'], ['Sec', 'sec'], ['Cot', 'cot']
    ],

    # Any special functions
    'special_functions':
    {
        '':''
    }
}


# find indexes of beginning and end of function
def find_surrounding(line, function, ex = [], start = 0):
    positions = [0, 0]
    line = line[start:]
    positions[0] = line.find(function)

    if ex != []:
        for e in ex:
            if line.find(e) != -1 and line.find(e) <= positions[0] and \
                line.find(e) + len(e) >= positions[0] + len(function):
                return [line.find(e) + len(e) + start, line.find(e) + len(e) + start]

    count = 0

    for j in range(positions[0] + len(function), len(line) + 1):
        if j == len(line):
            if count == 0:
                positions[1] = positions[0]
                break
        if line[j] in ('(', '[', '{'): count += 1
        if line[j] in (')', ']', '}'): count -= 1
        if count == 0:
            if j == positions[0] + len(function):
                positions[1] = positions[0]
            else: positions[1] = j + 1
            break

    return [positions[0] + start, positions[1] + start]


# splits the input with sep as the separator, very similar to ".split",
# except it does not split when separator is inside brackets
def arg_split(line, sep):
    l = ('(', '[', '{')
    r = (')', ']', '}')
    args = []
    count = i = 0
    end = len(line) + 1
    line = line + sep

    while i != end:
        if i == end:
            args.append(line)
            break
        if line[i] in l: count += 1
        if line[i] in r: count -= 1
        if count == 0 and line[i] == sep:
            args.append(line[:i])
            end -= i + 1
            line = line[i + 1:]
            i = 0
        else: i += 1

    return args


# converts mathematica comments to latex
def change_comments(line):
    line = line.replace('(*', r'%')
    line = line.replace('*)', r'%')

    return line


# removes "Inactive" and its brackets in the beginning of "ConditionalExpression"
def remove_inactive(line):
    for i in range(0, line.count('Inactive')):
        pos = find_surrounding(line, 'Inactive')

        if pos[0] != pos[1]:
            line = line[:pos[0]] + line[pos[0] + 9:pos[1] - 1] + line[pos[1]:]

    return line


# removes "ConditionalExpression" and its brackets
def remove_conditional_expression(line):
    for i in range(0, line.count('ConditionalExpression')):
        pos = find_surrounding(line, 'ConditionalExpression')

        if pos[0] != pos[1]:
            line = line[:pos[0]] + line[pos[0] + 22:pos[1] - 1] + line[pos[1]:]

    return line


# replaces the mathematical airy functions with the latex equivalents
def replace_airy(line):
    for word in ['AiryAiPrime', 'AiryBiPrime', 'AiryBi', 'AiryAi']:
        for i in range(0, line.count(word)):
            pos = find_surrounding(line, word)

            if 'Prime' in word:
                line = line.replace(line[pos[0]:pos[1]], '\\' + word[4:] + '\'@{' + \
                                    line[pos[0] + len(word) + 1:pos[1] - 1] + '}')
            else:
                line = line.replace(line[pos[0]:pos[1]], '\\' + word + '@{' + \
                                    line[pos[0] + len(word) + 1:pos[1] - 1] + '}')

    return line.replace('AiPrime\'@','AiryAi\'@').replace('BiPrime\'@','AiryBi\'@')


# converts "==" to "="
def replace_equals(line):
    return line.replace('==', '=')


# converts mathematica pi to latex
def replace_pi(line):
    return line.replace('Pi', r'\pi')


# replaces the variables in the "general_symbol" part of the conversion dictionary
# these variables do not have arguments, and thus can be easily ".replace"d
def replace_vars(line):
    for word in conversion['general_symbols']:
        if conversion['general_symbols'][word][0] == ' ':
            line = line.replace(r'\[' + word + ']', conversion['general_symbols'][word][1:])
        elif word == 'Infinity':
            line = line.replace('Infinity', r'\infty')
        else:
            line = line.replace('[' + word + ']', conversion['general_symbols'][word])

    return line


# replaces the mathematica trig functions with latex macros
def replace_trig(line):
    for word in conversion['trig_functions']:
        for i in range(0, line.count(word[0])):
            pos = find_surrounding(line, word[0], ex = ['CoshIntegral','CosIntegral'])

            if pos[1] - pos[0] - len(word[0]) - 2 == 1:
                line = line[:pos[0]] + '\\' + word[1] + '@@{' + \
                       line[pos[0] + 1 + len(word[0]):pos[1] - 1] + '}' + line[pos[1]:]
            else:
                line = line[:pos[0]] + '\\' + word[1] + '@{' + \
                       line[pos[0] + 1 + len(word[0]):pos[1] - 1] + '}' + line[pos[1]:]

    return line


# converts mathematica square root to latex
def replace_sqrt(line):
    for i in range(0, line.count('Sqrt')):
        try: pos
        except NameError: pos = find_surrounding(line, 'Sqrt')
        else: pos = find_surrounding(line, 'Sqrt', start = pos[0] + 6)

        if pos[0] != pos[1]:
            line = line[:pos[0]] + '\\sqrt{' + line[pos[0] + 5:pos[1] - 1] + '}' + line[pos[1]:]

    return line


# converts mathematica Gamma (with arguments) to latex macro
def replace_gamma(line):
    for i in range(0, line.count('Gamma')):
        try: pos
        except NameError: pos = find_surrounding(line, 'Gamma', ex = ['\\CapitalGamma', '\\Gamma', 'PolyGamma'])
        else: pos = find_surrounding(line, 'Gamma', ex = ['\\CapitalGamma', '\\Gamma', 'PolyGamma'], \
                                     start = pos[0] + [0,13][[1,0].index(pos[1]-pos[0]==0)])

        if pos[0] != pos[1]:
            line = line[:pos[0]] + '\\EulerGamma@{' + line[pos[0] + 6:pos[1] - 1] + '}' + line[pos[1]:]

    return line


# converts carats to ones with brackets instead of parens, and if there are negative powers
def replace_carat(line):
    for i in range(0, line.count('^')):
        try: pos
        except NameError: pos = find_surrounding(line, '^')
        else: pos = find_surrounding(line, '^', start = pos[0] + 2)

        if pos[0] != pos[1]:
            if line[pos[0] + 2] == '--':

                arg = line[pos[0] + 3:pos[1] - 1]
                if arg[0] in ('(', '[', '{') and arg[-1] in (')', ']', '}'):
                    arg = arg[1:-1]

                count = 0
                for j in range(pos[0] - 1, -1, -1):
                    if line[j] in (')', ']', '}'): count += 1
                    if line[j] in ('(', '[', '{'): count -= 1
                    if count == 0:
                        break

                carat = line[j:pos[0]]
                if carat[0] in ('(', '[', '{') and carat[-1] in (')', ']', '}'):
                    carat = carat[1:-1]

                if arg == '1':
                    line = line[:j] + '\\frac{1}{' + carat + '}' + line[pos[1]:]
                else:
                    line = line[:j] + '\\frac{1}{{' + carat + '}^{' + arg + '}}' + line[pos[1]:]
                pos[0] += 11

            else:
                arg = line[pos[0] + 2:pos[1] - 1]
                if arg[0] in ('(', '[', '{') and arg[-1] in (')', ']', '}'):
                    arg = arg[1:-1]
                line = line[:pos[0]] + '^{' + arg + '}' + line[pos[1]:]

    return line


# converts mathematica arg to latex
def replace_arg(line):
    for i in range(0, line.count('Arg')):
        try: pos
        except NameError: pos = find_surrounding(line, 'Arg')
        else: pos = find_surrounding(line, 'Arg', start = pos[0] + 6)

        if pos[0] != pos[1]:
            line = line[:pos[0]] + '\\ph@@{' + line[pos[0] + 4:pos[1] - 1] + '}' + line[pos[1]:]

    return line


# converts mathematica absolute value function to latex
def replace_abs(line):
    for i in range(0, line.count('Abs')):
        try: pos
        except NameError: pos = find_surrounding(line, 'Abs')
        else: pos = find_surrounding(line, 'Abs', start = pos[0] + 5)

        if pos[0] != pos[1]:
            line = line[:pos[0]] + '\\abs{' + line[pos[0] + 4:pos[1] - 1] + '}' + line[pos[1]:]

    return line


# converts mathematica re to latex macro
def replace_re(line):
    for i in range(0, line.count('Re')):
        try: pos
        except NameError: pos = find_surrounding(line, 'Re')
        else: pos = find_surrounding(line, 'Re', start = pos[0] + 10)

        if pos[0] != pos[1]:
            line = line[:pos[0]] + '\\realpart{' + line[pos[0] + 3:pos[1] - 1] + '}' + line[pos[1]:]

    return line


# converts mathematica im to latex macro
def replace_im(line):
    for i in range(0, line.count('Im')):
        try: pos
        except NameError: pos = find_surrounding(line, 'Im')
        else: pos = find_surrounding(line, 'Im', start = pos[0] + 10)

        if pos[0] != pos[1]:
            line = line[:pos[0]] + '\\imagpart{' + line[pos[0] + 3:pos[1] - 1] + '}' + line[pos[1]:]

    return line


# converts mathematica log to latex macro
def replace_log(line):
    for i in range(0, line.count('Log')):
        try: pos
        except NameError: pos = find_surrounding(line, 'Log', ex = ['LogIntegral', 'PolyLog'])
        else: pos = find_surrounding(line, 'Log', ex = ['LogIntegral', 'PolyLog'], \
                                     start = pos[0] + [0, 6][[1, 0].index(pos[1] - pos[0] == 0)])

        if pos[0] != pos[1]:
            line = line[:pos[0]] + '\\Ln@@{' + line[pos[0] + 4:pos[1] - 1] + '}' + line[pos[1]:]

    return line


def replace_log_integral(line):
    for i in range(0, line.count('LogIntegral')):
        try: pos
        except NameError: pos = find_surrounding(line, 'LogIntegral', ex = [''])
        else: pos = find_surrounding(line, 'LogIntegral', ex = [''], \
                                     start = pos[0] + [0, 9][[1, 0].index(pos[1] - pos[0] == 0)])

        if pos[0] != pos[1]:
            line = line[:pos[0]] + '\\LogInt@{' + line[pos[0] + 12:pos[1] - 1] + '}' + line[pos[1]:]

    return line



# converts mathematica dawsonf to latex macro
def dawson_f(line):
    for i in range(0, line.count('DawsonF')):
        try: pos
        except NameError: pos = find_surrounding(line, 'DawsonF')
        else: pos = find_surrounding(line, 'DawsonF', start = pos[0] + 13)

        if pos[0] != pos[1]:
            line = line[:pos[0]] + '\\DawsonsInt@{' + line[pos[0] + 8:pos[1] - 1] + '}' + line[pos[1]:]

    return line


# converts mathematica floor to latex macro
def replace_floor(line):
    for i in range(0, line.count('Floor')):
        try: pos
        except NameError: pos = find_surrounding(line, 'Floor')
        else: pos = find_surrounding(line, 'Floor', start = pos[0] + 7)

        if pos[0] != pos[1]:
            line = line[:pos[0]] + '\\floor{' + line[pos[0] + 6:pos[1] - 1] + '}' + line[pos[1]:]

    return line


# converts mathematica polygamma to latex with two macros for single arguments and multiple arguments
def replace_polygamma(line):
    for i in range(0, line.count('PolyGamma')):
        try: pos
        except NameError: pos = find_surrounding(line, 'PolyGamma')
        else: pos = find_surrounding(line, 'PolyGamma', start = pos[0] + 10)

        if pos[0] != pos[1]:
            args = arg_split(line[pos[0] + 10:pos[1] - 1], ',')

            if len(args) == 2:
                line = line[:pos[0]] + '\\polygamma{' + args[0] + '}@{' + args[1] + '}' + line[pos[1]:]
            else:
                line = line[:pos[0]] + '\\digamma@{' + line[pos[0] + 12:pos[1] - 1] + '}' + line[pos[1]:]

    return line


# converts mathematica hypergeometricu to latex macro
def hypergeometric_u(line):
    for i in range(0, line.count('HypergeometricU')):
        try: pos
        except NameError: pos = find_surrounding(line, 'HypergeometricU')
        else: pos = find_surrounding(line, 'HypergeometricU', start = pos[0] + 9)

        if pos[0] != pos[1]:
            args = arg_split(line[pos[0] + 16:pos[1] - 1], ',')

            line = line[:pos[0]] + '\\KummerU@{' + '}{'.join(args) + '}' + line[pos[1]:]

    return line

# converts mathematica hypergeometric2f1 to latex macro
def hypergeometric_2f1(line):
    for i in range(0, line.count('Hypergeometric2F1')):
        try: pos
        except NameError: pos = find_surrounding(line, 'Hypergeometric2F1', ex = ['Hypergeometric2F1Regularized'])
        else: pos = find_surrounding(line, 'Hypergeometric2F1', ex = ['Hypergeometric2F1Regularized'], \
                                     start = pos[0] + [0,12][[1,0].index(pos[1]-pos[0]==0)])

        if pos[0] != pos[1]:
            args = arg_split(line[pos[0] + 18:pos[1] - 1], ',')

            line = line[:pos[0]] + '\\HyperpFq{1}{2}@{' + args[0] + '}{' + args[1] + \
                   ', ' + args[2] + '}{' + args[3] + '}' + line[pos[1]:]

    return line


# converts mathematica continuedfractionk to latex macro
def continued_fraction_k(line):
    for i in range(0, line.count('ContinuedFractionK')):
        try: pos
        except NameError: pos = find_surrounding(line, 'ContinuedFractionK')
        else: pos = find_surrounding(line, 'ContinuedFractionK', start = pos[0] + 5)

        if pos[0] != pos[1]:
            args = arg_split(line[pos[0] + 19:pos[1]-1], ',')

            line = line[:pos[0]] + '\\CFK{k}{1}{\\infty}@{' + args[0] + '}{' + args[1] + '}' + line[pos[1]:]

    return line


# converts mathematica jacobip to latex macro
def jacobi_p(line):
    for i in range(0, line.count('JacobiP')):
        try: pos
        except NameError: pos = find_surrounding(line, 'JacobiP')
        else: pos = find_surrounding(line, 'JacobiP', start = pos[0] + 8)

        if pos[0] != pos[1]:
            args = arg_split(line[pos[0] + 8:pos[1] - 1], ',')

            line = line[:pos[0]] + '\\JacobiP{' +  args[0] + '}{' + args[1] + '}{' + args[2] + '}@{' \
                   + args[3] + '}' + line[pos[1]:]

    return line


# converts mathematica besseli to latex macro
def bessel_i(line):
    for i in range(0, line.count('BesselI')):
        try: pos
        except NameError: pos = find_surrounding(line, 'BesselI')
        else: pos = find_surrounding(line, 'BesselI', start = pos[0] + 8)

        if pos[0] != pos[1]:
            args = arg_split(line[pos[0] + 8:pos[1] - 1], ',')

            line = line[:pos[0]] + '\\BesselI{' + args[0] + '}@{' + args[1] + '}' + line[pos[1]:]

    return line


# converts mathematica besselj to latex macro
def bessel_j(line):
    for i in range(0, line.count('BesselJ')):
        try: pos
        except NameError: pos = find_surrounding(line, 'BesselJ')
        else: pos = find_surrounding(line, 'BesselJ', start = pos[0] + 8)

        if pos[0] != pos[1]:
            args = arg_split(line[pos[0] + 8:pos[1] - 1], ',')

            line = line[:pos[0]] + '\\BesselJ{' + args[0] + '}@{' + args[1] + '}' + line[pos[1]:]

    return line


# converts mathematica legendrep to latex macro
def legendre_p(line):
    for i in range(0, line.count('LegendreP')):
        try: pos
        except NameError: pos = find_surrounding(line, 'LegendreP')
        else: pos = find_surrounding(line, 'LegendreP', start = pos[0] + 8)

        if pos[0] != pos[1]:
            args = arg_split(line[pos[0] + 10:pos[1] - 1], ',')

            line = line[:pos[0]] + '\\LegendreP{' + args[0] + '}@{' + args[1] + '}' + line[pos[1]:]

    return line


# converts mathematica pochhammer to latex macro
def pochhammer(line):
    for i in range(0, line.count('Pochhammer')):
        try: pos
        except NameError: pos = find_surrounding(line, 'Pochhammer', ex = ['QPochhammer'])
        else: pos = find_surrounding(line, 'Pochhammer', ex = ['QPochhammer'], \
                                     start = pos[0] + [0, 12][[1, 0].index(pos[1] - pos[0] == 0)])

        if pos[0] != pos[1]:
            args = arg_split(line[pos[0] + 11:pos[1] - 1], ',')

            line = line[:pos[0]] + '\\pochhammer{' + args[0] + '}{' + args[1] + '}' + line[pos[1]:]

    return line


# converts mathematica hurwitzzeta to latex macro
def hurwitz_zeta(line):
    for i in range(0, line.count('HurwitzZeta')):
        try: pos
        except NameError: pos = find_surrounding(line, 'HurwitzZeta', ex = [''])
        else: pos = find_surrounding(line, 'HurwitzZeta', ex = [''], \
                                     start = pos[0] + [0, 14][[1, 0].index(pos[1] - pos[0] == 0)])

        if pos[0] != pos[1]:
            args = arg_split(line[pos[0] + 12:pos[1] - 1], ',')

            line = line[:pos[0]] + '\\HurwitzZeta@{' + args[0] + '}{' + args[1] + '}' + line[pos[1]:]

    return line


# converts mathematica polylog to latex macro
def polylogarithm(line):
    for i in range(0, line.count('PolyLog')):
        try: pos
        except NameError: pos = find_surrounding(line, 'PolyLog', ex = [''])
        else: pos = find_surrounding(line, 'PolyLog', ex = [''], \
                                     start = pos[0] + [0, 16][[1, 0].index(pos[1] - pos[0] == 0)])

        if pos[0] != pos[1]:
            args = arg_split(line[pos[0] + 8:pos[1] - 1], ',')

            line = line[:pos[0]] + '\\Polylogarithm{' + args[0] + '}@{' + args[1] + '}' + line[pos[1]:]

    return line


# converts mathematica bernoullib to latex macro
def bernoulli_b(line):
    for i in range(0, line.count('BernoulliB')):
        try: pos
        except NameError: pos = find_surrounding(line, 'BernoulliB', ex = ['PeriodicBernoulliB'])
        else: pos = find_surrounding(line, 'BernoulliB', ex = ['PeriodicBernoulliB'], \
                                     start = pos[0] + [0, 12][[1, 0].index(pos[1] - pos[0] == 0)])

        if pos[0] != pos[1]:
            line = line[:pos[0]] + '\\BernoulliB{' + line[pos[0] + 11:pos[1] - 1] + '}' + line[pos[1]:]

    return line


# converts mathematica zeta to latex macro
def zeta(line):
    for i in range(0, line.count('Zeta')):
        try: pos
        except NameError: pos = find_surrounding(line, 'Zeta', ex = [''])
        else: pos = find_surrounding(line, 'Zeta', ex = [''], \
                                     start = pos[0] + [0, 14][[1, 0].index(pos[1] - pos[0] == 0)])

        if pos[0] != pos[1]:
            line = line[:pos[0]] + '\\RiemannZeta@{' + line[pos[0] + 5:pos[1] - 1] + '}' + line[pos[1]:]

    return line


# converts mathematica "element" to latex with "\in"
def replace_element(line):
    for i in range(0, line.count('Element')):
        try: pos
        except NameError: pos = find_surrounding(line, 'Element', ex = ['NotElement'])
        else: pos = find_surrounding(line, 'Element', ex = ['NotElement'], \
                                     start = pos[0] + [0, 8][[1, 0].index(pos[1] - pos[0] == 0)])

        if pos[0] != pos[1]:
            sep = arg_split(line[pos[0] + 8:pos[1] - 1], ',')
            mathematica_elements = ('Complexes', 'Wholes', 'Naturals', 'Integers', \
                                    'Irrationals', 'Reals', 'Rational', 'Primes')
            latex_elements = ('Complex', 'Whole', 'NatNumber', 'Integer', \
                              'Irrational', 'Real', 'Rational', 'Prime')

            sep[1] = latex_elements[mathematica_elements.index(sep[1])]
            line = line[:pos[0]] + sep[0].replace('|', ',') + '\\in\\' + sep[1] + line[pos[1]:]

    return line

    # Element[a | b | c, Complexes] -> for a, b, c \in \Complex
    # Element[a, Complexes]         -> for a \in \Complex



def convert_power(line):
    for i in range(0, line.count('^')):
        try: pos
        except NameError: pos = find_surrounding(line, '^')
        else: pos = find_surrounding(line, '^', start = pos[0] + 2)

        if pos[0] != pos[1]:
            arg = line[pos[0] + 2:pos[1] - 1]
            if len(arg_split(arg, '/')) == 2:
                args = arg_split(arg, '/')
                if args[0] == '1':
                    line = line[:pos[0] - 1] + '\\sqrt[' + args[1] + ']{' + \
                        line[pos[0] - 1] + '}' + line[pos[1]:]
                else:
                    line = line[:pos[0] - 1] + '\\sqrt[' + args[1] + ']{' + \
                        line[pos[0] - 1] + '^{' + args[0] + '}}' + line[pos[1]:]

    return line


def convert_fraction(line):
    l = ('(', '[', '{')
    r = (')', ']', '}')
    sign = ('+', '-', '=', ',')
    i = 0

    while i != len(line):
        if line[i]== '/':

            # searching left
            count = 0
            for j in range(i - 1, -1, -1):
                if line[j] in r: count += 1
                if line[j] in l: count -= 1
                if count == 0 and line[j] in sign: count -= 1
                if count < 0: break
                if count == 0 and j == 0:
                    j -= 1
                    break

            # searching right
            count = 0
            for k in range(i + 1, len(line)):
                if line[k] in l: count += 1
                if line[k] in r: count -= 1
                if count == 0 and line[k] in sign: count -= 1
                if count < 0: break
                if count == 0 and k == len(line) - 1:
                    k += 1
                    break
            k -= 1

            # removing extra parentheses, if there are any
            if line[j + 1] == '(' and line[i - 1] == ')' and line[i + 1] == '(' and line[k] == ')':
                # ()/()
                line = line[:j + 1] + '\\frac{' + line[j + 2:i - 1] + '}{' + line[i + 2:k] + '}' + line[k + 1:]
            elif line[j + 1] == '(' and line[i - 1] == ')':
                # ()/--
                line = line[:j + 1] + '\\frac{' + line[j + 2:i - 1] + '}{' + line[i + 1:k + 1] + '}' + line[k + 1:]
            elif line[i + 1] == '(' and line[k] == ')':
                # --/()
                line = line[:j + 1] + '\\frac{' + line[j + 1:i] + '}{' + line[i + 2:k] + '}' + line[k + 1:]
            else:
                # --/--
                line = line[:j + 1] + '\\frac{' + line[j + 1:i] + '}{' + line[i + 1:k + 1] + '}' + line[k + 1:]

        i += 1

    return line


def replace_inequality(line):
    for i in range(0, line.count('Inequality')):
        pos = find_surrounding(line, 'Inequality')

        line = line[:pos[0]] + ' '.join(line[pos[0] + 11:pos[1] - 1].split(',')) + line[pos[1]:]

    return line


def replace_operators(line):
    line = line.replace('&&', ' \\land ')
    line = line.replace('||', ' \\lor ')
    line = line.replace('>=', ' \\geq ')
    line = line.replace('<=', ' \\leq ')
    line = line.replace('LessEqual', ' \\leq ')
    line = line.replace('Less', ' < ')
    line = line.replace('=', ' = ')
    line = line.replace('^', ' ^ ')
    line = line.replace('*', ' ')
    line = line.replace('+', ' + ')
    line = line.replace('-', ' - ')
    line = line.replace(',', ', ')
    line = line.replace('(', '\\left( ')
    line = line.replace(')', ' \\right)')
    line = line.replace('\\in\\', ' \\in \\')
    line = line.replace('  ', ' ')

    return line


mathematica = mathematica.split('\n')

latex.write(r'''\documentclass{article}

\usepackage{graphicx}
\usepackage{amsmath}
\usepackage{amsthm}
\usepackage{amssymb}
\usepackage{amsfonts}
\usepackage[paperwidth=30in,paperheight=12in,margin=2in]{geometry}
\usepackage{DLMFmath}
\usepackage{DRMFfcns}
\usepackage{breqn}

\begin{document}

''')


def main(mathematica):

    for line in mathematica:

        print(line)

        if change_comments(line) != line:
            line = change_comments(line)
            latex.write(line + '\n')
            continue

        line = line.replace(' ', '')
        line = remove_inactive(line)                    # N / A, good
        line = remove_conditional_expression(line)      # 03/29, good
        line = replace_airy(line)                       # 03/29, 04/06, good
        line = replace_equals(line)                     # N / A, good
        line = replace_pi(line)                         # N / A, good
        line = replace_vars(line)                       # N / A, 04/12, good
        line = replace_trig(line)                       # 03/29, 04/26, ????
        line = replace_sqrt(line)                       # 03/29, 04/06, 04/12, good
        line = replace_gamma(line)                      # 03/29, 04/06, 04/08, 04/12, 04/26 good
        line = replace_carat(line)                      # 03/29, 04/06, 04/08, good
        line = replace_arg(line)                        # 03/29, 04/06, good
        line = replace_abs(line)                        # 04/26, good
        line = replace_re(line)                         # 04/26, good
        line = replace_im(line)                         # 04/26, good
        line = replace_log(line)                        # 04/26, good
        line = replace_log_integral(line)               # 04/26, good
        line = dawson_f(line)                           # 04/26, good
        line = replace_floor(line)                      # 04/26, good
        line = replace_polygamma(line)                  # 03/29, 04/06, good
        line = hypergeometric_u(line)                   # 03/30, 04/06, good
        line = hypergeometric_2f1(line)                 # 03/31, 04/06, 04/08, 04/12, 04/26, good
        line = continued_fraction_k(line)               # N / A, 04/06, good
        line = jacobi_p(line)                           # 04/06, good
        line = bessel_i(line)                           # 04/26, good
        line = bessel_j(line)                           # 04/26, good
        line = legendre_p(line)                         # 04/26, good
        line = pochhammer(line)                         # 04/26, good
        line = hurwitz_zeta(line)                       # 05/02, good
        line = polylogarithm(line)                      # 05/02, good
        line = bernoulli_b(line)                        # 05/02, good
        line = zeta(line)                               # 05/03, ????
        #line = replace_element(line)                    # 03/29, 04/06, good
        #line = convert_power(line)                      # 03/31, 04/06, good
        line = convert_fraction(line)                   # 03/30, 04/06, good
        line = replace_inequality(line)                 # 03/31, 04/06, good
        line = replace_operators(line)                  # N / A, 03/30, good

        print(line)

        if line != '':
            line = '\\[ ' + line + ' \\]'
        latex.write(line + '\n')


main(mathematica)

latex.write(r'''
\end{document}''')

latex.close()
