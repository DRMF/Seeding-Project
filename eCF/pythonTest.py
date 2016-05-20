def find_surrounding(line, function, ex = [], start = 0):
    positions = [0, 0]
    line = line[start:]
    positions[0] = line.find(function)

    if ex != []:
        for e in ex:
            if line.find(e) <= positions[0] and \
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


def replace_re(line):
    for i in range(0, line.count('Re')):
        try: pos
        except NameError: pos = find_surrounding(line, 'Re', ex=['ORe'])
        else: pos = find_surrounding(line, 'Re', start=pos[0] + [0,10][[1,0].index(pos[1]-pos[0]==0)], ex=['ORe'])

        if pos[0] != pos[1]:
            line = line[:pos[0]] + '\\realpart{' + line[pos[0] + 3:pos[1] - 1] + '}' + line[pos[1]:]

    return line

def replace_gamma(line):
    for i in range(0, line.count('Gamma')):
        try: pos
        except NameError: pos = find_surrounding(line, 'Gamma', ex = ['\\CapitalGamma', '\\Gamma', 'PolyGamma'])
        else: pos = find_surrounding(line, 'Gamma', ex = ['\\CapitalGamma', '\\Gamma', 'PolyGamma'], \
                                     start = pos[0] + [0,13][[1,0].index(pos[1]-pos[0]==0)])

        if pos[0] != pos[1]:
            line = line[:pos[0]] + '\\EulerGamma@{' + line[pos[0] + 6:pos[1] - 1] + '}' + line[pos[1]:]

    return line

print(replace_re('dddORe[asRe[Re[asdf]asdasd]df] awlkdwalkdjawRRe[123123]lkdjwalkj re[asdf] OreORe[asddf] \\Re[]Re[asdfdawd]'))