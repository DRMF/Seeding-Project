(* {"0", 1}*)
ConditionalExpression[0 == -a - z + Inactive[ContinuedFractionK][k*z, -a + k - z, {k, 1, Infinity}], Element[a, Integers] && Element[z, Complexes] && a >= 0]

(* {"1", 1}*)
1 == -Inactive[ContinuedFractionK][-1, 2, {k, 1, Infinity}]

(* {"1", 2}*)
1 == -Inactive[ContinuedFractionK][-2*k*(-1 + 2*k), 1 + 4*k, {k, 1, Infinity}]

(* {"1", 3}*)
1 == (3 + Inactive[ContinuedFractionK][-2*k*(1 + 2*k), 3 + 4*k, {k, 1, Infinity}])^(-1)

(* {"1", 4}*)
1 == (2 + Inactive[ContinuedFractionK][-((1 + 2*k)/(-1 + 2*k)), (4*k)/(-1 + 2*k), {k, 1, Infinity}])^(-1)

(* {"1", 5}*)
ConditionalExpression[1 == Inactive[ContinuedFractionK][k + z, -1 + k + z, {k, 1, Infinity}], Element[z, Complexes]]

(* {"1", 6}*)
ConditionalExpression[1 == (a + z)/(a + Inactive[ContinuedFractionK][-a^2 + (a*k + z)^2, a, {k, 1, Infinity}]), Element[a | z, Complexes] && Inequality[-Pi/2, Less, Arg[a], LessEqual, Pi/2]]

(* {"2", 1}*)
2 == -Inactive[ContinuedFractionK][-(k*(1 + k)^2*(2 + k)), 2*(2 + 3*k + k^2), {k, 1, Infinity}]

(* {"2", 2}*)
2 == Inactive[ContinuedFractionK][6, 1, {k, 1, Infinity}]

(* {"AiryAi", 1}*)
ConditionalExpression[AiryAi[z] == 1/(3^(2/3)*Gamma[2/3]*(1 + Inactive[ContinuedFractionK][-z^3/(3*k*(-1 + 3*k)), 1 + z^3/(3*k*(-1 + 3*k)), {k, 1, Infinity}])) - z/(3^(1/3)*Gamma[1/3]*(1 + Inactive[ContinuedFractionK][-z^3/(3*k*(1 + 3*k)), 1 + z^3/(3*k*(1 + 3*k)), {k, 1, Infinity}])), Element[z, Complexes]]

(* {"AiryAiPrime", 1}*)
ConditionalExpression[AiryAiPrime[z] == -(1/(3^(1/3)*Gamma[1/3]*(1 + Inactive[ContinuedFractionK][-z^3/(3*k*(-2 + 3*k)), 1 + z^3/(3*k*(-2 + 3*k)), {k, 1, Infinity}]))) + z^2/(2*3^(2/3)*Gamma[2/3]*(1 + Inactive[ContinuedFractionK][-z^3/(3*k*(2 + 3*k)), 1 + z^3/(3*k*(2 + 3*k)), {k, 1, Infinity}])), Element[z, Complexes]]

(* {"AiryBi", 1}*)
ConditionalExpression[AiryBi[z] == 1/(3^(1/6)*Gamma[2/3]*(1 + Inactive[ContinuedFractionK][-z^3/(3*k*(-1 + 3*k)), 1 + z^3/(3*k*(-1 + 3*k)), {k, 1, Infinity}])) + (3^(1/6)*z)/(Gamma[1/3]*(1 + Inactive[ContinuedFractionK][-z^3/(3*k*(1 + 3*k)), 1 + z^3/(3*k*(1 + 3*k)), {k, 1, Infinity}])), Element[z, Complexes]]

(* {"AiryBiPrime", 1}*)
ConditionalExpression[AiryBiPrime[z] == 3^(1/6)/(Gamma[1/3]*(1 + Inactive[ContinuedFractionK][-z^3/(3*k*(-2 + 3*k)), 1 + z^3/(3*k*(-2 + 3*k)), {k, 1, Infinity}])) + z^2/(2*3^(1/6)*Gamma[2/3]*(1 + Inactive[ContinuedFractionK][-z^3/(3*k*(2 + 3*k)), 1 + z^3/(3*k*(2 + 3*k)), {k, 1, Infinity}])), Element[z, Complexes]]

(* {"AlternatingConstant/AlternatingConstant", 1}*)
ConditionalExpression[((b + \[Beta])*(d + e - \[Epsilon]))/(-d - e + \[Epsilon] + (2*d*HypergeometricU[(b^2*d*(d + 2*e) + 2*b*d*(d + 2*e)*\[Beta] + d^2*\[Beta]^2 + 2*d*e*\[Beta]^2 + Sqrt[d^2*(b + \[Beta])^4*(d - 2*\[Epsilon])^2])/(4*d^2*(b + \[Beta])^2), (2*b^2*d^2 + 4*b*d^2*\[Beta] + 2*d^2*\[Beta]^2 + Sqrt[d^2*(b + \[Beta])^4*(d - 2*\[Epsilon])^2])/(2*d^2*(b + \[Beta])^2), (b^2 - \[Beta]^2)/(2*d)])/HypergeometricU[(b^2*d*(5*d + 2*e) + 2*b*d*(5*d + 2*e)*\[Beta] + 5*d^2*\[Beta]^2 + 2*d*e*\[Beta]^2 + Sqrt[d^2*(b + \[Beta])^4*(d - 2*\[Epsilon])^2])/(4*d^2*(b + \[Beta])^2), (2*b^2*d^2 + 4*b*d^2*\[Beta] + 2*d^2*\[Beta]^2 + Sqrt[d^2*(b + \[Beta])^4*(d - 2*\[Epsilon])^2])/(2*d^2*(b + \[Beta])^2), (b^2 - \[Beta]^2)/(2*d)]) == Inactive[ContinuedFractionK][e + d*k + (-1)^k*\[Epsilon], b + (-1)^k*\[Beta], {k, 1, Infinity}], Element[b | \[Beta] | d | e | \[Epsilon], Complexes]]

(* {"AlternatingConstant/AlternatingConstant", 2}*)
ConditionalExpression[(\[Beta]*(d + e - \[Epsilon]))/(-d - e + \[Epsilon] + (2*d*HypergeometricU[(d^2*\[Beta]^2 + 2*d*e*\[Beta]^2 + Sqrt[d^2*\[Beta]^4*(d - 2*\[Epsilon])^2])/(4*d^2*\[Beta]^2), (2*d^2*\[Beta]^2 + Sqrt[d^2*\[Beta]^4*(d - 2*\[Epsilon])^2])/(2*d^2*\[Beta]^2), -\[Beta]^2/(2*d)])/HypergeometricU[(5*d^2*\[Beta]^2 + 2*d*e*\[Beta]^2 + Sqrt[d^2*\[Beta]^4*(d - 2*\[Epsilon])^2])/(4*d^2*\[Beta]^2), (2*d^2*\[Beta]^2 + Sqrt[d^2*\[Beta]^4*(d - 2*\[Epsilon])^2])/(2*d^2*\[Beta]^2), -\[Beta]^2/(2*d)]) == Inactive[ContinuedFractionK][e + d*k + (-1)^k*\[Epsilon], (-1)^k*\[Beta], {k, 1, Infinity}], Element[\[Beta] | d | e | \[Epsilon], Complexes]]

(* {"AlternatingConstant/AlternatingConstant", 3}*)
ConditionalExpression[((b + \[Beta])*(d - \[Epsilon])*HypergeometricU[(5*b^2*d^2 + 10*b*d^2*\[Beta] + 5*d^2*\[Beta]^2 + Sqrt[d^2*(b + \[Beta])^4*(d - 2*\[Epsilon])^2])/(4*d^2*(b + \[Beta])^2), (2*b^2*d^2 + 4*b*d^2*\[Beta] + 2*d^2*\[Beta]^2 + Sqrt[d^2*(b + \[Beta])^4*(d - 2*\[Epsilon])^2])/(2*d^2*(b + \[Beta])^2), (b^2 - \[Beta]^2)/(2*d)])/(2*d*HypergeometricU[(b^2*d^2 + 2*b*d^2*\[Beta] + d^2*\[Beta]^2 + Sqrt[d^2*(b + \[Beta])^4*(d - 2*\[Epsilon])^2])/(4*d^2*(b + \[Beta])^2), (2*b^2*d^2 + 4*b*d^2*\[Beta] + 2*d^2*\[Beta]^2 + Sqrt[d^2*(b + \[Beta])^4*(d - 2*\[Epsilon])^2])/(2*d^2*(b + \[Beta])^2), (b^2 - \[Beta]^2)/(2*d)] + (-d + \[Epsilon])*HypergeometricU[(5*b^2*d^2 + 10*b*d^2*\[Beta] + 5*d^2*\[Beta]^2 + Sqrt[d^2*(b + \[Beta])^4*(d - 2*\[Epsilon])^2])/(4*d^2*(b + \[Beta])^2), (2*b^2*d^2 + 4*b*d^2*\[Beta] + 2*d^2*\[Beta]^2 + Sqrt[d^2*(b + \[Beta])^4*(d - 2*\[Epsilon])^2])/(2*d^2*(b + \[Beta])^2), (b^2 - \[Beta]^2)/(2*d)]) == Inactive[ContinuedFractionK][d*k + (-1)^k*\[Epsilon], b + (-1)^k*\[Beta], {k, 1, Infinity}], Element[b | \[Beta] | d | \[Epsilon], Complexes]]

(* {"AlternatingConstant/AlternatingConstant", 4}*)
ConditionalExpression[(\[Beta]*(d - \[Epsilon])*HypergeometricU[(5*d^2*\[Beta]^2 + Sqrt[d^2*\[Beta]^4*(d - 2*\[Epsilon])^2])/(4*d^2*\[Beta]^2), (2*d^2*\[Beta]^2 + Sqrt[d^2*\[Beta]^4*(d - 2*\[Epsilon])^2])/(2*d^2*\[Beta]^2), -\[Beta]^2/(2*d)])/(2*d*HypergeometricU[(d^2*\[Beta]^2 + Sqrt[d^2*\[Beta]^4*(d - 2*\[Epsilon])^2])/(4*d^2*\[Beta]^2), (2*d^2*\[Beta]^2 + Sqrt[d^2*\[Beta]^4*(d - 2*\[Epsilon])^2])/(2*d^2*\[Beta]^2), -\[Beta]^2/(2*d)] + (-d + \[Epsilon])*HypergeometricU[(5*d^2*\[Beta]^2 + Sqrt[d^2*\[Beta]^4*(d - 2*\[Epsilon])^2])/(4*d^2*\[Beta]^2), (2*d^2*\[Beta]^2 + Sqrt[d^2*\[Beta]^4*(d - 2*\[Epsilon])^2])/(2*d^2*\[Beta]^2), -\[Beta]^2/(2*d)]) == Inactive[ContinuedFractionK][d*k + (-1)^k*\[Epsilon], (-1)^k*\[Beta], {k, 1, Infinity}], Element[\[Beta] | d | \[Epsilon], Complexes]]

(* {"AlternatingConstant/AlternatingConstant", 5}*)
ConditionalExpression[((b + \[Beta])*(e - \[Epsilon]))/(b^2 + e - \[Beta]^2 + \[Epsilon] + (-2*e^2 + 2*\[Epsilon]^2)/((b^2 + 2*e - \[Beta]^2)*(1 + Sqrt[(b^4 - 4*e*\[Beta]^2 + \[Beta]^4 + b^2*(4*e - 2*\[Beta]^2) + 4*\[Epsilon]^2)/(b^2 + 2*e - \[Beta]^2)^2]))) == Inactive[ContinuedFractionK][e + (-1)^k*\[Epsilon], b + (-1)^k*\[Beta], {k, 1, Infinity}], Element[b | \[Beta] | e | \[Epsilon], Complexes]]

(* {"AlternatingConstant/AlternatingConstant", 6}*)
ConditionalExpression[(\[Beta]*(e - \[Epsilon]))/(e - \[Beta]^2 + \[Epsilon] + (2*(e^2 - \[Epsilon]^2))/((-2*e + \[Beta]^2)*(1 + Sqrt[(-4*e*\[Beta]^2 + \[Beta]^4 + 4*\[Epsilon]^2)/(-2*e + \[Beta]^2)^2]))) == Inactive[ContinuedFractionK][e + (-1)^k*\[Epsilon], (-1)^k*\[Beta], {k, 1, Infinity}], Element[\[Beta] | e | \[Epsilon], Complexes]]

(* {"AlternatingConstant/AlternatingConstant", 7}*)
ConditionalExpression[-(((b + \[Beta])^2*\[Epsilon])/((b + \[Beta])*(b^2 - \[Beta]^2 + \[Epsilon]) + (2*\[Epsilon]^2)/((b - \[Beta])*(1 + Sqrt[(b^4 - 2*b^2*\[Beta]^2 + \[Beta]^4 + 4*\[Epsilon]^2)/(b^2 - \[Beta]^2)^2])))) == Inactive[ContinuedFractionK][(-1)^k*\[Epsilon], b + (-1)^k*\[Beta], {k, 1, Infinity}], Element[b | \[Beta] | \[Epsilon], Complexes]]

(* {"AlternatingConstant/AlternatingConstant", 8}*)
ConditionalExpression[-((\[Beta]^2*\[Epsilon])/(-\[Beta]^3 + \[Beta]*\[Epsilon] - (2*\[Epsilon]^2)/(\[Beta]*(1 + Sqrt[1 + (4*\[Epsilon]^2)/\[Beta]^4])))) == Inactive[ContinuedFractionK][(-1)^k*\[Epsilon], (-1)^k*\[Beta], {k, 1, Infinity}], Element[\[Beta] | \[Epsilon], Complexes]]

(* {"AlternatingConstant/Constant", 1}*)
ConditionalExpression[(b*(d + e - \[Epsilon]))/(-d - e + \[Epsilon] + (2*d*HypergeometricU[(b^2*d*(d + 2*e) + Sqrt[b^4*d^2*(d - 2*\[Epsilon])^2])/(4*b^2*d^2), (2*b^2*d^2 + Sqrt[b^4*d^2*(d - 2*\[Epsilon])^2])/(2*b^2*d^2), b^2/(2*d)])/HypergeometricU[(b^2*d*(5*d + 2*e) + Sqrt[b^4*d^2*(d - 2*\[Epsilon])^2])/(4*b^2*d^2), (2*b^2*d^2 + Sqrt[b^4*d^2*(d - 2*\[Epsilon])^2])/(2*b^2*d^2), b^2/(2*d)]) == Inactive[ContinuedFractionK][e + d*k + (-1)^k*\[Epsilon], b, {k, 1, Infinity}], Element[b | d | e | \[Epsilon], Complexes]]

(* {"AlternatingConstant/Constant", 2}*)
ConditionalExpression[(b*(d - \[Epsilon])*HypergeometricU[(5*b^2*d^2 + Sqrt[b^4*d^2*(d - 2*\[Epsilon])^2])/(4*b^2*d^2), (2*b^2*d^2 + Sqrt[b^4*d^2*(d - 2*\[Epsilon])^2])/(2*b^2*d^2), b^2/(2*d)])/(2*d*HypergeometricU[(b^2*d^2 + Sqrt[b^4*d^2*(d - 2*\[Epsilon])^2])/(4*b^2*d^2), (2*b^2*d^2 + Sqrt[b^4*d^2*(d - 2*\[Epsilon])^2])/(2*b^2*d^2), b^2/(2*d)] + (-d + \[Epsilon])*HypergeometricU[(5*b^2*d^2 + Sqrt[b^4*d^2*(d - 2*\[Epsilon])^2])/(4*b^2*d^2), (2*b^2*d^2 + Sqrt[b^4*d^2*(d - 2*\[Epsilon])^2])/(2*b^2*d^2), b^2/(2*d)]) == Inactive[ContinuedFractionK][d*k + (-1)^k*\[Epsilon], b, {k, 1, Infinity}], Element[b | d | \[Epsilon], Complexes]]

(* {"AlternatingConstant/Constant", 3}*)
ConditionalExpression[(b*(e - \[Epsilon]))/(b^2 + e + \[Epsilon] - (2*(e^2 - \[Epsilon]^2))/((b^2 + 2*e)*(1 + Sqrt[(b^4 + 4*b^2*e + 4*\[Epsilon]^2)/(b^2 + 2*e)^2]))) == Inactive[ContinuedFractionK][e + (-1)^k*\[Epsilon], b, {k, 1, Infinity}], Element[b | e | \[Epsilon], Complexes]]

(* {"AlternatingConstant/Constant", 4}*)
ConditionalExpression[-((b^2*\[Epsilon])/(b^3 + b*\[Epsilon] + (2*\[Epsilon]^2)/(b*(1 + Sqrt[1 + (4*\[Epsilon]^2)/b^4])))) == Inactive[ContinuedFractionK][(-1)^k*\[Epsilon], b, {k, 1, Infinity}], Element[b | \[Epsilon], Complexes]]

(* {"AlternatingConstant/LinearAlternating", 1}*)
ConditionalExpression[(-2*(b + \[Beta])^2*(d + e - \[Epsilon]))/(4*a*b^2 + 2*b^3 + 6*b*d + 4*b*e + 8*a*b*\[Beta] + 2*b^2*\[Beta] + 6*d*\[Beta] + 4*e*\[Beta] + 4*a*\[Beta]^2 - 2*b*\[Beta]^2 - 2*\[Beta]^3 - 2*(b + \[Beta])*(b^2 + 2*d + e - \[Beta]^2 + 2*a*(b + \[Beta]) + \[Epsilon]) - (2*(b + \[Beta])^2*(d^2*(b - \[Beta]) + a*d*(b^2 - d - 2*e - \[Beta]^2 + 6*d*Sqrt[(d + a*(b + \[Beta]))^2/(a*(b + \[Beta])*(2*d + a*(b + \[Beta])))] + 4*e*Sqrt[(d + a*(b + \[Beta]))^2/(a*(b + \[Beta])*(2*d + a*(b + \[Beta])))]) + a^2*(b + \[Beta])*(2*e*(-1 + Sqrt[(d + a*(b + \[Beta]))^2/(a*(b + \[Beta])*(2*d + a*(b + \[Beta])))]) + d*(-1 + 3*Sqrt[(d + a*(b + \[Beta]))^2/(a*(b + \[Beta])*(2*d + a*(b + \[Beta])))])))*Hypergeometric2F1[(b^2*d*(d + 2*e) + 2*b*d*(d + 2*e)*\[Beta] + d^2*\[Beta]^2 + 2*d*e*\[Beta]^2 - Sqrt[d^2*(b + \[Beta])^4*(d - 2*\[Epsilon])^2])/(4*d^2*(b + \[Beta])^2), (b^2*d*(d + 2*e) + 2*b*d*(d + 2*e)*\[Beta] + d^2*\[Beta]^2 + 2*d*e*\[Beta]^2 + Sqrt[d^2*(b + \[Beta])^4*(d - 2*\[Epsilon])^2])/(4*d^2*(b + \[Beta])^2), (d*(3*d + 2*e + (b^2 - \[Beta]^2)*Sqrt[(d + a*(b + \[Beta]))^2/(a*(b + \[Beta])*(2*d + a*(b + \[Beta])))]) - a*(b + \[Beta])*(d*(-3 + Sqrt[(d + a*(b + \[Beta]))^2/(a*(b + \[Beta])*(2*d + a*(b + \[Beta])))]) + 2*e*(-1 + Sqrt[(d + a*(b + \[Beta]))^2/(a*(b + \[Beta])*(2*d + a*(b + \[Beta])))])))/(4*d*(d + a*(b + \[Beta]))), (1 - Sqrt[(d + a*(b + \[Beta]))^2/(a*(b + \[Beta])*(2*d + a*(b + \[Beta])))])/2])/(d*(d + a*(b + \[Beta]))*Hypergeometric2F1[(b^2*d*(5*d + 2*e) + 2*b*d*(5*d + 2*e)*\[Beta] + 5*d^2*\[Beta]^2 + 2*d*e*\[Beta]^2 - Sqrt[d^2*(b + \[Beta])^4*(d - 2*\[Epsilon])^2])/(4*d^2*(b + \[Beta])^2), (b^2*d*(5*d + 2*e) + 2*b*d*(5*d + 2*e)*\[Beta] + 5*d^2*\[Beta]^2 + 2*d*e*\[Beta]^2 + Sqrt[d^2*(b + \[Beta])^4*(d - 2*\[Epsilon])^2])/(4*d^2*(b + \[Beta])^2), (d*(7*d + 2*e + (b^2 - \[Beta]^2)*Sqrt[(d + a*(b + \[Beta]))^2/(a*(b + \[Beta])*(2*d + a*(b + \[Beta])))]) - a*(b + \[Beta])*(d*(-7 + Sqrt[(d + a*(b + \[Beta]))^2/(a*(b + \[Beta])*(2*d + a*(b + \[Beta])))]) + 2*e*(-1 + Sqrt[(d + a*(b + \[Beta]))^2/(a*(b + \[Beta])*(2*d + a*(b + \[Beta])))])))/(4*d*(d + a*(b + \[Beta]))), (1 - Sqrt[(d + a*(b + \[Beta]))^2/(a*(b + \[Beta])*(2*d + a*(b + \[Beta])))])/2])) == Inactive[ContinuedFractionK][e + d*k + (-1)^k*\[Epsilon], b + a*k + (-1)^k*(-(a*k) + \[Beta]), {k, 1, Infinity}], Element[a | b | \[Beta] | d | e | \[Epsilon], Complexes]]

(* {"AlternatingConstant/LinearAlternating", 2}*)
ConditionalExpression[(-b^3 - b*d - 2*b*e + b^2*\[Beta] + d*\[Beta] + 2*e*\[Beta] + b*\[Beta]^2 - \[Beta]^3 + (b - \[Beta])*(d + e - \[Epsilon]) + ((b - \[Beta])^2*(d^2*(b + \[Beta]) + a^2*(d + 2*e)*(b - \[Beta])*(-1 + Sqrt[(a*b + d - a*\[Beta])^2/(a*(b - \[Beta])*(a*b + 2*d - a*\[Beta]))]) + a*d*(b^2 - 2*e - \[Beta]^2 + 4*e*Sqrt[(a*b + d - a*\[Beta])^2/(a*(b - \[Beta])*(a*b + 2*d - a*\[Beta]))] + d*(-1 + 2*Sqrt[(a*b + d - a*\[Beta])^2/(a*(b - \[Beta])*(a*b + 2*d - a*\[Beta]))])))*Hypergeometric2F1[-(b^2*d*(d - 2*e) - 2*b*d*(d - 2*e)*\[Beta] + d^2*\[Beta]^2 - 2*d*e*\[Beta]^2 + Sqrt[d^2*(b - \[Beta])^4*(d + 2*\[Epsilon])^2])/(4*d^2*(b - \[Beta])^2), (-(b^2*d*(d - 2*e)) + 2*b*d*(d - 2*e)*\[Beta] - d^2*\[Beta]^2 + 2*d*e*\[Beta]^2 + Sqrt[d^2*(b - \[Beta])^4*(d + 2*\[Epsilon])^2])/(4*d^2*(b - \[Beta])^2), (-(a*(d + 2*e)*(b - \[Beta])*(-1 + Sqrt[(a*b + d - a*\[Beta])^2/(a*(b - \[Beta])*(a*b + 2*d - a*\[Beta]))])) + d*(d + 2*e + Sqrt[(d + a*(b - \[Beta]))^2/(a*(2*d + a*(b - \[Beta]))*(b - \[Beta]))]*(b^2 - \[Beta]^2)))/(4*d*(d + a*(b - \[Beta]))), 1/2 - Sqrt[(a*b + d - a*\[Beta])^2/(a*(b - \[Beta])*(a*b + 2*d - a*\[Beta]))]/2])/(d*(d + a*(b - \[Beta]))*Hypergeometric2F1[(b^2*d*(3*d + 2*e) - 2*b*d*(3*d + 2*e)*\[Beta] + 3*d^2*\[Beta]^2 + 2*d*e*\[Beta]^2 - Sqrt[d^2*(b - \[Beta])^4*(d + 2*\[Epsilon])^2])/(4*d^2*(b - \[Beta])^2), (b^2*d*(3*d + 2*e) - 2*b*d*(3*d + 2*e)*\[Beta] + 3*d^2*\[Beta]^2 + 2*d*e*\[Beta]^2 + Sqrt[d^2*(b - \[Beta])^4*(d + 2*\[Epsilon])^2])/(4*d^2*(b - \[Beta])^2), (d*(5*d + 2*e + Sqrt[(d + a*(b - \[Beta]))^2/(a*(2*d + a*(b - \[Beta]))*(b - \[Beta]))]*(b^2 - \[Beta]^2)) - a*(b - \[Beta])*(d*(-5 + Sqrt[(a*b + d - a*\[Beta])^2/(a*(b - \[Beta])*(a*b + 2*d - a*\[Beta]))]) + 2*e*(-1 + Sqrt[(a*b + d - a*\[Beta])^2/(a*(b - \[Beta])*(a*b + 2*d - a*\[Beta]))])))/(4*d*(d + a*(b - \[Beta]))), 1/2 - Sqrt[(a*b + d - a*\[Beta])^2/(a*(b - \[Beta])*(a*b + 2*d - a*\[Beta]))]/2]))/(b - \[Beta])^2 == Inactive[ContinuedFractionK][e + d*k + (-1)^k*\[Epsilon], b + a*k + (-1)^k*(a*k + \[Beta]), {k, 1, Infinity}], Element[a | b | \[Beta] | d | e | \[Epsilon], Complexes]]

(* {"AlternatingConstant/LinearAlternating", 3}*)
ConditionalExpression[-((\[Beta]*(d + e - \[Epsilon]))/(d + e - \[Epsilon] + (\[Beta]*(d^2*\[Beta] - a^2*\[Beta]*(2*e*(-1 + Sqrt[(d + a*\[Beta])^2/(a*\[Beta]*(2*d + a*\[Beta]))]) + d*(-1 + 3*Sqrt[(d + a*\[Beta])^2/(a*\[Beta]*(2*d + a*\[Beta]))])) - a*d*(-2*e - \[Beta]^2 + 4*e*Sqrt[(d + a*\[Beta])^2/(a*\[Beta]*(2*d + a*\[Beta]))] + d*(-1 + 6*Sqrt[(d + a*\[Beta])^2/(a*\[Beta]*(2*d + a*\[Beta]))])))*Hypergeometric2F1[(d^2*\[Beta]^2 + 2*d*e*\[Beta]^2 - Sqrt[d^2*\[Beta]^4*(d - 2*\[Epsilon])^2])/(4*d^2*\[Beta]^2), (d^2*\[Beta]^2 + 2*d*e*\[Beta]^2 + Sqrt[d^2*\[Beta]^4*(d - 2*\[Epsilon])^2])/(4*d^2*\[Beta]^2), (3*d^2 - 2*a*e*\[Beta]*(-1 + Sqrt[(d + a*\[Beta])^2/(a*\[Beta]*(2*d + a*\[Beta]))]) + d*(2*e - \[Beta]*(\[Beta]*Sqrt[(d + a*\[Beta])^2/(a*\[Beta]*(2*d + a*\[Beta]))] + a*(-3 + Sqrt[(d + a*\[Beta])^2/(a*\[Beta]*(2*d + a*\[Beta]))]))))/(4*d*(d + a*\[Beta])), 1/2 - Sqrt[(d + a*\[Beta])^2/(a*\[Beta]*(2*d + a*\[Beta]))]/2])/(d*(d + a*\[Beta])*Hypergeometric2F1[(5*d^2*\[Beta]^2 + 2*d*e*\[Beta]^2 - Sqrt[d^2*\[Beta]^4*(d - 2*\[Epsilon])^2])/(4*d^2*\[Beta]^2), (5*d^2*\[Beta]^2 + 2*d*e*\[Beta]^2 + Sqrt[d^2*\[Beta]^4*(d - 2*\[Epsilon])^2])/(4*d^2*\[Beta]^2), (7*d^2 - 2*a*e*\[Beta]*(-1 + Sqrt[(d + a*\[Beta])^2/(a*\[Beta]*(2*d + a*\[Beta]))]) + d*(2*e - \[Beta]*(\[Beta]*Sqrt[(d + a*\[Beta])^2/(a*\[Beta]*(2*d + a*\[Beta]))] + a*(-7 + Sqrt[(d + a*\[Beta])^2/(a*\[Beta]*(2*d + a*\[Beta]))]))))/(4*d*(d + a*\[Beta])), 1/2 - Sqrt[(d + a*\[Beta])^2/(a*\[Beta]*(2*d + a*\[Beta]))]/2]))) == Inactive[ContinuedFractionK][e + d*k + (-1)^k*\[Epsilon], a*k + (-1)^k*(-(a*k) + \[Beta]), {k, 1, Infinity}], Element[a | \[Beta] | d | e | \[Epsilon], Complexes]]

(* {"AlternatingConstant/LinearAlternating", 4}*)
ConditionalExpression[(e - \[Beta]^2 + \[Epsilon] - (\[Beta]*(-(d^2*\[Beta]) + a^2*(d + 2*e)*\[Beta]*(-1 + Sqrt[(d - a*\[Beta])^2/(a*\[Beta]*(-2*d + a*\[Beta]))]) + a*d*(d + 2*e + \[Beta]^2 - 2*d*Sqrt[(d - a*\[Beta])^2/(a*\[Beta]*(-2*d + a*\[Beta]))] - 4*e*Sqrt[(d - a*\[Beta])^2/(a*\[Beta]*(-2*d + a*\[Beta]))]))*Hypergeometric2F1[-(d^2*\[Beta]^2 - 2*d*e*\[Beta]^2 + Sqrt[d^2*\[Beta]^4*(d + 2*\[Epsilon])^2])/(4*d^2*\[Beta]^2), (-(d^2*\[Beta]^2) + 2*d*e*\[Beta]^2 + Sqrt[d^2*\[Beta]^4*(d + 2*\[Epsilon])^2])/(4*d^2*\[Beta]^2), (d^2 + 2*a*e*\[Beta]*(-1 + Sqrt[(d - a*\[Beta])^2/(a*\[Beta]*(-2*d + a*\[Beta]))]) + d*(2*e - \[Beta]*(a - a*Sqrt[(d - a*\[Beta])^2/(a*\[Beta]*(-2*d + a*\[Beta]))] + \[Beta]*Sqrt[(d - a*\[Beta])^2/(a*\[Beta]*(-2*d + a*\[Beta]))])))/(4*d*(d - a*\[Beta])), (1 - Sqrt[(d - a*\[Beta])^2/(a*\[Beta]*(-2*d + a*\[Beta]))])/2])/(d*(d - a*\[Beta])*Hypergeometric2F1[(3*d^2*\[Beta]^2 + 2*d*e*\[Beta]^2 - Sqrt[d^2*\[Beta]^4*(d + 2*\[Epsilon])^2])/(4*d^2*\[Beta]^2), (3*d^2*\[Beta]^2 + 2*d*e*\[Beta]^2 + Sqrt[d^2*\[Beta]^4*(d + 2*\[Epsilon])^2])/(4*d^2*\[Beta]^2), (5*d^2 + 2*a*e*\[Beta]*(-1 + Sqrt[(d - a*\[Beta])^2/(a*\[Beta]*(-2*d + a*\[Beta]))]) + d*(2*e + \[Beta]*(-(\[Beta]*Sqrt[(d - a*\[Beta])^2/(a*\[Beta]*(-2*d + a*\[Beta]))]) + a*(-5 + Sqrt[(d - a*\[Beta])^2/(a*\[Beta]*(-2*d + a*\[Beta]))]))))/(4*d*(d - a*\[Beta])), (1 - Sqrt[(d - a*\[Beta])^2/(a*\[Beta]*(-2*d + a*\[Beta]))])/2]))/\[Beta] == Inactive[ContinuedFractionK][e + d*k + (-1)^k*\[Epsilon], a*k + (-1)^k*(a*k + \[Beta]), {k, 1, Infinity}], Element[a | \[Beta] | d | e | \[Epsilon], Complexes]]

(* {"AlternatingConstant/LinearAlternating", 5}*)
ConditionalExpression[(b*(d + e - \[Epsilon]))/(-d - e + \[Epsilon] + (b*(b*d^2 + a*d*(b^2 - d + 6*d*Sqrt[(a*b + d)^2/(a*b*(a*b + 2*d))] - 2*e + 4*Sqrt[(a*b + d)^2/(a*b*(a*b + 2*d))]*e) + a^2*b*(d*(-1 + 3*Sqrt[(a*b + d)^2/(a*b*(a*b + 2*d))]) + 2*(-1 + Sqrt[(a*b + d)^2/(a*b*(a*b + 2*d))])*e))*Hypergeometric2F1[(b^2*d*(d + 2*e) - Sqrt[b^4*d^2*(d - 2*\[Epsilon])^2])/(4*b^2*d^2), (b^2*d*(d + 2*e) + Sqrt[b^4*d^2*(d - 2*\[Epsilon])^2])/(4*b^2*d^2), (d*(3*d + b^2*Sqrt[(a*b + d)^2/(a*b*(a*b + 2*d))] + 2*e) - a*b*(d*(-3 + Sqrt[(a*b + d)^2/(a*b*(a*b + 2*d))]) + 2*(-1 + Sqrt[(a*b + d)^2/(a*b*(a*b + 2*d))])*e))/(4*d*(a*b + d)), 1/2 - Sqrt[(a*b + d)^2/(a*b*(a*b + 2*d))]/2])/(d*(a*b + d)*Hypergeometric2F1[(b^2*d*(5*d + 2*e) - Sqrt[b^4*d^2*(d - 2*\[Epsilon])^2])/(4*b^2*d^2), (b^2*d*(5*d + 2*e) + Sqrt[b^4*d^2*(d - 2*\[Epsilon])^2])/(4*b^2*d^2), (d*(7*d + b^2*Sqrt[(a*b + d)^2/(a*b*(a*b + 2*d))] + 2*e) - a*b*(d*(-7 + Sqrt[(a*b + d)^2/(a*b*(a*b + 2*d))]) + 2*(-1 + Sqrt[(a*b + d)^2/(a*b*(a*b + 2*d))])*e))/(4*d*(a*b + d)), 1/2 - Sqrt[(a*b + d)^2/(a*b*(a*b + 2*d))]/2])) == Inactive[ContinuedFractionK][e + d*k + (-1)^k*\[Epsilon], b - (-1 + (-1)^k)*a*k, {k, 1, Infinity}], Element[a | b | d | e | \[Epsilon], Complexes]]

(* {"AlternatingConstant/LinearAlternating", 6}*)
ConditionalExpression[-((b^2 + e + \[Epsilon] - (b*(b*d^2 + a^2*b*(-1 + Sqrt[(a*b + d)^2/(a*b*(a*b + 2*d))])*(d + 2*e) + a*d*(b^2 + (-1 + 2*Sqrt[(a*b + d)^2/(a*b*(a*b + 2*d))])*(d + 2*e)))*Hypergeometric2F1[(-(b^2*d*(d - 2*e)) + Sqrt[b^4*d^2*(d + 2*\[Epsilon])^2])/(4*b^2*d^2), -(b^2*d*(d - 2*e) + Sqrt[b^4*d^2*(d + 2*\[Epsilon])^2])/(4*b^2*d^2), (-(a*b*(-1 + Sqrt[(a*b + d)^2/(a*b*(a*b + 2*d))])*(d + 2*e)) + d*(d + b^2*Sqrt[(a*b + d)^2/(a*b*(a*b + 2*d))] + 2*e))/(4*d*(a*b + d)), 1/2 - Sqrt[(a*b + d)^2/(a*b*(a*b + 2*d))]/2])/(d*(a*b + d)*Hypergeometric2F1[(b^2*d*(3*d + 2*e) - Sqrt[b^4*d^2*(d + 2*\[Epsilon])^2])/(4*b^2*d^2), (b^2*d*(3*d + 2*e) + Sqrt[b^4*d^2*(d + 2*\[Epsilon])^2])/(4*b^2*d^2), (d*(5*d + b^2*Sqrt[(a*b + d)^2/(a*b*(a*b + 2*d))] + 2*e) - a*b*(d*(-5 + Sqrt[(a*b + d)^2/(a*b*(a*b + 2*d))]) + 2*(-1 + Sqrt[(a*b + d)^2/(a*b*(a*b + 2*d))])*e))/(4*d*(a*b + d)), 1/2 - Sqrt[(a*b + d)^2/(a*b*(a*b + 2*d))]/2]))/b) == Inactive[ContinuedFractionK][e + d*k + (-1)^k*\[Epsilon], b + (1 + (-1)^k)*a*k, {k, 1, Infinity}], Element[a | b | d | e | \[Epsilon], Complexes]]

(* {"AlternatingConstant/LinearAlternating", 7}*)
ConditionalExpression[(-2*(b + \[Beta])^2*(d - \[Epsilon]))/(4*a*b^2 + 2*b^3 + 6*b*d + 8*a*b*\[Beta] + 2*b^2*\[Beta] + 6*d*\[Beta] + 4*a*\[Beta]^2 - 2*b*\[Beta]^2 - 2*\[Beta]^3 - 2*(b + \[Beta])*(b^2 + 2*d - \[Beta]^2 + 2*a*(b + \[Beta]) + \[Epsilon]) - (2*(b + \[Beta])^2*(d*(b - \[Beta]) + a^2*(b + \[Beta])*(-1 + 3*Sqrt[(d + a*(b + \[Beta]))^2/(a*(b + \[Beta])*(2*d + a*(b + \[Beta])))]) + a*(b^2 - d - \[Beta]^2 + 6*d*Sqrt[(d + a*(b + \[Beta]))^2/(a*(b + \[Beta])*(2*d + a*(b + \[Beta])))]))*Hypergeometric2F1[(b^2*d^2 + 2*b*d^2*\[Beta] + d^2*\[Beta]^2 - Sqrt[d^2*(b + \[Beta])^4*(d - 2*\[Epsilon])^2])/(4*d^2*(b + \[Beta])^2), (b^2*d^2 + 2*b*d^2*\[Beta] + d^2*\[Beta]^2 + Sqrt[d^2*(b + \[Beta])^4*(d - 2*\[Epsilon])^2])/(4*d^2*(b + \[Beta])^2), (3*d + (b^2 - \[Beta]^2)*Sqrt[(d + a*(b + \[Beta]))^2/(a*(b + \[Beta])*(2*d + a*(b + \[Beta])))] - a*(b + \[Beta])*(-3 + Sqrt[(d + a*(b + \[Beta]))^2/(a*(b + \[Beta])*(2*d + a*(b + \[Beta])))]))/(4*(d + a*(b + \[Beta]))), (1 - Sqrt[(d + a*(b + \[Beta]))^2/(a*(b + \[Beta])*(2*d + a*(b + \[Beta])))])/2])/((d + a*(b + \[Beta]))*Hypergeometric2F1[(5*b^2*d^2 + 10*b*d^2*\[Beta] + 5*d^2*\[Beta]^2 - Sqrt[d^2*(b + \[Beta])^4*(d - 2*\[Epsilon])^2])/(4*d^2*(b + \[Beta])^2), (5*b^2*d^2 + 10*b*d^2*\[Beta] + 5*d^2*\[Beta]^2 + Sqrt[d^2*(b + \[Beta])^4*(d - 2*\[Epsilon])^2])/(4*d^2*(b + \[Beta])^2), (7*d + (b^2 - \[Beta]^2)*Sqrt[(d + a*(b + \[Beta]))^2/(a*(b + \[Beta])*(2*d + a*(b + \[Beta])))] - a*(b + \[Beta])*(-7 + Sqrt[(d + a*(b + \[Beta]))^2/(a*(b + \[Beta])*(2*d + a*(b + \[Beta])))]))/(4*(d + a*(b + \[Beta]))), (1 - Sqrt[(d + a*(b + \[Beta]))^2/(a*(b + \[Beta])*(2*d + a*(b + \[Beta])))])/2])) == Inactive[ContinuedFractionK][d*k + (-1)^k*\[Epsilon], b + a*k + (-1)^k*(-(a*k) + \[Beta]), {k, 1, Infinity}], Element[a | b | \[Beta] | d | \[Epsilon], Complexes]]

(* {"AlternatingConstant/LinearAlternating", 8}*)
ConditionalExpression[(-b^3 - b*d + b^2*\[Beta] + d*\[Beta] + b*\[Beta]^2 - \[Beta]^3 + (b - \[Beta])*(d - \[Epsilon]) + ((b - \[Beta])^2*(d*(b + \[Beta]) + a^2*(b - \[Beta])*(-1 + Sqrt[(a*b + d - a*\[Beta])^2/(a*(b - \[Beta])*(a*b + 2*d - a*\[Beta]))]) + a*(b^2 - \[Beta]^2 + d*(-1 + 2*Sqrt[(a*b + d - a*\[Beta])^2/(a*(b - \[Beta])*(a*b + 2*d - a*\[Beta]))])))*Hypergeometric2F1[(-(b^2*d^2) + 2*b*d^2*\[Beta] - d^2*\[Beta]^2 + Sqrt[d^2*(b - \[Beta])^4*(d + 2*\[Epsilon])^2])/(4*d^2*(b - \[Beta])^2), -(b^2*d^2 - 2*b*d^2*\[Beta] + d^2*\[Beta]^2 + Sqrt[d^2*(b - \[Beta])^4*(d + 2*\[Epsilon])^2])/(4*d^2*(b - \[Beta])^2), (d + Sqrt[(d + a*(b - \[Beta]))^2/(a*(2*d + a*(b - \[Beta]))*(b - \[Beta]))]*(b^2 - \[Beta]^2) - a*(b - \[Beta])*(-1 + Sqrt[(a*b + d - a*\[Beta])^2/(a*(b - \[Beta])*(a*b + 2*d - a*\[Beta]))]))/(4*(d + a*(b - \[Beta]))), 1/2 - Sqrt[(a*b + d - a*\[Beta])^2/(a*(b - \[Beta])*(a*b + 2*d - a*\[Beta]))]/2])/((d + a*(b - \[Beta]))*Hypergeometric2F1[-(-3*b^2*d^2 + 6*b*d^2*\[Beta] - 3*d^2*\[Beta]^2 + Sqrt[d^2*(b - \[Beta])^4*(d + 2*\[Epsilon])^2])/(4*d^2*(b - \[Beta])^2), (3*b^2*d^2 - 6*b*d^2*\[Beta] + 3*d^2*\[Beta]^2 + Sqrt[d^2*(b - \[Beta])^4*(d + 2*\[Epsilon])^2])/(4*d^2*(b - \[Beta])^2), (5*d + Sqrt[(d + a*(b - \[Beta]))^2/(a*(2*d + a*(b - \[Beta]))*(b - \[Beta]))]*(b^2 - \[Beta]^2) - a*(b - \[Beta])*(-5 + Sqrt[(a*b + d - a*\[Beta])^2/(a*(b - \[Beta])*(a*b + 2*d - a*\[Beta]))]))/(4*(d + a*(b - \[Beta]))), 1/2 - Sqrt[(a*b + d - a*\[Beta])^2/(a*(b - \[Beta])*(a*b + 2*d - a*\[Beta]))]/2]))/(b - \[Beta])^2 == Inactive[ContinuedFractionK][d*k + (-1)^k*\[Epsilon], b + a*k + (-1)^k*(a*k + \[Beta]), {k, 1, Infinity}], Element[a | b | \[Beta] | d | \[Epsilon], Complexes]]

(* {"AlternatingConstant/LinearAlternating", 9}*)
ConditionalExpression[((d - e)*\[Beta])/(-d + e - (\[Beta]*(d*\[Beta] - a^2*\[Beta]*(-1 + 3*Sqrt[(d + a*\[Beta])^2/(a*\[Beta]*(2*d + a*\[Beta]))]) + a*(d + \[Beta]^2 - 6*d*Sqrt[(d + a*\[Beta])^2/(a*\[Beta]*(2*d + a*\[Beta]))]))*Hypergeometric2F1[(d^2*\[Beta]^2 - Sqrt[d^2*(d - 2*e)^2*\[Beta]^4])/(4*d^2*\[Beta]^2), (d^2*\[Beta]^2 + Sqrt[d^2*(d - 2*e)^2*\[Beta]^4])/(4*d^2*\[Beta]^2), (3*d - \[Beta]*(\[Beta]*Sqrt[(d + a*\[Beta])^2/(a*\[Beta]*(2*d + a*\[Beta]))] + a*(-3 + Sqrt[(d + a*\[Beta])^2/(a*\[Beta]*(2*d + a*\[Beta]))])))/(4*(d + a*\[Beta])), 1/2 - Sqrt[(d + a*\[Beta])^2/(a*\[Beta]*(2*d + a*\[Beta]))]/2])/((d + a*\[Beta])*Hypergeometric2F1[-(-5*d^2*\[Beta]^2 + Sqrt[d^2*(d - 2*e)^2*\[Beta]^4])/(4*d^2*\[Beta]^2), (5*d^2*\[Beta]^2 + Sqrt[d^2*(d - 2*e)^2*\[Beta]^4])/(4*d^2*\[Beta]^2), (7*d - \[Beta]*(\[Beta]*Sqrt[(d + a*\[Beta])^2/(a*\[Beta]*(2*d + a*\[Beta]))] + a*(-7 + Sqrt[(d + a*\[Beta])^2/(a*\[Beta]*(2*d + a*\[Beta]))])))/(4*(d + a*\[Beta])), 1/2 - Sqrt[(d + a*\[Beta])^2/(a*\[Beta]*(2*d + a*\[Beta]))]/2])) == Inactive[ContinuedFractionK][(-1)^k*e + d*k, a*k + (-1)^k*(-(a*k) + \[Beta]), {k, 1, Infinity}], Element[a | \[Beta] | d | e, Complexes]]

(* {"AlternatingConstant/LinearAlternating", 10}*)
ConditionalExpression[(e - \[Beta]^2 - (\[Beta]*(-(d*\[Beta]) + a^2*\[Beta]*(-1 + Sqrt[(d - a*\[Beta])^2/(a*\[Beta]*(-2*d + a*\[Beta]))]) + a*(d + \[Beta]^2 - 2*d*Sqrt[(d - a*\[Beta])^2/(a*\[Beta]*(-2*d + a*\[Beta]))]))*Hypergeometric2F1[(-(d^2*\[Beta]^2) + Sqrt[d^2*(d + 2*e)^2*\[Beta]^4])/(4*d^2*\[Beta]^2), -(d^2*\[Beta]^2 + Sqrt[d^2*(d + 2*e)^2*\[Beta]^4])/(4*d^2*\[Beta]^2), (d - \[Beta]*(a - a*Sqrt[(d - a*\[Beta])^2/(a*\[Beta]*(-2*d + a*\[Beta]))] + \[Beta]*Sqrt[(d - a*\[Beta])^2/(a*\[Beta]*(-2*d + a*\[Beta]))]))/(4*(d - a*\[Beta])), (1 - Sqrt[(d - a*\[Beta])^2/(a*\[Beta]*(-2*d + a*\[Beta]))])/2])/((d - a*\[Beta])*Hypergeometric2F1[-(-3*d^2*\[Beta]^2 + Sqrt[d^2*(d + 2*e)^2*\[Beta]^4])/(4*d^2*\[Beta]^2), (3*d^2*\[Beta]^2 + Sqrt[d^2*(d + 2*e)^2*\[Beta]^4])/(4*d^2*\[Beta]^2), (5*d + \[Beta]*(-(\[Beta]*Sqrt[(d - a*\[Beta])^2/(a*\[Beta]*(-2*d + a*\[Beta]))]) + a*(-5 + Sqrt[(d - a*\[Beta])^2/(a*\[Beta]*(-2*d + a*\[Beta]))])))/(4*(d - a*\[Beta])), (1 - Sqrt[(d - a*\[Beta])^2/(a*\[Beta]*(-2*d + a*\[Beta]))])/2]))/\[Beta] == Inactive[ContinuedFractionK][(-1)^k*e + d*k, a*k + (-1)^k*(a*k + \[Beta]), {k, 1, Infinity}], Element[a | \[Beta] | d | e, Complexes]]

(* {"AlternatingConstant/LinearAlternating", 11}*)
ConditionalExpression[(b*(d - \[Epsilon]))/(-d + \[Epsilon] + (b*(b*d + a^2*b*(-1 + 3*Sqrt[(a*b + d)^2/(a*b*(a*b + 2*d))]) + a*(b^2 + d*(-1 + 6*Sqrt[(a*b + d)^2/(a*b*(a*b + 2*d))])))*Hypergeometric2F1[(b^2*d^2 - Sqrt[b^4*d^2*(d - 2*\[Epsilon])^2])/(4*b^2*d^2), (b^2*d^2 + Sqrt[b^4*d^2*(d - 2*\[Epsilon])^2])/(4*b^2*d^2), (3*d + b^2*Sqrt[(a*b + d)^2/(a*b*(a*b + 2*d))] - a*b*(-3 + Sqrt[(a*b + d)^2/(a*b*(a*b + 2*d))]))/(4*(a*b + d)), 1/2 - Sqrt[(a*b + d)^2/(a*b*(a*b + 2*d))]/2])/((a*b + d)*Hypergeometric2F1[-(-5*b^2*d^2 + Sqrt[b^4*d^2*(d - 2*\[Epsilon])^2])/(4*b^2*d^2), (5*b^2*d^2 + Sqrt[b^4*d^2*(d - 2*\[Epsilon])^2])/(4*b^2*d^2), (7*d + b^2*Sqrt[(a*b + d)^2/(a*b*(a*b + 2*d))] - a*b*(-7 + Sqrt[(a*b + d)^2/(a*b*(a*b + 2*d))]))/(4*(a*b + d)), 1/2 - Sqrt[(a*b + d)^2/(a*b*(a*b + 2*d))]/2])) == Inactive[ContinuedFractionK][d*k + (-1)^k*\[Epsilon], b - (-1 + (-1)^k)*a*k, {k, 1, Infinity}], Element[a | b | d | \[Epsilon], Complexes]]

(* {"AlternatingConstant/LinearAlternating", 12}*)
ConditionalExpression[-((b^2 + \[Epsilon] - (b*(b*d + a^2*b*(-1 + Sqrt[(a*b + d)^2/(a*b*(a*b + 2*d))]) + a*(b^2 + d*(-1 + 2*Sqrt[(a*b + d)^2/(a*b*(a*b + 2*d))])))*Hypergeometric2F1[(-(b^2*d^2) + Sqrt[b^4*d^2*(d + 2*\[Epsilon])^2])/(4*b^2*d^2), -(b^2*d^2 + Sqrt[b^4*d^2*(d + 2*\[Epsilon])^2])/(4*b^2*d^2), (a*b + d - a*b*Sqrt[(a*b + d)^2/(a*b*(a*b + 2*d))] + b^2*Sqrt[(a*b + d)^2/(a*b*(a*b + 2*d))])/(4*a*b + 4*d), 1/2 - Sqrt[(a*b + d)^2/(a*b*(a*b + 2*d))]/2])/((a*b + d)*Hypergeometric2F1[-(-3*b^2*d^2 + Sqrt[b^4*d^2*(d + 2*\[Epsilon])^2])/(4*b^2*d^2), (3*b^2*d^2 + Sqrt[b^4*d^2*(d + 2*\[Epsilon])^2])/(4*b^2*d^2), (5*d + b^2*Sqrt[(a*b + d)^2/(a*b*(a*b + 2*d))] - a*b*(-5 + Sqrt[(a*b + d)^2/(a*b*(a*b + 2*d))]))/(4*(a*b + d)), 1/2 - Sqrt[(a*b + d)^2/(a*b*(a*b + 2*d))]/2]))/b) == Inactive[ContinuedFractionK][d*k + (-1)^k*\[Epsilon], b + (1 + (-1)^k)*a*k, {k, 1, Infinity}], Element[a | b | d | \[Epsilon], Complexes]]

(* {"AlternatingConstant/LinearAlternating", 13}*)
ConditionalExpression[((b + \[Beta])^2*(e - \[Epsilon]))/((-b - \[Beta])*(e - \[Epsilon]) + (Sqrt[-((b + \[Beta])^2*(e^2 - \[Epsilon]^2))]*BesselI[(b^2 + 2*e - \[Beta]^2 - 2*a*(b + \[Beta]))/(4*a*(b + \[Beta])), Sqrt[-((b + \[Beta])^2*(e^2 - \[Epsilon]^2))]/(2*a*(b + \[Beta])^2)])/BesselI[(b^2 + 2*e - \[Beta]^2 + 2*a*(b + \[Beta]))/(4*a*(b + \[Beta])), Sqrt[-((b + \[Beta])^2*(e^2 - \[Epsilon]^2))]/(2*a*(b + \[Beta])^2)]) == Inactive[ContinuedFractionK][e + (-1)^k*\[Epsilon], b + a*k + (-1)^k*(-(a*k) + \[Beta]), {k, 1, Infinity}], Element[a | b | \[Beta] | e | \[Epsilon], Complexes]]

(* {"AlternatingConstant/LinearAlternating", 14}*)
ConditionalExpression[((-b + \[Beta])*(b^2 + e - \[Beta]^2 + \[Epsilon]) + (Sqrt[-((b - \[Beta])^2*(e^2 - \[Epsilon]^2))]*BesselI[-((4*a*b - b^2 - 2*e - 4*a*\[Beta] + \[Beta]^2)/(4*a*b - 4*a*\[Beta])), Sqrt[-((b - \[Beta])^2*(e^2 - \[Epsilon]^2))]/(2*a*(b - \[Beta])^2)])/BesselI[(b^2 + 2*e - \[Beta]^2)/(4*a*b - 4*a*\[Beta]), Sqrt[-((b - \[Beta])^2*(e^2 - \[Epsilon]^2))]/(2*a*(b - \[Beta])^2)])/(b - \[Beta])^2 == Inactive[ContinuedFractionK][e + (-1)^k*\[Epsilon], b + a*k + (-1)^k*(a*k + \[Beta]), {k, 1, Infinity}], Element[a | b | \[Beta] | e | \[Epsilon], Complexes]]

(* {"AlternatingConstant/LinearAlternating", 15}*)
ConditionalExpression[(\[Beta]^2*(e - \[Epsilon]))/(\[Beta]*(-e + \[Epsilon]) + (Sqrt[-(\[Beta]^2*(e^2 - \[Epsilon]^2))]*BesselI[(2*e - \[Beta]*(2*a + \[Beta]))/(4*a*\[Beta]), Sqrt[-(\[Beta]^2*(e^2 - \[Epsilon]^2))]/(2*a*\[Beta]^2)])/BesselI[(2*e + 2*a*\[Beta] - \[Beta]^2)/(4*a*\[Beta]), Sqrt[-(\[Beta]^2*(e^2 - \[Epsilon]^2))]/(2*a*\[Beta]^2)]) == Inactive[ContinuedFractionK][e + (-1)^k*\[Epsilon], a*k + (-1)^k*(-(a*k) + \[Beta]), {k, 1, Infinity}], Element[a | \[Beta] | e | \[Epsilon], Complexes]]

(* {"AlternatingConstant/LinearAlternating", 16}*)
ConditionalExpression[(\[Beta]*(e - \[Beta]^2 + \[Epsilon]) + (Sqrt[-(\[Beta]^2*(e^2 - \[Epsilon]^2))]*BesselI[-1 + (-2*e + \[Beta]^2)/(4*a*\[Beta]), Sqrt[-(\[Beta]^2*(e^2 - \[Epsilon]^2))]/(2*a*\[Beta]^2)])/BesselI[(-2*e + \[Beta]^2)/(4*a*\[Beta]), Sqrt[-(\[Beta]^2*(e^2 - \[Epsilon]^2))]/(2*a*\[Beta]^2)])/\[Beta]^2 == Inactive[ContinuedFractionK][e + (-1)^k*\[Epsilon], a*k + (-1)^k*(a*k + \[Beta]), {k, 1, Infinity}], Element[a | \[Beta] | e | \[Epsilon], Complexes]]

(* {"AlternatingConstant/LinearAlternating", 17}*)
ConditionalExpression[(b^2*(e - \[Epsilon]))/(b*(-e + \[Epsilon]) + (Sqrt[-(b^2*(e^2 - \[Epsilon]^2))]*BesselI[(-2*a*b + b^2 + 2*e)/(4*a*b), Sqrt[-(b^2*(e^2 - \[Epsilon]^2))]/(2*a*b^2)])/BesselI[(2*a*b + b^2 + 2*e)/(4*a*b), Sqrt[-(b^2*(e^2 - \[Epsilon]^2))]/(2*a*b^2)]) == Inactive[ContinuedFractionK][e + (-1)^k*\[Epsilon], b - (-1 + (-1)^k)*a*k, {k, 1, Infinity}], Element[a | b | e | \[Epsilon], Complexes]]

(* {"AlternatingConstant/LinearAlternating", 18}*)
ConditionalExpression[(-(b*(b^2 + e + \[Epsilon])) + (Sqrt[-(b^2*(e^2 - \[Epsilon]^2))]*BesselI[-1 + (b^2 + 2*e)/(4*a*b), Sqrt[-(b^2*(e^2 - \[Epsilon]^2))]/(2*a*b^2)])/BesselI[(b^2 + 2*e)/(4*a*b), Sqrt[-(b^2*(e^2 - \[Epsilon]^2))]/(2*a*b^2)])/b^2 == Inactive[ContinuedFractionK][e + (-1)^k*\[Epsilon], b + (1 + (-1)^k)*a*k, {k, 1, Infinity}], Element[a | b | e | \[Epsilon], Complexes]]

(* {"AlternatingConstant/LinearAlternating", 19}*)
ConditionalExpression[-(((b + \[Beta])^2*\[Epsilon]*BesselI[(2*a + b - \[Beta])/(4*a), \[Epsilon]^2/(2*a*Sqrt[(b + \[Beta])^2*\[Epsilon]^2])])/((b + \[Beta])*\[Epsilon]*BesselI[(2*a + b - \[Beta])/(4*a), \[Epsilon]^2/(2*a*Sqrt[(b + \[Beta])^2*\[Epsilon]^2])] + Sqrt[(b + \[Beta])^2*\[Epsilon]^2]*BesselI[-(2*a - b + \[Beta])/(4*a), \[Epsilon]^2/(2*a*Sqrt[(b + \[Beta])^2*\[Epsilon]^2])])) == Inactive[ContinuedFractionK][(-1)^k*\[Epsilon], b + a*k + (-1)^k*(-(a*k) + \[Beta]), {k, 1, Infinity}], Element[a | b | \[Beta] | \[Epsilon], Complexes]]

(* {"AlternatingConstant/LinearAlternating", 20}*)
ConditionalExpression[((-b + \[Beta])*(b^2 - \[Beta]^2 + \[Epsilon]) + (Sqrt[(b - \[Beta])^2*\[Epsilon]^2]*BesselI[(-4*a + b + \[Beta])/(4*a), \[Epsilon]^2/(2*a*Sqrt[(b - \[Beta])^2*\[Epsilon]^2])])/BesselI[(b + \[Beta])/(4*a), \[Epsilon]^2/(2*a*Sqrt[(b - \[Beta])^2*\[Epsilon]^2])])/(b - \[Beta])^2 == Inactive[ContinuedFractionK][(-1)^k*\[Epsilon], b + a*k + (-1)^k*(a*k + \[Beta]), {k, 1, Infinity}], Element[a | b | \[Beta] | \[Epsilon], Complexes]]

(* {"AlternatingConstant/LinearAlternating", 21}*)
ConditionalExpression[-((\[Beta]^2*\[Epsilon]*BesselI[1/2 - \[Beta]/(4*a), Sqrt[\[Beta]^2*\[Epsilon]^2]/(2*a*\[Beta]^2)])/(Sqrt[\[Beta]^2*\[Epsilon]^2]*BesselI[-(2*a + \[Beta])/(4*a), Sqrt[\[Beta]^2*\[Epsilon]^2]/(2*a*\[Beta]^2)] + \[Beta]*\[Epsilon]*BesselI[1/2 - \[Beta]/(4*a), Sqrt[\[Beta]^2*\[Epsilon]^2]/(2*a*\[Beta]^2)])) == Inactive[ContinuedFractionK][(-1)^k*\[Epsilon], a*k + (-1)^k*(-(a*k) + \[Beta]), {k, 1, Infinity}], Element[a | \[Beta] | \[Epsilon], Complexes]]

(* {"AlternatingConstant/LinearAlternating", 22}*)
ConditionalExpression[(-\[Beta]^3 + \[Beta]*\[Epsilon] + (Sqrt[\[Beta]^2*\[Epsilon]^2]*BesselI[-1 + \[Beta]/(4*a), Sqrt[\[Beta]^2*\[Epsilon]^2]/(2*a*\[Beta]^2)])/BesselI[\[Beta]/(4*a), Sqrt[\[Beta]^2*\[Epsilon]^2]/(2*a*\[Beta]^2)])/\[Beta]^2 == Inactive[ContinuedFractionK][(-1)^k*\[Epsilon], a*k + (-1)^k*(a*k + \[Beta]), {k, 1, Infinity}], Element[a | \[Beta] | \[Epsilon], Complexes]]

(* {"AlternatingConstant/LinearAlternating", 23}*)
ConditionalExpression[-((b^2*\[Epsilon]*BesselI[(2*a + b)/(4*a), Sqrt[b^2*\[Epsilon]^2]/(2*a*b^2)])/(Sqrt[b^2*\[Epsilon]^2]*BesselI[(-2*a + b)/(4*a), Sqrt[b^2*\[Epsilon]^2]/(2*a*b^2)] + b*\[Epsilon]*BesselI[(2*a + b)/(4*a), Sqrt[b^2*\[Epsilon]^2]/(2*a*b^2)])) == Inactive[ContinuedFractionK][(-1)^k*\[Epsilon], b - (-1 + (-1)^k)*a*k, {k, 1, Infinity}], Element[a | b | \[Epsilon], Complexes]]

(* {"AlternatingConstant/LinearAlternating", 24}*)
ConditionalExpression[(-(b*(b^2 + \[Epsilon])) + (Sqrt[b^2*\[Epsilon]^2]*BesselI[-1 + b/(4*a), Sqrt[b^2*\[Epsilon]^2]/(2*a*b^2)])/BesselI[b/(4*a), Sqrt[b^2*\[Epsilon]^2]/(2*a*b^2)])/b^2 == Inactive[ContinuedFractionK][(-1)^k*\[Epsilon], b + (1 + (-1)^k)*a*k, {k, 1, Infinity}], Element[a | b | \[Epsilon], Complexes]]

(* {"ArcCos", 1}*)
ConditionalExpression[ArcCos[z] == Pi/2 - (z*Sqrt[1 - z^2])/(1 + Inactive[ContinuedFractionK][-2*z^2*Floor[(1 + k)/2]*(-1 + 2*Floor[(1 + k)/2]), 1 + 2*k, {k, 1, Infinity}]), Element[z, Complexes] &&  !(Element[z, Reals] && (Inequality[-Infinity, Less, z, LessEqual, -1] || Inequality[1, LessEqual, z, Less, Infinity]))]

(* {"ArcCos", 2}*)
ConditionalExpression[ArcCos[z] == Sqrt[1 - z^2]/(z*(1 + Inactive[ContinuedFractionK][k^2*(-1 + z^(-2)), 1 + 2*k, {k, 1, Infinity}])), Element[z, Complexes] &&  !(Element[z, Reals] && Inequality[1, LessEqual, z, Less, Infinity]) && Re[z] > 0]

(* {"ArcCos", 3}*)
ConditionalExpression[ArcCos[z] == (z*Sqrt[1 - z^2])/(1 + Inactive[ContinuedFractionK][(((-1)^k - k)*k*(1 - z^2))/(-1 + 4*k^2), 1, {k, 1, Infinity}]), Element[z, Complexes] &&  !(Element[z, Reals] && Inequality[1, LessEqual, z, Less, Infinity]) && Re[z] > 0 && Abs[Arg[z^(-2)]] < Pi]

(* {"ArcCos", 4}*)
ConditionalExpression[ArcCos[z] == Sqrt[1 - z^2]/(z + Inactive[ContinuedFractionK][k^2*(1 - z^2), (1 + 2*k)*z, {k, 1, Infinity}]), Element[z, Complexes] &&  !(Element[z, Reals] && Inequality[1, LessEqual, z, Less, Infinity]) && Re[z] > 0 && Abs[Arg[1 - z^2]] < Pi]

(* {"ArcCos", 5}*)
ConditionalExpression[ArcCos[z] == Pi/2 - z/(Sqrt[1 - z^2]*(1 + Inactive[ContinuedFractionK][(k^2*z^2)/(1 - z^2), 1 + 2*k, {k, 1, Infinity}])), Element[z, Complexes] &&  !(Element[z, Reals] && (Inequality[-Infinity, Less, z, LessEqual, -1] || Inequality[1, LessEqual, z, Less, Infinity]))]

(* {"ArcCos", 6}*)
ConditionalExpression[ArcCos[z] == Pi/2 - (z*Sqrt[1 - z^2])/(1 + Inactive[ContinuedFractionK][-((k*(-(-1)^k + k)*z^2)/(-1 + 4*k^2)), 1, {k, 1, Infinity}]), Element[z, Complexes] &&  !(Element[z, Reals] && (Inequality[-Infinity, Less, z, LessEqual, -1] || Inequality[1, LessEqual, z, Less, Infinity]))]

(* {"ArcCos", 7}*)
ConditionalExpression[ArcCos[z] == Pi/2 - (z*Sqrt[1 - z^2])/(1 - z^2 + Inactive[ContinuedFractionK][k^2*z^2, (1 + 2*k)*(1 - z^2)^((1 + (-1)^k)/2), {k, 1, Infinity}]), Element[z, Complexes] &&  !(Element[z, Reals] && (Inequality[-Infinity, Less, z, LessEqual, -1] || Inequality[1, LessEqual, z, Less, Infinity]))]

(* {"ArcCos", 8}*)
ConditionalExpression[ArcCos[z] == (z*Sqrt[1 - z^2])/(1 + Inactive[ContinuedFractionK][-(k*(-(-1)^k + k)*(1 - z^2)), 1 + 2*k, {k, 1, Infinity}]), Element[z, Complexes] &&  !(Element[z, Reals] && (Inequality[-Infinity, Less, z, LessEqual, -1] || Inequality[1, LessEqual, z, Less, Infinity]))]

(* {"ArcCos", 9}*)
ConditionalExpression[ArcCos[z] == Pi/2 - z/(1 + Inactive[ContinuedFractionK][-((1 - 2*k)^2*z^2)/(2*k*(1 + 2*k)), 1 + ((1 - 2*k)^2*z^2)/(2*k*(1 + 2*k)), {k, 1, Infinity}]), Element[z, Complexes] &&  !(Element[z, Reals] && (Inequality[-Infinity, Less, z, LessEqual, -1] || Inequality[1, LessEqual, z, Less, Infinity])) && Abs[z] < 1]

(* {"ArcCos", 10}*)
ConditionalExpression[ArcCos[1 - z] == (Sqrt[2]*Sqrt[z])/(1 + Inactive[ContinuedFractionK][-((1 - 2*k)^2*z)/(4*k*(1 + 2*k)), 1 + ((1 - 2*k)^2*z)/(4*k*(1 + 2*k)), {k, 1, Infinity}]), Element[z, Complexes] &&  !(Element[z, Reals] && (Inequality[-Infinity, Less, 1 - z, LessEqual, -1] || Inequality[1, LessEqual, z, Less, Infinity])) && Abs[z] < 1]

(* {"ArcCos", 11}*)
ConditionalExpression[ArcCos[-1 + z] == Pi - (Sqrt[2]*Sqrt[z])/(1 + Inactive[ContinuedFractionK][-((1 - 2*k)^2*z)/(4*k*(1 + 2*k)), 1 + ((1 - 2*k)^2*z)/(4*k*(1 + 2*k)), {k, 1, Infinity}]), Element[z, Complexes] &&  !(Element[z, Reals] && (Inequality[-Infinity, Less, -1 + z, LessEqual, -1] || Inequality[1, LessEqual, z, Less, Infinity])) && Abs[z] < 1]

(* {"ArcCos", 12}*)
ConditionalExpression[ArcCos[z] == Pi/2 - (z*(Log[-4*z^2] - 1/(2*z^2*(1 + Inactive[ContinuedFractionK][-(k*(1 + 2*k))/(2*(1 + k)^2*z^2), 1 + (k*(1 + 2*k))/(2*(1 + k)^2*z^2), {k, 1, Infinity}]))))/(2*Sqrt[-z^2]), Element[z, Complexes] &&  !(Element[z, Reals] && (Inequality[-Infinity, Less, z^(-1), LessEqual, -1] || Inequality[1, LessEqual, z, Less, Infinity])) && Abs[z] > 1]

(* {"ArcCosCompound", 1}*)
ConditionalExpression[ArcCos[z]^2 == Pi^2/4 - (Pi*z)/(1 + Inactive[ContinuedFractionK][(2*z*Gamma[(1 + k)/2]^2)/((1 + k)*Gamma[k/2]^2), 1 - (2*z*Gamma[(1 + k)/2]^2)/((1 + k)*Gamma[k/2]^2), {k, 1, Infinity}]), Element[z, Complexes] &&  !(Element[z, Reals] && (Inequality[-Infinity, Less, z, LessEqual, -1] || Inequality[1, LessEqual, z, Less, Infinity])) && Abs[z] < 1]

(* {"ArcCosh", 1}*)
ConditionalExpression[ArcCosh[z] == (Sqrt[-1 + z]*(Pi/2 - (z*Sqrt[1 - z^2])/(1 + Inactive[ContinuedFractionK][-2*z^2*Floor[(1 + k)/2]*(-1 + 2*Floor[(1 + k)/2]), 1 + 2*k, {k, 1, Infinity}])))/Sqrt[1 - z], Element[z, Complexes] &&  !(Element[z, Reals] && (Inequality[-Infinity, Less, z, LessEqual, -1] || Inequality[1, LessEqual, z, Less, Infinity]))]

(* {"ArcCosh", 2}*)
ConditionalExpression[ArcCosh[z] == (z*Sqrt[-1 + z^2])/(1 + Inactive[ContinuedFractionK][(k*(-(-1)^k + k)*(-1 + z^2))/(3 + 4*(-1 + k)*(1 + k)), 1, {k, 1, Infinity}]), Element[z, Complexes] &&  !(Element[z, Reals] && Inequality[1, LessEqual, z, Less, Infinity]) && Re[z] > 0]

(* {"ArcCosh", 3}*)
ConditionalExpression[ArcCosh[z] == Sqrt[-1 + z^2]/(z*(1 + Inactive[ContinuedFractionK][-((k^2*(-1 + z^2))/((-1 + 4*k^2)*z^2)), 1, {k, 1, Infinity}])), Element[z, Complexes] &&  !(Element[z, Reals] && Inequality[1, LessEqual, z, Less, Infinity]) && Re[z] > 0 && Abs[Arg[z^(-2)]] < Pi]

(* {"ArcCosh", 4}*)
ConditionalExpression[ArcCosh[z] == (Sqrt[-1 + z]*Sqrt[1 + z])/(z + Inactive[ContinuedFractionK][k^2*(1 - z^2), (1 + 2*k)*z, {k, 1, Infinity}]), Element[z, Complexes] &&  !(Element[z, Reals] && Inequality[1, LessEqual, z, Less, Infinity]) && Re[z] > 0 && Abs[Arg[1 - z^2]] < Pi]

(* {"ArcCosh", 5}*)
ConditionalExpression[ArcCosh[z] == (Pi*Sqrt[-1 + z])/(2*Sqrt[1 - z]) + (z*Sqrt[(-1 + z)/(1 + z)])/((-1 + z)*(1 + Inactive[ContinuedFractionK][(k^2*z^2)/(1 - z^2), 1 + 2*k, {k, 1, Infinity}])), Element[z, Complexes] &&  !(Element[z, Reals] && (Inequality[-Infinity, Less, z, LessEqual, -1] || Inequality[1, LessEqual, z, Less, Infinity]))]

(* {"ArcCosh", 6}*)
ConditionalExpression[ArcCosh[z] == (Pi*Sqrt[-1 + z])/(2*Sqrt[1 - z]) - (Sqrt[-1 + z]*z*Sqrt[1 + z])/(1 + Inactive[ContinuedFractionK][-((k*(-(-1)^k + k)*z^2)/(-1 + 4*k^2)), 1, {k, 1, Infinity}]), Element[z, Complexes] &&  !(Element[z, Reals] && (Inequality[-Infinity, Less, z, LessEqual, -1] || Inequality[1, LessEqual, z, Less, Infinity]))]

(* {"ArcCosh", 7}*)
ConditionalExpression[ArcCosh[z] == (Pi*Sqrt[-1 + z])/(2*Sqrt[1 - z]) - (Sqrt[-1 + z]*z*Sqrt[1 + z])/(1 - z^2 + Inactive[ContinuedFractionK][k^2*z^2, (1 + 2*k)*(1 - z^2)^((1 + (-1)^k)/2), {k, 1, Infinity}]), Element[z, Complexes] &&  !(Element[z, Reals] && (Inequality[-Infinity, Less, z, LessEqual, -1] || Inequality[1, LessEqual, z, Less, Infinity]))]

(* {"ArcCosh", 8}*)
ConditionalExpression[ArcCosh[z] == (Sqrt[-1 + z]*(Pi/2 - z/(1 + Inactive[ContinuedFractionK][-((1 - 2*k)^2*z^2)/(2*k*(1 + 2*k)), 1 + ((1 - 2*k)^2*z^2)/(2*k*(1 + 2*k)), {k, 1, Infinity}])))/Sqrt[1 - z], Element[z, Complexes] &&  !(Element[z, Reals] && (Inequality[-Infinity, Less, z, LessEqual, -1] || Inequality[1, LessEqual, z, Less, Infinity])) && Abs[z] < 1]

(* {"ArcCosh", 9}*)
ConditionalExpression[ArcCosh[1 - z] == (Sqrt[2]*Sqrt[-z])/(1 + Inactive[ContinuedFractionK][-((1 - 2*k)^2*z)/(4*k*(1 + 2*k)), 1 + ((1 - 2*k)^2*z)/(4*k*(1 + 2*k)), {k, 1, Infinity}]), Element[z, Complexes] &&  !(Element[z, Reals] && (Inequality[-Infinity, Less, 1 - z, LessEqual, -1] || Inequality[1, LessEqual, z, Less, Infinity])) && Abs[z] < 1]

(* {"ArcCosh", 10}*)
ConditionalExpression[ArcCosh[-1 + z] == I*(-1 + 2*UnitStep[Im[z]])*(Pi - (Sqrt[2]*Sqrt[z])/(1 + Inactive[ContinuedFractionK][-((1 - 2*k)^2*z)/(4*k*(1 + 2*k)), 1 + ((1 - 2*k)^2*z)/(4*k*(1 + 2*k)), {k, 1, Infinity}])), Element[z, Complexes] &&  !(Element[z, Reals] && (Inequality[-Infinity, Less, -1 + z, LessEqual, -1] || Inequality[1, LessEqual, z, Less, Infinity])) && Abs[z] < 1]

(* {"ArcCosh", 11}*)
ConditionalExpression[ArcCosh[z] == Log[2*z] - 1/(4*z^2*(1 + Inactive[ContinuedFractionK][-(k*(1 + 2*k))/(2*(1 + k)^2*z^2), 1 + (k*(1 + 2*k))/(2*(1 + k)^2*z^2), {k, 1, Infinity}])), Element[z, Complexes] &&  !(Element[z, Reals] && (Inequality[-Infinity, Less, z^(-1), LessEqual, -1] || Inequality[1, LessEqual, z, Less, Infinity])) && Abs[z] > 1]

(* {"ArcCoshCompound", 1}*)
ConditionalExpression[ArcCosh[z]^2 == -Pi^2/4 + (Pi*z)/(1 + Inactive[ContinuedFractionK][(2*z*Gamma[(1 + k)/2]^2)/((1 + k)*Gamma[k/2]^2), 1 - (2*z*Gamma[(1 + k)/2]^2)/((1 + k)*Gamma[k/2]^2), {k, 1, Infinity}]), Element[z, Complexes] &&  !(Element[z, Reals] && (Inequality[-Infinity, Less, z, LessEqual, -1] || Inequality[1, LessEqual, z, Less, Infinity])) && Abs[z] < 1]

(* {"ArcCot", 1}*)
ConditionalExpression[ArcCot[z] == 1/(z*(1 + Inactive[ContinuedFractionK][k^2/z^2, 1 + 2*k, {k, 1, Infinity}])), Element[z, Complexes] &&  !(Element[I*z, Reals] && -1 <= I*z <= 1)]

(* {"ArcCot", 2}*)
ConditionalExpression[ArcCot[z] == z^(-1) - 1/(z^3*(3 + Inactive[ContinuedFractionK][(1 - (-1)^k + k)^2/z^2, 3 + 2*k, {k, 1, Infinity}])), Element[z, Complexes] &&  !(Element[I*z, Reals] && -1 <= I*z <= 1)]

(* {"ArcCot", 3}*)
ConditionalExpression[ArcCot[z] == 1/(z*(1 + Inactive[ContinuedFractionK][k^2/((-1 + 4*k^2)*z^2), 1, {k, 1, Infinity}])), Element[z, Complexes] &&  !(Element[z, Reals] && -1 <= I*z <= 1)]

(* {"ArcCot", 4}*)
ConditionalExpression[ArcCot[z] == z/((1 + z^2)*(1 + Inactive[ContinuedFractionK][-((k*(-(-1)^k + k))/((-1 + 4*k^2)*(1 + z^2))), 1, {k, 1, Infinity}])), Element[z, Complexes] &&  !(Element[z, Reals] && -1 <= I*z <= 1)]

(* {"ArcCot", 5}*)
ConditionalExpression[ArcCot[z] == 1/(z*(1 + Inactive[ContinuedFractionK][(-1 + 2*k)^2/z^2, 1 + 2*k - (-1 + 2*k)/z^2, {k, 1, Infinity}])), Element[z, Complexes] && Abs[z] > 1]

(* {"ArcCot", 6}*)
ConditionalExpression[ArcCot[z] == 1/(z*(1 + z^(-2) + Inactive[ContinuedFractionK][(2*(1 - 2*Floor[(1 + k)/2])*Floor[(1 + k)/2])/z^2, (1 + 2*k)*(1 + (1 + (-1)^k)/(2*z^2)), {k, 1, Infinity}])), Element[z, Complexes] &&  !(Element[z, Reals] && -1 <= I*z <= 1)]

(* {"ArcCot", 7}*)
ConditionalExpression[ArcCot[z] == 1/(2*z*(1/2 + Inactive[ContinuedFractionK][(-1 + 2*k)^2/(4*z^2), (1 + 2*k)/2 - (-1 + 2*k)/(2*z^2), {k, 1, Infinity}])), Element[z, Complexes] && Abs[z] > 1]

(* {"ArcCot", 8}*)
ConditionalExpression[ArcCot[z] == 1/(2*z*((1 + z^2)/(2*z^2) + Inactive[ContinuedFractionK][((1/2 - k)*k*(1 + z^2))/z^4, 1/2 + k + (1 + 4*k)/(2*z^2), {k, 1, Infinity}])), Element[z, Complexes] && Abs[Im[z]] > Sqrt[2]]

(* {"ArcCot", 9}*)
ConditionalExpression[ArcCot[z] == (Pi*Sqrt[z^(-2)]*z)/2 - z/(1 + Inactive[ContinuedFractionK][((-1 + 2*k)*z^2)/(1 + 2*k), 1 + (z^2 - 2*k*z^2)/(1 + 2*k), {k, 1, Infinity}]), Element[z, Complexes] && Abs[z] < 1]

(* {"ArcCot", 10}*)
ConditionalExpression[(-I)*ArcCoth[1 - I*z] == (I/2)*(-Log[2] + Log[(-I)*z] + ((I/2)*z)/(1 + Inactive[ContinuedFractionK][((-I/2)*k*z)/(1 + k), 1 + ((I/2)*k*z)/(1 + k), {k, 1, Infinity}])), Element[z, Complexes] && Abs[z] < 1]

(* {"ArcCot", 11}*)
ConditionalExpression[I*ArcCoth[1 + I*z] == (I/2)*(Log[2] - Log[I*z] + ((I/2)*z)/(1 + Inactive[ContinuedFractionK][((I/2)*k*z)/(1 + k), 1 - ((I/2)*k*z)/(1 + k), {k, 1, Infinity}])), Element[z, Complexes] && Abs[z] < 1]

(* {"ArcCot", 12}*)
ConditionalExpression[ArcCot[z] == 1/(z*(1 + Inactive[ContinuedFractionK][(-1 + 2*k)/((1 + 2*k)*z^2), 1 - (-1 + 2*k)/((1 + 2*k)*z^2), {k, 1, Infinity}])), Element[z, Complexes] && Abs[z] > 1]

(* {"ArcCoth", 1}*)
ConditionalExpression[ArcCoth[z] == 1/(z*(1 + Inactive[ContinuedFractionK][-(k^2/z^2), 1 + 2*k, {k, 1, Infinity}])), Element[z, Complexes] &&  !(Element[z, Reals] && Inequality[-1, LessEqual, z, LessEqual, 1])]

(* {"ArcCoth", 2}*)
ConditionalExpression[ArcCoth[z] == z^(-1) + 1/(z^3*(3 + Inactive[ContinuedFractionK][-((1 - (-1)^k + k)^2/z^2), 3 + 2*k, {k, 1, Infinity}])), Element[z, Complexes] &&  !(Element[z, Reals] && Inequality[-1, LessEqual, z, LessEqual, 1])]

(* {"ArcCoth", 3}*)
ConditionalExpression[ArcCoth[z] == 1/(z*(1 + Inactive[ContinuedFractionK][-(k^2/((-1 + 4*k^2)*z^2)), 1, {k, 1, Infinity}])), Element[z, Complexes] &&  !(Element[z, Reals] && Inequality[-1, LessEqual, z, LessEqual, 1])]

(* {"ArcCoth", 4}*)
ConditionalExpression[ArcCoth[z] == z/((-1 + z^2)*(1 + Inactive[ContinuedFractionK][(k*(-(-1)^k + k))/((-1 + 4*k^2)*(-1 + z^2)), 1, {k, 1, Infinity}])), Element[z, Complexes] &&  !(Element[z, Reals] && Inequality[-1, LessEqual, z, LessEqual, 1])]

(* {"ArcCoth", 5}*)
ConditionalExpression[ArcCoth[z] == 1/(z*(1 + Inactive[ContinuedFractionK][-((-1 + 2*k)^2/z^2), 1 + 2*k + (-1 + 2*k)/z^2, {k, 1, Infinity}])), Element[z, Complexes] && Abs[z] > 1]

(* {"ArcCoth", 6}*)
ConditionalExpression[ArcCoth[z] == 1/(z*(1 - z^(-2) + Inactive[ContinuedFractionK][(2*Floor[(1 + k)/2]*(-1 + 2*Floor[(1 + k)/2]))/z^2, (1 + 2*k)*(1 - (1 + (-1)^k)/(2*z^2)), {k, 1, Infinity}])), Element[z, Complexes] &&  !(Element[z, Reals] && Inequality[-1, LessEqual, z, LessEqual, 1])]

(* {"ArcCoth", 7}*)
ConditionalExpression[ArcCoth[z] == 1/(2*z*(1/2 + Inactive[ContinuedFractionK][-(-1 + 2*k)^2/(4*z^2), (1 + 2*k)/2 + (-1 + 2*k)/(2*z^2), {k, 1, Infinity}])), Element[z, Complexes] && Abs[z] > 1]

(* {"ArcCoth", 8}*)
ConditionalExpression[ArcCoth[z] == 1/(2*z*((-1 + z^2)/(2*z^2) + Inactive[ContinuedFractionK][((-1/2 + k)*k*(-1 + z^2))/z^4, 1/2 + k - (1 + 4*k)/(2*z^2), {k, 1, Infinity}])), Element[z, Complexes] && Abs[Re[z]] > Sqrt[2]]

(* {"ArcCoth", 9}*)
ConditionalExpression[ArcCoth[z] == -(Pi*Sqrt[-z^(-2)]*z)/2 + z/(1 + Inactive[ContinuedFractionK][-(((-1 + 2*k)*z^2)/(1 + 2*k)), 1 + ((-1 + 2*k)*z^2)/(1 + 2*k), {k, 1, Infinity}]), Element[z, Complexes] && Abs[z] < 1]

(* {"ArcCoth", 10}*)
ConditionalExpression[ArcCoth[1 + z] == (Log[2] - Log[z] + z/(2*(1 + Inactive[ContinuedFractionK][(k*z)/(2*(1 + k)), 1 - (k*z)/(2*(1 + k)), {k, 1, Infinity}])))/2, Element[z, Complexes] && Abs[z] < 1]

(* {"ArcCoth", 11}*)
ConditionalExpression[-ArcCoth[1 - z] == (-Log[2] + Log[-z] + z/(2*(1 + Inactive[ContinuedFractionK][-(k*z)/(2*(1 + k)), 1 + (k*z)/(2*(1 + k)), {k, 1, Infinity}])))/2, Element[z, Complexes] && Abs[z] < 1]

(* {"ArcCoth", 12}*)
ConditionalExpression[ArcCoth[z] == 1/(z*(1 + Inactive[ContinuedFractionK][-((-1 + 2*k)/((1 + 2*k)*z^2)), 1 + (-1 + 2*k)/((1 + 2*k)*z^2), {k, 1, Infinity}])), Element[z, Complexes] && Abs[z] > 1]

(* {"ArcCsc", 1}*)
ConditionalExpression[ArcCsc[z] == Sqrt[1 - z^(-2)]/(z*(1 + Inactive[ContinuedFractionK][(-2*Floor[(1 + k)/2]*(-1 + 2*Floor[(1 + k)/2]))/z^2, 1 + 2*k, {k, 1, Infinity}])), Element[z, Complexes] &&  !(Element[z, Reals] && -1 <= z <= 1)]

(* {"ArcCsc", 2}*)
ConditionalExpression[ArcCsc[z] == 1/(Sqrt[1 - z^(-2)]*z*(1 + Inactive[ContinuedFractionK][k^2/(-1 + z^2), 1 + 2*k, {k, 1, Infinity}])), Element[z, Complexes] &&  !(Element[z, Reals] && -1 <= z <= 1)]

(* {"ArcCsc", 3}*)
ConditionalExpression[ArcCsc[z] == Sqrt[1 - z^(-2)]/(z*(1 + Inactive[ContinuedFractionK][-((k*(-(-1)^k + k))/((-1 + 4*k^2)*z^2)), 1, {k, 1, Infinity}])), Element[z, Complexes] &&  !(Element[z, Reals] && -1 <= z <= 1)]

(* {"ArcCsc", 4}*)
ConditionalExpression[ArcCsc[z] == Sqrt[1 - z^(-2)]/(z*(1 - z^(-2) + Inactive[ContinuedFractionK][k^2/z^2, (1 + 2*k)*(1 - z^(-2))^((1 + (-1)^k)/2), {k, 1, Infinity}])), Element[z, Complexes] &&  !(Element[z, Reals] && -1 <= z <= 1)]

(* {"ArcCsc", 5}*)
ConditionalExpression[ArcCsc[z] == (Pi*Sqrt[z^2])/(2*z) - (Sqrt[1 - z^(-2)]*z)/(1 + Inactive[ContinuedFractionK][k^2*(-1 + z^2), 1 + 2*k, {k, 1, Infinity}]), Element[z, Complexes] && Re[z] != 0]

(* {"ArcCsc", 6}*)
ConditionalExpression[ArcCsc[z] == Pi/2 - Sqrt[1 - z^(-2)]/(z^(-1) + Inactive[ContinuedFractionK][k^2*(1 - z^(-2)), (1 + 2*k)/z, {k, 1, Infinity}]), Element[z, Complexes] && Re[z] > 0]

(* {"ArcCsc", 7}*)
ConditionalExpression[ArcCsc[z] == (Pi*Sqrt[z^(-2)]*z)/2 - Sqrt[1 - z^(-2)]/(z*(1 + Inactive[ContinuedFractionK][(((-1)^k - k)*k*(1 - z^(-2)))/(-1 + 4*k^2), 1, {k, 1, Infinity}])), Element[z, Complexes] &&  !(Element[z, Reals] && -1 <= z <= 1)]

(* {"ArcCsc", 8}*)
ConditionalExpression[ArcCsc[z] == (Sqrt[-z^(-2)]*z*(-Log[-4/z^2] + z^2/(2*(1 + Inactive[ContinuedFractionK][-(k*(1 + 2*k)*z^2)/(2*(1 + k)^2), 1 + (k*(1 + 2*k)*z^2)/(2*(1 + k)^2), {k, 1, Infinity}]))))/2, Element[z, Complexes] && Abs[z] < 1]

(* {"ArcCsc", 9}*)
ConditionalExpression[ArcCsc[1 + z] == Pi/2 - (Sqrt[2]*Sqrt[z])/(1 + Inactive[ContinuedFractionK][((-1 + 2*k)*z*Hypergeometric2F1[1/2, 3/2 + k, 3/2, -1])/(2*k*Hypergeometric2F1[1/2, 1/2 + k, 3/2, -1]), 1 - ((-1 + 2*k)*z*Hypergeometric2F1[1/2, 3/2 + k, 3/2, -1])/(2*k*Hypergeometric2F1[1/2, 1/2 + k, 3/2, -1]), {k, 1, Infinity}]), Element[z, Complexes] && Abs[z] < 1]

(* {"ArcCsc", 10}*)
ConditionalExpression[-ArcCsc[1 - z] == -Pi/2 + (Sqrt[2]*Sqrt[-z])/(1 + Inactive[ContinuedFractionK][((1 - 2*k)*z*Hypergeometric2F1[1/2, 3/2 + k, 3/2, -1])/(2*k*Hypergeometric2F1[1/2, 1/2 + k, 3/2, -1]), 1 - ((1 - 2*k)*z*Hypergeometric2F1[1/2, 3/2 + k, 3/2, -1])/(2*k*Hypergeometric2F1[1/2, 1/2 + k, 3/2, -1]), {k, 1, Infinity}]), Element[z, Complexes] && Abs[z] < 1]

(* {"ArcCsc", 11}*)
ConditionalExpression[ArcCsc[z] == 1/(z*(1 + Inactive[ContinuedFractionK][-(1 - 2*k)^2/(2*k*(1 + 2*k)*z^2), 1 + (1 - 2*k)^2/(2*k*(1 + 2*k)*z^2), {k, 1, Infinity}])), Element[z, Complexes] && Abs[z] > 1]

(* {"ArcCscCompound", 1}*)
ConditionalExpression[ArcCsc[z]^2 == -Log[-4/z^2]^2/4 + z^2/(2*(1 + Inactive[ContinuedFractionK][-(k^2*(1 + 2*k)*z^2)/(2*(1 + k)^3), 1 + (k^2*(1 + 2*k)*z^2)/(2*(1 + k)^3), {k, 1, Infinity}])) + (z^2*Log[-z^(-2)])/(4*(1 + Inactive[ContinuedFractionK][-(k*(1 + 2*k)*z^2)/(2*(1 + k)^2), 1 + (k*(1 + 2*k)*z^2)/(2*(1 + k)^2), {k, 1, Infinity}])) - (z^2*(EulerGamma + PolyGamma[0, -1/2]))/(4*(1 + Inactive[ContinuedFractionK][-(k*(1 + 2*k)*z^2*(PolyGamma[0, -1/2 - k] - PolyGamma[0, 1 + k]))/(2*(1 + k)^2*(PolyGamma[0, 1/2 - k] - PolyGamma[0, k])), 1 + (k*(1 + 2*k)*z^2*(PolyGamma[0, -1/2 - k] - PolyGamma[0, 1 + k]))/(2*(1 + k)^2*(PolyGamma[0, 1/2 - k] - PolyGamma[0, k])), {k, 1, Infinity}])), Element[z, Complexes] && Abs[z] < 1]

(* {"ArcCsch", 1}*)
ConditionalExpression[ArcCsch[z] == Sqrt[1 + z^(-2)]/(z*(1 + Inactive[ContinuedFractionK][(2*Floor[(1 + k)/2]*(-1 + 2*Floor[(1 + k)/2]))/z^2, 1 + 2*k, {k, 1, Infinity}])), Element[z, Complexes] &&  !(Element[I*z, Reals] && -1 <= I*z <= 1)]

(* {"ArcCsch", 2}*)
ConditionalExpression[ArcCsch[z] == 1/(Sqrt[1 + z^(-2)]*z*(1 + Inactive[ContinuedFractionK][-(k^2/(1 + z^2)), 1 + 2*k, {k, 1, Infinity}])), Element[z, Complexes] &&  !(Element[I*z, Reals] && -1 <= I*z <= 1)]

(* {"ArcCsch", 3}*)
ConditionalExpression[ArcCsch[z] == 1/(Sqrt[1 + z^(-2)]*z*(1 + Inactive[ContinuedFractionK][-(k^2/(1 + z^2)), 1 + 2*k, {k, 1, Infinity}])), Element[z, Complexes] &&  !(Element[I*z, Reals] && -1 <= I*z <= 1)]

(* {"ArcCsch", 4}*)
ConditionalExpression[ArcCsch[z] == Sqrt[1 + z^(-2)]/(z*(1 + z^(-2) + Inactive[ContinuedFractionK][-(k^2/z^2), (1 + 2*k)*(1 + z^(-2))^((1 + (-1)^k)/2), {k, 1, Infinity}])), Element[z, Complexes] &&  !(Element[I*z, Reals] && -1 <= I*z <= 1)]

(* {"ArcCsch", 5}*)
ConditionalExpression[ArcCsch[z] == (Pi*Sqrt[-z^2])/(2*z) + (Sqrt[1 + z^(-2)]*z)/(1 + Inactive[ContinuedFractionK][-(k^2*(1 + z^2)), 1 + 2*k, {k, 1, Infinity}]), Element[z, Complexes] && Im[z] != 0]

(* {"ArcCsch", 6}*)
ConditionalExpression[ArcCsch[z] == -(Pi*Sqrt[-z^(-2)]*z)/2 - (I*Sqrt[1 + z^(-2)])/((-I)/z + Inactive[ContinuedFractionK][k^2*(1 + z^(-2)), ((-I)*(1 + 2*k))/z, {k, 1, Infinity}]), Element[z, Complexes] &&  !(Element[I*z, Reals] && -1 <= I*z <= 1)]

(* {"ArcCsch", 7}*)
ConditionalExpression[ArcCsch[z] == -(Pi*Sqrt[-z^(-2)]*z)/2 - Sqrt[1 + z^(-2)]/(z*(1 + Inactive[ContinuedFractionK][(((-1)^k - k)*k*(1 + z^(-2)))/(-1 + 4*k^2), 1, {k, 1, Infinity}])), Element[z, Complexes] &&  !(Element[I*z, Reals] && -1 <= I*z <= 1)]

(* {"ArcCsch", 8}*)
ConditionalExpression[ArcCsch[z] == (Sqrt[z^(-2)]*z*(Log[4/z^2] + z^2/(2*(1 + Inactive[ContinuedFractionK][(k*(1 + 2*k)*z^2)/(2*(1 + k)^2), 1 - (k*(1 + 2*k)*z^2)/(2*(1 + k)^2), {k, 1, Infinity}]))))/2, Element[z, Complexes] && Abs[z] < 1]

(* {"ArcCsch", 9}*)
ConditionalExpression[(-I)*ArcCsc[1 - I*z] == (-I/2)*Pi + (I*Sqrt[2]*Sqrt[(-I)*z])/(1 + Inactive[ContinuedFractionK][((I/2)*(1 - 2*k)*z*Hypergeometric2F1[1/2, 3/2 + k, 3/2, -1])/(k*Hypergeometric2F1[1/2, 1/2 + k, 3/2, -1]), 1 - ((I/2)*(1 - 2*k)*z*Hypergeometric2F1[1/2, 3/2 + k, 3/2, -1])/(k*Hypergeometric2F1[1/2, 1/2 + k, 3/2, -1]), {k, 1, Infinity}]), Element[z, Complexes] && Abs[z] < 1]

(* {"ArcCsch", 10}*)
ConditionalExpression[I*ArcCsc[1 + I*z] == (I/2)*Pi - (I*Sqrt[2]*Sqrt[I*z])/(1 + Inactive[ContinuedFractionK][((I/2)*(-1 + 2*k)*z*Hypergeometric2F1[1/2, 3/2 + k, 3/2, -1])/(k*Hypergeometric2F1[1/2, 1/2 + k, 3/2, -1]), 1 - ((I/2)*(-1 + 2*k)*z*Hypergeometric2F1[1/2, 3/2 + k, 3/2, -1])/(k*Hypergeometric2F1[1/2, 1/2 + k, 3/2, -1]), {k, 1, Infinity}]), Element[z, Complexes] && Abs[z] < 1]

(* {"ArcCsch", 11}*)
ConditionalExpression[ArcCsch[z] == 1/(z*(1 + Inactive[ContinuedFractionK][(1 - 2*k)^2/(2*k*(1 + 2*k)*z^2), 1 - (1 - 2*k)^2/(2*k*(1 + 2*k)*z^2), {k, 1, Infinity}])), Element[z, Complexes] && Abs[z] > 1]

(* {"ArcCschCompound", 1}*)
ConditionalExpression[ArcCsch[z]^2 == Log[4/z^2]^2/4 + z^2/(2*(1 + Inactive[ContinuedFractionK][(k^2*(1 + 2*k)*z^2)/(2*(1 + k)^3), 1 - (k^2*(1 + 2*k)*z^2)/(2*(1 + k)^3), {k, 1, Infinity}])) + (z^2*Log[z^(-2)])/(4*(1 + Inactive[ContinuedFractionK][(k*(1 + 2*k)*z^2)/(2*(1 + k)^2), 1 - (k*(1 + 2*k)*z^2)/(2*(1 + k)^2), {k, 1, Infinity}])) - (z^2*(EulerGamma + PolyGamma[0, -1/2]))/(4*(1 + Inactive[ContinuedFractionK][(k*(1 + 2*k)*z^2*(PolyGamma[0, -1/2 - k] - PolyGamma[0, 1 + k]))/(2*(1 + k)^2*(PolyGamma[0, 1/2 - k] - PolyGamma[0, k])), 1 - (k*(1 + 2*k)*z^2*(PolyGamma[0, -1/2 - k] - PolyGamma[0, 1 + k]))/(2*(1 + k)^2*(PolyGamma[0, 1/2 - k] - PolyGamma[0, k])), {k, 1, Infinity}])), Element[z, Complexes] && Abs[z] < 1]

(* {"ArcSec", 1}*)
ConditionalExpression[ArcSec[z] == Pi/2 - Sqrt[1 - z^(-2)]/(z*(1 + Inactive[ContinuedFractionK][(-2*Floor[(1 + k)/2]*(-1 + 2*Floor[(1 + k)/2]))/z^2, 1 + 2*k, {k, 1, Infinity}])), Element[z, Complexes] &&  !(Element[z, Reals] && -1 <= z <= 1)]

(* {"ArcSec", 2}*)
ConditionalExpression[ArcSec[z] == (Sqrt[1 - z^(-2)]*z)/(1 + Inactive[ContinuedFractionK][k^2*(-1 + z^2), 1 + 2*k, {k, 1, Infinity}]), Element[z, Complexes] &&  !(Element[z, Reals] && 0 < z < 1) && Re[z] > 0]

(* {"ArcSec", 3}*)
ConditionalExpression[ArcSec[z] == Sqrt[1 - z^(-2)]/(z*(1 + Inactive[ContinuedFractionK][(((-1)^k - k)*k*(1 - z^(-2)))/(-1 + 4*k^2), 1, {k, 1, Infinity}])), Element[z, Complexes] &&  !(Element[z, Reals] && 0 < z < 1) && Re[z] > 0 && Abs[Arg[z^2]] < Pi]

(* {"ArcSec", 4}*)
ConditionalExpression[ArcSec[z] == Sqrt[1 - z^(-2)]/(z^(-1) + Inactive[ContinuedFractionK][k^2*(1 - z^(-2)), (1 + 2*k)/z, {k, 1, Infinity}]), Element[z, Complexes] &&  !(Element[z, Reals] && 0 < z < 1) && Re[z] > 0 && Abs[Arg[1 - z^(-2)]] < Pi]

(* {"ArcSec", 5}*)
ConditionalExpression[ArcSec[z] == Pi/2 - 1/(Sqrt[1 - z^(-2)]*z*(1 + Inactive[ContinuedFractionK][k^2/(-1 + z^2), 1 + 2*k, {k, 1, Infinity}])), Element[z, Complexes] &&  !(Element[z, Reals] && -1 <= z <= 1)]

(* {"ArcSec", 6}*)
ConditionalExpression[ArcSec[z] == Pi/2 - Sqrt[1 - z^(-2)]/(z*(1 + Inactive[ContinuedFractionK][-((k*(-(-1)^k + k))/((-1 + 4*k^2)*z^2)), 1, {k, 1, Infinity}])), Element[z, Complexes] &&  !(Element[z, Reals] && -1 <= z <= 1)]

(* {"ArcSec", 7}*)
ConditionalExpression[ArcSec[z] == Pi/2 - Sqrt[1 - z^(-2)]/(z*(1 - z^(-2) + Inactive[ContinuedFractionK][k^2/z^2, (1 + 2*k)*(1 - z^(-2))^((1 + (-1)^k)/2), {k, 1, Infinity}])), Element[z, Complexes] &&  !(Element[z, Reals] && -1 <= z <= 1)]

(* {"ArcSec", 8}*)
ConditionalExpression[ArcSec[z] == Pi/2 + (Sqrt[-z^(-2)]*z*(Log[-4/z^2] - z^2/(2*(1 + Inactive[ContinuedFractionK][-(k*(1 + 2*k)*z^2)/(2*(1 + k)^2), 1 + (k*(1 + 2*k)*z^2)/(2*(1 + k)^2), {k, 1, Infinity}]))))/2, Element[z, Complexes] && Abs[z] < 1]

(* {"ArcSec", 9}*)
ConditionalExpression[ArcSec[1 + z] == (Sqrt[2]*Sqrt[z])/(1 + Inactive[ContinuedFractionK][((-1 + 2*k)*z*Hypergeometric2F1[1/2, 3/2 + k, 3/2, -1])/(2*k*Hypergeometric2F1[1/2, 1/2 + k, 3/2, -1]), 1 - ((-1 + 2*k)*z*Hypergeometric2F1[1/2, 3/2 + k, 3/2, -1])/(2*k*Hypergeometric2F1[1/2, 1/2 + k, 3/2, -1]), {k, 1, Infinity}]), Element[z, Complexes] && Abs[z] < 1]

(* {"ArcSec", 10}*)
ConditionalExpression[ArcSec[-1 + z] == Pi - (Sqrt[2]*Sqrt[-z])/(1 + Inactive[ContinuedFractionK][((1 - 2*k)*z*Hypergeometric2F1[1/2, 3/2 + k, 3/2, -1])/(2*k*Hypergeometric2F1[1/2, 1/2 + k, 3/2, -1]), 1 - ((1 - 2*k)*z*Hypergeometric2F1[1/2, 3/2 + k, 3/2, -1])/(2*k*Hypergeometric2F1[1/2, 1/2 + k, 3/2, -1]), {k, 1, Infinity}]), Element[z, Complexes] && Abs[z] < 1]

(* {"ArcSec", 11}*)
ConditionalExpression[ArcSec[z] == Pi/2 - 1/(z*(1 + Inactive[ContinuedFractionK][-(1 - 2*k)^2/(2*k*(1 + 2*k)*z^2), 1 + (1 - 2*k)^2/(2*k*(1 + 2*k)*z^2), {k, 1, Infinity}])), Element[z, Complexes] && Abs[z] > 1]

(* {"ArcSecCompound", 1}*)
ConditionalExpression[ArcSec[z]^2 == Pi^2/4 + (Pi*Sqrt[-z^(-2)]*z*Log[-4/z^2])/2 - Log[-4/z^2]^2/4 + z^2/(2*(1 + Inactive[ContinuedFractionK][-(k^2*(1 + 2*k)*z^2)/(2*(1 + k)^3), 1 + (k^2*(1 + 2*k)*z^2)/(2*(1 + k)^3), {k, 1, Infinity}])) + (z^2*(-(Pi*Sqrt[-z^(-2)]*z) + Log[-z^(-2)]))/(4*(1 + Inactive[ContinuedFractionK][-(k*(1 + 2*k)*z^2)/(2*(1 + k)^2), 1 + (k*(1 + 2*k)*z^2)/(2*(1 + k)^2), {k, 1, Infinity}])) - (z^2*(EulerGamma + PolyGamma[0, -1/2]))/(4*(1 + Inactive[ContinuedFractionK][-(k*(1 + 2*k)*z^2*(PolyGamma[0, -1/2 - k] - PolyGamma[0, 1 + k]))/(2*(1 + k)^2*(PolyGamma[0, 1/2 - k] - PolyGamma[0, k])), 1 + (k*(1 + 2*k)*z^2*(PolyGamma[0, -1/2 - k] - PolyGamma[0, 1 + k]))/(2*(1 + k)^2*(PolyGamma[0, 1/2 - k] - PolyGamma[0, k])), {k, 1, Infinity}])), Element[z, Complexes] && Abs[z] < 1]

(* {"ArcSech", 1}*)
ConditionalExpression[ArcSech[z] == (Sqrt[-1 + z^(-1)]*(Pi/2 - Sqrt[1 - z^(-2)]/(z*(1 + Inactive[ContinuedFractionK][(-2*Floor[(1 + k)/2]*(-1 + 2*Floor[(1 + k)/2]))/z^2, 1 + 2*k, {k, 1, Infinity}]))))/Sqrt[1 - z^(-1)], Element[z, Complexes] &&  !(Element[z, Reals] && -1 <= z <= 1)]

(* {"ArcSech", 2}*)
ConditionalExpression[ArcSech[z] == Sqrt[-1 + z^(-2)]/(z*(1 + Inactive[ContinuedFractionK][(k*(-(-1)^k + k)*(-1 + z^(-2)))/(3 + 4*(-1 + k)*(1 + k)), 1, {k, 1, Infinity}])), Element[z, Complexes] &&  !(Element[z, Reals] && Inequality[1, LessEqual, z, Less, Infinity]) && Re[z] > 0]

(* {"ArcSech", 3}*)
ConditionalExpression[ArcSech[z] == (Sqrt[-1 + z^(-2)]*z)/(1 + Inactive[ContinuedFractionK][-((k^2*(1 - z^2))/(-1 + 4*k^2)), 1, {k, 1, Infinity}]), Element[z, Complexes] &&  !(Element[z, Reals] && 0 < z < 1) && Re[z] > 0 && Abs[Arg[z^2]] < Pi]

(* {"ArcSech", 4}*)
ConditionalExpression[ArcSech[z] == (Sqrt[-1 + z^(-1)]*Sqrt[1 + z^(-1)])/(z^(-1) + Inactive[ContinuedFractionK][k^2*(1 - z^(-2)), (1 + 2*k)/z, {k, 1, Infinity}]), Element[z, Complexes] &&  !(Element[z, Reals] && 0 < z < 1) && Re[z] > 0 && Abs[Arg[1 - z^(-2)]] < Pi]

(* {"ArcSech", 5}*)
ConditionalExpression[ArcSech[z] == (Pi*Sqrt[-1 + z^(-1)])/(2*Sqrt[1 - z^(-1)]) - Sqrt[(1 - z)/(1 + z)]/((-1 + z)*(1 + Inactive[ContinuedFractionK][k^2/(-1 + z^2), 1 + 2*k, {k, 1, Infinity}])), Element[z, Complexes] &&  !(Element[z, Reals] && -1 <= z <= 1)]

(* {"ArcSech", 6}*)
ConditionalExpression[ArcSech[z] == (Pi*Sqrt[-1 + z^(-1)])/(2*Sqrt[1 - z^(-1)]) - (Sqrt[-1 + z^(-1)]*Sqrt[1 + z^(-1)])/(z*(1 + Inactive[ContinuedFractionK][-((k*(-(-1)^k + k))/((-1 + 4*k^2)*z^2)), 1, {k, 1, Infinity}])), Element[z, Complexes] &&  !(Element[z, Reals] && -1 <= z <= 1)]

(* {"ArcSech", 7}*)
ConditionalExpression[ArcSech[z] == (Pi*Sqrt[-1 + z^(-1)])/(2*Sqrt[1 - z^(-1)]) - (Sqrt[-1 + z^(-1)]*Sqrt[1 + z^(-1)])/(z*(1 - z^(-2) + Inactive[ContinuedFractionK][k^2/z^2, (1 + 2*k)*(1 - z^(-2))^((1 + (-1)^k)/2), {k, 1, Infinity}])), Element[z, Complexes] &&  !(Element[z, Reals] && -1 <= z <= 1)]

(* {"ArcSech", 8}*)
ConditionalExpression[ArcSech[z] == Log[2/z] - z^2/(4*(1 + Inactive[ContinuedFractionK][-(k*(1 + 2*k)*z^2)/(2*(1 + k)^2), 1 + (k*(1 + 2*k)*z^2)/(2*(1 + k)^2), {k, 1, Infinity}])), Element[z, Complexes] && Abs[z] < 1]

(* {"ArcSech", 9}*)
ConditionalExpression[ArcSech[1 + z] == (Sqrt[2]*Sqrt[-z])/(1 + Inactive[ContinuedFractionK][((-1 + 2*k)*z*Hypergeometric2F1[1/2, 3/2 + k, 3/2, -1])/(2*k*Hypergeometric2F1[1/2, 1/2 + k, 3/2, -1]), 1 - ((-1 + 2*k)*z*Hypergeometric2F1[1/2, 3/2 + k, 3/2, -1])/(2*k*Hypergeometric2F1[1/2, 1/2 + k, 3/2, -1]), {k, 1, Infinity}]), Element[z, Complexes] && Abs[z] < 1]

(* {"ArcSech", 10}*)
ConditionalExpression[ArcSech[-1 + z] == I*(-1 + 2*UnitStep[Im[(-1 + z)^(-1)]])*(Pi - (Sqrt[2]*Sqrt[-z])/(1 + Inactive[ContinuedFractionK][((1 - 2*k)*z*Hypergeometric2F1[1/2, 3/2 + k, 3/2, -1])/(2*k*Hypergeometric2F1[1/2, 1/2 + k, 3/2, -1]), 1 - ((1 - 2*k)*z*Hypergeometric2F1[1/2, 3/2 + k, 3/2, -1])/(2*k*Hypergeometric2F1[1/2, 1/2 + k, 3/2, -1]), {k, 1, Infinity}])), Element[z, Complexes] && Abs[z] < 1]

(* {"ArcSech", 11}*)
ConditionalExpression[ArcSech[z] == I*(-1 + 2*UnitStep[Im[z^(-1)]])*(Pi/2 - 1/(z*(1 + Inactive[ContinuedFractionK][-(1 - 2*k)^2/(2*k*(1 + 2*k)*z^2), 1 + (1 - 2*k)^2/(2*k*(1 + 2*k)*z^2), {k, 1, Infinity}]))), Element[z, Complexes] && Abs[z] > 1]

(* {"ArcSechCompound", 1}*)
ConditionalExpression[ArcSech[z]^2 == Log[2/z]^2 - z^2/(2*(1 + Inactive[ContinuedFractionK][-(k^2*(1 + 2*k)*z^2)/(2*(1 + k)^3), 1 + (k^2*(1 + 2*k)*z^2)/(2*(1 + k)^3), {k, 1, Infinity}])) - (z^2*Log[z^(-1)])/(2*(1 + Inactive[ContinuedFractionK][-(k*(1 + 2*k)*z^2)/(2*(1 + k)^2), 1 + (k*(1 + 2*k)*z^2)/(2*(1 + k)^2), {k, 1, Infinity}])) + (z^2*(EulerGamma + PolyGamma[0, -1/2]))/(4*(1 + Inactive[ContinuedFractionK][-(k*(1 + 2*k)*z^2*(PolyGamma[0, -1/2 - k] - PolyGamma[0, 1 + k]))/(2*(1 + k)^2*(PolyGamma[0, 1/2 - k] - PolyGamma[0, k])), 1 + (k*(1 + 2*k)*z^2*(PolyGamma[0, -1/2 - k] - PolyGamma[0, 1 + k]))/(2*(1 + k)^2*(PolyGamma[0, 1/2 - k] - PolyGamma[0, k])), {k, 1, Infinity}])), Element[z, Complexes] && Abs[z] < 1]

(* {"ArcSin", 1}*)
ConditionalExpression[ArcSin[z] == z/(Sqrt[1 - z^2]*(1 + Inactive[ContinuedFractionK][(k^2*z^2)/(1 - z^2), 1 + 2*k, {k, 1, Infinity}])), Element[z, Complexes] &&  !(Element[z, Reals] && (Inequality[-Infinity, Less, z, LessEqual, -1] || Inequality[1, LessEqual, z, Less, Infinity]))]

(* {"ArcSin", 2}*)
ConditionalExpression[ArcSin[z] == (z*Sqrt[1 - z^2])/(1 + Inactive[ContinuedFractionK][-((k*(-(-1)^k + k)*z^2)/(-1 + 4*k^2)), 1, {k, 1, Infinity}]), Element[z, Complexes] &&  !(Element[z, Reals] && (Inequality[-Infinity, Less, z, LessEqual, -1] || Inequality[1, LessEqual, z, Less, Infinity]))]

(* {"ArcSin", 3}*)
ConditionalExpression[ArcSin[z] == (z*Sqrt[1 - z^2])/(1 + Inactive[ContinuedFractionK][-2*z^2*Floor[(1 + k)/2]*(-1 + 2*Floor[(1 + k)/2]), 1 + 2*k, {k, 1, Infinity}]), Element[z, Complexes] &&  !(Element[z, Reals] && (Inequality[-Infinity, Less, z, LessEqual, -1] || Inequality[1, LessEqual, z, Less, Infinity]))]

(* {"ArcSin", 4}*)
ConditionalExpression[ArcSin[z] == (z*Sqrt[1 - z^2])/(1 - z^2 + Inactive[ContinuedFractionK][k^2*z^2, (1 + 2*k)*(1 - z^2)^((1 + (-1)^k)/2), {k, 1, Infinity}]), Element[z, Complexes] &&  !(Element[z, Reals] && (Inequality[-Infinity, Less, z, LessEqual, -1] || Inequality[1, LessEqual, z, Less, Infinity]))]

(* {"ArcSin", 5}*)
ConditionalExpression[ArcSin[z] == (Pi*Sqrt[z^(-2)]*z)/2 - Sqrt[1 - z^2]/(z*(1 + Inactive[ContinuedFractionK][k^2*(-1 + z^(-2)), 1 + 2*k, {k, 1, Infinity}])), Element[z, Complexes] && Re[z] != 0]

(* {"ArcSin", 6}*)
ConditionalExpression[ArcSin[z] == Pi/2 - Sqrt[1 - z^2]/(z + Inactive[ContinuedFractionK][k^2*(1 - z^2), (1 + 2*k)*z, {k, 1, Infinity}]), Element[z, Complexes] && Re[z] > 0]

(* {"ArcSin", 7}*)
ConditionalExpression[ArcSin[z] == (Pi*Sqrt[z^2])/(2*z) - (z*Sqrt[1 - z^2])/(1 + Inactive[ContinuedFractionK][(((-1)^k - k)*k*(1 - z^2))/(-1 + 4*k^2), 1, {k, 1, Infinity}]), Element[z, Complexes] && Re[z] != 0]

(* {"ArcSin", 8}*)
ConditionalExpression[ArcSin[z] == z/(1 + Inactive[ContinuedFractionK][-((1 - 2*k)^2*z^2)/(2*k*(1 + 2*k)), 1 + ((1 - 2*k)^2*z^2)/(2*k*(1 + 2*k)), {k, 1, Infinity}]), Element[z, Complexes] && Re[z] != 0 && Abs[z] < 1]

(* {"ArcSin", 9}*)
ConditionalExpression[ArcSin[1 - z] == Pi/2 - (Sqrt[2]*Sqrt[z])/(1 + Inactive[ContinuedFractionK][-((1 - 2*k)^2*z)/(4*k*(1 + 2*k)), 1 + ((1 - 2*k)^2*z)/(4*k*(1 + 2*k)), {k, 1, Infinity}]), Element[z, Complexes] && Re[z] != 0 && Abs[z] < 1]

(* {"ArcSin", 10}*)
ConditionalExpression[-ArcSin[1 - z] == -Pi/2 + (Sqrt[2]*Sqrt[z])/(1 + Inactive[ContinuedFractionK][-((1 - 2*k)^2*z)/(4*k*(1 + 2*k)), 1 + ((1 - 2*k)^2*z)/(4*k*(1 + 2*k)), {k, 1, Infinity}]), Element[z, Complexes] && Re[z] != 0 && Abs[z] < 1]

(* {"ArcSin", 11}*)
ConditionalExpression[ArcSin[z] == (z*(Log[-4*z^2] - 1/(2*z^2*(1 + Inactive[ContinuedFractionK][-(k*(1 + 2*k))/(2*(1 + k)^2*z^2), 1 + (k*(1 + 2*k))/(2*(1 + k)^2*z^2), {k, 1, Infinity}]))))/(2*Sqrt[-z^2]), Element[z, Complexes] && Re[z] != 0 && Abs[z] > 1]

(* {"ArcSinCompound", 1}*)
ConditionalExpression[ArcSin[z]^2 == z^2/(1 + Inactive[ContinuedFractionK][(-2*k^2*z^2)/((1 + k)*(1 + 2*k)), 1 + (2*k^2*z^2)/((1 + k)*(1 + 2*k)), {k, 1, Infinity}]), Element[z, Complexes] && Re[z] != 0 && Abs[z] < 1]

(* {"ArcSinh", 1}*)
ConditionalExpression[ArcSinh[z] == z/(Sqrt[1 + z^2]*(1 + Inactive[ContinuedFractionK][-((k^2*z^2)/(1 + z^2)), 1 + 2*k, {k, 1, Infinity}])), Element[z, Complexes] &&  !(Element[I*z, Reals] && (Inequality[-Infinity, Less, I*z, LessEqual, -1] || Inequality[1, LessEqual, I*z, Less, Infinity]))]

(* {"ArcSinh", 2}*)
ConditionalExpression[ArcSinh[z] == (z*Sqrt[1 + z^2])/(1 + Inactive[ContinuedFractionK][(k*(-(-1)^k + k)*z^2)/(-1 + 4*k^2), 1, {k, 1, Infinity}]), Element[z, Complexes] &&  !(Element[I*z, Reals] && (Inequality[-Infinity, Less, I*z, LessEqual, -1] || Inequality[1, LessEqual, I*z, Less, Infinity]))]

(* {"ArcSinh", 3}*)
ConditionalExpression[ArcSinh[z] == (z*Sqrt[1 + z^2])/(1 + Inactive[ContinuedFractionK][2*z^2*Floor[(1 + k)/2]*(-1 + 2*Floor[(1 + k)/2]), 1 + 2*k, {k, 1, Infinity}]), Element[z, Complexes] &&  !(Element[I*z, Reals] && (Inequality[-Infinity, Less, I*z, LessEqual, -1] || Inequality[1, LessEqual, I*z, Less, Infinity]))]

(* {"ArcSinh", 4}*)
ConditionalExpression[ArcSinh[z] == (z*Sqrt[1 + z^2])/(1 + z^2 + Inactive[ContinuedFractionK][-(k^2*z^2), (1 + 2*k)*(1 + z^2)^((1 + (-1)^k)/2), {k, 1, Infinity}]), Element[z, Complexes] &&  !(Element[I*z, Reals] && (Inequality[-Infinity, Less, I*z, LessEqual, -1] || Inequality[1, LessEqual, I*z, Less, Infinity]))]

(* {"ArcSinh", 5}*)
ConditionalExpression[ArcSinh[z] == (Pi*Sqrt[-z^(-2)]*z)/2 + Sqrt[1 + z^2]/(z*(1 + Inactive[ContinuedFractionK][-(k^2*(1 + z^(-2))), 1 + 2*k, {k, 1, Infinity}])), Element[z, Complexes] && Im[z] != 0]

(* {"ArcSinh", 6}*)
ConditionalExpression[ArcSinh[z] == (I/2)*Pi - (I*Sqrt[1 + z^2])/((-I)*z + Inactive[ContinuedFractionK][k^2*(1 + z^2), (-I)*(1 + 2*k)*z, {k, 1, Infinity}]), Element[z, Complexes] && Im[z] > 0]

(* {"ArcSinh", 7}*)
ConditionalExpression[ArcSinh[z] == -(Pi*Sqrt[-z^2])/(2*z) - (z*Sqrt[1 + z^2])/(1 + Inactive[ContinuedFractionK][(((-1)^k - k)*k*(1 + z^2))/(-1 + 4*k^2), 1, {k, 1, Infinity}]), Element[z, Complexes] && Im[z] != 0]

(* {"ArcSinh", 8}*)
ConditionalExpression[ArcSinh[z] == (z*Sqrt[1 + z^2])/(1 + Inactive[ContinuedFractionK][((1 - (-1)^k)*(1 + k)*z^2)/2 + ((1 + (-1)^k)*k*(1 + z^2))/2, 1, {k, 1, Infinity}]), Element[z, Complexes] && Im[z] != 0]

(* {"ArcSinh", 9}*)
ConditionalExpression[ArcSinh[z] == z/(1 + Inactive[ContinuedFractionK][((1 - 2*k)^2*z^2)/(2*k*(1 + 2*k)), 1 - ((1 - 2*k)^2*z^2)/(2*k*(1 + 2*k)), {k, 1, Infinity}]), Element[z, Complexes] && Im[z] != 0 && Abs[z] < 1]

(* {"ArcSinh", 10}*)
ConditionalExpression[I*ArcSin[1 - I*z] == (I/2)*Pi - (I*Sqrt[2]*Sqrt[I*z])/(1 + Inactive[ContinuedFractionK][((-I/4)*(1 - 2*k)^2*z)/(k*(1 + 2*k)), 1 + ((I/4)*(1 - 2*k)^2*z)/(k*(1 + 2*k)), {k, 1, Infinity}]), Element[z, Complexes] && Im[z] != 0 && Abs[z] < 1]

(* {"ArcSinh", 11}*)
ConditionalExpression[(-I)*ArcSin[1 + I*z] == (-I/2)*Pi + (I*Sqrt[2]*Sqrt[(-I)*z])/(1 + Inactive[ContinuedFractionK][((I/4)*(1 - 2*k)^2*z)/(k*(1 + 2*k)), 1 - ((I/4)*(1 - 2*k)^2*z)/(k*(1 + 2*k)), {k, 1, Infinity}]), Element[z, Complexes] && Im[z] != 0 && Abs[z] < 1]

(* {"ArcSinh", 12}*)
ConditionalExpression[ArcSinh[z] == (z*(Log[4*z^2] + 1/(2*z^2*(1 + Inactive[ContinuedFractionK][(k*(1 + 2*k))/(2*(1 + k)^2*z^2), 1 - (k*(1 + 2*k))/(2*(1 + k)^2*z^2), {k, 1, Infinity}]))))/(2*Sqrt[z^2]), Element[z, Complexes] && Im[z] != 0 && Abs[z] > 1]

(* {"ArcSinhCompound", 1}*)
ConditionalExpression[ArcSinh[z]^2 == z^2/(1 + Inactive[ContinuedFractionK][(2*k^2*z^2)/((1 + k)*(1 + 2*k)), 1 - (2*k^2*z^2)/((1 + k)*(1 + 2*k)), {k, 1, Infinity}]), Element[z, Complexes] && Im[z] != 0 && Abs[z] < 1]

(* {"ArcTan", 1}*)
ConditionalExpression[ArcTan[z] == z/(1 + Inactive[ContinuedFractionK][k^2*z^2, 1 + 2*k, {k, 1, Infinity}]), Element[z, Complexes] &&  !(Element[z, Reals] && (Inequality[-Infinity, Less, I*z, LessEqual, -1] || Inequality[1, LessEqual, I*z, Less, Infinity]))]

(* {"ArcTan", 2}*)
ConditionalExpression[ArcTan[z] == z - z^3/(3 + Inactive[ContinuedFractionK][(1 - (-1)^k + k)^2*z^2, 3 + 2*k, {k, 1, Infinity}]), Element[z, Complexes] &&  !(Element[z, Reals] && (Inequality[-Infinity, Less, I*z, LessEqual, -1] || Inequality[1, LessEqual, I*z, Less, Infinity]))]

(* {"ArcTan", 3}*)
ConditionalExpression[ArcTan[z] == z/(1 + Inactive[ContinuedFractionK][(k^2*z^2)/(-1 + 4*k^2), 1, {k, 1, Infinity}]), Element[z, Complexes] &&  !(Element[z, Reals] && (Inequality[-Infinity, Less, I*z, LessEqual, -1] || Inequality[1, LessEqual, I*z, Less, Infinity]))]

(* {"ArcTan", 4}*)
ConditionalExpression[ArcTan[z] == z/((1 + z^2)*(1 + Inactive[ContinuedFractionK][-((k*(-(-1)^k + k)*z^2)/((-1 + 4*k^2)*(1 + z^2))), 1, {k, 1, Infinity}])), Element[z, Complexes] &&  !(Element[z, Reals] && (Inequality[-Infinity, Less, I*z, LessEqual, -1] || Inequality[1, LessEqual, I*z, Less, Infinity]))]

(* {"ArcTan", 5}*)
ConditionalExpression[ArcTan[z] == z/(1 + Inactive[ContinuedFractionK][(-1 + 2*k)^2*z^2, 1 + 2*k - (-1 + 2*k)*z^2, {k, 1, Infinity}]), Element[z, Complexes] && Abs[z] < 1]

(* {"ArcTan", 6}*)
ConditionalExpression[ArcTan[z] == z/(1 + z^2 + Inactive[ContinuedFractionK][2*z^2*(1 - 2*Floor[(1 + k)/2])*Floor[(1 + k)/2], (1 + 2*k)*(1 + ((1 + (-1)^k)*z^2)/2), {k, 1, Infinity}]), Element[z, Complexes] &&  !(Element[z, Reals] && (Inequality[-Infinity, Less, I*z, LessEqual, -1] || Inequality[1, LessEqual, I*z, Less, Infinity]))]

(* {"ArcTan", 7}*)
ConditionalExpression[ArcTan[z] == z/(2*(1/2 + Inactive[ContinuedFractionK][((-1 + 2*k)^2*z^2)/4, (1 + 2*k)/2 - ((-1 + 2*k)*z^2)/2, {k, 1, Infinity}])), Element[z, Complexes] && Abs[z] < 1]

(* {"ArcTan", 8}*)
ConditionalExpression[ArcTan[z] == z/(2*((1 + z^2)/2 + Inactive[ContinuedFractionK][(1/2 - k)*k*z^2*(1 + z^2), 1/2 + k + ((1 + 4*k)*z^2)/2, {k, 1, Infinity}])), Element[z, Complexes] && Abs[Im[z]] < 1/Sqrt[2]]

(* {"ArcTan", 9}*)
ConditionalExpression[ArcTan[z] == z/(1 + Inactive[ContinuedFractionK][((1 - (-1)^k)*k*z^2)/2 + ((1 + (-1)^k)*k*(1 + z^2))/2, 1, {k, 1, Infinity}]), Element[z, Complexes] && Abs[Im[z]] < 1/Sqrt[2]]

(* {"ArcTan", 10}*)
ConditionalExpression[ArcTan[z] == z/((1 + Sqrt[1 + z^2])/2 + Inactive[ContinuedFractionK][(1/2 + k)^2*z^2, 2 + 2*k + Sqrt[1 + z^2], {k, 0, Infinity}]), Element[z, Complexes] && Abs[Im[z]] < 1/Sqrt[2]]

(* {"ArcTan", 11}*)
ConditionalExpression[ArcTan[x/y] == x/(y + Inactive[ContinuedFractionK][k^2*x^2, (1 + 2*k)*y, {k, 1, Infinity}]), Element[x | y, Complexes] && Abs[Im[x/y]] < 1/Sqrt[2]]

(* {"ArcTan", 12}*)
ConditionalExpression[ArcTan[x/y] == (x*y)/(y^2 + Inactive[ContinuedFractionK][(-1 + 2*k)^2*x^2*y^2, -((-1 + 2*k)*x^2) + (1 + 2*k)*y^2, {k, 1, Infinity}]), Element[x | y, Complexes] && Abs[Im[x/y]] < 1/Sqrt[2]]

(* {"ArcTan", 13}*)
ConditionalExpression[ArcTan[z] == z/(1 + Inactive[ContinuedFractionK][((-1 + 2*k)*z^2)/(1 + 2*k), 1 - ((-1 + 2*k)*z^2)/(1 + 2*k), {k, 1, Infinity}]), Element[z, Complexes] && Abs[z] < 1]

(* {"ArcTan", 14}*)
ConditionalExpression[I*ArcTanh[1 - I*z] == (I/2)*(Log[2] - Log[I*z] - ((I/2)*z)/(1 + Inactive[ContinuedFractionK][((-I/2)*k*z)/(1 + k), 1 + ((I/2)*k*z)/(1 + k), {k, 1, Infinity}])), Element[z, Complexes] && Abs[z] < 1]

(* {"ArcTan", 15}*)
ConditionalExpression[(-I)*ArcTanh[1 + I*z] == (I/2)*(-Log[2] + Log[(-I)*z] - ((I/2)*z)/(1 + Inactive[ContinuedFractionK][((I/2)*k*z)/(1 + k), 1 - ((I/2)*k*z)/(1 + k), {k, 1, Infinity}])), Element[z, Complexes] && Abs[z] < 1]

(* {"ArcTan", 16}*)
ConditionalExpression[ArcTan[z] == (Pi*z)/(2*Sqrt[z^2]) - 1/(z*(1 + Inactive[ContinuedFractionK][(-1 + 2*k)/((1 + 2*k)*z^2), 1 - (-1 + 2*k)/((1 + 2*k)*z^2), {k, 1, Infinity}])), Element[z, Complexes] && Abs[z] > 1]

(* {"ArcTanh", 1}*)
ConditionalExpression[ArcTanh[z] == z/(1 + Inactive[ContinuedFractionK][-(k^2*z^2), 1 + 2*k, {k, 1, Infinity}]), Element[z, Complexes] &&  !(Element[z, Reals] && (Inequality[-Infinity, Less, z, LessEqual, -1] || Inequality[1, LessEqual, z, Less, Infinity]))]

(* {"ArcTanh", 2}*)
ConditionalExpression[ArcTanh[z] == z + z^3/(3 + Inactive[ContinuedFractionK][-((1 - (-1)^k + k)^2*z^2), 3 + 2*k, {k, 1, Infinity}]), Element[z, Complexes] &&  !(Element[z, Reals] && (Inequality[-Infinity, Less, z, LessEqual, -1] || Inequality[1, LessEqual, z, Less, Infinity]))]

(* {"ArcTanh", 3}*)
ConditionalExpression[ArcTanh[z] == z/(1 + Inactive[ContinuedFractionK][-((k^2*z^2)/(-1 + 4*k^2)), 1, {k, 1, Infinity}]), Element[z, Complexes] &&  !(Element[z, Reals] && (Inequality[-Infinity, Less, z, LessEqual, -1] || Inequality[1, LessEqual, z, Less, Infinity]))]

(* {"ArcTanh", 4}*)
ConditionalExpression[ArcTanh[z] == z/((1 - z^2)*(1 + Inactive[ContinuedFractionK][(k*(-(-1)^k + k)*z^2)/((-1 + 4*k^2)*(1 - z^2)), 1, {k, 1, Infinity}])), Element[z, Complexes] &&  !(Element[z, Reals] && (Inequality[-Infinity, Less, z, LessEqual, -1] || Inequality[1, LessEqual, z, Less, Infinity]))]

(* {"ArcTanh", 5}*)
ConditionalExpression[ArcTanh[z] == z/(1 + Inactive[ContinuedFractionK][-((-1 + 2*k)^2*z^2), 1 + 2*k + (-1 + 2*k)*z^2, {k, 1, Infinity}]), Element[z, Complexes] && Abs[z] < 1]

(* {"ArcTanh", 6}*)
ConditionalExpression[ArcTanh[z] == z/(1 - z^2 + Inactive[ContinuedFractionK][2*z^2*Floor[(1 + k)/2]*(-1 + 2*Floor[(1 + k)/2]), (1 + 2*k)*(1 - ((1 + (-1)^k)*z^2)/2), {k, 1, Infinity}]), Element[z, Complexes] &&  !(Element[z, Reals] && (Inequality[-Infinity, Less, z, LessEqual, -1] || Inequality[1, LessEqual, z, Less, Infinity]))]

(* {"ArcTanh", 7}*)
ConditionalExpression[ArcTanh[z] == z/(2*(1/2 + Inactive[ContinuedFractionK][-((-1 + 2*k)^2*z^2)/4, (1 + 2*k)/2 + ((-1 + 2*k)*z^2)/2, {k, 1, Infinity}])), Element[z, Complexes] && Abs[z] < 1]

(* {"ArcTanh", 8}*)
ConditionalExpression[ArcTanh[z] == z/(2*((1 - z^2)/2 + Inactive[ContinuedFractionK][(-1/2 + k)*k*z^2*(1 - z^2), 1/2 + k - ((1 + 4*k)*z^2)/2, {k, 1, Infinity}])), Element[z, Complexes] && Abs[Re[z]] < 1/Sqrt[2]]

(* {"ArcTanh", 9}*)
ConditionalExpression[ArcTanh[z] == z/(1 + Inactive[ContinuedFractionK][-((1 - (-1)^k)*k*z^2)/2 + ((1 + (-1)^k)*k*(1 - z^2))/2, 1, {k, 1, Infinity}]), Element[z, Complexes] && Abs[Re[z]] < 1/Sqrt[2]]

(* {"ArcTanh", 10}*)
ConditionalExpression[ArcTanh[z] == z/((1 + Sqrt[1 - z^2])/2 + Inactive[ContinuedFractionK][-((1/2 + k)^2*z^2), 2 + 2*k + Sqrt[1 - z^2], {k, 0, Infinity}]), Element[z, Complexes] && Abs[Re[z]] < 1/Sqrt[2]]

(* {"ArcTanh", 11}*)
ConditionalExpression[ArcTanh[x/y] == x/(y + Inactive[ContinuedFractionK][-(k^2*x^2), (1 + 2*k)*y, {k, 1, Infinity}]), Element[x | y, Complexes] && Abs[Re[x/y]] < 1/Sqrt[2]]

(* {"ArcTanh", 12}*)
ConditionalExpression[ArcTanh[x/y] == (x*y)/(y^2 + Inactive[ContinuedFractionK][-((-1 + 2*k)^2*x^2*y^2), (-1 + 2*k)*x^2 + (1 + 2*k)*y^2, {k, 1, Infinity}]), Element[x | y, Complexes] && Abs[Re[x/y]] < 1/Sqrt[2]]

(* {"ArcTanh", 13}*)
ConditionalExpression[ArcTanh[z] == z/(1 + Inactive[ContinuedFractionK][-(((-1 + 2*k)*z^2)/(1 + 2*k)), 1 + ((-1 + 2*k)*z^2)/(1 + 2*k), {k, 1, Infinity}]), Element[z, Complexes] && Abs[z] < 1]

(* {"ArcTanh", 14}*)
ConditionalExpression[ArcTanh[1 + z] == (Log[2] - Log[-z] + z/(2*(1 + Inactive[ContinuedFractionK][(k*z)/(2*(1 + k)), 1 - (k*z)/(2*(1 + k)), {k, 1, Infinity}])))/2, Element[z, Complexes] && Abs[z] < 1]

(* {"ArcTanh", 15}*)
ConditionalExpression[-ArcTanh[1 - z] == (-Log[2] + Log[z] + z/(2*(1 + Inactive[ContinuedFractionK][-(k*z)/(2*(1 + k)), 1 + (k*z)/(2*(1 + k)), {k, 1, Infinity}])))/2, Element[z, Complexes] && Abs[z] < 1]

(* {"ArcTanh", 16}*)
ConditionalExpression[ArcTanh[z] == (Pi*z)/(2*Sqrt[-z^2]) + 1/(z*(1 + Inactive[ContinuedFractionK][-((-1 + 2*k)/((1 + 2*k)*z^2)), 1 + (-1 + 2*k)/((1 + 2*k)*z^2), {k, 1, Infinity}])), Element[z, Complexes] && Abs[z] > 1]

(* {"BesselI", 1}*)
ConditionalExpression[BesselI[\[Nu], z] == z^\[Nu]/(2^\[Nu]*Gamma[1 + \[Nu]]*(1 + Inactive[ContinuedFractionK][-z^2/(4*k*(k + \[Nu])), 1 + z^2/(4*k*(k + \[Nu])), {k, 1, Infinity}])), Element[\[Nu] | z, Complexes] &&  !(Element[\[Nu], Integers] && \[Nu] <= 0)]

(* {"BesselI", 2}*)
ConditionalExpression[BesselI[-m, z] == z^m/(2^m*m!*(1 + Inactive[ContinuedFractionK][-z^2/(4*k*(k + m)), 1 + z^2/(4*k*(k + m)), {k, 1, Infinity}])), Element[m, Integers] && Element[z, Complexes] && m > 0]

(* {"BesselIRatio", 1}*)
BesselI[1, 2]/BesselI[0, 2] == Inactive[ContinuedFractionK][1, k, {k, 1, Infinity}]

(* {"BesselIRatio", 2}*)
ConditionalExpression[BesselI[\[Nu], z]/BesselI[-1 + \[Nu], z] == z/(2*\[Nu] + Inactive[ContinuedFractionK][z^2, 2*(k + \[Nu]), {k, 1, Infinity}]), Element[\[Nu] | z, Complexes] &&  !(Element[\[Nu], Integers] && \[Nu] <= 0)]

(* {"BesselIRatio", 3}*)
ConditionalExpression[BesselI[1 + \[Nu], z]/BesselI[\[Nu], z] == z/((2 + 2*\[Nu])*(1 + Inactive[ContinuedFractionK][z^2/(4*(k + \[Nu])*(1 + k + \[Nu])), 1, {k, 1, Infinity}])), Element[\[Nu] | z, Complexes] &&  !(Element[\[Nu], Integers] && \[Nu] <= 0)]

(* {"BesselIRatio", 4}*)
ConditionalExpression[BesselI[1 + \[Nu], z]/BesselI[\[Nu], z] == z/(2 + z + 2*\[Nu] + Inactive[ContinuedFractionK][z*(-1 - 2*k - 2*\[Nu]), 2 + k + 2*z + 2*\[Nu], {k, 1, Infinity}]), Element[\[Nu] | z, Complexes] &&  !(Element[\[Nu], Integers] && \[Nu] <= 0)]

(* {"BesselIRatio", 5}*)
ConditionalExpression[BesselI[1 + \[Nu], z]/BesselI[\[Nu], z] == I*Inactive[ContinuedFractionK][-1, ((-2*I)*(k + \[Nu]))/z, {k, 1, Infinity}], Element[\[Nu] | z, Complexes] &&  !(Element[\[Nu], Integers] && \[Nu] <= 0)]

(* {"BesselIRatio", 6}*)
ConditionalExpression[BesselI[\[Nu], 2*Sqrt[z]]/BesselI[1 + \[Nu], 2*Sqrt[z]] == (1 + \[Nu] + Inactive[ContinuedFractionK][z, 1 + k + \[Nu], {k, 1, Infinity}])/Sqrt[z], Element[\[Nu] | z, Complexes] &&  !(Element[\[Nu], Integers] && \[Nu] <= 0)]

(* {"BesselIRatio", 7}*)
ConditionalExpression[Inactive[D][BesselI[\[Nu], z], z]/BesselI[\[Nu], z] == \[Nu]/z + z/(2 + z + 2*\[Nu] + Inactive[ContinuedFractionK][z*(-1 - 2*k - 2*\[Nu]), 2 + k + 2*z + 2*\[Nu], {k, 1, Infinity}]), Element[\[Nu] | z, Complexes] &&  !(Element[\[Nu], Integers] && \[Nu] <= 0)]

(* {"BesselIRatio", 8}*)
ConditionalExpression[Inactive[D][BesselI[\[Nu], z], z]/BesselI[\[Nu], z] == \[Nu]/z + z/((2 + 2*\[Nu])*(1 + Inactive[ContinuedFractionK][z^2/(4*(k + \[Nu])*(1 + k + \[Nu])), 1, {k, 1, Infinity}])), Element[\[Nu] | z, Complexes] &&  !(Element[\[Nu], Integers] && \[Nu] <= 0)]

(* {"BesselJ", 1}*)
ConditionalExpression[BesselJ[\[Nu], z] == z^\[Nu]/(2^\[Nu]*Gamma[1 + \[Nu]]*(1 + Inactive[ContinuedFractionK][z^2/(4*k*(k + \[Nu])), 1 - z^2/(4*k*(k + \[Nu])), {k, 1, Infinity}])), Element[\[Nu] | z, Complexes] &&  !(Element[\[Nu], Integers] && \[Nu] <= 0)]

(* {"BesselJ", 2}*)
ConditionalExpression[BesselJ[-m, z] == (-z)^m/(2^m*m!*(1 + Inactive[ContinuedFractionK][z^2/(4*k*(k + m)), 1 - z^2/(4*k*(k + m)), {k, 1, Infinity}])), Element[m, Integers] && Element[z, Complexes] && m > 0]

(* {"BesselJRatio", 1}*)
ConditionalExpression[BesselJ[\[Nu], z]/BesselJ[-1 + \[Nu], z] == z/(2*\[Nu] + Inactive[ContinuedFractionK][-z^2, 2*(k + \[Nu]), {k, 1, Infinity}]), Element[\[Nu] | z, Complexes] &&  !(Element[\[Nu], Integers] && \[Nu] <= 0)]

(* {"BesselJRatio", 2}*)
ConditionalExpression[BesselJ[1 + \[Nu], z]/BesselJ[\[Nu], z] == z/((2 + 2*\[Nu])*(1 + Inactive[ContinuedFractionK][-z^2/(4*(k + \[Nu])*(1 + k + \[Nu])), 1, {k, 1, Infinity}])), Element[\[Nu] | z, Complexes] &&  !(Element[\[Nu], Integers] && \[Nu] <= 0)]

(* {"BesselJRatio", 3}*)
ConditionalExpression[BesselJ[1 + \[Nu], z]/BesselJ[\[Nu], z] == z/(2 - I*z + 2*\[Nu] + Inactive[ContinuedFractionK][I*z*(1 + 2*k + 2*\[Nu]), 2 + k - (2*I)*z + 2*\[Nu], {k, 1, Infinity}]), Element[\[Nu] | z, Complexes] &&  !(Element[\[Nu], Integers] && \[Nu] <= 0)]

(* {"BesselJRatio", 4}*)
ConditionalExpression[BesselJ[1 + \[Nu], z]/BesselJ[\[Nu], z] == -Inactive[ContinuedFractionK][-1, (2*(k + \[Nu]))/z, {k, 1, Infinity}], Element[\[Nu] | z, Complexes] &&  !(Element[\[Nu], Integers] && \[Nu] <= 0)]

(* {"BesselJRatio", 5}*)
ConditionalExpression[BesselJ[\[Nu], (2*I)*Sqrt[z]]/BesselJ[-1 + \[Nu], (2*I)*Sqrt[z]] == (I*Sqrt[z])/(\[Nu] + Inactive[ContinuedFractionK][z, k + \[Nu], {k, 1, Infinity}]), Element[\[Nu] | z, Complexes] &&  !(Element[\[Nu], Integers] && \[Nu] <= 0)]

(* {"BesselJRatio", 6}*)
ConditionalExpression[Inactive[D][BesselJ[\[Nu], z], z]/BesselJ[\[Nu], z] == \[Nu]/z - z/(2 - I*z + 2*\[Nu] + Inactive[ContinuedFractionK][I*z*(1 + 2*k + 2*\[Nu]), 2 + k - (2*I)*z + 2*\[Nu], {k, 1, Infinity}]), Element[\[Nu] | z, Complexes] &&  !(Element[\[Nu], Integers] && \[Nu] <= 0)]

(* {"BesselJRatio", 7}*)
ConditionalExpression[Inactive[D][BesselJ[\[Nu], z], z]/BesselJ[\[Nu], z] == \[Nu]/z - z/((2 + 2*\[Nu])*(1 + Inactive[ContinuedFractionK][-z^2/(4*(k + \[Nu])*(1 + k + \[Nu])), 1, {k, 1, Infinity}])), Element[\[Nu] | z, Complexes] &&  !(Element[\[Nu], Integers] && \[Nu] <= 0)]

(* {"BesselK", 1}*)
ConditionalExpression[BesselK[\[Nu], z] == (Pi*Csc[Pi*\[Nu]]*(2^\[Nu]/(z^\[Nu]*Gamma[1 - \[Nu]]*(1 + Inactive[ContinuedFractionK][-z^2/(4*k*(k - \[Nu])), 1 + z^2/(4*k*(k - \[Nu])), {k, 1, Infinity}])) - z^\[Nu]/(2^\[Nu]*Gamma[1 + \[Nu]]*(1 + Inactive[ContinuedFractionK][-z^2/(4*k*(k + \[Nu])), 1 + z^2/(4*k*(k + \[Nu])), {k, 1, Infinity}]))))/2, Element[\[Nu] | z, Complexes] && NotElement[\[Nu], Integers]]

(* {"BesselK", 2}*)
ConditionalExpression[BesselK[0, z] == -(Log[z/2]/(1 + Inactive[ContinuedFractionK][-z^2/(4*k^2), 1 + z^2/(4*k^2), {k, 1, Infinity}])) - EulerGamma/(1 + Inactive[ContinuedFractionK][-(z^2*PolyGamma[0, 1 + k])/(4*k^2*PolyGamma[0, k]), 1 + (z^2*PolyGamma[0, 1 + k])/(4*k^2*PolyGamma[0, k]), {k, 1, Infinity}]), Element[z, Complexes]]

(* {"BesselK", 3}*)
ConditionalExpression[BesselK[m, z] == (2^(-1 + m)*(-1 + m)!)/(z^m*(1 + Inactive[ContinuedFractionK][-z^2/(4*k*(k - m)), 1 + z^2/(4*k*(k - m)), {k, 1, -1 + m}])) + ((-1)^(-1 + m)*z^m*Log[z/2])/(2^m*m!*(1 + Inactive[ContinuedFractionK][-z^2/(4*k*(k + m)), 1 + z^2/(4*k*(k + m)), {k, 1, Infinity}])) + ((-1)^m*2^(-1 - m)*z^m*(-EulerGamma + PolyGamma[0, 1 + m]))/(m!*(1 + Inactive[ContinuedFractionK][-(z^2*(PolyGamma[0, 1 + k] + PolyGamma[0, 1 + k + m]))/(4*k*(k + m)*(PolyGamma[0, k] + PolyGamma[0, k + m])), 1 + (z^2*(PolyGamma[0, 1 + k] + PolyGamma[0, 1 + k + m]))/(4*k*(k + m)*(PolyGamma[0, k] + PolyGamma[0, k + m])), {k, 1, Infinity}])), Element[m, Integers] && Element[z, Complexes] && m >= 1]

(* {"BesselKRatio", 1}*)
ConditionalExpression[BesselK[1 + \[Nu], z]/BesselK[\[Nu], z] == (1 - (1 + 2*\[Nu])/(2*z*(1 + Inactive[ContinuedFractionK][(((1 + (-1)^k)*(-1 + k - 2*\[Nu]))/4 + ((1 - (-1)^k)*(1 + k/2 + \[Nu]))/2)/(2*z), 1, {k, 1, Infinity}])))^(-1), Element[\[Nu] | z, Complexes]]

(* {"BesselKRatio", 2}*)
ConditionalExpression[BesselK[1 + \[Nu], z]/BesselK[\[Nu], z] == 1 + (1 + 2*\[Nu])/(2*z) + Inactive[ContinuedFractionK][-(-1 + 2*k)^2/4 + \[Nu]^2, 2*(k + z), {k, 1, Infinity}]/z, Element[\[Nu] | z, Complexes]]

(* {"BesselKRatio", 3}*)
ConditionalExpression[Inactive[D][BesselK[\[Nu], z], z]/BesselK[\[Nu], z] == \[Nu]/z - (1 - (1 + 2*\[Nu])/(2*z*(1 + Inactive[ContinuedFractionK][(((1 + (-1)^k)*(-1 + k - 2*\[Nu]))/4 + ((1 - (-1)^k)*(1 + k/2 + \[Nu]))/2)/(2*z), 1, {k, 1, Infinity}])))^(-1), Element[\[Nu] | z, Complexes]]

(* {"BesselKRatio", 4}*)
ConditionalExpression[Inactive[D][BesselK[\[Nu], z], z]/BesselK[\[Nu], z] == -1 - 1/(2*z) - Inactive[ContinuedFractionK][-(-1 + 2*k)^2/4 + \[Nu]^2, 2*(k + z), {k, 1, Infinity}]/z, Element[\[Nu] | z, Complexes]]

(* {"BesselYRatio", 1}*)
ConditionalExpression[BesselY[\[Nu], z] == Csc[Pi*\[Nu]]*(-(2^\[Nu]/(z^\[Nu]*Gamma[1 - \[Nu]]*(1 + Inactive[ContinuedFractionK][z^2/(4*k*(k - \[Nu])), 1 - z^2/(4*k*(k - \[Nu])), {k, 1, Infinity}]))) + (z^\[Nu]*Cos[Pi*\[Nu]])/(2^\[Nu]*Gamma[1 + \[Nu]]*(1 + Inactive[ContinuedFractionK][z^2/(4*k*(k + \[Nu])), 1 - z^2/(4*k*(k + \[Nu])), {k, 1, Infinity}]))), Element[\[Nu] | z, Complexes] && NotElement[\[Nu], Integers]]

(* {"BesselYRatio", 2}*)
ConditionalExpression[BesselY[0, z] == (2*Log[z/2])/(Pi*(1 + Inactive[ContinuedFractionK][z^2/(4*k^2), 1 - z^2/(4*k^2), {k, 1, Infinity}])) + (2*EulerGamma)/(Pi*(1 + Inactive[ContinuedFractionK][(z^2*PolyGamma[0, 1 + k])/(4*k^2*PolyGamma[0, k]), 1 - (z^2*PolyGamma[0, 1 + k])/(4*k^2*PolyGamma[0, k]), {k, 1, Infinity}])), Element[z, Complexes]]

(* {"BesselYRatio", 3}*)
ConditionalExpression[BesselY[m, z] == (2^(1 - m)*z^m*Log[z/2])/(Pi*m!*(1 + Inactive[ContinuedFractionK][z^2/(4*k*(k + m)), 1 - z^2/(4*k*(k + m)), {k, 1, Infinity}])) - (2^m*(-1 + m)!)/(Pi*z^m*(1 + Inactive[ContinuedFractionK][-(z^2*(-1 + k)!*(-1 - k + m)!)/(4*k!*(-k + m)!), 1 + (z^2*(-1 + k)!*(-1 - k + m)!)/(4*k!*(-k + m)!), {k, 1, -1 + m}])) - (z^m*(-EulerGamma + PolyGamma[0, 1 + m]))/(2^m*Pi*m!*(1 + Inactive[ContinuedFractionK][(z^2*(PolyGamma[0, 1 + k] + PolyGamma[0, 1 + k + m]))/(4*k*(k + m)*(PolyGamma[0, k] + PolyGamma[0, k + m])), 1 - (z^2*(PolyGamma[0, 1 + k] + PolyGamma[0, 1 + k + m]))/(4*k*(k + m)*(PolyGamma[0, k] + PolyGamma[0, k + m])), {k, 1, Infinity}])), Element[m, Integers] && Element[z, Complexes] && m >= 1]

(* {"Beta", 1}*)
ConditionalExpression[Beta[z, a, b] == ((1 - z)^b*z^a)/(a*(1 + Inactive[ContinuedFractionK][-((1 - (-1)^k)*(a + (-1 + k)/2)*(a + b + (-1 + k)/2)*z)/(2*(-1 + a + k)*(a + k)) + ((1 + (-1)^k)*(2*b - k)*k*z)/(8*(-1 + a + k)*(a + k)), 1, {k, 1, Infinity}])), Element[z | a | b, Complexes] && Abs[Arg[1 - z]] < Pi]

(* {"Beta", 2}*)
ConditionalExpression[Beta[z, a, b] == ((1 - z)^b*z^a)/(a + (1 - a - b)*z + Inactive[ContinuedFractionK][(b - k)*k*z, a + k - (-1 + a + b - k)*z, {k, 1, Infinity}]), Element[z | a | b, Complexes] && Abs[Arg[1 - z]] < Pi && Re[z] < 1]

(* {"Beta", 3}*)
ConditionalExpression[Beta[z, a, b] == ((1 - z)^b*z^a)/(a - (a + b)*z + Inactive[ContinuedFractionK][k*(-1 + a + b + k)*(1 - z)*z, a + k - (a + b + 2*k)*z, {k, 1, Infinity}]), Element[z | a | b, Complexes] && Abs[Arg[1 - z]] < Pi]

(* {"Beta", 4}*)
ConditionalExpression[Beta[z, a, b] == ((1 - z)^b*z^a)/(a - (a*(a + b)*z)/(1 + a) + Inactive[ContinuedFractionK][((b - k)*k*(-1 + a + k)*(-1 + a + b + k)*z^2)/(-1 + a + 2*k)^2, a + 2*k + (((b - k)*k)/(-1 + a + 2*k) - ((a + k)*(a + b + k))/(1 + a + 2*k))*z, {k, 1, Infinity}]), Element[z | a | b, Complexes] && Abs[Arg[1 - z]] < Pi]

(* {"Beta", 5}*)
ConditionalExpression[Beta[z, a, b] == z^a/(a*(1 + Inactive[ContinuedFractionK][((b - k)*(-1 + a + k)*z)/(k*(a + k)), 1 - ((b - k)*(-1 + a + k)*z)/(k*(a + k)), {k, 1, Infinity}])), Element[z | a | b, Complexes] && Abs[z] < 1]

(* {"Beta", 6}*)
ConditionalExpression[Beta[1 - z, a, b] == Beta[a, b] - ((1 - z)^a*z^b)/(b*(1 + Inactive[ContinuedFractionK][-(((-1 + a + b + k)*z)/(b + k)), 1 + ((-1 + a + b + k)*z)/(b + k), {k, 1, Infinity}])), Element[z | a | b, Complexes] &&  !(Element[b, Integers] && -b >= 0) && Abs[z] < 1]

(* {"Beta", 7}*)
ConditionalExpression[Beta[1 - z, a, 0] == -Log[z] + ((1 - z)^a*(-EulerGamma - PolyGamma[0, a]))/(1 + Inactive[ContinuedFractionK][((-1 + a + k)*z*(-PolyGamma[0, 1 + k] + PolyGamma[0, a + k]))/(k*(PolyGamma[0, k] - PolyGamma[0, -1 + a + k])), 1 - ((-1 + a + k)*z*(-PolyGamma[0, 1 + k] + PolyGamma[0, a + k]))/(k*(PolyGamma[0, k] - PolyGamma[0, -1 + a + k])), {k, 1, Infinity}]), Element[z | a, Complexes] && Abs[z] < 1]

(* {"Beta", 8}*)
ConditionalExpression[Beta[1 - z, a, -m] == ((-1)^(-1 + m)*Gamma[a]*Log[z])/(m!*Gamma[a - m]) + (1 - z)^a/(m*z^m*(1 + Inactive[ContinuedFractionK][-(((-1 + a + k - m)*z)/(k - m)), 1 + ((-1 + a + k - m)*z)/(k - m), {k, 1, -1 + m}])) + ((1 - z)^a*Pochhammer[1 - a, m]*(-EulerGamma - PolyGamma[0, a]))/(m!*(1 + Inactive[ContinuedFractionK][((-1 + a + k)*z*(-PolyGamma[0, 1 + k] + PolyGamma[0, a + k]))/(k*(PolyGamma[0, k] - PolyGamma[0, -1 + a + k])), 1 - ((-1 + a + k)*z*(-PolyGamma[0, 1 + k] + PolyGamma[0, a + k]))/(k*(PolyGamma[0, k] - PolyGamma[0, -1 + a + k])), {k, 1, Infinity}])), Element[m, Integers] && Element[z | a, Complexes] && m > 0 && Abs[z] < 1]

(* {"Beta", 9}*)
ConditionalExpression[Beta[z, a, b] == (z^a*Gamma[a]*Gamma[1 - a - b])/((-z)^a*Gamma[1 - b]) + ((-z)^(-1 + b)*z^a)/((-1 + a + b)*(1 + Inactive[ContinuedFractionK][((b - k)*(a + b - k))/((-1 + a + b - k)*k*z), 1 - ((b - k)*(a + b - k))/((-1 + a + b - k)*k*z), {k, 1, Infinity}])), Element[z | a | b, Complexes] &&  !(Element[a + b, Integers] && a + b > 0) && Abs[z] > 1]

(* {"Beta", 10}*)
ConditionalExpression[Beta[z, a, 1 - a] == (z^a*(-EulerGamma + Log[-z] - PolyGamma[0, a]))/(-z)^a - (a*z^(-1 + a))/((-z)^a*(1 + Inactive[ContinuedFractionK][-((k*(a + k))/((1 + k)^2*z)), 1 + (k*(a + k))/((1 + k)^2*z), {k, 1, Infinity}])), Element[z | a, Complexes] && Abs[z] > 1]

(* {"Beta", 11}*)
ConditionalExpression[Beta[z, a, 1 - a + m] == (z^a*Pochhammer[1 - a, m]*(Log[-z] - PolyGamma[0, a] + PolyGamma[0, 1 + m]))/((-z)^a*m!) + ((-z)^(-a + m)*z^a)/(m*(1 + Inactive[ContinuedFractionK][((-1 + a + k - m)*(1 - k + m))/(k*(k - m)*z), 1 - ((-1 + a + k - m)*(1 - k + m))/(k*(k - m)*z), {k, 1, -1 + m}])) + (z^(-1 + a)*Pochhammer[-a, 1 + m])/((-z)^a*(1 + m)!*(1 + Inactive[ContinuedFractionK][-((k*(a + k))/((1 + k)*(1 + k + m)*z)), 1 + (k*(a + k))/((1 + k)*(1 + k + m)*z), {k, 1, Infinity}])), Element[m, Integers] && Element[z | a, Complexes] && m > 0 && Abs[z] > 1]

(* {"BetaRegularized", 1}*)
ConditionalExpression[BetaRegularized[z, a, b] == ((1 - z)^b*z^a)/(a*Beta[a, b]*(1 + Inactive[ContinuedFractionK][-((1 - (-1)^k)*(a + (-1 + k)/2)*(a + b + (-1 + k)/2)*z)/(2*(-1 + a + k)*(a + k)) + ((1 + (-1)^k)*(2*b - k)*k*z)/(8*(-1 + a + k)*(a + k)), 1, {k, 1, Infinity}])), Element[z | a | b, Complexes] && Abs[Arg[1 - z]] < Pi]

(* {"BetaRegularized", 2}*)
ConditionalExpression[BetaRegularized[z, a, b] == ((1 - z)^b*z^a)/(Beta[a, b]*(a + (1 - a - b)*z + Inactive[ContinuedFractionK][(b - k)*k*z, a + k - (-1 + a + b - k)*z, {k, 1, Infinity}])), Element[z | a | b, Complexes] && Abs[Arg[1 - z]] < Pi]

(* {"BetaRegularized", 3}*)
ConditionalExpression[BetaRegularized[z, a, b] == ((1 - z)^b*z^a)/(Beta[a, b]*(a - (a + b)*z + Inactive[ContinuedFractionK][k*(-1 + a + b + k)*(1 - z)*z, a + k - (a + b + 2*k)*z, {k, 1, Infinity}])), Element[z | a | b, Complexes] && Abs[Arg[1 - z]] < Pi]

(* {"BetaRegularized", 4}*)
ConditionalExpression[BetaRegularized[z, a, b] == ((1 - z)^b*z^a)/(Beta[a, b]*(a - (a*(a + b)*z)/(1 + a) + Inactive[ContinuedFractionK][((b - k)*k*(-1 + a + k)*(-1 + a + b + k)*z^2)/(-1 + a + 2*k)^2, a + 2*k + (((b - k)*k)/(-1 + a + 2*k) - ((a + k)*(a + b + k))/(1 + a + 2*k))*z, {k, 1, Infinity}])), Element[z | a | b, Complexes] && Abs[Arg[1 - z]] < Pi]

(* {"BetaRegularized", 5}*)
ConditionalExpression[BetaRegularized[z, a, b] == z^a/(a*Beta[a, b]*(1 + Inactive[ContinuedFractionK][((b - k)*(-1 + a + k)*z)/(k*(a + k)), 1 - ((b - k)*(-1 + a + k)*z)/(k*(a + k)), {k, 1, Infinity}])), Element[z | a | b, Complexes] && Abs[z] < 1]

(* {"BetaRegularized", 6}*)
ConditionalExpression[BetaRegularized[1 - z, a, b] == 1 - ((1 - z)^a*z^b)/(b*Beta[a, b]*(1 + Inactive[ContinuedFractionK][-(((-1 + a + b + k)*z)/(b + k)), 1 + ((-1 + a + b + k)*z)/(b + k), {k, 1, Infinity}])), Element[z | a | b, Complexes] &&  !(Element[b, Integers] && -b >= 0) && Abs[z] < 1]

(* {"BetaRegularized", 7}*)
ConditionalExpression[BetaRegularized[z, a, b] == (z^a*Csc[(a + b)*Pi]*Sin[b*Pi])/(-z)^a + ((-z)^(-1 + b)*z^a)/((-1 + a + b)*Beta[a, b]*(1 + Inactive[ContinuedFractionK][((b - k)*(a + b - k))/((-1 + a + b - k)*k*z), 1 - ((b - k)*(a + b - k))/((-1 + a + b - k)*k*z), {k, 1, Infinity}])), Element[z | a | b, Complexes] &&  !(Element[a + b, Integers] && a + b > 0) && Abs[z] > 1]

(* {"BetaRegularized", 8}*)
ConditionalExpression[BetaRegularized[z, a, 1 - a] == (z^a*(-EulerGamma + Log[-z] - PolyGamma[0, a])*Sin[a*Pi])/(Pi*(-z)^a) - (a*z^(-1 + a)*Sin[a*Pi])/(Pi*(-z)^a*(1 + Inactive[ContinuedFractionK][-((k*(a + k))/((1 + k)^2*z)), 1 + (k*(a + k))/((1 + k)^2*z), {k, 1, Infinity}])), Element[z | a, Complexes] && Abs[z] > 1]

(* {"BetaRegularized", 9}*)
ConditionalExpression[BetaRegularized[z, a, 1 - a + m] == (z^a*(Log[-z] - PolyGamma[0, a] + PolyGamma[0, 1 + m])*Sin[a*Pi])/(Pi*(-z)^a) + ((-z)^(-a + m)*z^a)/(m*Beta[a, 1 - a + m]*(1 + Inactive[ContinuedFractionK][((-1 + a + k - m)*(1 - k + m))/(k*(k - m)*z), 1 - ((-1 + a + k - m)*(1 - k + m))/(k*(k - m)*z), {k, 1, -1 + m}])) - (a*z^(-1 + a)*Sin[a*Pi])/((1 + m)*Pi*(-z)^a*(1 + Inactive[ContinuedFractionK][-((k*(a + k))/((1 + k)*(1 + k + m)*z)), 1 + (k*(a + k))/((1 + k)*(1 + k + m)*z), {k, 1, Infinity}])), Element[m, Integers] && Element[z | a, Complexes] && m > 0 && Abs[z] > 1]

(* {"BetaRegularizedRatio", 1}*)
ConditionalExpression[BetaRegularized[z, 1 + a, b]/BetaRegularized[z, a, b] == ((a + b)*z)/(1 + a + Inactive[ContinuedFractionK][-((1 + (-1)^k)*(a + k/2)*(a + b + k/2)*z)/2 + ((1 - (-1)^k)*(-1 - k)*(-b + (1 + k)/2)*z)/4, 1 + a + k, {k, 1, Infinity}]), Element[z | a | b, Complexes] && Abs[Arg[1 - z]] < Pi]

(* {"BetaRegularizedRatio", 2}*)
ConditionalExpression[BetaRegularized[z, 1 + a, b]/BetaRegularized[z, a, b] == ((a + b)*z)/(1 + a + (a + b)*z + Inactive[ContinuedFractionK][(-a - k)*(a + b + k)*z, 1 + a + k + (a + b + k)*z, {k, 1, Infinity}]), Element[z | a | b, Complexes] && Abs[z] < 1]

(* {"Catalan", 1}*)
Catalan == 1 - 1/(2*(3 + Inactive[ContinuedFractionK][4*Floor[(1 + k)/2]^2, 2 + (-1)^k, {k, 1, Infinity}]))

(* {"Catalan", 2}*)
Catalan == 1/2 + (1 + 2*Inactive[ContinuedFractionK][((-1 + (-1)^k)^2*(1 + k)^2 + 2*(1 + (-1)^k)*k*(2 + k))/16, 1/2, {k, 1, Infinity}])^(-1)

(* {"Catalan", 3}*)
Catalan == 13/(2*(7 + Inactive[ContinuedFractionK][16*(1 - 2*k)^4*k^4*(29 - 48*k + 20*k^2)*(13 + 32*k + 20*k^2), 7 + 16*k - 156*k^2 - 384*k^3 + 2064*k^4 + 5632*k^5 + 3520*k^6, {k, 1, Infinity}]))

(* {"Catalan", 4}*)
Catalan == (1 + Inactive[ContinuedFractionK][(1 - 2*k)^2/(1 + 2*k)^2, (8*k)/(1 + 2*k)^2, {k, 1, Infinity}])^(-1)

(* {"ChebyshevT", 1}*)
ConditionalExpression[ChebyshevT[\[Nu], z] == Cos[(Pi*\[Nu])/2]*(1 + (z*\[Nu]*Sin[(Pi*\[Nu])/2])/(Cos[(Pi*\[Nu])/2] + Inactive[ContinuedFractionK][-((4^(-2 + k)*z*\[Nu]^2*Gamma[-1/2 + k/2 - \[Nu]/2]*Gamma[1/2 + k/2 - \[Nu]/2]*Gamma[-1/2 + k/2 + \[Nu]/2]*Gamma[1/2 + k/2 + \[Nu]/2]*Sin[Pi*\[Nu]]^2)/(Pi^2*Gamma[k]*Gamma[2 + k])), -(((-1)^k*2^(-2 + k)*\[Nu]*Gamma[k/2 - \[Nu]/2]*Gamma[k/2 + \[Nu]/2]*Sin[Pi*\[Nu]])/(Pi*Gamma[1 + k])) + ((-1)^k*2^(-1 + k)*z*\[Nu]*Gamma[1/2 + k/2 - \[Nu]/2]*Gamma[1/2 + k/2 + \[Nu]/2]*Sin[Pi*\[Nu]])/(Pi*Gamma[2 + k]), {k, 1, Infinity}])), Element[\[Nu] | z, Complexes] && Abs[z] < 1]

(* {"ChebyshevT", 2}*)
ConditionalExpression[ChebyshevT[\[Nu], 1 - 2*z] == (1 + Inactive[ContinuedFractionK][(-2*z*(-1 + k - \[Nu])*(-1 + k + \[Nu]))/(k*(-1 + 2*k)), 1 + (2*z*(-1 + k - \[Nu])*(-1 + k + \[Nu]))/(k*(-1 + 2*k)), {k, 1, Infinity}])^(-1), Element[\[Nu] | z, Complexes] && Abs[z] < 1]

(* {"ChebyshevT", 3}*)
ConditionalExpression[ChebyshevT[\[Nu], -1 + 2*z] == Cos[Pi*\[Nu]]/(1 + Inactive[ContinuedFractionK][(-2*z*(-1 + k - \[Nu])*(-1 + k + \[Nu]))/(k*(-1 + 2*k)), 1 + (2*z*(-1 + k - \[Nu])*(-1 + k + \[Nu]))/(k*(-1 + 2*k)), {k, 1, Infinity}]) + (2*Sqrt[z]*\[Nu]*Sin[Pi*\[Nu]])/(1 + Inactive[ContinuedFractionK][(z*(-1 - 4*(-1 + k)*k + 4*\[Nu]^2))/(2*k*(1 + 2*k)), 1 - (z*(-1 - 4*(-1 + k)*k + 4*\[Nu]^2))/(2*k*(1 + 2*k)), {k, 1, Infinity}]), Element[\[Nu] | z, Complexes] && Abs[z] < 1]

(* {"ChebyshevT", 4}*)
ConditionalExpression[ChebyshevT[\[Nu], z] == (2^(-1 + \[Nu])*z^\[Nu])/(1 + Inactive[ContinuedFractionK][-((-2 + 2*k - \[Nu])*(-1 + 2*k - \[Nu]))/(4*k*z^2*(k - \[Nu])), 1 + ((-2 + 2*k - \[Nu])*(-1 + 2*k - \[Nu]))/(4*k*z^2*(k - \[Nu])), {k, 1, Infinity}]) + 2^(-1 - \[Nu])/(z^\[Nu]*(1 + Inactive[ContinuedFractionK][-((-2 + 2*k + \[Nu])*(-1 + 2*k + \[Nu]))/(4*k*z^2*(k + \[Nu])), 1 + ((-2 + 2*k + \[Nu])*(-1 + 2*k + \[Nu]))/(4*k*z^2*(k + \[Nu])), {k, 1, Infinity}])), Element[\[Nu] | z, Complexes] && Abs[z] > 1]

(* {"ChebyshevT", 5}*)
ConditionalExpression[ChebyshevT[\[Nu], z] == (2^(-1 + \[Nu])*z^\[Nu])/(1 + Inactive[ContinuedFractionK][-((-2 + 2*k - \[Nu])*(-1 + 2*k - \[Nu]))/(4*k*z^2*(k - \[Nu])), 1 + ((-2 + 2*k - \[Nu])*(-1 + 2*k - \[Nu]))/(4*k*z^2*(k - \[Nu])), {k, 1, Floor[\[Nu]/2]}]), Element[\[Nu], Integers] && \[Nu] > 0]

(* {"ChebyshevU", 1}*)
ConditionalExpression[ChebyshevU[\[Nu], z] == Cos[(Pi*\[Nu])/2]*(1 + (z*(1 + \[Nu])*Sin[(Pi*\[Nu])/2])/(Cos[(Pi*\[Nu])/2] + Inactive[ContinuedFractionK][-((4^(-1 + k)*z*Gamma[-1/2 + k/2 - \[Nu]/2]*Gamma[1/2 + k/2 - \[Nu]/2]*Gamma[1/2 + k/2 + \[Nu]/2]*Gamma[3/2 + k/2 + \[Nu]/2]*Sin[Pi*\[Nu]]^2)/(Pi^2*Gamma[k]*Gamma[2 + k])), -(((-1)^k*2^(-1 + k)*Gamma[k/2 - \[Nu]/2]*Gamma[1 + k/2 + \[Nu]/2]*Sin[Pi*\[Nu]])/(Pi*Gamma[1 + k])) + ((-2)^k*z*Gamma[1/2 + k/2 - \[Nu]/2]*Gamma[3/2 + k/2 + \[Nu]/2]*Sin[Pi*\[Nu]])/(Pi*Gamma[2 + k]), {k, 1, Infinity}])), Element[\[Nu] | z, Complexes] && Abs[z] < 1]

(* {"ChebyshevU", 2}*)
ConditionalExpression[ChebyshevU[\[Nu], 1 - 2*z] == (1 + \[Nu])/(1 + Inactive[ContinuedFractionK][(-2*z*(-1 + k - \[Nu])*(1 + k + \[Nu]))/(k*(1 + 2*k)), 1 + (2*z*(-1 + k - \[Nu])*(1 + k + \[Nu]))/(k*(1 + 2*k)), {k, 1, Infinity}]), Element[\[Nu] | z, Complexes] && Abs[z] < 1]

(* {"ChebyshevU", 3}*)
ConditionalExpression[ChebyshevU[\[Nu], -1 + 2*z] == ((1 + \[Nu])*Cos[Pi*\[Nu]])/(1 + Inactive[ContinuedFractionK][(-2*z*(-1 + k - \[Nu])*(1 + k + \[Nu]))/(k*(1 + 2*k)), 1 + (2*z*(-1 + k - \[Nu])*(1 + k + \[Nu]))/(k*(1 + 2*k)), {k, 1, Infinity}]) - Sin[Pi*\[Nu]]/(2*Sqrt[z]*(1 + Inactive[ContinuedFractionK][(z*(3 - 4*(-1 + k)*k + 4*\[Nu]*(2 + \[Nu])))/(2*k*(-1 + 2*k)), 1 - (z*(3 - 4*(-1 + k)*k + 4*\[Nu]*(2 + \[Nu])))/(2*k*(-1 + 2*k)), {k, 1, Infinity}])), Element[\[Nu] | z, Complexes] && Abs[z] < 1]

(* {"ChebyshevU", 4}*)
ConditionalExpression[ChebyshevU[\[Nu], z] == (2^\[Nu]*z^\[Nu])/(1 + Inactive[ContinuedFractionK][-((-2 + 2*k - \[Nu])*(-1 + 2*k - \[Nu]))/(4*k*z^2*(-1 + k - \[Nu])), 1 + ((-2 + 2*k - \[Nu])*(-1 + 2*k - \[Nu]))/(4*k*z^2*(-1 + k - \[Nu])), {k, 1, Infinity}]) - (2^(-2 - \[Nu])*z^(-2 - \[Nu]))/(1 + Inactive[ContinuedFractionK][-((2*k + \[Nu])*(1 + 2*k + \[Nu]))/(4*k*z^2*(1 + k + \[Nu])), 1 + ((2*k + \[Nu])*(1 + 2*k + \[Nu]))/(4*k*z^2*(1 + k + \[Nu])), {k, 1, Infinity}]), Element[\[Nu] | z, Complexes] && Abs[z] > 1]

(* {"ChebyshevU", 5}*)
ConditionalExpression[ChebyshevU[\[Nu], z] == (2^\[Nu]*z^\[Nu])/(1 + Inactive[ContinuedFractionK][-((-2 + 2*k - \[Nu])*(-1 + 2*k - \[Nu]))/(4*k*z^2*(-1 + k - \[Nu])), 1 + ((-2 + 2*k - \[Nu])*(-1 + 2*k - \[Nu]))/(4*k*z^2*(-1 + k - \[Nu])), {k, 1, Floor[\[Nu]/2]}]), Element[\[Nu], Integers] && \[Nu] > 0]

(* {"Constant/AlternatingConstant", 1}*)
ConditionalExpression[(e*(b + \[Beta]))/(b^2 + e - \[Beta]^2 - (2*e^2)/((b^2 + 2*e - \[Beta]^2)*(1 + Sqrt[((b^2 - \[Beta]^2)*(b^2 + 4*e - \[Beta]^2))/(b^2 + 2*e - \[Beta]^2)^2]))) == Inactive[ContinuedFractionK][e, b + (-1)^k*\[Beta], {k, 1, Infinity}], Element[b | \[Beta] | e, Complexes]]

(* {"Constant/AlternatingConstant", 2}*)
ConditionalExpression[(e*\[Beta]^2)/(e*\[Beta] - \[Beta]^3 + (2*e^2*\[Beta])/((-2*e + \[Beta]^2)*(1 + Sqrt[(\[Beta]^2*(-4*e + \[Beta]^2))/(-2*e + \[Beta]^2)^2]))) == Inactive[ContinuedFractionK][e, (-1)^k*\[Beta], {k, 1, Infinity}], Element[\[Beta] | e, Complexes]]

(* {"ConstantCompound", 1}*)
Sqrt[(E*Pi)/2]*Erfc[1/Sqrt[2]] == (1 + Inactive[ContinuedFractionK][k, 1, {k, 1, Infinity}])^(-1)

(* {"ConstantCompound", 2}*)
Log[2] == (1 + Inactive[ContinuedFractionK][k^2, 1, {k, 1, Infinity}])^(-1)

(* {"ConstantCompound", 3}*)
Log[2] == 2/(2 + Inactive[ContinuedFractionK][Floor[(1 + k)/2], (3 + (-1)^k)/2 + (1 + (-1)^k)*k, {k, 1, Infinity}])

(* {"ConstantCompound", 4}*)
Log[2] == 2/(3 + Inactive[ContinuedFractionK][-k^2, 3*(1 + 2*k), {k, 1, Infinity}])

(* {"ConstantCompound", 5}*)
2^(1/3) == 1 + (3 + Inactive[ContinuedFractionK][(-1)^k + 3*Floor[(1 + k)/2], (5 + (-1)^k + 3*(1 + (-1)^k)*k)/2, {k, 1, Infinity}])^(-1)

(* {"ConstantCompound", 6}*)
2^(1/3) == 1 + 2/(8 + Inactive[ContinuedFractionK][1 - 9*k^2, 9*(1 + 2*k), {k, 1, Infinity}])

(* {"ConstantCompound", 7}*)
PolyGamma[2, 2] == -2/(5 + Inactive[ContinuedFractionK][-k^6, (1 + 2*k)*(5 + k + k^2), {k, 1, Infinity}])

(* {"ConstantCompound", 8}*)
Sqrt[2] == 1 + Inactive[ContinuedFractionK][1, 2, {k, 1, Infinity}]

(* {"ConstantCompound", 9}*)
Sqrt[5] == 1 + 2*Inactive[ContinuedFractionK][1, 1, {k, 1, Infinity}]

(* {"ConstantCompound", 10}*)
Tan[1] == 1 + Inactive[ContinuedFractionK][1, (1 + (-1)^k)/2 + ((1 - (-1)^k)*k)/2, {k, 1, Infinity}]

(* {"ConstantCompound", 11}*)
Tanh[1] == Inactive[ContinuedFractionK][1, -1 + 2*k, {k, 1, Infinity}]

(* {"ConstantCompound", 12}*)
Pi^2/6 == 1 + (1 + Inactive[ContinuedFractionK][(1 - (-1)^k + 4*k + 2*k^2)/8, 1, {k, 1, Infinity}])^(-1)

(* {"ConstantCompound", 13}*)
Pi^2/6 == 2/(1 + Inactive[ContinuedFractionK][k^4, 1 + 2*k, {k, 1, Infinity}])

(* {"ConstantCompound", 14}*)
Zeta[3] == 6/(5 + Inactive[ContinuedFractionK][-k^6, 5 + 27*k + 51*k^2 + 34*k^3, {k, 1, Infinity}])

(* {"ConstantCompound", 15}*)
Zeta[3] == 1 + (5 + Inactive[ContinuedFractionK][-k^6, (1 + 2*k)*(5 + k + k^2), {k, 1, Infinity}])^(-1)

(* {"ConstantCompound", 16}*)
Zeta[3] == 1 + (4 + Inactive[ContinuedFractionK][Floor[(1 + k)/2]^3, (1 - (-1)^k)/2 + 2*(1 + (-1)^k)*(1 + k), {k, 1, Infinity}])^(-1)

(* {"Constant/Constant", 1}*)
ConditionalExpression[(2*e)/(b*(1 + Sqrt[1 + (4*e)/b^2])) == Inactive[ContinuedFractionK][e, b, {k, 1, Infinity}], Element[b | e, Complexes]]

(* {"Constant/Linear", 1}*)
ConditionalExpression[-b + (Sqrt[e]*BesselI[-1 + b/a, (2*Sqrt[e])/a])/BesselI[b/a, (2*Sqrt[e])/a] == Inactive[ContinuedFractionK][e, b + a*k, {k, 1, Infinity}], Element[a | b | e, Complexes]]

(* {"Constant/Linear", 2}*)
ConditionalExpression[(Sqrt[e]*BesselI[1, (2*Sqrt[e])/a])/BesselI[0, (2*Sqrt[e])/a] == Inactive[ContinuedFractionK][e, a*k, {k, 1, Infinity}], Element[a | e, Complexes]]

(* {"Constant/LinearAlternating", 1}*)
ConditionalExpression[((-b + \[Beta])*(b^2 + e - \[Beta]^2) + (Sqrt[-(e^2*(b - \[Beta])^2)]*BesselI[-((4*a*b - b^2 - 2*e - 4*a*\[Beta] + \[Beta]^2)/(4*a*b - 4*a*\[Beta])), -e^2/(2*a*Sqrt[-(e^2*(b - \[Beta])^2)])])/BesselI[(b^2 + 2*e - \[Beta]^2)/(4*a*b - 4*a*\[Beta]), -e^2/(2*a*Sqrt[-(e^2*(b - \[Beta])^2)])])/(b - \[Beta])^2 == Inactive[ContinuedFractionK][e, b + a*k + (-1)^k*(a*k + \[Beta]), {k, 1, Infinity}], Element[a | b | \[Beta] | e, Complexes]]

(* {"Constant/LinearAlternating", 2}*)
ConditionalExpression[-((e*(b + \[Beta])^2*BesselI[(b^2 + 2*e - \[Beta]^2 + 2*a*(b + \[Beta]))/(4*a*(b + \[Beta])), -e^2/(2*a*Sqrt[-(e^2*(b + \[Beta])^2)])])/(-(Sqrt[-(e^2*(b + \[Beta])^2)]*BesselI[(b^2 + 2*e - \[Beta]^2 - 2*a*(b + \[Beta]))/(4*a*(b + \[Beta])), -e^2/(2*a*Sqrt[-(e^2*(b + \[Beta])^2)])]) + e*(b + \[Beta])*BesselI[(b^2 + 2*e - \[Beta]^2 + 2*a*(b + \[Beta]))/(4*a*(b + \[Beta])), -e^2/(2*a*Sqrt[-(e^2*(b + \[Beta])^2)])])) == Inactive[ContinuedFractionK][e, b + a*k + (-1)^k*(-(a*k) + \[Beta]), {k, 1, Infinity}], Element[a | b | \[Beta] | e, Complexes]]

(* {"Constant/LinearAlternating", 3}*)
ConditionalExpression[(e*\[Beta]^2)/(-(e*\[Beta]) + (Sqrt[-(e^2*\[Beta]^2)]*BesselI[(2*e - \[Beta]*(2*a + \[Beta]))/(4*a*\[Beta]), Sqrt[-(e^2*\[Beta]^2)]/(2*a*\[Beta]^2)])/BesselI[(2*e + 2*a*\[Beta] - \[Beta]^2)/(4*a*\[Beta]), Sqrt[-(e^2*\[Beta]^2)]/(2*a*\[Beta]^2)]) == Inactive[ContinuedFractionK][e, a*k + (-1)^k*(-(a*k) + \[Beta]), {k, 1, Infinity}], Element[a | \[Beta] | e, Complexes]]

(* {"Constant/LinearAlternating", 4}*)
ConditionalExpression[(e*\[Beta] - \[Beta]^3 + (Sqrt[-(e^2*\[Beta]^2)]*BesselI[-1 + (-2*e + \[Beta]^2)/(4*a*\[Beta]), Sqrt[-(e^2*\[Beta]^2)]/(2*a*\[Beta]^2)])/BesselI[(-2*e + \[Beta]^2)/(4*a*\[Beta]), Sqrt[-(e^2*\[Beta]^2)]/(2*a*\[Beta]^2)])/\[Beta]^2 == Inactive[ContinuedFractionK][e, a*k + (-1)^k*(a*k + \[Beta]), {k, 1, Infinity}], Element[a | \[Beta] | e, Complexes]]

(* {"Constant/LinearAlternating", 5}*)
ConditionalExpression[(b^2*e)/(-(b*e) + (Sqrt[-(b^2*e^2)]*BesselI[(-2*a*b + b^2 + 2*e)/(4*a*b), Sqrt[-(b^2*e^2)]/(2*a*b^2)])/BesselI[(2*a*b + b^2 + 2*e)/(4*a*b), Sqrt[-(b^2*e^2)]/(2*a*b^2)]) == Inactive[ContinuedFractionK][e, b + a*k - (-1)^k*a*k, {k, 1, Infinity}], Element[a | b | e, Complexes]]

(* {"Constant/LinearAlternating", 6}*)
ConditionalExpression[(-(b*(b^2 + e)) + (Sqrt[-(b^2*e^2)]*BesselI[-1 + (b^2 + 2*e)/(4*a*b), Sqrt[-(b^2*e^2)]/(2*a*b^2)])/BesselI[(b^2 + 2*e)/(4*a*b), Sqrt[-(b^2*e^2)]/(2*a*b^2)])/b^2 == Inactive[ContinuedFractionK][e, b + a*k + (-1)^k*a*k, {k, 1, Infinity}], Element[a | b | e, Complexes]]

(* {"Constant/QLinear", 1}*)
ConditionalExpression[-a - b + ((a + b + (2*e)/(b + Sqrt[b^2 + 4*e]))*QHypergeometricPFQ[{}, {-((a*(b + Sqrt[b^2 + 4*e]))/(b^2 + 2*e + b*Sqrt[b^2 + 4*e]))}, q, (2*e*q)/(b^2 + 2*e + b*Sqrt[b^2 + 4*e])])/QHypergeometricPFQ[{}, {-((a*(b + Sqrt[b^2 + 4*e])*q)/(b^2 + 2*e + b*Sqrt[b^2 + 4*e]))}, q, (2*e*q)/(b^2 + 2*e + b*Sqrt[b^2 + 4*e])] == Inactive[ContinuedFractionK][e, b + a*q^k, {k, 1, Infinity}], Element[a | b | e | q, Complexes] && 0 < Abs[q] < 1]

(* {"Constant/QLinear", 2}*)
ConditionalExpression[(e*QHypergeometricPFQ[{}, {0}, q^(-2), e/(a^2*q^5)])/(a*q*QHypergeometricPFQ[{}, {0}, q^(-2), e/(a^2*q^3)]) == Inactive[ContinuedFractionK][e, a*q^k, {k, 1, Infinity}], Element[a | e | q, Complexes] && 0 < Abs[q] < 1]

(* {"Constant/QLinear", 3}*)
ConditionalExpression[-a - a/Sqrt[q] + (a*QPochhammer[q^4, q^10]*QPochhammer[q^6, q^10])/(Sqrt[q]*QPochhammer[q^2, q^10]*QPochhammer[q^8, q^10]) == Inactive[ContinuedFractionK][-(a^2/Sqrt[q]), a + a/Sqrt[q] + a*q^k, {k, 1, Infinity}], Element[a | q, Complexes] && 0 < Abs[q] < 1]

(* {"Cos", 1}*)
ConditionalExpression[Cos[z] == 1 - z^2/(2*(1 + Inactive[ContinuedFractionK][z^2/(2*(1 + k)*(1 + 2*k)), 1 - z^2/(2*(1 + k)*(1 + 2*k)), {k, 1, Infinity}])), Element[z, Complexes]]

(* {"Cos", 2}*)
ConditionalExpression[Cos[z] == (1 + Inactive[ContinuedFractionK][z^2/(2*k*(-1 + 2*k)), 1 - z^2/(2*k*(-1 + 2*k)), {k, 1, Infinity}])^(-1), Element[z, Complexes]]

(* {"Cos", 3}*)
ConditionalExpression[Cos[(Pi*z)/2] == 1 + z/(1 + Inactive[ContinuedFractionK][-((1 + (-1)^k)*(-1 + 2*Floor[(1 + k)/2])*(-1 - z + 2*Floor[(1 + k)/2]))/2 + ((1 - (-1)^k)*(1 - 2*Floor[(1 + k)/2])*(-1 + z + 2*Floor[(1 + k)/2]))/2, ((1 + (-1)^k)*k)/2 + z, {k, 1, Infinity}]), Element[z, Complexes]]

(* {"Cos", 4}*)
ConditionalExpression[Cos[(Pi*z)/2] == 1 - z^2/(1 + Inactive[ContinuedFractionK][-((-1 + 2*k)^2*((-1 + 2*k)^2 - z^2)), 2 + 8*k^2 - z^2, {k, 1, Infinity}]), Element[z, Complexes]]

(* {"Cos", 5}*)
ConditionalExpression[Cos[(Pi*z)/2] == 1 - z^2/(2 + Inactive[ContinuedFractionK][2*(1 - 2*k)*k*(4*k^2 - z^2), 4*k^2 + (1 + 2*k)*(2 + 2*k) - z^2, {k, 1, Infinity}]), Element[z, Complexes]]

(* {"CosCompound", 1}*)
ConditionalExpression[Cos[z]^m == 1 - (z^2*Inactive[Sum][((-2*i + m)^2*Binomial[m, i])/(1 + Inactive[ContinuedFractionK][(z^2*Inactive[Sum][(-2*i + m)^(2 + 2*k)*Binomial[m, i], {i, 0, Floor[(-1 + m)/2]}])/(2*(1 + k)*(1 + 2*k)*Inactive[Sum][(-2*i + m)^(2*k)*Binomial[m, i], {i, 0, Floor[(-1 + m)/2]}]), 1 - (z^2*Inactive[Sum][(-2*i + m)^(2 + 2*k)*Binomial[m, i], {i, 0, Floor[(-1 + m)/2]}])/(2*(1 + k)*(1 + 2*k)*Inactive[Sum][(-2*i + m)^(2*k)*Binomial[m, i], {i, 0, Floor[(-1 + m)/2]}]), {k, 1, Infinity}]), {i, 0, Floor[(-1 + m)/2]}])/2^m, Element[m, Integers] && Element[z, Complexes] && m > 0]

(* {"Cosh", 1}*)
ConditionalExpression[Cosh[z] == 1 + z^2/(2*(1 + Inactive[ContinuedFractionK][-z^2/(2*(1 + k)*(1 + 2*k)), 1 + z^2/(2*(1 + k)*(1 + 2*k)), {k, 1, Infinity}])), Element[z, Complexes]]

(* {"Cosh", 2}*)
ConditionalExpression[Cosh[z] == (1 + Inactive[ContinuedFractionK][-z^2/(2*k*(-1 + 2*k)), 1 + z^2/(2*k*(-1 + 2*k)), {k, 1, Infinity}])^(-1), Element[z, Complexes]]

(* {"Cosh", 3}*)
ConditionalExpression[Cosh[(Pi*z)/2] == 1 + (I*z)/(1 + Inactive[ContinuedFractionK][-((1 + (-1)^k)*(-1 + 2*Floor[(1 + k)/2])*(-1 - I*z + 2*Floor[(1 + k)/2]))/2 + ((1 - (-1)^k)*(1 - 2*Floor[(1 + k)/2])*(-1 + I*z + 2*Floor[(1 + k)/2]))/2, ((1 + (-1)^k)*k)/2 + I*z, {k, 1, Infinity}]), Element[z, Complexes]]

(* {"Cosh", 4}*)
ConditionalExpression[Cosh[(Pi*z)/2] == 1 + z^2/(1 + Inactive[ContinuedFractionK][-((-1 + 2*k)^2*((-1 + 2*k)^2 + z^2)), 2 + 8*k^2 + z^2, {k, 1, Infinity}]), Element[z, Complexes]]

(* {"Cosh", 5}*)
ConditionalExpression[Cosh[(Pi*z)/2] == 1 + z^2/(2 + Inactive[ContinuedFractionK][2*(1 - 2*k)*k*(4*k^2 + z^2), 4*k^2 + (1 + 2*k)*(2 + 2*k) + z^2, {k, 1, Infinity}]), Element[z, Complexes]]

(* {"CoshCompound", 1}*)
ConditionalExpression[Cosh[z]^m == 1 + (z^2*Inactive[Sum][((-2*i + m)^2*Binomial[m, i])/(1 + Inactive[ContinuedFractionK][-(z^2*Inactive[Sum][(-2*i + m)^(2 + 2*k)*Binomial[m, i], {i, 0, Floor[(-1 + m)/2]}])/(2*(1 + k)*(1 + 2*k)*Inactive[Sum][(-2*i + m)^(2*k)*Binomial[m, i], {i, 0, Floor[(-1 + m)/2]}]), 1 + (z^2*Inactive[Sum][(-2*i + m)^(2 + 2*k)*Binomial[m, i], {i, 0, Floor[(-1 + m)/2]}])/(2*(1 + k)*(1 + 2*k)*Inactive[Sum][(-2*i + m)^(2*k)*Binomial[m, i], {i, 0, Floor[(-1 + m)/2]}]), {k, 1, Infinity}]), {i, 0, Floor[(-1 + m)/2]}])/2^m, Element[m, Integers] && Element[z, Complexes] && m > 0]

(* {"CoshIntegral", 1}*)
ConditionalExpression[CoshIntegral[z] == EulerGamma + Log[z] + z^2/(4*(1 + Inactive[ContinuedFractionK][-(k*z^2)/(2*(1 + k)^2*(1 + 2*k)), 1 + (k*z^2)/(2*(1 + k)^2*(1 + 2*k)), {k, 1, Infinity}])), Element[z, Complexes] && Abs[Arg[z]] < Pi]

(* {"CosIntegral", 1}*)
ConditionalExpression[CosIntegral[z] == EulerGamma + Log[z] - z^2/(4*(1 + Inactive[ContinuedFractionK][(k*z^2)/(2*(1 + k)^2*(1 + 2*k)), 1 - (k*z^2)/(2*(1 + k)^2*(1 + 2*k)), {k, 1, Infinity}])), Element[z, Complexes] && Abs[Arg[z]] < Pi]

(* {"Cot", 1}*)
ConditionalExpression[Cot[z] == z^(-1) + Inactive[ContinuedFractionK][-z^2, 1 + 2*k, {k, 1, Infinity}]/z, NotElement[z/Pi, Integers]]

(* {"Cot", 2}*)
ConditionalExpression[Cot[z] == z^(-1) - (4*z)/(Pi^2*(1 + Inactive[ContinuedFractionK][k^2*(k^2 - (4*z^2)/Pi^2), 1 + 2*k, {k, 1, Infinity}])), NotElement[z/Pi, Integers]]

(* {"Cot", 3}*)
ConditionalExpression[Cot[z] == (1 + Inactive[ContinuedFractionK][-(z^2/(-1 + 4*k^2)), 1, {k, 1, Infinity}])/z, NotElement[z/Pi, Integers]]

(* {"Cot", 4}*)
ConditionalExpression[Cot[z] == (Pi*(1 + Inactive[ContinuedFractionK][(-1 + 2*k)^2 - (16*z^2)/Pi^2, 2, {k, 1, Infinity}]))/(4*z), NotElement[z/Pi, Integers]]

(* {"Cot", 5}*)
ConditionalExpression[Cot[z] == (Pi/z - (4*z)/Pi)/(3 + Inactive[ContinuedFractionK][(-1 + 2*k)^2 - (16*z^2)/Pi^2, 6, {k, 1, Infinity}]), NotElement[z/Pi, Integers]]

(* {"Cot", 6}*)
ConditionalExpression[Cot[z] == z^(-1) - (4*z)/(Pi^2*(1 + Inactive[ContinuedFractionK][k^2*(k^2 - (4*z^2)/Pi^2), 1 + 2*k, {k, 1, Infinity}])), NotElement[z/Pi, Integers]]

(* {"Cot", 7}*)
ConditionalExpression[Cot[z] == z^(-1) + z/(-3 + 2*Inactive[ContinuedFractionK][-z^2/4, -3/2 - k, {k, 1, Infinity}]), NotElement[z/Pi, Integers]]

(* {"Cot", 8}*)
ConditionalExpression[Cot[z] == z^(-1) - z/(3*(1 + Inactive[ContinuedFractionK][(2*z^2*BernoulliB[2*(1 + k)])/((1 + k)*(1 + 2*k)*BernoulliB[2*k]), 1 - (2*z^2*BernoulliB[2*(1 + k)])/((1 + k)*(1 + 2*k)*BernoulliB[2*k]), {k, 1, Infinity}])), NotElement[z/Pi, Integers]]

(* {"Cot", 9}*)
ConditionalExpression[Cot[z] == z^(-1) - z/(3*(1 + Inactive[ContinuedFractionK][-((z^2*Zeta[2*(1 + k)])/(Pi^2*Zeta[2*k])), 1 + (z^2*Zeta[2*(1 + k)])/(Pi^2*Zeta[2*k]), {k, 1, Infinity}])), Element[z, Complexes] && NotElement[z/Pi, Integers]]

(* {"Coth", 1}*)
ConditionalExpression[Coth[z] == z^(-1) + Inactive[ContinuedFractionK][z^2, 1 + 2*k, {k, 1, Infinity}]/z, NotElement[(I*z)/Pi, Integers]]

(* {"Coth", 2}*)
ConditionalExpression[Coth[z] == z^(-1) + (4*z)/(Pi^2*(1 + Inactive[ContinuedFractionK][k^2*(k^2 + (4*z^2)/Pi^2), 1 + 2*k, {k, 1, Infinity}])), NotElement[(I*z)/Pi, Integers]]

(* {"Coth", 3}*)
ConditionalExpression[Coth[z] == (1 + Inactive[ContinuedFractionK][z^2/(-1 + 4*k^2), 1, {k, 1, Infinity}])/z, NotElement[(I*z)/Pi, Integers]]

(* {"Coth", 4}*)
ConditionalExpression[Coth[z] == (Pi*(1 + Inactive[ContinuedFractionK][(-1 + 2*k)^2 + (16*z^2)/Pi^2, 2, {k, 1, Infinity}]))/(4*z), NotElement[(I*z)/Pi, Integers]]

(* {"Coth", 5}*)
ConditionalExpression[Coth[z] == (Pi/z + (4*z)/Pi)/(3 + Inactive[ContinuedFractionK][(-1 + 2*k)^2 + (16*z^2)/Pi^2, 6, {k, 1, Infinity}]), NotElement[(I*z)/Pi, Integers]]

(* {"Coth", 6}*)
ConditionalExpression[Coth[z] == z^(-1) + (4*z)/(Pi^2*(1 + Inactive[ContinuedFractionK][k^4 + (4*k^2*z^2)/Pi^2, 1 + 2*k, {k, 1, Infinity}])), NotElement[(I*z)/Pi, Integers]]

(* {"Coth", 7}*)
ConditionalExpression[Coth[z] == z^(-1) - z/(-3 + 2*Inactive[ContinuedFractionK][z^2/4, -3/2 - k, {k, 1, Infinity}]), NotElement[(I*z)/Pi, Integers]]

(* {"Coth", 8}*)
ConditionalExpression[Coth[z] == z^(-1) + z/(3*(1 + Inactive[ContinuedFractionK][(-2*z^2*BernoulliB[2*(1 + k)])/((1 + k)*(1 + 2*k)*BernoulliB[2*k]), 1 + (2*z^2*BernoulliB[2*(1 + k)])/((1 + k)*(1 + 2*k)*BernoulliB[2*k]), {k, 1, Infinity}])), NotElement[(I*z)/Pi, Integers]]

(* {"Coth", 9}*)
ConditionalExpression[Coth[z^(-1)] == z + Inactive[ContinuedFractionK][1, (1 + 2*k)*z, {k, 1, Infinity}], NotElement[(I*z)/Pi, Integers]]

(* {"Coth", 10}*)
ConditionalExpression[Coth[(Pi*z)/2] == (2*(1 + z^2/(1 + Inactive[ContinuedFractionK][k^2*(k^2 + z^2), 1 + 2*k, {k, 1, Infinity}])))/(Pi*z), NotElement[(Pi*z)/2, Integers]]

(* {"Coth", 11}*)
ConditionalExpression[Coth[z] == z^(-1) + z/(3*(1 + Inactive[ContinuedFractionK][(z^2*Zeta[2*(1 + k)])/(Pi^2*Zeta[2*k]), 1 - (z^2*Zeta[2*(1 + k)])/(Pi^2*Zeta[2*k]), {k, 1, Infinity}])), Element[z, Complexes] && NotElement[(I*z)/Pi, Integers]]

(* {"Csc", 1}*)
ConditionalExpression[Csc[z] == z^(-1) + z/(6*(1 - z^2/6 + Inactive[ContinuedFractionK][z^2/(2*(1 + k)*(3 + 2*k)), 1 - z^2/(2*(1 + k)*(3 + 2*k)), {k, 1, Infinity}])), NotElement[z/Pi, Integers]]

(* {"Csc", 2}*)
ConditionalExpression[Csc[z] == z^(-1) + 1/(Pi*(1 - z/Pi + Inactive[ContinuedFractionK][(1 - (-1)^k + k)/(2 + k) + ((-1 + 3*(-1)^k + 2*(-1)^k*k)*z)/((1 + k)*(2 + k)*Pi), (1 + (-1)^k)/(2 + k) + ((1 - 3*(-1)^k - 2*(-1)^k*k)*z)/((1 + k)*(2 + k)*Pi), {k, 1, Infinity}])), NotElement[z/Pi, Integers]]

(* {"Csc", 3}*)
ConditionalExpression[Csc[z] == z^(-1) + 1/(Pi*(1 - z/Pi + Inactive[ContinuedFractionK][(1 + 2*k + 2*k^2 - (-1)^k*(1 + 2*k))/8 + ((-1 + (-1)^k + 2*(-1)^k*k)*z)/(4*Pi), (1 + (-1)^k - (2*(-1)^k*z)/Pi)/2, {k, 1, Infinity}])), NotElement[z/Pi, Integers]]

(* {"Csc", 4}*)
ConditionalExpression[Csc[z] == z^(-1) + z/(6*(1 + Inactive[ContinuedFractionK][-((-1 + 2^(1 + 2*k))*z^2*Zeta[2*(1 + k)])/(2*(-2 + 4^k)*Pi^2*Zeta[2*k]), (4 + ((-2 + 4^(1 + k))*z^2*Zeta[2*(1 + k)])/((-2 + 4^k)*Pi^2*Zeta[2*k]))/4, {k, 1, Infinity}])), Element[z, Complexes] && NotElement[z/Pi, Integers]]

(* {"Csch", 1}*)
ConditionalExpression[Csch[z] == z^(-1) - z/(6*(1 + z^2/6 + Inactive[ContinuedFractionK][-z^2/(2*(1 + k)*(3 + 2*k)), 1 + z^2/(2*(1 + k)*(3 + 2*k)), {k, 1, Infinity}])), Element[z, Complexes] && NotElement[(I*z)/Pi, Integers]]

(* {"Csch", 2}*)
ConditionalExpression[Csch[z] == z^(-1) + I/(Pi*(1 - (I*z)/Pi + Inactive[ContinuedFractionK][(1 - (-1)^k + k)/(2 + k) + (I*(-1 + 3*(-1)^k + 2*(-1)^k*k)*z)/((1 + k)*(2 + k)*Pi), (1 + (-1)^k)/(2 + k) + (I*(1 - 3*(-1)^k - 2*(-1)^k*k)*z)/((1 + k)*(2 + k)*Pi), {k, 1, Infinity}])), Element[z, Complexes] && NotElement[(I*z)/Pi, Integers]]

(* {"Csch", 3}*)
ConditionalExpression[Csch[z] == z^(-1) + I/(Pi*(1 - (I*z)/Pi + Inactive[ContinuedFractionK][(1 + 2*k + 2*k^2 - (-1)^k*(1 + 2*k))/8 + ((I/4)*(-1 + (-1)^k + 2*(-1)^k*k)*z)/Pi, (1 + (-1)^k - ((2*I)*(-1)^k*z)/Pi)/2, {k, 1, Infinity}])), Element[z, Complexes] && NotElement[(I*z)/Pi, Integers]]

(* {"Csch", 4}*)
ConditionalExpression[Csch[z] == (E^z*(1 + Inactive[ContinuedFractionK][((-1 - (-1)^k + 2*(-1)^k*(1 + k))*z)/(2*k*(1 + k)), 1, {k, 1, Infinity}]))/z, Element[z, Complexes] && NotElement[(I*z)/Pi, Integers]]

(* {"Csch", 5}*)
ConditionalExpression[Csch[z] == z^(-1) - z/(6*(1 + Inactive[ContinuedFractionK][((-1 + 2^(1 + 2*k))*z^2*Zeta[2*(1 + k)])/(2*(-2 + 4^k)*Pi^2*Zeta[2*k]), 1 - ((-2 + 4^(1 + k))*z^2*Zeta[2*(1 + k)])/(4*(-2 + 4^k)*Pi^2*Zeta[2*k]), {k, 1, Infinity}])), Element[z, Complexes] && NotElement[(I*z)/Pi, Integers]]

(* {"DawsonF", 1}*)
ConditionalExpression[DawsonF[z] == z/(1 + Inactive[ContinuedFractionK][(-2*(-1)^k*k*z^2)/(-1 + 4*k^2), 1, {k, 1, Infinity}]), Element[z, Complexes]]

(* {"DawsonF", 2}*)
ConditionalExpression[DawsonF[z] == z/(1 + 2*z^2 + Inactive[ContinuedFractionK][(-4*k*z^2)/(-1 + 4*k^2), 1 + (2*z^2)/(1 + 2*k), {k, 1, Infinity}]), Element[z, Complexes]]

(* {"DawsonF", 3}*)
ConditionalExpression[DawsonF[z] == z/(1 + Inactive[ContinuedFractionK][(2*z^2)/(1 + 2*k), 1 - (2*z^2)/(1 + 2*k), {k, 1, Infinity}]), Element[z, Complexes]]

(* {"E", 1}*)
E == 1 + Inactive[ContinuedFractionK][1, ((23 + 36*k)*Mod[k, 5])/250 + (3*(3 + 16*k)*Mod[1 + k, 5])/125 + ((49 + 108*k)*Mod[2 + k, 5])/125 - (6*(11 + 12*k)*Mod[3 + k, 5])/125 - (6*(-9 + 2*k)*Mod[4 + k, 5])/125, {k, 1, Infinity}]

(* {"E", 2}*)
E == 2 + Inactive[ContinuedFractionK][Piecewise[{{(2*(1 + k))/3, Mod[k, 3] == 2}}, 1], {k, 1, Infinity}]

(* {"E", 3}*)
E == 1 + Inactive[ContinuedFractionK][(-1)^(1 + k), 1 + (-1)^(1 + k) - ((-1 + (-1)^(1 + k))*(1 + k))/2, {k, 1, Infinity}]^(-1)

(* {"E", 4}*)
E == 1 + Inactive[ContinuedFractionK][(-1)^(-1 + k), 1 + (-1)^k + ((1 - (-1)^k)*k)/2, {k, 1, Infinity}]

(* {"E", 5}*)
E == 1 + 2/(1 + Inactive[ContinuedFractionK][1, 2*(1 + 2*k), {k, 1, Infinity}])

(* {"E", 6}*)
E == (1 - 2/(3 + Inactive[ContinuedFractionK][1, 2 + 4*k, {k, 1, Infinity}]))^(-1)

(* {"E", 7}*)
E == 2 + (1 + Inactive[ContinuedFractionK][(1 - (-1)^k)/2 + ((1 + (-1)^k)*(2 + k))/4, 1, {k, 1, Infinity}])^(-1)

(* {"E", 8}*)
E == 1 + 2/(1 + 1/(6*(1 + Inactive[ContinuedFractionK][1/(4*(1 + 2*k)*(3 + 2*k)), 1, {k, 1, Infinity}])))

(* {"E", 9}*)
E == 1 + (1 + Inactive[ContinuedFractionK][(-1 + (-1)^k*(1 + 2*k))/(4*k*(1 + k)), 1, {k, 1, Infinity}])^(-1)

(* {"E", 10}*)
E == 1 + Inactive[ContinuedFractionK][k, k, {k, 1, Infinity}]^(-1)

(* {"E", 11}*)
E == 2 + Inactive[ContinuedFractionK][1 + k, 1 + k, {k, 1, Infinity}]

(* {"E", 12}*)
E == 2 + (1 + Inactive[ContinuedFractionK][k, 1 + k, {k, 1, Infinity}])^(-1)

(* {"E", 13}*)
E == 1 + (1 + Inactive[ContinuedFractionK][-k, 2 + k, {k, 1, Infinity}])^(-1)

(* {"E", 14}*)
E == (1 - (2 + Inactive[ContinuedFractionK][-k, 2 + k, {k, 1, Infinity}])^(-1))^(-1)

(* {"E", 15}*)
E == 2 + (2 + Inactive[ContinuedFractionK][-1 - k, 3 + k, {k, 1, Infinity}])^(-1)

(* {"E", 16}*)
E == 1 + (1/2 + Inactive[ContinuedFractionK][1/4, 1 + 2*k, {k, 1, Infinity}])^(-1)

(* {"E", 17}*)
E == 1 + 2/(1 + Inactive[ContinuedFractionK][(-1 + 4*k^2)^(-1), 2, {k, 1, Infinity}])

(* {"E", 18}*)
E == (1 + Inactive[ContinuedFractionK][-k^(-1), 1 + k^(-1), {k, 1, Infinity}])^(-1)

(* {"E", 19}*)
E == 1 + (1 + Inactive[ContinuedFractionK][-(1 + k)^(-1), 1 + (1 + k)^(-1), {k, 1, Infinity}])^(-1)

(* {"ECompound", 1}*)
(-2 + E)^(-1) == 1 + Inactive[ContinuedFractionK][k, 1 + k, {k, 1, Infinity}]

(* {"ECompound", 2}*)
E/(-2 + E) == 3 + 2*Inactive[ContinuedFractionK][k, 1 + k, {k, 1, Infinity}]

(* {"ECompound", 3}*)
(-1 + E)^(-1) == Inactive[ContinuedFractionK][k, k, {k, 1, Infinity}]

(* {"ECompound", 4}*)
1 - E^(-1) == (1 + Inactive[ContinuedFractionK][k, k, {k, 1, Infinity}])^(-1)

(* {"ECompound", 5}*)
E/(-1 + E) == 2 - (3 + Inactive[ContinuedFractionK][-1 - k, 3 + k, {k, 1, Infinity}])^(-1)

(* {"ECompound", 6}*)
E/(-1 + E) == 1 + (1 + Inactive[ContinuedFractionK][(1 + (-1)^k)/2 + ((1 - (-1)^k)*(1 + k))/4, 1, {k, 1, Infinity}])^(-1)

(* {"ECompound", 7}*)
(1 + E)/(-1 + E) == 2 + Inactive[ContinuedFractionK][1, 2*(1 + 2*k), {k, 1, Infinity}]

(* {"ECompound", 8}*)
E^2 == 7 + Inactive[ContinuedFractionK][1, Piecewise[{{30 + 12*k, Mod[k, 5] == 0}, {7 + 3*k, Mod[k, 5] == 1}, {3 + 3*k, Mod[k, 5] == 4}}, 5]/5, {k, 1, Infinity}]

(* {"ECompound", 9}*)
E^2 == 7 + 2/(5 + Inactive[ContinuedFractionK][1, 5 + 2*k, {k, 1, Infinity}])

(* {"ECompound", 10}*)
(-1 + E^2)/(1 + E^2) == (1 + Inactive[ContinuedFractionK][1, 1 + 2*k, {k, 1, Infinity}])^(-1)

(* {"ECompound", 11}*)
(1 + E^2)/(-1 + E^2) == 1 + Inactive[ContinuedFractionK][1, 1 + 2*k, {k, 1, Infinity}]

(* {"ECompound", 12}*)
Sqrt[E] == 1 + (1 + Inactive[ContinuedFractionK][1, 1 + Piecewise[{{(4*k)/3, Mod[k, 3] == 0}}, 0], {k, 1, Infinity}])^(-1)

(* {"ECompound", 13}*)
(-1 + Sqrt[E])^(-1) == 1 + Inactive[ContinuedFractionK][1, ((9 - 8*k)*Mod[k, 3] + (9 + 4*k)*Mod[1 + k, 3] + (9 + 16*k)*Mod[2 + k, 3])/27, {k, 1, Infinity}]

(* {"ECompound", 14}*)
E^(1/3) == 1 + Inactive[ContinuedFractionK][1, (2*(1 + k)*Mod[k, 3] + (-1 + 8*k)*Mod[1 + k, 3] + (5 - 4*k)*Mod[2 + k, 3])/9, {k, 1, Infinity}]

(* {"EllipticE", 1}*)
ConditionalExpression[EllipticE[z] == Pi/(2*(1 + Inactive[ContinuedFractionK][((-3 - 4*(-2 + k)*k)*z)/(4*k^2), 1 + ((3 + 4*(-2 + k)*k)*z)/(4*k^2), {k, 1, Infinity}])), Element[z, Complexes] && Abs[z] < 1]

(* {"EllipticE", 2}*)
ConditionalExpression[EllipticE[1 - z] == 1 - (z*Log[z])/(4*(1 + Inactive[ContinuedFractionK][-((-1 + 4*k^2)*z)/(4*k*(1 + k)), 1 + ((-1 + 4*k^2)*z)/(4*k*(1 + k)), {k, 1, Infinity}])) - (z*(1 + 2*EulerGamma + 2*PolyGamma[0, 1/2]))/(4*(1 + Inactive[ContinuedFractionK][((1 - 2*k)^2*z*(-1 - 2*(1 + k)*(1 + 2*k)*PolyGamma[0, 1/2 + k] + 2*(1 + k)*(1 + 2*k)*PolyGamma[0, 1 + k]))/(4*(1 + k)^2*(1 + 2*k*(-1 + 2*k)*(PolyGamma[0, -1/2 + k] - PolyGamma[0, k]))), 1 - ((1 - 2*k)^2*z*(-1 - 2*(1 + k)*(1 + 2*k)*PolyGamma[0, 1/2 + k] + 2*(1 + k)*(1 + 2*k)*PolyGamma[0, 1 + k]))/(4*(1 + k)^2*(1 + 2*k*(-1 + 2*k)*(PolyGamma[0, -1/2 + k] - PolyGamma[0, k]))), {k, 1, Infinity}])), Element[z, Complexes] && Abs[z] < 1]

(* {"EllipticE", 3}*)
ConditionalExpression[EllipticE[z] == Sqrt[-z] + Log[-z]/(4*Sqrt[-z]*(1 + Inactive[ContinuedFractionK][-(1 - 2*k)^2/(4*k*(1 + k)*z), 1 + (1 - 2*k)^2/(4*k*(1 + k)*z), {k, 1, Infinity}])) + (1 + 4*Log[2])/(4*Sqrt[-z]*(1 + Inactive[ContinuedFractionK][-((1 - 2*k)^2*(-1 + 2*(1 + k)*PolyGamma[0, 1/2 + k] - 2*(1 + k)*PolyGamma[0, 1 + k]))/(4*(1 + k)^2*z*(-1 + 2*k*PolyGamma[0, -1/2 + k] - 2*k*PolyGamma[0, k])), 1 + ((1 - 2*k)^2*(-1 + 2*(1 + k)*PolyGamma[0, 1/2 + k] - 2*(1 + k)*PolyGamma[0, 1 + k]))/(4*(1 + k)^2*z*(-1 + 2*k*PolyGamma[0, -1/2 + k] - 2*k*PolyGamma[0, k])), {k, 1, Infinity}])), Element[z, Complexes] && Abs[z] > 1]

(* {"EllipticK", 1}*)
ConditionalExpression[EllipticK[z] == Pi/(2*(1 + Inactive[ContinuedFractionK][-((1 - 2*k)^2*z)/(4*k^2), 1 + ((1 - 2*k)^2*z)/(4*k^2), {k, 1, Infinity}])), Element[z, Complexes] && Abs[z] < 1]

(* {"EllipticK", 2}*)
ConditionalExpression[EllipticK[1 - z] == -Log[z]/(2*(1 + Inactive[ContinuedFractionK][-((1 - 2*k)^2*z)/(4*k^2), 1 + ((1 - 2*k)^2*z)/(4*k^2), {k, 1, Infinity}])) + (2*Log[2])/(1 + Inactive[ContinuedFractionK][((1 - 2*k)^2*z*(-PolyGamma[0, 1/2 + k] + PolyGamma[0, 1 + k]))/(4*k^2*(PolyGamma[0, -1/2 + k] - PolyGamma[0, k])), 1 - ((1 - 2*k)^2*z*(-PolyGamma[0, 1/2 + k] + PolyGamma[0, 1 + k]))/(4*k^2*(PolyGamma[0, -1/2 + k] - PolyGamma[0, k])), {k, 1, Infinity}]), Element[z, Complexes] && Abs[z] < 1]

(* {"EllipticK", 3}*)
ConditionalExpression[EllipticK[z] == Log[-z]/(2*Sqrt[-z]*(1 + Inactive[ContinuedFractionK][-(1 - 2*k)^2/(4*k^2*z), 1 + (1 - 2*k)^2/(4*k^2*z), {k, 1, Infinity}])) + (2*Log[2])/(Sqrt[-z]*(1 + Inactive[ContinuedFractionK][-((1 - 2*k)^2*(PolyGamma[0, 1/2 + k] - PolyGamma[0, 1 + k]))/(4*k^2*z*(PolyGamma[0, -1/2 + k] - PolyGamma[0, k])), 1 + ((1 - 2*k)^2*(PolyGamma[0, 1/2 + k] - PolyGamma[0, 1 + k]))/(4*k^2*z*(PolyGamma[0, -1/2 + k] - PolyGamma[0, k])), {k, 1, Infinity}])), Element[z, Complexes] && Abs[z] > 1]

(* {"EllipticTheta", 1}*)
ConditionalExpression[EllipticTheta[2, 0, Sqrt[z]] == (2*z^(1/8))/(1 + Inactive[ContinuedFractionK][-((1 - (-1)^k)*z^k)/2 - ((1 + (-1)^k)*(-z^(k/2) + z^k))/2, 1, {k, 1, Infinity}]), Element[z, Complexes] && Abs[z] < 1]

(* {"EllipticTheta", 2}*)
ConditionalExpression[EllipticTheta[2, 0, Sqrt[z]] == 2*z^(1/8)*(1 + Inactive[ContinuedFractionK][((1 + (-1)^k)*z)/2 + ((1 - (-1)^k)*z^((1 + k)/2))/2, ((1 - (-1)^k)*(1 - z))/2 + ((1 + (-1)^k)*(1 + z^(k/2)))/2, {k, 1, Infinity}]), Element[z, Complexes] && Abs[z] < 1]

(* {"EllipticTheta", 3}*)
ConditionalExpression[EllipticTheta[2, 0, Sqrt[z]] == (2*z^(1/8))/(1 + Inactive[ContinuedFractionK][-((1 - (-1)^k)*z)/2 - ((1 + (-1)^k)*z^((2 + k)/2))/2, ((1 - (-1)^k)*(1 + z))/2 + ((1 + (-1)^k)*(1 + z^(k/2)))/2, {k, 1, Infinity}]), Element[z, Complexes] && Abs[z] < 1]

(* {"EllipticTheta", 4}*)
ConditionalExpression[EllipticTheta[2, 0, Sqrt[z]] == (2*z^(1/8)*(1 + z))/(1 + Inactive[ContinuedFractionK][-z^(2 + k), 1 + z^k, {k, 1, Infinity}]), Element[z, Complexes] && Abs[z] < 1]

(* {"Erf", 1}*)
ConditionalExpression[Erf[z] == 1 - 1/(E^z^2*Sqrt[Pi]*(z + Inactive[ContinuedFractionK][k/2, z, {k, 1, Infinity}])), Element[z, Complexes] && Inequality[-Pi/2, Less, Arg[z], LessEqual, Pi/2]]

(* {"Erf", 2}*)
ConditionalExpression[Erf[z] == 1 - 2/(E^z^2*Sqrt[Pi]*(2*z + Inactive[ContinuedFractionK][2*k, 2*z, {k, 1, Infinity}])), Element[z, Complexes] && Inequality[-Pi/2, Less, Arg[z], LessEqual, Pi/2]]

(* {"Erf", 3}*)
ConditionalExpression[Erf[z] == 1 - Sqrt[2/Pi]/(E^z^2*(Sqrt[2]*z + Inactive[ContinuedFractionK][k, Sqrt[2]*z, {k, 1, Infinity}])), Element[z, Complexes] && Inequality[-Pi/2, Less, Arg[z], LessEqual, Pi/2]]

(* {"Erf", 4}*)
ConditionalExpression[Erf[z] == 1 - 2/(E^z^2*Sqrt[Pi]*(2*z + Inactive[ContinuedFractionK][k, ((3 + (-1)^k)*z)/2, {k, 1, Infinity}])), Element[z, Complexes] && Inequality[-Pi/2, Less, Arg[z], LessEqual, Pi/2]]

(* {"Erf", 5}*)
ConditionalExpression[Erf[z] == 1 - z/(E^z^2*Sqrt[Pi]*(z^2 + Inactive[ContinuedFractionK][k/2, z^(1 + (-1)^k), {k, 1, Infinity}])), Element[z, Complexes] && Inequality[-Pi/2, Less, Arg[z], LessEqual, Pi/2]]

(* {"Erf", 6}*)
ConditionalExpression[Erf[z] == 1 - (2*z)/(E^z^2*Sqrt[Pi]*(2*z^2 + Inactive[ContinuedFractionK][k, (1 - (-1)^k)/2 + (1 + (-1)^k)*z^2, {k, 1, Infinity}])), Element[z, Complexes] && Inequality[-Pi/2, Less, Arg[z], LessEqual, Pi/2]]

(* {"Erf", 7}*)
ConditionalExpression[Erf[z] == (2*z)/(E^z^2*Sqrt[Pi]*(1 + Inactive[ContinuedFractionK][(2*(-1)^k*k*z^2)/(-1 + 4*k^2), 1, {k, 1, Infinity}])), Element[z, Complexes] && Inequality[-Pi/2, Less, Arg[z], LessEqual, Pi/2]]

(* {"Erf", 8}*)
ConditionalExpression[Erf[z] == (2*z)/(E^z^2*Sqrt[Pi]*(1 + Inactive[ContinuedFractionK][2*(-1)^k*k*z^2, 1 + 2*k, {k, 1, Infinity}])), Element[z, Complexes] && Inequality[-Pi/2, Less, Arg[z], LessEqual, Pi/2]]

(* {"Erf", 9}*)
ConditionalExpression[Erf[z] == (2*z)/(E^z^2*Sqrt[Pi]*(1 - 2*z^2 + Inactive[ContinuedFractionK][4*k*z^2, 1 + 2*k - 2*z^2, {k, 1, Infinity}])), Element[z, Complexes] && Inequality[-Pi/2, Less, Arg[z], LessEqual, Pi/2]]

(* {"Erf", 10}*)
ConditionalExpression[Erf[z] == (2*z)/(E^z^2*Sqrt[Pi]*(1 - 2*z^2 + Inactive[ContinuedFractionK][(4*k*z^2)/(-1 + 4*k^2), 1 - (2*z^2)/(1 + 2*k), {k, 1, Infinity}])), Element[z, Complexes] && Inequality[-Pi/2, Less, Arg[z], LessEqual, Pi/2]]

(* {"Erf", 11}*)
ConditionalExpression[Erf[z] == 1 - (2*z)/(E^z^2*Sqrt[Pi]*(1 + 2*z^2 + Inactive[ContinuedFractionK][-2*k*(-1 + 2*k), 1 + 4*k + 2*z^2, {k, 1, Infinity}])), Element[z, Complexes] && Inequality[-Pi/2, Less, Arg[z], LessEqual, Pi/2]]

(* {"Erf", 12}*)
ConditionalExpression[Erf[z] == z/(E^z^2*Sqrt[Pi]*(1/2 - z^2 + Inactive[ContinuedFractionK][k*z^2, 1/2 + k - z^2, {k, 1, Infinity}])), Element[z, Complexes] && Inequality[-Pi/2, Less, Arg[z], LessEqual, Pi/2]]

(* {"Erf", 13}*)
ConditionalExpression[Erf[z] == (2*z)/(Sqrt[Pi]*(1 + Inactive[ContinuedFractionK][((-1 + 2*k)*z^2)/(k*(1 + 2*k)), 1 - ((-1 + 2*k)*z^2)/(k*(1 + 2*k)), {k, 1, Infinity}])), Element[z, Complexes] && Inequality[-Pi/2, Less, Arg[z], LessEqual, Pi/2]]

(* {"Erfc", 1}*)
ConditionalExpression[Erfc[z] == 1/(E^z^2*Sqrt[Pi]*(z + Inactive[ContinuedFractionK][k/2, z, {k, 1, Infinity}])), Element[z, Complexes] && Inequality[-Pi/2, Less, Arg[z], LessEqual, Pi/2]]

(* {"Erfc", 2}*)
ConditionalExpression[Erfc[z] == 2/(E^z^2*Sqrt[Pi]*(2*z + Inactive[ContinuedFractionK][2*k, 2*z, {k, 1, Infinity}])), Element[z, Complexes] && Inequality[-Pi/2, Less, Arg[z], LessEqual, Pi/2]]

(* {"Erfc", 3}*)
ConditionalExpression[Erfc[z] == Sqrt[2/Pi]/(E^z^2*(Sqrt[2]*z + Inactive[ContinuedFractionK][k, Sqrt[2]*z, {k, 1, Infinity}])), Element[z, Complexes] && Inequality[-Pi/2, Less, Arg[z], LessEqual, Pi/2]]

(* {"Erfc", 4}*)
ConditionalExpression[Erfc[z] == 2/(E^z^2*Sqrt[Pi]*(2*z + Inactive[ContinuedFractionK][k, ((3 + (-1)^k)*z)/2, {k, 1, Infinity}])), Element[z, Complexes] && Inequality[-Pi/2, Less, Arg[z], LessEqual, Pi/2]]

(* {"Erfc", 5}*)
ConditionalExpression[Erfc[z] == z/(E^z^2*Sqrt[Pi]*(z^2 + Inactive[ContinuedFractionK][k/2, z^(1 + (-1)^k), {k, 1, Infinity}])), Element[z, Complexes] && Inequality[-Pi/2, Less, Arg[z], LessEqual, Pi/2]]

(* {"Erfc", 6}*)
ConditionalExpression[Erfc[z] == (2*z)/(E^z^2*Sqrt[Pi]*(2*z^2 + Inactive[ContinuedFractionK][k, (1 - (-1)^k)/2 + (1 + (-1)^k)*z^2, {k, 1, Infinity}])), Element[z, Complexes] && Inequality[-Pi/2, Less, Arg[z], LessEqual, Pi/2]]

(* {"Erfc", 7}*)
ConditionalExpression[Erfc[z] == 1 - (2*z)/(E^z^2*Sqrt[Pi]*(1 + Inactive[ContinuedFractionK][(2*(-1)^k*k*z^2)/(-1 + 4*k^2), 1, {k, 1, Infinity}])), Element[z, Complexes] && Inequality[-Pi/2, Less, Arg[z], LessEqual, Pi/2]]

(* {"Erfc", 8}*)
ConditionalExpression[Erfc[z] == 1 - (2*z)/(E^z^2*Sqrt[Pi]*(1 + Inactive[ContinuedFractionK][2*(-1)^k*k*z^2, 1 + 2*k, {k, 1, Infinity}])), Element[z, Complexes] && Inequality[-Pi/2, Less, Arg[z], LessEqual, Pi/2]]

(* {"Erfc", 9}*)
ConditionalExpression[Erfc[z] == 1 - (2*z)/(E^z^2*Sqrt[Pi]*(1 - 2*z^2 + Inactive[ContinuedFractionK][4*k*z^2, 1 + 2*k - 2*z^2, {k, 1, Infinity}])), Element[z, Complexes] && Inequality[-Pi/2, Less, Arg[z], LessEqual, Pi/2]]

(* {"Erfc", 10}*)
ConditionalExpression[Erfc[z] == 1 - (2*z)/(E^z^2*Sqrt[Pi]*(1 - 2*z^2 + Inactive[ContinuedFractionK][(4*k*z^2)/(-1 + 4*k^2), 1 - (2*z^2)/(1 + 2*k), {k, 1, Infinity}])), Element[z, Complexes] && Inequality[-Pi/2, Less, Arg[z], LessEqual, Pi/2]]

(* {"Erfc", 11}*)
ConditionalExpression[Erfc[z] == 1 - z/Sqrt[z^2] + (2*z)/(E^z^2*Sqrt[Pi]*(1 + 2*z^2 + Inactive[ContinuedFractionK][-2*k*(-1 + 2*k), 1 + 4*k + 2*z^2, {k, 1, Infinity}])), Element[z, Complexes] && Inequality[-Pi/2, Less, Arg[z], LessEqual, Pi/2]]

(* {"Erfc", 12}*)
ConditionalExpression[Erfc[z] == 1 - z/(E^z^2*Sqrt[Pi]*(1/2 - z^2 + Inactive[ContinuedFractionK][k*z^2, 1/2 + k - z^2, {k, 1, Infinity}])), Element[z, Complexes] && Inequality[-Pi/2, Less, Arg[z], LessEqual, Pi/2]]

(* {"Erfc", 13}*)
ConditionalExpression[Erfc[z] == 1 - (2*z)/(Sqrt[Pi]*(1 + Inactive[ContinuedFractionK][((-1 + 2*k)*z^2)/(k*(1 + 2*k)), 1 - ((-1 + 2*k)*z^2)/(k*(1 + 2*k)), {k, 1, Infinity}])), Element[z, Complexes] && Inequality[-Pi/2, Less, Arg[z], LessEqual, Pi/2]]

(* {"Erfi", 1}*)
ConditionalExpression[Erfi[z] == I + (I*E^z^2)/(Sqrt[Pi]*(I*z + Inactive[ContinuedFractionK][k/2, I*z, {k, 1, Infinity}])), Element[z, Complexes] && Inequality[0, Less, Arg[z], LessEqual, Pi]]

(* {"Erfi", 2}*)
ConditionalExpression[Erfi[z] == -I + ((2*I)*E^z^2)/(Sqrt[Pi]*((2*I)*z + Inactive[ContinuedFractionK][2*k, (2*I)*z, {k, 1, Infinity}])), Element[z, Complexes] && Inequality[-Pi, Less, Arg[z], LessEqual, 0]]

(* {"Erfi", 3}*)
ConditionalExpression[Erfi[z] == I + (I*E^z^2*Sqrt[2/Pi])/(I*Sqrt[2]*z + Inactive[ContinuedFractionK][k, I*Sqrt[2]*z, {k, 1, Infinity}]), Element[z, Complexes] && Inequality[0, Less, Arg[z], LessEqual, Pi]]

(* {"Erfi", 4}*)
ConditionalExpression[Erfi[z] == I + ((2*I)*E^z^2)/(Sqrt[Pi]*((2*I)*z + Inactive[ContinuedFractionK][k, (I/2)*(3 + (-1)^k)*z, {k, 1, Infinity}])), Element[z, Complexes] && Inequality[0, Less, Arg[z], LessEqual, Pi]]

(* {"Erfi", 5}*)
ConditionalExpression[Erfi[z] == I - (E^z^2*z)/(Sqrt[Pi]*(-z^2 + Inactive[ContinuedFractionK][k/2, (I*z)^(1 + (-1)^k), {k, 1, Infinity}])), Element[z, Complexes] && Inequality[0, Less, Arg[z], LessEqual, Pi]]

(* {"Erfi", 6}*)
ConditionalExpression[Erfi[z] == I - (2*E^z^2*z)/(Sqrt[Pi]*(-2*z^2 + Inactive[ContinuedFractionK][k, (1 - (-1)^k)/2 + (-1 - (-1)^k)*z^2, {k, 1, Infinity}])), Element[z, Complexes] && Inequality[0, Less, Arg[z], LessEqual, Pi]]

(* {"Erfi", 7}*)
ConditionalExpression[Erfi[z] == (2*E^z^2*z)/(Sqrt[Pi]*(1 + Inactive[ContinuedFractionK][(-2*(-1)^k*k*z^2)/(-1 + 4*k^2), 1, {k, 1, Infinity}])), Element[z, Complexes] && Inequality[0, Less, Arg[z], LessEqual, Pi]]

(* {"Erfi", 8}*)
ConditionalExpression[Erfi[z] == (2*E^z^2*z)/(Sqrt[Pi]*(1 + Inactive[ContinuedFractionK][2*(-1)^(-1 + k)*k*z^2, 1 + 2*k, {k, 1, Infinity}])), Element[z, Complexes] && Inequality[0, Less, Arg[z], LessEqual, Pi]]

(* {"Erfi", 9}*)
ConditionalExpression[Erfi[z] == (2*E^z^2*z)/(Sqrt[Pi]*(1 + 2*z^2 + Inactive[ContinuedFractionK][-4*k*z^2, 1 + 2*k + 2*z^2, {k, 1, Infinity}])), Element[z, Complexes] && Inequality[0, Less, Arg[z], LessEqual, Pi]]

(* {"Erfi", 10}*)
ConditionalExpression[Erfi[z] == -(Sqrt[-z]/Sqrt[z]) - (2*E^z^2*z)/(Sqrt[Pi]*(1 - 2*z^2 + Inactive[ContinuedFractionK][-2*k*(-1 + 2*k), 1 + 4*k - 2*z^2, {k, 1, Infinity}])), Element[z, Complexes] && Inequality[0, Less, Arg[z], LessEqual, Pi]]

(* {"Erfi", 11}*)
ConditionalExpression[Erfi[z] == I - (2*E^z^2*z)/(Sqrt[Pi]*(1 - 2*z^2 + Inactive[ContinuedFractionK][-2*k*(-1 + 2*k), 1 + 4*k - 2*z^2, {k, 1, Infinity}])), Element[z, Complexes] && Inequality[0, Less, Arg[z], LessEqual, Pi]]

(* {"Erfi", 12}*)
ConditionalExpression[Erfi[z] == (2*E^z^2*z)/(Sqrt[Pi]*(1 + 2*z^2 + Inactive[ContinuedFractionK][(-4*k*z^2)/(-1 + 4*k^2), 1 + (2*z^2)/(1 + 2*k), {k, 1, Infinity}])), Element[z, Complexes] && Inequality[0, Less, Arg[z], LessEqual, Pi]]

(* {"Erfi", 13}*)
ConditionalExpression[Erfi[z] == (E^z^2*z)/(Sqrt[Pi]*(1/2 + z^2 + Inactive[ContinuedFractionK][-(k*z^2), 1/2 + k + z^2, {k, 1, Infinity}])), Element[z, Complexes] && Inequality[0, Less, Arg[z], LessEqual, Pi]]

(* {"Erfi", 14}*)
ConditionalExpression[Erfi[z] == (2*z)/(Sqrt[Pi]*(1 + Inactive[ContinuedFractionK][-(((-1 + 2*k)*z^2)/(k*(1 + 2*k))), 1 + ((-1 + 2*k)*z^2)/(k*(1 + 2*k)), {k, 1, Infinity}])), Element[z, Complexes] && Inequality[0, Less, Arg[z], LessEqual, Pi]]

(* {"EulerGamma", 1}*)
EulerGamma == Pi^2/(12*(1 + Inactive[ContinuedFractionK][((1 + k)*Zeta[2 + k])/((2 + k)*Zeta[1 + k]), 1 - ((1 + k)*Zeta[2 + k])/((2 + k)*Zeta[1 + k]), {k, 1, Infinity}]))

(* {"EulerGamma", 2}*)
EulerGamma == Log[2]/2 + 1/(2*(1 + Inactive[ContinuedFractionK][((1 + k)*Log[2 + k])/((2 + k)*Log[1 + k]), 1 - ((1 + k)*Log[2 + k])/((2 + k)*Log[1 + k]), {k, 1, Infinity}]))

(* {"EulerGamma", 3}*)
EulerGamma == Log[2] - Zeta[3]/(12*(1 + Inactive[ContinuedFractionK][-((1 + 2*k)*Zeta[3 + 2*k])/(4*(3 + 2*k)*Zeta[1 + 2*k]), 1 + ((1 + 2*k)*Zeta[3 + 2*k])/(4*(3 + 2*k)*Zeta[1 + 2*k]), {k, 1, Infinity}]))

(* {"Exp", 1}*)
ConditionalExpression[E^z == (1 + Inactive[ContinuedFractionK][(-1)^k*z, 1 + (-1)^k + ((1 - (-1)^k)*k)/2, {k, 1, Infinity}])^(-1), Element[z, Complexes]]

(* {"Exp", 2}*)
ConditionalExpression[E^z == (1 - z/(1 + Inactive[ContinuedFractionK][(-1)^(-1 + k)*z*Floor[(1 + k)/2], 1 + k, {k, 1, Infinity}]))^(-1), Element[z, Complexes]]

(* {"Exp", 3}*)
ConditionalExpression[E^z == 1 + Inactive[ContinuedFractionK][(-1)^(-1 + k)*z, 1 + (-1)^k + ((1 - (-1)^k)*k)/2, {k, 1, Infinity}], Element[z, Complexes]]

(* {"Exp", 4}*)
ConditionalExpression[E^z == 1 + (2*z)/(2 - z + Inactive[ContinuedFractionK][z^2, 2*(1 + 2*k), {k, 1, Infinity}]), Element[z, Complexes]]

(* {"Exp", 5}*)
ConditionalExpression[E^z == 1 + (2*z)/(2 - z + z^2/(6*(1 + Inactive[ContinuedFractionK][z^2/(4*(1 + 2*k)*(3 + 2*k)), 1, {k, 1, Infinity}]))), Element[z, Complexes]]

(* {"Exp", 6}*)
ConditionalExpression[E^z == 1 + z/(1 + Inactive[ContinuedFractionK][((-1 + (-1)^k*(1 + 2*k))*z)/(4*k*(1 + k)), 1, {k, 1, Infinity}]), Element[z, Complexes]]

(* {"Exp", 7}*)
ConditionalExpression[E^z == 1 + z/(1 - z + Inactive[ContinuedFractionK][k*z, 1 + k - z, {k, 1, Infinity}]), Element[z, Complexes]]

(* {"Exp", 8}*)
ConditionalExpression[E^z == (1 + Inactive[ContinuedFractionK][-(z/k), 1 + z/k, {k, 1, Infinity}])^(-1), Element[z, Complexes]]

(* {"Exp", 9}*)
ConditionalExpression[E^z == (1 - z/(1 + z + Inactive[ContinuedFractionK][-(k*z), 1 + k + z, {k, 1, Infinity}]))^(-1), Element[z, Complexes]]

(* {"Exp", 10}*)
ConditionalExpression[E^z == 1 + z/(1 + Inactive[ContinuedFractionK][-(k*z), 1 + k + z, {k, 1, Infinity}]), Element[z, Complexes]]

(* {"Exp", 11}*)
ConditionalExpression[E^z == 1 + z/(1 + Inactive[ContinuedFractionK][-(z/(1 + k)), 1 + z/(1 + k), {k, 1, Infinity}]), Element[z, Complexes]]

(* {"Exp", 12}*)
ConditionalExpression[E^z == 1 + z/(1 - z/2 + Inactive[ContinuedFractionK][z^2/4, 1 + 2*k, {k, 1, Infinity}]), Element[z, Complexes]]

(* {"Exp", 13}*)
ConditionalExpression[E^Sqrt[z] == 1 + (2*Sqrt[z])/(2 - Sqrt[z] + Inactive[ContinuedFractionK][z/(-1 + 4*k^2), 2, {k, 1, Infinity}]), Element[z, Complexes]]

(* {"Exp", 14}*)
ConditionalExpression[E^((2*z)/y) == 1 + (2*z)/(y - z + Inactive[ContinuedFractionK][z^2, (1 + 2*k)*y, {k, 1, Infinity}]), Element[y | z, Complexes]]

(* {"Exp", 15}*)
ConditionalExpression[E^z^(-1) == 1 + Inactive[ContinuedFractionK][1, ((1 + z*(-1 + 2*Floor[(2 + k)/3]))*Mod[k, 3])/9 + ((-1 + 4*(-1 + z*(-1 + 2*Floor[(2 + k)/3])))*Mod[1 + k, 3])/9 + ((5 - 2*(-1 + z*(-1 + 2*Floor[(2 + k)/3])))*Mod[2 + k, 3])/9, {k, 1, Infinity}], Element[z, Complexes]]

(* {"Exp", 16}*)
ConditionalExpression[E^m^(-1) == m/(-1 + m + (2*m + Inactive[ContinuedFractionK][1, ((17 + 8*k - 12*m)*Mod[k, 3] + (5 - 4*k + 6*m)*Mod[1 + k, 3] + 2*(-8 + k + 12*m)*Mod[2 + k, 3])/27, {k, 1, Infinity}])^(-1)), Element[m, Integers] && m > 0]

(* {"Exp", 17}*)
ConditionalExpression[E^m^(-1) == 1 + Inactive[ContinuedFractionK][1, ((3 + (1 + 2*k)*m)*Mod[k, 3])/27 + ((-15 + 4*(1 + 2*k)*m)*Mod[1 + k, 3])/27 - ((-21 + 2*(1 + 2*k)*m)*Mod[2 + k, 3])/27, {k, 1, Infinity}], Element[m, Integers] && m > 0]

(* {"Exp", 18}*)
ConditionalExpression[E^m^(-1) == (1 + m)/m + Inactive[ContinuedFractionK][1, ((-1 + 8*k + 6*m)*Mod[k, 3] + (-13 - 4*k + 24*m)*Mod[1 + k, 3] + 2*(10 + k - 6*m)*Mod[2 + k, 3])/27, {k, 1, Infinity}]/m, Element[m, Integers] && m > 0]

(* {"Exp", 19}*)
ConditionalExpression[E^(2/m) == 1 + Inactive[ContinuedFractionK][1, ((5 + 9*(1 + 2*k)*m)*Mod[k, 5])/250 + ((-35 + 2*(11 + 12*k)*m)*Mod[1 + k, 5])/125 + ((15 + (17 + 54*k)*m)*Mod[2 + k, 5])/125 - ((10 + 4*(7 + 9*k)*m)*Mod[3 + k, 5])/125 + ((40 + (7 - 6*k)*m)*Mod[4 + k, 5])/125, {k, 1, Infinity}], Element[m, Integers] && m > 0]

(* {"Exp", 20}*)
ConditionalExpression[E^((2*p)/m) == 1 - (2*p)/(-m + p - Inactive[ContinuedFractionK][p^2, m + 2*k*m, {k, 1, Infinity}]), Element[m | p, Integers] && m > 1 && p > 0]

(* {"Exp", 21}*)
ConditionalExpression[E^(2*\[Alpha]*ArcTan[z^(-1)]) == 1 + (2*\[Alpha])/(z - \[Alpha] + Inactive[ContinuedFractionK][k^2 + \[Alpha]^2, (1 + 2*k)*z, {k, 1, Infinity}]), Element[\[Alpha] | z, Complexes]]

(* {"ExpCompound", 1}*)
ConditionalExpression[(-1 + E^z)/(1 + E^z) == z/(2 + Inactive[ContinuedFractionK][z^2, 2*(1 + 2*k), {k, 1, Infinity}]), Element[z, Complexes]]

(* {"ExpCompound", 2}*)
ConditionalExpression[(-1 + E^z)/(1 + E^z) == Inactive[ContinuedFractionK][1, (-2 + 4*k)/z, {k, 1, Infinity}], Element[z, Complexes]]

(* {"ExpCompound", 3}*)
ConditionalExpression[(-E^(-z) + E^z)/(E^(-z) + E^z) == z/(1 + Inactive[ContinuedFractionK][z^2, 1 + 2*k, {k, 1, Infinity}]), Element[z, Complexes]]

(* {"ExpCompound", 4}*)
ConditionalExpression[(-1 + E^((2*p)/m))/(1 + E^((2*p)/m)) == p/(m + Inactive[ContinuedFractionK][p^2, (1 + 2*k)*m, {k, 1, Infinity}]), Element[m | p, Integers] && m > 1 && p > 0]

(* {"ExpIntegralE", 1}*)
ConditionalExpression[ExpIntegralE[\[Nu], z] == z^(-1 + \[Nu])*Gamma[1 - \[Nu]] - 1/(E^z*(1 - \[Nu] + Inactive[ContinuedFractionK][(-1)^k*z*((1 - \[Nu])^((1 - (-1)^k)/2) + Floor[(-1 + k)/2]), 1 + k - \[Nu], {k, 1, Infinity}])), Element[\[Nu] | z, Complexes] &&  !(Element[z, Reals] && z < 0)]

(* {"ExpIntegralE", 2}*)
ConditionalExpression[ExpIntegralE[\[Nu], z] == 1/(E^z*z*(1 + Inactive[ContinuedFractionK][(((1 + (-1)^k)*k)/4 + ((1 - (-1)^k)*((-1 + k)/2 + \[Nu]))/2)/z, 1, {k, 1, Infinity}])), Element[\[Nu] | z, Complexes] &&  !(Element[z, Reals] && z < 0)]

(* {"ExpIntegralE", 3}*)
ConditionalExpression[ExpIntegralE[\[Nu], z] == (z^(-1 + r)/(Pochhammer[1 - \[Nu], r]*(1 + Inactive[ContinuedFractionK][(((1 + (-1)^k)*k)/4 + ((1 - (-1)^k)*((-1 + k)/2 - r + \[Nu]))/2)/z, 1, {k, 1, Infinity}])) - Inactive[Sum][z^k/Pochhammer[1 - \[Nu], 1 + k], {k, 0, -1 + r}])/E^z, Element[r, Integers] && Element[\[Nu] | z, Complexes] &&  !(Element[z, Reals] && z < 0) && r >= 0]

(* {"ExpIntegralE", 4}*)
ConditionalExpression[ExpIntegralE[\[Nu], z] == (((-1)^r*z^(-1 - r)*Pochhammer[\[Nu], r])/(1 + Inactive[ContinuedFractionK][(((1 + (-1)^k)*k)/4 + ((1 - (-1)^k)*((-1 + k)/2 + r + \[Nu]))/2)/z, 1, {k, 1, Infinity}]) + Inactive[Sum][((-1)^k*Pochhammer[\[Nu], k])/z^k, {k, 0, -1 + r}]/z)/E^z, Element[r, Integers] && Element[\[Nu] | z, Complexes] &&  !(Element[z, Reals] && z < 0) && r > 0]

(* {"ExpIntegralE", 5}*)
ConditionalExpression[ExpIntegralE[\[Nu], z] == z^(-1 + \[Nu])*Gamma[1 - \[Nu]] - 1/(E^z*(1 - \[Nu])*(1 + Inactive[ContinuedFractionK][z*(((1 + (-1)^k)*k)/(4*(k - \[Nu])*(1 + k - \[Nu])) - ((1 - (-1)^k)*((1 + k)/2 - \[Nu]))/(2*(k - \[Nu])*(1 + k - \[Nu]))), 1, {k, 1, Infinity}])), Element[\[Nu] | z, Complexes] &&  !(Element[z, Reals] && z < 0)]

(* {"ExpIntegralE", 6}*)
ConditionalExpression[ExpIntegralE[\[Nu], z] == z^(-1 + \[Nu])*Gamma[1 - \[Nu]] - (z^r/(Pochhammer[1 - \[Nu], 1 + r]*(1 + Inactive[ContinuedFractionK][z*(((1 + (-1)^k)*k)/(4*(k + r - \[Nu])*(1 + k + r - \[Nu])) - ((1 - (-1)^k)*((3 + k)/2 - \[Nu]))/(2*(k + r - \[Nu])*(1 + k + r - \[Nu]))), 1, {k, 1, Infinity}])) + Inactive[Sum][z^k/Pochhammer[1 - \[Nu], 1 + k], {k, 0, -1 + r}])/E^z, Element[r, Integers] && Element[\[Nu] | z, Complexes] &&  !(Element[z, Reals] && z < 0) && r >= 0]

(* {"ExpIntegralE", 7}*)
ConditionalExpression[ExpIntegralE[\[Nu], z] == z^(-1 + \[Nu])*Gamma[1 - \[Nu]] - (-(((-1)^r*Pochhammer[\[Nu], -1 + r])/(z^r*(1 + Inactive[ContinuedFractionK][z*(((1 + (-1)^k)*k)/(4*(k - r - \[Nu])*(1 + k - r - \[Nu])) - ((1 - (-1)^k)*((1 + k)/2 - r - \[Nu]))/(2*(k - r - \[Nu])*(1 + k - r - \[Nu]))), 1, {k, 1, Infinity}]))) + Inactive[Sum][Pochhammer[\[Nu], -1 + k]/(-z)^k, {k, 1, r}])/E^z, Element[r, Integers] && Element[\[Nu] | z, Complexes] &&  !(Element[z, Reals] && z < 0) && r >= 0]

(* {"ExpIntegralE", 8}*)
ConditionalExpression[ExpIntegralE[\[Nu], z] == 1/(E^z*(z + Inactive[ContinuedFractionK][((1 + (-1)^k)*k)/4 + ((1 - (-1)^k)*((-1 + k)/2 + \[Nu]))/2, (1 - (-1)^k)/2 + ((1 + (-1)^k)*z)/2, {k, 1, Infinity}])), Element[\[Nu] | z, Complexes] &&  !(Element[z, Reals] && z < 0)]

(* {"ExpIntegralE", 9}*)
ConditionalExpression[ExpIntegralE[\[Nu], z] == 1/(E^z*(z + \[Nu] + Inactive[ContinuedFractionK][-(k*(-1 + k + \[Nu])), 2*k + z + \[Nu], {k, 1, Infinity}])), Element[\[Nu] | z, Complexes] &&  !(Element[z, Reals] && z < 0)]

(* {"ExpIntegralE", 10}*)
ConditionalExpression[ExpIntegralE[\[Nu], z] == (1 - \[Nu]/(1 + z + \[Nu] + Inactive[ContinuedFractionK][-(k*(k + \[Nu])), 1 + 2*k + z + \[Nu], {k, 1, Infinity}]))/(E^z*z), Element[\[Nu] | z, Complexes] &&  !(Element[z, Reals] && z < 0)]

(* {"ExpIntegralE", 11}*)
ConditionalExpression[ExpIntegralE[\[Nu], z] == z^(-1 + \[Nu])*Gamma[1 - \[Nu]] - 1/(E^z*(1 - \[Nu] + Inactive[ContinuedFractionK][z*(-k + \[Nu]), 1 + k + z - \[Nu], {k, 1, Infinity}])), Element[\[Nu] | z, Complexes] &&  !(Element[z, Reals] && z < 0)]

(* {"ExpIntegralE", 12}*)
ConditionalExpression[ExpIntegralE[\[Nu], z] == z^(-1 + \[Nu])*Gamma[1 - \[Nu]] - 1/(E^z*(1 - z - \[Nu] + Inactive[ContinuedFractionK][k*z, 1 + k - z - \[Nu], {k, 1, Infinity}])), Element[\[Nu] | z, Complexes] &&  !(Element[z, Reals] && z < 0)]

(* {"ExpIntegralE", 13}*)
ConditionalExpression[ExpIntegralE[\[Nu], z] == z^(-1 + \[Nu])*Gamma[1 - \[Nu]] - (z^r/(Pochhammer[1 - \[Nu], r]*(1 + r - z - \[Nu] + Inactive[ContinuedFractionK][k*z, 1 + k + r - z - \[Nu], {k, 1, Infinity}])) + Inactive[Sum][z^k/Pochhammer[1 - \[Nu], 1 + k], {k, 0, -1 + r}])/E^z, Element[r, Integers] && Element[\[Nu] | z, Complexes] &&  !(Element[z, Reals] && z < 0) && r >= 0]

(* {"ExpIntegralE", 14}*)
ConditionalExpression[ExpIntegralE[\[Nu], z] == z^(-1 + \[Nu])*Gamma[1 - \[Nu]] - (((-1)^r*Pochhammer[\[Nu], r])/(z^r*(1 - r - z - \[Nu] + Inactive[ContinuedFractionK][k*z, 1 + k - r - z - \[Nu], {k, 1, Infinity}])) + Inactive[Sum][Pochhammer[\[Nu], -1 + k]/(-z)^k, {k, 1, r}])/E^z, Element[r, Integers] && Element[\[Nu] | z, Complexes] &&  !(Element[z, Reals] && z < 0) && r >= 0]

(* {"ExpIntegralE", 15}*)
ConditionalExpression[ExpIntegralE[-z, z] == (1 + z/(1 + Inactive[ContinuedFractionK][k*(-k + z), 1 + 2*k, {k, 1, Infinity}]))/(E^z*z), Element[z, Complexes] &&  !(Element[z, Reals] && z < 0)]

(* {"ExpIntegralE", 16}*)
ConditionalExpression[ExpIntegralE[-z, z] == (2 + (-1 + z)/(2 + Inactive[ContinuedFractionK][k*(-1 - k + z), 2 + 2*k, {k, 1, Infinity}]))/(E^z*z), Element[z, Complexes] &&  !(Element[z, Reals] && z < 0)]

(* {"ExpIntegralE", 17}*)
ConditionalExpression[ExpIntegralE[-z, z] == z^(-1 - z)*Gamma[1 + z] - 2/(E^z*(2 + Inactive[ContinuedFractionK][(2 + k)*z, 2 + k, {k, 1, Infinity}])), Element[z, Complexes] &&  !(Element[z, Reals] && z < 0)]

(* {"ExpIntegralE", 18}*)
ConditionalExpression[ExpIntegralE[\[Nu], z] == z^(-1 + \[Nu])*Gamma[1 - \[Nu]] - 1/((1 - \[Nu])*(1 + Inactive[ContinuedFractionK][(z*(k - \[Nu]))/(k*(1 + k - \[Nu])), 1 + (z*(-k + \[Nu]))/(k*(1 + k - \[Nu])), {k, 1, Infinity}])), Element[\[Nu] | z, Complexes] &&  !(Element[z, Integers] && z < 0)]

(* {"ExpIntegralE", 19}*)
ConditionalExpression[ExpIntegralE[m, z] == ((-z)^(-1 + m)*(-Log[z] + PolyGamma[0, m]))/(-1 + m)! - 1/((1 - m)*(1 + Inactive[ContinuedFractionK][((k - m)*z)/(k*(1 + k - m)), 1 - ((k - m)*z)/(k*(1 + k - m)), {k, 1, -2 + m}])) - (-z)^m/(m!*(1 + Inactive[ContinuedFractionK][(k*z)/((1 + k)*(k + m)), 1 - (k*z)/((1 + k)*(k + m)), {k, 1, Infinity}])), Element[m, Integers] && Element[z, Complexes] && m > 1]

(* {"ExpIntegralEi", 1}*)
ConditionalExpression[ExpIntegralEi[z] == (-Log[z^(-1)] - 2*Log[-z] + Log[z])/2 + E^z/(z*(1 + Inactive[ContinuedFractionK][-(Floor[(1 + k)/2]/z), 1, {k, 1, Infinity}])), Element[z, Complexes] && Abs[Arg[z]] < Pi]

(* {"ExpIntegralEi", 2}*)
ConditionalExpression[ExpIntegralEi[z] == 2*SinhIntegral[z] - 1/(E^z*z*(1 + Inactive[ContinuedFractionK][Floor[(1 + k)/2]/z, 1, {k, 1, Infinity}])), Element[z, Complexes] && Abs[Arg[z]] < Pi]

(* {"ExpIntegralEi", 3}*)
ConditionalExpression[ExpIntegralEi[z] == I*Pi*Sign[Im[z]] + E^z*((z^(-1 - r)*r!)/(1 + Inactive[ContinuedFractionK][(-((1 + (-1)^k)*k)/4 - ((1 - (-1)^k)*((1 + k)/2 + r))/2)/z, 1, {k, 1, Infinity}]) + Inactive[Sum][(-1 + k)!/z^k, {k, 1, r}]), Element[r, Integers] && Element[z, Complexes] && Abs[Arg[z]] < Pi && r >= 0]

(* {"ExpIntegralEi", 4}*)
ConditionalExpression[ExpIntegralEi[z] == I*Pi*Sign[Im[z]] - E^z/(-z + Inactive[ContinuedFractionK][Floor[(1 + k)/2], (-z)^((1 + (-1)^k)/2), {k, 1, Infinity}]), Element[z, Complexes] && Abs[Arg[-z]] < Pi]

(* {"ExpIntegralEi", 5}*)
ConditionalExpression[ExpIntegralEi[z] == I*Pi*Sign[Im[z]] - E^z/(1 - z + Inactive[ContinuedFractionK][-k^2, 1 + 2*k - z, {k, 1, Infinity}]), Element[z, Complexes] && Abs[Arg[-z]] < Pi]

(* {"ExpIntegralEi", 6}*)
ConditionalExpression[ExpIntegralEi[z] == I*Pi*Sign[Im[z]] + (E^z*(1 - (2 - z + Inactive[ContinuedFractionK][-(k*(1 + k)), 2 + 2*k - z, {k, 1, Infinity}])^(-1)))/z, Element[z, Complexes] && Abs[Arg[-z]] < Pi]

(* {"ExpIntegralEi", 7}*)
ConditionalExpression[ExpIntegralEi[z] == I*Pi*Sign[Im[z]] - E^z*(r!/(z^r*(1 + r - z + Inactive[ContinuedFractionK][-(k*(k + r)), 1 + 2*k + r - z, {k, 1, Infinity}])) - Inactive[Sum][z^(-1 - k)*k!, {k, 0, -1 + r}]), Element[r, Integers] && Element[z, Complexes] &&  !(Element[z, Reals] && z > 0) && r >= 0]

(* {"ExpIntegralEi", 8}*)
ConditionalExpression[ExpIntegralEi[z] == EulerGamma + (-Log[z^(-1)] + Log[z])/2 + z/(1 + Inactive[ContinuedFractionK][-((k*z)/(1 + k)^2), 1 + (k*z)/(1 + k)^2, {k, 1, Infinity}]), Element[z, Complexes] && Abs[Arg[z]] < Pi]

(* {"Factorial2Ratio", 1}*)
ConditionalExpression[(2*z)!!^2/(-1 + 2*z)!!^2 == Pi*z*(1 + 2/(-1 + 8*z + Inactive[ContinuedFractionK][-1 + 4*k^2, 8*z, {k, 1, Infinity}])), Element[z, Integers] && z > 0]

(* {"Factorial2Ratio", 3}*)
ConditionalExpression[(-1 + 2*z)!!^2/(2*z)!!^2 == ((-1 + 2*z)*(1 + 2/(-5 + 8*z + Inactive[ContinuedFractionK][-1 + 4*k^2, 4*(-1 + 2*z), {k, 1, Infinity}])))/(2*Pi*z^2), Element[z, Integers] && z > 0]

(* {"FactorialRatio", 1}*)
ConditionalExpression[(2*z)!^2/z!^4 == 4^(1 + 2*z)/(Pi*(1 + 4*z + Inactive[ContinuedFractionK][(-1 + 2*k)^2, 2*(1 + 4*z), {k, 1, Infinity}])), Element[z, Complexes] && Abs[Arg[z]] < Pi]

(* {"Fibonacci", 1}*)
ConditionalExpression[Fibonacci[\[Nu]] == (2*\[Nu]*ArcCsch[2])/(Sqrt[5]*(1 + Inactive[ContinuedFractionK][(\[Nu]*(-((-I)*Pi - ArcCsch[2])^(1 + k) - (I*Pi - ArcCsch[2])^(1 + k) + 2*ArcCsch[2]^(1 + k)))/((1 + k)*(((-I)*Pi - ArcCsch[2])^k + (I*Pi - ArcCsch[2])^k - 2*ArcCsch[2]^k)), 1 - (\[Nu]*(-((-I)*Pi - ArcCsch[2])^(1 + k) - (I*Pi - ArcCsch[2])^(1 + k) + 2*ArcCsch[2]^(1 + k)))/((1 + k)*(((-I)*Pi - ArcCsch[2])^k + (I*Pi - ArcCsch[2])^k - 2*ArcCsch[2]^k)), {k, 1, Infinity}])), Element[\[Nu], Complexes]]

(* {"Fibonacci2", 1}*)
ConditionalExpression[Fibonacci[\[Nu], z] == (2*\[Nu]*Log[(z + Sqrt[4 + z^2])/2])/(Sqrt[4 + z^2]*(1 + Inactive[ContinuedFractionK][-((\[Nu]*k!*(1 + ((-1)^k*((1 - (I*Pi)/Log[(z + Sqrt[4 + z^2])/2])^(1 + k) + (1 + (I*Pi)/Log[(z + Sqrt[4 + z^2])/2])^(1 + k)))/2)*Log[(z + Sqrt[4 + z^2])/2])/((1 + k)!*(1 - ((-1)^k*((1 - (I*Pi)/Log[(z + Sqrt[4 + z^2])/2])^k + (1 + (I*Pi)/Log[(z + Sqrt[4 + z^2])/2])^k))/2))), 1 + (\[Nu]*k!*(1 + ((-1)^k*((1 - (I*Pi)/Log[(z + Sqrt[4 + z^2])/2])^(1 + k) + (1 + (I*Pi)/Log[(z + Sqrt[4 + z^2])/2])^(1 + k)))/2)*Log[(z + Sqrt[4 + z^2])/2])/((1 + k)!*(1 - ((-1)^k*((1 - (I*Pi)/Log[(z + Sqrt[4 + z^2])/2])^k + (1 + (I*Pi)/Log[(z + Sqrt[4 + z^2])/2])^k))/2)), {k, 1, Infinity}])), Element[\[Nu] | z, Complexes]]

(* {"Fibonacci2", 2}*)
ConditionalExpression[Fibonacci[v, z] == Sin[(CalculateData`Private`nu*Pi)/2]^2/(1 + Inactive[ContinuedFractionK][-((z*Gamma[(1 + k - CalculateData`Private`nu)/2]*Gamma[(1 + k + CalculateData`Private`nu)/2]*Tan[((k - CalculateData`Private`nu)*Pi)/2])/(k*Gamma[(k - CalculateData`Private`nu)/2]*Gamma[(k + CalculateData`Private`nu)/2])), 1 + (z*Gamma[(1 + k - CalculateData`Private`nu)/2]*Gamma[(1 + k + CalculateData`Private`nu)/2]*Tan[((k - CalculateData`Private`nu)*Pi)/2])/(k*Gamma[(k - CalculateData`Private`nu)/2]*Gamma[(k + CalculateData`Private`nu)/2]), {k, 1, Infinity}]), Element[CalculateData`Private`nu | z, Complexes]]

(* {"FresnelC", 1}*)
ConditionalExpression[FresnelC[z] == z/(1 + Inactive[ContinuedFractionK][-((3 - 4*k)*Pi^2*z^4)/(8*k*(-1 + 2*k)*(1 + 4*k)), 1 + ((3 - 4*k)*Pi^2*z^4)/(8*k*(-1 + 2*k)*(1 + 4*k)), {k, 1, Infinity}]), Element[z, Complexes]]

(* {"FresnelCCompound", 1}*)
ConditionalExpression[FresnelC[z] + I*FresnelS[z] == (E^((I/2)*Pi*z^2)*z)/(1 + Inactive[ContinuedFractionK][(((I/2)*(1 - (-1)^k)*k*Pi)/(-1 + 4*k^2) - ((I/2)*(1 + (-1)^k)*k*Pi)/(-1 + 4*k^2))*z^2, 1, {k, 1, Infinity}]), Element[z, Complexes]]

(* {"FresnelCCompound", 2}*)
ConditionalExpression[FresnelC[z] + I*FresnelS[z] == (E^((I/2)*Pi*z^2)*z)/(1 + I*Pi*z^2 + Inactive[ContinuedFractionK][((2*I)*k*Pi*z^2)/(1 - 4*k^2), 1 + (I*Pi*z^2)/(1 + 2*k), {k, 1, Infinity}]), Element[z, Complexes]]

(* {"FresnelS", 1}*)
ConditionalExpression[FresnelS[z] == (Pi*z^3)/(6*(1 + Inactive[ContinuedFractionK][((-1 + 4*k)*Pi^2*z^4)/(8*k*(1 + 2*k)*(3 + 4*k)), 1 - ((-1 + 4*k)*Pi^2*z^4)/(8*k*(1 + 2*k)*(3 + 4*k)), {k, 1, Infinity}])), Element[z, Complexes]]

(* {"Gamma2", 1}*)
ConditionalExpression[Gamma[a, z] == Gamma[a] - z^a/(E^z*(a + Inactive[ContinuedFractionK][(-1)^k*z*(a^((1 - (-1)^k)/2) + Floor[(-1 + k)/2]), a + k, {k, 1, Infinity}])), Element[a | z, Complexes] &&  !(Element[z, Reals] && z < 0)]

(* {"Gamma2", 2}*)
ConditionalExpression[Gamma[a, z] == z^(-1 + a)/(E^z*(1 + Inactive[ContinuedFractionK][(((1 + (-1)^k)*k)/4 + ((1 - (-1)^k)*(-a + (1 + k)/2))/2)/z, 1, {k, 1, Infinity}])), Element[a | z, Complexes] &&  !(Element[z, Reals] && z < 0)]

(* {"Gamma2", 3}*)
ConditionalExpression[Gamma[a, z] == (z^a*(z^(-1 + r)/(Pochhammer[a, r]*(1 + Inactive[ContinuedFractionK][(((1 + (-1)^k)*k)/4 + ((1 - (-1)^k)*(-a + (1 + k)/2 - r))/2)/z, 1, {k, 1, Infinity}])) - Inactive[Sum][z^k/Pochhammer[a, 1 + k], {k, 0, -1 + r}]))/E^z, Element[r, Integers] && Element[a | z, Complexes] &&  !(Element[z, Reals] && z < 0) && r >= 0]

(* {"Gamma2", 4}*)
ConditionalExpression[Gamma[a, z] == (z^a*(((-1)^r*z^(-1 - r)*Pochhammer[1 - a, r])/(1 + Inactive[ContinuedFractionK][(((1 + (-1)^k)*k)/4 + ((1 - (-1)^k)*(-a + (1 + k)/2 + r))/2)/z, 1, {k, 1, Infinity}]) - Inactive[Sum][Pochhammer[1 - a, -1 + k]/(-z)^k, {k, 1, r}]))/E^z, Element[r, Integers] && Element[a | z, Complexes] &&  !(Element[z, Reals] && z < 0) && r >= 0]

(* {"Gamma2", 5}*)
ConditionalExpression[Gamma[a, z] == Gamma[a] - z^a/(a*E^z*(1 + Inactive[ContinuedFractionK][(-((1 - (-1)^k)*(a + (-1 + k)/2))/(2*(-1 + a + k)*(a + k)) + ((1 + (-1)^k)*k)/(4*(-1 + a + k)*(a + k)))*z, 1, {k, 1, Infinity}])), Element[a | z, Complexes] &&  !(Element[z, Reals] && z < 0)]

(* {"Gamma2", 6}*)
ConditionalExpression[Gamma[a, z] == Gamma[a] - (z^a*(z^r/(Pochhammer[a, 1 + r]*(1 + Inactive[ContinuedFractionK][(((1 + (-1)^k)*k)/(4*(-1 + a + k + r)*(a + k + r)) - ((1 - (-1)^k)*(a + (1 + k)/2))/(2*(-1 + a + k + r)*(a + k + r)))*z, 1, {k, 1, Infinity}])) + Inactive[Sum][z^k/Pochhammer[a, 1 + k], {k, 0, -1 + r}]))/E^z, Element[r, Integers] && Element[a | z, Complexes] &&  !(Element[z, Reals] && z < 0) && r >= 0]

(* {"Gamma2", 7}*)
ConditionalExpression[Gamma[a, z] == Gamma[a] - (z^a*(-(((-1)^r*Pochhammer[1 - a, -1 + r])/(z^r*(1 + Inactive[ContinuedFractionK][(((1 + (-1)^k)*k)/(4*(-1 + a + k - r)*(a + k - r)) - ((1 - (-1)^k)*(a + (-1 + k)/2 - r))/(2*(-1 + a + k - r)*(a + k - r)))*z, 1, {k, 1, Infinity}]))) + Inactive[Sum][Pochhammer[1 - a, -1 + k]/(-z)^k, {k, 1, r}]))/E^z, Element[r, Integers] && Element[a | z, Complexes] &&  !(Element[z, Reals] && z < 0) && r >= 0]

(* {"Gamma2", 8}*)
ConditionalExpression[Gamma[a, z] == z^a/(E^z*(z + Inactive[ContinuedFractionK][2^((-1 - (-1)^k)/2)*k^((1 + (-1)^k)/2)*(-a + (1 + k)/2)^((1 - (-1)^k)/2), z^((1 + (-1)^k)/2), {k, 1, Infinity}])), Element[a | z, Complexes] &&  !(Element[z, Reals] && z < 0)]

(* {"Gamma2", 9}*)
ConditionalExpression[Gamma[a, z] == z^a/(E^z*(1 - a + z + Inactive[ContinuedFractionK][-(k*(-a + k)), 1 - a + 2*k + z, {k, 1, Infinity}])), Element[a | z, Complexes] &&  !(Element[z, Reals] && z < 0)]

(* {"Gamma2", 10}*)
ConditionalExpression[Gamma[a, z] == (z^(-1 + a)*(1 + (-1 + a)/(2 - a + z + Inactive[ContinuedFractionK][-(k*(1 - a + k)), 2 - a + 2*k + z, {k, 1, Infinity}])))/E^z, Element[a | z, Complexes] &&  !(Element[z, Reals] && z < 0)]

(* {"Gamma2", 11}*)
ConditionalExpression[Gamma[a, z] == Gamma[a] - z^a/(E^z*(a - z + Inactive[ContinuedFractionK][k*z, a + k - z, {k, 1, Infinity}])), Element[a | z, Complexes] &&  !(Element[z, Reals] && z < 0)]

(* {"Gamma2", 12}*)
ConditionalExpression[Gamma[a, z] == Gamma[a] - z^a/(E^z*(a + Inactive[ContinuedFractionK][(1 - a - k)*z, a + k + z, {k, 1, Infinity}])), Element[a | z, Complexes] &&  !(Element[z, Reals] && z < 0)]

(* {"Gamma2", 13}*)
ConditionalExpression[Gamma[a, z] == Gamma[a] - (z^a*(z^r/(Pochhammer[a, r]*(a + r - z + Inactive[ContinuedFractionK][k*z, a + k + r - z, {k, 1, Infinity}])) + Inactive[Sum][z^k/Pochhammer[a, 1 + k], {k, 0, -1 + r}]))/E^z, Element[r, Integers] && Element[a | z, Complexes] &&  !(Element[z, Reals] && z < 0) && r >= 0]

(* {"Gamma2", 14}*)
ConditionalExpression[Gamma[a, z] == Gamma[a] - (z^a*(((-1)^r*Pochhammer[1 - a, r])/(z^r*(a - r - z + Inactive[ContinuedFractionK][k*z, a + k - r - z, {k, 1, Infinity}])) + Inactive[Sum][Pochhammer[1 - a, -1 + k]/(-z)^k, {k, 1, r}]))/E^z, Element[r, Integers] && Element[a | z, Complexes] &&  !(Element[z, Reals] && z < 0) && r >= 0]

(* {"Gamma2", 15}*)
ConditionalExpression[Gamma[0, z] == 1/(E^z*z*(1 + Inactive[ContinuedFractionK][Floor[(1 + k)/2]/z, 1, {k, 1, Infinity}])), Element[z, Complexes] &&  !(Element[z, Reals] && z < 0)]

(* {"Gamma2", 16}*)
ConditionalExpression[E^z*Gamma[0, z] == (z + Inactive[ContinuedFractionK][Floor[(1 + k)/2], (1 - (-1)^k + z + (-1)^k*z)/2, {k, 1, Infinity}])^(-1), Element[z, Complexes] &&  !(Element[z, Reals] && z < 0)]

(* {"Gamma2", 17}*)
ConditionalExpression[E^z*Gamma[0, z] == (1 + z + Inactive[ContinuedFractionK][-k^2, 1 + 2*k + z, {k, 1, Infinity}])^(-1), Element[z, Complexes] &&  !(Element[z, Reals] && z < 0)]

(* {"Gamma2", 18}*)
ConditionalExpression[Gamma[0, z] == (((-1)^r*r!)/(z^r*(1 + r + z + Inactive[ContinuedFractionK][-(k*(k + r)), 1 + 2*k + r + z, {k, 1, Infinity}])) + Inactive[Sum][(-1)^k*z^(-1 - k)*k!, {k, 0, -1 + r}])/E^z, Element[r, Integers] && Element[z, Complexes] &&  !(Element[z, Reals] && z < 0) && r >= 0]

(* {"Gamma2", 19}*)
ConditionalExpression[Gamma[1 + z, z] == (z^z*(1 + z/(1 + Inactive[ContinuedFractionK][k*(-k + z), 1 + 2*k, {k, 1, Infinity}])))/E^z, Element[z, Complexes] &&  !(Element[z, Reals] && z < 0)]

(* {"Gamma2", 20}*)
ConditionalExpression[Gamma[1 + z, z] == (z^z*(2 + (-1 + z)/(2 + Inactive[ContinuedFractionK][k*(-1 - k + z), 2 + 2*k, {k, 1, Infinity}])))/E^z, Element[z, Complexes] &&  !(Element[z, Reals] && z < 0)]

(* {"Gamma2", 21}*)
ConditionalExpression[Gamma[1 + z, z] == Gamma[1 + z] - (2*z^(1 + z))/(E^z*(2 + Inactive[ContinuedFractionK][(2 + k)*z, 2 + k, {k, 1, Infinity}])), Element[z, Complexes] &&  !(Element[z, Reals] && z < 0)]

(* {"Gamma2", 22}*)
ConditionalExpression[Gamma[a, z] == Gamma[a] - z^a/(a*(1 + Inactive[ContinuedFractionK][((-1 + a + k)*z)/(k*(a + k)), 1 - ((-1 + a + k)*z)/(k*(a + k)), {k, 1, Infinity}])), Element[a | z, Complexes] &&  !(Element[z, Reals] && z < 0)]

(* {"Gamma2", 23}*)
ConditionalExpression[Gamma[-m, z] == ((-1)^m*(-Log[z] + PolyGamma[0, 1 + m]))/m! + 1/(m*z^m*(1 + Inactive[ContinuedFractionK][((-1 + k - m)*z)/(k*(k - m)), 1 - ((-1 + k - m)*z)/(k*(k - m)), {k, 1, -1 + m}])) + ((-1)^m*z)/((1 + m)!*(1 + Inactive[ContinuedFractionK][(k*z)/((1 + k)*(1 + k + m)), 1 - (k*z)/((1 + k)*(1 + k + m)), {k, 1, Infinity}])), Element[m, Integers] && Element[z, Complexes] && m > 0]

(* {"Gamma2Compound", 1}*)
ConditionalExpression[(Gamma[a] - Gamma[a, z])^(-1) == (E^z*(a - z + Inactive[ContinuedFractionK][k*z, a + k - z, {k, 1, Infinity}]))/z^a, Element[a | z, Complexes] &&  !(Element[z, Reals] && z < 0)]

(* {"Gamma3", 1}*)
ConditionalExpression[Gamma[a, 0, z] == z^a/(E^z*(a + Inactive[ContinuedFractionK][(-1)^k*z*(a^((1 - (-1)^k)/2) + Floor[(-1 + k)/2]), a + k, {k, 1, Infinity}])), Element[a | z, Complexes] &&  !(Element[z, Reals] && z < 0)]

(* {"Gamma3", 2}*)
ConditionalExpression[Gamma[a, 0, z] == Gamma[a] - z^(-1 + a)/(E^z*(1 + Inactive[ContinuedFractionK][(((1 + (-1)^k)*k)/4 + ((1 - (-1)^k)*(-a + (1 + k)/2))/2)/z, 1, {k, 1, Infinity}])), Element[a | z, Complexes] &&  !(Element[z, Reals] && z < 0)]

(* {"Gamma3", 3}*)
ConditionalExpression[Gamma[a, 0, z] == Gamma[a] - (z^a*(z^(-1 + r)/(Pochhammer[a, r]*(1 + Inactive[ContinuedFractionK][(((1 + (-1)^k)*k)/4 + ((1 - (-1)^k)*(-a + (1 + k)/2 - r))/2)/z, 1, {k, 1, Infinity}])) - Inactive[Sum][z^k/Pochhammer[a, 1 + k], {k, 0, -1 + r}]))/E^z, Element[r, Integers] && Element[a | z, Complexes] &&  !(Element[z, Reals] && z < 0) && r >= 0]

(* {"Gamma3", 4}*)
ConditionalExpression[Gamma[a, 0, z] == Gamma[a] - (z^a*(((-1)^r*z^(-1 - r)*Pochhammer[1 - a, r])/(1 + Inactive[ContinuedFractionK][(((1 + (-1)^k)*k)/4 + ((1 - (-1)^k)*(-a + (1 + k)/2 + r))/2)/z, 1, {k, 1, Infinity}]) - Inactive[Sum][Pochhammer[1 - a, -1 + k]/(-z)^k, {k, 1, r}]))/E^z, Element[r, Integers] && Element[a | z, Complexes] &&  !(Element[z, Reals] && z < 0) && r >= 0]

(* {"Gamma3", 5}*)
ConditionalExpression[Gamma[a, 0, z] == z^a/(a*E^z*(1 + Inactive[ContinuedFractionK][(-((1 - (-1)^k)*(a + (-1 + k)/2))/(2*(-1 + a + k)*(a + k)) + ((1 + (-1)^k)*k)/(4*(-1 + a + k)*(a + k)))*z, 1, {k, 1, Infinity}])), Element[a | z, Complexes] &&  !(Element[z, Reals] && z < 0)]

(* {"Gamma3", 6}*)
ConditionalExpression[Gamma[a, 0, z] == (z^a*(z^r/(Pochhammer[a, 1 + r]*(1 + Inactive[ContinuedFractionK][(((1 + (-1)^k)*k)/(4*(-1 + a + k + r)*(a + k + r)) - ((1 - (-1)^k)*(a + (1 + k)/2))/(2*(-1 + a + k + r)*(a + k + r)))*z, 1, {k, 1, Infinity}])) + Inactive[Sum][z^k/Pochhammer[a, 1 + k], {k, 0, -1 + r}]))/E^z, Element[r, Integers] && Element[a | z, Complexes] &&  !(Element[z, Reals] && z < 0) && r >= 0]

(* {"Gamma3", 7}*)
ConditionalExpression[Gamma[a, 0, z] == (z^a*(-(((-1)^r*Pochhammer[1 - a, -1 + r])/(z^r*(1 + Inactive[ContinuedFractionK][(((1 + (-1)^k)*k)/(4*(-1 + a + k - r)*(a + k - r)) - ((1 - (-1)^k)*(a + (-1 + k)/2 - r))/(2*(-1 + a + k - r)*(a + k - r)))*z, 1, {k, 1, Infinity}]))) + Inactive[Sum][Pochhammer[1 - a, -1 + k]/(-z)^k, {k, 1, r}]))/E^z, Element[r, Integers] && Element[a | z, Complexes] &&  !(Element[z, Reals] && z < 0) && r >= 0]

(* {"Gamma3", 8}*)
ConditionalExpression[Gamma[a, 0, z] == Gamma[a] - z^a/(E^z*(z + Inactive[ContinuedFractionK][2^((-1 - (-1)^k)/2)*k^((1 + (-1)^k)/2)*(-a + (1 + k)/2)^((1 - (-1)^k)/2), z^((1 + (-1)^k)/2), {k, 1, Infinity}])), Element[a | z, Complexes] &&  !(Element[z, Reals] && z < 0)]

(* {"Gamma3", 9}*)
ConditionalExpression[Gamma[a, 0, z] == Gamma[a] - z^a/(E^z*(1 - a + z + Inactive[ContinuedFractionK][-(k*(-a + k)), 1 - a + 2*k + z, {k, 1, Infinity}])), Element[a | z, Complexes] &&  !(Element[z, Reals] && z < 0)]

(* {"Gamma3", 10}*)
ConditionalExpression[Gamma[a, 0, z] == Gamma[a] - (z^(-1 + a)*(1 + (-1 + a)/(2 - a + z + Inactive[ContinuedFractionK][-(k*(1 - a + k)), 2 - a + 2*k + z, {k, 1, Infinity}])))/E^z, Element[a | z, Complexes] &&  !(Element[z, Reals] && z < 0)]

(* {"Gamma3", 11}*)
ConditionalExpression[Gamma[a, 0, z] == z^a/(E^z*(a - z + Inactive[ContinuedFractionK][k*z, a + k - z, {k, 1, Infinity}])), Element[a | z, Complexes] &&  !(Element[z, Reals] && z < 0)]

(* {"Gamma3", 12}*)
ConditionalExpression[Gamma[a, 0, z] == z^a/(E^z*(a + Inactive[ContinuedFractionK][(1 - a - k)*z, a + k + z, {k, 1, Infinity}])), Element[a | z, Complexes] &&  !(Element[z, Reals] && z < 0)]

(* {"Gamma3", 13}*)
ConditionalExpression[Gamma[a, 0, z] == (z^a*(z^r/(Pochhammer[a, r]*(a + r - z + Inactive[ContinuedFractionK][k*z, a + k + r - z, {k, 1, Infinity}])) + Inactive[Sum][z^k/Pochhammer[a, 1 + k], {k, 0, -1 + r}]))/E^z, Element[r, Integers] && Element[a | z, Complexes] &&  !(Element[z, Reals] && z < 0) && r >= 0]

(* {"Gamma3", 14}*)
ConditionalExpression[Gamma[a, 0, z] == (z^a*(((-1)^r*Pochhammer[1 - a, r])/(z^r*(a - r - z + Inactive[ContinuedFractionK][k*z, a + k - r - z, {k, 1, Infinity}])) + Inactive[Sum][Pochhammer[1 - a, -1 + k]/(-z)^k, {k, 1, r}]))/E^z, Element[r, Integers] && Element[a | z, Complexes] &&  !(Element[z, Reals] && z < 0) && r >= 0]

(* {"Gamma3", 15}*)
ConditionalExpression[Gamma[a, 0, z]^(-1) == (E^z*(a - z + Inactive[ContinuedFractionK][k*z, a + k - z, {k, 1, Infinity}]))/z^a, Element[a | z, Complexes] &&  !(Element[z, Reals] && z < 0)]

(* {"GammaRatio", 1}*)
ConditionalExpression[(Gamma[z]*Gamma[1 + z])/Gamma[1/2 + z]^2 == 1 + 2/(-1 + 8*z + Inactive[ContinuedFractionK][(-1 + 2*k)*(1 + 2*k), 8*z, {k, 1, Infinity}]), Element[z, Complexes] && Re[z] > 1]

(* {"GammaRatio", 2}*)
ConditionalExpression[Gamma[(1 + z)/4]^2/Gamma[(3 + z)/4]^2 == 4/(z + Inactive[ContinuedFractionK][(-1 + 2*k)^2, 2*z, {k, 1, Infinity}]), Element[z, Reals] && z > 4]

(* {"GammaRatio", 3}*)
ConditionalExpression[Gamma[(1 + z)/4]^4/Gamma[(3 + z)/4]^4 == 8/((-1 + z^2)/2 + Inactive[ContinuedFractionK][(-1 + 2*Floor[(1 + k)/2])^2, (1 - (-1)^k)/2 + ((1 + (-1)^k)*(-1 + z^2))/2, {k, 1, Infinity}]), Element[z, Complexes] && -Pi/2 < Arg[z] < Pi/2]

(* {"GammaRatio", 4}*)
ConditionalExpression[Gamma[z/2]^2/Gamma[(1 + z)/2]^2 == (2*(1 + 2/(-1 + 4*z + Inactive[ContinuedFractionK][-1 + 4*k^2, 4*z, {k, 1, Infinity}])))/z, Element[z, Complexes] && Re[z] > 1]

(* {"GammaRatio", 5}*)
ConditionalExpression[((-1 + 2*z)*Gamma[-1/2 + z]^2)/Gamma[z]^2 == 2 + 4/(-5 + 8*z + Inactive[ContinuedFractionK][(-1 + 2*k)*(1 + 2*k), -4 + 8*z, {k, 1, Infinity}]), Element[z, Complexes] && Re[z] > 1]

(* {"GammaRatio", 6}*)
ConditionalExpression[Gamma[z/4]^2/Gamma[(2 + z)/4]^2 == 4/z + 4/(z*(-1/2 + z + Inactive[ContinuedFractionK][-1/4 + k^2, z, {k, 1, Infinity}])), Element[z, Complexes] && Re[z] > 0]

(* {"GammaRatio", 7}*)
ConditionalExpression[Gamma[z/4]^2/Gamma[(2 + z)/4]^2 == (4*(1 + 2/(-1 + 2*z + Inactive[ContinuedFractionK][(-1 + 2*k)*(1 + 2*k), 2*z, {k, 1, Infinity}])))/z, Element[z, Complexes] && Re[z] > 1]

(* {"GammaRatio", 8}*)
ConditionalExpression[Gamma[z/4]^2/Gamma[(2 + z)/4]^2 == 4/(-1 + z + Inactive[ContinuedFractionK][(-1 + 2*k)^2, 2*(-1 + z), {k, 1, Infinity}]), Element[z, Complexes] && Re[z] > 1]

(* {"GammaRatio", 9}*)
ConditionalExpression[Gamma[(3 + z)/4]^2/Gamma[(1 + z)/4]^2 == z/4 + 1/(8*(z + Inactive[ContinuedFractionK][k*(1/2 + k)^2*(1 + k), (1 + k)*z, {k, 1, Infinity}])), Element[z, Complexes] && Re[z] > 1]

(* {"GammaRatio", 10}*)
ConditionalExpression[Gamma[(3 + z)/4]^2/Gamma[(1 + z)/4]^2 == (z + Inactive[ContinuedFractionK][(-1 + 2*k)^2, 2*z, {k, 1, Infinity}])/4, Element[z, Complexes] && Re[z] > 1]

(* {"GammaRatio", 11}*)
ConditionalExpression[Gamma[1/2 + z]^2/Gamma[z]^2 == (-1 + 4*z + (-2 + 8*z + Inactive[ContinuedFractionK][(1 + 2*k)^2, -2 + 8*z, {k, 1, Infinity}])^(-1))/4, Element[z, Complexes] && Re[z] > 0]

(* {"GammaRatio", 12}*)
ConditionalExpression[Gamma[1 + z]^2/Gamma[1/2 + z]^2 == (1 + 4*z + (2 + 8*z + Inactive[ContinuedFractionK][(1 + 2*k)^2, 2 + 8*z, {k, 1, Infinity}])^(-1))/4, Element[z, Complexes] && Re[z] > 0]

(* {"GammaRatio", 13}*)
ConditionalExpression[(Gamma[(1 - a + z)/4]*Gamma[(1 + a + z)/4])/(Gamma[(3 - a + z)/4]*Gamma[(3 + a + z)/4]) == 4/(z + Inactive[ContinuedFractionK][-a^2 + (-1 + 2*k)^2, 2*z, {k, 1, Infinity}]), Element[z | a, Complexes] && Re[a] > 0 && Re[z] > 1]

(* {"GammaRatio", 14}*)
ConditionalExpression[(Gamma[(1 + z)/8]*Gamma[(3 + z)/8])/(Gamma[(5 + z)/8]*Gamma[(7 + z)/8]) == 8/(z + Inactive[ContinuedFractionK][(1 + 4*(-1 + k))*(3 + 4*(-1 + k)), 2*z, {k, 1, Infinity}]), Element[z | a, Complexes] && Re[a] > 0 && Re[z] > 1]

(* {"GammaRatio", 15}*)
ConditionalExpression[(Gamma[(6 - 2*a + z)/8]*Gamma[(6 + 2*a + z)/8])/(Gamma[(2 - 2*a + z)/8]*Gamma[(2 + 2*a + z)/8]) == (z*(1 + (2*(1 - a^2))/(z^2 + Inactive[ContinuedFractionK][-a^2 + (1 + 2*k)^2, z^(1 + (-1)^k), {k, 1, Infinity}])))/8, Element[z | a, Complexes] && Abs[a] < 1 && Re[z] > 1]

(* {"GammaRatio", 16}*)
ConditionalExpression[(Gamma[(6 - 2*a + z)/4]*Gamma[(2*a + z)/4])/(Gamma[(4 - 2*a + z)/4]*Gamma[(-2 + 2*a + z)/4]) == z/4 - ((-2 + a)*(-1 + a))/(2*(z + Inactive[ContinuedFractionK][k*(1 + k)*(2 - a + k)*(-1 + a + k), (1 + k)*z, {k, 1, Infinity}])), Element[z | a, Complexes] && Abs[a] > 1 && Re[z] > 1]

(* {"GammaRatio", 17}*)
ConditionalExpression[(Gamma[(3 - a + z)/4]*Gamma[(3 + a + z)/4])/(Gamma[(1 - a + z)/4]*Gamma[(1 + a + z)/4]) == (z + Inactive[ContinuedFractionK][-a^2 + (-1 + 2*k)^2, 2*z, {k, 1, Infinity}])/4, Element[z | a, Complexes] && Re[z] > 0 && Abs[a] < 1]

(* {"GammaRatio", 18}*)
ConditionalExpression[(Gamma[(1 - a + z)/4]^2*Gamma[(1 + a + z)/4]^2)/(Gamma[(3 - a + z)/4]^2*Gamma[(3 + a + z)/4]^2) == 8/((-1 + a^2 + z^2)/2 + Inactive[ContinuedFractionK][((1 + (-1)^k)*(-1 + k)^2)/2 + ((1 - (-1)^k)*(-a^2 + k^2))/2, (1 - (-1)^k)/2 + ((1 + (-1)^k)*(-1 + z^2))/2, {k, 1, Infinity}]), Element[z | a, Complexes] && Inequality[-Pi/2, Less, Arg[a], LessEqual, Pi/2] && Inequality[-Pi/2, Less, Arg[z], LessEqual, Pi/2]]

(* {"GammaRatio", 19}*)
ConditionalExpression[(-4*Gamma[(3 - (2*I)*a + z)/2]*Gamma[(3 + (2*I)*a + z)/2] + (4*a^2 + (1 + z)^2)*Gamma[(1 - 2*a + z)/2]*Gamma[(1 + 2*a + z)/2])/(4*Gamma[(3 - (2*I)*a + z)/2]*Gamma[(3 + (2*I)*a + z)/2] + (4*a^2 + (1 + z)^2)*Gamma[(1 - 2*a + z)/2]*Gamma[(1 + 2*a + z)/2]) == (2*a^2)/(z + Inactive[ContinuedFractionK][4*a^4 + k^4, (1 + 2*k)*z, {k, 1, Infinity}]), Element[z | a, Complexes] && Inequality[-Pi/2, Less, Arg[a], LessEqual, Pi/2] && Inequality[-Pi/2, Less, Arg[z], LessEqual, Pi/2]]

(* {"GammaRatio", 20}*)
ConditionalExpression[(Gamma[1 - a + z]*Gamma[1 + ((1 - I*Sqrt[3])*a)/2 + z]*Gamma[1 + ((1 + I*Sqrt[3])*a)/2 + z])/(Gamma[1 + a + z]*Gamma[1 + ((-1 + I*Sqrt[3])*a)/2 + z]*Gamma[1 - ((1 + I*Sqrt[3])*a)/2 + z]) == 1 + (2*a^3)/(1 - a^3 + 2*z + 2*z^2 + Inactive[ContinuedFractionK][a^6 - k^6, (1 + 2*k)*(1 + k + k^2 + 2*z + 2*z^2), {k, 1, Infinity}]), Element[z | a, Complexes] && Inequality[-Pi/2, Less, Arg[a], LessEqual, Pi/2] && Inequality[-Pi/2, Less, Arg[z], LessEqual, Pi/2]]

(* {"GammaRatio", 21}*)
ConditionalExpression[(-(Gamma[(1 + a - b + z)/2]*Gamma[(1 - a + b + z)/2]) + Gamma[(1 - a - b + z)/2]*Gamma[(1 + a + b + z)/2])/(Gamma[(1 + a - b + z)/2]*Gamma[(1 - a + b + z)/2] + Gamma[(1 - a - b + z)/2]*Gamma[(1 + a + b + z)/2]) == (a*b)/(z + Inactive[ContinuedFractionK][(a^2 - k^2)*(b^2 - k^2), (1 + 2*k)*z, {k, 1, Infinity}]), Element[z | a | b, Complexes] && Re[z] > 0]

(* {"GammaRatio", 22}*)
ConditionalExpression[(Gamma[(1 - a - b + z)/4]*Gamma[(1 + a - b + z)/4]*Gamma[(1 - a + b + z)/4]*Gamma[(1 + a + b + z)/4])/(Gamma[(3 - a - b + z)/4]*Gamma[(3 + a - b + z)/4]*Gamma[(3 - a + b + z)/4]*Gamma[(3 + a + b + z)/4]) == 8/((-1 - a^2 + b^2 + z^2)/2 + Inactive[ContinuedFractionK][((1 + (-1)^k)*(-a^2 + (-1 + k)^2))/2 + ((1 - (-1)^k)*(-b^2 + k^2))/2, (1 - (-1)^k)/2 + ((1 + (-1)^k)*(-1 + z^2))/2, {k, 1, Infinity}]), Element[z | a | b, Complexes] && Re[z] > 0]

(* {"GammaRatio", 23}*)
ConditionalExpression[(Gamma[(1 - a - b + z)/4]*Gamma[(3 + a - b + z)/4]*Gamma[(1 - a + b + z)/4]*Gamma[(3 + a + b + z)/4])/(Gamma[(3 - a - b + z)/4]*Gamma[(1 + a - b + z)/4]*Gamma[(3 - a + b + z)/4]*Gamma[(1 + a + b + z)/4]) == 1 + (2*a)/(-a + z + Inactive[ContinuedFractionK][-((1 + (-1)^k)*a^2)/2 - ((1 - (-1)^k)*b^2)/2 + k^2, z, {k, 1, Infinity}]), Element[z | a | b, Complexes] && Re[z] > 1]

(* {"GammaRatio", 24}*)
ConditionalExpression[(1 - (Gamma[(3 - a - b + z)/4]*Gamma[(1 + a - b + z)/4]*Gamma[(3 - a + b + z)/4]*Gamma[(1 + a + b + z)/4])/(Gamma[(1 - a - b + z)/4]*Gamma[(3 + a - b + z)/4]*Gamma[(1 - a + b + z)/4]*Gamma[(3 + a + b + z)/4]))/(1 + (Gamma[(3 - a - b + z)/4]*Gamma[(1 + a - b + z)/4]*Gamma[(3 - a + b + z)/4]*Gamma[(1 + a + b + z)/4])/(Gamma[(1 - a - b + z)/4]*Gamma[(3 + a - b + z)/4]*Gamma[(1 - a + b + z)/4]*Gamma[(3 + a + b + z)/4])) == a/(z + Inactive[ContinuedFractionK][((1 + (-1)^k)*(-a^2 + k^2))/2 + ((1 - (-1)^k)*(-b^2 + k^2))/2, z, {k, 1, Infinity}]), Element[z | a | b, Complexes] && Re[z] > 1]

(* {"GammaRatio", 25}*)
ConditionalExpression[(1 - (Gamma[(3 - a - b + z)/4]*Gamma[(1 + a - b + z)/4]*Gamma[(1 - a + b + z)/4]*Gamma[(3 + a + b + z)/4])/(Gamma[(1 - a - b + z)/4]*Gamma[(3 + a - b + z)/4]*Gamma[(3 - a + b + z)/4]*Gamma[(1 + a + b + z)/4]))/(1 + (Gamma[(3 - a - b + z)/4]*Gamma[(1 + a - b + z)/4]*Gamma[(1 - a + b + z)/4]*Gamma[(3 + a + b + z)/4])/(Gamma[(1 - a - b + z)/4]*Gamma[(3 + a - b + z)/4]*Gamma[(3 - a + b + z)/4]*Gamma[(1 + a + b + z)/4])) == (a*b)/(-1 - a^2 + z^2 + Inactive[ContinuedFractionK][((1 + (-1)^k)*(-a^2 + k^2))/2 + ((1 - (-1)^k)*(-b^2 + (1 + k)^2))/2, (1 - (-1)^k)/2 + ((1 + (-1)^k)*(-1 + z^2))/2, {k, 1, Infinity}]), Element[z | a | b, Complexes] && Re[z] > 1]

(* {"GammaRatio", 26}*)
ConditionalExpression[(-(Gamma[(1 + a + b - c - d - h)/2]*Gamma[(1 + a - b + c - d - h)/2]*Gamma[(1 + a - b - c + d - h)/2]*Gamma[(1 + a + b + c + d - h)/2]*Gamma[(1 + a - b - c - d + h)/2]*Gamma[(1 + a + b + c - d + h)/2]*Gamma[(1 + a + b - c + d + h)/2]*Gamma[(1 + a - b + c + d + h)/2]) + Gamma[(1 + a - b - c - d - h)/2]*Gamma[(1 + a + b + c - d - h)/2]*Gamma[(1 + a + b - c + d - h)/2]*Gamma[(1 + a - b + c + d - h)/2]*Gamma[(1 + a + b - c - d + h)/2]*Gamma[(1 + a - b + c - d + h)/2]*Gamma[(1 + a - b - c + d + h)/2]*Gamma[(1 + a + b + c + d + h)/2])/(Gamma[(1 + a + b - c - d - h)/2]*Gamma[(1 + a - b + c - d - h)/2]*Gamma[(1 + a - b - c + d - h)/2]*Gamma[(1 + a + b + c + d - h)/2]*Gamma[(1 + a - b - c - d + h)/2]*Gamma[(1 + a + b + c - d + h)/2]*Gamma[(1 + a + b - c + d + h)/2]*Gamma[(1 + a - b + c + d + h)/2] + Gamma[(1 + a - b - c - d - h)/2]*Gamma[(1 + a + b + c - d - h)/2]*Gamma[(1 + a + b - c + d - h)/2]*Gamma[(1 + a - b + c + d - h)/2]*Gamma[(1 + a + b - c - d + h)/2]*Gamma[(1 + a - b + c - d + h)/2]*Gamma[(1 + a - b - c + d + h)/2]*Gamma[(1 + a + b + c + d + h)/2]) == (8*a*b*c*d*h)/(-4 - (-1 + a^2 + b^2 + c^2 + d^2 + h^2)^2 + 2*(1 + a^4 + b^4 + c^4 + d^4 + h^4) + Inactive[ContinuedFractionK][64*(a^2 - k^2)*(b^2 - k^2)*(c^2 - k^2)*(d^2 - k^2)*(h^2 - k^2), (1 + 2*k)*(2*(1 + a^4 + b^4 + c^4 + d^4 + h^4) - (-1 + a^2 + b^2 + c^2 + d^2 + h^2 - 2*k*(1 + k))^2 - (2 + 2*k*(1 + k))^2), {k, 1, Infinity}]), Element[a | b | c | d, Complexes] && Element[h, Integers]]

(* {"GammaRatio", 27}*)
ConditionalExpression[(1 - (Gamma[(1 + a - b - c + z)/2]*Gamma[(1 - a + b - c + z)/2]*Gamma[(1 - a - b + c + z)/2]*Gamma[(1 + a + b + c + z)/2])/(Gamma[(1 - a - b - c + z)/2]*Gamma[(1 + a + b - c + z)/2]*Gamma[(1 + a - b + c + z)/2]*Gamma[(1 - a + b + c + z)/2]))/(1 + (Gamma[(1 + a - b - c + z)/2]*Gamma[(1 - a + b - c + z)/2]*Gamma[(1 - a - b + c + z)/2]*Gamma[(1 + a + b + c + z)/2])/(Gamma[(1 - a - b - c + z)/2]*Gamma[(1 + a + b - c + z)/2]*Gamma[(1 + a - b + c + z)/2]*Gamma[(1 - a + b + c + z)/2])) == (2*a*b*c)/(1 - a^2 - b^2 - c^2 + z^2 + Inactive[ContinuedFractionK][4*(a^2 - k^2)*(b^2 - k^2)*(c^2 - k^2), (1 + 2*k)*(1 - a^2 - b^2 - c^2 + 2*k*(1 + k) + z^2), {k, 1, Infinity}]), Element[a | b | c | z, Complexes] && Re[z] > 1]

(* {"GammaRatio", 28}*)
ConditionalExpression[(-1 + (Gamma[(1 - 2*a + z)/4]*Gamma[(3 + 2*a + z)/4])/(Gamma[(3 - 2*a + z)/4]*Gamma[(1 + 2*a + z)/4]))/(1 + (Gamma[(1 - 2*a + z)/4]*Gamma[(3 + 2*a + z)/4])/(Gamma[(3 - 2*a + z)/4]*Gamma[(1 + 2*a + z)/4])) == a/(z + Inactive[ContinuedFractionK][-a^2 + k^2, z, {k, 1, Infinity}]), Element[z | a, Complexes] && Abs[a] < 1 && Re[z] > Max[0, -1 + 2*Re[a]]]

(* {"GammaRatio", 29}*)
ConditionalExpression[(-1 + (Gamma[(1 - a + z)/4]^2*Gamma[(3 + a + z)/4]^2)/(Gamma[(3 - a + z)/4]^2*Gamma[(1 + a + z)/4]^2))/(1 + (Gamma[(1 - a + z)/4]^2*Gamma[(3 + a + z)/4]^2)/(Gamma[(3 - a + z)/4]^2*Gamma[(1 + a + z)/4]^2)) == a/(z + Inactive[ContinuedFractionK][-((1 + (-1)^k)*a^2)/2 + k^2, z, {k, 1, Infinity}]), Element[z | a, Complexes] && Abs[a] < 2 && Re[z] > Max[0, -1 + Re[a]]]

(* {"GammaRegularized", 1}*)
ConditionalExpression[GammaRegularized[a, z] == 1 - z^a/(E^z*Gamma[a]*(a + Inactive[ContinuedFractionK][(-1)^k*z*(a^((1 - (-1)^k)/2) + Floor[(-1 + k)/2]), a + k, {k, 1, Infinity}])), Element[a | z, Complexes] &&  !(Element[z, Reals] && z < 0)]

(* {"GammaRegularized", 2}*)
ConditionalExpression[GammaRegularized[a, z] == z^(-1 + a)/(E^z*Gamma[a]*(1 + Inactive[ContinuedFractionK][(((1 + (-1)^k)*k)/4 + ((1 - (-1)^k)*(-a + (1 + k)/2))/2)/z, 1, {k, 1, Infinity}])), Element[a | z, Complexes] &&  !(Element[z, Reals] && z < 0)]

(* {"GammaRegularized", 3}*)
ConditionalExpression[GammaRegularized[a, z] == (z^a*(z^(-1 + r)/(Pochhammer[a, r]*(1 + Inactive[ContinuedFractionK][(((1 + (-1)^k)*k)/4 + ((1 - (-1)^k)*(-a + (1 + k)/2 - r))/2)/z, 1, {k, 1, Infinity}])) - Inactive[Sum][z^k/Pochhammer[a, 1 + k], {k, 0, -1 + r}]))/(E^z*Gamma[a]), Element[r, Integers] && Element[a | z, Complexes] &&  !(Element[z, Reals] && z < 0) && r >= 0]

(* {"GammaRegularized", 4}*)
ConditionalExpression[GammaRegularized[a, z] == (z^a*(((-1)^r*z^(-1 - r)*Pochhammer[1 - a, r])/(1 + Inactive[ContinuedFractionK][(((1 + (-1)^k)*k)/4 + ((1 - (-1)^k)*(-a + (1 + k)/2 + r))/2)/z, 1, {k, 1, Infinity}]) - Inactive[Sum][Pochhammer[1 - a, -1 + k]/(-z)^k, {k, 1, r}]))/(E^z*Gamma[a]), Element[r, Integers] && Element[a | z, Complexes] &&  !(Element[z, Reals] && z < 0) && r >= 0]

(* {"GammaRegularized", 5}*)
ConditionalExpression[GammaRegularized[a, z] == 1 - z^a/(E^z*Gamma[1 + a]*(1 + Inactive[ContinuedFractionK][(-((1 - (-1)^k)*(a + (-1 + k)/2))/(2*(-1 + a + k)*(a + k)) + ((1 + (-1)^k)*k)/(4*(-1 + a + k)*(a + k)))*z, 1, {k, 1, Infinity}])), Element[a | z, Complexes] &&  !(Element[z, Reals] && z < 0)]

(* {"GammaRegularized", 6}*)
ConditionalExpression[GammaRegularized[a, z] == 1 - (z^a*(z^r/(Pochhammer[a, 1 + r]*(1 + Inactive[ContinuedFractionK][(((1 + (-1)^k)*k)/(4*(-1 + a + k + r)*(a + k + r)) - ((1 - (-1)^k)*(a + (1 + k)/2))/(2*(-1 + a + k + r)*(a + k + r)))*z, 1, {k, 1, Infinity}])) + Inactive[Sum][z^k/Pochhammer[a, 1 + k], {k, 0, -1 + r}]))/(E^z*Gamma[a]), Element[r, Integers] && Element[a | z, Complexes] &&  !(Element[z, Reals] && z < 0) && r >= 0]

(* {"GammaRegularized", 7}*)
ConditionalExpression[GammaRegularized[a, z] == 1 - (z^a*(-(((-1)^r*Pochhammer[1 - a, -1 + r])/(z^r*(1 + Inactive[ContinuedFractionK][(((1 + (-1)^k)*k)/(4*(-1 + a + k - r)*(a + k - r)) - ((1 - (-1)^k)*(a + (-1 + k)/2 - r))/(2*(-1 + a + k - r)*(a + k - r)))*z, 1, {k, 1, Infinity}]))) + Inactive[Sum][Pochhammer[1 - a, -1 + k]/(-z)^k, {k, 1, r}]))/(E^z*Gamma[a]), Element[r, Integers] && Element[a | z, Complexes] &&  !(Element[z, Reals] && z < 0) && r >= 0]

(* {"GammaRegularized", 8}*)
ConditionalExpression[GammaRegularized[a, z] == z^a/(E^z*Gamma[a]*(z + Inactive[ContinuedFractionK][2^((-1 - (-1)^k)/2)*k^((1 + (-1)^k)/2)*(-a + (1 + k)/2)^((1 - (-1)^k)/2), z^((1 + (-1)^k)/2), {k, 1, Infinity}])), Element[a | z, Complexes] &&  !(Element[z, Reals] && z < 0)]

(* {"GammaRegularized", 9}*)
ConditionalExpression[GammaRegularized[a, z] == z^a/(E^z*Gamma[a]*(1 - a + z + Inactive[ContinuedFractionK][-(k*(-a + k)), 1 - a + 2*k + z, {k, 1, Infinity}])), Element[a | z, Complexes] &&  !(Element[z, Reals] && z < 0)]

(* {"GammaRegularized", 10}*)
ConditionalExpression[GammaRegularized[a, z] == (z^(-1 + a)*(1 + (-1 + a)/(2 - a + z + Inactive[ContinuedFractionK][-(k*(1 - a + k)), 2 - a + 2*k + z, {k, 1, Infinity}])))/(E^z*Gamma[a]), Element[a | z, Complexes] &&  !(Element[z, Reals] && z < 0)]

(* {"GammaRegularized", 11}*)
ConditionalExpression[GammaRegularized[a, z] == 1 - z^a/(E^z*Gamma[a]*(a - z + Inactive[ContinuedFractionK][k*z, a + k - z, {k, 1, Infinity}])), Element[a | z, Complexes] &&  !(Element[z, Reals] && z < 0)]

(* {"GammaRegularized", 12}*)
ConditionalExpression[GammaRegularized[a, z] == 1 - z^a/(E^z*Gamma[a]*(a + Inactive[ContinuedFractionK][(1 - a - k)*z, a + k + z, {k, 1, Infinity}])), Element[a | z, Complexes] &&  !(Element[z, Reals] && z < 0)]

(* {"GammaRegularized", 13}*)
ConditionalExpression[GammaRegularized[a, z] == 1 - (z^a*(z^r/(Pochhammer[a, r]*(a + r - z + Inactive[ContinuedFractionK][k*z, a + k + r - z, {k, 1, Infinity}])) + Inactive[Sum][z^k/Pochhammer[a, 1 + k], {k, 0, -1 + r}]))/(E^z*Gamma[a]), Element[r, Integers] && Element[a | z, Complexes] &&  !(Element[z, Reals] && z < 0) && r >= 0]

(* {"GammaRegularized", 14}*)
ConditionalExpression[GammaRegularized[a, z] == 1 - (z^a*(((-1)^r*Pochhammer[1 - a, r])/(z^r*(a - r - z + Inactive[ContinuedFractionK][k*z, a + k - r - z, {k, 1, Infinity}])) + Inactive[Sum][Pochhammer[1 - a, -1 + k]/(-z)^k, {k, 1, r}]))/(E^z*Gamma[a]), Element[r, Integers] && Element[a | z, Complexes] &&  !(Element[z, Reals] && z < 0) && r >= 0]

(* {"GammaRegularized", 15}*)
ConditionalExpression[GammaRegularized[1 + z, z] == (z^z*(1 + z/(1 + Inactive[ContinuedFractionK][k*(-k + z), 1 + 2*k, {k, 1, Infinity}])))/(E^z*Gamma[1 + z]), Element[z, Complexes] &&  !(Element[z, Reals] && z < 0)]

(* {"GammaRegularized", 16}*)
ConditionalExpression[GammaRegularized[1 + z, z] == (z^z*(2 + (-1 + z)/(2 + Inactive[ContinuedFractionK][k*(-1 - k + z), 2 + 2*k, {k, 1, Infinity}])))/(E^z*Gamma[1 + z]), Element[z, Complexes] &&  !(Element[z, Reals] && z < 0)]

(* {"GammaRegularized", 17}*)
ConditionalExpression[GammaRegularized[1 + z, z] == 1 - (2*z^(1 + z))/(E^z*Gamma[1 + z]*(2 + Inactive[ContinuedFractionK][(2 + k)*z, 2 + k, {k, 1, Infinity}])), Element[z, Complexes] &&  !(Element[z, Reals] && z < 0)]

(* {"GammaRegularized", 18}*)
ConditionalExpression[GammaRegularized[a, z] == 1 - z^a/(Gamma[1 + a]*(1 + Inactive[ContinuedFractionK][((-1 + a + k)*z)/(k*(a + k)), 1 - ((-1 + a + k)*z)/(k*(a + k)), {k, 1, Infinity}])), Element[a | z, Complexes] &&  !(Element[z, Reals] && z < 0)]

(* {"GegenbauerC", 1}*)
ConditionalExpression[GegenbauerC[\[Nu], \[Lambda], 1 - 2*z] == (2^(1 - 2*\[Lambda])*Sqrt[Pi]*Gamma[2*\[Lambda] + \[Nu]])/(Gamma[\[Lambda]]*Gamma[1/2 + \[Lambda]]*Gamma[1 + \[Nu]]*(1 + Inactive[ContinuedFractionK][(-2*z*(-1 + k - \[Nu])*(-1 + k + 2*\[Lambda] + \[Nu]))/(k*(-1 + 2*k + 2*\[Lambda])), 1 + (2*z*(-1 + k - \[Nu])*(-1 + k + 2*\[Lambda] + \[Nu]))/(k*(-1 + 2*k + 2*\[Lambda])), {k, 1, Infinity}])), Element[\[Nu] | \[Lambda] | z, Complexes] && Abs[z] < 1]

(* {"GegenbauerC", 2}*)
ConditionalExpression[GegenbauerC[\[Nu], -1/2 - m, 1 - 2*z] == -(((-1)^m*4^(1 + m)*Sqrt[Pi]*z^(1 + m))/(Gamma[-1/2 - m]*Gamma[2 + m]*(1 + Inactive[ContinuedFractionK][-((z*(k + m - \[Nu])*(-1 + k - m + \[Nu]))/(k*(1 + k + m))), 1 + (z*(k + m - \[Nu])*(-1 + k - m + \[Nu]))/(k*(1 + k + m)), {k, 1, Infinity}]))), Element[m, Integers] && Element[\[Nu] | z, Complexes] && m >= 0 && Abs[z] < 1]

(* {"GegenbauerC", 3}*)
ConditionalExpression[GegenbauerC[\[Nu], \[Lambda], -1 + 2*z] == (Cos[Pi*(\[Lambda] + \[Nu])]*Gamma[2*\[Lambda] + \[Nu]]*Sec[Pi*\[Lambda]])/(Gamma[2*\[Lambda]]*Gamma[1 + \[Nu]]*(1 + Inactive[ContinuedFractionK][(-2*z*(-1 + k - \[Nu])*(-1 + k + 2*\[Lambda] + \[Nu]))/(k*(-1 + 2*k + 2*\[Lambda])), 1 + (2*z*(-1 + k - \[Nu])*(-1 + k + 2*\[Lambda] + \[Nu]))/(k*(-1 + 2*k + 2*\[Lambda])), {k, 1, Infinity}])) - (2^(1 - 2*\[Lambda])*z^(1/2 - \[Lambda])*Gamma[-1/2 + \[Lambda]]*Sin[Pi*\[Nu]])/(Sqrt[Pi]*Gamma[\[Lambda]]*(1 + Inactive[ContinuedFractionK][(z*(-1 - 4*(-1 + k)*k + 4*(\[Lambda] + \[Nu])^2))/(2*k*(1 + 2*k - 2*\[Lambda])), 1 - (z*(-1 - 4*(-1 + k)*k + 4*(\[Lambda] + \[Nu])^2))/(2*k*(1 + 2*k - 2*\[Lambda])), {k, 1, Infinity}])), Element[\[Nu] | \[Lambda] | z, Complexes] && Abs[z] < 1]

(* {"GegenbauerC", 4}*)
ConditionalExpression[GegenbauerC[\[Nu], -1/2 - m, -1 + 2*z] == (-2*(1 + 2*m)!*Gamma[-1 - 2*m + \[Nu]]*Sin[Pi*\[Nu]])/(Pi*Gamma[1 + \[Nu]]*(1 + Inactive[ContinuedFractionK][-((z*(-1 + k - \[Nu])*(-2 + k - 2*m + \[Nu]))/(k*(-1 + k - m))), 1 + (z*(-1 + k - \[Nu])*(-2 + k - 2*m + \[Nu]))/(k*(-1 + k - m)), {k, 1, m}])) - ((-1)^m*4^(1 + m)*z^(1 + m)*Log[z]*Sin[Pi*\[Nu]])/(Sqrt[Pi]*(1 + m)!*Gamma[-1/2 - m]*(1 + Inactive[ContinuedFractionK][-((z*(k + m - \[Nu])*(-1 + k - m + \[Nu]))/(k*(1 + k + m))), 1 + (z*(k + m - \[Nu])*(-1 + k - m + \[Nu]))/(k*(1 + k + m)), {k, 1, Infinity}])) + ((-1)^m*4^(1 + m)*z^(1 + m)*(-EulerGamma + PolyGamma[0, 2 + m] - PolyGamma[0, 1 + m - \[Nu]] - PolyGamma[0, -m + \[Nu]])*Sin[Pi*\[Nu]])/(Sqrt[Pi]*(1 + m)!*Gamma[-1/2 - m]*(1 + Inactive[ContinuedFractionK][(z*(k + m - \[Nu])*(-1 + k - m + \[Nu])*(-PolyGamma[0, 1 + k] - PolyGamma[0, 2 + k + m] + PolyGamma[0, 1 + k + m - \[Nu]] + PolyGamma[0, k - m + \[Nu]]))/(k*(1 + k + m)*(PolyGamma[0, k] + PolyGamma[0, 1 + k + m] - PolyGamma[0, k + m - \[Nu]] - PolyGamma[0, -1 + k - m + \[Nu]])), 1 - (z*(k + m - \[Nu])*(-1 + k - m + \[Nu])*(-PolyGamma[0, 1 + k] - PolyGamma[0, 2 + k + m] + PolyGamma[0, 1 + k + m - \[Nu]] + PolyGamma[0, k - m + \[Nu]]))/(k*(1 + k + m)*(PolyGamma[0, k] + PolyGamma[0, 1 + k + m] - PolyGamma[0, k + m - \[Nu]] - PolyGamma[0, -1 + k - m + \[Nu]])), {k, 1, Infinity}])), Element[m, Integers] && Element[\[Nu] | z, Complexes] && m >= 0 && Abs[z] < 1]

(* {"GegenbauerC", 5}*)
ConditionalExpression[GegenbauerC[\[Nu], \[Lambda], z] == (2^\[Nu]*z^\[Nu]*Gamma[\[Lambda] + \[Nu]])/(Gamma[\[Lambda]]*Gamma[1 + \[Nu]]*(1 + Inactive[ContinuedFractionK][-((-2 + 2*k - \[Nu])*(-1 + 2*k - \[Nu]))/(4*k*z^2*(k - \[Lambda] - \[Nu])), 1 + ((-2 + 2*k - \[Nu])*(-1 + 2*k - \[Nu]))/(4*k*z^2*(k - \[Lambda] - \[Nu])), {k, 1, Infinity}])) - (2^(-2*\[Lambda] - \[Nu])*z^(-2*\[Lambda] - \[Nu])*Gamma[-\[Lambda] - \[Nu]]*Gamma[2*\[Lambda] + \[Nu]]*Sin[Pi*\[Nu]])/(Pi*Gamma[\[Lambda]]*(1 + Inactive[ContinuedFractionK][-((-1 + 2*k + 2*\[Lambda] + \[Nu])*(2*(-1 + k + \[Lambda]) + \[Nu]))/(4*k*z^2*(k + \[Lambda] + \[Nu])), 1 + ((-1 + 2*k + 2*\[Lambda] + \[Nu])*(2*(-1 + k + \[Lambda]) + \[Nu]))/(4*k*z^2*(k + \[Lambda] + \[Nu])), {k, 1, Infinity}])), Element[\[Nu] | \[Lambda] | z, Complexes] && NotElement[\[Lambda] + \[Nu], Integers] && Abs[z] > 1]

(* {"GegenbauerC", 6}*)
ConditionalExpression[GegenbauerC[\[Nu], m - \[Nu], z] == (2^\[Nu]*(z^2)^(\[Nu]/2)*(-1 + m)!)/(Gamma[m - \[Nu]]*Gamma[1 + \[Nu]]*(1 + Inactive[ContinuedFractionK][((-2 + 2*k - \[Nu])*(-1 + 2*k - \[Nu]))/(4*k*(-k + m)*z^2), 1 - ((-2 + 2*k - \[Nu])*(-1 + 2*k - \[Nu]))/(4*k*(-k + m)*z^2), {k, 1, -1 + m}])) - ((-1)^m*2^(-2*m + \[Nu])*(z^2)^(\[Nu]/2)*Gamma[2*m - \[Nu]]*Log[z^2]*Sin[Pi*\[Nu]])/(Pi*z^(2*m)*m!*Gamma[m - \[Nu]]*(1 + Inactive[ContinuedFractionK][-((-1 + 2*k + 2*m - \[Nu])*(2*(-1 + k + m) - \[Nu]))/(4*k*(k + m)*z^2), 1 + ((-1 + 2*k + 2*m - \[Nu])*(2*(-1 + k + m) - \[Nu]))/(4*k*(k + m)*z^2), {k, 1, Infinity}])) - ((-1)^m*2^(-2*m + \[Nu])*(z^2)^(\[Nu]/2)*Gamma[2*m - \[Nu]]*(-EulerGamma + PolyGamma[0, 1 + m] - PolyGamma[0, m + (1 - \[Nu])/2] - PolyGamma[0, m - \[Nu]/2])*Sin[Pi*\[Nu]])/(Pi*z^(2*m)*m!*Gamma[m - \[Nu]]*(1 + Inactive[ContinuedFractionK][((-1 + 2*k + 2*m - \[Nu])*(2*(-1 + k + m) - \[Nu])*(-PolyGamma[0, 1 + k] - PolyGamma[0, 1 + k + m] + PolyGamma[0, k + m - \[Nu]/2] + PolyGamma[0, 1/2 + k + m - \[Nu]/2]))/(4*k*(k + m)*z^2*(PolyGamma[0, k] + PolyGamma[0, k + m] - PolyGamma[0, -1 + k + m - \[Nu]/2] - PolyGamma[0, -1/2 + k + m - \[Nu]/2])), 1 - ((-1 + 2*k + 2*m - \[Nu])*(2*(-1 + k + m) - \[Nu])*(-PolyGamma[0, 1 + k] - PolyGamma[0, 1 + k + m] + PolyGamma[0, k + m - \[Nu]/2] + PolyGamma[0, 1/2 + k + m - \[Nu]/2]))/(4*k*(k + m)*z^2*(PolyGamma[0, k] + PolyGamma[0, k + m] - PolyGamma[0, -1 + k + m - \[Nu]/2] - PolyGamma[0, -1/2 + k + m - \[Nu]/2])), {k, 1, Infinity}])), Element[m, Integers] && Element[\[Nu] | z, Complexes] && m > 0 && Abs[z] > 1]

(* {"GegenbauerC", 7}*)
ConditionalExpression[GegenbauerC[\[Nu], -m - \[Nu], z] == ((-1)^m*2^\[Nu]*(z^2)^(\[Nu]/2)*Log[z^2])/(m!*Gamma[-m - \[Nu]]*Gamma[1 + \[Nu]]*(1 + Inactive[ContinuedFractionK][-((-2 + 2*k - \[Nu])*(-1 + 2*k - \[Nu]))/(4*k*(k + m)*z^2), 1 + ((-2 + 2*k - \[Nu])*(-1 + 2*k - \[Nu]))/(4*k*(k + m)*z^2), {k, 1, Infinity}])) - (2^(2*m + \[Nu])*(z^2)^(m + \[Nu]/2)*(-1 + m)!*Gamma[-2*m - \[Nu]]*Sin[Pi*\[Nu]])/(Pi*Gamma[-m - \[Nu]]*(1 + Inactive[ContinuedFractionK][((-2 + 2*k - 2*m - \[Nu])*(-1 + 2*k - 2*m - \[Nu]))/(4*k*(-k + m)*z^2), 1 - ((-2 + 2*k - 2*m - \[Nu])*(-1 + 2*k - 2*m - \[Nu]))/(4*k*(-k + m)*z^2), {k, 1, -1 + m}])) + ((-1)^m*2^\[Nu]*(z^2)^(\[Nu]/2)*(-EulerGamma + PolyGamma[0, 1 + m] - PolyGamma[0, (1 - \[Nu])/2] - PolyGamma[0, -\[Nu]/2]))/(m!*Gamma[-m - \[Nu]]*Gamma[1 + \[Nu]]*(1 + Inactive[ContinuedFractionK][-((-2 + 2*k - \[Nu])*(-1 + 2*k - \[Nu])*(PolyGamma[0, 1 + k] + PolyGamma[0, 1 + k + m] - PolyGamma[0, k + (1 - \[Nu])/2] - PolyGamma[0, k - \[Nu]/2]))/(4*k*(k + m)*z^2*(PolyGamma[0, k] + PolyGamma[0, k + m] - PolyGamma[0, -1 + k + (1 - \[Nu])/2] - PolyGamma[0, -1 + k - \[Nu]/2])), 1 + ((-2 + 2*k - \[Nu])*(-1 + 2*k - \[Nu])*(PolyGamma[0, 1 + k] + PolyGamma[0, 1 + k + m] - PolyGamma[0, k + (1 - \[Nu])/2] - PolyGamma[0, k - \[Nu]/2]))/(4*k*(k + m)*z^2*(PolyGamma[0, k] + PolyGamma[0, k + m] - PolyGamma[0, -1 + k + (1 - \[Nu])/2] - PolyGamma[0, -1 + k - \[Nu]/2])), {k, 1, Infinity}])), Element[m, Integers] && Element[\[Nu] | z, Complexes] && m >= 0 && Abs[z] > 1]

(* {"GoldenRatio", 1}*)
GoldenRatio == 1 + Inactive[ContinuedFractionK][1, 1, {k, 1, Infinity}]

(* {"GoldenRatioCompound", 1}*)
GoldenRatio^(-1) == Inactive[ContinuedFractionK][1, 1, {k, 1, Infinity}]

(* {"GoldenRatioCompound", 2}*)
Sqrt[GoldenRatio] == 1 + Re[Inactive[ContinuedFractionK][1, 2 + 2*I, {k, 1, Infinity}]]

(* {"GompertzConstant", 1}*)
-(E*ExpIntegralEi[-1]) == (2 + Inactive[ContinuedFractionK][-k^2, 2*(1 + k), {k, 1, Infinity}])^(-1)

(* {"GompertzConstant", 2}*)
-(E*ExpIntegralEi[-1]) == (1 + Inactive[ContinuedFractionK][Floor[(1 + k)/2], 1, {k, 1, Infinity}])^(-1)

(* {"HankelH1", 1}*)
ConditionalExpression[HankelH1[\[Nu], z] == ((-I)*2^\[Nu]*Csc[Pi*\[Nu]])/(z^\[Nu]*Gamma[1 - \[Nu]]*(1 + Inactive[ContinuedFractionK][z^2/(4*k*(k - \[Nu])), 1 - z^2/(4*k*(k - \[Nu])), {k, 1, Infinity}])) + (z^\[Nu]*(1 + I*Cot[Pi*\[Nu]]))/(2^\[Nu]*Gamma[1 + \[Nu]]*(1 + Inactive[ContinuedFractionK][z^2/(4*k*(k + \[Nu])), 1 - z^2/(4*k*(k + \[Nu])), {k, 1, Infinity}])), Element[\[Nu] | z, Complexes] && NotElement[\[Nu], Integers]]

(* {"HankelH1", 2}*)
ConditionalExpression[HankelH1[0, z] == (Pi + (2*I)*Log[z/2])/(Pi*(1 + Inactive[ContinuedFractionK][z^2/(4*k^2), 1 - z^2/(4*k^2), {k, 1, Infinity}])) + ((2*I)*EulerGamma)/(Pi*(1 + Inactive[ContinuedFractionK][(z^2*PolyGamma[0, 1 + k])/(4*k^2*PolyGamma[0, k]), 1 - (z^2*PolyGamma[0, 1 + k])/(4*k^2*PolyGamma[0, k]), {k, 1, Infinity}])), Element[z, Complexes]]

(* {"HankelH1", 3}*)
ConditionalExpression[HankelH1[m, z] == ((-I)*2^m*(-1 + m)!)/(Pi*z^m*(1 + Inactive[ContinuedFractionK][z^2/(4*k*(k - m)), 1 - z^2/(4*k*(k - m)), {k, 1, -1 + m}])) + (z^m*(Pi + (2*I)*Log[z/2]))/(2^m*Pi*m!*(1 + Inactive[ContinuedFractionK][z^2/(4*k*(k + m)), 1 - z^2/(4*k*(k + m)), {k, 1, Infinity}])) - (I*z^m*(-EulerGamma + PolyGamma[0, 1 + m]))/(2^m*Pi*m!*(1 + Inactive[ContinuedFractionK][(z^2*(PolyGamma[0, 1 + k] + PolyGamma[0, 1 + k + m]))/(4*k*(k + m)*(PolyGamma[0, k] + PolyGamma[0, k + m])), 1 - (z^2*(PolyGamma[0, 1 + k] + PolyGamma[0, 1 + k + m]))/(4*k*(k + m)*(PolyGamma[0, k] + PolyGamma[0, k + m])), {k, 1, Infinity}])), Element[m, Integers] && Element[z, Complexes] && m >= 0]

(* {"HankelH1Ratio", 1}*)
ConditionalExpression[HankelH1[1 + \[Nu], z]/HankelH1[\[Nu], z] == (1 - (2*I)*z + 2*\[Nu])/(2*z) - Inactive[ContinuedFractionK][-(-1 + 2*k)^2/4 + \[Nu]^2, 2*(-k + I*z), {k, 1, Infinity}]/z, Element[\[Nu] | z, Complexes] && Inequality[-Pi/2, Less, Arg[z], LessEqual, Pi]]

(* {"HankelH1Ratio", 2}*)
ConditionalExpression[Inactive[D][HankelH1[\[Nu], z], z]/HankelH1[\[Nu], z] == I - 1/(2*z) + Inactive[ContinuedFractionK][-(-1 + 2*k)^2/4 + \[Nu]^2, 2*(-k + I*z), {k, 1, Infinity}]/z, Element[\[Nu] | z, Complexes] && Inequality[-Pi/2, Less, Arg[z], LessEqual, Pi]]

(* {"HankelH2", 1}*)
ConditionalExpression[HankelH2[\[Nu], z] == (I*2^\[Nu]*Csc[Pi*\[Nu]])/(z^\[Nu]*Gamma[1 - \[Nu]]*(1 + Inactive[ContinuedFractionK][z^2/(4*k*(k - \[Nu])), 1 - z^2/(4*k*(k - \[Nu])), {k, 1, Infinity}])) + (z^\[Nu]*(1 - I*Cot[Pi*\[Nu]]))/(2^\[Nu]*Gamma[1 + \[Nu]]*(1 + Inactive[ContinuedFractionK][z^2/(4*k*(k + \[Nu])), 1 - z^2/(4*k*(k + \[Nu])), {k, 1, Infinity}])), Element[\[Nu] | z, Complexes] && NotElement[\[Nu], Integers]]

(* {"HankelH2", 2}*)
ConditionalExpression[HankelH2[0, z] == (Pi - (2*I)*Log[z/2])/(Pi*(1 + Inactive[ContinuedFractionK][z^2/(4*k^2), 1 - z^2/(4*k^2), {k, 1, Infinity}])) - ((2*I)*EulerGamma)/(Pi*(1 + Inactive[ContinuedFractionK][(z^2*PolyGamma[0, 1 + k])/(4*k^2*PolyGamma[0, k]), 1 - (z^2*PolyGamma[0, 1 + k])/(4*k^2*PolyGamma[0, k]), {k, 1, Infinity}])), Element[z, Complexes]]

(* {"HankelH2", 3}*)
ConditionalExpression[HankelH2[m, z] == (I*2^m*(-1 + m)!)/(Pi*z^m*(1 + Inactive[ContinuedFractionK][z^2/(4*k*(k - m)), 1 - z^2/(4*k*(k - m)), {k, 1, -1 + m}])) + (z^m*(Pi - (2*I)*Log[z/2]))/(2^m*Pi*m!*(1 + Inactive[ContinuedFractionK][z^2/(4*k*(k + m)), 1 - z^2/(4*k*(k + m)), {k, 1, Infinity}])) + (I*z^m*(-EulerGamma + PolyGamma[0, 1 + m]))/(2^m*Pi*m!*(1 + Inactive[ContinuedFractionK][(z^2*(PolyGamma[0, 1 + k] + PolyGamma[0, 1 + k + m]))/(4*k*(k + m)*(PolyGamma[0, k] + PolyGamma[0, k + m])), 1 - (z^2*(PolyGamma[0, 1 + k] + PolyGamma[0, 1 + k + m]))/(4*k*(k + m)*(PolyGamma[0, k] + PolyGamma[0, k + m])), {k, 1, Infinity}])), Element[m, Integers] && Element[z, Complexes] && m >= 0]

(* {"HankelH2Ratio", 1}*)
ConditionalExpression[HankelH2[1 + \[Nu], z]/HankelH2[\[Nu], z] == (1 + (2*I)*z + 2*\[Nu])/(2*z) + Inactive[ContinuedFractionK][-(-1 + 2*k)^2/4 + \[Nu]^2, 2*(k + I*z), {k, 1, Infinity}]/z, Element[\[Nu] | z, Complexes] && Inequality[-Pi, Less, Arg[z], LessEqual, Pi/2]]

(* {"HankelH2Ratio", 2}*)
ConditionalExpression[Inactive[D][HankelH2[\[Nu], z], z]/HankelH2[\[Nu], z] == -I - 1/(2*z) - Inactive[ContinuedFractionK][-(-1 + 2*k)^2/4 + \[Nu]^2, 2*(k + I*z), {k, 1, Infinity}]/z, Element[\[Nu] | z, Complexes] && Inequality[-Pi, Less, Arg[z], LessEqual, Pi/2]]

(* {"HarmonicNumber", 1}*)
ConditionalExpression[HarmonicNumber[z] == (Pi^2*z)/(6*(1 + Inactive[ContinuedFractionK][(z*Zeta[2 + k])/Zeta[1 + k], 1 - (z*Zeta[2 + k])/Zeta[1 + k], {k, 1, Infinity}])), Element[z, Complexes]]

(* {"HarmonicNumber2", 1}*)
ConditionalExpression[HarmonicNumber[z, r] == (r*z*Zeta[1 + r])/(1 + Inactive[ContinuedFractionK][((k + r)*z*Zeta[1 + k + r])/((1 + k)*Zeta[k + r]), 1 - ((k + r)*z*Zeta[1 + k + r])/((1 + k)*Zeta[k + r]), {k, 1, Infinity}]), Element[z | r, Complexes] && Abs[z] < 1]

(* {"HarmonicNumberCompound", 1}*)
ConditionalExpression[-HarmonicNumber[-1/2 + z] + HarmonicNumber[z] == 2/(1 + 4*z + Inactive[ContinuedFractionK][k^2, 1 + 4*z, {k, 1, Infinity}]), Element[z, Complexes]]

(* {"HarmonicNumberCompound", 2}*)
ConditionalExpression[-HarmonicNumber[-1/2 + z] + HarmonicNumber[z] == (1 - (4*z + Inactive[ContinuedFractionK][k^2*(1 + k)^2, 4*(1 + k)*z, {k, 1, Infinity}])^(-1))/(2*z), Element[z, Complexes]]

(* {"HermiteH", 1}*)
ConditionalExpression[HermiteH[\[Nu], z] == (2^\[Nu]*Sqrt[Pi])/(Gamma[(1 - \[Nu])/2]*(1 + Inactive[ContinuedFractionK][(2*z*Gamma[(k - \[Nu])/2])/(k*Gamma[(-1 + k - \[Nu])/2]), 1 - (2*z*Gamma[(k - \[Nu])/2])/(k*Gamma[(-1 + k - \[Nu])/2]), {k, 1, Infinity}])), Element[\[Nu] | z, Complexes]]

(* {"HurwitzLerchPhi", 1}*)
ConditionalExpression[HurwitzLerchPhi[-1, 1, z] == (1 + (2*z + Inactive[ContinuedFractionK][k*(1 + k), 2*z, {k, 1, Infinity}])^(-1))/(2*z), Element[z, Complexes] && Re[z] > 1]

(* {"HurwitzLerchPhi", 2}*)
ConditionalExpression[HurwitzLerchPhi[-1, 1, (1 + z)/2] == (z + Inactive[ContinuedFractionK][k^2, z, {k, 1, Infinity}])^(-1), Element[z, Complexes] && Re[z] > 2]

(* {"HurwitzLerchPhi", 3}*)
ConditionalExpression[HurwitzLerchPhi[-1, 1, 1 + z] == (1/2 + z)/(2*z + 2*z^2 + Inactive[ContinuedFractionK][Floor[(1 + k)/2]*(-1 + 2*Floor[(1 + k)/2]), (1 - (-1)^k)/2 + ((1 + (-1)^k)*(2*z + 2*z^2))/2, {k, 1, Infinity}]), Element[z, Complexes] && Re[z] > -1/2]

(* {"HurwitzLerchPhi", 4}*)
ConditionalExpression[HurwitzLerchPhi[z, s, c] == 1/(c^s*(1 + Inactive[ContinuedFractionK][-((1 - (c + k)^(-1))^s*z), 1 + (1 - (c + k)^(-1))^s*z, {k, 1, Infinity}])), Element[z | s | c, Complexes] && Abs[z] < 1]

(* {"HurwitzLerchPhiCompound", 1}*)
ConditionalExpression[HurwitzLerchPhi[-1, 1, (1 - a + z)/2] + HurwitzLerchPhi[-1, 1, (1 + a + z)/2] == 2/(z + Inactive[ContinuedFractionK][((1 + (-1)^k)*k^2)/2 + ((1 - (-1)^k)*(-a^2 + k^2))/2, z, {k, 1, Infinity}]), Element[a | z, Complexes] && Inequality[-Pi/2, Less, Arg[a], LessEqual, Pi/2]]

(* {"HurwitzLerchPhiCompound", 2}*)
ConditionalExpression[HurwitzLerchPhi[-1, 1, (1 - a + z)/2] - HurwitzLerchPhi[-1, 1, (1 + a + z)/2] == (2*a)/(-1 + z^2 + Inactive[ContinuedFractionK][((1 + (-1)^k)*k^2)/2 + ((1 - (-1)^k)*(-a^2 + (1 + k)^2))/2, -(-1)^k + ((1 + (-1)^k)*z^2)/2, {k, 1, Infinity}]), Element[a | z, Complexes] && Inequality[-Pi/2, Less, Arg[a], LessEqual, Pi/2] && Inequality[-Pi/2, Less, Arg[z], LessEqual, Pi/2] && Re[z] > 1]

(* {"HurwitzLerchPhiCompound", 3}*)
ConditionalExpression[HurwitzLerchPhi[-1, 1, p] - HurwitzLerchPhi[-1, 1, q] == (-p + q)/(p*q + Inactive[ContinuedFractionK][(-1 + k + p)^2*(-1 + k + q)^2, -1 + 2*k + p + q, {k, 1, Infinity}]), Element[p | q, Complexes] && Inequality[-Pi/2, Less, Arg[p - q], LessEqual, Pi/2]]

(* {"HurwitzZeta", 1}*)
ConditionalExpression[HurwitzZeta[3, z] == z^(-3) + (2*z*(1 + z) + Inactive[ContinuedFractionK][Floor[(1 + k)/2]^3, (1 - (-1)^k)/2 + (1 + (-1)^k)*(1 + k)*z*(1 + z), {k, 1, Infinity}])^(-1), Element[z, Complexes] && Inequality[-Pi/2, Less, Arg[1 + 2*z], LessEqual, Pi/2]]

(* {"HurwitzZeta", 2}*)
ConditionalExpression[HurwitzZeta[3, z] == z^(-3) + (1 + 2*z + 2*z^2 + Inactive[ContinuedFractionK][-k^6, (1 + 2*k)*(1 + k + k^2 + 2*z + 2*z^2), {k, 1, Infinity}])^(-1), Element[z, Complexes] && Inequality[-Pi/2, Less, Arg[1 + 2*z], LessEqual, Pi/2]]

(* {"HurwitzZeta", 3}*)
ConditionalExpression[HurwitzZeta[3, z] == (2 + 2*z + (z + Inactive[ContinuedFractionK][((1 + (-1)^k)*k*(2 + k)^2)/(32*(1 + k)) + ((1 - (-1)^k)*(1 + k)^2*(3 + k))/(32*(2 + k)), z, {k, 1, Infinity}])^(-1))/(4*z^3), Element[z, Complexes] && Re[z] > 1]

(* {"HurwitzZeta", 4}*)
ConditionalExpression[HurwitzZeta[s, c] == 1/(c^s*(1 + Inactive[ContinuedFractionK][-(1 - (c + k)^(-1))^s, 1 + (1 - (c + k)^(-1))^s, {k, 1, Infinity}])), Element[s | c, Complexes] && Re[s] > 1]

(* {"HurwitzZetaCompound", 1}*)
ConditionalExpression[HurwitzZeta[2, (1 + z)/4] - HurwitzZeta[2, (3 + z)/4] == 8/(-1 + z^2 + Inactive[ContinuedFractionK][((1 + (-1)^k)*k^2)/2 + ((1 - (-1)^k)*(1 + k)^2)/2, -(-1)^k + ((1 + (-1)^k)*z^2)/2, {k, 1, Infinity}]), Element[z, Complexes] && Inequality[-Pi/2, Less, Arg[z], LessEqual, Pi/2]]

(* {"HurwitzZetaCompound", 2}*)
ConditionalExpression[HurwitzZeta[2, z] - HurwitzZeta[2, 1/2 + z] == (1 + (2*z + Inactive[ContinuedFractionK][((1 - (-1)^k)*(1 + k)^2)/8 + ((1 + (-1)^k)*(2 + k)*(-1 + (2 + k)/2))/4, 2*z, {k, 1, Infinity}])^(-1))/(2*z^2), Element[z, Complexes] && Re[z] > 1]

(* {"HurwitzZetaCompound", 3}*)
ConditionalExpression[HurwitzZeta[2, z/2] - HurwitzZeta[2, (1 + z)/2] == (2*(1 + (z + Inactive[ContinuedFractionK][((1 + (-1)^k)*(1 + k/2)*k)/4 + ((1 - (-1)^k)*(1 + k)^2)/8, z, {k, 1, Infinity}])^(-1)))/z^2, Element[z, Complexes] && Re[z] > 1]

(* {"Hypergeometric0F1", 1}*)
ConditionalExpression[Hypergeometric0F1[b, z] == 1 + z/(b*(1 + Inactive[ContinuedFractionK][-(z/((1 + k)*(b + k))), 1 + z/((1 + k)*(b + k)), {k, 1, Infinity}])), Element[b | z, Complexes] &&  !(Element[b, Integers] && b <= 0)]

(* {"Hypergeometric0F1", 2}*)
ConditionalExpression[Hypergeometric0F1[b, z] == (1 + Inactive[ContinuedFractionK][-(z/(k*(-1 + b + k))), 1 + z/(k*(-1 + b + k)), {k, 1, Infinity}])^(-1), Element[b | z, Complexes] &&  !(Element[b, Integers] && b <= 0)]

(* {"Hypergeometric0F1Ratio", 1}*)
ConditionalExpression[Hypergeometric0F1[1 + b, z]/Hypergeometric0F1[b, z] == (1 + Inactive[ContinuedFractionK][z/((-1 + b + k)*(b + k)), 1, {k, 1, Infinity}])^(-1), Element[b | z, Complexes] &&  !(Element[b, Integers] && b <= 0)]

(* {"Hypergeometric0F1Ratio", 2}*)
ConditionalExpression[Hypergeometric0F1[b, z]/Hypergeometric0F1[1 + b, z] == 1 + Inactive[ContinuedFractionK][z/((-1 + b + k)*(b + k)), 1, {k, 1, Infinity}], Element[b | z, Complexes] &&  !(Element[b, Integers] && b <= 0)]

(* {"Hypergeometric0F1Ratio", 3}*)
ConditionalExpression[Hypergeometric0F1[1 + b, z]/Hypergeometric0F1[b, z] == b/(b + Inactive[ContinuedFractionK][z, b + k, {k, 1, Infinity}]), Element[b | z, Complexes] &&  !(Element[b, Integers] && b <= 0)]

(* {"Hypergeometric0F1Ratio", 4}*)
ConditionalExpression[Hypergeometric0F1[b, z]/Hypergeometric0F1[1 + b, z] == (b + Inactive[ContinuedFractionK][z, b + k, {k, 1, Infinity}])/b, Element[b | z, Complexes] &&  !(Element[b, Integers] && b <= 0)]

(* {"Hypergeometric0F1Ratio", 5}*)
ConditionalExpression[Hypergeometric0F1[b, z]/Hypergeometric0F1[1 + b, z] == 1 + Sqrt[z]/b + Inactive[ContinuedFractionK][-2*(-1 + 2*b + 2*k)*Sqrt[z], 2*b + k + 4*Sqrt[z], {k, 1, Infinity}]/(2*b), Element[b | z, Complexes] &&  !(Element[b, Integers] && b <= 0)]

(* {"Hypergeometric0F1Regularized", 1}*)
ConditionalExpression[Hypergeometric0F1Regularized[b, z] == Gamma[b]^(-1) + z/(Gamma[1 + b]*(1 + Inactive[ContinuedFractionK][-(z/((1 + k)*(b + k))), 1 + z/((1 + k)*(b + k)), {k, 1, Infinity}])), Element[b | z, Complexes] &&  !(Element[b, Integers] && b <= 0)]

(* {"Hypergeometric0F1Regularized", 2}*)
ConditionalExpression[Hypergeometric0F1Regularized[b, z] == 1/(Gamma[b]*(1 + Inactive[ContinuedFractionK][-(z/(k*(-1 + b + k))), 1 + z/(k*(-1 + b + k)), {k, 1, Infinity}])), Element[b | z, Complexes] &&  !(Element[b, Integers] && b <= 0)]

(* {"Hypergeometric0F1Regularized", 3}*)
ConditionalExpression[Hypergeometric0F1Regularized[-m, z] == z^(1 + m)/((1 + m)!*(1 + Inactive[ContinuedFractionK][-(z/(k + k^2 + k*m)), 1 + z/(k + k^2 + k*m), {k, 1, Infinity}])), Element[m, Integers] && Element[z, Complexes] && m >= 0]

(* {"Hypergeometric0F1RegularizedRatio", 1}*)
ConditionalExpression[Hypergeometric0F1Regularized[1 + b, z]/Hypergeometric0F1Regularized[b, z] == 1/(b*(1 + Inactive[ContinuedFractionK][z/((-1 + b + k)*(b + k)), 1, {k, 1, Infinity}])), Element[b | z, Complexes] &&  !(Element[b, Integers] && b <= 0)]

(* {"Hypergeometric0F1RegularizedRatio", 2}*)
ConditionalExpression[Hypergeometric0F1Regularized[b, z]/Hypergeometric0F1Regularized[1 + b, z] == b*(1 + Inactive[ContinuedFractionK][z/((-1 + b + k)*(b + k)), 1, {k, 1, Infinity}]), Element[b | z, Complexes] &&  !(Element[b, Integers] && b <= 0)]

(* {"Hypergeometric0F1RegularizedRatio", 3}*)
ConditionalExpression[Hypergeometric0F1Regularized[1 + b, z]/Hypergeometric0F1Regularized[b, z] == (b + Inactive[ContinuedFractionK][z, b + k, {k, 1, Infinity}])^(-1), Element[b | z, Complexes] &&  !(Element[b, Integers] && b <= 0)]

(* {"Hypergeometric0F1RegularizedRatio", 4}*)
ConditionalExpression[Hypergeometric0F1Regularized[b, z]/Hypergeometric0F1Regularized[1 + b, z] == b + Inactive[ContinuedFractionK][z, b + k, {k, 1, Infinity}], Element[b | z, Complexes] &&  !(Element[b, Integers] && b <= 0)]

(* {"Hypergeometric0F1RegularizedRatio", 5}*)
ConditionalExpression[Hypergeometric0F1Regularized[b, z]/Hypergeometric0F1Regularized[1 + b, z] == (2*b + 2*Sqrt[z] + Inactive[ContinuedFractionK][-2*(-1 + 2*b + 2*k)*Sqrt[z], 2*b + k + 4*Sqrt[z], {k, 1, Infinity}])/2, Element[b | z, Complexes] &&  !(Element[b, Integers] && b <= 0)]

(* {"Hypergeometric1F1", 1}*)
ConditionalExpression[Hypergeometric1F1[a, b, z] == 1 + (a*z)/(b*(1 + Inactive[ContinuedFractionK][-(((a + k)*z)/((1 + k)*(b + k))), 1 + ((a + k)*z)/((1 + k)*(b + k)), {k, 1, Infinity}])), Element[a | b | z, Complexes] &&  !(Element[b, Integers] && b <= 0)]

(* {"Hypergeometric1F1", 2}*)
ConditionalExpression[Hypergeometric1F1[a, b, z] == (1 + Inactive[ContinuedFractionK][-(((-1 + a + k)*z)/(k*(-1 + b + k))), 1 + ((-1 + a + k)*z)/(k*(-1 + b + k)), {k, 1, Infinity}])^(-1), Element[a | b | z, Complexes] &&  !(Element[b, Integers] && b <= 0)]

(* {"Hypergeometric1F1", 3}*)
ConditionalExpression[(-1 + b)*E^z*z^(1 - b)*(Gamma[-1 + b] - Gamma[-1 + b, z]) == 1 + z/(b*(1 + Inactive[ContinuedFractionK][(((1 + (-1)^k)*k)/(4*(-1 + b + k)*(b + k)) - ((1 - (-1)^k)*(-1 + b + (1 + k)/2))/(2*(-1 + b + k)*(b + k)))*z, 1, {k, 1, Infinity}])), Element[b | z, Complexes]]

(* {"Hypergeometric1F1", 4}*)
ConditionalExpression[(-1 + b)*E^z*z^(1 - b)*(Gamma[-1 + b] - Gamma[-1 + b, z]) == (1 - z/(b + Inactive[ContinuedFractionK][(-((1 + (-1)^k)*(b + (-2 + k)/2))/2 + ((1 - (-1)^k)*(1 + k))/4)*z, b + k, {k, 1, Infinity}]))^(-1), Element[b | z, Complexes]]

(* {"Hypergeometric1F1", 5}*)
ConditionalExpression[(-1 + b)*E^z*z^(1 - b)*(Gamma[-1 + b] - Gamma[-1 + b, z]) == (-1 + b)/(-1 + b + Inactive[ContinuedFractionK][(-((1 - (-1)^k)*(b + (-3 + k)/2))/2 + ((1 + (-1)^k)*k)/4)*z, -1 + b + k, {k, 1, Infinity}]), Element[b | z, Complexes]]

(* {"Hypergeometric1F1", 6}*)
ConditionalExpression[(-1 + b)*E^z*z^(1 - b)*(Gamma[-1 + b] - Gamma[-1 + b, z]) == 1 + z/(b + Inactive[ContinuedFractionK][(-((1 - (-1)^k)*(b + (-1 + k)/2))/2 + ((1 + (-1)^k)*k)/4)*z, b + k, {k, 1, Infinity}]), Element[b | z, Complexes]]

(* {"Hypergeometric1F1", 7}*)
ConditionalExpression[(-1 + b)*E^z*z^(1 - b)*(Gamma[-1 + b] - Gamma[-1 + b, z]) == 1 + z/(b - z + Inactive[ContinuedFractionK][(((1 + (-1)^k)*(1 - b - k/2))/2 + ((1 - (-1)^k)*(1 + k))/4)*z, b + k, {k, 1, Infinity}]), Element[b | z, Complexes]]

(* {"Hypergeometric1F1", 8}*)
ConditionalExpression[(-1 + b)*E^z*z^(1 - b)*(Gamma[-1 + b] - Gamma[-1 + b, z]) == E^z*z^(1 - b)*Gamma[b] - (-1 + b)/(z + Inactive[ContinuedFractionK][(3 - 3*(-1)^k + 2*(-1 + (-1)^k)*b + 2*k)/4, (1 - (-1)^k + z + (-1)^k*z)/2, {k, 1, Infinity}]), Element[b | z, Complexes]]

(* {"Hypergeometric1F1", 9}*)
ConditionalExpression[(-1 + b)*E^z*z^(1 - b)*(Gamma[-1 + b] - Gamma[-1 + b, z]) == (-1 + b)/(-1 + b - z + Inactive[ContinuedFractionK][k*z, -1 + b + k - z, {k, 1, Infinity}]), Element[b | z, Complexes]]

(* {"Hypergeometric1F1", 10}*)
ConditionalExpression[(-1 + b)*E^z*z^(1 - b)*(Gamma[-1 + b] - Gamma[-1 + b, z]) == E^z*z^(1 - b)*Gamma[b] - (-1 + b)/(2 - b + z + Inactive[ContinuedFractionK][-(k*(1 - b + k)), 2 - b + 2*k + z, {k, 1, Infinity}]), Element[b | z, Complexes] &&  !(Element[b, Integers] && b <= 0)]

(* {"Hypergeometric1F1", 11}*)
ConditionalExpression[E^z*z^(1 - z)*(Gamma[z] - Gamma[z, z]) == 1 + Inactive[ContinuedFractionK][(1 + k)*z, 1 + k, {k, 1, Infinity}], Element[z, Complexes]]

(* {"Hypergeometric1F1Ratio", 1}*)
ConditionalExpression[Hypergeometric1F1[1 + a, 1 + b, z]/Hypergeometric1F1[a, b, z] == (1 + Inactive[ContinuedFractionK][(-((1 - (-1)^k)*(-a + b + (-1 + k)/2))/(2*(-1 + b + k)*(b + k)) + ((1 + (-1)^k)*(a + k/2))/(2*(-1 + b + k)*(b + k)))*z, 1, {k, 1, Infinity}])^(-1), Element[a | b | z, Complexes] &&  !(Element[b, Integers] && b <= 0)]

(* {"Hypergeometric1F1Ratio", 2}*)
ConditionalExpression[Hypergeometric1F1[a, b, z]/Hypergeometric1F1[1 + a, 1 + b, z] == 1 + Inactive[ContinuedFractionK][(-((1 - (-1)^k)*(-a + b + (-1 + k)/2))/(2*(-1 + b + k)*(b + k)) + ((1 + (-1)^k)*(a + k/2))/(2*(-1 + b + k)*(b + k)))*z, 1, {k, 1, Infinity}], Element[a | b | z, Complexes] &&  !(Element[b, Integers] && b <= 0)]

(* {"Hypergeometric1F1Ratio", 3}*)
ConditionalExpression[Hypergeometric1F1[a, 1 + 2*a, z]/Hypergeometric1F1[1 + a, 2 + 2*a, z] == 1 + Inactive[ContinuedFractionK][((-1)^k*z)/(2 + 4*a + 4*Floor[k/2]), 1, {k, 1, Infinity}], Element[a | z, Complexes]]

(* {"Hypergeometric1F1Ratio", 4}*)
ConditionalExpression[Hypergeometric1F1[a, 1 + b, z]/Hypergeometric1F1[a, b, z] == (1 + Inactive[ContinuedFractionK][(-1)^(-1 + k)*(((1 + (-1)^k)*(-a + b + k/2))/(2*(-1 + b + k)*(b + k)) + ((1 - (-1)^k)*(-1 + a + k))/(2*(-1 + b + k)*(b + k)))*z, 1, {k, 1, Infinity}])^(-1), Element[a | b | z, Complexes] &&  !(Element[b, Integers] && b <= 0)]

(* {"Hypergeometric1F1Ratio", 5}*)
ConditionalExpression[Hypergeometric1F1[a, b, z]/Hypergeometric1F1[a, 1 + b, z] == 1 + Inactive[ContinuedFractionK][(-1)^(-1 + k)*(((1 + (-1)^k)*(-a + b + k/2))/(2*(-1 + b + k)*(b + k)) + ((1 - (-1)^k)*(-1 + a + k))/(2*(-1 + b + k)*(b + k)))*z, 1, {k, 1, Infinity}], Element[a | b | z, Complexes] &&  !(Element[b, Integers] && b <= 0)]

(* {"Hypergeometric1F1Ratio", 6}*)
ConditionalExpression[Hypergeometric1F1[1 + a, 1 + b, z]/Hypergeometric1F1[a, b, z] == b/(b + Inactive[ContinuedFractionK][(((1 - (-1)^k)*(a - b + (1 - k)/2))/2 + ((1 + (-1)^k)*(a + k/2))/2)*z, b + k, {k, 1, Infinity}]), Element[a | b | z, Complexes] &&  !(Element[b, Integers] && b <= 0)]

(* {"Hypergeometric1F1Ratio", 7}*)
ConditionalExpression[Hypergeometric1F1[1 + a, 1 + b, z]/Hypergeometric1F1[a, b, z] == (b*Inactive[ContinuedFractionK][(-1 + a + k)*z, -1 + b + k - z, {k, 1, Infinity}])/(a*z), Element[a | b | z, Complexes]]

(* {"Hypergeometric1F1Ratio", 8}*)
ConditionalExpression[Hypergeometric1F1[a, b, z]/Hypergeometric1F1[1 + a, 1 + b, z] == (b - z + Inactive[ContinuedFractionK][(a + k)*z, b + k - z, {k, 1, Infinity}])/b, Element[a | b | z, Complexes] &&  !(Element[b, Integers] && b <= 0)]

(* {"Hypergeometric1F1Ratio", 9}*)
ConditionalExpression[Hypergeometric1F1[-m, b, z]/Hypergeometric1F1[1 - m, 1 + b, z] == 1 - z/b + Inactive[ContinuedFractionK][(k - m)*z, b + k - z, {k, 1, -1 + m}]/b, Element[m, Integers] && Element[b | z, Complexes] && m > 0]

(* {"Hypergeometric1F1Ratio", 10}*)
ConditionalExpression[Hypergeometric1F1[a, 1 + b, z]/Hypergeometric1F1[a, b, z] == b/(b + Inactive[ContinuedFractionK][(((1 - (-1)^k)*(a + (-1 + k)/2))/2 + ((1 + (-1)^k)*(a - b - k/2))/2)*z, b + k, {k, 1, Infinity}]), Element[a | b | z, Complexes] &&  !(Element[b, Integers] && b <= 0)]

(* {"Hypergeometric1F1Ratio", 11}*)
ConditionalExpression[Hypergeometric1F1[a, b, z]/Hypergeometric1F1[1 + a, 1 + b, z] == 1 + Inactive[ContinuedFractionK][(((1 - (-1)^k)*(a - b + (1 - k)/2))/2 + ((1 + (-1)^k)*(a + k/2))/2)*z, b + k, {k, 1, Infinity}]/b, Element[a | b | z, Complexes] && NotElement[b, Integers]]

(* {"Hypergeometric1F1Ratio", 12}*)
ConditionalExpression[Hypergeometric1F1[1 - I*a + r, 2 + 2*r, (2*I)*z]/Hypergeometric1F1[(-I)*a + r, 2*r, (2*I)*z] == (r*(1 + r)*(1 + 2*r))/(z*((1 + 2*r)*(a + (r*(1 + r))/z) + Inactive[ContinuedFractionK][(1 - k - r)*(1 + k + r)*(a^2 + (k + r)^2), (1 + 2*k + 2*r)*(a + ((k + r)*(1 + k + r))/z), {k, 1, Infinity}])), Element[a | r | z, Complexes]]

(* {"Hypergeometric1F1Regularized", 1}*)
ConditionalExpression[Hypergeometric1F1Regularized[a, b, z] == (1 + (a*z)/(b*(1 + Inactive[ContinuedFractionK][-(((a + k)*z)/((1 + k)*(b + k))), 1 + ((a + k)*z)/((1 + k)*(b + k)), {k, 1, Infinity}])))/Gamma[b], Element[a | b | z, Complexes] &&  !(Element[b, Integers] && b <= 0)]

(* {"Hypergeometric1F1Regularized", 2}*)
ConditionalExpression[Hypergeometric1F1Regularized[a, b, z] == 1/(Gamma[b]*(1 + Inactive[ContinuedFractionK][-(((-1 + a + k)*z)/(k*(-1 + b + k))), 1 + ((-1 + a + k)*z)/(k*(-1 + b + k)), {k, 1, Infinity}])), Element[a | b | z, Complexes] &&  !(Element[b, Integers] && b <= 0)]

(* {"Hypergeometric1F1Regularized", 3}*)
ConditionalExpression[Hypergeometric1F1Regularized[a, -m, z] == (z^(1 + m)*Pochhammer[a, 1 + m])/((1 + m)!*(1 + Inactive[ContinuedFractionK][-(((a + k + m)*z)/(k*(1 + k + m))), 1 + ((a + k + m)*z)/(k*(1 + k + m)), {k, 1, Infinity}])), Element[m, Integers] && Element[a | z, Complexes] && m >= 0]

(* {"Hypergeometric1F1Regularized", 4}*)
ConditionalExpression[E^z*z^(1 - b)*(1 - GammaRegularized[-1 + b, z]) == Gamma[b]^(-1) + z/(Gamma[1 + b]*(1 + Inactive[ContinuedFractionK][(((1 + (-1)^k)*k)/(4*(-1 + b + k)*(b + k)) - ((1 - (-1)^k)*(-1 + b + (1 + k)/2))/(2*(-1 + b + k)*(b + k)))*z, 1, {k, 1, Infinity}])), Element[b | z, Complexes]]

(* {"Hypergeometric1F1Regularized", 5}*)
ConditionalExpression[E^z*z^(1 - b)*(1 - GammaRegularized[-1 + b, z]) == 1/(Gamma[b]*(1 - z/(b + Inactive[ContinuedFractionK][(-((1 + (-1)^k)*(b + (-2 + k)/2))/2 + ((1 - (-1)^k)*(1 + k))/4)*z, b + k, {k, 1, Infinity}]))), Element[b | z, Complexes]]

(* {"Hypergeometric1F1Regularized", 6}*)
ConditionalExpression[E^z*z^(1 - b)*(1 - GammaRegularized[-1 + b, z]) == 1/(Gamma[-1 + b]*(-1 + b + Inactive[ContinuedFractionK][(-((1 - (-1)^k)*(b + (-3 + k)/2))/2 + ((1 + (-1)^k)*k)/4)*z, -1 + b + k, {k, 1, Infinity}])), Element[b | z, Complexes]]

(* {"Hypergeometric1F1Regularized", 7}*)
ConditionalExpression[E^z*z^(1 - b)*(1 - GammaRegularized[-1 + b, z]) == (1 + z/(b + Inactive[ContinuedFractionK][(-((1 - (-1)^k)*(b + (-1 + k)/2))/2 + ((1 + (-1)^k)*k)/4)*z, b + k, {k, 1, Infinity}]))/Gamma[b], Element[b | z, Complexes]]

(* {"Hypergeometric1F1Regularized", 8}*)
ConditionalExpression[E^z*z^(1 - b)*(1 - GammaRegularized[-1 + b, z]) == (1 + z/(b - z + Inactive[ContinuedFractionK][(((1 + (-1)^k)*(1 - b - k/2))/2 + ((1 - (-1)^k)*(1 + k))/4)*z, b + k, {k, 1, Infinity}]))/Gamma[b], Element[b | z, Complexes] &&  !(Element[b, Integers] && b <= 0)]

(* {"Hypergeometric1F1Regularized", 9}*)
ConditionalExpression[E^z*z^(1 - b)*(1 - GammaRegularized[-1 + b, z]) == E^z*z^(1 - b) - 1/(Gamma[-1 + b]*(z + Inactive[ContinuedFractionK][(3 - 3*(-1)^k + 2*(-1 + (-1)^k)*b + 2*k)/4, (1 - (-1)^k + z + (-1)^k*z)/2, {k, 1, Infinity}])), Element[b | z, Complexes]]

(* {"Hypergeometric1F1Regularized", 10}*)
ConditionalExpression[E^z*z^(1 - b)*(1 - GammaRegularized[-1 + b, z]) == 1/(Gamma[-1 + b]*(-1 + b - z + Inactive[ContinuedFractionK][k*z, -1 + b + k - z, {k, 1, Infinity}])), Element[b | z, Complexes]]

(* {"Hypergeometric1F1Regularized", 11}*)
ConditionalExpression[E^z*z^(1 - m)*(1 - GammaRegularized[-1 + m, z]) == E^z*z^(1 - m) - 1/(Gamma[-1 + m]*(2 - m + z + Inactive[ContinuedFractionK][-(k*(1 + k - m)), 2 + 2*k - m + z, {k, 1, Infinity}])), Element[m, Integers] && Element[z, Complexes] && m > 1]

(* {"Hypergeometric1F1Regularized", 12}*)
ConditionalExpression[(E^z*(1 - GammaRegularized[z, z]))/z^z == (1 + Inactive[ContinuedFractionK][(1 + k)*z, 1 + k, {k, 1, Infinity}])/Gamma[1 + z], Element[z, Complexes]]

(* {"Hypergeometric1F1RegularizedRatio", 1}*)
ConditionalExpression[Hypergeometric1F1Regularized[1 + a, 1 + b, z]/Hypergeometric1F1Regularized[a, b, z] == 1/(b*(1 + Inactive[ContinuedFractionK][(-((1 - (-1)^k)*(-a + b + (-1 + k)/2))/(2*(-1 + b + k)*(b + k)) + ((1 + (-1)^k)*(a + k/2))/(2*(-1 + b + k)*(b + k)))*z, 1, {k, 1, Infinity}])), Element[a | b | z, Complexes] &&  !(Element[b, Integers] && b <= 0)]

(* {"Hypergeometric1F1RegularizedRatio", 2}*)
ConditionalExpression[Hypergeometric1F1Regularized[a, b, z]/Hypergeometric1F1Regularized[1 + a, 1 + b, z] == b*(1 + Inactive[ContinuedFractionK][(-((1 - (-1)^k)*(-a + b + (-1 + k)/2))/(2*(-1 + b + k)*(b + k)) + ((1 + (-1)^k)*(a + k/2))/(2*(-1 + b + k)*(b + k)))*z, 1, {k, 1, Infinity}]), Element[a | b | z, Complexes] &&  !(Element[b, Integers] && b <= 0)]

(* {"Hypergeometric1F1RegularizedRatio", 3}*)
ConditionalExpression[Hypergeometric1F1Regularized[a, 1 + b, z]/Hypergeometric1F1Regularized[a, b, z] == 1/(b*(1 + Inactive[ContinuedFractionK][(-1)^(-1 + k)*(((1 + (-1)^k)*(-a + b + k/2))/(2*(-1 + b + k)*(b + k)) + ((1 - (-1)^k)*(-1 + a + k))/(2*(-1 + b + k)*(b + k)))*z, 1, {k, 1, Infinity}])), Element[a | b | z, Complexes] &&  !(Element[b, Integers] && b <= 0)]

(* {"Hypergeometric1F1RegularizedRatio", 4}*)
ConditionalExpression[Hypergeometric1F1Regularized[a, b, z]/Hypergeometric1F1Regularized[a, 1 + b, z] == b*(1 + Inactive[ContinuedFractionK][(-1)^(-1 + k)*(((1 + (-1)^k)*(-a + b + k/2))/(2*(-1 + b + k)*(b + k)) + ((1 - (-1)^k)*(-1 + a + k))/(2*(-1 + b + k)*(b + k)))*z, 1, {k, 1, Infinity}]), Element[a | b | z, Complexes] &&  !(Element[b, Integers] && b <= 0)]

(* {"Hypergeometric1F1RegularizedRatio", 5}*)
ConditionalExpression[Hypergeometric1F1Regularized[1 + a, 1 + b, z]/Hypergeometric1F1Regularized[a, b, z] == (b + Inactive[ContinuedFractionK][(((1 - (-1)^k)*(a - b + (1 - k)/2))/2 + ((1 + (-1)^k)*(a + k/2))/2)*z, b + k, {k, 1, Infinity}])^(-1), Element[a | b | z, Complexes] &&  !(Element[b, Integers] && b <= 0)]

(* {"Hypergeometric1F1RegularizedRatio", 6}*)
ConditionalExpression[Hypergeometric1F1Regularized[1 + a, 1 + b, z]/Hypergeometric1F1Regularized[a, b, z] == Inactive[ContinuedFractionK][(-1 + a + k)*z, -1 + b + k - z, {k, 1, Infinity}]/(a*z), Element[a | b | z, Complexes]]

(* {"Hypergeometric1F1RegularizedRatio", 7}*)
ConditionalExpression[Hypergeometric1F1Regularized[a, b, z]/Hypergeometric1F1Regularized[1 + a, 1 + b, z] == b - z + Inactive[ContinuedFractionK][(a + k)*z, b + k - z, {k, 1, Infinity}], Element[a | b | z, Complexes]]

(* {"Hypergeometric1F1RegularizedRatio", 8}*)
ConditionalExpression[Hypergeometric1F1Regularized[-m, b, z]/Hypergeometric1F1Regularized[1 - m, 1 + b, z] == b - z + Inactive[ContinuedFractionK][(k - m)*z, b + k - z, {k, 1, -1 + m}], Element[m, Integers] && Element[b | z, Complexes] && m > 0]

(* {"Hypergeometric1F1RegularizedRatio", 9}*)
ConditionalExpression[Hypergeometric1F1Regularized[a, 1 + b, z]/Hypergeometric1F1Regularized[a, b, z] == (b + Inactive[ContinuedFractionK][(((1 - (-1)^k)*(a + (-1 + k)/2))/2 + ((1 + (-1)^k)*(a - b - k/2))/2)*z, b + k, {k, 1, Infinity}])^(-1), Element[a | b | z, Complexes]]

(* {"Hypergeometric2F1", 1}*)
ConditionalExpression[Hypergeometric2F1[a, b, c, z] == 1 + (a*b*z)/(c*(1 + Inactive[ContinuedFractionK][-(((a + k)*(b + k)*z)/((1 + k)*(c + k))), 1 + ((a + k)*(b + k)*z)/((1 + k)*(c + k)), {k, 1, Infinity}])), Element[a | b | c | z, Complexes] && Abs[z] < 1]

(* {"Hypergeometric2F1", 2}*)
ConditionalExpression[Hypergeometric2F1[a, b, c, z] == (1 + Inactive[ContinuedFractionK][-(((-1 + a + k)*(-1 + b + k)*z)/(k*(-1 + c + k))), 1 + ((-1 + a + k)*(-1 + b + k)*z)/(k*(-1 + c + k)), {k, 1, Infinity}])^(-1), Element[a | b | c | z, Complexes] && Abs[z] < 1]

(* {"Hypergeometric2F1", 3}*)
ConditionalExpression[Hypergeometric2F1[a, b, c, 1 - z] == (Gamma[c]*Gamma[-a - b + c])/(Gamma[-a + c]*Gamma[-b + c]*(1 + Inactive[ContinuedFractionK][-(((-1 + a + k)*(-1 + b + k)*z)/(k*(a + b - c + k))), 1 + ((-1 + a + k)*(-1 + b + k)*z)/(k*(a + b - c + k)), {k, 1, Infinity}])) + (z^(-a - b + c)*Gamma[a + b - c]*Gamma[c])/(Gamma[a]*Gamma[b]*(1 + Inactive[ContinuedFractionK][-(((-1 - a + c + k)*(-1 - b + c + k)*z)/(k*(-a - b + c + k))), 1 + ((-1 - a + c + k)*(-1 - b + c + k)*z)/(k*(-a - b + c + k)), {k, 1, Infinity}])), Element[a | b | c | z, Complexes] && NotElement[-a - b + c, Integers] && Abs[z] < 1]

(* {"Hypergeometric2F1", 4}*)
ConditionalExpression[Hypergeometric2F1[a, b, a + b, 1 - z] == -((Gamma[a + b]*Log[z])/(Gamma[a]*Gamma[b]*(1 + Inactive[ContinuedFractionK][-(((-1 + a + k)*(-1 + b + k)*z)/k^2), 1 + ((-1 + a + k)*(-1 + b + k)*z)/k^2, {k, 1, Infinity}]))) - (Gamma[a + b]*(2*EulerGamma + PolyGamma[0, a] + PolyGamma[0, b]))/(Gamma[a]*Gamma[b]*(1 + Inactive[ContinuedFractionK][-(((-1 + a + k)*(-1 + b + k)*z*(-2*PolyGamma[0, 1 + k] + PolyGamma[0, a + k] + PolyGamma[0, b + k]))/(k^2*(-2*PolyGamma[0, k] + PolyGamma[0, -1 + a + k] + PolyGamma[0, -1 + b + k]))), 1 + ((-1 + a + k)*(-1 + b + k)*z*(-2*PolyGamma[0, 1 + k] + PolyGamma[0, a + k] + PolyGamma[0, b + k]))/(k^2*(-2*PolyGamma[0, k] + PolyGamma[0, -1 + a + k] + PolyGamma[0, -1 + b + k])), {k, 1, Infinity}])), Element[a | b | z, Complexes] && Abs[z] < 1]

(* {"Hypergeometric2F1", 5}*)
ConditionalExpression[Hypergeometric2F1[a, b, a + b - m, 1 - z] == ((-1 + m)!*Gamma[a + b - m])/(z^m*Gamma[a]*Gamma[b]*(1 + Inactive[ContinuedFractionK][-(((-1 + a + k - m)*(-1 + b + k - m)*z)/(k*(k - m))), 1 + ((-1 + a + k - m)*(-1 + b + k - m)*z)/(k*(k - m)), {k, 1, -1 + m}])) - ((-1)^m*Gamma[a + b - m]*Log[z])/(m!*Gamma[a - m]*Gamma[b - m]*(1 + Inactive[ContinuedFractionK][-(((-1 + a + k)*(-1 + b + k)*z)/(k*(k + m))), 1 + ((-1 + a + k)*(-1 + b + k)*z)/(k*(k + m)), {k, 1, Infinity}])) - ((-1)^m*Gamma[a + b - m]*(EulerGamma + PolyGamma[0, a] + PolyGamma[0, b] - PolyGamma[0, 1 + m]))/(m!*Gamma[a - m]*Gamma[b - m]*(1 + Inactive[ContinuedFractionK][-(((-1 + a + k)*(-1 + b + k)*z*(-PolyGamma[0, 1 + k] + PolyGamma[0, a + k] + PolyGamma[0, b + k] - PolyGamma[0, 1 + k + m]))/(k*(k + m)*(-PolyGamma[0, k] + PolyGamma[0, -1 + a + k] + PolyGamma[0, -1 + b + k] - PolyGamma[0, k + m]))), 1 + ((-1 + a + k)*(-1 + b + k)*z*(-PolyGamma[0, 1 + k] + PolyGamma[0, a + k] + PolyGamma[0, b + k] - PolyGamma[0, 1 + k + m]))/(k*(k + m)*(-PolyGamma[0, k] + PolyGamma[0, -1 + a + k] + PolyGamma[0, -1 + b + k] - PolyGamma[0, k + m])), {k, 1, Infinity}])), Element[m, Integers] && Element[a | b | z, Complexes] && m > 0 && Abs[z] < 1]

(* {"Hypergeometric2F1", 6}*)
ConditionalExpression[Hypergeometric2F1[a, b, a + b + m, 1 - z] == ((-1 + m)!*Gamma[a + b + m])/(Gamma[a + m]*Gamma[b + m]*(1 + Inactive[ContinuedFractionK][-(((-1 + a + k)*(-1 + b + k)*z)/(k*(k - m))), 1 + ((-1 + a + k)*(-1 + b + k)*z)/(k*(k - m)), {k, 1, -1 + m}])) - ((-z)^m*Gamma[a + b + m]*Log[z])/(m!*Gamma[a]*Gamma[b]*(1 + Inactive[ContinuedFractionK][-(((-1 + a + k + m)*(-1 + b + k + m)*z)/(k*(k + m))), 1 + ((-1 + a + k + m)*(-1 + b + k + m)*z)/(k*(k + m)), {k, 1, Infinity}])) + ((-z)^m*Gamma[a + b + m]*(-EulerGamma + PolyGamma[0, 1 + m] - PolyGamma[0, a + m] - PolyGamma[0, b + m]))/(m!*Gamma[a]*Gamma[b]*(1 + Inactive[ContinuedFractionK][((-1 + a + k + m)*(-1 + b + k + m)*z*(-PolyGamma[0, 1 + k] - PolyGamma[0, 1 + k + m] + PolyGamma[0, a + k + m] + PolyGamma[0, b + k + m]))/(k*(k + m)*(PolyGamma[0, k] + PolyGamma[0, k + m] - PolyGamma[0, -1 + a + k + m] - PolyGamma[0, -1 + b + k + m])), 1 - ((-1 + a + k + m)*(-1 + b + k + m)*z*(-PolyGamma[0, 1 + k] - PolyGamma[0, 1 + k + m] + PolyGamma[0, a + k + m] + PolyGamma[0, b + k + m]))/(k*(k + m)*(PolyGamma[0, k] + PolyGamma[0, k + m] - PolyGamma[0, -1 + a + k + m] - PolyGamma[0, -1 + b + k + m])), {k, 1, Infinity}])), Element[m, Integers] && Element[a | b | z, Complexes] && m > 0 && Abs[z] < 1]

(* {"Hypergeometric2F1", 7}*)
ConditionalExpression[Hypergeometric2F1[a, b, c, z] == (Gamma[-a + b]*Gamma[c])/((-z)^a*Gamma[b]*Gamma[-a + c]*(1 + Inactive[ContinuedFractionK][-(((-1 + a + k)*(a - c + k))/(k*(a - b + k)*z)), 1 + ((-1 + a + k)*(a - c + k))/(k*(a - b + k)*z), {k, 1, Infinity}])) + (Gamma[a - b]*Gamma[c])/((-z)^b*Gamma[a]*Gamma[-b + c]*(1 + Inactive[ContinuedFractionK][-(((-1 + b + k)*(b - c + k))/(k*(-a + b + k)*z)), 1 + ((-1 + b + k)*(b - c + k))/(k*(-a + b + k)*z), {k, 1, Infinity}])), Element[a | b | c | z, Complexes] && NotElement[a - b, Integers] && Abs[z] > 1]

(* {"Hypergeometric2F1", 8}*)
ConditionalExpression[Hypergeometric2F1[a, a + m, c, z] == (Gamma[c]*Gamma[m])/((-z)^a*Gamma[-a + c]*Gamma[a + m]*(1 + Inactive[ContinuedFractionK][-(((-1 + a + k)*(a - c + k))/(k*(k - m)*z)), 1 + ((-1 + a + k)*(a - c + k))/(k*(k - m)*z), {k, 1, -1 + m}])) + ((-z)^(-a - m)*Gamma[c]*Gamma[1 + a - c + m]*Log[-z]*Sin[(-a + c)*Pi])/(Pi*m!*Gamma[a]*(1 + Inactive[ContinuedFractionK][-(((-1 + a + k + m)*(a - c + k + m))/(k*(k + m)*z)), 1 + ((-1 + a + k + m)*(a - c + k + m))/(k*(k + m)*z), {k, 1, Infinity}])) + ((-z)^(-a - m)*Gamma[c]*Pochhammer[a, m]*Pochhammer[1 + a - c, m]*(-EulerGamma - PolyGamma[0, -a + c - m] + PolyGamma[0, 1 + m] - PolyGamma[0, a + m]))/(m!*Gamma[-a + c]*Gamma[a + m]*(1 + Inactive[ContinuedFractionK][((-1 + a + k + m)*(a - c + k + m)*(-PolyGamma[0, 1 + k] + PolyGamma[0, -a + c - k - m] - PolyGamma[0, 1 + k + m] + PolyGamma[0, a + k + m]))/(k*(k + m)*z*(PolyGamma[0, k] - PolyGamma[0, 1 - a + c - k - m] + PolyGamma[0, k + m] - PolyGamma[0, -1 + a + k + m])), 1 - ((-1 + a + k + m)*(a - c + k + m)*(-PolyGamma[0, 1 + k] + PolyGamma[0, -a + c - k - m] - PolyGamma[0, 1 + k + m] + PolyGamma[0, a + k + m]))/(k*(k + m)*z*(PolyGamma[0, k] - PolyGamma[0, 1 - a + c - k - m] + PolyGamma[0, k + m] - PolyGamma[0, -1 + a + k + m])), {k, 1, Infinity}])), Element[m, Integers] && Element[a | c | z, Complexes] && NotElement[-a + c, Integers] && m > 0 && Abs[z] > 1]

(* {"Hypergeometric2F1", 9}*)
ConditionalExpression[Hypergeometric2F1[a, a + m, a - p, z] == ((-1)^p*(-z)^(-a - m)*(m + p)!*Gamma[a - p])/(m!*Gamma[a]*(1 + Inactive[ContinuedFractionK][-(((-1 + a + k + m)*(k + m + p))/(k*(k + m)*z)), 1 + ((-1 + a + k + m)*(k + m + p))/(k*(k + m)*z), {k, 1, Infinity}])), Element[m, Integers] && Element[p, Integers] && Element[a | z, Complexes] && m >= 0 && p >= 0 && Abs[z] > 1]

(* {"Hypergeometric2F1", 10}*)
ConditionalExpression[Hypergeometric2F1[a, a + m, a + p, z] == (Gamma[m]*Gamma[a + p])/((-z)^a*Gamma[a + m]*Gamma[p]*(1 + Inactive[ContinuedFractionK][-(((-1 + a + k)*(k - p))/(k*(k - m)*z)), 1 + ((-1 + a + k)*(k - p))/(k*(k - m)*z), {k, 1, -1 + m}])) + ((-1)^m*(-z)^(-a - m)*Gamma[a + p]*Log[-z])/(m!*(-1 - m + p)!*Gamma[a]*(1 + Inactive[ContinuedFractionK][-(((-1 + a + k + m)*(k + m - p))/(k*(k + m)*z)), 1 + ((-1 + a + k + m)*(k + m - p))/(k*(k + m)*z), {k, 1, Infinity}])) + ((-1)^m*(-z)^(-a - p)*Gamma[a + p]^2)/(p!*(-m + p)!*Gamma[a]*Gamma[a + m]*(1 + Inactive[ContinuedFractionK][-((k*(-1 + a + k + p))/((k + p)*(k - m + p)*z)), 1 + (k*(-1 + a + k + p))/((k + p)*(k - m + p)*z), {k, 1, Infinity}])) + ((-1)^m*(-z)^(-a - m)*Gamma[a + p]*(-EulerGamma + PolyGamma[0, 1 + m] - PolyGamma[0, a + m] - PolyGamma[0, -m + p]))/(m!*(-1 - m + p)!*Gamma[a]*(1 + Inactive[ContinuedFractionK][((-1 + a + k + m)*(k + m - p)*(-PolyGamma[0, 1 + k] - PolyGamma[0, 1 + k + m] + PolyGamma[0, a + k + m] + PolyGamma[0, -k - m + p]))/(k*(k + m)*z*(PolyGamma[0, k] + PolyGamma[0, k + m] - PolyGamma[0, -1 + a + k + m] - PolyGamma[0, 1 - k - m + p])), 1 - ((-1 + a + k + m)*(k + m - p)*(-PolyGamma[0, 1 + k] - PolyGamma[0, 1 + k + m] + PolyGamma[0, a + k + m] + PolyGamma[0, -k - m + p]))/(k*(k + m)*z*(PolyGamma[0, k] + PolyGamma[0, k + m] - PolyGamma[0, -1 + a + k + m] - PolyGamma[0, 1 - k - m + p])), {k, 1, -1 - m + p}])), Element[a | z, Complexes] && Element[m, Integers] && m > 0 && Element[p, Integers] && p >= m && Abs[z] > 1]

(* {"Hypergeometric2F1", 11}*)
ConditionalExpression[Hypergeometric2F1[a, a + m, a + p, z] == (Gamma[m]*Gamma[a + p])/((-z)^a*Gamma[a + m]*Gamma[p]*(1 + Inactive[ContinuedFractionK][-(((-1 + a + k)*(k - p))/(k*(k - m)*z)), 1 + ((-1 + a + k)*(k - p))/(k*(k - m)*z), {k, 1, -1 + p}])) + ((-1)^p*(-z)^(-a - m)*(m - p)!*Pochhammer[a, p])/(m!*(1 + Inactive[ContinuedFractionK][-(((-1 + a + k + m)*(k + m - p))/(k*(k + m)*z)), 1 + ((-1 + a + k + m)*(k + m - p))/(k*(k + m)*z), {k, 1, Infinity}])), Element[a | z, Complexes] && Element[m, Integers] && m > 0 && Element[p, Integers] && Inequality[0, Less, p, LessEqual, m] && Abs[z] > 1]

(* {"Hypergeometric2F1", 12}*)
ConditionalExpression[Hypergeometric2F1[1, b, c, z] == 1 + (b*z)/(c*(1 + Inactive[ContinuedFractionK][(-((1 + (-1)^k)*(-1 - b + c + k/2)*k)/(4*(-1 + c + k)*(c + k)) - ((1 - (-1)^k)*(b + (1 + k)/2)*(-1 + c + (1 + k)/2))/(2*(-1 + c + k)*(c + k)))*z, 1, {k, 1, Infinity}])), Element[b | c | z, Complexes] && Abs[Arg[1 - z]] < Pi]

(* {"Hypergeometric2F1", 13}*)
ConditionalExpression[Hypergeometric2F1[1, b, c, z] == 1 + (b*z)/(c*(1 + Inactive[ContinuedFractionK][(-((1 + (-1)^k)*(-1 - b + c + k/2)*k)/(4*(-1 + c + k)*(c + k)) - ((1 - (-1)^k)*(b + (1 + k)/2)*(-1 + c + (1 + k)/2))/(2*(-1 + c + k)*(c + k)))*z, 1, {k, 1, Infinity}])), Element[b | c | z, Complexes] && Abs[Arg[1 - z]] < Pi]

(* {"Hypergeometric2F1", 14}*)
ConditionalExpression[Hypergeometric2F1[1, b, c, z] == (1 + Inactive[ContinuedFractionK][(-((1 - (-1)^k)*(b + (-1 + k)/2)*(-1 + c + (-1 + k)/2))/(2*(-2 + c + k)*(-1 + c + k)) - ((1 + (-1)^k)*(-1 - b + c + k/2)*k)/(4*(-2 + c + k)*(-1 + c + k)))*z, 1, {k, 1, Infinity}])^(-1), Element[b | c | z, Complexes] && Abs[Arg[1 - z]] < Pi]

(* {"Hypergeometric2F1", 15}*)
ConditionalExpression[Hypergeometric2F1[1, b, c, z] == (1 + Inactive[ContinuedFractionK][((-3 + 6*b + 2*c - 4*b*c + 6*k - 4*c*k - 2*k^2 + (-1)^k*(-1 + 2*b)*(-3 + 2*c + 2*k))*z)/(8*(-2 + c + k)*(-1 + c + k)), 1, {k, 1, Infinity}])^(-1), Element[b | c | z, Complexes] && Abs[Arg[1 - z]] < Pi]

(* {"Hypergeometric2F1", 16}*)
ConditionalExpression[Hypergeometric2F1[1, b, c, z] == (1 - (b*z)/(c + Inactive[ContinuedFractionK][z*(-((1 + (-1)^k)*(c + Floor[(-1 + k)/2])*(b + Floor[k/2]))/2 + ((1 - (-1)^k)*(b - c - Floor[(-1 + k)/2])*Floor[(1 + k)/2])/2), c + k, {k, 1, Infinity}]))^(-1), Element[b | c | z, Complexes] && Abs[Arg[1 - z]] < Pi]

(* {"Hypergeometric2F1", 17}*)
ConditionalExpression[Hypergeometric2F1[1, b, c, z] == (-1 + c)/(-1 + c + Inactive[ContinuedFractionK][(-((1 - (-1)^k)*(c + (-3 + k)/2)*(b + (-1 + k)/2))/2 - ((1 + (-1)^k)*(-1 - b + c + k/2)*k)/4)*z, -1 + c + k, {k, 1, Infinity}]), Element[b | c | z, Complexes] && Abs[Arg[1 - z]] < Pi]

(* {"Hypergeometric2F1", 18}*)
ConditionalExpression[Hypergeometric2F1[1, b, c, z] == (-1 + c)/(-1 + c + Inactive[ContinuedFractionK][((1 + (-1)^k)*k*(1 - z))/4 - ((1 - (-1)^k)*(-1 + b + (1 + k)/2)*z)/2, -(-1)^k + ((1 + (-1)^k)*c)/2, {k, 1, Infinity}]), Element[b | c | z, Complexes] && Re[c] > 1 && Abs[Arg[1 - z]] < Pi && Re[z] < 1/2]

(* {"Hypergeometric2F1", 19}*)
ConditionalExpression[Hypergeometric2F1[1, b, c, z] == (-1 + c)/(-1 + c - b*z + Inactive[ContinuedFractionK][k*(-1 + b + k)*(1 - z)*z, -1 + c + k - (b + 2*k)*z, {k, 1, Infinity}]), Element[b | c | z, Complexes] && Abs[Arg[1 - z]] < Pi && Re[z] < 1/2]

(* {"Hypergeometric2F1", 20}*)
ConditionalExpression[Hypergeometric2F1[1, b, c, z] == ((1 - z)^(-1 - b + c)*(-z)^(1 - c)*Gamma[1 - b]*Gamma[c])/Gamma[-b + c] - (-1 + c)/(2 - c + (-1 + b)*z + Inactive[ContinuedFractionK][-(k*(1 - c + k)*(1 - z)), 2 - c + 2*k + (-1 + b - k)*z, {k, 1, Infinity}]), Element[b | c | z, Complexes] && Abs[Arg[1 - z]] < Pi && Abs[1 - z] > 1]

(* {"Hypergeometric2F1", 21}*)
ConditionalExpression[Hypergeometric2F1[1, b, c, z] == (-1 + c)/(-1 + c + (1 - b)*z + Inactive[ContinuedFractionK][-(k*(-1 - b + c + k)*z), -1 + c + k + (1 - b + k)*z, {k, 1, Infinity}]), Element[b | c | z, Complexes] && Abs[z] < 1]

(* {"Hypergeometric2F1", 22}*)
ConditionalExpression[Hypergeometric2F1[1, b, c, z] == (-1 + c)/(-1 + c - b*z + Inactive[ContinuedFractionK][k*(-1 + b + k)*(z - z^2), -1 + c + k - (b + 2*k)*z, {k, 1, Infinity}]), Element[b | c | z, Complexes] && Abs[Arg[1 - z]] < Pi]

(* {"Hypergeometric2F1", 23}*)
ConditionalExpression[Hypergeometric2F1[1, b, c, z] == (-1 + c)/(z*(1 - b + (-1 + c)/z + Inactive[ContinuedFractionK][-((k*(-1 - b + c + k))/z), 1 - b + k + (-1 + c + k)/z, {k, 1, Infinity}])), Element[b | c | z, Complexes] && Abs[z] < 1]

(* {"Hypergeometric2F1", 24}*)
ConditionalExpression[Hypergeometric2F1[1, m^(-1), 1 + m^(-1), -z^m] == (1 + z^m/(1 + m + Inactive[ContinuedFractionK][z^m*((1 + (-1)^k)/2 + m*Floor[(1 + k)/2])^2, 1 + (1 + k)*m, {k, 1, Infinity}]))^(-1), Element[m, Integers] && Element[z, Complexes] && m > 0 && Abs[Arg[1 - z]] < Pi]

(* {"Hypergeometric2F1", 25}*)
ConditionalExpression[Hypergeometric2F1[1, z/(-1 + t), 1 + z/(-1 + t), t^(-1)] == (t*z)/((-1 + t)*(z + Inactive[ContinuedFractionK][t^((1 + (-1)^k)/2)*Floor[(1 + k)/2], z^((1 + (-1)^k)/2), {k, 1, Infinity}])), Element[t | z, Complexes] &&  !Element[t | z, Reals]]

(* {"Hypergeometric2F1", 26}*)
ConditionalExpression[Hypergeometric2F1[m, (m + z)/2, 1 + (m + z)/2, (-1 + a)/(1 + a)] == ((1 + a)^m*(m + z))/(2^m*(m + z + Inactive[ContinuedFractionK][((1 + (-1)^k)*(1 + a)*k)/4 + ((1 - (-1)^k)*(-1 + a)*(-1 + (1 + k)/2 + m))/2, (m + z)^((1 + (-1)^k)/2), {k, 1, Infinity}])), Element[a | m | z, Complexes] && Re[m + z] > 0]

(* {"Hypergeometric2F1", 27}*)
ConditionalExpression[Hypergeometric2F1[m, (m + z)/2, 1 + (m + z)/2, (-1 + a)/(1 + a)] == ((1 + a)^m*(m + z))/(2^m*(a*m + z + Inactive[ContinuedFractionK][(1 - a^2)*k*(-1 + k + m), a*(2*k + m) + z, {k, 1, Infinity}])), Element[a | m | z, Complexes]]

(* {"Hypergeometric2F1", 28}*)
ConditionalExpression[Hypergeometric2F1[m, (m + z)/2, 1 + (m + z)/2, -1] == (m + z)/(2^m*(z + Inactive[ContinuedFractionK][k*(-1 + k + m), z, {k, 1, Infinity}])), Element[m | z, Complexes]]

(* {"Hypergeometric2F1", 29}*)
ConditionalExpression[Hypergeometric2F1[1, (1 + p)/q, (1 + p + q)/q, -z^q] == (1 + p)/(1 + p + Inactive[ContinuedFractionK][((1 + (-1)^k)*k^2*q^2*z^q)/8 + ((1 - (-1)^k)*(1 + p + ((-1 + k)*q)/2)^2*z^q)/2, 1 + p + k*q, {k, 1, Infinity}]), Element[p | q | z, Complexes] && Abs[Arg[1 - z]] < Pi]

(* {"Hypergeometric2F1Ratio", 1}*)
ConditionalExpression[Hypergeometric2F1[a, 1 + b, 1 + c, z]/Hypergeometric2F1[a, b, c, z] == (1 - (a*(-b + c)*z)/(c*(1 + c)*(1 + Inactive[ContinuedFractionK][(z*(((1 - (-1)^k)*(-b - Floor[(1 + k)/2])*(-a + c + Floor[(1 + k)/2]))/2 - ((1 + (-1)^k)*(a + Floor[(1 + k)/2])*(-b + c + Floor[(1 + k)/2]))/2))/((c + k)*(1 + c + k)), 1, {k, 1, Infinity}])))^(-1), Element[a | b | c | z, Complexes] && Abs[Arg[1 - z]] < Pi]

(* {"Hypergeometric2F1Ratio", 2}*)
ConditionalExpression[Hypergeometric2F1[a, 1 + b, 1 + c, z]/Hypergeometric2F1[a, b, c, z] == c/(c + (a*(b - c)*z)/(1 + c + Inactive[ContinuedFractionK][z*(((1 + (-1)^k)*(b - c - Floor[(1 + k)/2])*(a + Floor[(1 + k)/2]))/2 + ((1 - (-1)^k)*(a - c - Floor[(1 + k)/2])*(b + Floor[(1 + k)/2]))/2), 1 + c + k, {k, 1, Infinity}])), Element[a | b | c | z, Complexes] && Abs[Arg[1 - z]] < Pi]

(* {"Hypergeometric2F1Ratio", 3}*)
ConditionalExpression[Hypergeometric2F1[a, 1 + b, 1 + c, z]/Hypergeometric2F1[a, b, c, z] == c/((c + (1 - a + b)*z)*(1 + Inactive[ContinuedFractionK][-(((b + k)*(-a + c + k)*z)/(c + z - a*z + b*z)^2), (c + k + z - a*z + b*z + k*z)/(c + z - a*z + b*z), {k, 1, Infinity}])), Element[a | b | c | z, Complexes] && Abs[z] < 1]

(* {"Hypergeometric2F1Ratio", 4}*)
ConditionalExpression[Hypergeometric2F1[a, 1 + b, 1 + c, z]/Hypergeometric2F1[a, b, c, z] == c/(c + (1 - a + b)*z + Inactive[ContinuedFractionK][(-b - k)*(-a + c + k)*z, c + k + (1 - a + b + k)*z, {k, 1, Infinity}]), Element[a | b | c | z, Complexes] && Abs[z] < 1]

(* {"Hypergeometric2F1Ratio", 5}*)
ConditionalExpression[Hypergeometric2F1[1 + a, b, 1 + c, z]/Hypergeometric2F1[a, b, c, z] == (1 - (b*(-a + c)*z)/(c*(1 + c)*(1 + Inactive[ContinuedFractionK][(z*(-((1 + (-1)^k)*(b + Floor[(1 + k)/2])*(-a + c + Floor[(1 + k)/2]))/2 + ((1 - (-1)^k)*(-a - Floor[(1 + k)/2])*(-b + c + Floor[(1 + k)/2]))/2))/((c + k)*(1 + c + k)), 1, {k, 1, Infinity}])))^(-1), Element[a | b | c | z, Complexes] && Abs[Arg[1 - z]] < Pi]

(* {"Hypergeometric2F1Ratio", 6}*)
ConditionalExpression[Hypergeometric2F1[1 + a, b, 1 + c, z]/Hypergeometric2F1[a, b, c, z] == c/(c + (b*(a - c)*z)/(1 + c + Inactive[ContinuedFractionK][z*(((1 - (-1)^k)*(b - c - Floor[(1 + k)/2])*(a + Floor[(1 + k)/2]))/2 + ((1 + (-1)^k)*(a - c - Floor[(1 + k)/2])*(b + Floor[(1 + k)/2]))/2), 1 + c + k, {k, 1, Infinity}])), Element[a | b | c | z, Complexes] && Abs[Arg[1 - z]] < Pi]

(* {"Hypergeometric2F1Ratio", 7}*)
ConditionalExpression[Hypergeometric2F1[1 + a, b, 1 + c, z]/Hypergeometric2F1[a, b, c, z] == c/((c + (1 + a - b)*z)*(1 + Inactive[ContinuedFractionK][-(((a + k)*(-b + c + k)*z)/(c + z + a*z - b*z)^2), (c + k + z + a*z - b*z + k*z)/(c + z + a*z - b*z), {k, 1, Infinity}])), Element[a | b | c | z, Complexes] && Abs[z] < 1]

(* {"Hypergeometric2F1Ratio", 8}*)
ConditionalExpression[Hypergeometric2F1[1 + a, b, 1 + c, z]/Hypergeometric2F1[a, b, c, z] == c/(c + (1 + a - b)*z + Inactive[ContinuedFractionK][(-a - k)*(-b + c + k)*z, c + k + (1 + a - b + k)*z, {k, 1, Infinity}]), Element[a | b | c | z, Complexes] && Abs[z] < 1]

(* {"Hypergeometric2F1Ratio", 9}*)
ConditionalExpression[Hypergeometric2F1[1 + a, b, 1 + c, -1]/Hypergeometric2F1[a, b, c, -1] == c/(-1 - a + b + c + Inactive[ContinuedFractionK][(a + k)*(-b + c + k), -1 - a + b + c, {k, 1, Infinity}]), Element[a | b | c, Complexes] && Re[a] > 0 && Re[-b + c] > 0 && Re[-a + b + c] > 1 && Re[-a + c] > 0]

(* {"Hypergeometric2F1Ratio", 10}*)
ConditionalExpression[Hypergeometric2F1[1 + a, 1 + b, 1 + c, z]/Hypergeometric2F1[a, b, c, z] == (c*Inactive[ContinuedFractionK][(-1 + a + k)*(-1 + b + k)*(z - z^2), -1 + c + k - (-1 + a + b + 2*k)*z, {k, 1, Infinity}])/(a*b*(z - z^2)), Element[a | b | c | z, Complexes] && Abs[Arg[1 - z]] < Pi && Re[z] < 1/2]

(* {"Hypergeometric2F1Ratio", 11}*)
ConditionalExpression[Hypergeometric2F1[a, b, c, z]/Hypergeometric2F1[1 + a, b, 1 + c, z] == 1 + Inactive[ContinuedFractionK][(((1 - (-1)^k)*(-b + (1 - k)/2)*(-a + c + (-1 + k)/2))/(2*(-1 + c + k)*(c + k)) + ((1 + (-1)^k)*(-a - k/2)*(-b + c + k/2))/(2*(-1 + c + k)*(c + k)))*z, 1, {k, 1, Infinity}], ((Re[-a - b + c] > 0 || c == a + b) && z == 1) || (Element[a | b | c | z, Complexes] && Abs[Arg[1 - z]] < Pi)]

(* {"Hypergeometric2F1Ratio", 12}*)
ConditionalExpression[Hypergeometric2F1[a, b, c, z]/Hypergeometric2F1[1 + a, b, 1 + c, z] == 1 + ((1 + a - b)*z)/c + Inactive[ContinuedFractionK][(-a - k)*(-b + c + k)*z, c + k + (1 + a - b + k)*z, {k, 1, Infinity}]/c, Element[a | b | c | z, Complexes] && Abs[Arg[1 - z]] < Pi && Re[-a + c] > 0 && Re[a] > 0 && Abs[z] < 1]

(* {"Hypergeometric2F1Ratio", 13}*)
ConditionalExpression[Hypergeometric2F1[a, b, c, z]/Hypergeometric2F1[1 + a, b, 1 + c, z] == 1 + (z*(1 + a - b + Inactive[ContinuedFractionK][((b - c - k)*(a + k))/z, 1 + a - b + k + (c + k)/z, {k, 1, Infinity}]))/c, (z == -1 && Re[-a + b + c] > 1 + Abs[Im[a - b + c]]) || (Element[a | b | c | z, Complexes] && Abs[Arg[1 - z]] < Pi && Abs[z] < 1)]

(* {"Hypergeometric2F1Ratio", 14}*)
ConditionalExpression[Hypergeometric2F1[a, b, c, z]/Hypergeometric2F1[a, 1 + b, 1 + c, z] == 1 + Inactive[ContinuedFractionK][(((1 - (-1)^k)*(-a + (1 - k)/2)*(-b + c + (-1 + k)/2))/(2*(-1 + c + k)*(c + k)) + ((1 + (-1)^k)*(-b - k/2)*(-a + c + k/2))/(2*(-1 + c + k)*(c + k)))*z, 1, {k, 1, Infinity}], ((Re[-a - b + c] > 0 || c == a + b) && z == 1) || (Element[a | b | c | z, Complexes] && Abs[Arg[1 - z]] < Pi)]

(* {"Hypergeometric2F1Ratio", 15}*)
ConditionalExpression[Hypergeometric2F1[a, b, c, z]/Hypergeometric2F1[a, 1 + b, 1 + c, z] == (c + (1 - a + b)*z)/c + Inactive[ContinuedFractionK][(a - c - k)*(b + k)*z, c + k + (1 - a + b + k)*z, {k, 1, Infinity}]/c, (z == -1 && -1 + Re[a + b + c] > Abs[Im[-a + b + c]]) || (Element[a | b | c | z, Complexes] && Abs[Arg[1 - z]] < Pi && Abs[z] < 1)]

(* {"Hypergeometric2F1Ratio", 16}*)
ConditionalExpression[Hypergeometric2F1[a, b, c, z]/Hypergeometric2F1[a, 1 + b, 1 + c, z] == 1 + (z*(1 - a + b + Inactive[ContinuedFractionK][((a - c - k)*(b + k))/z, 1 - a + b + k + (c + k)/z, {k, 1, Infinity}]))/c, (z == -1 && Re[a - b + c] > 1 + Abs[Im[-a + b + c]]) || (Element[a | b | c | z, Complexes] && Abs[Arg[1 - z]] < Pi && Abs[z] < 1)]

(* {"Hypergeometric2F1Ratio", 17}*)
ConditionalExpression[Hypergeometric2F1[a, b, c, z]/Hypergeometric2F1[1 + a, 1 + b, 1 + c, z] == 1 - ((1 + a + b)*z)/c + Inactive[ContinuedFractionK][(a + k)*(b + k)*(z - z^2), c + k - (1 + a + b + 2*k)*z, {k, 1, Infinity}]/c, (z == 1/2 && -1 + Re[-a - b + 2*c] > Abs[Im[a + b]]) || (Element[a | b | c | z, Complexes] && Abs[Arg[1 - z]] < Pi && Re[z] < 1/2)]

(* {"Hypergeometric2F1Ratio", 18}*)
ConditionalExpression[Hypergeometric2F1[b, -m, c, z]/Hypergeometric2F1[1 + b, 1 - m, 1 + c, z] == 1 - ((1 + b - m)*z)/c + Inactive[ContinuedFractionK][(b + k)*(k - m)*(z - z^2), c + k - (1 + b + 2*k - m)*z, {k, 1, -1 + m}]/c, Element[m, Integers] && Element[b | c | z, Complexes] && m >= 1]

(* {"Hypergeometric2F1Ratio", 19}*)
ConditionalExpression[Hypergeometric2F1[a, 1 + b, 2 + a + b, -1]/Hypergeometric2F1[a, b, 1 + a + b, -1] == (1 + a + b)/(2*a + Inactive[ContinuedFractionK][(b + k)*(1 + b + k), 2*a, {k, 1, Infinity}]), Element[a | b, Complexes] && Re[a] > 0 && Re[b] > 0]

(* {"Hypergeometric2F1Ratio", 20}*)
ConditionalExpression[(3 + c - 2*c*Hypergeometric2F1[1, (1 + c)/2, (5 + c)/2, -1])/(-PolyGamma[0, (1 + c)/4] + PolyGamma[0, (3 + c)/4]) == ((1 + c)*(3 + c))/(2*(c + Inactive[ContinuedFractionK][(1 + k)^2, c, {k, 1, Infinity}])), Element[c, Complexes] && Re[c] > 0]

(* {"Hypergeometric2F1Regularized", 1}*)
ConditionalExpression[Hypergeometric2F1Regularized[a, b, c, z] == (1 + (a*b*z)/(c*(1 + Inactive[ContinuedFractionK][-(((a + k)*(b + k)*z)/((1 + k)*(c + k))), 1 + ((a + k)*(b + k)*z)/((1 + k)*(c + k)), {k, 1, Infinity}])))/Gamma[c], Element[a | b | c | z, Complexes] && Abs[z] < 1]

(* {"Hypergeometric2F1Regularized", 2}*)
ConditionalExpression[Hypergeometric2F1Regularized[a, b, c, z] == 1/(Gamma[c]*(1 + Inactive[ContinuedFractionK][-(((-1 + a + k)*(-1 + b + k)*z)/(k*(-1 + c + k))), 1 + ((-1 + a + k)*(-1 + b + k)*z)/(k*(-1 + c + k)), {k, 1, Infinity}])), Element[a | b | c | z, Complexes] && Abs[z] < 1]

(* {"Hypergeometric2F1Regularized", 3}*)
ConditionalExpression[Hypergeometric2F1Regularized[a, b, -m, z] == (z^(1 + m)*Pochhammer[a, 1 + m]*Pochhammer[b, 1 + m])/((1 + m)!*(1 + Inactive[ContinuedFractionK][-(((a + k + m)*(b + k + m)*z)/(k*(1 + k + m))), 1 + ((a + k + m)*(b + k + m)*z)/(k*(1 + k + m)), {k, 1, Infinity}])), Element[m, Integers] && Element[a | b | z, Complexes] && m >= 0 && Abs[z] < 1]

(* {"Hypergeometric2F1Regularized", 4}*)
ConditionalExpression[Hypergeometric2F1Regularized[1, b, c, z] == (1 + (b*z)/(c*(1 + Inactive[ContinuedFractionK][(-((1 + (-1)^k)*(-1 - b + c + k/2)*k)/(4*(-1 + c + k)*(c + k)) - ((1 - (-1)^k)*(b + (1 + k)/2)*(-1 + c + (1 + k)/2))/(2*(-1 + c + k)*(c + k)))*z, 1, {k, 1, Infinity}])))/Gamma[c], Element[b | c | z, Complexes] &&  !(Element[c, Integers] && c <= 0) && Abs[Arg[1 - z]] < Pi]

(* {"Hypergeometric2F1Regularized", 5}*)
ConditionalExpression[Hypergeometric2F1Regularized[1, b, c, z] == 1/(Gamma[c]*(1 + Inactive[ContinuedFractionK][(-((1 - (-1)^k)*(b + (-1 + k)/2)*(-1 + c + (-1 + k)/2))/(2*(-2 + c + k)*(-1 + c + k)) - ((1 + (-1)^k)*(-1 - b + c + k/2)*k)/(4*(-2 + c + k)*(-1 + c + k)))*z, 1, {k, 1, Infinity}])), Element[b | c | z, Complexes] &&  !(Element[c, Integers] && c <= 0) && Abs[Arg[1 - z]] < Pi]

(* {"Hypergeometric2F1Regularized", 6}*)
ConditionalExpression[Hypergeometric2F1Regularized[1, b, c, z] == 1/(Gamma[c]*(1 + Inactive[ContinuedFractionK][((-11 + 6*b + 6*c - 4*b*c + 10*k - 4*c*k - 2*k^2 - (-1)^k*(-1 + 2*b)*(-5 + 2*c + 2*k))*z)/(8*(-3 + c + k)*(-2 + c + k)), 1, {k, 1, Infinity}])), Element[b | c | z, Complexes] &&  !(Element[c, Integers] && c <= 0) && Abs[Arg[1 - z]] < Pi]

(* {"Hypergeometric2F1Regularized", 7}*)
ConditionalExpression[Hypergeometric2F1Regularized[1, b, c, z] == 1/(Gamma[c]*(1 - (b*z)/(c + Inactive[ContinuedFractionK][z*(((1 - (-1)^k)*(b - c - Floor[k/2])*(1 + Floor[k/2]))/2 + ((1 + (-1)^k)*(1 - c - Floor[k/2])*(b + Floor[k/2]))/2), c + k, {k, 1, Infinity}]))), Element[b | c | z, Complexes] &&  !(Element[c, Integers] && c <= 0) && Abs[Arg[1 - z]] < Pi]

(* {"Hypergeometric2F1Regularized", 8}*)
ConditionalExpression[Hypergeometric2F1Regularized[1, b, c, z] == 1/(Gamma[-1 + c]*(-1 + c + Inactive[ContinuedFractionK][(-((1 - (-1)^k)*(c + (-3 + k)/2)*(b + (-1 + k)/2))/2 - ((1 + (-1)^k)*(-1 - b + c + k/2)*k)/4)*z, -1 + c + k, {k, 1, Infinity}])), Element[b | c | z, Complexes] &&  !(Element[c, Integers] && c <= 1) && Abs[Arg[1 - z]] < Pi]

(* {"Hypergeometric2F1Regularized", 9}*)
ConditionalExpression[Hypergeometric2F1Regularized[1, b, c, z] == 1/(Gamma[-1 + c]*(-1 + c + Inactive[ContinuedFractionK][((1 + (-1)^k)*k*(1 - z))/4 - ((1 - (-1)^k)*(-1 + b + (1 + k)/2)*z)/2, -(-1)^k + ((1 + (-1)^k)*c)/2, {k, 1, Infinity}])), Element[b | c | z, Complexes] &&  !(Element[c, Integers] && c <= 1) && Re[z] < 1/2]

(* {"Hypergeometric2F1Regularized", 10}*)
ConditionalExpression[Hypergeometric2F1Regularized[1, b, c, z] == 1/(Gamma[-1 + c]*(-1 + c - b*z + Inactive[ContinuedFractionK][k*(-1 + b + k)*(1 - z)*z, -1 + c + k - (b + 2*k)*z, {k, 1, Infinity}])), Element[b | c | z, Complexes] &&  !(Element[c, Integers] && c <= 1) && Re[z] < 1/2]

(* {"Hypergeometric2F1Regularized", 11}*)
ConditionalExpression[Hypergeometric2F1Regularized[1, b, c, z] == ((1 - z)^(-1 - b + c)*(-z)^(1 - c)*Gamma[1 - b])/Gamma[-b + c] - 1/(Gamma[-1 + c]*(2 - c + (-1 + b)*z + Inactive[ContinuedFractionK][-(k*(1 - c + k)*(1 - z)), 2 - c + 2*k + (-1 + b - k)*z, {k, 1, Infinity}])), Element[b | c | z, Complexes] && Abs[1 - z] > 1]

(* {"Hypergeometric2F1Regularized", 12}*)
ConditionalExpression[Hypergeometric2F1Regularized[1, b, c, z] == 1/(Gamma[-1 + c]*(-1 + c + (1 - b)*z + Inactive[ContinuedFractionK][-(k*(-1 - b + c + k)*z), -1 + c + k + (1 - b + k)*z, {k, 1, Infinity}])), Element[b | c | z, Complexes] &&  !(Element[c, Integers] && c <= 1) && Abs[z] < 1]

(* {"Hypergeometric2F1Regularized", 13}*)
ConditionalExpression[Hypergeometric2F1Regularized[1, b, c, z] == 1/(Gamma[-1 + c]*(-1 + c - b*z + Inactive[ContinuedFractionK][k*(-1 + b + k)*(z - z^2), -1 + c + k - (b + 2*k)*z, {k, 1, Infinity}])), Element[b | c | z, Complexes] &&  !(Element[c, Integers] && c <= 1) && Re[z] < 1/2]

(* {"Hypergeometric2F1Regularized", 14}*)
ConditionalExpression[Hypergeometric2F1Regularized[1, b, c, z] == 1/(Gamma[-1 + c]*(1 - b + (-1 + c)/z + Inactive[ContinuedFractionK][-((k*(-1 - b + c + k))/z), 1 - b + k + (-1 + c + k)/z, {k, 1, Infinity}])), Element[b | c | z, Complexes] &&  !(Element[c, Integers] && c <= 1) && Abs[z] < 1]

(* {"Hypergeometric2F1Regularized", 15}*)
ConditionalExpression[Hypergeometric2F1Regularized[1, m^(-1), 1 + m^(-1), -z^m] == 1/(Gamma[1 + m^(-1)]*(1 + z^m/(1 + m + Inactive[ContinuedFractionK][z^m*((1 + (-1)^k)/2 + m*Floor[(1 + k)/2])^2, 1 + (1 + k)*m, {k, 1, Infinity}]))), Element[m, Integers] && Element[z, Complexes] && m > 0 && Abs[Arg[1 - z]] < Pi]

(* {"Hypergeometric2F1Regularized", 16}*)
ConditionalExpression[Hypergeometric2F1Regularized[1, z/(-1 + t), 1 + z/(-1 + t), t^(-1)] == t/(Gamma[z/(-1 + t)]*(z + Inactive[ContinuedFractionK][t^((1 + (-1)^k)/2)*Floor[(1 + k)/2], z^((1 + (-1)^k)/2), {k, 1, Infinity}])), Element[t | z, Complexes] &&  !Element[t | z, Reals]]

(* {"Hypergeometric2F1Regularized", 17}*)
ConditionalExpression[Hypergeometric2F1Regularized[m, (m + z)/2, 1 + (m + z)/2, (-1 + a)/(1 + a)] == (2^(1 - m)*(1 + a)^m)/(Gamma[(m + z)/2]*(m + z + Inactive[ContinuedFractionK][((1 + (-1)^k)*(1 + a)*k)/4 + ((1 - (-1)^k)*(-1 + a)*(-1 + (1 + k)/2 + m))/2, (m + z)^((1 + (-1)^k)/2), {k, 1, Infinity}])), Element[a | m | z, Complexes] && Re[m + z] > 0]

(* {"Hypergeometric2F1Regularized", 18}*)
ConditionalExpression[Hypergeometric2F1Regularized[m, (m + z)/2, 1 + (m + z)/2, (-1 + a)/(1 + a)] == (2^(1 - m)*(1 + a)^m)/(Gamma[(m + z)/2]*(a*m + z + Inactive[ContinuedFractionK][(1 - a^2)*k*(-1 + k + m), a*(2*k + m) + z, {k, 1, Infinity}])), Element[a | m | z, Complexes]]

(* {"Hypergeometric2F1Regularized", 19}*)
ConditionalExpression[Hypergeometric2F1Regularized[m, (m + z)/2, 1 + (m + z)/2, -1] == 2^(1 - m)/(Gamma[(m + z)/2]*(z + Inactive[ContinuedFractionK][k*(-1 + k + m), z, {k, 1, Infinity}])), Element[m | z, Complexes]]

(* {"Hypergeometric2F1RegularizedRatio", 1}*)
ConditionalExpression[Hypergeometric2F1Regularized[a, 1 + b, 1 + c, z]/Hypergeometric2F1Regularized[a, b, c, z] == 1/(c*(1 - (a*(-b + c)*z)/(c*(1 + c)*(1 + Inactive[ContinuedFractionK][(z*(((1 - (-1)^k)*(-b - Floor[(1 + k)/2])*(-a + c + Floor[(1 + k)/2]))/2 - ((1 + (-1)^k)*(a + Floor[(1 + k)/2])*(-b + c + Floor[(1 + k)/2]))/2))/((c + k)*(1 + c + k)), 1, {k, 1, Infinity}])))), Element[a | b | c | z, Complexes] && Abs[Arg[1 - z]] < Pi]

(* {"Hypergeometric2F1RegularizedRatio", 2}*)
ConditionalExpression[Hypergeometric2F1Regularized[a, 1 + b, 1 + c, z]/Hypergeometric2F1Regularized[a, b, c, z] == (c + (a*(b - c)*z)/(1 + c + Inactive[ContinuedFractionK][z*(((1 + (-1)^k)*(b - c - Floor[(1 + k)/2])*(a + Floor[(1 + k)/2]))/2 + ((1 - (-1)^k)*(a - c - Floor[(1 + k)/2])*(b + Floor[(1 + k)/2]))/2), 1 + c + k, {k, 1, Infinity}]))^(-1), Element[a | b | c | z, Complexes] && Abs[Arg[1 - z]] < Pi]

(* {"Hypergeometric2F1RegularizedRatio", 3}*)
ConditionalExpression[Hypergeometric2F1Regularized[a, 1 + b, 1 + c, z]/Hypergeometric2F1Regularized[a, b, c, z] == 1/((c + (1 - a + b)*z)*(1 + Inactive[ContinuedFractionK][-(((b + k)*(-a + c + k)*z)/(c + z - a*z + b*z)^2), (c + k + z - a*z + b*z + k*z)/(c + z - a*z + b*z), {k, 1, Infinity}])), Element[a | b | c | z, Complexes] && Abs[z] < 1]

(* {"Hypergeometric2F1RegularizedRatio", 4}*)
ConditionalExpression[Hypergeometric2F1Regularized[a, 1 + b, 1 + c, z]/Hypergeometric2F1Regularized[a, b, c, z] == (c + (1 - a + b)*z + Inactive[ContinuedFractionK][(-b - k)*(-a + c + k)*z, c + k + (1 - a + b + k)*z, {k, 1, Infinity}])^(-1), Element[a | b | c | z, Complexes] && Abs[z] < 1]

(* {"Hypergeometric2F1RegularizedRatio", 5}*)
ConditionalExpression[Hypergeometric2F1Regularized[1 + a, b, 1 + c, z]/Hypergeometric2F1Regularized[a, b, c, z] == 1/(c*(1 - (b*(-a + c)*z)/(c*(1 + c)*(1 + Inactive[ContinuedFractionK][(z*(-((1 + (-1)^k)*(b + Floor[(1 + k)/2])*(-a + c + Floor[(1 + k)/2]))/2 + ((1 - (-1)^k)*(-a - Floor[(1 + k)/2])*(-b + c + Floor[(1 + k)/2]))/2))/((c + k)*(1 + c + k)), 1, {k, 1, Infinity}])))), Element[a | b | c | z, Complexes] && Abs[Arg[1 - z]] < Pi]

(* {"Hypergeometric2F1RegularizedRatio", 6}*)
ConditionalExpression[Hypergeometric2F1Regularized[1 + a, b, 1 + c, z]/Hypergeometric2F1Regularized[a, b, c, z] == (c + (b*(a - c)*z)/(1 + c + Inactive[ContinuedFractionK][z*(((1 - (-1)^k)*(b - c - Floor[(1 + k)/2])*(a + Floor[(1 + k)/2]))/2 + ((1 + (-1)^k)*(a - c - Floor[(1 + k)/2])*(b + Floor[(1 + k)/2]))/2), 1 + c + k, {k, 1, Infinity}]))^(-1), Element[a | b | c | z, Complexes] && Abs[Arg[1 - z]] < Pi]

(* {"Hypergeometric2F1RegularizedRatio", 7}*)
ConditionalExpression[Hypergeometric2F1Regularized[1 + a, b, 1 + c, z]/Hypergeometric2F1Regularized[a, b, c, z] == 1/((c + (1 + a - b)*z)*(1 + Inactive[ContinuedFractionK][-(((a + k)*(-b + c + k)*z)/(c + z + a*z - b*z)^2), (c + k + z + a*z - b*z + k*z)/(c + z + a*z - b*z), {k, 1, Infinity}])), Element[a | b | c | z, Complexes] && Abs[z] < 1]

(* {"Hypergeometric2F1RegularizedRatio", 8}*)
ConditionalExpression[Hypergeometric2F1Regularized[1 + a, b, 1 + c, z]/Hypergeometric2F1Regularized[a, b, c, z] == (c + (1 + a - b)*z + Inactive[ContinuedFractionK][(-a - k)*(-b + c + k)*z, c + k + (1 + a - b + k)*z, {k, 1, Infinity}])^(-1), Element[a | b | c | z, Complexes] && Abs[z] < 1]

(* {"Hypergeometric2F1RegularizedRatio", 9}*)
ConditionalExpression[Hypergeometric2F1Regularized[1 + a, b, 1 + c, -1]/Hypergeometric2F1Regularized[a, b, c, -1] == (-1 - a + b + c + Inactive[ContinuedFractionK][(a + k)*(-b + c + k), -1 - a + b + c, {k, 1, Infinity}])^(-1), Element[a | b | c, Complexes] && Re[a] > 0 && Re[-b + c] > 0 && Re[-a + b + c] > 1 && Re[-a + c] > 0]

(* {"Hypergeometric2F1RegularizedRatio", 10}*)
ConditionalExpression[Hypergeometric2F1Regularized[1 + a, 1 + b, 1 + c, z]/Hypergeometric2F1Regularized[a, b, c, z] == Inactive[ContinuedFractionK][(-1 + a + k)*(-1 + b + k)*(z - z^2), -1 + c + k - (-1 + a + b + 2*k)*z, {k, 1, Infinity}]/(a*b*(z - z^2)), Element[a | b | c | z, Complexes] && Re[z] < 1/2]

(* {"Hypergeometric2F1RegularizedRatio", 11}*)
ConditionalExpression[Hypergeometric2F1Regularized[a, b, c, z]/Hypergeometric2F1Regularized[1 + a, b, 1 + c, z] == c + c*Inactive[ContinuedFractionK][(((1 - (-1)^k)*(-b + (1 - k)/2)*(-a + c + (-1 + k)/2))/(2*(-1 + c + k)*(c + k)) + ((1 + (-1)^k)*(-a - k/2)*(-b + c + k/2))/(2*(-1 + c + k)*(c + k)))*z, 1, {k, 1, Infinity}], (Element[a | b | c | z, Complexes] &&  !(Element[c, Integers] && c <= 0) && Abs[Arg[1 - z]] < Pi) || ((Re[-a - b + c] > 0 || c == a + b) && z == 1)]

(* {"Hypergeometric2F1RegularizedRatio", 12}*)
ConditionalExpression[Hypergeometric2F1Regularized[a, b, c, z]/Hypergeometric2F1Regularized[1 + a, b, 1 + c, z] == c + (1 + a - b)*z + Inactive[ContinuedFractionK][(-a - k)*(-b + c + k)*z, c + k + (1 + a - b + k)*z, {k, 1, Infinity}], Element[a | b | c | z, Complexes] && Re[-a + c] > 0 && Re[a] > 0 && Abs[z] < 1]

(* {"Hypergeometric2F1RegularizedRatio", 13}*)
ConditionalExpression[Hypergeometric2F1Regularized[a, b, c, z]/Hypergeometric2F1Regularized[1 + a, b, 1 + c, z] == c + z*(1 + a - b + Inactive[ContinuedFractionK][((b - c - k)*(a + k))/z, 1 + a - b + k + (c + k)/z, {k, 1, Infinity}]), (z == -1 && Re[-a + b + c] > 1 + Abs[Im[a - b + c]]) || (Element[a | b | c | z, Complexes] &&  !(Element[c, Integers] && c <= 0) && Abs[z] < 1)]

(* {"Hypergeometric2F1RegularizedRatio", 14}*)
ConditionalExpression[Hypergeometric2F1Regularized[a, b, c, z]/Hypergeometric2F1Regularized[a, 1 + b, 1 + c, z] == c + c*Inactive[ContinuedFractionK][(((1 - (-1)^k)*(-a + (1 - k)/2)*(-b + c + (-1 + k)/2))/(2*(-1 + c + k)*(c + k)) + ((1 + (-1)^k)*(-b - k/2)*(-a + c + k/2))/(2*(-1 + c + k)*(c + k)))*z, 1, {k, 1, Infinity}], (Element[a | b | c | z, Complexes] &&  !(Element[c, Integers] && c <= 0) && Abs[Arg[1 - z]] < Pi) || ((Re[-a - b + c] > 0 || c == a + b) && z == 1)]

(* {"Hypergeometric2F1RegularizedRatio", 15}*)
ConditionalExpression[Hypergeometric2F1Regularized[a, b, c, z]/Hypergeometric2F1Regularized[a, 1 + b, 1 + c, z] == c + (1 - a + b)*z + Inactive[ContinuedFractionK][(a - c - k)*(b + k)*z, c + k + (1 - a + b + k)*z, {k, 1, Infinity}], (z == -1 && -1 + Re[a + b + c] > Abs[Im[-a + b + c]]) || (Element[a | b | c | z, Complexes] &&  !(Element[c, Integers] && c <= 0) && Abs[z] < 1)]

(* {"Hypergeometric2F1RegularizedRatio", 16}*)
ConditionalExpression[Hypergeometric2F1Regularized[a, b, c, z]/Hypergeometric2F1Regularized[a, 1 + b, 1 + c, z] == c + z*(1 - a + b + Inactive[ContinuedFractionK][((a - c - k)*(b + k))/z, 1 - a + b + k + (c + k)/z, {k, 1, Infinity}]), (z == -1 && Re[a - b + c] > 1 + Abs[Im[-a + b + c]]) || (Element[a | b | c | z, Complexes] &&  !(Element[c, Integers] && c <= 0) && Abs[z] < 1)]

(* {"Hypergeometric2F1RegularizedRatio", 17}*)
ConditionalExpression[Hypergeometric2F1Regularized[a, b, c, z]/Hypergeometric2F1Regularized[1 + a, 1 + b, 1 + c, z] == c - (1 + a + b)*z + Inactive[ContinuedFractionK][(a + k)*(b + k)*(z - z^2), c + k - (1 + a + b + 2*k)*z, {k, 1, Infinity}], (z == 1/2 && -1 + Re[-a - b + 2*c] > Abs[Im[a + b]]) || (Element[a | b | c | z, Complexes] &&  !(Element[c, Integers] && c <= 0) && Re[z] < 1/2)]

(* {"Hypergeometric2F1RegularizedRatio", 18}*)
ConditionalExpression[Hypergeometric2F1Regularized[b, -m, c, z]/Hypergeometric2F1Regularized[1 + b, 1 - m, 1 + c, z] == c - (1 + b - m)*z + Inactive[ContinuedFractionK][(b + k)*(k - m)*(z - z^2), c + k - (1 + b + 2*k - m)*z, {k, 1, Infinity}], Element[m, Integers] && Element[b | c | z, Complexes] && m >= 0]

(* {"Hypergeometric2F1RegularizedRatio", 19}*)
ConditionalExpression[Hypergeometric2F1Regularized[a, 1 + b, 2 + a + b, -1]/Hypergeometric2F1Regularized[a, b, 1 + a + b, -1] == (2*a + Inactive[ContinuedFractionK][(b + k)*(1 + b + k), 2*a, {k, 1, Infinity}])^(-1), Element[a | b, Complexes] && Re[a] > 0 && Re[b] > 0]

(* {"HypergeometricPFQ10", 1}*)
ConditionalExpression[(1 - z)^(-a) == 1 + (a*z)/(1 + Inactive[ContinuedFractionK][-(((a + k)*z)/(1 + k)), 1 + ((a + k)*z)/(1 + k), {k, 1, Infinity}]), Element[a | z, Complexes] && Abs[Arg[1 - z]] < Pi]

(* {"HypergeometricPFQ20", 1}*)
ConditionalExpression[HypergeometricPFQ[{1, -n}, {}, z] == (1 + Inactive[ContinuedFractionK][(-((1 + (-1)^k)*k)/4 - ((1 - (-1)^k)*((-1 + k)/2 - n))/2)*z, 1, {k, 1, 2*n}])^(-1), Element[n, Integers] && Element[z, Complexes] && n >= 0]

(* {"HypergeometricPFQ23Ratio", 1}*)
ConditionalExpression[HypergeometricPFQ[{a, 1/2 + a}, {2*a, 1 + 2*a - b, b}, z]/HypergeometricPFQ[{-1/2 + a, a}, {-1 + 2*a, 2*a - b, b}, z] == (2*a - b)/(2*a - b + Inactive[ContinuedFractionK][z/4, 2*a - b + k, {k, 1, Infinity}]), Element[a | b | z, Complexes]]

(* {"HypergeometricPFQ32", 1}*)
ConditionalExpression[HypergeometricPFQ[{1, a, b}, {2 - a + z/2, 2 - b + z/2}, 1] == ((2 - 2*a + z)*(2 - 2*b + z))/((3 - 2*a - 2*b + z)*(z + Inactive[ContinuedFractionK][(k*(2 - 2*a - 2*b + k + z)*(2 - 4*a + 2*k + z)*(2 - 4*b + 2*k + z))/((1 - 2*a - 2*b + 2*k + z)*(3 - 2*a - 2*b + 2*k + z)), z, {k, 1, Infinity}])), Element[a | b | z, Complexes] && Re[2*a + 2*b - z] < 3 && Re[-4*a + z] > -4 && Re[-4*b + z] > -4 && Re[z] > 0]

(* {"HypergeometricPFQ32", 2}*)
ConditionalExpression[HypergeometricPFQ[{1, a, 1/2 + a}, {b, 1/2 + b}, 1] == ((-1 + b)*(-1 + 2*b))/(-((1 + 2*a - 2*b)*(-3 + 2*a + 2*b))/2 + Inactive[ContinuedFractionK][(k*(-2 - 2*a + 2*b + k)*(-3 - 2*a + 2*b + 2*k)*(-1 - 2*a + 2*b + 2*k))/4, ((-3 + 2*a + 2*b)*(-1 - 2*a + 2*b + 2*k))/2, {k, 1, Infinity}]), Element[a | b, Complexes] && Re[-a + b] > 1/2]

(* {"HypergeometricPFQ32Ratio", 1}*)
ConditionalExpression[HypergeometricPFQ[{a, b, c}, {1, 3/2}, 1]/HypergeometricPFQ[{a, b, c}, {1/2, 1}, 1] == Inactive[ContinuedFractionK][(2*a - k)*(2*b - k)*(2*c - k)*(1 - 2*a - 2*b - 2*c + 2*k), 1 - 2*a - 2*b + 4*a*b - 2*c + 4*a*c + 4*b*c + 3*k - 4*a*k - 4*b*k - 4*c*k + 3*k^2, {k, 1, Infinity}]/((-1 + 2*a)*(1 - 2*b)*(1 - 2*c)), Element[a | b | c, Complexes] && Re[a + b + c] < 3/2]

(* {"HypergeometricPFQ32Ratio", 2}*)
ConditionalExpression[HypergeometricPFQ[{a, b, c}, {2, d}, 1]/HypergeometricPFQ[{a, b, c}, {1, d}, 1] == Inactive[ContinuedFractionK][(a - k)*(-b + k)*(-c + k)*(-a - b - c + d + k), -1 + a + b - a*b + c - a*c - b*c + (-2 + 2*a + 2*b + 2*c - d)*k - 2*k^2, {k, 1, Infinity}]/((1 - a)*(1 - b)*(1 - c)), Element[a | b | c | d, Complexes] && Re[a + b + c - d] < 1]

(* {"HypergeometricPFQ32Ratio", 3}*)
ConditionalExpression[HypergeometricPFQ[{a, b, c}, {1, d}, 1]/HypergeometricPFQ[{1 + a, 1 + b, 1 + c}, {2, 1 + d}, 1] == 1 - (a + b + c)/d - Inactive[ContinuedFractionK][(1 + a + b + c - d - k)*(-a + k)*(-b + k)*(-c + k), b + c - b*c - d - a*(-1 + b + c - 2*k) + (-1 + 2*b + 2*c - d)*k - 2*k^2, {k, 1, Infinity}]/d, Element[a | b | c | d, Complexes] && Re[a + b + c - d] < 0]

(* {"HypergeometricPFQRatio", 1}*)
ConditionalExpression[HypergeometricPFQ[{a, -n}, {}, z]/HypergeometricPFQ[{a, 1 - n}, {}, z] == 1 + Inactive[ContinuedFractionK][(-((1 - (-1)^k)*(a + (-1 + k)/2))/2 - ((1 + (-1)^k)*(k/2 - n))/2)*z, 1, {k, 1, 2*n}], Element[n, Integers] && Element[a | z, Complexes] && n >= 0]

(* {"HypergeometricPFQRatio", 2}*)
ConditionalExpression[HypergeometricPFQ[{a, -n}, {}, z]/HypergeometricPFQ[{a, 1 - n}, {}, z] == 1 + (a*z)/(-1 + (1 - n)*z + Inactive[ContinuedFractionK][(-a - k)*(k - n)*z^2, -1 + (1 + a + 2*k - n)*z, {k, 1, -1 + n}]), Element[n, Integers] && Element[a | z, Complexes] && n >= 0]

(* {"HypergeometricU", 1}*)
ConditionalExpression[HypergeometricU[a, b, z] == (z^(1 - b)*Gamma[-1 + b])/(Gamma[a]*(1 + Inactive[ContinuedFractionK][((a - b + k)*z)/((-1 + b - k)*k), 1 - ((a - b + k)*z)/((-1 + b - k)*k), {k, 1, Infinity}])) + Gamma[1 - b]/(Gamma[1 + a - b]*(1 + Inactive[ContinuedFractionK][-(((-1 + a + k)*z)/(k*(-1 + b + k))), 1 + ((-1 + a + k)*z)/(k*(-1 + b + k)), {k, 1, Infinity}])), Element[a | b | z, Complexes] && NotElement[b, Integers]]

(* {"HypergeometricU", 2}*)
ConditionalExpression[HypergeometricU[a, 1, z] == -((Log[z]/(1 + Inactive[ContinuedFractionK][-(((-1 + a + k)*z)/k^2), 1 + ((-1 + a + k)*z)/k^2, {k, 1, Infinity}]) + (2*EulerGamma + PolyGamma[0, a])/(1 + Inactive[ContinuedFractionK][-(((-1 + a + k)*z*(2*PolyGamma[0, 1 + k] - PolyGamma[0, a + k]))/(k^2*(2*PolyGamma[0, k] - PolyGamma[0, -1 + a + k]))), 1 + ((-1 + a + k)*z*(2*PolyGamma[0, 1 + k] - PolyGamma[0, a + k]))/(k^2*(2*PolyGamma[0, k] - PolyGamma[0, -1 + a + k])), {k, 1, Infinity}]))/Gamma[a]), Element[a | z, Complexes]]

(* {"HypergeometricU", 3}*)
ConditionalExpression[HypergeometricU[a, m, z] == ((-1)^m*(-(1/((1 - a)*z*(-2 + m)!*(1 + Inactive[ContinuedFractionK][(k*(1 + k - m))/((1 - a + k)*z), 1 - (k*(1 + k - m))/((1 - a + k)*z), {k, 1, -2 + m}]))) + Log[z]/((-1 + m)!*(1 + Inactive[ContinuedFractionK][-(((-1 + a + k)*z)/(k*(-1 + k + m))), 1 + ((-1 + a + k)*z)/(k*(-1 + k + m)), {k, 1, Infinity}])) + (EulerGamma + PolyGamma[0, a] - PolyGamma[0, m])/((-1 + m)!*(1 + Inactive[ContinuedFractionK][-(((-1 + a + k)*z*(PolyGamma[0, 1 + k] - PolyGamma[0, a + k] + PolyGamma[0, k + m]))/(k*(-1 + k + m)*(PolyGamma[0, k] - PolyGamma[0, -1 + a + k] + PolyGamma[0, -1 + k + m]))), 1 + ((-1 + a + k)*z*(PolyGamma[0, 1 + k] - PolyGamma[0, a + k] + PolyGamma[0, k + m]))/(k*(-1 + k + m)*(PolyGamma[0, k] - PolyGamma[0, -1 + a + k] + PolyGamma[0, -1 + k + m])), {k, 1, Infinity}]))))/Gamma[1 + a - m], Element[m, Integers] && Element[a | z, Complexes] && m > 1]

(* {"HypergeometricU", 4}*)
ConditionalExpression[HypergeometricU[a, -m, z] == ((-1)^m*(((-1)^m*m!)/(Pochhammer[a, 1 + m]*(1 + Inactive[ContinuedFractionK][((-1 + a + k)*z)/(k*(1 - k + m)), 1 - ((-1 + a + k)*z)/(k*(1 - k + m)), {k, 1, m}])) + (z^(1 + m)*Log[z])/((1 + m)!*(1 + Inactive[ContinuedFractionK][-(((a + k + m)*z)/(k*(1 + k + m))), 1 + ((a + k + m)*z)/(k*(1 + k + m)), {k, 1, Infinity}])) + (z^(1 + m)*(EulerGamma - PolyGamma[0, 2 + m] + PolyGamma[0, 1 + a + m]))/((1 + m)!*(1 + Inactive[ContinuedFractionK][-(((a + k + m)*z*(PolyGamma[0, 1 + k] + PolyGamma[0, 2 + k + m] - PolyGamma[0, 1 + a + k + m]))/(k*(1 + k + m)*(PolyGamma[0, k] + PolyGamma[0, 1 + k + m] - PolyGamma[0, a + k + m]))), 1 + ((a + k + m)*z*(PolyGamma[0, 1 + k] + PolyGamma[0, 2 + k + m] - PolyGamma[0, 1 + a + k + m]))/(k*(1 + k + m)*(PolyGamma[0, k] + PolyGamma[0, 1 + k + m] - PolyGamma[0, a + k + m])), {k, 1, Infinity}]))))/Gamma[a], Element[m, Integers] && Element[a | z, Complexes] && m >= 0]

(* {"HypergeometricURatio", 1}*)
ConditionalExpression[HypergeometricU[a, b, z]/HypergeometricU[a, -1 + b, z] == 1 + Inactive[ContinuedFractionK][(((1 - (-1)^k)*(a + (-1 + k)/2))/2 + ((1 + (-1)^k)*(1 + a - b + k/2))/2)/z, 1, {k, 1, Infinity}], Element[a | b | z, Complexes] && NotElement[b, Integers]]

(* {"HypergeometricURatio", 2}*)
ConditionalExpression[HypergeometricU[a, b, z]/HypergeometricU[a, -1 + b, z] == 1 + a/(z*(1 + Inactive[ContinuedFractionK][(((1 + (-1)^k)*(a + k/2))/2 + ((1 - (-1)^k)*(1 + a - b + (1 + k)/2))/2)/z, 1, {k, 1, Infinity}])), Element[a | b | z, Complexes] && NotElement[b, Integers]]

(* {"HypergeometricURatio", 3}*)
ConditionalExpression[HypergeometricU[a, b, z]/HypergeometricU[1 + a, b, z] == 2 + 2*a - b + z - Inactive[ContinuedFractionK][(-1 - a + b - k)*(a + k), -2 - 2*a + b - 2*k - z, {k, 1, Infinity}], Element[a | b | z, Complexes] && NotElement[b, Integers]]

(* {"HypergeometricURatio", 4}*)
ConditionalExpression[HypergeometricU[a, b, z]/HypergeometricU[1 + a, b, z] == z*(1 + (2 + 2*a - b)/z + Inactive[ContinuedFractionK][-(((a + k)*(1 + a - b + k))/z^2), 1 + (2 + 2*a - b + 2*k)/z, {k, 1, Infinity}]), Element[a | b | z, Complexes] && NotElement[b, Integers]]

(* {"HypergeometricURatio", 5}*)
ConditionalExpression[Inactive[D][HypergeometricU[a, b, z], z]/HypergeometricU[a, b, z] == -(a/z) - (a*(1 + a - b))/(z*(-2 - 2*a + b - z + Inactive[ContinuedFractionK][(-1 - a + b - k)*(a + k), -2 - 2*a + b - 2*k - z, {k, 1, Infinity}])), Element[a | b | z, Complexes] && NotElement[b, Integers]]

(* {"HypergeometricURatio", 6}*)
ConditionalExpression[HypergeometricU[a, 1/2, z^2]/HypergeometricU[1 + a, 3/2, z^2] == (z*(Sqrt[2]*z + Inactive[ContinuedFractionK][2*a + k, Sqrt[2]*z, {k, 1, Infinity}]))/Sqrt[2], Element[a | z, Complexes]]

(* {"HypergeometricURatio", 7}*)
ConditionalExpression[HypergeometricU[1 + a, 3/2, z^2]/HypergeometricU[a, 1/2, z^2] == Inactive[ContinuedFractionK][-1 + 2*a + k, Sqrt[2]*z, {k, 1, Infinity}]/(Sqrt[2]*a*z), Element[a | z, Complexes]]

(* {"HypergeometricURatio", 8}*)
ConditionalExpression[HypergeometricU[(1 + a)/2, 1/2, z^2]/HypergeometricU[a/2, 1/2, z^2] == (z + Inactive[ContinuedFractionK][(a + k)/2, z, {k, 1, Infinity}])^(-1), Element[a | z, Complexes] && Re[z] > 0]

(* {"IntegrateFromFunction", 1}*)
ConditionalExpression[Inactive[Inactive[Integrate]][t^z/(1 + t^2), {t, 0, 1}] == 1/(2*(z + Inactive[ContinuedFractionK][k^2, z, {k, 1, Infinity}])), Element[z, Complexes] && Re[z] > -1]

(* {"IntegrateFromFunction", 2}*)
ConditionalExpression[Inactive[Inactive[Integrate]][1/(E^t*(t + z)), {t, 0, Infinity}] == (1 + z + Inactive[ContinuedFractionK][-k^2, 1 + 2*k + z, {k, 1, Infinity}])^(-1), Element[z, Complexes] && Re[z] > 0]

(* {"IntegrateFromFunction", 3}*)
ConditionalExpression[Inactive[Inactive[Integrate]][1/(E^(t/z)*(1 + t)^a), {t, 0, Infinity}] == z/(1 + Inactive[ContinuedFractionK][((1 - (-1)^k)*(a + (-1 + k)/2)*z)/2 + ((1 + (-1)^k)*k*z)/4, 1, {k, 1, Infinity}]), Element[a | z, Complexes] && Re[z] > 0]

(* {"IntegrateFromFunction", 4}*)
ConditionalExpression[Inactive[Inactive[Integrate]][1/(E^(t/z)*(1 + t)^a), {t, 0, Infinity}] == z/(1 + a*z + Inactive[ContinuedFractionK][-(k*(-1 + a + k)*z^2), 1 + (a + 2*k)*z, {k, 1, Infinity}]), Element[a | z, Complexes] && Re[z] > 0]

(* {"IntegrateFromFunction", 5}*)
ConditionalExpression[Inactive[Inactive[Integrate]][((1 - c)/(-c^b + E^((1 - c)*t)))^a/E^(t*z), {t, 0, Infinity}] == ((1 - c)/(1 - c^b))^a/(z + Inactive[ContinuedFractionK][((1 - (-1)^k)*(1 - c)*(a + (-1 + k)/2))/(2*(1 - c^b)) + ((1 + (-1)^k)*(1 - c)*c^b*k)/(4*(1 - c^b)), (1 - (-1)^k)/2 + ((1 + (-1)^k)*z)/2, {k, 1, Infinity}]), Element[a | b | c | z, Complexes] && Re[z] > Min[0, -1 + Re[c]]*Re[a]]

(* {"IntegrateFromFunction", 6}*)
ConditionalExpression[Inactive[Inactive[Integrate]][t^(-1 + a)/(E^t*(t + z)), {t, 0, Infinity}] == Gamma[a]/(z + Inactive[ContinuedFractionK][((1 - (-1)^k)*(a + (-1 + k)/2))/2 + ((1 + (-1)^k)*k)/4, (1 - (-1)^k)/2 + ((1 + (-1)^k)*z)/2, {k, 1, Infinity}]), Element[a | z, Complexes] && Re[a] > 0 && Re[z] > 0]

(* {"IntegrateFromFunction", 7}*)
ConditionalExpression[Inactive[Inactive[Integrate]][Sech[t]^2/E^(t*z), {t, 0, Infinity}] == (z + Inactive[ContinuedFractionK][k*(1 + k), z, {k, 1, Infinity}])^(-1), Element[z, Complexes] && Re[z] > 2]

(* {"IntegrateFromFunction", 8}*)
ConditionalExpression[Inactive[Inactive[Integrate]][(t*Sech[t])/E^(t*z), {t, 0, Infinity}] == (-1 + z^2 + Inactive[ContinuedFractionK][((1 + (-1)^k)*k^2)/2 + ((1 - (-1)^k)*(1 + k)^2)/2, (1 - (-1)^k)/2 + ((1 + (-1)^k)*(-1 + z^2))/2, {k, 1, Infinity}])^(-1), Element[z, Complexes] && Re[z] > 1]

(* {"IntegrateFromFunction", 9}*)
Inactive[Inactive[Integrate]][(4*t*Sech[t])/E^(Sqrt[5]*t), {t, 0, Infinity}] == (1 + Inactive[ContinuedFractionK][((1 + (-1)^k)*k^2)/8 + ((1 - (-1)^k)*(1 + k)^2)/8, 1, {k, 1, Infinity}])^(-1)

(* {"IntegrateFromFunction", 10}*)
ConditionalExpression[Inactive[Inactive[Integrate]][(Cosh[q*t]*Sech[t])/E^(t*z), {t, 0, Infinity}] == (z + Inactive[ContinuedFractionK][((1 + (-1)^k)*k^2)/2 + ((1 - (-1)^k)*(k^2 - q^2))/2, z, {k, 1, Infinity}])^(-1), Element[q | z, Complexes] && Re[z] > -1 + Abs[Re[q]]]

(* {"IntegrateFromFunction", 11}*)
ConditionalExpression[Inactive[Inactive[Integrate]][(t*Csch[t])/E^(t*z), {t, 0, Infinity}] == (z + Inactive[ContinuedFractionK][k^4, (1 + 2*k)*z, {k, 1, Infinity}])^(-1), Element[z, Complexes] && Re[z] > 1]

(* {"IntegrateFromFunction", 12}*)
ConditionalExpression[Inactive[Integrate][(Csch[c*t]*Sinh[a*t]*Sinh[b*t])/E^(t*z), {t, 0, Infinity}] == (a*b)/(c*(-a^2 - b^2 + c^2 + z^2 + Inactive[ContinuedFractionK][-4*k^2*(-a^2 + c^2*k^2)*(-b^2 + c^2*k^2), (1 + 2*k)*(-a^2 - b^2 + c^2*(1 + 2*k + 2*k^2) + z^2), {k, 1, Infinity}])), Element[a | b | c | z, Complexes] && Re[z] > Abs[Re[a]] + Abs[Re[b]] - Abs[Re[c]]]

(* {"IntegrateFromFunction", 13}*)
ConditionalExpression[Inactive[Integrate][(Csch[c*t]*Sinh[a*t])/E^(t*z), {t, 0, Infinity}] == a/(c*(z + Inactive[ContinuedFractionK][k^2*(-a^2 + c^2*k^2), (1 + 2*k)*z, {k, 1, Infinity}])), Element[a | c | z, Complexes] && Re[z] > Abs[Re[a]] - Abs[Re[c]]]

(* {"IntegrateFromFunction", 14}*)
ConditionalExpression[Inactive[Integrate][1/(E^(t*z)*(Cosh[t] + a*Sinh[t])^b), {t, 0, Infinity}] == (a*b + z + Inactive[ContinuedFractionK][(1 - a^2)*k*(-1 + b + k), a*(b + 2*k) + z, {k, 1, Infinity}])^(-1), Element[a | b | z, Complexes] && Re[b + z] > 0]

(* {"IntegrateFromFunction", 15}*)
ConditionalExpression[Inactive[Integrate][(Sech[t]*Sinh[b*t])/E^(t*z), {t, 0, Infinity}] == b/(-1 + z^2 + Inactive[ContinuedFractionK][((1 + (-1)^k)*k^2)/2 + ((1 - (-1)^k)*(-b^2 + (1 + k)^2))/2, (1 - (-1)^k)/2 + ((1 + (-1)^k)*(-1 + z^2))/2, {k, 1, Infinity}]), Element[b | z, Complexes] && Re[z] > -1 + Abs[Re[b]]]

(* {"IntegrateFromFunction", 16}*)
ConditionalExpression[Inactive[Integrate][JacobiSN[t*z, m]/E^t, {t, 0, Infinity}] == z/(1 + (1 + m)*z^2 + Inactive[ContinuedFractionK][4*(1 - 2*k)*k^2*(1 + 2*k)*m*z^4, 1 + (1 + 2*k)^2*(1 + m)*z^2, {k, 1, Infinity}]), Element[m | z, Complexes]]

(* {"IntegrateFromFunction", 17}*)
ConditionalExpression[Inactive[Integrate][JacobiSN[t, m^2]/E^(t*z), {t, 0, Infinity}] == (1 + m^2 + z^2 + Inactive[ContinuedFractionK][4*(1 - 2*k)*k^2*(1 + 2*k)*m^2, (1 + 2*k)^2*(1 + m^2) + z^2, {k, 1, Infinity}])^(-1), Element[m | z, Complexes] && Re[z] > 0]

(* {"IntegrateFromFunction", 18}*)
ConditionalExpression[Inactive[Integrate][JacobiCN[t*z, m]/E^t, {t, 0, Infinity}] == (1 + z^2 + Inactive[ContinuedFractionK][-4*k^2*(-1 + 2*k)^2*m*z^4, 1 + ((1 + 2*k)^2 + 4*k^2*m)*z^2, {k, 1, Infinity}])^(-1), Element[m | z, Complexes]]

(* {"IntegrateFromFunction", 19}*)
ConditionalExpression[Inactive[Integrate][JacobiSN[t, m^2]^2/E^(t*z), {t, 0, Infinity}] == 2/(z*(4*(1 + m^2) + z^2 + Inactive[ContinuedFractionK][-2*k*(1 + 2*k)^2*(2 + 2*k)*m^2, 4*(1 + k)^2*(1 + m^2) + z^2, {k, 1, Infinity}])), Element[m | z, Complexes] && Re[z] > 0]

(* {"IntegrateFromFunction", 20}*)
ConditionalExpression[Inactive[Integrate][JacobiCN[t, m^2]/E^(t*z), {t, 0, Infinity}] == (z + Inactive[ContinuedFractionK][((1 - (-1)^k)*k^2)/2 + ((1 + (-1)^k)*k^2*m^2)/2, z, {k, 1, Infinity}])^(-1), Element[m | z, Complexes] && Re[z] > 0]

(* {"IntegrateFromFunction", 21}*)
ConditionalExpression[Inactive[Integrate][JacobiDN[t, m^2]/E^(t*z), {t, 0, Infinity}] == (z + Inactive[ContinuedFractionK][((1 + (-1)^k)*k^2)/2 + ((1 - (-1)^k)*k^2*m^2)/2, z, {k, 1, Infinity}])^(-1), Element[m | z, Complexes] && Re[z] > 0]

(* {"IntegrateFromFunction", 22}*)
ConditionalExpression[Inactive[Integrate][JacobiDN[t, m^2]/E^(t*z), {t, 0, Infinity}] == (z + Inactive[ContinuedFractionK][((1 + (-1)^k)*k^2)/2 + ((1 - (-1)^k)*k^2*m^2)/2, z, {k, 1, Infinity}])^(-1), Element[m | z, Complexes] && Re[z] > 0]

(* {"IntegrateFromFunction", 23}*)
ConditionalExpression[Inactive[Integrate][JacobiDN[t, m^2]/E^(t*z), {t, 0, Infinity}] == (z + Inactive[ContinuedFractionK][((1 + (-1)^k)*k^2)/2 + ((1 - (-1)^k)*k^2*m^2)/2, z, {k, 1, Infinity}])^(-1), Element[m | z, Complexes] && Re[z] > 0]

(* {"IntegrateFromFunction", 24}*)
ConditionalExpression[Inactive[Integrate][(JacobiCN[t, m^2]*JacobiSN[t, m^2])/(E^(t*z)*JacobiDN[t, m^2]), {t, 0, Infinity}] == (2*(2 - m^2) + z^2 + Inactive[ContinuedFractionK][4*(1 - 2*k)*k^2*(1 + 2*k)*m^4, 2*(1 + 2*k)^2*(2 - m^2) + z^2, {k, 1, Infinity}])^(-1), Element[m | z, Complexes] && Re[z] > 0]

(* {"IntegrateFromFunction", 25}*)
ConditionalExpression[Inactive[Integrate][Hypergeometric2F1[a, b, (1 + a + b)/2, -Sinh[t]^2]/E^(t*z), {t, 0, Infinity}] == (z + Inactive[ContinuedFractionK][(4*k*(-1 + a + k)*(-1 + b + k)*(-2 + a + b + k))/((-3 + a + b + 2*k)*(-1 + a + b + 2*k)), z, {k, 1, Infinity}])^(-1), Element[a | b | z, Complexes] && Re[z] > 0]

(* {"IntegrateFromFunctionCompound", 1}*)
ConditionalExpression[E^Inactive[Integrate][(1 - Cosh[2*a*t]*Sech[2*t])/(E^(t*z)*t), {t, 0, Infinity}] == 1 + 2*Inactive[ContinuedFractionK][-a^2 + (-1 + 2*k)^2, (1 + (-1)^k)/2 + ((1 - (-1)^k)*z^2)/2, {k, 1, Infinity}], Element[a | z, Complexes] && Re[z] > Max[1, Abs[Re[a]]]]

(* {"IntegrateFromFunctionCompound", 2}*)
ConditionalExpression[Tanh[Inactive[Integrate][(Sech[t]*Sinh[a*t])/(E^(t*z)*t), {t, 0, Infinity}]] == a/(z + Inactive[ContinuedFractionK][((1 - (-1)^k)*k^2)/2 + ((1 + (-1)^k)*(-a^2 + k^2))/2, z, {k, 1, Infinity}]), Element[a | z, Complexes] && Re[z] > -1 + Abs[Re[a]]]

(* {"IntegrateFromFunctionCompound", 3}*)
ConditionalExpression[Tanh[Inactive[Integrate][(Sech[t]*Sinh[2*a*t])/(E^(t*z)*t), {t, 0, Infinity}]/2] == a/(z + Inactive[ContinuedFractionK][-a^2 + k^2, z, {k, 1, Infinity}]), Element[a | z, Complexes] && Re[z] > -1 + Abs[Re[a]]]

(* {"IntegrateFromFunctionRatio", 1}*)
ConditionalExpression[Inactive[Integrate][t^a*((1 - t)/(1 + t))^b, {t, 0, 1}]/Inactive[Integrate][t^(-1 + a)*((1 - t)/(1 + t))^b, {t, 0, 1}] == a/(2*b + Inactive[ContinuedFractionK][(a + k)*(1 + a + k), 2*b, {k, 1, Infinity}]), Element[a | b, Complexes] && Re[a] > 0 && Re[b] > -1]

(* {"IntegrateFromFunctionRatio", 2}*)
ConditionalExpression[Inactive[Integrate][(t^a*((1 - t)/(1 + t))^b)/(1 - t), {t, 0, 1}]/Inactive[Integrate][(t^a*((1 - t)/(1 + t))^b)/(1 - t^2), {t, 0, 1}] == 1 + (1 + a)/(2*b + Inactive[ContinuedFractionK][(a + k)*(1 + a + k), 2*b, {k, 1, Infinity}]), Element[a | b, Complexes] && Re[a] > -1 && Re[b] > 0]

(* {"JacobiP", 1}*)
ConditionalExpression[JacobiP[\[Nu], a, b, 1 - 2*z] == Gamma[1 + a + \[Nu]]/(Gamma[1 + a]*Gamma[1 + \[Nu]]*(1 + Inactive[ContinuedFractionK][-((z*(-1 + k - \[Nu])*(a + b + k + \[Nu]))/(k*(a + k))), 1 + (z*(-1 + k - \[Nu])*(a + b + k + \[Nu]))/(k*(a + k)), {k, 1, Infinity}])), Element[\[Nu] | a | b | z, Complexes] && Abs[z] < 1]

(* {"KelvinBei", 1}*)
ConditionalExpression[KelvinBei[0, z] == z^2/(4*(1 + Inactive[ContinuedFractionK][z^4/(64*k^2*(1 + 2*k)^2), 1 - z^4/(64*k^2*(1 + 2*k)^2), {k, 1, Infinity}])), Element[z, Complexes]]

(* {"KelvinBei2", 1}*)
ConditionalExpression[KelvinBei[\[Nu], z] == (z^\[Nu]*Sin[(3*Pi*\[Nu])/4])/(2^\[Nu]*Gamma[1 + \[Nu]]*(1 + Inactive[ContinuedFractionK][(z^2*Tan[(Pi*(2*k + 3*\[Nu]))/4])/(4*k*(k + \[Nu])), 1 - (z^2*Tan[(Pi*(2*k + 3*\[Nu]))/4])/(4*k*(k + \[Nu])), {k, 1, Infinity}])), Element[\[Nu] | z, Complexes]]

(* {"KelvinBei2", 2}*)
ConditionalExpression[KelvinBei[-2*m, z] == (I*I^m*2^(-1 - 2*m)*(1 - (-1)^m)*z^(2*m))/((2*m)!*(1 + Inactive[ContinuedFractionK][z^4/(64*k*(-1 + 2*k)*(k + m)*(-1 + 2*k + 2*m)), 1 - z^4/(64*k*(-1 + 2*k)*(k + m)*(-1 + 2*k + 2*m)), {k, 1, Infinity}])) + (I^m*2^(-3 - 2*m)*(1 + (-1)^m)*z^(2 + 2*m))/((1 + 2*m)!*(1 + Inactive[ContinuedFractionK][z^4/(64*k*(1 + 2*k)*(k + m)*(1 + 2*k + 2*m)), 1 - z^4/(64*k*(1 + 2*k)*(k + m)*(1 + 2*k + 2*m)), {k, 1, Infinity}])), Element[m, Integers] && Element[z, Complexes] && m >= 0]

(* {"KelvinBei2", 3}*)
ConditionalExpression[KelvinBei[-1 - 2*m, z] == ((-1)^(m + Floor[(-1 + m)/2])*2^(-3/2 - 2*m)*z^(1 + 2*m))/((1 + 2*m)!*(1 + Inactive[ContinuedFractionK][z^4/(64*k*(-1 + 2*k)*(k + m)*(1 + 2*k + 2*m)), 1 - z^4/(64*k*(-1 + 2*k)*(k + m)*(1 + 2*k + 2*m)), {k, 1, Infinity}])) + ((-1)^(m + Floor[m/2])*2^(-7/2 - 2*m)*z^(3 + 2*m))/((2 + 2*m)!*(1 + Inactive[ContinuedFractionK][z^4/(64*k*(1 + 2*k)*(1 + k + m)*(1 + 2*k + 2*m)), 1 - z^4/(64*k*(1 + 2*k)*(1 + k + m)*(1 + 2*k + 2*m)), {k, 1, Infinity}])), Element[m, Integers] && Element[z, Complexes] && m >= 0]

(* {"KelvinBer", 1}*)
ConditionalExpression[KelvinBer[0, z] == (1 + Inactive[ContinuedFractionK][z^4/(64*(1 - 2*k)^2*k^2), 1 - z^4/(64*(1 - 2*k)^2*k^2), {k, 1, Infinity}])^(-1), Element[z, Complexes]]

(* {"KelvinBer2", 1}*)
ConditionalExpression[KelvinBer[\[Nu], z] == (z^\[Nu]*Cos[(3*Pi*\[Nu])/4])/(2^\[Nu]*Gamma[1 + \[Nu]]*(1 + Inactive[ContinuedFractionK][-(z^2*Cot[(Pi*(2*k + 3*\[Nu]))/4])/(4*k*(k + \[Nu])), 1 + (z^2*Cot[(Pi*(2*k + 3*\[Nu]))/4])/(4*k*(k + \[Nu])), {k, 1, Infinity}])), Element[\[Nu] | z, Complexes]]

(* {"KelvinBer2", 2}*)
ConditionalExpression[KelvinBer[-2*m, z] == (z^(2*m)*Cos[(m*Pi)/2])/(2^(2*m)*(2*m)!*(1 + Inactive[ContinuedFractionK][z^4/(64*k*(-1 + 2*k)*(k + m)*(-1 + 2*k + 2*m)), 1 - z^4/(64*k*(-1 + 2*k)*(k + m)*(-1 + 2*k + 2*m)), {k, 1, Infinity}])) + (2^(-2 - 2*m)*z^(2 + 2*m)*Sin[(m*Pi)/2])/((1 + 2*m)!*(1 + Inactive[ContinuedFractionK][z^4/(64*k*(1 + 2*k)*(k + m)*(1 + 2*k + 2*m)), 1 - z^4/(64*k*(1 + 2*k)*(k + m)*(1 + 2*k + 2*m)), {k, 1, Infinity}])), Element[m, Integers] && Element[z, Complexes] && m >= 0]

(* {"KelvinBer2", 3}*)
ConditionalExpression[KelvinBer[-1 - 2*m, z] == ((-1)^Floor[(1 + m)/2]*2^(-3/2 - 2*m)*z^(1 + 2*m))/((1 + 2*m)!*(1 + Inactive[ContinuedFractionK][z^4/(64*k*(-1 + 2*k)*(k + m)*(1 + 2*k + 2*m)), 1 - z^4/(64*k*(-1 + 2*k)*(k + m)*(1 + 2*k + 2*m)), {k, 1, Infinity}])) + ((-1)^Floor[m/2]*2^(-7/2 - 2*m)*z^(3 + 2*m))/((2 + 2*m)!*(1 + Inactive[ContinuedFractionK][z^4/(64*k*(1 + 2*k)*(1 + k + m)*(1 + 2*k + 2*m)), 1 - z^4/(64*k*(1 + 2*k)*(1 + k + m)*(1 + 2*k + 2*m)), {k, 1, Infinity}])), Element[m, Integers] && Element[z, Complexes] && m >= 0]

(* {"KelvinKei", 1}*)
ConditionalExpression[KelvinKei[0, z] == -Pi/(4*(1 + Inactive[ContinuedFractionK][z^4/(64*(1 - 2*k)^2*k^2), 1 - z^4/(64*(1 - 2*k)^2*k^2), {k, 1, Infinity}])) - (z^2*Log[z/2])/(4*(1 + Inactive[ContinuedFractionK][z^4/(64*k^2*(1 + 2*k)^2), 1 - z^4/(64*k^2*(1 + 2*k)^2), {k, 1, Infinity}])) + ((1 - EulerGamma)*z^2)/(4*(1 + Inactive[ContinuedFractionK][(z^4*PolyGamma[0, 2 + 2*k])/(64*(k + 2*k^2)^2*PolyGamma[0, 2*k]), 1 - (z^4*PolyGamma[0, 2 + 2*k])/(64*(k + 2*k^2)^2*PolyGamma[0, 2*k]), {k, 1, Infinity}])), Element[z, Complexes]]

(* {"KelvinKei2", 1}*)
ConditionalExpression[KelvinKei[\[Nu], z] == -((2^(-1 - \[Nu])*z^\[Nu]*Gamma[-\[Nu]]*Sin[(Pi*\[Nu])/4])/(1 + Inactive[ContinuedFractionK][(z^2*Cot[(Pi*(2 - 2*k + \[Nu]))/4])/(4*k*(k + \[Nu])), 1 - (z^2*Cot[(Pi*(2 - 2*k + \[Nu]))/4])/(4*k*(k + \[Nu])), {k, 1, Infinity}])) - (2^(-1 + \[Nu])*Gamma[\[Nu]]*Sin[(3*Pi*\[Nu])/4])/(z^\[Nu]*(1 + Inactive[ContinuedFractionK][(z^2*Tan[(k*Pi)/2 - (3*Pi*\[Nu])/4])/(4*k^2 - 4*k*\[Nu]), 1 - (z^2*Tan[(k*Pi)/2 - (3*Pi*\[Nu])/4])/(4*k^2 - 4*k*\[Nu]), {k, 1, Infinity}])), Element[\[Nu] | z, Complexes]]

(* {"KelvinKei2", 2}*)
ConditionalExpression[KelvinKei[1 + 2*m, z] == (2^(-1 + 2*m)*(-I + (-1)^m)*z^(-1 - 2*m)*(2*m)!)/(E^(((3*I)/4)*(1 + 2*m)*Pi)*(1 + Inactive[ContinuedFractionK][(((-I)*(-1)^k + (-1)^m)*z^2)/(4*((-1)^k - I*(-1)^m)*k*(-1 + k - 2*m)), 1 + ((I/4)*((-1)^k + I*(-1)^m)*z^2)/(((-1)^k - I*(-1)^m)*k*(-1 + k - 2*m)), {k, 1, 2*m}])) - ((I + (-1)^m)*z^(1 + 2*m)*Log[z/2])/(2^(2*(1 + m))*E^((I/4)*(1 + 2*m)*Pi)*(1 + 2*m)!*(1 + Inactive[ContinuedFractionK][((I/4)*(I + (-1)^(k + m))*z^2)/((-I + (-1)^(k + m))*k*(1 + k + 2*m)), 1 + ((1 - I*(-1)^(k + m))*z^2)/(4*(-I + (-1)^(k + m))*k*(1 + k + 2*m)), {k, 1, Infinity}])) - (2^(-3 - 2*m)*(I + (-1)^m)*z^(1 + 2*m)*(EulerGamma - PolyGamma[0, 2 + 2*m]))/(E^((I/4)*(1 + 2*m)*Pi)*(1 + 2*m)!*(1 + Inactive[ContinuedFractionK][((I/4)*(I + (-1)^(k + m))*z^2*(PolyGamma[0, 1 + k] + PolyGamma[0, 2 + k + 2*m]))/((-I + (-1)^(k + m))*k*(1 + k + 2*m)*(PolyGamma[0, k] + PolyGamma[0, 1 + k + 2*m])), 1 - ((I/4)*(I + (-1)^(k + m))*z^2*(PolyGamma[0, 1 + k] + PolyGamma[0, 2 + k + 2*m]))/((-I + (-1)^(k + m))*k*(1 + k + 2*m)*(PolyGamma[0, k] + PolyGamma[0, 1 + k + 2*m])), {k, 1, Infinity}])) + (2^(-3 - 2*m)*Pi*z^(1 + 2*m)*Sin[((1 + 6*m)*Pi)/4])/((1 + 2*m)!*(1 + Inactive[ContinuedFractionK][(z^2*Tan[((1 + 2*k + 2*m)*Pi)/4])/(4*k*(1 + k + 2*m)), 1 - (z^2*Tan[((1 + 2*k + 2*m)*Pi)/4])/(4*k*(1 + k + 2*m)), {k, 1, Infinity}])), Element[m, Integers] && Element[z, Complexes] && m >= 0]

(* {"KelvinKei2", 3}*)
ConditionalExpression[KelvinKei[0, z] == -Pi/(4*(1 + Inactive[ContinuedFractionK][z^4/(64*k^2*(-1 + 2*k)^2), 1 - z^4/(64*k^2*(-1 + 2*k)^2), {k, 1, Infinity}])) - (z^2*Log[z/2])/(4*(1 + Inactive[ContinuedFractionK][z^4/(64*k^2*(1 + 2*k)^2), 1 - z^4/(64*k^2*(1 + 2*k)^2), {k, 1, Infinity}])) - ((-1 + EulerGamma)*z^2)/(4*(1 + Inactive[ContinuedFractionK][(z^4*PolyGamma[0, 2 + 2*k])/(64*k^2*(1 + 2*k)^2*PolyGamma[0, 2*k]), 1 - (z^4*PolyGamma[0, 2 + 2*k])/(64*k^2*(1 + 2*k)^2*PolyGamma[0, 2*k]), {k, 1, Infinity}])), Element[z, Complexes]]

(* {"KelvinKei2", 4}*)
ConditionalExpression[KelvinKei[4*m, z] == -(((-1)^m*2^(-3 + 4*m)*z^(2 - 4*m)*(-2 + 4*m)!)/(1 + Inactive[ContinuedFractionK][z^4/(64*k*(1 + 2*k)*(1 + 2*k - 4*m)*(k - 2*m)), 1 - z^4/(64*k*(1 + 2*k)*(1 + 2*k - 4*m)*(k - 2*m)), {k, 1, -1 + 2*m}])) - ((-1)^m*2^(-2 - 4*m)*Pi*z^(4*m))/((4*m)!*(1 + Inactive[ContinuedFractionK][z^4/(64*k*(-1 + 2*k)*(k + 2*m)*(-1 + 2*k + 4*m)), 1 - z^4/(64*k*(-1 + 2*k)*(k + 2*m)*(-1 + 2*k + 4*m)), {k, 1, Infinity}])) - ((-1)^m*2^(-2 - 4*m)*z^(2 + 4*m)*Log[z/2])/((1 + 4*m)!*(1 + Inactive[ContinuedFractionK][z^4/(64*k*(1 + 2*k)*(k + 2*m)*(1 + 2*k + 4*m)), 1 - z^4/(64*k*(1 + 2*k)*(k + 2*m)*(1 + 2*k + 4*m)), {k, 1, Infinity}])) - ((-1)^m*2^(-3 - 4*m)*z^(2 + 4*m)*(-1 + EulerGamma - PolyGamma[0, 2 + 4*m]))/((1 + 4*m)!*(1 + Inactive[ContinuedFractionK][(z^4*(PolyGamma[0, 2 + 2*k] + PolyGamma[0, 2 + 2*k + 4*m]))/(64*k*(1 + 2*k)*(k + 2*m)*(1 + 2*k + 4*m)*(PolyGamma[0, 2*k] + PolyGamma[0, 2*k + 4*m])), 1 - (z^4*(PolyGamma[0, 2 + 2*k] + PolyGamma[0, 2 + 2*k + 4*m]))/(64*k*(1 + 2*k)*(k + 2*m)*(1 + 2*k + 4*m)*(PolyGamma[0, 2*k] + PolyGamma[0, 2*k + 4*m])), {k, 1, Infinity}])), Element[m, Integers] && Element[z, Complexes] && m > 0]

(* {"KelvinKei2", 5}*)
ConditionalExpression[KelvinKei[2 + 4*m, z] == ((-1)^m*2^(1 + 4*m)*z^(-2 - 4*m)*(1 + 4*m)!)/(1 + Inactive[ContinuedFractionK][z^4/(64*k*(-1 + 2*k)*(-3 + 2*k - 4*m)*(-1 + k - 2*m)), 1 - z^4/(64*k*(-1 + 2*k)*(-3 + 2*k - 4*m)*(-1 + k - 2*m)), {k, 1, 2*m}]) + ((-1)^m*4^(-1 - 2*m)*z^(2 + 4*m)*Log[z/2])/((2 + 4*m)!*(1 + Inactive[ContinuedFractionK][z^4/(64*k*(-1 + 2*k)*(1 + k + 2*m)*(1 + 2*k + 4*m)), 1 - z^4/(64*k*(-1 + 2*k)*(1 + k + 2*m)*(1 + 2*k + 4*m)), {k, 1, Infinity}])) - ((-1)^m*4^(-3 - 2*m)*Pi*z^(4 + 4*m))/((3 + 4*m)!*(1 + Inactive[ContinuedFractionK][z^4/(64*k*(1 + 2*k)*(1 + k + 2*m)*(3 + 2*k + 4*m)), 1 - z^4/(64*k*(1 + 2*k)*(1 + k + 2*m)*(3 + 2*k + 4*m)), {k, 1, Infinity}])) - ((-1)^m*2^(-3 - 4*m)*z^(2 + 4*m)*(-EulerGamma + PolyGamma[0, 3 + 4*m]))/((2 + 4*m)!*(1 + Inactive[ContinuedFractionK][(z^4*(PolyGamma[0, 1 + 2*k] + PolyGamma[0, 3 + 2*k + 4*m]))/(64*k*(-1 + 2*k)*(1 + k + 2*m)*(1 + 2*k + 4*m)*(PolyGamma[0, -1 + 2*k] + PolyGamma[0, 1 + 2*k + 4*m])), 1 - (z^4*(PolyGamma[0, 1 + 2*k] + PolyGamma[0, 3 + 2*k + 4*m]))/(64*k*(-1 + 2*k)*(1 + k + 2*m)*(1 + 2*k + 4*m)*(PolyGamma[0, -1 + 2*k] + PolyGamma[0, 1 + 2*k + 4*m])), {k, 1, Infinity}])), Element[m, Integers] && Element[z, Complexes] && m >= 0]

(* {"KelvinKer", 1}*)
ConditionalExpression[KelvinKer[0, z] == -(Log[z/2]/(1 + Inactive[ContinuedFractionK][z^4/(64*(1 - 2*k)^2*k^2), 1 - z^4/(64*(1 - 2*k)^2*k^2), {k, 1, Infinity}])) + (Pi*z^2)/(16*(1 + Inactive[ContinuedFractionK][z^4/(64*k^2*(1 + 2*k)^2), 1 - z^4/(64*k^2*(1 + 2*k)^2), {k, 1, Infinity}])) - EulerGamma/(1 + Inactive[ContinuedFractionK][(z^4*PolyGamma[0, 1 + 2*k])/(64*(1 - 2*k)^2*k^2*PolyGamma[0, -1 + 2*k]), 1 - (z^4*PolyGamma[0, 1 + 2*k])/(64*(1 - 2*k)^2*k^2*PolyGamma[0, -1 + 2*k]), {k, 1, Infinity}]), Element[z, Complexes]]

(* {"KelvinKer2", 1}*)
ConditionalExpression[KelvinKer[\[Nu], z] == (2^(-1 + \[Nu])*Cos[(3*Pi*\[Nu])/4]*Gamma[\[Nu]])/(z^\[Nu]*(1 + Inactive[ContinuedFractionK][(z^2*Cot[(Pi*(-2*k + 3*\[Nu]))/4])/(4*k^2 - 4*k*\[Nu]), 1 - (z^2*Cot[(Pi*(-2*k + 3*\[Nu]))/4])/(4*k^2 - 4*k*\[Nu]), {k, 1, Infinity}])) + (2^(-1 - \[Nu])*z^\[Nu]*Cos[(Pi*\[Nu])/4]*Gamma[-\[Nu]])/(1 + Inactive[ContinuedFractionK][-(z^2*Tan[(Pi*(2 - 2*k + \[Nu]))/4])/(4*k*(k + \[Nu])), 1 + (z^2*Tan[(Pi*(2 - 2*k + \[Nu]))/4])/(4*k*(k + \[Nu])), {k, 1, Infinity}]), Element[\[Nu] | z, Complexes]]

(* {"KelvinKer2", 2}*)
ConditionalExpression[KelvinKer[1 + 2*m, z] == (2^(-1 + 2*m)*(1 - I*(-1)^m)*z^(-1 - 2*m)*(2*m)!)/(E^(((3*I)/4)*(1 + 2*m)*Pi)*(1 + Inactive[ContinuedFractionK][((I*(-1)^k + (-1)^m)*z^2)/(4*((-1)^k + I*(-1)^m)*k*(1 - k + 2*m)), 1 - ((I*(-1)^k + (-1)^m)*z^2)/(4*((-1)^k + I*(-1)^m)*k*(1 - k + 2*m)), {k, 1, 2*m}])) + (4^(-1 - m)*(1 + I*(-1)^m)*z^(1 + 2*m)*Log[z/2])/(E^((I/4)*(1 + 2*m)*Pi)*(1 + 2*m)!*(1 + Inactive[ContinuedFractionK][((1 + I*(-1)^(k + m))*z^2)/(4*(I + (-1)^(k + m))*k*(1 + k + 2*m)), 1 - ((1 + I*(-1)^(k + m))*z^2)/(4*(I + (-1)^(k + m))*k*(1 + k + 2*m)), {k, 1, Infinity}])) + (2^(-3 - 2*m)*Pi*z^(1 + 2*m)*Sin[(3*(1 + 2*m)*Pi)/4])/((1 + 2*m)*(1 + Inactive[ContinuedFractionK][-(z^2*Cot[((1 + 2*k + 6*m)*Pi)/4])/(4*k*(1 + k + 2*m)), 1 + (z^2*Cot[((1 + 2*k + 6*m)*Pi)/4])/(4*k*(1 + k + 2*m)), {k, 1, Infinity}])) + (2^(-3 - 2*m)*(1 + I*(-1)^m)*z^(1 + 2*m)*(EulerGamma - PolyGamma[0, 2 + 2*m]))/(E^((I/4)*(1 + 2*m)*Pi)*(1 + 2*m)!*(1 + Inactive[ContinuedFractionK][((1 + I*(-1)^(k + m))*z^2*(PolyGamma[0, 1 + k] + PolyGamma[0, 2 + k + 2*m]))/(4*(I + (-1)^(k + m))*k*(1 + k + 2*m)*(PolyGamma[0, k] + PolyGamma[0, 1 + k + 2*m])), 1 - ((1 + I*(-1)^(k + m))*z^2*(PolyGamma[0, 1 + k] + PolyGamma[0, 2 + k + 2*m]))/(4*(I + (-1)^(k + m))*k*(1 + k + 2*m)*(PolyGamma[0, k] + PolyGamma[0, 1 + k + 2*m])), {k, 1, Infinity}])), Element[m, Integers] && Element[z, Complexes] && m >= 0]

(* {"KelvinKer2", 3}*)
ConditionalExpression[KelvinKer[0, z] == -(Log[z/2]/(1 + Inactive[ContinuedFractionK][z^4/(64*k^2*(-1 + 2*k)^2), 1 - z^4/(64*k^2*(-1 + 2*k)^2), {k, 1, Infinity}])) + (Pi*z^2)/(16*(1 + Inactive[ContinuedFractionK][z^4/(64*k^2*(1 + 2*k)^2), 1 - z^4/(64*k^2*(1 + 2*k)^2), {k, 1, Infinity}])) - EulerGamma/(1 + Inactive[ContinuedFractionK][(z^4*PolyGamma[0, 1 + 2*k])/(64*k^2*(-1 + 2*k)^2*PolyGamma[0, -1 + 2*k]), 1 - (z^4*PolyGamma[0, 1 + 2*k])/(64*k^2*(-1 + 2*k)^2*PolyGamma[0, -1 + 2*k]), {k, 1, Infinity}]), Element[z, Complexes]]

(* {"KelvinKer2", 4}*)
ConditionalExpression[KelvinKer[4*m, z] == ((-1)^m*2^(-1 + 4*m)*(-1 + 4*m)!)/(z^(4*m)*(1 + Inactive[ContinuedFractionK][z^4/(64*k*(-1 + 2*k)*(-1 + 2*k - 4*m)*(k - 2*m)), 1 - z^4/(64*k*(-1 + 2*k)*(-1 + 2*k - 4*m)*(k - 2*m)), {k, 1, -1 + 2*m}])) - ((-1/16)^m*z^(4*m)*Log[z/2])/((4*m)!*(1 + Inactive[ContinuedFractionK][z^4/(64*k*(-1 + 2*k)*(k + 2*m)*(-1 + 2*k + 4*m)), 1 - z^4/(64*k*(-1 + 2*k)*(k + 2*m)*(-1 + 2*k + 4*m)), {k, 1, Infinity}])) + ((-1)^m*Pi*z^(2 + 4*m))/(4^(2*(1 + m))*(1 + 4*m)!*(1 + Inactive[ContinuedFractionK][z^4/(64*k*(1 + 2*k)*(k + 2*m)*(1 + 2*k + 4*m)), 1 - z^4/(64*k*(1 + 2*k)*(k + 2*m)*(1 + 2*k + 4*m)), {k, 1, Infinity}])) - ((-1)^m*2^(-1 - 4*m)*z^(4*m)*(EulerGamma - PolyGamma[0, 1 + 4*m]))/((4*m)!*(1 + Inactive[ContinuedFractionK][(z^4*(PolyGamma[0, 1 + 2*k] + PolyGamma[0, 1 + 2*k + 4*m]))/(64*k*(-1 + 2*k)*(k + 2*m)*(-1 + 2*k + 4*m)*(PolyGamma[0, -1 + 2*k] + PolyGamma[0, -1 + 2*k + 4*m])), 1 - (z^4*(PolyGamma[0, 1 + 2*k] + PolyGamma[0, 1 + 2*k + 4*m]))/(64*k*(-1 + 2*k)*(k + 2*m)*(-1 + 2*k + 4*m)*(PolyGamma[0, -1 + 2*k] + PolyGamma[0, -1 + 2*k + 4*m])), {k, 1, Infinity}])), Element[m, Integers] && Element[z, Complexes] && m > 0]

(* {"KelvinKer2", 5}*)
ConditionalExpression[KelvinKer[2 + 4*m, z] == ((-1)^m*2^(-1 + 4*m)*(4*m)!)/(z^(4*m)*(1 + Inactive[ContinuedFractionK][z^4/(64*k*(1 + 2*k)*(-1 + 2*k - 4*m)*(-1 + k - 2*m)), 1 - z^4/(64*k*(1 + 2*k)*(-1 + 2*k - 4*m)*(-1 + k - 2*m)), {k, 1, 2*m}])) - ((-1)^m*Pi*z^(2 + 4*m))/(2^(4*(1 + m))*(2*(1 + 2*m))!*(1 + Inactive[ContinuedFractionK][z^4/(64*k*(-1 + 2*k)*(1 + k + 2*m)*(1 + 2*k + 4*m)), 1 - z^4/(64*k*(-1 + 2*k)*(1 + k + 2*m)*(1 + 2*k + 4*m)), {k, 1, Infinity}])) - ((-1)^m*z^(4 + 4*m)*Log[z/2])/(2^(4*(1 + m))*(3 + 4*m)!*(1 + Inactive[ContinuedFractionK][z^4/(64*k*(1 + 2*k)*(1 + k + 2*m)*(3 + 2*k + 4*m)), 1 - z^4/(64*k*(1 + 2*k)*(1 + k + 2*m)*(3 + 2*k + 4*m)), {k, 1, Infinity}])) - ((-1)^m*2^(-5 - 4*m)*z^(4 + 4*m)*(-1 + EulerGamma - PolyGamma[0, 2*(2 + 2*m)]))/((3 + 4*m)!*(1 + Inactive[ContinuedFractionK][(z^4*(PolyGamma[0, 2 + 2*k] + PolyGamma[0, 2*(2 + k + 2*m)]))/(64*k*(1 + 2*k)*(1 + k + 2*m)*(3 + 2*k + 4*m)*(PolyGamma[0, 2*k] + PolyGamma[0, 2*(1 + k + 2*m)])), 1 - (z^4*(PolyGamma[0, 2 + 2*k] + PolyGamma[0, 2*(2 + k + 2*m)]))/(64*k*(1 + 2*k)*(1 + k + 2*m)*(3 + 2*k + 4*m)*(PolyGamma[0, 2*k] + PolyGamma[0, 2*(1 + k + 2*m)])), {k, 1, Infinity}])), Element[m, Integers] && Element[z, Complexes] && m >= 0]

(* {"LaguerreL", 1}*)
ConditionalExpression[LaguerreL[\[Nu], z] == (1 + Inactive[ContinuedFractionK][(z*(1 - k + \[Nu]))/k^2, 1 - (z*(1 - k + \[Nu]))/k^2, {k, 1, Infinity}])^(-1), Element[\[Nu] | z, Complexes]]

(* {"LaguerreL3", 1}*)
ConditionalExpression[LaguerreL[\[Nu], \[Lambda], z] == Gamma[1 + \[Lambda] + \[Nu]]/(Gamma[1 + \[Lambda]]*Gamma[1 + \[Nu]]*(1 + Inactive[ContinuedFractionK][(z*(1 - k + \[Nu]))/(k*(k + \[Lambda])), 1 - (z*(1 - k + \[Nu]))/(k*(k + \[Lambda])), {k, 1, Infinity}])), Element[\[Nu] | \[Lambda] | z, Complexes]]

(* {"LegendreP", 1}*)
ConditionalExpression[LegendreP[\[Nu], 1 - 2*z] == (1 + Inactive[ContinuedFractionK][(z*(k - k^2 + \[Nu] + \[Nu]^2))/k^2, 1 - (z*(k - k^2 + \[Nu] + \[Nu]^2))/k^2, {k, 1, Infinity}])^(-1), Element[\[Nu] | z, Complexes] && Abs[z] < 1]

(* {"LegendreP2", 1}*)
ConditionalExpression[LegendreP[\[Nu], \[Mu], 2, 1 - 2*z] == (1 - z)^(\[Mu]/2)/(z^(\[Mu]/2)*Gamma[1 - \[Mu]]*(1 + Inactive[ContinuedFractionK][(z*(k - k^2 + \[Nu] + \[Nu]^2))/(k*(k - \[Mu])), 1 - (z*(k - k^2 + \[Nu] + \[Nu]^2))/(k*(k - \[Mu])), {k, 1, Infinity}])), Element[\[Nu] | \[Mu] | z, Complexes] && Abs[z] < 1]

(* {"LegendreP2Ratio", 1}*)
ConditionalExpression[LegendreP[\[Nu], \[Mu], 2, z]/LegendreP[\[Nu], -1 + \[Mu], 2, z] == (2*(z*(1 - \[Mu]) + Inactive[ContinuedFractionK][-((-1 + z^2)*(k - \[Mu] - \[Nu])*(1 + k - \[Mu] + \[Nu]))/4, z*(1 + k - \[Mu]), {k, 1, Infinity}]))/Sqrt[1 - z^2], Element[\[Nu] | \[Mu] | z, Complexes] && Abs[1 - z] < 1]

(* {"LegendreP2Ratio", 2}*)
ConditionalExpression[LegendreP[\[Nu], m, 2, z]/LegendreP[\[Nu], -1 + m, 2, z] == Inactive[ContinuedFractionK][(1 - z^2)*(-2 + k + m - \[Nu])*(-1 + k + m + \[Nu]), 2*(-1 + k + m)*z, {k, 1, Infinity}]/Sqrt[1 - z^2], Element[m, Integers] && Element[\[Nu] | z, Complexes] && m >= 0 && Abs[1 - z] < 1]

(* {"LegendreP2Ratio", 3}*)
ConditionalExpression[LegendreP[\[Nu], \[Mu], 2, z]/LegendreP[\[Nu], -1 + \[Mu], 2, z] == (2*z*(1 - \[Mu]))/Sqrt[1 - z^2] + Inactive[ContinuedFractionK][(k - \[Mu] - \[Nu])*(1 + k - \[Mu] + \[Nu]), (2*z*(1 + k - \[Mu]))/Sqrt[1 - z^2], {k, 1, Infinity}], Element[\[Nu] | \[Mu] | z, Complexes]]

(* {"LegendreP2Ratio", 4}*)
ConditionalExpression[LegendreP[\[Nu], m, 2, z]/LegendreP[\[Nu], -1 + m, 2, z] == -((Sqrt[-1 + z]*Inactive[ContinuedFractionK][(1 - k - m - \[Nu])*(-2 + k + m - \[Nu]), (-2*(-1 + k + m)*z)/Sqrt[-1 + z^2], {k, 1, Infinity}])/Sqrt[1 - z]), Element[m, Integers] && Element[\[Nu] | z, Complexes] && m >= 0 && Abs[1 - z] < 1]

(* {"LegendreP3", 1}*)
ConditionalExpression[LegendreP[\[Nu], \[Mu], 3, 1 - 2*z] == (1 - z)^(\[Mu]/2)/((-z)^(\[Mu]/2)*Gamma[1 - \[Mu]]*(1 + Inactive[ContinuedFractionK][(z*(k - k^2 + \[Nu] + \[Nu]^2))/(k*(k - \[Mu])), 1 - (z*(k - k^2 + \[Nu] + \[Nu]^2))/(k*(k - \[Mu])), {k, 1, Infinity}])), Element[\[Nu] | \[Mu] | z, Complexes] && Abs[z] < 1]

(* {"LegendreP3Ratio", 1}*)
ConditionalExpression[LegendreP[\[Nu], \[Mu], 3, z]/LegendreP[\[Nu], -1 + \[Mu], 3, z] == (2*(z*(1 - \[Mu]) + Inactive[ContinuedFractionK][-((-1 + z^2)*(k - \[Mu] - \[Nu])*(1 + k - \[Mu] + \[Nu]))/4, z*(1 + k - \[Mu]), {k, 1, Infinity}]))/(Sqrt[-1 + z]*Sqrt[1 + z]), Element[\[Nu] | \[Mu] | z, Complexes] && Abs[1 - z] < 1]

(* {"LegendreP3Ratio", 2}*)
ConditionalExpression[LegendreP[\[Nu], m, 3, z]/LegendreP[\[Nu], -1 + m, 3, z] == Inactive[ContinuedFractionK][(1 - z^2)*(-2 + k + m - \[Nu])*(-1 + k + m + \[Nu]), 2*(-1 + k + m)*z, {k, 1, Infinity}]/(Sqrt[-1 + z]*Sqrt[1 + z]), Element[m, Integers] && Element[\[Nu] | z, Complexes] && m >= 0 && Abs[1 - z] < 1]

(* {"LegendreP3Ratio", 3}*)
ConditionalExpression[LegendreP[\[Nu], \[Mu], 3, z]/LegendreP[\[Nu], -1 + \[Mu], 3, z] == (Sqrt[1 - z]*((2*z*(1 - \[Mu]))/Sqrt[1 - z^2] + Inactive[ContinuedFractionK][(k - \[Mu] - \[Nu])*(1 + k - \[Mu] + \[Nu]), (2*z*(1 + k - \[Mu]))/Sqrt[1 - z^2], {k, 1, Infinity}]))/Sqrt[-1 + z], Element[\[Nu] | \[Mu] | z, Complexes] && Abs[1 - z] < 1]

(* {"LegendreP3Ratio", 4}*)
ConditionalExpression[LegendreP[\[Nu], m, 3, z]/LegendreP[\[Nu], -1 + m, 3, z] == -Inactive[ContinuedFractionK][(1 - k - m - \[Nu])*(-2 + k + m - \[Nu]), (-2*(-1 + k + m)*z)/Sqrt[-1 + z^2], {k, 1, Infinity}], Element[m, Integers] && Element[\[Nu] | z, Complexes] && m >= 0 && Abs[1 - z] < 1]

(* {"LegendreQ", 1}*)
ConditionalExpression[LegendreQ[\[Nu], 1 - 2*z] == ((Log[1 - z] - Log[z])/2 - PolyGamma[0, 1 + \[Nu]])/(1 + Inactive[ContinuedFractionK][(z*(k - k^2 + \[Nu] + \[Nu]^2))/k^2, 1 - (z*(k - k^2 + \[Nu] + \[Nu]^2))/k^2, {k, 1, Infinity}]) - EulerGamma/(1 + Inactive[ContinuedFractionK][-((z*(-1 + k - \[Nu])*(k + \[Nu])*PolyGamma[0, 1 + k])/(k^2*PolyGamma[0, k])), 1 + (z*(-1 + k - \[Nu])*(k + \[Nu])*PolyGamma[0, 1 + k])/(k^2*PolyGamma[0, k]), {k, 1, Infinity}]), Element[\[Nu] | z, Complexes] && Abs[z] < 1]

(* {"LegendreQ2", 1}*)
ConditionalExpression[LegendreQ[\[Nu], \[Mu], 2, 1 - 2*z] == (Pi*Csc[Pi*\[Mu]]*(((1 - z)^(\[Mu]/2)*Cos[Pi*\[Mu]])/(z^(\[Mu]/2)*Gamma[1 - \[Mu]]*(1 + Inactive[ContinuedFractionK][(z*(k - k^2 + \[Nu] + \[Nu]^2))/(k*(k - \[Mu])), 1 - (z*(k - k^2 + \[Nu] + \[Nu]^2))/(k*(k - \[Mu])), {k, 1, Infinity}])) - (z^(\[Mu]/2)*Pochhammer[1 - \[Mu] + \[Nu], 2*\[Mu]])/((1 - z)^(\[Mu]/2)*Gamma[1 + \[Mu]]*(1 + Inactive[ContinuedFractionK][(z*(k - k^2 + \[Nu] + \[Nu]^2))/(k*(k + \[Mu])), 1 - (z*(k - k^2 + \[Nu] + \[Nu]^2))/(k*(k + \[Mu])), {k, 1, Infinity}]))))/2, Element[\[Nu] | \[Mu] | z, Complexes] && Abs[z] < 1]

(* {"LegendreQ2", 2}*)
ConditionalExpression[LegendreQ[\[Nu], 0, 2, 1 - 2*z] == ((Log[1 - z] - Log[z])/2 - PolyGamma[0, 1 + \[Nu]])/(1 + Inactive[ContinuedFractionK][(z*(k - k^2 + \[Nu] + \[Nu]^2))/k^2, 1 - (z*(k - k^2 + \[Nu] + \[Nu]^2))/k^2, {k, 1, Infinity}]) - EulerGamma/(1 + Inactive[ContinuedFractionK][-((z*(-1 + k - \[Nu])*(k + \[Nu])*PolyGamma[0, 1 + k])/(k^2*PolyGamma[0, k])), 1 + (z*(-1 + k - \[Nu])*(k + \[Nu])*PolyGamma[0, 1 + k])/(k^2*PolyGamma[0, k]), {k, 1, Infinity}]), Element[\[Nu] | z, Complexes] && Abs[z] < 1]

(* {"LegendreQ2", 3}*)
ConditionalExpression[LegendreQ[\[Nu], m, 2, 1 - 2*z] == (((-1)^m*(1 - z)^(m/2)*(-1 + m)!)/(z^(m/2)*(1 + Inactive[ContinuedFractionK][(z*(-1 + k - \[Nu])*(k + \[Nu]))/(k*(-k + m)), 1 - (z*(-1 + k - \[Nu])*(k + \[Nu]))/(k*(-k + m)), {k, 1, -1 + m}])) + (((1 - z)*z)^(m/2)*(Log[1 - z] - Log[z])*Pochhammer[-\[Nu], m]*Pochhammer[1 + \[Nu], m])/(2*m!*(1 + Inactive[ContinuedFractionK][-((z*(-1 + k + m - \[Nu])*(k + m + \[Nu]))/(k*(k + m))), 1 + (z*(-1 + k + m - \[Nu])*(k + m + \[Nu]))/(k*(k + m)), {k, 1, Infinity}])) + ((-1)^m*z^(m/2)*Gamma[1 + m + \[Nu]]*(Log[1 - z] - Log[z]))/(2*(1 - z)^(m/2)*m!*Gamma[1 - m + \[Nu]]*(1 + Inactive[ContinuedFractionK][(z*(k - k^2 + \[Nu] + \[Nu]^2))/(k*(k + m)), 1 - (z*(k - k^2 + \[Nu] + \[Nu]^2))/(k*(k + m)), {k, 1, Infinity}])) - (EulerGamma*((1 - z)*z)^(m/2)*Pochhammer[-\[Nu], m]*Pochhammer[1 + \[Nu], m])/(m!*(1 + Inactive[ContinuedFractionK][-((z*(-1 + k + m - \[Nu])*(k + m + \[Nu])*PolyGamma[0, 1 + k])/(k*(k + m)*PolyGamma[0, k])), 1 + (z*(-1 + k + m - \[Nu])*(k + m + \[Nu])*PolyGamma[0, 1 + k])/(k*(k + m)*PolyGamma[0, k]), {k, 1, Infinity}])) - ((-1)^m*z^(m/2)*Gamma[1 + m + \[Nu]]*(-PolyGamma[0, 1 + m] + PolyGamma[0, 1 - m + \[Nu]] + PolyGamma[0, 1 + m + \[Nu]]))/((1 - z)^(m/2)*m!*Gamma[1 - m + \[Nu]]*(1 + Inactive[ContinuedFractionK][(z*(-1 + k - \[Nu])*(k + \[Nu])*(-PolyGamma[0, 1 + k + m] + PolyGamma[0, 1 - m + \[Nu]] + PolyGamma[0, 1 + m + \[Nu]]))/(k*(k + m)*(PolyGamma[0, k + m] - PolyGamma[0, 1 - m + \[Nu]] - PolyGamma[0, 1 + m + \[Nu]])), 1 - (z*(-1 + k - \[Nu])*(k + \[Nu])*(-PolyGamma[0, 1 + k + m] + PolyGamma[0, 1 - m + \[Nu]] + PolyGamma[0, 1 + m + \[Nu]]))/(k*(k + m)*(PolyGamma[0, k + m] - PolyGamma[0, 1 - m + \[Nu]] - PolyGamma[0, 1 + m + \[Nu]])), {k, 1, Infinity}])))/2, Element[m, Integers] && Element[\[Nu] | z, Complexes] && m > 0 && Abs[z] < 1]

(* {"LegendreQ3", 1}*)
ConditionalExpression[LegendreQ[\[Nu], \[Mu], 3, 1 - 2*z] == (E^(I*Pi*\[Mu])*Pi*Csc[Pi*\[Mu]]*((1 - z)^(\[Mu]/2)/((-z)^(\[Mu]/2)*Gamma[1 - \[Mu]]*(1 + Inactive[ContinuedFractionK][(z*(k - k^2 + \[Nu] + \[Nu]^2))/(k*(k - \[Mu])), 1 - (z*(k - k^2 + \[Nu] + \[Nu]^2))/(k*(k - \[Mu])), {k, 1, Infinity}])) - ((-z)^(\[Mu]/2)*Pochhammer[1 - \[Mu] + \[Nu], 2*\[Mu]])/((1 - z)^(\[Mu]/2)*Gamma[1 + \[Mu]]*(1 + Inactive[ContinuedFractionK][(z*(k - k^2 + \[Nu] + \[Nu]^2))/(k*(k + \[Mu])), 1 - (z*(k - k^2 + \[Nu] + \[Nu]^2))/(k*(k + \[Mu])), {k, 1, Infinity}]))))/2, Element[\[Nu] | \[Mu] | z, Complexes] && Abs[z] < 1]

(* {"LegendreQ3", 2}*)
ConditionalExpression[LegendreQ[\[Nu], 0, 3, 1 - 2*z] == (Sqrt[-z]*(Pi + (Sqrt[-z]*ArcTanh[1 - 2*z])/Sqrt[z])*Gamma[-\[Nu]]*Gamma[1 + \[Nu]]*Sin[Pi*\[Nu]])/(2*Pi*Sqrt[z]*(1 + Inactive[ContinuedFractionK][-((z*(-1 + k - \[Nu])*(k + \[Nu]))/k^2), 1 + (z*(-1 + k - \[Nu])*(k + \[Nu]))/k^2, {k, 1, Infinity}])) + (Log[1 - z] - Log[z])/(4*(1 + Inactive[ContinuedFractionK][(z*(k - k^2 + \[Nu] + \[Nu]^2))/k^2, 1 - (z*(k - k^2 + \[Nu] + \[Nu]^2))/k^2, {k, 1, Infinity}])) - EulerGamma/(2*(1 + Inactive[ContinuedFractionK][-((z*(-1 + k - \[Nu])*(k + \[Nu])*PolyGamma[0, 1 + k])/(k^2*PolyGamma[0, k])), 1 + (z*(-1 + k - \[Nu])*(k + \[Nu])*PolyGamma[0, 1 + k])/(k^2*PolyGamma[0, k]), {k, 1, Infinity}])) - (EulerGamma/2 + PolyGamma[0, 1 + \[Nu]])/(1 + Inactive[ContinuedFractionK][(z*(-1 + k - \[Nu])*(k + \[Nu])*(-PolyGamma[0, 1 + k] + 2*PolyGamma[0, 1 + \[Nu]]))/(k^2*(PolyGamma[0, k] - 2*PolyGamma[0, 1 + \[Nu]])), 1 - (z*(-1 + k - \[Nu])*(k + \[Nu])*(-PolyGamma[0, 1 + k] + 2*PolyGamma[0, 1 + \[Nu]]))/(k^2*(PolyGamma[0, k] - 2*PolyGamma[0, 1 + \[Nu]])), {k, 1, Infinity}]), Element[\[Nu] | z, Complexes] && Abs[z] < 1]

(* {"LegendreQ3", 3}*)
ConditionalExpression[LegendreQ[\[Nu], m, 3, 1 - 2*z] == (-z)^((1 - m)/2)*z^((-1 + m)/2)*(((1 - z)^(m/2)*z^(m/2)*(Pi + (Sqrt[-z]*ArcTanh[1 - 2*z])/Sqrt[z])*Gamma[m - \[Nu]]*Gamma[1 + m + \[Nu]]*Sin[Pi*\[Nu]])/(2*Pi*m!*(1 + Inactive[ContinuedFractionK][-((z*(-1 + k + m - \[Nu])*(k + m + \[Nu]))/(k*(k + m))), 1 + (z*(-1 + k + m - \[Nu])*(k + m + \[Nu]))/(k*(k + m)), {k, 1, Infinity}])) + (Sqrt[z]*(((-1)^m*(1 - z)^(m/2)*(-1 + m)!)/(z^(m/2)*(1 + Inactive[ContinuedFractionK][(z*(-1 + k - \[Nu])*(k + \[Nu]))/(k*(-k + m)), 1 - (z*(-1 + k - \[Nu])*(k + \[Nu]))/(k*(-k + m)), {k, 1, -1 + m}])) + ((-1)^m*z^(m/2)*Gamma[1 + m + \[Nu]]*(Log[1 - z] - Log[z]))/(2*(1 - z)^(m/2)*m!*Gamma[1 - m + \[Nu]]*(1 + Inactive[ContinuedFractionK][(z*(k - k^2 + \[Nu] + \[Nu]^2))/(k*(k + m)), 1 - (z*(k - k^2 + \[Nu] + \[Nu]^2))/(k*(k + m)), {k, 1, Infinity}])) - (EulerGamma*(1 - z)^(m/2)*z^(m/2)*Pochhammer[-\[Nu], m]*Pochhammer[1 + \[Nu], m])/(m!*(1 + Inactive[ContinuedFractionK][-((z*(-1 + k + m - \[Nu])*(k + m + \[Nu])*PolyGamma[0, 1 + k])/(k*(k + m)*PolyGamma[0, k])), 1 + (z*(-1 + k + m - \[Nu])*(k + m + \[Nu])*PolyGamma[0, 1 + k])/(k*(k + m)*PolyGamma[0, k]), {k, 1, Infinity}])) - ((-1)^m*z^(m/2)*Gamma[1 + m + \[Nu]]*(-PolyGamma[0, 1 + m] + PolyGamma[0, 1 - m + \[Nu]] + PolyGamma[0, 1 + m + \[Nu]]))/((1 - z)^(m/2)*m!*Gamma[1 - m + \[Nu]]*(1 + Inactive[ContinuedFractionK][(z*(-1 + k - \[Nu])*(k + \[Nu])*(-PolyGamma[0, 1 + k + m] + PolyGamma[0, 1 - m + \[Nu]] + PolyGamma[0, 1 + m + \[Nu]]))/(k*(k + m)*(PolyGamma[0, k + m] - PolyGamma[0, 1 - m + \[Nu]] - PolyGamma[0, 1 + m + \[Nu]])), 1 - (z*(-1 + k - \[Nu])*(k + \[Nu])*(-PolyGamma[0, 1 + k + m] + PolyGamma[0, 1 - m + \[Nu]] + PolyGamma[0, 1 + m + \[Nu]]))/(k*(k + m)*(PolyGamma[0, k + m] - PolyGamma[0, 1 - m + \[Nu]] - PolyGamma[0, 1 + m + \[Nu]])), {k, 1, Infinity}]))))/(2*Sqrt[-z])), Element[m, Integers] && Element[\[Nu] | z, Complexes] && m > 0 && Abs[z] < 1]

(* {"LegendreQ3Ratio", 1}*)
ConditionalExpression[LegendreQ[\[Nu], \[Mu], 3, z]/LegendreQ[1 + \[Nu], \[Mu], 3, z] == (z*(3 + 2*\[Nu])*(1 + Inactive[ContinuedFractionK][-((k^2 - \[Mu]^2 + 2*k*(1 + \[Nu]) + (1 + \[Nu])^2)/(z^2*(1 + 2*k + 2*\[Nu])*(3 + 2*k + 2*\[Nu]))), 1, {k, 1, Infinity}]))/(1 + \[Mu] + \[Nu]), Element[\[Nu] | \[Mu] | z, Complexes] && Abs[z] > 1]

(* {"LegendreQ3Ratio", 2}*)
ConditionalExpression[LegendreQ[\[Nu], \[Mu], 3, z]/LegendreQ[1 + \[Nu], \[Mu], 3, z] == (1 + z^2*(3 + 2*\[Nu]) + 2*z^2*Inactive[ContinuedFractionK][-((1 + 2*k - \[Mu] + \[Nu])*(1 + 2*k + \[Mu] + \[Nu]))/(4*z^2), 3/2 + k*(1 + z^(-2)) + 1/(2*z^2) + \[Nu], {k, 1, Infinity}])/(z*(1 + \[Mu] + \[Nu])), Element[\[Nu] | \[Mu] | z, Complexes] && Abs[z] > 1]

(* {"LegendreQ3Ratio", 3}*)
ConditionalExpression[LegendreQ[\[Nu], \[Mu], 3, z]/LegendreQ[1 + \[Nu], \[Mu], 3, z] == (1 + z^2*(3 + 2*\[Nu]) + 2*Inactive[ContinuedFractionK][-(z^2*(1 + 2*k - \[Mu] + \[Nu])*(1 + 2*k + \[Mu] + \[Nu]))/4, 1/2 + k*(1 + z^2) + z^2*(3/2 + \[Nu]), {k, 1, Infinity}])/(z*(1 + \[Mu] + \[Nu])), Element[\[Nu] | \[Mu] | z, Complexes] && Abs[z] > 1]

(* {"LegendreQ3Ratio", 4}*)
ConditionalExpression[LegendreQ[\[Nu], \[Mu], 3, z]/LegendreQ[1 + \[Nu], 1 + \[Mu], 3, z] == -((-5 - 2*\[Mu] - 2*\[Nu] + z^2*(3 + 2*\[Nu]) + 2*z^2*Inactive[ContinuedFractionK][((-1 + z^2)*(1 + 2*k + \[Mu] + \[Nu])*(2 + 2*k + \[Mu] + \[Nu]))/(4*z^4), 3/2 + k + \[Nu] - (5 + 4*k + 2*\[Mu] + 2*\[Nu])/(2*z^2), {k, 1, Infinity}])/(Sqrt[-1 + z]*Sqrt[1 + z]*(1 + \[Mu] + \[Nu])*(2 + \[Mu] + \[Nu]))), Element[\[Nu] | \[Mu] | z, Complexes] && Abs[z] > 1]

(* {"LerchPhi", 1}*)
ConditionalExpression[LerchPhi[z, s, a] == 1/((a^2)^(s/2)*(1 + Inactive[ContinuedFractionK][-((((-1 + a + k)^2)^(s/2)*z)/((a + k)^2)^(s/2)), 1 + (((-1 + a + k)^2)^(s/2)*z)/((a + k)^2)^(s/2), {k, 1, Infinity}])), Element[z | s | a, Complexes] && (Abs[z] < 1 || (Abs[z] == 1 && Re[s] > 1)) &&  !(Element[a, Integers] && -a >= 0)]

(* {"Linear", 1}*)
ConditionalExpression[a == 1 + 2*a + Inactive[ContinuedFractionK][-(a + k)^2, 1 + 2*a + 2*k, {k, 1, Infinity}], Element[a, Complexes]]

(* {"Linear", 2}*)
ConditionalExpression[a*z == (a*b*z)/(b - (1 + a)*z + Inactive[ContinuedFractionK][(a + k)*(b + k)*z, b + k - (1 + a + k)*z, {k, 1, Infinity}]), Element[a | b | z, Complexes] && Abs[z] < 1]

(* {"Linear", 3}*)
ConditionalExpression[m + z == Inactive[ContinuedFractionK][k*z, k - m - z, {k, 1, Infinity}], Element[m, Integers] && Element[z, Complexes] && m >= 0]

(* {"LinearAlternating/AlternatingConstant", 1}*)
ConditionalExpression[-(((b + \[Beta])^2*(d + e - \[Delta] - \[Epsilon]))/(b^3 + 3*b*d + 2*b*e + b^2*\[Beta] + 3*d*\[Beta] + 2*e*\[Beta] - b*\[Beta]^2 - \[Beta]^3 + b*\[Delta] + \[Beta]*\[Delta] - (b + \[Beta])*(b^2 + 2*d + e - \[Beta]^2 + 2*\[Delta] + \[Epsilon]) - ((b + \[Beta])*(3*d^3 - Sqrt[d^2/\[Delta]^2]*\[Delta]^2*(b^2 + 2*e - \[Beta]^2 + \[Delta]) + d^2*(2*e + Sqrt[d^2/\[Delta]^2]*(b^2 - \[Beta]^2 + \[Delta])) + d*\[Delta]*(-3*\[Delta] + 2*(-1 + Sqrt[d^2/\[Delta]^2])*\[Epsilon]))*Hypergeometric2F1[(d^2*\[Beta]^2 + 2*d*e*\[Beta]^2 - \[Beta]^2*\[Delta]^2 - 2*\[Beta]^2*\[Delta]*\[Epsilon] - Sqrt[(b + \[Beta])^4*(d^2 + 2*e*\[Delta] - \[Delta]^2 - 2*d*\[Epsilon])^2] + b^2*(d^2 + 2*d*e - \[Delta]*(\[Delta] + 2*\[Epsilon])) + 2*b*\[Beta]*(d^2 + 2*d*e - \[Delta]*(\[Delta] + 2*\[Epsilon])))/(4*(b + \[Beta])^2*(d^2 - \[Delta]^2)), (d^2*\[Beta]^2 + 2*d*e*\[Beta]^2 - \[Beta]^2*\[Delta]^2 - 2*\[Beta]^2*\[Delta]*\[Epsilon] + Sqrt[(b + \[Beta])^4*(d^2 + 2*e*\[Delta] - \[Delta]^2 - 2*d*\[Epsilon])^2] + b^2*(d^2 + 2*d*e - \[Delta]*(\[Delta] + 2*\[Epsilon])) + 2*b*\[Beta]*(d^2 + 2*d*e - \[Delta]*(\[Delta] + 2*\[Epsilon])))/(4*(b + \[Beta])^2*(d^2 - \[Delta]^2)), (3*d^3 - Sqrt[d^2/\[Delta]^2]*\[Delta]^2*(b^2 + 2*e - \[Beta]^2 + \[Delta]) + d^2*(2*e + Sqrt[d^2/\[Delta]^2]*(b^2 - \[Beta]^2 + \[Delta])) + d*\[Delta]*(-3*\[Delta] + 2*(-1 + Sqrt[d^2/\[Delta]^2])*\[Epsilon]))/(4*(d^3 - d*\[Delta]^2)), (1 - Sqrt[d^2/\[Delta]^2])/2])/(Sqrt[d^2/\[Delta]^2]*(d^2 - \[Delta]^2)*Hypergeometric2F1[(5*d^2*\[Beta]^2 + 2*d*e*\[Beta]^2 - 5*\[Beta]^2*\[Delta]^2 - 2*\[Beta]^2*\[Delta]*\[Epsilon] - Sqrt[(b + \[Beta])^4*(d^2 + 2*e*\[Delta] - \[Delta]^2 - 2*d*\[Epsilon])^2] + b^2*(5*d^2 + 2*d*e - \[Delta]*(5*\[Delta] + 2*\[Epsilon])) + 2*b*\[Beta]*(5*d^2 + 2*d*e - \[Delta]*(5*\[Delta] + 2*\[Epsilon])))/(4*(b + \[Beta])^2*(d^2 - \[Delta]^2)), (5*d^2*\[Beta]^2 + 2*d*e*\[Beta]^2 - 5*\[Beta]^2*\[Delta]^2 - 2*\[Beta]^2*\[Delta]*\[Epsilon] + Sqrt[(b + \[Beta])^4*(d^2 + 2*e*\[Delta] - \[Delta]^2 - 2*d*\[Epsilon])^2] + b^2*(5*d^2 + 2*d*e - \[Delta]*(5*\[Delta] + 2*\[Epsilon])) + 2*b*\[Beta]*(5*d^2 + 2*d*e - \[Delta]*(5*\[Delta] + 2*\[Epsilon])))/(4*(b + \[Beta])^2*(d^2 - \[Delta]^2)), (7*d^3 - Sqrt[d^2/\[Delta]^2]*\[Delta]^2*(b^2 + 2*e - \[Beta]^2 + \[Delta]) + d^2*(2*e + Sqrt[d^2/\[Delta]^2]*(b^2 - \[Beta]^2 + \[Delta])) + d*\[Delta]*(-7*\[Delta] + 2*(-1 + Sqrt[d^2/\[Delta]^2])*\[Epsilon]))/(4*(d^3 - d*\[Delta]^2)), (1 - Sqrt[d^2/\[Delta]^2])/2]))) == Inactive[ContinuedFractionK][e + d*k + (-1)^k*(k*\[Delta] + \[Epsilon]), b + (-1)^k*\[Beta], {k, 1, Infinity}], Element[b | \[Beta] | d | e | \[Delta] | \[Epsilon], Complexes]]

(* {"LinearAlternating/AlternatingConstant", 2}*)
ConditionalExpression[((b + \[Beta])^2*(d - \[Delta] - \[Epsilon]))/(-b^3 - 3*b*d - b^2*\[Beta] - 3*d*\[Beta] + b*\[Beta]^2 + \[Beta]^3 - b*\[Delta] - \[Beta]*\[Delta] + (b + \[Beta])*(b^2 + 2*d - \[Beta]^2 + 2*\[Delta] + \[Epsilon]) + ((b + \[Beta])*(3*d^3 + d^2*Sqrt[d^2/\[Delta]^2]*(b^2 - \[Beta]^2 + \[Delta]) - Sqrt[d^2/\[Delta]^2]*\[Delta]^2*(b^2 - \[Beta]^2 + \[Delta]) + d*\[Delta]*(-3*\[Delta] + 2*(-1 + Sqrt[d^2/\[Delta]^2])*\[Epsilon]))*Hypergeometric2F1[(d^2*\[Beta]^2 - \[Beta]^2*\[Delta]^2 - 2*\[Beta]^2*\[Delta]*\[Epsilon] - Sqrt[(b + \[Beta])^4*(-d^2 + \[Delta]^2 + 2*d*\[Epsilon])^2] + b^2*(d^2 - \[Delta]*(\[Delta] + 2*\[Epsilon])) + 2*b*\[Beta]*(d^2 - \[Delta]*(\[Delta] + 2*\[Epsilon])))/(4*(b + \[Beta])^2*(d^2 - \[Delta]^2)), (d^2*\[Beta]^2 - \[Beta]^2*\[Delta]^2 - 2*\[Beta]^2*\[Delta]*\[Epsilon] + Sqrt[(b + \[Beta])^4*(-d^2 + \[Delta]^2 + 2*d*\[Epsilon])^2] + b^2*(d^2 - \[Delta]*(\[Delta] + 2*\[Epsilon])) + 2*b*\[Beta]*(d^2 - \[Delta]*(\[Delta] + 2*\[Epsilon])))/(4*(b + \[Beta])^2*(d^2 - \[Delta]^2)), (3*d^3 + d^2*Sqrt[d^2/\[Delta]^2]*(b^2 - \[Beta]^2 + \[Delta]) - Sqrt[d^2/\[Delta]^2]*\[Delta]^2*(b^2 - \[Beta]^2 + \[Delta]) + d*\[Delta]*(-3*\[Delta] + 2*(-1 + Sqrt[d^2/\[Delta]^2])*\[Epsilon]))/(4*(d^3 - d*\[Delta]^2)), (1 - Sqrt[d^2/\[Delta]^2])/2])/(Sqrt[d^2/\[Delta]^2]*(d^2 - \[Delta]^2)*Hypergeometric2F1[(5*d^2*\[Beta]^2 - 5*\[Beta]^2*\[Delta]^2 - 2*\[Beta]^2*\[Delta]*\[Epsilon] - Sqrt[(b + \[Beta])^4*(-d^2 + \[Delta]^2 + 2*d*\[Epsilon])^2] + b^2*(5*d^2 - \[Delta]*(5*\[Delta] + 2*\[Epsilon])) + 2*b*\[Beta]*(5*d^2 - \[Delta]*(5*\[Delta] + 2*\[Epsilon])))/(4*(b + \[Beta])^2*(d^2 - \[Delta]^2)), (5*d^2*\[Beta]^2 - 5*\[Beta]^2*\[Delta]^2 - 2*\[Beta]^2*\[Delta]*\[Epsilon] + Sqrt[(b + \[Beta])^4*(-d^2 + \[Delta]^2 + 2*d*\[Epsilon])^2] + b^2*(5*d^2 - \[Delta]*(5*\[Delta] + 2*\[Epsilon])) + 2*b*\[Beta]*(5*d^2 - \[Delta]*(5*\[Delta] + 2*\[Epsilon])))/(4*(b + \[Beta])^2*(d^2 - \[Delta]^2)), (7*d^3 + d^2*Sqrt[d^2/\[Delta]^2]*(b^2 - \[Beta]^2 + \[Delta]) - Sqrt[d^2/\[Delta]^2]*\[Delta]^2*(b^2 - \[Beta]^2 + \[Delta]) + d*\[Delta]*(-7*\[Delta] + 2*(-1 + Sqrt[d^2/\[Delta]^2])*\[Epsilon]))/(4*(d^3 - d*\[Delta]^2)), (1 - Sqrt[d^2/\[Delta]^2])/2])) == Inactive[ContinuedFractionK][d*k + (-1)^k*(k*\[Delta] + \[Epsilon]), b + (-1)^k*\[Beta], {k, 1, Infinity}], Element[b | \[Beta] | d | \[Delta] | \[Epsilon], Complexes]]

(* {"LinearAlternating/AlternatingConstant", 3}*)
ConditionalExpression[((b + \[Beta])^2*(e - \[Delta] - \[Epsilon]))/(-b^3 - 2*b*e - b^2*\[Beta] - 2*e*\[Beta] + b*\[Beta]^2 + \[Beta]^3 - b*\[Delta] - \[Beta]*\[Delta] + (b + \[Beta])*(b^2 + e - \[Beta]^2 + 2*\[Delta] + \[Epsilon]) + ((b + \[Beta])*(b^2*Sqrt[(b + \[Beta])^2*\[Delta]^2] - \[Beta]^2*Sqrt[(b + \[Beta])^2*\[Delta]^2] + Sqrt[(b + \[Beta])^2*\[Delta]^2]*(2*e + \[Delta]) + b*\[Delta]*(3*\[Delta] + 2*\[Epsilon]) + \[Beta]*\[Delta]*(3*\[Delta] + 2*\[Epsilon]))*Hypergeometric2F1[(-Sqrt[(b + \[Beta])^4*\[Delta]^2*(-2*e + \[Delta])^2] + b^2*\[Delta]*(\[Delta] + 2*\[Epsilon]) + 2*b*\[Beta]*\[Delta]*(\[Delta] + 2*\[Epsilon]) + \[Beta]^2*\[Delta]*(\[Delta] + 2*\[Epsilon]))/(4*(b + \[Beta])^2*\[Delta]^2), (Sqrt[(b + \[Beta])^4*\[Delta]^2*(-2*e + \[Delta])^2] + b^2*\[Delta]*(\[Delta] + 2*\[Epsilon]) + 2*b*\[Beta]*\[Delta]*(\[Delta] + 2*\[Epsilon]) + \[Beta]^2*\[Delta]*(\[Delta] + 2*\[Epsilon]))/(4*(b + \[Beta])^2*\[Delta]^2), (b^2*Sqrt[(b + \[Beta])^2*\[Delta]^2] - \[Beta]^2*Sqrt[(b + \[Beta])^2*\[Delta]^2] + Sqrt[(b + \[Beta])^2*\[Delta]^2]*(2*e + \[Delta]) + b*\[Delta]*(3*\[Delta] + 2*\[Epsilon]) + \[Beta]*\[Delta]*(3*\[Delta] + 2*\[Epsilon]))/(4*(b + \[Beta])*\[Delta]^2), 1/2])/(Sqrt[(b + \[Beta])^2*\[Delta]^2]*Hypergeometric2F1[(-Sqrt[(b + \[Beta])^4*\[Delta]^2*(-2*e + \[Delta])^2] + b^2*\[Delta]*(5*\[Delta] + 2*\[Epsilon]) + 2*b*\[Beta]*\[Delta]*(5*\[Delta] + 2*\[Epsilon]) + \[Beta]^2*\[Delta]*(5*\[Delta] + 2*\[Epsilon]))/(4*(b + \[Beta])^2*\[Delta]^2), (Sqrt[(b + \[Beta])^4*\[Delta]^2*(-2*e + \[Delta])^2] + b^2*\[Delta]*(5*\[Delta] + 2*\[Epsilon]) + 2*b*\[Beta]*\[Delta]*(5*\[Delta] + 2*\[Epsilon]) + \[Beta]^2*\[Delta]*(5*\[Delta] + 2*\[Epsilon]))/(4*(b + \[Beta])^2*\[Delta]^2), (b^2*Sqrt[(b + \[Beta])^2*\[Delta]^2] - \[Beta]^2*Sqrt[(b + \[Beta])^2*\[Delta]^2] + Sqrt[(b + \[Beta])^2*\[Delta]^2]*(2*e + \[Delta]) + b*\[Delta]*(7*\[Delta] + 2*\[Epsilon]) + \[Beta]*\[Delta]*(7*\[Delta] + 2*\[Epsilon]))/(4*(b + \[Beta])*\[Delta]^2), 1/2])) == Inactive[ContinuedFractionK][e + (-1)^k*(k*\[Delta] + \[Epsilon]), b + (-1)^k*\[Beta], {k, 1, Infinity}], Element[b | \[Beta] | e | \[Delta] | \[Epsilon], Complexes]]

(* {"LinearAlternating/AlternatingConstant", 4}*)
ConditionalExpression[((b + \[Beta])^2*(-\[Delta] - \[Epsilon]))/(-b^3 - b^2*\[Beta] + b*\[Beta]^2 + \[Beta]^3 - b*\[Delta] - \[Beta]*\[Delta] + (b + \[Beta])*(b^2 - \[Beta]^2 + 2*\[Delta] + \[Epsilon]) + ((b + \[Beta])*(b^2*Sqrt[(b + \[Beta])^2*\[Delta]^2] - \[Beta]^2*Sqrt[(b + \[Beta])^2*\[Delta]^2] + \[Delta]*Sqrt[(b + \[Beta])^2*\[Delta]^2] + b*\[Delta]*(3*\[Delta] + 2*\[Epsilon]) + \[Beta]*\[Delta]*(3*\[Delta] + 2*\[Epsilon]))*Hypergeometric2F1[(\[Beta]^2*\[Delta]^2 - Sqrt[(b + \[Beta])^4*\[Delta]^4] + 2*\[Beta]^2*\[Delta]*\[Epsilon] + b^2*\[Delta]*(\[Delta] + 2*\[Epsilon]) + 2*b*\[Beta]*\[Delta]*(\[Delta] + 2*\[Epsilon]))/(4*(b + \[Beta])^2*\[Delta]^2), (\[Beta]^2*\[Delta]^2 + Sqrt[(b + \[Beta])^4*\[Delta]^4] + 2*\[Beta]^2*\[Delta]*\[Epsilon] + b^2*\[Delta]*(\[Delta] + 2*\[Epsilon]) + 2*b*\[Beta]*\[Delta]*(\[Delta] + 2*\[Epsilon]))/(4*(b + \[Beta])^2*\[Delta]^2), (b^2*Sqrt[(b + \[Beta])^2*\[Delta]^2] - \[Beta]^2*Sqrt[(b + \[Beta])^2*\[Delta]^2] + \[Delta]*Sqrt[(b + \[Beta])^2*\[Delta]^2] + b*\[Delta]*(3*\[Delta] + 2*\[Epsilon]) + \[Beta]*\[Delta]*(3*\[Delta] + 2*\[Epsilon]))/(4*(b + \[Beta])*\[Delta]^2), 1/2])/(Sqrt[(b + \[Beta])^2*\[Delta]^2]*Hypergeometric2F1[(5*\[Beta]^2*\[Delta]^2 - Sqrt[(b + \[Beta])^4*\[Delta]^4] + 2*\[Beta]^2*\[Delta]*\[Epsilon] + b^2*\[Delta]*(5*\[Delta] + 2*\[Epsilon]) + 2*b*\[Beta]*\[Delta]*(5*\[Delta] + 2*\[Epsilon]))/(4*(b + \[Beta])^2*\[Delta]^2), (5*\[Beta]^2*\[Delta]^2 + Sqrt[(b + \[Beta])^4*\[Delta]^4] + 2*\[Beta]^2*\[Delta]*\[Epsilon] + b^2*\[Delta]*(5*\[Delta] + 2*\[Epsilon]) + 2*b*\[Beta]*\[Delta]*(5*\[Delta] + 2*\[Epsilon]))/(4*(b + \[Beta])^2*\[Delta]^2), (b^2*Sqrt[(b + \[Beta])^2*\[Delta]^2] - \[Beta]^2*Sqrt[(b + \[Beta])^2*\[Delta]^2] + \[Delta]*Sqrt[(b + \[Beta])^2*\[Delta]^2] + b*\[Delta]*(7*\[Delta] + 2*\[Epsilon]) + \[Beta]*\[Delta]*(7*\[Delta] + 2*\[Epsilon]))/(4*(b + \[Beta])*\[Delta]^2), 1/2])) == Inactive[ContinuedFractionK][(-1)^k*(k*\[Delta] + \[Epsilon]), b + (-1)^k*\[Beta], {k, 1, Infinity}], Element[b | \[Beta] | \[Delta] | \[Epsilon], Complexes]]

(* {"LinearAlternating/AlternatingConstant", 5}*)
ConditionalExpression[-(((b + \[Beta])^2*(d + e - \[Delta]))/(b^3 + 3*b*d + 2*b*e + b^2*\[Beta] + 3*d*\[Beta] + 2*e*\[Beta] - b*\[Beta]^2 - \[Beta]^3 + b*\[Delta] + \[Beta]*\[Delta] - (b + \[Beta])*(b^2 + 2*d + e - \[Beta]^2 + 2*\[Delta]) - ((b + \[Beta])*(3*d^3 - 3*d*\[Delta]^2 - Sqrt[d^2/\[Delta]^2]*\[Delta]^2*(b^2 + 2*e - \[Beta]^2 + \[Delta]) + d^2*(2*e + Sqrt[d^2/\[Delta]^2]*(b^2 - \[Beta]^2 + \[Delta])))*Hypergeometric2F1[(d^2*\[Beta]^2 + 2*d*e*\[Beta]^2 - \[Beta]^2*\[Delta]^2 + b^2*(d^2 + 2*d*e - \[Delta]^2) + 2*b*\[Beta]*(d^2 + 2*d*e - \[Delta]^2) - Sqrt[(b + \[Beta])^4*(d^2 + 2*e*\[Delta] - \[Delta]^2)^2])/(4*(b + \[Beta])^2*(d^2 - \[Delta]^2)), (d^2*\[Beta]^2 + 2*d*e*\[Beta]^2 - \[Beta]^2*\[Delta]^2 + b^2*(d^2 + 2*d*e - \[Delta]^2) + 2*b*\[Beta]*(d^2 + 2*d*e - \[Delta]^2) + Sqrt[(b + \[Beta])^4*(d^2 + 2*e*\[Delta] - \[Delta]^2)^2])/(4*(b + \[Beta])^2*(d^2 - \[Delta]^2)), (3*d^3 - 3*d*\[Delta]^2 - Sqrt[d^2/\[Delta]^2]*\[Delta]^2*(b^2 + 2*e - \[Beta]^2 + \[Delta]) + d^2*(2*e + Sqrt[d^2/\[Delta]^2]*(b^2 - \[Beta]^2 + \[Delta])))/(4*(d^3 - d*\[Delta]^2)), (1 - Sqrt[d^2/\[Delta]^2])/2])/(Sqrt[d^2/\[Delta]^2]*(d^2 - \[Delta]^2)*Hypergeometric2F1[(5*d^2*\[Beta]^2 + 2*d*e*\[Beta]^2 - 5*\[Beta]^2*\[Delta]^2 + b^2*(5*d^2 + 2*d*e - 5*\[Delta]^2) + 2*b*\[Beta]*(5*d^2 + 2*d*e - 5*\[Delta]^2) - Sqrt[(b + \[Beta])^4*(d^2 + 2*e*\[Delta] - \[Delta]^2)^2])/(4*(b + \[Beta])^2*(d^2 - \[Delta]^2)), (5*d^2*\[Beta]^2 + 2*d*e*\[Beta]^2 - 5*\[Beta]^2*\[Delta]^2 + b^2*(5*d^2 + 2*d*e - 5*\[Delta]^2) + 2*b*\[Beta]*(5*d^2 + 2*d*e - 5*\[Delta]^2) + Sqrt[(b + \[Beta])^4*(d^2 + 2*e*\[Delta] - \[Delta]^2)^2])/(4*(b + \[Beta])^2*(d^2 - \[Delta]^2)), (7*d^3 - 7*d*\[Delta]^2 - Sqrt[d^2/\[Delta]^2]*\[Delta]^2*(b^2 + 2*e - \[Beta]^2 + \[Delta]) + d^2*(2*e + Sqrt[d^2/\[Delta]^2]*(b^2 - \[Beta]^2 + \[Delta])))/(4*(d^3 - d*\[Delta]^2)), (1 - Sqrt[d^2/\[Delta]^2])/2]))) == Inactive[ContinuedFractionK][e + d*k + (-1)^k*k*\[Delta], b + (-1)^k*\[Beta], {k, 1, Infinity}], Element[b | \[Beta] | d | e | \[Delta], Complexes]]

(* {"LinearAlternating/AlternatingConstant", 6}*)
ConditionalExpression[(d*(b + \[Beta])*(d - \[Delta])*Hypergeometric2F1[(5*d^2*\[Beta]^2 - 5*\[Beta]^2*\[Delta]^2 + 5*b^2*(d^2 - \[Delta]^2) + 10*b*\[Beta]*(d^2 - \[Delta]^2) - Sqrt[(b + \[Beta])^4*(-d^2 + \[Delta]^2)^2])/(4*(b + \[Beta])^2*(d^2 - \[Delta]^2)), (5*d^2*\[Beta]^2 - 5*\[Beta]^2*\[Delta]^2 + 5*b^2*(d^2 - \[Delta]^2) + 10*b*\[Beta]*(d^2 - \[Delta]^2) + Sqrt[(b + \[Beta])^4*(-d^2 + \[Delta]^2)^2])/(4*(b + \[Beta])^2*(d^2 - \[Delta]^2)), (7*d + Sqrt[d^2/\[Delta]^2]*(b^2 - \[Beta]^2 + \[Delta]))/(4*d), (1 - Sqrt[d^2/\[Delta]^2])/2])/(b^2*d - d*\[Beta]^2 + d*\[Delta] + 3*Sqrt[d^2/\[Delta]^2]*\[Delta]^2 + d*(-d + \[Delta])*Hypergeometric2F1[(5*d^2*\[Beta]^2 - 5*\[Beta]^2*\[Delta]^2 + 5*b^2*(d^2 - \[Delta]^2) + 10*b*\[Beta]*(d^2 - \[Delta]^2) - Sqrt[(b + \[Beta])^4*(d^2 - \[Delta]^2)^2])/(4*(b + \[Beta])^2*(d^2 - \[Delta]^2)), (5*d^2*\[Beta]^2 - 5*\[Beta]^2*\[Delta]^2 + 5*b^2*(d^2 - \[Delta]^2) + 10*b*\[Beta]*(d^2 - \[Delta]^2) + Sqrt[(b + \[Beta])^4*(d^2 - \[Delta]^2)^2])/(4*(b + \[Beta])^2*(d^2 - \[Delta]^2)), (7*d + Sqrt[d^2/\[Delta]^2]*(b^2 - \[Beta]^2 + \[Delta]))/(4*d), (1 - Sqrt[d^2/\[Delta]^2])/2]) == Inactive[ContinuedFractionK][k*(d + (-1)^k*\[Delta]), b + (-1)^k*\[Beta], {k, 1, Infinity}], Element[b | \[Beta] | d | \[Delta], Complexes]]

(* {"LinearAlternating/AlternatingConstant", 7}*)
ConditionalExpression[((b + \[Beta])^2*(e - \[Delta]))/(-b^3 - 2*b*e - b^2*\[Beta] - 2*e*\[Beta] + b*\[Beta]^2 + \[Beta]^3 - b*\[Delta] - \[Beta]*\[Delta] + (b + \[Beta])*(b^2 + e - \[Beta]^2 + 2*\[Delta]) + ((b + \[Beta])*(3*b*\[Delta]^2 + 3*\[Beta]*\[Delta]^2 + b^2*Sqrt[(b + \[Beta])^2*\[Delta]^2] - \[Beta]^2*Sqrt[(b + \[Beta])^2*\[Delta]^2] + Sqrt[(b + \[Beta])^2*\[Delta]^2]*(2*e + \[Delta]))*Hypergeometric2F1[((b + \[Beta])^2*\[Delta]^2 - Sqrt[(b + \[Beta])^4*\[Delta]^2*(-2*e + \[Delta])^2])/(4*(b + \[Beta])^2*\[Delta]^2), ((b + \[Beta])^2*\[Delta]^2 + Sqrt[(b + \[Beta])^4*\[Delta]^2*(-2*e + \[Delta])^2])/(4*(b + \[Beta])^2*\[Delta]^2), (3*b*\[Delta]^2 + 3*\[Beta]*\[Delta]^2 + b^2*Sqrt[(b + \[Beta])^2*\[Delta]^2] - \[Beta]^2*Sqrt[(b + \[Beta])^2*\[Delta]^2] + Sqrt[(b + \[Beta])^2*\[Delta]^2]*(2*e + \[Delta]))/(4*(b + \[Beta])*\[Delta]^2), 1/2])/(Sqrt[(b + \[Beta])^2*\[Delta]^2]*Hypergeometric2F1[(5*b^2*\[Delta]^2 + 10*b*\[Beta]*\[Delta]^2 + 5*\[Beta]^2*\[Delta]^2 - Sqrt[(b + \[Beta])^4*\[Delta]^2*(-2*e + \[Delta])^2])/(4*(b + \[Beta])^2*\[Delta]^2), (5*b^2*\[Delta]^2 + 10*b*\[Beta]*\[Delta]^2 + 5*\[Beta]^2*\[Delta]^2 + Sqrt[(b + \[Beta])^4*\[Delta]^2*(-2*e + \[Delta])^2])/(4*(b + \[Beta])^2*\[Delta]^2), (7*b*\[Delta]^2 + 7*\[Beta]*\[Delta]^2 + b^2*Sqrt[(b + \[Beta])^2*\[Delta]^2] - \[Beta]^2*Sqrt[(b + \[Beta])^2*\[Delta]^2] + Sqrt[(b + \[Beta])^2*\[Delta]^2]*(2*e + \[Delta]))/(4*(b + \[Beta])*\[Delta]^2), 1/2])) == Inactive[ContinuedFractionK][e + (-1)^k*k*\[Delta], b + (-1)^k*\[Beta], {k, 1, Infinity}], Element[b | \[Beta] | e | \[Delta], Complexes]]

(* {"LinearAlternating/AlternatingConstant", 8}*)
ConditionalExpression[-(((b + \[Beta])^2*\[Delta])/(-b^3 - b^2*\[Beta] + b*\[Beta]^2 + \[Beta]^3 - b*\[Delta] - \[Beta]*\[Delta] + (b + \[Beta])*(b^2 - \[Beta]^2 + 2*\[Delta]) + ((b + \[Beta])*(3*b*\[Delta]^2 + 3*\[Beta]*\[Delta]^2 + b^2*Sqrt[(b + \[Beta])^2*\[Delta]^2] - \[Beta]^2*Sqrt[(b + \[Beta])^2*\[Delta]^2] + \[Delta]*Sqrt[(b + \[Beta])^2*\[Delta]^2]))/(Sqrt[(b + \[Beta])^2*\[Delta]^2]*Hypergeometric2F1[1, 1 + (2*b^2*\[Delta]^2 + 4*b*\[Beta]*\[Delta]^2 + 2*\[Beta]^2*\[Delta]^2)/(4*b^2*\[Delta]^2 + 8*b*\[Beta]*\[Delta]^2 + 4*\[Beta]^2*\[Delta]^2), (2*b^2*\[Delta]^2 + 4*b*\[Beta]*\[Delta]^2 + 2*\[Beta]^2*\[Delta]^2 + (b^3 + b^2*\[Beta] - b*\[Beta]^2 - \[Beta]^3 + b*\[Delta] + \[Beta]*\[Delta])*Sqrt[4*b^2*\[Delta]^2 + 8*b*\[Beta]*\[Delta]^2 + 4*\[Beta]^2*\[Delta]^2] + 3*(4*b^2*\[Delta]^2 + 8*b*\[Beta]*\[Delta]^2 + 4*\[Beta]^2*\[Delta]^2))/(2*(4*b^2*\[Delta]^2 + 8*b*\[Beta]*\[Delta]^2 + 4*\[Beta]^2*\[Delta]^2)), 1/2]))) == Inactive[ContinuedFractionK][(-1)^k*k*\[Delta], b + (-1)^k*\[Beta], {k, 1, Infinity}], Element[b | \[Beta] | \[Delta], Complexes]]

(* {"LinearAlternating/AlternatingConstant", 9}*)
ConditionalExpression[(\[Beta]*(d + e - \[Delta] - \[Epsilon]))/(-d - e + \[Delta] + \[Epsilon] + ((3*d^3 + (-2*e + \[Beta]^2 - \[Delta])*Sqrt[d^2/\[Delta]^2]*\[Delta]^2 + d^2*(2*e + Sqrt[d^2/\[Delta]^2]*(-\[Beta]^2 + \[Delta])) + d*\[Delta]*(-3*\[Delta] + 2*(-1 + Sqrt[d^2/\[Delta]^2])*\[Epsilon]))*Hypergeometric2F1[(d^2*\[Beta]^2 + 2*d*e*\[Beta]^2 - \[Beta]^2*\[Delta]^2 - 2*\[Beta]^2*\[Delta]*\[Epsilon] + Sqrt[\[Beta]^4*(d^2 + 2*e*\[Delta] - \[Delta]^2 - 2*d*\[Epsilon])^2])/(4*\[Beta]^2*(d^2 - \[Delta]^2)), -(-(d^2*\[Beta]^2) - 2*d*e*\[Beta]^2 + \[Beta]^2*\[Delta]^2 + 2*\[Beta]^2*\[Delta]*\[Epsilon] + Sqrt[\[Beta]^4*(d^2 + 2*e*\[Delta] - \[Delta]^2 - 2*d*\[Epsilon])^2])/(4*\[Beta]^2*(d^2 - \[Delta]^2)), (3*d^3 + (-2*e + \[Beta]^2 - \[Delta])*Sqrt[d^2/\[Delta]^2]*\[Delta]^2 + d^2*(2*e + Sqrt[d^2/\[Delta]^2]*(-\[Beta]^2 + \[Delta])) + d*\[Delta]*(-3*\[Delta] + 2*(-1 + Sqrt[d^2/\[Delta]^2])*\[Epsilon]))/(4*(d^3 - d*\[Delta]^2)), (1 - Sqrt[d^2/\[Delta]^2])/2])/(Sqrt[d^2/\[Delta]^2]*(d^2 - \[Delta]^2)*Hypergeometric2F1[(5*d^2*\[Beta]^2 + 2*d*e*\[Beta]^2 - 5*\[Beta]^2*\[Delta]^2 - 2*\[Beta]^2*\[Delta]*\[Epsilon] + Sqrt[\[Beta]^4*(d^2 + 2*e*\[Delta] - \[Delta]^2 - 2*d*\[Epsilon])^2])/(4*\[Beta]^2*(d^2 - \[Delta]^2)), -(-5*d^2*\[Beta]^2 - 2*d*e*\[Beta]^2 + 5*\[Beta]^2*\[Delta]^2 + 2*\[Beta]^2*\[Delta]*\[Epsilon] + Sqrt[\[Beta]^4*(d^2 + 2*e*\[Delta] - \[Delta]^2 - 2*d*\[Epsilon])^2])/(4*\[Beta]^2*(d^2 - \[Delta]^2)), (7*d^3 + (-2*e + \[Beta]^2 - \[Delta])*Sqrt[d^2/\[Delta]^2]*\[Delta]^2 + d^2*(2*e + Sqrt[d^2/\[Delta]^2]*(-\[Beta]^2 + \[Delta])) + d*\[Delta]*(-7*\[Delta] + 2*(-1 + Sqrt[d^2/\[Delta]^2])*\[Epsilon]))/(4*(d^3 - d*\[Delta]^2)), (1 - Sqrt[d^2/\[Delta]^2])/2])) == Inactive[ContinuedFractionK][e + d*k + (-1)^k*(k*\[Delta] + \[Epsilon]), (-1)^k*\[Beta], {k, 1, Infinity}], Element[\[Beta] | d | e | \[Delta] | \[Epsilon], Complexes]]

(* {"LinearAlternating/AlternatingConstant", 10}*)
ConditionalExpression[(\[Beta]*(d - \[Delta] - \[Epsilon]))/(-d + \[Delta] + \[Epsilon] + ((d*(\[Beta]^2 - \[Delta])*\[Delta]^2 + d^3*(-\[Beta]^2 + \[Delta]) - Sqrt[d^2/\[Delta]^2]*\[Delta]^3*(3*\[Delta] + 2*\[Epsilon]) + d^2*\[Delta]*(3*Sqrt[d^2/\[Delta]^2]*\[Delta] + 2*\[Epsilon]))*Hypergeometric2F1[(d^2*\[Beta]^2 - \[Beta]^2*\[Delta]*(\[Delta] + 2*\[Epsilon]) + Sqrt[\[Beta]^4*(-d^2 + \[Delta]^2 + 2*d*\[Epsilon])^2])/(4*\[Beta]^2*(d^2 - \[Delta]^2)), -(-(d^2*\[Beta]^2) + \[Beta]^2*\[Delta]*(\[Delta] + 2*\[Epsilon]) + Sqrt[\[Beta]^4*(-d^2 + \[Delta]^2 + 2*d*\[Epsilon])^2])/(4*\[Beta]^2*(d^2 - \[Delta]^2)), (3*d^3 + (\[Beta]^2 - \[Delta])*Sqrt[d^2/\[Delta]^2]*\[Delta]^2 + d^2*Sqrt[d^2/\[Delta]^2]*(-\[Beta]^2 + \[Delta]) + d*\[Delta]*(-3*\[Delta] + 2*(-1 + Sqrt[d^2/\[Delta]^2])*\[Epsilon]))/(4*(d^3 - d*\[Delta]^2)), (1 - Sqrt[d^2/\[Delta]^2])/2])/(d*(d^2 - \[Delta]^2)*Hypergeometric2F1[(5*d^2*\[Beta]^2 - \[Beta]^2*\[Delta]*(5*\[Delta] + 2*\[Epsilon]) + Sqrt[\[Beta]^4*(-d^2 + \[Delta]^2 + 2*d*\[Epsilon])^2])/(4*\[Beta]^2*(d^2 - \[Delta]^2)), -(-5*d^2*\[Beta]^2 + \[Beta]^2*\[Delta]*(5*\[Delta] + 2*\[Epsilon]) + Sqrt[\[Beta]^4*(-d^2 + \[Delta]^2 + 2*d*\[Epsilon])^2])/(4*\[Beta]^2*(d^2 - \[Delta]^2)), (7*d^3 + (\[Beta]^2 - \[Delta])*Sqrt[d^2/\[Delta]^2]*\[Delta]^2 + d^2*Sqrt[d^2/\[Delta]^2]*(-\[Beta]^2 + \[Delta]) + d*\[Delta]*(-7*\[Delta] + 2*(-1 + Sqrt[d^2/\[Delta]^2])*\[Epsilon]))/(4*(d^3 - d*\[Delta]^2)), (1 - Sqrt[d^2/\[Delta]^2])/2])) == Inactive[ContinuedFractionK][d*k + (-1)^k*(k*\[Delta] + \[Epsilon]), (-1)^k*\[Beta], {k, 1, Infinity}], Element[\[Beta] | d | \[Delta] | \[Epsilon], Complexes]]

(* {"LinearAlternating/AlternatingConstant", 11}*)
ConditionalExpression[(\[Beta]*(d + e - \[Delta]))/(-d - e + \[Delta] + ((3*d^3 - 3*d*\[Delta]^2 + (-2*e + \[Beta]^2 - \[Delta])*Sqrt[d^2/\[Delta]^2]*\[Delta]^2 + d^2*(2*e + Sqrt[d^2/\[Delta]^2]*(-\[Beta]^2 + \[Delta])))*Hypergeometric2F1[(d^2*\[Beta]^2 + 2*d*e*\[Beta]^2 - \[Beta]^2*\[Delta]^2 + Sqrt[\[Beta]^4*(d^2 + (2*e - \[Delta])*\[Delta])^2])/(4*\[Beta]^2*(d^2 - \[Delta]^2)), -(-(d^2*\[Beta]^2) - 2*d*e*\[Beta]^2 + \[Beta]^2*\[Delta]^2 + Sqrt[\[Beta]^4*(d^2 + (2*e - \[Delta])*\[Delta])^2])/(4*\[Beta]^2*(d^2 - \[Delta]^2)), (3*d^3 - 3*d*\[Delta]^2 + (-2*e + \[Beta]^2 - \[Delta])*Sqrt[d^2/\[Delta]^2]*\[Delta]^2 + d^2*(2*e + Sqrt[d^2/\[Delta]^2]*(-\[Beta]^2 + \[Delta])))/(4*(d^3 - d*\[Delta]^2)), (1 - Sqrt[d^2/\[Delta]^2])/2])/(Sqrt[d^2/\[Delta]^2]*(d^2 - \[Delta]^2)*Hypergeometric2F1[(5*d^2*\[Beta]^2 + 2*d*e*\[Beta]^2 - 5*\[Beta]^2*\[Delta]^2 + Sqrt[\[Beta]^4*(d^2 + (2*e - \[Delta])*\[Delta])^2])/(4*\[Beta]^2*(d^2 - \[Delta]^2)), -(-5*d^2*\[Beta]^2 - 2*d*e*\[Beta]^2 + 5*\[Beta]^2*\[Delta]^2 + Sqrt[\[Beta]^4*(d^2 + (2*e - \[Delta])*\[Delta])^2])/(4*\[Beta]^2*(d^2 - \[Delta]^2)), (7*d^3 - 7*d*\[Delta]^2 + (-2*e + \[Beta]^2 - \[Delta])*Sqrt[d^2/\[Delta]^2]*\[Delta]^2 + d^2*(2*e + Sqrt[d^2/\[Delta]^2]*(-\[Beta]^2 + \[Delta])))/(4*(d^3 - d*\[Delta]^2)), (1 - Sqrt[d^2/\[Delta]^2])/2])) == Inactive[ContinuedFractionK][e + d*k + (-1)^k*k*\[Delta], (-1)^k*\[Beta], {k, 1, Infinity}], Element[\[Beta] | d | e | \[Delta], Complexes]]

(* {"LinearAlternating/AlternatingConstant", 12}*)
ConditionalExpression[-((d*\[Beta]*(d - \[Delta])*Hypergeometric2F1[(5*d^2*\[Beta]^2 - 5*\[Beta]^2*\[Delta]^2 + Sqrt[\[Beta]^4*(d^2 - \[Delta]^2)^2])/(4*\[Beta]^2*(d^2 - \[Delta]^2)), -(-5*d^2*\[Beta]^2 + 5*\[Beta]^2*\[Delta]^2 + Sqrt[\[Beta]^4*(d^2 - \[Delta]^2)^2])/(4*\[Beta]^2*(d^2 - \[Delta]^2)), (7*d + Sqrt[d^2/\[Delta]^2]*(-\[Beta]^2 + \[Delta]))/(4*d), (1 - Sqrt[d^2/\[Delta]^2])/2])/(d*(\[Beta]^2 - \[Delta]) - 3*Sqrt[d^2/\[Delta]^2]*\[Delta]^2 + d*(d - \[Delta])*Hypergeometric2F1[(5*d^2*\[Beta]^2 - 5*\[Beta]^2*\[Delta]^2 + Sqrt[\[Beta]^4*(-d^2 + \[Delta]^2)^2])/(4*\[Beta]^2*(d^2 - \[Delta]^2)), -(-5*d^2*\[Beta]^2 + 5*\[Beta]^2*\[Delta]^2 + Sqrt[\[Beta]^4*(-d^2 + \[Delta]^2)^2])/(4*\[Beta]^2*(d^2 - \[Delta]^2)), (7*d + Sqrt[d^2/\[Delta]^2]*(-\[Beta]^2 + \[Delta]))/(4*d), (1 - Sqrt[d^2/\[Delta]^2])/2])) == Inactive[ContinuedFractionK][d*k + (-1)^k*k*\[Delta], (-1)^k*\[Beta], {k, 1, Infinity}], Element[\[Beta] | d | \[Delta], Complexes]]

(* {"LinearAlternating/AlternatingConstant", 13}*)
ConditionalExpression[(\[Beta]*(e - \[Delta] - \[Epsilon]))/(-e + \[Delta] + \[Epsilon] - ((\[Beta]^2*Sqrt[\[Beta]^2*\[Delta]^2] - Sqrt[\[Beta]^2*\[Delta]^2]*(2*e + \[Delta]) - \[Beta]*\[Delta]*(3*\[Delta] + 2*\[Epsilon]))*Hypergeometric2F1[(-Sqrt[\[Beta]^4*\[Delta]^2*(-2*e + \[Delta])^2] + \[Beta]^2*\[Delta]*(\[Delta] + 2*\[Epsilon]))/(4*\[Beta]^2*\[Delta]^2), (Sqrt[\[Beta]^4*\[Delta]^2*(-2*e + \[Delta])^2] + \[Beta]^2*\[Delta]*(\[Delta] + 2*\[Epsilon]))/(4*\[Beta]^2*\[Delta]^2), (3*\[Beta]*\[Delta]^2 + Sqrt[\[Beta]^2*\[Delta]^2]*(2*e - \[Beta]^2 + \[Delta]) + 2*\[Beta]*\[Delta]*\[Epsilon])/(4*\[Beta]*\[Delta]^2), 1/2])/(Sqrt[\[Beta]^2*\[Delta]^2]*Hypergeometric2F1[(-Sqrt[\[Beta]^4*\[Delta]^2*(-2*e + \[Delta])^2] + \[Beta]^2*\[Delta]*(5*\[Delta] + 2*\[Epsilon]))/(4*\[Beta]^2*\[Delta]^2), (Sqrt[\[Beta]^4*\[Delta]^2*(-2*e + \[Delta])^2] + \[Beta]^2*\[Delta]*(5*\[Delta] + 2*\[Epsilon]))/(4*\[Beta]^2*\[Delta]^2), (7*\[Beta]*\[Delta]^2 + Sqrt[\[Beta]^2*\[Delta]^2]*(2*e - \[Beta]^2 + \[Delta]) + 2*\[Beta]*\[Delta]*\[Epsilon])/(4*\[Beta]*\[Delta]^2), 1/2])) == Inactive[ContinuedFractionK][e + (-1)^k*(k*\[Delta] + \[Epsilon]), (-1)^k*\[Beta], {k, 1, Infinity}], Element[\[Beta] | e | \[Delta] | \[Epsilon], Complexes]]

(* {"LinearAlternating/AlternatingConstant", 14}*)
ConditionalExpression[(\[Beta]*(-\[Delta] - \[Epsilon]))/(\[Delta] + \[Epsilon] - ((\[Beta]^2*Sqrt[\[Beta]^2*\[Delta]^2] - \[Delta]*Sqrt[\[Beta]^2*\[Delta]^2] - \[Beta]*\[Delta]*(3*\[Delta] + 2*\[Epsilon]))*Hypergeometric2F1[(-Sqrt[\[Beta]^4*\[Delta]^4] + \[Beta]^2*\[Delta]*(\[Delta] + 2*\[Epsilon]))/(4*\[Beta]^2*\[Delta]^2), (Sqrt[\[Beta]^4*\[Delta]^4] + \[Beta]^2*\[Delta]*(\[Delta] + 2*\[Epsilon]))/(4*\[Beta]^2*\[Delta]^2), (6*\[Beta]^2*\[Delta]^2 - 2*Sqrt[\[Beta]^2*\[Delta]^2]*(\[Beta]^3 - \[Beta]*\[Delta]) + 4*\[Beta]^2*\[Delta]*\[Epsilon])/(8*\[Beta]^2*\[Delta]^2), 1/2])/(Sqrt[\[Beta]^2*\[Delta]^2]*Hypergeometric2F1[(5 - (\[Beta]^2*\[Delta]^2)/Sqrt[\[Beta]^4*\[Delta]^4] + (2*\[Epsilon])/\[Delta])/4, (Sqrt[\[Beta]^4*\[Delta]^4] + \[Beta]^2*\[Delta]*(5*\[Delta] + 2*\[Epsilon]))/(4*\[Beta]^2*\[Delta]^2), (14*\[Beta]^2*\[Delta]^2 - 2*Sqrt[\[Beta]^2*\[Delta]^2]*(\[Beta]^3 - \[Beta]*\[Delta]) + 4*\[Beta]^2*\[Delta]*\[Epsilon])/(8*\[Beta]^2*\[Delta]^2), 1/2])) == Inactive[ContinuedFractionK][(-1)^k*(k*\[Delta] + \[Epsilon]), (-1)^k*\[Beta], {k, 1, Infinity}], Element[\[Beta] | \[Delta] | \[Epsilon], Complexes]]

(* {"LinearAlternating/AlternatingConstant", 15}*)
ConditionalExpression[(\[Beta]*(e - \[Delta]))/(-e + \[Delta] - ((-3*\[Beta]*\[Delta]^2 + \[Beta]^2*Sqrt[\[Beta]^2*\[Delta]^2] - Sqrt[\[Beta]^2*\[Delta]^2]*(2*e + \[Delta]))*Hypergeometric2F1[(\[Beta]^2*\[Delta]^2 - Sqrt[\[Beta]^4*\[Delta]^2*(-2*e + \[Delta])^2])/(4*\[Beta]^2*\[Delta]^2), (\[Beta]^2*\[Delta]^2 + Sqrt[\[Beta]^4*\[Delta]^2*(-2*e + \[Delta])^2])/(4*\[Beta]^2*\[Delta]^2), (3*\[Beta]*\[Delta]^2 + Sqrt[\[Beta]^2*\[Delta]^2]*(2*e - \[Beta]^2 + \[Delta]))/(4*\[Beta]*\[Delta]^2), 1/2])/(Sqrt[\[Beta]^2*\[Delta]^2]*Hypergeometric2F1[-(-5*\[Beta]^2*\[Delta]^2 + Sqrt[\[Beta]^4*\[Delta]^2*(-2*e + \[Delta])^2])/(4*\[Beta]^2*\[Delta]^2), (5*\[Beta]^2*\[Delta]^2 + Sqrt[\[Beta]^4*\[Delta]^2*(-2*e + \[Delta])^2])/(4*\[Beta]^2*\[Delta]^2), (7*\[Beta]*\[Delta]^2 + Sqrt[\[Beta]^2*\[Delta]^2]*(2*e - \[Beta]^2 + \[Delta]))/(4*\[Beta]*\[Delta]^2), 1/2])) == Inactive[ContinuedFractionK][e + (-1)^k*k*\[Delta], (-1)^k*\[Beta], {k, 1, Infinity}], Element[\[Beta] | e | \[Delta], Complexes]]

(* {"LinearAlternating/AlternatingConstant", 16}*)
ConditionalExpression[-((\[Beta]^2*\[Delta])/(\[Beta]*\[Delta] + (-\[Beta]^3 + \[Beta]*\[Delta] + 3*Sqrt[\[Beta]^2*\[Delta]^2])/(2*Hypergeometric2F1[1, (-\[Beta]^3 + \[Beta]*\[Delta] + Sqrt[\[Beta]^2*\[Delta]^2])/(4*Sqrt[\[Beta]^2*\[Delta]^2]), (-\[Beta]^3 + \[Beta]*\[Delta] + 7*Sqrt[\[Beta]^2*\[Delta]^2])/(4*Sqrt[\[Beta]^2*\[Delta]^2]), -1]))) == Inactive[ContinuedFractionK][(-1)^k*k*\[Delta], (-1)^k*\[Beta], {k, 1, Infinity}], Element[\[Beta] | \[Delta], Complexes]]

(* {"Linear/AlternatingConstant", 1}*)
ConditionalExpression[((d + e)*(b + \[Beta])*HypergeometricU[(b^2*d*(5*d + 2*e) + 2*b*d*(5*d + 2*e)*\[Beta] + 5*d^2*\[Beta]^2 + 2*d*e*\[Beta]^2 + Sqrt[d^4*(b + \[Beta])^4])/(4*d^2*(b + \[Beta])^2), (2*b^2*d^2 + 4*b*d^2*\[Beta] + 2*d^2*\[Beta]^2 + Sqrt[d^4*(b + \[Beta])^4])/(2*d^2*(b + \[Beta])^2), (b^2 - \[Beta]^2)/(2*d)])/(2*d*HypergeometricU[(b^2*d*(d + 2*e) + 2*b*d*(d + 2*e)*\[Beta] + d^2*\[Beta]^2 + 2*d*e*\[Beta]^2 + Sqrt[d^4*(b + \[Beta])^4])/(4*d^2*(b + \[Beta])^2), (2*b^2*d^2 + 4*b*d^2*\[Beta] + 2*d^2*\[Beta]^2 + Sqrt[d^4*(b + \[Beta])^4])/(2*d^2*(b + \[Beta])^2), (b^2 - \[Beta]^2)/(2*d)] - (d + e)*HypergeometricU[(b^2*d*(5*d + 2*e) + 2*b*d*(5*d + 2*e)*\[Beta] + 5*d^2*\[Beta]^2 + 2*d*e*\[Beta]^2 + Sqrt[d^4*(b + \[Beta])^4])/(4*d^2*(b + \[Beta])^2), (2*b^2*d^2 + 4*b*d^2*\[Beta] + 2*d^2*\[Beta]^2 + Sqrt[d^4*(b + \[Beta])^4])/(2*d^2*(b + \[Beta])^2), (b^2 - \[Beta]^2)/(2*d)]) == Inactive[ContinuedFractionK][e + d*k, b + (-1)^k*\[Beta], {k, 1, Infinity}], Element[b | \[Beta] | d | e, Complexes]]

(* {"Linear/AlternatingConstant", 2}*)
ConditionalExpression[((d + e)*\[Beta]*HypergeometricU[(5 + (2*e)/d + (d^2*\[Beta]^2)/Sqrt[d^4*\[Beta]^4])/4, 1 + (d^2*\[Beta]^2)/(2*Sqrt[d^4*\[Beta]^4]), -\[Beta]^2/(2*d)])/(2*d*HypergeometricU[(1 + (2*e)/d + (d^2*\[Beta]^2)/Sqrt[d^4*\[Beta]^4])/4, 1 + (d^2*\[Beta]^2)/(2*Sqrt[d^4*\[Beta]^4]), -\[Beta]^2/(2*d)] - (d + e)*HypergeometricU[(5 + (2*e)/d + (d^2*\[Beta]^2)/Sqrt[d^4*\[Beta]^4])/4, 1 + (d^2*\[Beta]^2)/(2*Sqrt[d^4*\[Beta]^4]), -\[Beta]^2/(2*d)]) == Inactive[ContinuedFractionK][e + d*k, (-1)^k*\[Beta], {k, 1, Infinity}], Element[\[Beta] | d | e, Complexes]]

(* {"Linear/AlternatingConstant", 3}*)
ConditionalExpression[(E^(b^2/(2*d))*(b + \[Beta])*ExpIntegralE[3/2, (b^2 - \[Beta]^2)/(2*d)])/(2*E^(\[Beta]^2/(2*d)) - E^(b^2/(2*d))*ExpIntegralE[3/2, (b^2 - \[Beta]^2)/(2*d)]) == Inactive[ContinuedFractionK][d*k, b + (-1)^k*\[Beta], {k, 1, Infinity}], Element[b | \[Beta] | d, Complexes]]

(* {"Linear/AlternatingConstant", 4}*)
ConditionalExpression[(\[Beta]*ExpIntegralE[3/2, -\[Beta]^2/(2*d)])/(2*E^(\[Beta]^2/(2*d)) - ExpIntegralE[3/2, -\[Beta]^2/(2*d)]) == Inactive[ContinuedFractionK][d*k, (-1)^k*\[Beta], {k, 1, Infinity}], Element[\[Beta] | d, Complexes]]

(* {"LinearAlternating/Constant", 1}*)
ConditionalExpression[(b*(d + e - \[Delta] - \[Epsilon]))/(-d - e + \[Delta] + \[Epsilon] + ((3*d^3 - Sqrt[d^2/\[Delta]^2]*\[Delta]^2*(b^2 + 2*e + \[Delta]) + d^2*(2*e + Sqrt[d^2/\[Delta]^2]*(b^2 + \[Delta])) + d*\[Delta]*(-3*\[Delta] + 2*(-1 + Sqrt[d^2/\[Delta]^2])*\[Epsilon]))*Hypergeometric2F1[(b^2*d^2 + 2*b^2*d*e - b^2*\[Delta]^2 - 2*b^2*\[Delta]*\[Epsilon] + Sqrt[b^4*(d^2 + 2*e*\[Delta] - \[Delta]^2 - 2*d*\[Epsilon])^2])/(4*b^2*(d^2 - \[Delta]^2)), -(-(b^2*d^2) - 2*b^2*d*e + b^2*\[Delta]^2 + 2*b^2*\[Delta]*\[Epsilon] + Sqrt[b^4*(d^2 + 2*e*\[Delta] - \[Delta]^2 - 2*d*\[Epsilon])^2])/(4*b^2*(d^2 - \[Delta]^2)), (3*d^3 - Sqrt[d^2/\[Delta]^2]*\[Delta]^2*(b^2 + 2*e + \[Delta]) + d^2*(2*e + Sqrt[d^2/\[Delta]^2]*(b^2 + \[Delta])) + d*\[Delta]*(-3*\[Delta] + 2*(-1 + Sqrt[d^2/\[Delta]^2])*\[Epsilon]))/(4*(d^3 - d*\[Delta]^2)), (1 - Sqrt[d^2/\[Delta]^2])/2])/(Sqrt[d^2/\[Delta]^2]*(d^2 - \[Delta]^2)*Hypergeometric2F1[(5*b^2*d^2 + 2*b^2*d*e - 5*b^2*\[Delta]^2 - 2*b^2*\[Delta]*\[Epsilon] + Sqrt[b^4*(d^2 + 2*e*\[Delta] - \[Delta]^2 - 2*d*\[Epsilon])^2])/(4*b^2*(d^2 - \[Delta]^2)), -(-5*b^2*d^2 - 2*b^2*d*e + 5*b^2*\[Delta]^2 + 2*b^2*\[Delta]*\[Epsilon] + Sqrt[b^4*(d^2 + 2*e*\[Delta] - \[Delta]^2 - 2*d*\[Epsilon])^2])/(4*b^2*(d^2 - \[Delta]^2)), (7*d^3 - Sqrt[d^2/\[Delta]^2]*\[Delta]^2*(b^2 + 2*e + \[Delta]) + d^2*(2*e + Sqrt[d^2/\[Delta]^2]*(b^2 + \[Delta])) + d*\[Delta]*(-7*\[Delta] + 2*(-1 + Sqrt[d^2/\[Delta]^2])*\[Epsilon]))/(4*(d^3 - d*\[Delta]^2)), (1 - Sqrt[d^2/\[Delta]^2])/2])) == Inactive[ContinuedFractionK][e + d*k + (-1)^k*(k*\[Delta] + \[Epsilon]), b, {k, 1, Infinity}], Element[b | d | e | \[Delta] | \[Epsilon], Complexes]]

(* {"LinearAlternating/Constant", 2}*)
ConditionalExpression[(b*(d - \[Delta] - \[Epsilon]))/(-d + \[Delta] + \[Epsilon] + ((3*d^3 + d^2*Sqrt[d^2/\[Delta]^2]*(b^2 + \[Delta]) - Sqrt[d^2/\[Delta]^2]*\[Delta]^2*(b^2 + \[Delta]) + d*\[Delta]*(-3*\[Delta] + 2*(-1 + Sqrt[d^2/\[Delta]^2])*\[Epsilon]))*Hypergeometric2F1[(-Sqrt[b^4*(-d^2 + \[Delta]^2 + 2*d*\[Epsilon])^2] + b^2*(d^2 - \[Delta]*(\[Delta] + 2*\[Epsilon])))/(4*b^2*(d^2 - \[Delta]^2)), (Sqrt[b^4*(-d^2 + \[Delta]^2 + 2*d*\[Epsilon])^2] + b^2*(d^2 - \[Delta]*(\[Delta] + 2*\[Epsilon])))/(4*b^2*(d^2 - \[Delta]^2)), (3*d^3 + d^2*Sqrt[d^2/\[Delta]^2]*(b^2 + \[Delta]) - Sqrt[d^2/\[Delta]^2]*\[Delta]^2*(b^2 + \[Delta]) + d*\[Delta]*(-3*\[Delta] + 2*(-1 + Sqrt[d^2/\[Delta]^2])*\[Epsilon]))/(4*(d^3 - d*\[Delta]^2)), (1 - Sqrt[d^2/\[Delta]^2])/2])/(Sqrt[d^2/\[Delta]^2]*(d^2 - \[Delta]^2)*Hypergeometric2F1[(-Sqrt[b^4*(-d^2 + \[Delta]^2 + 2*d*\[Epsilon])^2] + b^2*(5*d^2 - \[Delta]*(5*\[Delta] + 2*\[Epsilon])))/(4*b^2*(d^2 - \[Delta]^2)), (Sqrt[b^4*(-d^2 + \[Delta]^2 + 2*d*\[Epsilon])^2] + b^2*(5*d^2 - \[Delta]*(5*\[Delta] + 2*\[Epsilon])))/(4*b^2*(d^2 - \[Delta]^2)), (7*d^3 + d^2*Sqrt[d^2/\[Delta]^2]*(b^2 + \[Delta]) - Sqrt[d^2/\[Delta]^2]*\[Delta]^2*(b^2 + \[Delta]) + d*\[Delta]*(-7*\[Delta] + 2*(-1 + Sqrt[d^2/\[Delta]^2])*\[Epsilon]))/(4*(d^3 - d*\[Delta]^2)), (1 - Sqrt[d^2/\[Delta]^2])/2])) == Inactive[ContinuedFractionK][d*k + (-1)^k*(k*\[Delta] + \[Epsilon]), b, {k, 1, Infinity}], Element[b | d | \[Delta] | \[Epsilon], Complexes]]

(* {"LinearAlternating/Constant", 3}*)
ConditionalExpression[(b*(e - \[Delta] - \[Epsilon]))/(-e + \[Delta] + \[Epsilon] + ((b^2*Sqrt[b^2*\[Delta]^2] + Sqrt[b^2*\[Delta]^2]*(2*e + \[Delta]) + b*\[Delta]*(3*\[Delta] + 2*\[Epsilon]))*Hypergeometric2F1[(-Sqrt[b^4*\[Delta]^2*(-2*e + \[Delta])^2] + b^2*\[Delta]*(\[Delta] + 2*\[Epsilon]))/(4*b^2*\[Delta]^2), (Sqrt[b^4*\[Delta]^2*(-2*e + \[Delta])^2] + b^2*\[Delta]*(\[Delta] + 2*\[Epsilon]))/(4*b^2*\[Delta]^2), (3*b*\[Delta]^2 + Sqrt[b^2*\[Delta]^2]*(b^2 + 2*e + \[Delta]) + 2*b*\[Delta]*\[Epsilon])/(4*b*\[Delta]^2), 1/2])/(Sqrt[b^2*\[Delta]^2]*Hypergeometric2F1[(-Sqrt[b^4*\[Delta]^2*(-2*e + \[Delta])^2] + b^2*\[Delta]*(5*\[Delta] + 2*\[Epsilon]))/(4*b^2*\[Delta]^2), (Sqrt[b^4*\[Delta]^2*(-2*e + \[Delta])^2] + b^2*\[Delta]*(5*\[Delta] + 2*\[Epsilon]))/(4*b^2*\[Delta]^2), (7*b*\[Delta]^2 + Sqrt[b^2*\[Delta]^2]*(b^2 + 2*e + \[Delta]) + 2*b*\[Delta]*\[Epsilon])/(4*b*\[Delta]^2), 1/2])) == Inactive[ContinuedFractionK][e + (-1)^k*(k*\[Delta] + \[Epsilon]), b, {k, 1, Infinity}], Element[b | e | \[Delta] | \[Epsilon], Complexes]]

(* {"LinearAlternating/Constant", 4}*)
ConditionalExpression[(b*(d + e - \[Delta]))/(-d - e + \[Delta] + ((3*d^3 - 3*d*\[Delta]^2 - Sqrt[d^2/\[Delta]^2]*\[Delta]^2*(b^2 + 2*e + \[Delta]) + d^2*(2*e + Sqrt[d^2/\[Delta]^2]*(b^2 + \[Delta])))*Hypergeometric2F1[(Sqrt[b^4*(d^2 + (2*e - \[Delta])*\[Delta])^2] + b^2*(d^2 + 2*d*e - \[Delta]^2))/(4*b^2*(d^2 - \[Delta]^2)), (b^2*(d^2 + 2*d*e - \[Delta]^2) - Sqrt[b^4*(d^2 + 2*e*\[Delta] - \[Delta]^2)^2])/(4*b^2*(d^2 - \[Delta]^2)), (3*d^3 - 3*d*\[Delta]^2 - Sqrt[d^2/\[Delta]^2]*\[Delta]^2*(b^2 + 2*e + \[Delta]) + d^2*(2*e + Sqrt[d^2/\[Delta]^2]*(b^2 + \[Delta])))/(4*(d^3 - d*\[Delta]^2)), (1 - Sqrt[d^2/\[Delta]^2])/2])/(Sqrt[d^2/\[Delta]^2]*(d^2 - \[Delta]^2)*Hypergeometric2F1[(Sqrt[b^4*(d^2 + (2*e - \[Delta])*\[Delta])^2] + b^2*(5*d^2 + 2*d*e - 5*\[Delta]^2))/(4*b^2*(d^2 - \[Delta]^2)), (b^2*(5*d^2 + 2*d*e - 5*\[Delta]^2) - Sqrt[b^4*(d^2 + 2*e*\[Delta] - \[Delta]^2)^2])/(4*b^2*(d^2 - \[Delta]^2)), (7*d^3 - 7*d*\[Delta]^2 - Sqrt[d^2/\[Delta]^2]*\[Delta]^2*(b^2 + 2*e + \[Delta]) + d^2*(2*e + Sqrt[d^2/\[Delta]^2]*(b^2 + \[Delta])))/(4*(d^3 - d*\[Delta]^2)), (1 - Sqrt[d^2/\[Delta]^2])/2])) == Inactive[ContinuedFractionK][e + d*k + (-1)^k*k*\[Delta], b, {k, 1, Infinity}], Element[b | d | e | \[Delta], Complexes]]

(* {"LinearAlternating/Constant", 5}*)
ConditionalExpression[(b*(-\[Delta] - \[Epsilon]))/(\[Delta] + \[Epsilon] + ((b^2*Sqrt[b^2*\[Delta]^2] + \[Delta]*Sqrt[b^2*\[Delta]^2] + b*\[Delta]*(3*\[Delta] + 2*\[Epsilon]))*Hypergeometric2F1[(-Sqrt[b^4*\[Delta]^4] + b^2*\[Delta]*(\[Delta] + 2*\[Epsilon]))/(4*b^2*\[Delta]^2), (Sqrt[b^4*\[Delta]^4] + b^2*\[Delta]*(\[Delta] + 2*\[Epsilon]))/(4*b^2*\[Delta]^2), (3*b*\[Delta]^2 + Sqrt[b^2*\[Delta]^2]*(b^2 + \[Delta]) + 2*b*\[Delta]*\[Epsilon])/(4*b*\[Delta]^2), 1/2])/(Sqrt[b^2*\[Delta]^2]*Hypergeometric2F1[(5 - (b^2*\[Delta]^2)/Sqrt[b^4*\[Delta]^4] + (2*\[Epsilon])/\[Delta])/4, (Sqrt[b^4*\[Delta]^4] + b^2*\[Delta]*(5*\[Delta] + 2*\[Epsilon]))/(4*b^2*\[Delta]^2), (7*b*\[Delta]^2 + Sqrt[b^2*\[Delta]^2]*(b^2 + \[Delta]) + 2*b*\[Delta]*\[Epsilon])/(4*b*\[Delta]^2), 1/2])) == Inactive[ContinuedFractionK][(-1)^k*k*\[Delta] + (-1)^k*\[Epsilon], b, {k, 1, Infinity}], Element[b | \[Delta] | \[Epsilon], Complexes]]

(* {"LinearAlternating/Constant", 6}*)
ConditionalExpression[(b*d*(d - \[Delta])*Hypergeometric2F1[-(-5*b^2*(d^2 - \[Delta]^2) + Sqrt[b^4*(d^2 - \[Delta]^2)^2])/(4*b^2*(d^2 - \[Delta]^2)), (5*b^2*(d^2 - \[Delta]^2) + Sqrt[b^4*(d^2 - \[Delta]^2)^2])/(4*b^2*(d^2 - \[Delta]^2)), (7*d + Sqrt[d^2/\[Delta]^2]*(b^2 + \[Delta]))/(4*d), (1 - Sqrt[d^2/\[Delta]^2])/2])/(b^2*d + \[Delta]*(d + 3*Sqrt[d^2/\[Delta]^2]*\[Delta]) + d*(-d + \[Delta])*Hypergeometric2F1[-(-5*b^2*(d^2 - \[Delta]^2) + Sqrt[b^4*(d^2 - \[Delta]^2)^2])/(4*b^2*(d^2 - \[Delta]^2)), (5*b^2*(d^2 - \[Delta]^2) + Sqrt[b^4*(d^2 - \[Delta]^2)^2])/(4*b^2*(d^2 - \[Delta]^2)), (7*d + Sqrt[d^2/\[Delta]^2]*(b^2 + \[Delta]))/(4*d), (1 - Sqrt[d^2/\[Delta]^2])/2]) == Inactive[ContinuedFractionK][d*k + (-1)^k*k*\[Delta], b, {k, 1, Infinity}], Element[b | d | \[Delta], Complexes]]

(* {"LinearAlternating/Constant", 7}*)
ConditionalExpression[(b*(e - \[Delta]))/(-e + \[Delta] + ((3*b*\[Delta]^2 + b^2*Sqrt[b^2*\[Delta]^2] + Sqrt[b^2*\[Delta]^2]*(2*e + \[Delta]))*Hypergeometric2F1[(b^2*\[Delta]^2 - Sqrt[b^4*\[Delta]^2*(-2*e + \[Delta])^2])/(4*b^2*\[Delta]^2), (b^2*\[Delta]^2 + Sqrt[b^4*\[Delta]^2*(-2*e + \[Delta])^2])/(4*b^2*\[Delta]^2), (3*b*\[Delta]^2 + Sqrt[b^2*\[Delta]^2]*(b^2 + 2*e + \[Delta]))/(4*b*\[Delta]^2), 1/2])/(Sqrt[b^2*\[Delta]^2]*Hypergeometric2F1[-(-5*b^2*\[Delta]^2 + Sqrt[b^4*\[Delta]^2*(-2*e + \[Delta])^2])/(4*b^2*\[Delta]^2), (5*b^2*\[Delta]^2 + Sqrt[b^4*\[Delta]^2*(-2*e + \[Delta])^2])/(4*b^2*\[Delta]^2), (7*b*\[Delta]^2 + Sqrt[b^2*\[Delta]^2]*(b^2 + 2*e + \[Delta]))/(4*b*\[Delta]^2), 1/2])) == Inactive[ContinuedFractionK][e + (-1)^k*k*\[Delta], b, {k, 1, Infinity}], Element[b | e | \[Delta], Complexes]]

(* {"LinearAlternating/Constant", 8}*)
ConditionalExpression[-((b^2*\[Delta])/(b*\[Delta] + (b^3 + b*\[Delta] + 3*Sqrt[b^2*\[Delta]^2])/(2*Hypergeometric2F1[1, (b*\[Delta]^2 + b^2*Sqrt[b^2*\[Delta]^2] + \[Delta]*Sqrt[b^2*\[Delta]^2])/(4*b*\[Delta]^2), (b^3 + b*\[Delta] + 7*Sqrt[b^2*\[Delta]^2])/(4*Sqrt[b^2*\[Delta]^2]), -1]))) == Inactive[ContinuedFractionK][(-1)^k*k*\[Delta], b, {k, 1, Infinity}], Element[b | \[Delta], Complexes]]

(* {"LinearAlternating/LinearAlternating", 1}*)
ConditionalExpression[-(((b + \[Beta])^2*(d + e - \[Delta] - \[Epsilon]))/(2*a*b^2 + b^3 + 3*b*d + 2*b*e + 4*a*b*\[Beta] + b^2*\[Beta] + 3*d*\[Beta] + 2*e*\[Beta] + 2*a*\[Beta]^2 - b*\[Beta]^2 - \[Beta]^3 + b*\[Delta] + \[Beta]*\[Delta] - (b + \[Beta])*(b^2 + 2*d + e - \[Beta]^2 + 2*a*(b + \[Beta]) + 2*\[Delta] + \[Epsilon]) - ((b + \[Beta])*(b^2*d^3 - d^3*\[Beta]^2 + d^3*\[Delta] - b^2*d*\[Delta]^2 - 2*d*e*\[Delta]^2 + d*\[Beta]^2*\[Delta]^2 - d*\[Delta]^3 + 3*d^2*\[Delta]^2*Sqrt[(d + a*(b + \[Beta]))^2/(2*a*d*(b + \[Beta]) + a^2*(b + \[Beta])^2 + \[Delta]^2)] + 2*d*e*\[Delta]^2*Sqrt[(d + a*(b + \[Beta]))^2/(2*a*d*(b + \[Beta]) + a^2*(b + \[Beta])^2 + \[Delta]^2)] - 3*\[Delta]^4*Sqrt[(d + a*(b + \[Beta]))^2/(2*a*d*(b + \[Beta]) + a^2*(b + \[Beta])^2 + \[Delta]^2)] + 2*d^2*\[Delta]*\[Epsilon] - 2*\[Delta]^3*Sqrt[(d + a*(b + \[Beta]))^2/(2*a*d*(b + \[Beta]) + a^2*(b + \[Beta])^2 + \[Delta]^2)]*\[Epsilon] + a*(b + \[Beta])*(-d^3 - 2*d^2*e - d^2*\[Beta]^2 + d^2*\[Delta] + d*\[Delta]^2 - 2*e*\[Delta]^2 + \[Beta]^2*\[Delta]^2 - \[Delta]^3 + b^2*(d^2 - \[Delta]^2) + 6*d^3*Sqrt[(d + a*(b + \[Beta]))^2/(2*a*d*(b + \[Beta]) + a^2*(b + \[Beta])^2 + \[Delta]^2)] + 4*d^2*e*Sqrt[(d + a*(b + \[Beta]))^2/(2*a*d*(b + \[Beta]) + a^2*(b + \[Beta])^2 + \[Delta]^2)] - 6*d*\[Delta]^2*Sqrt[(d + a*(b + \[Beta]))^2/(2*a*d*(b + \[Beta]) + a^2*(b + \[Beta])^2 + \[Delta]^2)] + 4*d*\[Delta]*\[Epsilon] - 4*d*\[Delta]*Sqrt[(d + a*(b + \[Beta]))^2/(2*a*d*(b + \[Beta]) + a^2*(b + \[Beta])^2 + \[Delta]^2)]*\[Epsilon]) + a^2*(b + \[Beta])^2*(2*d*e*(-1 + Sqrt[(d + a*(b + \[Beta]))^2/(2*a*d*(b + \[Beta]) + a^2*(b + \[Beta])^2 + \[Delta]^2)]) + d^2*(-1 + 3*Sqrt[(d + a*(b + \[Beta]))^2/(2*a*d*(b + \[Beta]) + a^2*(b + \[Beta])^2 + \[Delta]^2)]) + \[Delta]*(\[Delta] - 3*\[Delta]*Sqrt[(d + a*(b + \[Beta]))^2/(2*a*d*(b + \[Beta]) + a^2*(b + \[Beta])^2 + \[Delta]^2)] + 2*\[Epsilon] - 2*Sqrt[(d + a*(b + \[Beta]))^2/(2*a*d*(b + \[Beta]) + a^2*(b + \[Beta])^2 + \[Delta]^2)]*\[Epsilon])))*Hypergeometric2F1[(d^2*\[Beta]^2 + 2*d*e*\[Beta]^2 - \[Beta]^2*\[Delta]^2 - 2*\[Beta]^2*\[Delta]*\[Epsilon] - Sqrt[(b + \[Beta])^4*(d^2 + 2*e*\[Delta] - \[Delta]^2 - 2*d*\[Epsilon])^2] + b^2*(d^2 + 2*d*e - \[Delta]*(\[Delta] + 2*\[Epsilon])) + 2*b*\[Beta]*(d^2 + 2*d*e - \[Delta]*(\[Delta] + 2*\[Epsilon])))/(4*(b + \[Beta])^2*(d^2 - \[Delta]^2)), (d^2*\[Beta]^2 + 2*d*e*\[Beta]^2 - \[Beta]^2*\[Delta]^2 - 2*\[Beta]^2*\[Delta]*\[Epsilon] + Sqrt[(b + \[Beta])^4*(d^2 + 2*e*\[Delta] - \[Delta]^2 - 2*d*\[Epsilon])^2] + b^2*(d^2 + 2*d*e - \[Delta]*(\[Delta] + 2*\[Epsilon])) + 2*b*\[Beta]*(d^2 + 2*d*e - \[Delta]*(\[Delta] + 2*\[Epsilon])))/(4*(b + \[Beta])^2*(d^2 - \[Delta]^2)), -(-3*d^3 + \[Delta]^2*(b^2 + 2*e - \[Beta]^2 + \[Delta])*Sqrt[(d + a*(b + \[Beta]))^2/(2*a*d*(b + \[Beta]) + a^2*(b + \[Beta])^2 + \[Delta]^2)] - d^2*(2*e + (b^2 - \[Beta]^2 + \[Delta])*Sqrt[(d + a*(b + \[Beta]))^2/(2*a*d*(b + \[Beta]) + a^2*(b + \[Beta])^2 + \[Delta]^2)]) + d*\[Delta]*(3*\[Delta] - 2*(-1 + Sqrt[(d + a*(b + \[Beta]))^2/(2*a*d*(b + \[Beta]) + a^2*(b + \[Beta])^2 + \[Delta]^2)])*\[Epsilon]) + a*(b + \[Beta])*(d^2*(-3 + Sqrt[(d + a*(b + \[Beta]))^2/(2*a*d*(b + \[Beta]) + a^2*(b + \[Beta])^2 + \[Delta]^2)]) + 2*d*e*(-1 + Sqrt[(d + a*(b + \[Beta]))^2/(2*a*d*(b + \[Beta]) + a^2*(b + \[Beta])^2 + \[Delta]^2)]) + \[Delta]*(3*\[Delta] - \[Delta]*Sqrt[(d + a*(b + \[Beta]))^2/(2*a*d*(b + \[Beta]) + a^2*(b + \[Beta])^2 + \[Delta]^2)] + 2*\[Epsilon] - 2*Sqrt[(d + a*(b + \[Beta]))^2/(2*a*d*(b + \[Beta]) + a^2*(b + \[Beta])^2 + \[Delta]^2)]*\[Epsilon])))/(4*(d + a*(b + \[Beta]))*(d^2 - \[Delta]^2)), (1 - Sqrt[(d + a*(b + \[Beta]))^2/(2*a*d*(b + \[Beta]) + a^2*(b + \[Beta])^2 + \[Delta]^2)])/2])/((d + a*(b + \[Beta]))*(d^2 - \[Delta]^2)*Hypergeometric2F1[(5*d^2*\[Beta]^2 + 2*d*e*\[Beta]^2 - 5*\[Beta]^2*\[Delta]^2 - 2*\[Beta]^2*\[Delta]*\[Epsilon] - Sqrt[(b + \[Beta])^4*(d^2 + 2*e*\[Delta] - \[Delta]^2 - 2*d*\[Epsilon])^2] + b^2*(5*d^2 + 2*d*e - \[Delta]*(5*\[Delta] + 2*\[Epsilon])) + 2*b*\[Beta]*(5*d^2 + 2*d*e - \[Delta]*(5*\[Delta] + 2*\[Epsilon])))/(4*(b + \[Beta])^2*(d^2 - \[Delta]^2)), (5*d^2*\[Beta]^2 + 2*d*e*\[Beta]^2 - 5*\[Beta]^2*\[Delta]^2 - 2*\[Beta]^2*\[Delta]*\[Epsilon] + Sqrt[(b + \[Beta])^4*(d^2 + 2*e*\[Delta] - \[Delta]^2 - 2*d*\[Epsilon])^2] + b^2*(5*d^2 + 2*d*e - \[Delta]*(5*\[Delta] + 2*\[Epsilon])) + 2*b*\[Beta]*(5*d^2 + 2*d*e - \[Delta]*(5*\[Delta] + 2*\[Epsilon])))/(4*(b + \[Beta])^2*(d^2 - \[Delta]^2)), -(-7*d^3 + \[Delta]^2*(b^2 + 2*e - \[Beta]^2 + \[Delta])*Sqrt[(d + a*(b + \[Beta]))^2/(2*a*d*(b + \[Beta]) + a^2*(b + \[Beta])^2 + \[Delta]^2)] - d^2*(2*e + (b^2 - \[Beta]^2 + \[Delta])*Sqrt[(d + a*(b + \[Beta]))^2/(2*a*d*(b + \[Beta]) + a^2*(b + \[Beta])^2 + \[Delta]^2)]) + d*\[Delta]*(7*\[Delta] - 2*(-1 + Sqrt[(d + a*(b + \[Beta]))^2/(2*a*d*(b + \[Beta]) + a^2*(b + \[Beta])^2 + \[Delta]^2)])*\[Epsilon]) + a*(b + \[Beta])*(d^2*(-7 + Sqrt[(d + a*(b + \[Beta]))^2/(2*a*d*(b + \[Beta]) + a^2*(b + \[Beta])^2 + \[Delta]^2)]) + 2*d*e*(-1 + Sqrt[(d + a*(b + \[Beta]))^2/(2*a*d*(b + \[Beta]) + a^2*(b + \[Beta])^2 + \[Delta]^2)]) + \[Delta]*(7*\[Delta] - \[Delta]*Sqrt[(d + a*(b + \[Beta]))^2/(2*a*d*(b + \[Beta]) + a^2*(b + \[Beta])^2 + \[Delta]^2)] + 2*\[Epsilon] - 2*Sqrt[(d + a*(b + \[Beta]))^2/(2*a*d*(b + \[Beta]) + a^2*(b + \[Beta])^2 + \[Delta]^2)]*\[Epsilon])))/(4*(d + a*(b + \[Beta]))*(d^2 - \[Delta]^2)), (1 - Sqrt[(d + a*(b + \[Beta]))^2/(2*a*d*(b + \[Beta]) + a^2*(b + \[Beta])^2 + \[Delta]^2)])/2]))) == Inactive[ContinuedFractionK][e + d*k + (-1)^k*(k*\[Delta] + \[Epsilon]), b + a*k + (-1)^k*(-(a*k) + \[Beta]), {k, 1, Infinity}], Element[a | b | \[Beta] | d | e | \[Delta] | \[Epsilon], Complexes]]

(* {"LinearAlternating/LinearAlternating", 2}*)
ConditionalExpression[(-b^3 - b*d - 2*b*e + b^2*\[Beta] + d*\[Beta] + 2*e*\[Beta] + b*\[Beta]^2 - \[Beta]^3 + b*\[Delta] - \[Beta]*\[Delta] + (b - \[Beta])*(d + e - \[Delta] - \[Epsilon]) + ((b - \[Beta])*(b^2*d^3 - d^3*\[Beta]^2 - d^3*\[Delta] - b^2*d*\[Delta]^2 - 2*d*e*\[Delta]^2 + d*\[Beta]^2*\[Delta]^2 + d*\[Delta]^3 + d^2*\[Delta]^2*Sqrt[(d + a*(b - \[Beta]))^2/(2*a*d*(b - \[Beta]) + a^2*(b - \[Beta])^2 + \[Delta]^2)] + 2*d*e*\[Delta]^2*Sqrt[(d + a*(b - \[Beta]))^2/(2*a*d*(b - \[Beta]) + a^2*(b - \[Beta])^2 + \[Delta]^2)] - \[Delta]^4*Sqrt[(d + a*(b - \[Beta]))^2/(2*a*d*(b - \[Beta]) + a^2*(b - \[Beta])^2 + \[Delta]^2)] + 2*d^2*\[Delta]*\[Epsilon] - 2*\[Delta]^3*Sqrt[(d + a*(b - \[Beta]))^2/(2*a*d*(b - \[Beta]) + a^2*(b - \[Beta])^2 + \[Delta]^2)]*\[Epsilon] + a*(b - \[Beta])*(-d^3 - 2*d^2*e - d^2*\[Beta]^2 - d^2*\[Delta] + d*\[Delta]^2 - 2*e*\[Delta]^2 + \[Beta]^2*\[Delta]^2 + \[Delta]^3 + b^2*(d^2 - \[Delta]^2) + 2*d^3*Sqrt[(d + a*(b - \[Beta]))^2/(2*a*d*(b - \[Beta]) + a^2*(b - \[Beta])^2 + \[Delta]^2)] + 4*d^2*e*Sqrt[(d + a*(b - \[Beta]))^2/(2*a*d*(b - \[Beta]) + a^2*(b - \[Beta])^2 + \[Delta]^2)] - 2*d*\[Delta]^2*Sqrt[(d + a*(b - \[Beta]))^2/(2*a*d*(b - \[Beta]) + a^2*(b - \[Beta])^2 + \[Delta]^2)] + 4*d*\[Delta]*\[Epsilon] - 4*d*\[Delta]*Sqrt[(d + a*(b - \[Beta]))^2/(2*a*d*(b - \[Beta]) + a^2*(b - \[Beta])^2 + \[Delta]^2)]*\[Epsilon]) + a^2*(b - \[Beta])^2*(-1 + Sqrt[(d + a*(b - \[Beta]))^2/(2*a*d*(b - \[Beta]) + a^2*(b - \[Beta])^2 + \[Delta]^2)])*(d^2 + 2*d*e - \[Delta]*(\[Delta] + 2*\[Epsilon])))*Hypergeometric2F1[(-(d^2*\[Beta]^2) + 2*d*e*\[Beta]^2 + \[Beta]^2*\[Delta]^2 + 2*b*\[Beta]*(d^2 - 2*d*e - \[Delta]*(\[Delta] - 2*\[Epsilon])) + b^2*(-d^2 + 2*d*e + \[Delta]*(\[Delta] - 2*\[Epsilon])) - 2*\[Beta]^2*\[Delta]*\[Epsilon] - Sqrt[(b - \[Beta])^4*(d^2 - \[Delta]*(2*e + \[Delta]) + 2*d*\[Epsilon])^2])/(4*(b - \[Beta])^2*(d^2 - \[Delta]^2)), (-(d^2*\[Beta]^2) + 2*d*e*\[Beta]^2 + \[Beta]^2*\[Delta]^2 + 2*b*\[Beta]*(d^2 - 2*d*e - \[Delta]*(\[Delta] - 2*\[Epsilon])) + b^2*(-d^2 + 2*d*e + \[Delta]*(\[Delta] - 2*\[Epsilon])) - 2*\[Beta]^2*\[Delta]*\[Epsilon] + Sqrt[(b - \[Beta])^4*(d^2 - \[Delta]*(2*e + \[Delta]) + 2*d*\[Epsilon])^2])/(4*(b - \[Beta])^2*(d^2 - \[Delta]^2)), (d^3 + \[Delta]^2*(-b^2 - 2*e + \[Beta]^2 + \[Delta])*Sqrt[(d + a*(b - \[Beta]))^2/(2*a*d*(b - \[Beta]) + a^2*(b - \[Beta])^2 + \[Delta]^2)] + d^2*(2*e + (b^2 - \[Beta]^2 - \[Delta])*Sqrt[(d + a*(b - \[Beta]))^2/(2*a*d*(b - \[Beta]) + a^2*(b - \[Beta])^2 + \[Delta]^2)]) - d*\[Delta]*(\[Delta] - 2*(-1 + Sqrt[(d + a*(b - \[Beta]))^2/(2*a*d*(b - \[Beta]) + a^2*(b - \[Beta])^2 + \[Delta]^2)])*\[Epsilon]) - a*(b - \[Beta])*(-1 + Sqrt[(d + a*(b - \[Beta]))^2/(2*a*d*(b - \[Beta]) + a^2*(b - \[Beta])^2 + \[Delta]^2)])*(d^2 + 2*d*e - \[Delta]*(\[Delta] + 2*\[Epsilon])))/(4*(d + a*(b - \[Beta]))*(d^2 - \[Delta]^2)), (1 - Sqrt[(d + a*(b - \[Beta]))^2/(2*a*d*(b - \[Beta]) + a^2*(b - \[Beta])^2 + \[Delta]^2)])/2])/((d + a*(b - \[Beta]))*(d^2 - \[Delta]^2)*Hypergeometric2F1[(3*d^2*\[Beta]^2 + 2*d*e*\[Beta]^2 - 3*\[Beta]^2*\[Delta]^2 - 2*\[Beta]^2*\[Delta]*\[Epsilon] - Sqrt[(b - \[Beta])^4*(d^2 - \[Delta]*(2*e + \[Delta]) + 2*d*\[Epsilon])^2] + b^2*(3*d^2 + 2*d*e - \[Delta]*(3*\[Delta] + 2*\[Epsilon])) + 2*b*\[Beta]*(-3*d^2 - 2*d*e + \[Delta]*(3*\[Delta] + 2*\[Epsilon])))/(4*(b - \[Beta])^2*(d^2 - \[Delta]^2)), (3*d^2*\[Beta]^2 + 2*d*e*\[Beta]^2 - 3*\[Beta]^2*\[Delta]^2 - 2*\[Beta]^2*\[Delta]*\[Epsilon] + Sqrt[(b - \[Beta])^4*(d^2 - \[Delta]*(2*e + \[Delta]) + 2*d*\[Epsilon])^2] + b^2*(3*d^2 + 2*d*e - \[Delta]*(3*\[Delta] + 2*\[Epsilon])) + 2*b*\[Beta]*(-3*d^2 - 2*d*e + \[Delta]*(3*\[Delta] + 2*\[Epsilon])))/(4*(b - \[Beta])^2*(d^2 - \[Delta]^2)), (5*d^3 + \[Delta]^2*(-b^2 - 2*e + \[Beta]^2 + \[Delta])*Sqrt[(d + a*(b - \[Beta]))^2/(2*a*d*(b - \[Beta]) + a^2*(b - \[Beta])^2 + \[Delta]^2)] + d^2*(2*e + (b^2 - \[Beta]^2 - \[Delta])*Sqrt[(d + a*(b - \[Beta]))^2/(2*a*d*(b - \[Beta]) + a^2*(b - \[Beta])^2 + \[Delta]^2)]) - d*\[Delta]*(5*\[Delta] - 2*(-1 + Sqrt[(d + a*(b - \[Beta]))^2/(2*a*d*(b - \[Beta]) + a^2*(b - \[Beta])^2 + \[Delta]^2)])*\[Epsilon]) - a*(b - \[Beta])*(d^2*(-5 + Sqrt[(d + a*(b - \[Beta]))^2/(2*a*d*(b - \[Beta]) + a^2*(b - \[Beta])^2 + \[Delta]^2)]) + 2*d*e*(-1 + Sqrt[(d + a*(b - \[Beta]))^2/(2*a*d*(b - \[Beta]) + a^2*(b - \[Beta])^2 + \[Delta]^2)]) + \[Delta]*(5*\[Delta] - \[Delta]*Sqrt[(d + a*(b - \[Beta]))^2/(2*a*d*(b - \[Beta]) + a^2*(b - \[Beta])^2 + \[Delta]^2)] + 2*\[Epsilon] - 2*Sqrt[(d + a*(b - \[Beta]))^2/(2*a*d*(b - \[Beta]) + a^2*(b - \[Beta])^2 + \[Delta]^2)]*\[Epsilon])))/(4*(d + a*(b - \[Beta]))*(d^2 - \[Delta]^2)), (1 - Sqrt[(d + a*(b - \[Beta]))^2/(2*a*d*(b - \[Beta]) + a^2*(b - \[Beta])^2 + \[Delta]^2)])/2]))/(b - \[Beta])^2 == Inactive[ContinuedFractionK][e + d*k + (-1)^k*(k*\[Delta] + \[Epsilon]), b + a*k + (-1)^k*(a*k + \[Beta]), {k, 1, Infinity}], Element[a | b | \[Beta] | d | e | \[Delta] | \[Epsilon], Complexes]]

(* {"LinearAlternating/LinearAlternating", 3}*)
ConditionalExpression[(\[Beta]*(d + e - \[Delta] - \[Epsilon]))/(-d - e + \[Delta] + \[Epsilon] + ((d^3*(-\[Beta]^2 + \[Delta]) + d*\[Delta]^2*(\[Beta]^2 - \[Delta] + 2*e*(-1 + Sqrt[(d + a*\[Beta])^2/(2*a*d*\[Beta] + a^2*\[Beta]^2 + \[Delta]^2)])) - \[Delta]^3*Sqrt[(d + a*\[Beta])^2/(2*a*d*\[Beta] + a^2*\[Beta]^2 + \[Delta]^2)]*(3*\[Delta] + 2*\[Epsilon]) + d^2*\[Delta]*(3*\[Delta]*Sqrt[(d + a*\[Beta])^2/(2*a*d*\[Beta] + a^2*\[Beta]^2 + \[Delta]^2)] + 2*\[Epsilon]) + a^2*\[Beta]^2*(2*d*e*(-1 + Sqrt[(d + a*\[Beta])^2/(2*a*d*\[Beta] + a^2*\[Beta]^2 + \[Delta]^2)]) + d^2*(-1 + 3*Sqrt[(d + a*\[Beta])^2/(2*a*d*\[Beta] + a^2*\[Beta]^2 + \[Delta]^2)]) + \[Delta]*(\[Delta] - 3*\[Delta]*Sqrt[(d + a*\[Beta])^2/(2*a*d*\[Beta] + a^2*\[Beta]^2 + \[Delta]^2)] + 2*\[Epsilon] - 2*Sqrt[(d + a*\[Beta])^2/(2*a*d*\[Beta] + a^2*\[Beta]^2 + \[Delta]^2)]*\[Epsilon])) - a*\[Beta]*(\[Delta]^2*(2*e - \[Beta]^2 + \[Delta]) + d^3*(1 - 6*Sqrt[(d + a*\[Beta])^2/(2*a*d*\[Beta] + a^2*\[Beta]^2 + \[Delta]^2)]) - d^2*(-2*e - \[Beta]^2 + \[Delta] + 4*e*Sqrt[(d + a*\[Beta])^2/(2*a*d*\[Beta] + a^2*\[Beta]^2 + \[Delta]^2)]) + d*\[Delta]*(\[Delta]*(-1 + 6*Sqrt[(d + a*\[Beta])^2/(2*a*d*\[Beta] + a^2*\[Beta]^2 + \[Delta]^2)]) + 4*(-1 + Sqrt[(d + a*\[Beta])^2/(2*a*d*\[Beta] + a^2*\[Beta]^2 + \[Delta]^2)])*\[Epsilon])))*Hypergeometric2F1[(d^2*\[Beta]^2 + 2*d*e*\[Beta]^2 - \[Beta]^2*\[Delta]^2 - 2*\[Beta]^2*\[Delta]*\[Epsilon] + Sqrt[\[Beta]^4*(d^2 + 2*e*\[Delta] - \[Delta]^2 - 2*d*\[Epsilon])^2])/(4*\[Beta]^2*(d^2 - \[Delta]^2)), -(-(d^2*\[Beta]^2) - 2*d*e*\[Beta]^2 + \[Beta]^2*\[Delta]^2 + 2*\[Beta]^2*\[Delta]*\[Epsilon] + Sqrt[\[Beta]^4*(d^2 + 2*e*\[Delta] - \[Delta]^2 - 2*d*\[Epsilon])^2])/(4*\[Beta]^2*(d^2 - \[Delta]^2)), (2 + (d^2 + 2*d*e - \[Delta]*(\[Delta] + 2*\[Epsilon]))/(d^2 - \[Delta]^2) - (Sqrt[(d + a*\[Beta])^2/(2*a*d*\[Beta] + a^2*\[Beta]^2 + \[Delta]^2)]*(d^2*(\[Beta]^2 - \[Delta]) + \[Delta]^2*(2*e - \[Beta]^2 + \[Delta]) - 2*d*\[Delta]*\[Epsilon] + a*\[Beta]*(d^2 + 2*d*e - \[Delta]*(\[Delta] + 2*\[Epsilon]))))/((d + a*\[Beta])*(d^2 - \[Delta]^2)))/4, 1/2 - Sqrt[(d + a*\[Beta])^2/(2*a*d*\[Beta] + a^2*\[Beta]^2 + \[Delta]^2)]/2])/((d + a*\[Beta])*(d^2 - \[Delta]^2)*Hypergeometric2F1[(5*d^2*\[Beta]^2 + 2*d*e*\[Beta]^2 - 5*\[Beta]^2*\[Delta]^2 - 2*\[Beta]^2*\[Delta]*\[Epsilon] + Sqrt[\[Beta]^4*(d^2 + 2*e*\[Delta] - \[Delta]^2 - 2*d*\[Epsilon])^2])/(4*\[Beta]^2*(d^2 - \[Delta]^2)), -(-5*d^2*\[Beta]^2 - 2*d*e*\[Beta]^2 + 5*\[Beta]^2*\[Delta]^2 + 2*\[Beta]^2*\[Delta]*\[Epsilon] + Sqrt[\[Beta]^4*(d^2 + 2*e*\[Delta] - \[Delta]^2 - 2*d*\[Epsilon])^2])/(4*\[Beta]^2*(d^2 - \[Delta]^2)), (6 + (d^2 + 2*d*e - \[Delta]*(\[Delta] + 2*\[Epsilon]))/(d^2 - \[Delta]^2) - (Sqrt[(d + a*\[Beta])^2/(2*a*d*\[Beta] + a^2*\[Beta]^2 + \[Delta]^2)]*(d^2*(\[Beta]^2 - \[Delta]) + \[Delta]^2*(2*e - \[Beta]^2 + \[Delta]) - 2*d*\[Delta]*\[Epsilon] + a*\[Beta]*(d^2 + 2*d*e - \[Delta]*(\[Delta] + 2*\[Epsilon]))))/((d + a*\[Beta])*(d^2 - \[Delta]^2)))/4, 1/2 - Sqrt[(d + a*\[Beta])^2/(2*a*d*\[Beta] + a^2*\[Beta]^2 + \[Delta]^2)]/2])) == Inactive[ContinuedFractionK][e + d*k + (-1)^k*(k*\[Delta] + \[Epsilon]), a*k + (-1)^k*(-(a*k) + \[Beta]), {k, 1, Infinity}], Element[a | \[Beta] | d | e | \[Delta] | \[Epsilon], Complexes]]

(* {"LinearAlternating/LinearAlternating", 4}*)
ConditionalExpression[-(-2*d*\[Beta] - 4*e*\[Beta] + 2*\[Beta]^3 + 2*\[Beta]*\[Delta] + 2*\[Beta]*(d + e - \[Delta] - \[Epsilon]) + (2*\[Beta]*(-(d^3*(\[Beta]^2 + \[Delta])) + d*\[Delta]^2*(\[Beta]^2 + \[Delta] + 2*e*(-1 + Sqrt[(d - a*\[Beta])^2/(-2*a*d*\[Beta] + a^2*\[Beta]^2 + \[Delta]^2)])) - \[Delta]^3*Sqrt[(d - a*\[Beta])^2/(-2*a*d*\[Beta] + a^2*\[Beta]^2 + \[Delta]^2)]*(\[Delta] + 2*\[Epsilon]) + d^2*\[Delta]*(\[Delta]*Sqrt[(d - a*\[Beta])^2/(-2*a*d*\[Beta] + a^2*\[Beta]^2 + \[Delta]^2)] + 2*\[Epsilon]) + a^2*\[Beta]^2*(-1 + Sqrt[(d - a*\[Beta])^2/(-2*a*d*\[Beta] + a^2*\[Beta]^2 + \[Delta]^2)])*(d^2 + 2*d*e - \[Delta]*(\[Delta] + 2*\[Epsilon])) - a*\[Beta]*(\[Delta]^2*(-2*e + \[Beta]^2 + \[Delta]) + d^3*(-1 + 2*Sqrt[(d - a*\[Beta])^2/(-2*a*d*\[Beta] + a^2*\[Beta]^2 + \[Delta]^2)]) - d^2*(2*e + \[Beta]^2 + \[Delta] - 4*e*Sqrt[(d - a*\[Beta])^2/(-2*a*d*\[Beta] + a^2*\[Beta]^2 + \[Delta]^2)]) - d*\[Delta]*(\[Delta]*(-1 + 2*Sqrt[(d - a*\[Beta])^2/(-2*a*d*\[Beta] + a^2*\[Beta]^2 + \[Delta]^2)]) + 4*(-1 + Sqrt[(d - a*\[Beta])^2/(-2*a*d*\[Beta] + a^2*\[Beta]^2 + \[Delta]^2)])*\[Epsilon])))*Hypergeometric2F1[(-(d^2*\[Beta]^2) + 2*d*e*\[Beta]^2 + \[Beta]^2*\[Delta]^2 - 2*\[Beta]^2*\[Delta]*\[Epsilon] + Sqrt[\[Beta]^4*(d^2 - \[Delta]*(2*e + \[Delta]) + 2*d*\[Epsilon])^2])/(4*\[Beta]^2*(d^2 - \[Delta]^2)), -(d^2*\[Beta]^2 - 2*d*e*\[Beta]^2 - \[Beta]^2*\[Delta]^2 + 2*\[Beta]^2*\[Delta]*\[Epsilon] + Sqrt[\[Beta]^4*(d^2 - \[Delta]*(2*e + \[Delta]) + 2*d*\[Epsilon])^2])/(4*\[Beta]^2*(d^2 - \[Delta]^2)), (1 + (-d^2 + 2*d*e + \[Delta]*(\[Delta] - 2*\[Epsilon]))/(2*(d^2 - \[Delta]^2)) + (Sqrt[(d - a*\[Beta])^2/(-2*a*d*\[Beta] + a^2*\[Beta]^2 + \[Delta]^2)]*(-(d^2*(\[Beta]^2 + \[Delta])) + \[Delta]^2*(-2*e + \[Beta]^2 + \[Delta]) + 2*d*\[Delta]*\[Epsilon] + a*\[Beta]*(d^2 + 2*d*e - \[Delta]*(\[Delta] + 2*\[Epsilon]))))/(2*(d - a*\[Beta])*(d^2 - \[Delta]^2)))/2, (1 - Sqrt[(d - a*\[Beta])^2/(-2*a*d*\[Beta] + a^2*\[Beta]^2 + \[Delta]^2)])/2])/((d - a*\[Beta])*(d^2 - \[Delta]^2)*Hypergeometric2F1[(3*d^2*\[Beta]^2 + 2*d*e*\[Beta]^2 - 3*\[Beta]^2*\[Delta]^2 - 2*\[Beta]^2*\[Delta]*\[Epsilon] + Sqrt[\[Beta]^4*(d^2 - \[Delta]*(2*e + \[Delta]) + 2*d*\[Epsilon])^2])/(4*\[Beta]^2*(d^2 - \[Delta]^2)), -(-3*d^2*\[Beta]^2 - 2*d*e*\[Beta]^2 + 3*\[Beta]^2*\[Delta]^2 + 2*\[Beta]^2*\[Delta]*\[Epsilon] + Sqrt[\[Beta]^4*(d^2 - \[Delta]*(2*e + \[Delta]) + 2*d*\[Epsilon])^2])/(4*\[Beta]^2*(d^2 - \[Delta]^2)), (3 + (-d^2 + 2*d*e + \[Delta]*(\[Delta] - 2*\[Epsilon]))/(2*(d^2 - \[Delta]^2)) + (Sqrt[(d - a*\[Beta])^2/(-2*a*d*\[Beta] + a^2*\[Beta]^2 + \[Delta]^2)]*(-(d^2*(\[Beta]^2 + \[Delta])) + \[Delta]^2*(-2*e + \[Beta]^2 + \[Delta]) + 2*d*\[Delta]*\[Epsilon] + a*\[Beta]*(d^2 + 2*d*e - \[Delta]*(\[Delta] + 2*\[Epsilon]))))/(2*(d - a*\[Beta])*(d^2 - \[Delta]^2)))/2, (1 - Sqrt[(d - a*\[Beta])^2/(-2*a*d*\[Beta] + a^2*\[Beta]^2 + \[Delta]^2)])/2]))/(2*\[Beta]^2) == Inactive[ContinuedFractionK][e + d*k + (-1)^k*(k*\[Delta] + \[Epsilon]), a*k + (-1)^k*(a*k + \[Beta]), {k, 1, Infinity}], Element[a | \[Beta] | d | e | \[Delta] | \[Epsilon], Complexes]]

(* {"LinearAlternating/LinearAlternating", 5}*)
ConditionalExpression[(b*(d + e - \[Delta] - \[Epsilon]))/(-d - e + \[Delta] + \[Epsilon] + ((b^2*(d^3 - d*\[Delta]^2) + \[Delta]*(d^3 - d*\[Delta]*(\[Delta] - 2*e*(-1 + Sqrt[(a*b + d)^2/(a^2*b^2 + 2*a*b*d + \[Delta]^2)])) - \[Delta]^2*Sqrt[(a*b + d)^2/(a^2*b^2 + 2*a*b*d + \[Delta]^2)]*(3*\[Delta] + 2*\[Epsilon]) + d^2*(3*\[Delta]*Sqrt[(a*b + d)^2/(a^2*b^2 + 2*a*b*d + \[Delta]^2)] + 2*\[Epsilon])) + a^2*b^2*(2*d*e*(-1 + Sqrt[(a*b + d)^2/(a^2*b^2 + 2*a*b*d + \[Delta]^2)]) + d^2*(-1 + 3*Sqrt[(a*b + d)^2/(a^2*b^2 + 2*a*b*d + \[Delta]^2)]) + \[Delta]*(\[Delta] - 3*\[Delta]*Sqrt[(a*b + d)^2/(a^2*b^2 + 2*a*b*d + \[Delta]^2)] - 2*(-1 + Sqrt[(a*b + d)^2/(a^2*b^2 + 2*a*b*d + \[Delta]^2)])*\[Epsilon])) + a*b*(-(\[Delta]^2*(2*e + \[Delta])) + b^2*(d^2 - \[Delta]^2) + d^3*(-1 + 6*Sqrt[(a*b + d)^2/(a^2*b^2 + 2*a*b*d + \[Delta]^2)]) + d^2*(-2*e + \[Delta] + 4*e*Sqrt[(a*b + d)^2/(a^2*b^2 + 2*a*b*d + \[Delta]^2)]) - d*\[Delta]*(\[Delta]*(-1 + 6*Sqrt[(a*b + d)^2/(a^2*b^2 + 2*a*b*d + \[Delta]^2)]) + 4*(-1 + Sqrt[(a*b + d)^2/(a^2*b^2 + 2*a*b*d + \[Delta]^2)])*\[Epsilon])))*Hypergeometric2F1[(b^2*d^2 + 2*b^2*d*e - b^2*\[Delta]^2 - 2*b^2*\[Delta]*\[Epsilon] + Sqrt[b^4*(d^2 + 2*e*\[Delta] - \[Delta]^2 - 2*d*\[Epsilon])^2])/(4*b^2*(d^2 - \[Delta]^2)), -(-(b^2*d^2) - 2*b^2*d*e + b^2*\[Delta]^2 + 2*b^2*\[Delta]*\[Epsilon] + Sqrt[b^4*(d^2 + 2*e*\[Delta] - \[Delta]^2 - 2*d*\[Epsilon])^2])/(4*b^2*(d^2 - \[Delta]^2)), (2 + (d^2 + 2*d*e - \[Delta]*(\[Delta] + 2*\[Epsilon]))/(d^2 - \[Delta]^2) - (Sqrt[(a*b + d)^2/(a^2*b^2 + 2*a*b*d + \[Delta]^2)]*(b^2*(-d^2 + \[Delta]^2) + \[Delta]*(-d^2 + 2*e*\[Delta] + \[Delta]^2 - 2*d*\[Epsilon]) + a*b*(d^2 + 2*d*e - \[Delta]*(\[Delta] + 2*\[Epsilon]))))/((a*b + d)*(d^2 - \[Delta]^2)))/4, 1/2 - Sqrt[(a*b + d)^2/(a^2*b^2 + 2*a*b*d + \[Delta]^2)]/2])/((a*b + d)*(d^2 - \[Delta]^2)*Hypergeometric2F1[(5*b^2*d^2 + 2*b^2*d*e - 5*b^2*\[Delta]^2 - 2*b^2*\[Delta]*\[Epsilon] + Sqrt[b^4*(d^2 + 2*e*\[Delta] - \[Delta]^2 - 2*d*\[Epsilon])^2])/(4*b^2*(d^2 - \[Delta]^2)), -(-5*b^2*d^2 - 2*b^2*d*e + 5*b^2*\[Delta]^2 + 2*b^2*\[Delta]*\[Epsilon] + Sqrt[b^4*(d^2 + 2*e*\[Delta] - \[Delta]^2 - 2*d*\[Epsilon])^2])/(4*b^2*(d^2 - \[Delta]^2)), (6 + (d^2 + 2*d*e - \[Delta]*(\[Delta] + 2*\[Epsilon]))/(d^2 - \[Delta]^2) - (Sqrt[(a*b + d)^2/(a^2*b^2 + 2*a*b*d + \[Delta]^2)]*(b^2*(-d^2 + \[Delta]^2) + \[Delta]*(-d^2 + 2*e*\[Delta] + \[Delta]^2 - 2*d*\[Epsilon]) + a*b*(d^2 + 2*d*e - \[Delta]*(\[Delta] + 2*\[Epsilon]))))/((a*b + d)*(d^2 - \[Delta]^2)))/4, 1/2 - Sqrt[(a*b + d)^2/(a^2*b^2 + 2*a*b*d + \[Delta]^2)]/2])) == Inactive[ContinuedFractionK][e + d*k + (-1)^k*(k*\[Delta] + \[Epsilon]), b - (-1 + (-1)^k)*a*k, {k, 1, Infinity}], Element[a | b | d | e | \[Delta] | \[Epsilon], Complexes]]

(* {"LinearAlternating/LinearAlternating", 6}*)
ConditionalExpression[-((b^2 + e + \[Epsilon] - ((b^2*(d^3 - d*\[Delta]^2) + a^2*b^2*(-1 + Sqrt[(a*b + d)^2/(a^2*b^2 + 2*a*b*d + \[Delta]^2)])*(d^2 + 2*d*e - \[Delta]*(\[Delta] + 2*\[Epsilon])) + \[Delta]*(-d^3 + d*\[Delta]*(\[Delta] + 2*e*(-1 + Sqrt[(a*b + d)^2/(a^2*b^2 + 2*a*b*d + \[Delta]^2)])) - \[Delta]^2*Sqrt[(a*b + d)^2/(a^2*b^2 + 2*a*b*d + \[Delta]^2)]*(\[Delta] + 2*\[Epsilon]) + d^2*(\[Delta]*Sqrt[(a*b + d)^2/(a^2*b^2 + 2*a*b*d + \[Delta]^2)] + 2*\[Epsilon])) + a*b*(\[Delta]^2*(-2*e + \[Delta]) + b^2*(d^2 - \[Delta]^2) + d^3*(-1 + 2*Sqrt[(a*b + d)^2/(a^2*b^2 + 2*a*b*d + \[Delta]^2)]) + d^2*(-2*e - \[Delta] + 4*e*Sqrt[(a*b + d)^2/(a^2*b^2 + 2*a*b*d + \[Delta]^2)]) - d*\[Delta]*(\[Delta]*(-1 + 2*Sqrt[(a*b + d)^2/(a^2*b^2 + 2*a*b*d + \[Delta]^2)]) + 4*(-1 + Sqrt[(a*b + d)^2/(a^2*b^2 + 2*a*b*d + \[Delta]^2)])*\[Epsilon])))*Hypergeometric2F1[(-(b^2*d^2) + 2*b^2*d*e + b^2*\[Delta]^2 - 2*b^2*\[Delta]*\[Epsilon] + Sqrt[b^4*(d^2 - \[Delta]*(2*e + \[Delta]) + 2*d*\[Epsilon])^2])/(4*b^2*(d^2 - \[Delta]^2)), -(b^2*d^2 - 2*b^2*d*e - b^2*\[Delta]^2 + 2*b^2*\[Delta]*\[Epsilon] + Sqrt[b^4*(d^2 - \[Delta]*(2*e + \[Delta]) + 2*d*\[Epsilon])^2])/(4*b^2*(d^2 - \[Delta]^2)), (d^3 + \[Delta]^2*(-b^2 - 2*e + \[Delta])*Sqrt[(a*b + d)^2/(a^2*b^2 + 2*a*b*d + \[Delta]^2)] + d^2*(2*e + (b^2 - \[Delta])*Sqrt[(a*b + d)^2/(a^2*b^2 + 2*a*b*d + \[Delta]^2)]) - d*\[Delta]*(\[Delta] - 2*(-1 + Sqrt[(a*b + d)^2/(a^2*b^2 + 2*a*b*d + \[Delta]^2)])*\[Epsilon]) - a*b*(-1 + Sqrt[(a*b + d)^2/(a^2*b^2 + 2*a*b*d + \[Delta]^2)])*(d^2 + 2*d*e - \[Delta]*(\[Delta] + 2*\[Epsilon])))/(4*(a*b + d)*(d^2 - \[Delta]^2)), 1/2 - Sqrt[(a*b + d)^2/(a^2*b^2 + 2*a*b*d + \[Delta]^2)]/2])/((a*b + d)*(d^2 - \[Delta]^2)*Hypergeometric2F1[(3*b^2*d^2 + 2*b^2*d*e - 3*b^2*\[Delta]^2 - 2*b^2*\[Delta]*\[Epsilon] + Sqrt[b^4*(d^2 - \[Delta]*(2*e + \[Delta]) + 2*d*\[Epsilon])^2])/(4*b^2*(d^2 - \[Delta]^2)), -(-3*b^2*d^2 - 2*b^2*d*e + 3*b^2*\[Delta]^2 + 2*b^2*\[Delta]*\[Epsilon] + Sqrt[b^4*(d^2 - \[Delta]*(2*e + \[Delta]) + 2*d*\[Epsilon])^2])/(4*b^2*(d^2 - \[Delta]^2)), (6 + (-d^2 + 2*d*e + \[Delta]*(\[Delta] - 2*\[Epsilon]))/(d^2 - \[Delta]^2) - (Sqrt[(a*b + d)^2/(a^2*b^2 + 2*a*b*d + \[Delta]^2)]*(b^2*(-d^2 + \[Delta]^2) + \[Delta]*(d^2 + 2*e*\[Delta] - \[Delta]^2 - 2*d*\[Epsilon]) + a*b*(d^2 + 2*d*e - \[Delta]*(\[Delta] + 2*\[Epsilon]))))/((a*b + d)*(d^2 - \[Delta]^2)))/4, 1/2 - Sqrt[(a*b + d)^2/(a^2*b^2 + 2*a*b*d + \[Delta]^2)]/2]))/b) == Inactive[ContinuedFractionK][e + d*k + (-1)^k*(k*\[Delta] + \[Epsilon]), b + (1 + (-1)^k)*a*k, {k, 1, Infinity}], Element[a | b | d | e | \[Delta] | \[Epsilon], Complexes]]

(* {"LinearAlternating/LinearAlternating", 7}*)
ConditionalExpression[-(((b + \[Beta])^2*(d - \[Delta] - \[Epsilon]))/(2*a*b^2 + b^3 + 3*b*d + 4*a*b*\[Beta] + b^2*\[Beta] + 3*d*\[Beta] + 2*a*\[Beta]^2 - b*\[Beta]^2 - \[Beta]^3 + b*\[Delta] + \[Beta]*\[Delta] - (b + \[Beta])*(b^2 + 2*d - \[Beta]^2 + 2*a*(b + \[Beta]) + 2*\[Delta] + \[Epsilon]) - ((b + \[Beta])*(b^2*d^3 - d^3*\[Beta]^2 + d^3*\[Delta] - b^2*d*\[Delta]^2 + d*\[Beta]^2*\[Delta]^2 - d*\[Delta]^3 + 3*d^2*\[Delta]^2*Sqrt[(d + a*(b + \[Beta]))^2/(2*a*d*(b + \[Beta]) + a^2*(b + \[Beta])^2 + \[Delta]^2)] - 3*\[Delta]^4*Sqrt[(d + a*(b + \[Beta]))^2/(2*a*d*(b + \[Beta]) + a^2*(b + \[Beta])^2 + \[Delta]^2)] + 2*d^2*\[Delta]*\[Epsilon] - 2*\[Delta]^3*Sqrt[(d + a*(b + \[Beta]))^2/(2*a*d*(b + \[Beta]) + a^2*(b + \[Beta])^2 + \[Delta]^2)]*\[Epsilon] + a*(b + \[Beta])*(-d^3 - d^2*\[Beta]^2 + d^2*\[Delta] + d*\[Delta]^2 + \[Beta]^2*\[Delta]^2 - \[Delta]^3 + b^2*(d^2 - \[Delta]^2) + 6*d^3*Sqrt[(d + a*(b + \[Beta]))^2/(2*a*d*(b + \[Beta]) + a^2*(b + \[Beta])^2 + \[Delta]^2)] - 6*d*\[Delta]^2*Sqrt[(d + a*(b + \[Beta]))^2/(2*a*d*(b + \[Beta]) + a^2*(b + \[Beta])^2 + \[Delta]^2)] + 4*d*\[Delta]*\[Epsilon] - 4*d*\[Delta]*Sqrt[(d + a*(b + \[Beta]))^2/(2*a*d*(b + \[Beta]) + a^2*(b + \[Beta])^2 + \[Delta]^2)]*\[Epsilon]) + a^2*(b + \[Beta])^2*(d^2*(-1 + 3*Sqrt[(d + a*(b + \[Beta]))^2/(2*a*d*(b + \[Beta]) + a^2*(b + \[Beta])^2 + \[Delta]^2)]) + \[Delta]*(\[Delta] - 3*\[Delta]*Sqrt[(d + a*(b + \[Beta]))^2/(2*a*d*(b + \[Beta]) + a^2*(b + \[Beta])^2 + \[Delta]^2)] + 2*\[Epsilon] - 2*Sqrt[(d + a*(b + \[Beta]))^2/(2*a*d*(b + \[Beta]) + a^2*(b + \[Beta])^2 + \[Delta]^2)]*\[Epsilon])))*Hypergeometric2F1[(d^2*\[Beta]^2 - \[Beta]^2*\[Delta]^2 - 2*\[Beta]^2*\[Delta]*\[Epsilon] - Sqrt[(b + \[Beta])^4*(-d^2 + \[Delta]^2 + 2*d*\[Epsilon])^2] + b^2*(d^2 - \[Delta]*(\[Delta] + 2*\[Epsilon])) + 2*b*\[Beta]*(d^2 - \[Delta]*(\[Delta] + 2*\[Epsilon])))/(4*(b + \[Beta])^2*(d^2 - \[Delta]^2)), (d^2*\[Beta]^2 - \[Beta]^2*\[Delta]^2 - 2*\[Beta]^2*\[Delta]*\[Epsilon] + Sqrt[(b + \[Beta])^4*(-d^2 + \[Delta]^2 + 2*d*\[Epsilon])^2] + b^2*(d^2 - \[Delta]*(\[Delta] + 2*\[Epsilon])) + 2*b*\[Beta]*(d^2 - \[Delta]*(\[Delta] + 2*\[Epsilon])))/(4*(b + \[Beta])^2*(d^2 - \[Delta]^2)), -(-3*d^3 - d^2*(b^2 - \[Beta]^2 + \[Delta])*Sqrt[(d + a*(b + \[Beta]))^2/(2*a*d*(b + \[Beta]) + a^2*(b + \[Beta])^2 + \[Delta]^2)] + \[Delta]^2*(b^2 - \[Beta]^2 + \[Delta])*Sqrt[(d + a*(b + \[Beta]))^2/(2*a*d*(b + \[Beta]) + a^2*(b + \[Beta])^2 + \[Delta]^2)] + d*\[Delta]*(3*\[Delta] - 2*(-1 + Sqrt[(d + a*(b + \[Beta]))^2/(2*a*d*(b + \[Beta]) + a^2*(b + \[Beta])^2 + \[Delta]^2)])*\[Epsilon]) + a*(b + \[Beta])*(d^2*(-3 + Sqrt[(d + a*(b + \[Beta]))^2/(2*a*d*(b + \[Beta]) + a^2*(b + \[Beta])^2 + \[Delta]^2)]) + \[Delta]*(3*\[Delta] - \[Delta]*Sqrt[(d + a*(b + \[Beta]))^2/(2*a*d*(b + \[Beta]) + a^2*(b + \[Beta])^2 + \[Delta]^2)] + 2*\[Epsilon] - 2*Sqrt[(d + a*(b + \[Beta]))^2/(2*a*d*(b + \[Beta]) + a^2*(b + \[Beta])^2 + \[Delta]^2)]*\[Epsilon])))/(4*(d + a*(b + \[Beta]))*(d^2 - \[Delta]^2)), (1 - Sqrt[(d + a*(b + \[Beta]))^2/(2*a*d*(b + \[Beta]) + a^2*(b + \[Beta])^2 + \[Delta]^2)])/2])/((d + a*(b + \[Beta]))*(d^2 - \[Delta]^2)*Hypergeometric2F1[(5*d^2*\[Beta]^2 - 5*\[Beta]^2*\[Delta]^2 - 2*\[Beta]^2*\[Delta]*\[Epsilon] - Sqrt[(b + \[Beta])^4*(-d^2 + \[Delta]^2 + 2*d*\[Epsilon])^2] + b^2*(5*d^2 - \[Delta]*(5*\[Delta] + 2*\[Epsilon])) + 2*b*\[Beta]*(5*d^2 - \[Delta]*(5*\[Delta] + 2*\[Epsilon])))/(4*(b + \[Beta])^2*(d^2 - \[Delta]^2)), (5*d^2*\[Beta]^2 - 5*\[Beta]^2*\[Delta]^2 - 2*\[Beta]^2*\[Delta]*\[Epsilon] + Sqrt[(b + \[Beta])^4*(-d^2 + \[Delta]^2 + 2*d*\[Epsilon])^2] + b^2*(5*d^2 - \[Delta]*(5*\[Delta] + 2*\[Epsilon])) + 2*b*\[Beta]*(5*d^2 - \[Delta]*(5*\[Delta] + 2*\[Epsilon])))/(4*(b + \[Beta])^2*(d^2 - \[Delta]^2)), -(-7*d^3 - d^2*(b^2 - \[Beta]^2 + \[Delta])*Sqrt[(d + a*(b + \[Beta]))^2/(2*a*d*(b + \[Beta]) + a^2*(b + \[Beta])^2 + \[Delta]^2)] + \[Delta]^2*(b^2 - \[Beta]^2 + \[Delta])*Sqrt[(d + a*(b + \[Beta]))^2/(2*a*d*(b + \[Beta]) + a^2*(b + \[Beta])^2 + \[Delta]^2)] + d*\[Delta]*(7*\[Delta] - 2*(-1 + Sqrt[(d + a*(b + \[Beta]))^2/(2*a*d*(b + \[Beta]) + a^2*(b + \[Beta])^2 + \[Delta]^2)])*\[Epsilon]) + a*(b + \[Beta])*(d^2*(-7 + Sqrt[(d + a*(b + \[Beta]))^2/(2*a*d*(b + \[Beta]) + a^2*(b + \[Beta])^2 + \[Delta]^2)]) + \[Delta]*(7*\[Delta] - \[Delta]*Sqrt[(d + a*(b + \[Beta]))^2/(2*a*d*(b + \[Beta]) + a^2*(b + \[Beta])^2 + \[Delta]^2)] + 2*\[Epsilon] - 2*Sqrt[(d + a*(b + \[Beta]))^2/(2*a*d*(b + \[Beta]) + a^2*(b + \[Beta])^2 + \[Delta]^2)]*\[Epsilon])))/(4*(d + a*(b + \[Beta]))*(d^2 - \[Delta]^2)), (1 - Sqrt[(d + a*(b + \[Beta]))^2/(2*a*d*(b + \[Beta]) + a^2*(b + \[Beta])^2 + \[Delta]^2)])/2]))) == Inactive[ContinuedFractionK][d*k + (-1)^k*(k*\[Delta] + \[Epsilon]), b + a*k + (-1)^k*(-(a*k) + \[Beta]), {k, 1, Infinity}], Element[a | b | \[Beta] | d | \[Delta] | \[Epsilon], Complexes]]

(* {"LinearAlternating/LinearAlternating", 8}*)
ConditionalExpression[(-2*b^3 - 2*b*d + 2*b^2*\[Beta] + 2*d*\[Beta] + 2*b*\[Beta]^2 - 2*\[Beta]^3 + 2*b*\[Delta] - 2*\[Beta]*\[Delta] + 2*(b - \[Beta])*(d - \[Delta] - \[Epsilon]) + (2*(b - \[Beta])*(b^2*d^3 - d^3*\[Beta]^2 - d^3*\[Delta] - b^2*d*\[Delta]^2 + d*\[Beta]^2*\[Delta]^2 + d*\[Delta]^3 + d^2*\[Delta]^2*Sqrt[(d + a*(b - \[Beta]))^2/(2*a*d*(b - \[Beta]) + a^2*(b - \[Beta])^2 + \[Delta]^2)] - \[Delta]^4*Sqrt[(d + a*(b - \[Beta]))^2/(2*a*d*(b - \[Beta]) + a^2*(b - \[Beta])^2 + \[Delta]^2)] + 2*d^2*\[Delta]*\[Epsilon] - 2*\[Delta]^3*Sqrt[(d + a*(b - \[Beta]))^2/(2*a*d*(b - \[Beta]) + a^2*(b - \[Beta])^2 + \[Delta]^2)]*\[Epsilon] + a*(b - \[Beta])*(-d^3 - d^2*\[Beta]^2 - d^2*\[Delta] + d*\[Delta]^2 + \[Beta]^2*\[Delta]^2 + \[Delta]^3 + b^2*(d^2 - \[Delta]^2) + 2*d^3*Sqrt[(d + a*(b - \[Beta]))^2/(2*a*d*(b - \[Beta]) + a^2*(b - \[Beta])^2 + \[Delta]^2)] - 2*d*\[Delta]^2*Sqrt[(d + a*(b - \[Beta]))^2/(2*a*d*(b - \[Beta]) + a^2*(b - \[Beta])^2 + \[Delta]^2)] + 4*d*\[Delta]*\[Epsilon] - 4*d*\[Delta]*Sqrt[(d + a*(b - \[Beta]))^2/(2*a*d*(b - \[Beta]) + a^2*(b - \[Beta])^2 + \[Delta]^2)]*\[Epsilon]) + a^2*(b - \[Beta])^2*(-1 + Sqrt[(d + a*(b - \[Beta]))^2/(2*a*d*(b - \[Beta]) + a^2*(b - \[Beta])^2 + \[Delta]^2)])*(d^2 - \[Delta]*(\[Delta] + 2*\[Epsilon])))*Hypergeometric2F1[(-(d^2*\[Beta]^2) + \[Beta]^2*\[Delta]^2 + 2*b*\[Beta]*(d^2 - \[Delta]*(\[Delta] - 2*\[Epsilon])) + b^2*(-d^2 + \[Delta]*(\[Delta] - 2*\[Epsilon])) - 2*\[Beta]^2*\[Delta]*\[Epsilon] - Sqrt[(b - \[Beta])^4*(d^2 - \[Delta]^2 + 2*d*\[Epsilon])^2])/(4*(b - \[Beta])^2*(d^2 - \[Delta]^2)), (-(d^2*\[Beta]^2) + \[Beta]^2*\[Delta]^2 + 2*b*\[Beta]*(d^2 - \[Delta]*(\[Delta] - 2*\[Epsilon])) + b^2*(-d^2 + \[Delta]*(\[Delta] - 2*\[Epsilon])) - 2*\[Beta]^2*\[Delta]*\[Epsilon] + Sqrt[(b - \[Beta])^4*(d^2 - \[Delta]^2 + 2*d*\[Epsilon])^2])/(4*(b - \[Beta])^2*(d^2 - \[Delta]^2)), (d^3 + d^2*(b^2 - \[Beta]^2 - \[Delta])*Sqrt[(d + a*(b - \[Beta]))^2/(2*a*d*(b - \[Beta]) + a^2*(b - \[Beta])^2 + \[Delta]^2)] + \[Delta]^2*(-b^2 + \[Beta]^2 + \[Delta])*Sqrt[(d + a*(b - \[Beta]))^2/(2*a*d*(b - \[Beta]) + a^2*(b - \[Beta])^2 + \[Delta]^2)] - d*\[Delta]*(\[Delta] - 2*(-1 + Sqrt[(d + a*(b - \[Beta]))^2/(2*a*d*(b - \[Beta]) + a^2*(b - \[Beta])^2 + \[Delta]^2)])*\[Epsilon]) - a*(b - \[Beta])*(-1 + Sqrt[(d + a*(b - \[Beta]))^2/(2*a*d*(b - \[Beta]) + a^2*(b - \[Beta])^2 + \[Delta]^2)])*(d^2 - \[Delta]*(\[Delta] + 2*\[Epsilon])))/(4*(d + a*(b - \[Beta]))*(d^2 - \[Delta]^2)), (1 - Sqrt[(d + a*(b - \[Beta]))^2/(2*a*d*(b - \[Beta]) + a^2*(b - \[Beta])^2 + \[Delta]^2)])/2])/((d + a*(b - \[Beta]))*(d^2 - \[Delta]^2)*Hypergeometric2F1[(3*d^2*\[Beta]^2 - 3*\[Beta]^2*\[Delta]^2 - 2*\[Beta]^2*\[Delta]*\[Epsilon] - Sqrt[(b - \[Beta])^4*(d^2 - \[Delta]^2 + 2*d*\[Epsilon])^2] + b^2*(3*d^2 - \[Delta]*(3*\[Delta] + 2*\[Epsilon])) + b*(-6*d^2*\[Beta] + 2*\[Beta]*\[Delta]*(3*\[Delta] + 2*\[Epsilon])))/(4*(b - \[Beta])^2*(d^2 - \[Delta]^2)), (3*d^2*\[Beta]^2 - 3*\[Beta]^2*\[Delta]^2 - 2*\[Beta]^2*\[Delta]*\[Epsilon] + Sqrt[(b - \[Beta])^4*(d^2 - \[Delta]^2 + 2*d*\[Epsilon])^2] + b^2*(3*d^2 - \[Delta]*(3*\[Delta] + 2*\[Epsilon])) + b*(-6*d^2*\[Beta] + 2*\[Beta]*\[Delta]*(3*\[Delta] + 2*\[Epsilon])))/(4*(b - \[Beta])^2*(d^2 - \[Delta]^2)), (5*d^3 + d^2*(b^2 - \[Beta]^2 - \[Delta])*Sqrt[(d + a*(b - \[Beta]))^2/(2*a*d*(b - \[Beta]) + a^2*(b - \[Beta])^2 + \[Delta]^2)] + \[Delta]^2*(-b^2 + \[Beta]^2 + \[Delta])*Sqrt[(d + a*(b - \[Beta]))^2/(2*a*d*(b - \[Beta]) + a^2*(b - \[Beta])^2 + \[Delta]^2)] - d*\[Delta]*(5*\[Delta] - 2*(-1 + Sqrt[(d + a*(b - \[Beta]))^2/(2*a*d*(b - \[Beta]) + a^2*(b - \[Beta])^2 + \[Delta]^2)])*\[Epsilon]) - a*(b - \[Beta])*(d^2*(-5 + Sqrt[(d + a*(b - \[Beta]))^2/(2*a*d*(b - \[Beta]) + a^2*(b - \[Beta])^2 + \[Delta]^2)]) + \[Delta]*(5*\[Delta] - \[Delta]*Sqrt[(d + a*(b - \[Beta]))^2/(2*a*d*(b - \[Beta]) + a^2*(b - \[Beta])^2 + \[Delta]^2)] + 2*\[Epsilon] - 2*Sqrt[(d + a*(b - \[Beta]))^2/(2*a*d*(b - \[Beta]) + a^2*(b - \[Beta])^2 + \[Delta]^2)]*\[Epsilon])))/(4*(d + a*(b - \[Beta]))*(d^2 - \[Delta]^2)), (1 - Sqrt[(d + a*(b - \[Beta]))^2/(2*a*d*(b - \[Beta]) + a^2*(b - \[Beta])^2 + \[Delta]^2)])/2]))/(2*(b - \[Beta])^2) == Inactive[ContinuedFractionK][d*k + (-1)^k*(k*\[Delta] + \[Epsilon]), b + a*k + (-1)^k*(a*k + \[Beta]), {k, 1, Infinity}], Element[a | b | \[Beta] | d | \[Delta] | \[Epsilon], Complexes]]

(* {"LinearAlternating/LinearAlternating", 9}*)
ConditionalExpression[(\[Beta]*(d - \[Delta] - \[Epsilon]))/(-d + \[Delta] + \[Epsilon] + ((d*(\[Beta]^2 - \[Delta])*\[Delta]^2 + d^3*(-\[Beta]^2 + \[Delta]) - \[Delta]^3*Sqrt[(d + a*\[Beta])^2/(2*a*d*\[Beta] + a^2*\[Beta]^2 + \[Delta]^2)]*(3*\[Delta] + 2*\[Epsilon]) + d^2*\[Delta]*(3*\[Delta]*Sqrt[(d + a*\[Beta])^2/(2*a*d*\[Beta] + a^2*\[Beta]^2 + \[Delta]^2)] + 2*\[Epsilon]) + a^2*\[Beta]^2*(d^2*(-1 + 3*Sqrt[(d + a*\[Beta])^2/(2*a*d*\[Beta] + a^2*\[Beta]^2 + \[Delta]^2)]) + \[Delta]*(\[Delta] - 3*\[Delta]*Sqrt[(d + a*\[Beta])^2/(2*a*d*\[Beta] + a^2*\[Beta]^2 + \[Delta]^2)] + 2*\[Epsilon] - 2*Sqrt[(d + a*\[Beta])^2/(2*a*d*\[Beta] + a^2*\[Beta]^2 + \[Delta]^2)]*\[Epsilon])) - a*\[Beta]*(d^2*(\[Beta]^2 - \[Delta]) + \[Delta]^2*(-\[Beta]^2 + \[Delta]) + d^3*(1 - 6*Sqrt[(d + a*\[Beta])^2/(2*a*d*\[Beta] + a^2*\[Beta]^2 + \[Delta]^2)]) + d*\[Delta]*(\[Delta]*(-1 + 6*Sqrt[(d + a*\[Beta])^2/(2*a*d*\[Beta] + a^2*\[Beta]^2 + \[Delta]^2)]) + 4*(-1 + Sqrt[(d + a*\[Beta])^2/(2*a*d*\[Beta] + a^2*\[Beta]^2 + \[Delta]^2)])*\[Epsilon])))*Hypergeometric2F1[(d^2*\[Beta]^2 - \[Beta]^2*\[Delta]*(\[Delta] + 2*\[Epsilon]) + Sqrt[\[Beta]^4*(-d^2 + \[Delta]^2 + 2*d*\[Epsilon])^2])/(4*\[Beta]^2*(d^2 - \[Delta]^2)), -(-(d^2*\[Beta]^2) + \[Beta]^2*\[Delta]*(\[Delta] + 2*\[Epsilon]) + Sqrt[\[Beta]^4*(-d^2 + \[Delta]^2 + 2*d*\[Epsilon])^2])/(4*\[Beta]^2*(d^2 - \[Delta]^2)), (2 + (d^2 - \[Delta]*(\[Delta] + 2*\[Epsilon]))/(d^2 - \[Delta]^2) - (Sqrt[(d + a*\[Beta])^2/(2*a*d*\[Beta] + a^2*\[Beta]^2 + \[Delta]^2)]*(d^2*(\[Beta]^2 - \[Delta]) + \[Delta]^2*(-\[Beta]^2 + \[Delta]) - 2*d*\[Delta]*\[Epsilon] + a*\[Beta]*(d^2 - \[Delta]*(\[Delta] + 2*\[Epsilon]))))/((d + a*\[Beta])*(d^2 - \[Delta]^2)))/4, 1/2 - Sqrt[(d + a*\[Beta])^2/(2*a*d*\[Beta] + a^2*\[Beta]^2 + \[Delta]^2)]/2])/((d + a*\[Beta])*(d^2 - \[Delta]^2)*Hypergeometric2F1[(5*d^2*\[Beta]^2 - \[Beta]^2*\[Delta]*(5*\[Delta] + 2*\[Epsilon]) + Sqrt[\[Beta]^4*(-d^2 + \[Delta]^2 + 2*d*\[Epsilon])^2])/(4*\[Beta]^2*(d^2 - \[Delta]^2)), -(-5*d^2*\[Beta]^2 + \[Beta]^2*\[Delta]*(5*\[Delta] + 2*\[Epsilon]) + Sqrt[\[Beta]^4*(-d^2 + \[Delta]^2 + 2*d*\[Epsilon])^2])/(4*\[Beta]^2*(d^2 - \[Delta]^2)), (6 + (d^2 - \[Delta]*(\[Delta] + 2*\[Epsilon]))/(d^2 - \[Delta]^2) - (Sqrt[(d + a*\[Beta])^2/(2*a*d*\[Beta] + a^2*\[Beta]^2 + \[Delta]^2)]*(d^2*(\[Beta]^2 - \[Delta]) + \[Delta]^2*(-\[Beta]^2 + \[Delta]) - 2*d*\[Delta]*\[Epsilon] + a*\[Beta]*(d^2 - \[Delta]*(\[Delta] + 2*\[Epsilon]))))/((d + a*\[Beta])*(d^2 - \[Delta]^2)))/4, 1/2 - Sqrt[(d + a*\[Beta])^2/(2*a*d*\[Beta] + a^2*\[Beta]^2 + \[Delta]^2)]/2])) == Inactive[ContinuedFractionK][d*k + (-1)^k*(k*\[Delta] + \[Epsilon]), a*k + (-1)^k*(-(a*k) + \[Beta]), {k, 1, Infinity}], Element[a | \[Beta] | d | \[Delta] | \[Epsilon], Complexes]]

(* {"LinearAlternating/LinearAlternating", 10}*)
ConditionalExpression[-(-2*d*\[Beta] + 2*\[Beta]^3 + 2*\[Beta]*\[Delta] + 2*\[Beta]*(d - \[Delta] - \[Epsilon]) + (2*\[Beta]*(-(d^3*(\[Beta]^2 + \[Delta])) + d*\[Delta]^2*(\[Beta]^2 + \[Delta]) - \[Delta]^3*Sqrt[(d - a*\[Beta])^2/(-2*a*d*\[Beta] + a^2*\[Beta]^2 + \[Delta]^2)]*(\[Delta] + 2*\[Epsilon]) + d^2*\[Delta]*(\[Delta]*Sqrt[(d - a*\[Beta])^2/(-2*a*d*\[Beta] + a^2*\[Beta]^2 + \[Delta]^2)] + 2*\[Epsilon]) + a^2*\[Beta]^2*(-1 + Sqrt[(d - a*\[Beta])^2/(-2*a*d*\[Beta] + a^2*\[Beta]^2 + \[Delta]^2)])*(d^2 - \[Delta]*(\[Delta] + 2*\[Epsilon])) - a*(-(d^2*\[Beta]*(\[Beta]^2 + \[Delta])) + \[Beta]*\[Delta]^2*(\[Beta]^2 + \[Delta]) + d^3*\[Beta]*(-1 + 2*Sqrt[(d - a*\[Beta])^2/(-2*a*d*\[Beta] + a^2*\[Beta]^2 + \[Delta]^2)]) - d*\[Beta]*\[Delta]*(\[Delta]*(-1 + 2*Sqrt[(d - a*\[Beta])^2/(-2*a*d*\[Beta] + a^2*\[Beta]^2 + \[Delta]^2)]) + 4*(-1 + Sqrt[(d - a*\[Beta])^2/(-2*a*d*\[Beta] + a^2*\[Beta]^2 + \[Delta]^2)])*\[Epsilon])))*Hypergeometric2F1[-(d^2*\[Beta]^2 - \[Beta]^2*\[Delta]*(\[Delta] - 2*\[Epsilon]) + Sqrt[\[Beta]^4*(d^2 - \[Delta]^2 + 2*d*\[Epsilon])^2])/(4*\[Beta]^2*(d^2 - \[Delta]^2)), (-(d^2*\[Beta]^2) + \[Beta]^2*\[Delta]*(\[Delta] - 2*\[Epsilon]) + Sqrt[\[Beta]^4*(d^2 - \[Delta]^2 + 2*d*\[Epsilon])^2])/(4*\[Beta]^2*(d^2 - \[Delta]^2)), (1 - (d^2 - \[Delta]^2 + 2*\[Delta]*\[Epsilon])/(2*d^2 - 2*\[Delta]^2) + (Sqrt[(d - a*\[Beta])^2/(-2*a*d*\[Beta] + a^2*\[Beta]^2 + \[Delta]^2)]*(-(d^2*(\[Beta]^2 + \[Delta])) + \[Delta]^2*(\[Beta]^2 + \[Delta]) + 2*d*\[Delta]*\[Epsilon] + a*\[Beta]*(d^2 - \[Delta]*(\[Delta] + 2*\[Epsilon]))))/(2*(d - a*\[Beta])*(d^2 - \[Delta]^2)))/2, (1 - Sqrt[(d - a*\[Beta])^2/(-2*a*d*\[Beta] + a^2*\[Beta]^2 + \[Delta]^2)])/2])/((d - a*\[Beta])*(d^2 - \[Delta]^2)*Hypergeometric2F1[(3*d^2*\[Beta]^2 - \[Beta]^2*\[Delta]*(3*\[Delta] + 2*\[Epsilon]) + Sqrt[\[Beta]^4*(d^2 - \[Delta]^2 + 2*d*\[Epsilon])^2])/(4*\[Beta]^2*(d^2 - \[Delta]^2)), -(-3*d^2*\[Beta]^2 + \[Beta]^2*\[Delta]*(3*\[Delta] + 2*\[Epsilon]) + Sqrt[\[Beta]^4*(d^2 - \[Delta]^2 + 2*d*\[Epsilon])^2])/(4*\[Beta]^2*(d^2 - \[Delta]^2)), (3 - (d^2 - \[Delta]^2 + 2*\[Delta]*\[Epsilon])/(2*d^2 - 2*\[Delta]^2) + (Sqrt[(d - a*\[Beta])^2/(-2*a*d*\[Beta] + a^2*\[Beta]^2 + \[Delta]^2)]*(-(d^2*(\[Beta]^2 + \[Delta])) + \[Delta]^2*(\[Beta]^2 + \[Delta]) + 2*d*\[Delta]*\[Epsilon] + a*\[Beta]*(d^2 - \[Delta]*(\[Delta] + 2*\[Epsilon]))))/(2*(d - a*\[Beta])*(d^2 - \[Delta]^2)))/2, (1 - Sqrt[(d - a*\[Beta])^2/(-2*a*d*\[Beta] + a^2*\[Beta]^2 + \[Delta]^2)])/2]))/(2*\[Beta]^2) == Inactive[ContinuedFractionK][d*k + (-1)^k*(k*\[Delta] + \[Epsilon]), a*k + (-1)^k*(a*k + \[Beta]), {k, 1, Infinity}], Element[a | \[Beta] | d | \[Delta] | \[Epsilon], Complexes]]

(* {"LinearAlternating/LinearAlternating", 11}*)
ConditionalExpression[(b*(d - \[Delta] - \[Epsilon]))/(-d + \[Delta] + \[Epsilon] + ((b^2*(d^3 - d*\[Delta]^2) + \[Delta]*(d^3 - d*\[Delta]^2 - \[Delta]^2*Sqrt[(a*b + d)^2/(a^2*b^2 + 2*a*b*d + \[Delta]^2)]*(3*\[Delta] + 2*\[Epsilon]) + d^2*(3*\[Delta]*Sqrt[(a*b + d)^2/(a^2*b^2 + 2*a*b*d + \[Delta]^2)] + 2*\[Epsilon])) + a^2*b^2*(d^2*(-1 + 3*Sqrt[(a*b + d)^2/(a^2*b^2 + 2*a*b*d + \[Delta]^2)]) + \[Delta]*(\[Delta] - 3*\[Delta]*Sqrt[(a*b + d)^2/(a^2*b^2 + 2*a*b*d + \[Delta]^2)] - 2*(-1 + Sqrt[(a*b + d)^2/(a^2*b^2 + 2*a*b*d + \[Delta]^2)])*\[Epsilon])) + a*b*(d^2*\[Delta] - \[Delta]^3 + b^2*(d^2 - \[Delta]^2) + d^3*(-1 + 6*Sqrt[(a*b + d)^2/(a^2*b^2 + 2*a*b*d + \[Delta]^2)]) - d*\[Delta]*(\[Delta]*(-1 + 6*Sqrt[(a*b + d)^2/(a^2*b^2 + 2*a*b*d + \[Delta]^2)]) + 4*(-1 + Sqrt[(a*b + d)^2/(a^2*b^2 + 2*a*b*d + \[Delta]^2)])*\[Epsilon])))*Hypergeometric2F1[(-Sqrt[b^4*(-d^2 + \[Delta]^2 + 2*d*\[Epsilon])^2] + b^2*(d^2 - \[Delta]*(\[Delta] + 2*\[Epsilon])))/(4*b^2*(d^2 - \[Delta]^2)), (Sqrt[b^4*(-d^2 + \[Delta]^2 + 2*d*\[Epsilon])^2] + b^2*(d^2 - \[Delta]*(\[Delta] + 2*\[Epsilon])))/(4*b^2*(d^2 - \[Delta]^2)), (2 + (d^2 - \[Delta]*(\[Delta] + 2*\[Epsilon]))/(d^2 - \[Delta]^2) - (Sqrt[(a*b + d)^2/(a^2*b^2 + 2*a*b*d + \[Delta]^2)]*(-(d^2*\[Delta]) + \[Delta]^3 + b^2*(-d^2 + \[Delta]^2) - 2*d*\[Delta]*\[Epsilon] + a*b*(d^2 - \[Delta]*(\[Delta] + 2*\[Epsilon]))))/((a*b + d)*(d^2 - \[Delta]^2)))/4, 1/2 - Sqrt[(a*b + d)^2/(a^2*b^2 + 2*a*b*d + \[Delta]^2)]/2])/((a*b + d)*(d^2 - \[Delta]^2)*Hypergeometric2F1[(-Sqrt[b^4*(-d^2 + \[Delta]^2 + 2*d*\[Epsilon])^2] + b^2*(5*d^2 - \[Delta]*(5*\[Delta] + 2*\[Epsilon])))/(4*b^2*(d^2 - \[Delta]^2)), (Sqrt[b^4*(-d^2 + \[Delta]^2 + 2*d*\[Epsilon])^2] + b^2*(5*d^2 - \[Delta]*(5*\[Delta] + 2*\[Epsilon])))/(4*b^2*(d^2 - \[Delta]^2)), (6 + (d^2 - \[Delta]*(\[Delta] + 2*\[Epsilon]))/(d^2 - \[Delta]^2) - (Sqrt[(a*b + d)^2/(a^2*b^2 + 2*a*b*d + \[Delta]^2)]*(-(d^2*\[Delta]) + \[Delta]^3 + b^2*(-d^2 + \[Delta]^2) - 2*d*\[Delta]*\[Epsilon] + a*b*(d^2 - \[Delta]*(\[Delta] + 2*\[Epsilon]))))/((a*b + d)*(d^2 - \[Delta]^2)))/4, 1/2 - Sqrt[(a*b + d)^2/(a^2*b^2 + 2*a*b*d + \[Delta]^2)]/2])) == Inactive[ContinuedFractionK][d*k + (-1)^k*(k*\[Delta] + \[Epsilon]), b - (-1 + (-1)^k)*a*k, {k, 1, Infinity}], Element[a | b | d | \[Delta] | \[Epsilon], Complexes]]

(* {"LinearAlternating/LinearAlternating", 12}*)
ConditionalExpression[-((b^2 + \[Epsilon] - ((b^2*(d^3 - d*\[Delta]^2) + a^2*b^2*(-1 + Sqrt[(a*b + d)^2/(a^2*b^2 + 2*a*b*d + \[Delta]^2)])*(d^2 - \[Delta]*(\[Delta] + 2*\[Epsilon])) + \[Delta]*(-d^3 + d*\[Delta]^2 - \[Delta]^2*Sqrt[(a*b + d)^2/(a^2*b^2 + 2*a*b*d + \[Delta]^2)]*(\[Delta] + 2*\[Epsilon]) + d^2*(\[Delta]*Sqrt[(a*b + d)^2/(a^2*b^2 + 2*a*b*d + \[Delta]^2)] + 2*\[Epsilon])) + a*b*(-(d^2*\[Delta]) + \[Delta]^3 + b^2*(d^2 - \[Delta]^2) + d^3*(-1 + 2*Sqrt[(a*b + d)^2/(a^2*b^2 + 2*a*b*d + \[Delta]^2)]) - d*\[Delta]*(\[Delta]*(-1 + 2*Sqrt[(a*b + d)^2/(a^2*b^2 + 2*a*b*d + \[Delta]^2)]) + 4*(-1 + Sqrt[(a*b + d)^2/(a^2*b^2 + 2*a*b*d + \[Delta]^2)])*\[Epsilon])))*Hypergeometric2F1[(b^2*(-d^2 + \[Delta]*(\[Delta] - 2*\[Epsilon])) - Sqrt[b^4*(d^2 - \[Delta]^2 + 2*d*\[Epsilon])^2])/(4*b^2*(d^2 - \[Delta]^2)), (b^2*(-d^2 + \[Delta]*(\[Delta] - 2*\[Epsilon])) + Sqrt[b^4*(d^2 - \[Delta]^2 + 2*d*\[Epsilon])^2])/(4*b^2*(d^2 - \[Delta]^2)), (d^3 + d^2*(b^2 - \[Delta])*Sqrt[(a*b + d)^2/(a^2*b^2 + 2*a*b*d + \[Delta]^2)] + \[Delta]^2*(-b^2 + \[Delta])*Sqrt[(a*b + d)^2/(a^2*b^2 + 2*a*b*d + \[Delta]^2)] - d*\[Delta]*(\[Delta] - 2*(-1 + Sqrt[(a*b + d)^2/(a^2*b^2 + 2*a*b*d + \[Delta]^2)])*\[Epsilon]) - a*b*(-1 + Sqrt[(a*b + d)^2/(a^2*b^2 + 2*a*b*d + \[Delta]^2)])*(d^2 - \[Delta]*(\[Delta] + 2*\[Epsilon])))/(4*(a*b + d)*(d^2 - \[Delta]^2)), 1/2 - Sqrt[(a*b + d)^2/(a^2*b^2 + 2*a*b*d + \[Delta]^2)]/2])/((a*b + d)*(d^2 - \[Delta]^2)*Hypergeometric2F1[(-Sqrt[b^4*(d^2 - \[Delta]^2 + 2*d*\[Epsilon])^2] + b^2*(3*d^2 - \[Delta]*(3*\[Delta] + 2*\[Epsilon])))/(4*b^2*(d^2 - \[Delta]^2)), (Sqrt[b^4*(d^2 - \[Delta]^2 + 2*d*\[Epsilon])^2] + b^2*(3*d^2 - \[Delta]*(3*\[Delta] + 2*\[Epsilon])))/(4*b^2*(d^2 - \[Delta]^2)), (3 - (d^2 - \[Delta]^2 + 2*\[Delta]*\[Epsilon])/(2*d^2 - 2*\[Delta]^2) - (Sqrt[(a*b + d)^2/(a^2*b^2 + 2*a*b*d + \[Delta]^2)]*(b^2*(-d^2 + \[Delta]^2) + \[Delta]*(d^2 - \[Delta]^2 - 2*d*\[Epsilon]) + a*b*(d^2 - \[Delta]*(\[Delta] + 2*\[Epsilon]))))/(2*(a*b + d)*(d^2 - \[Delta]^2)))/2, 1/2 - Sqrt[(a*b + d)^2/(a^2*b^2 + 2*a*b*d + \[Delta]^2)]/2]))/b) == Inactive[ContinuedFractionK][d*k + (-1)^k*(k*\[Delta] + \[Epsilon]), b + (1 + (-1)^k)*a*k, {k, 1, Infinity}], Element[a | b | d | \[Delta] | \[Epsilon], Complexes]]

(* {"LinearAlternating/LinearAlternating", 13}*)
ConditionalExpression[-(((b + \[Beta])^2*(d + e - \[Delta]))/(2*a*b^2 + b^3 + 3*b*d + 2*b*e + 4*a*b*\[Beta] + b^2*\[Beta] + 3*d*\[Beta] + 2*e*\[Beta] + 2*a*\[Beta]^2 - b*\[Beta]^2 - \[Beta]^3 + b*\[Delta] + \[Beta]*\[Delta] - (b + \[Beta])*(b^2 + 2*d + e - \[Beta]^2 + 2*a*(b + \[Beta]) + 2*\[Delta]) - ((b + \[Beta])*(b^2*d^3 - d^3*\[Beta]^2 + d^3*\[Delta] - b^2*d*\[Delta]^2 - 2*d*e*\[Delta]^2 + d*\[Beta]^2*\[Delta]^2 - d*\[Delta]^3 + 3*d^2*\[Delta]^2*Sqrt[(d + a*(b + \[Beta]))^2/(2*a*d*(b + \[Beta]) + a^2*(b + \[Beta])^2 + \[Delta]^2)] + 2*d*e*\[Delta]^2*Sqrt[(d + a*(b + \[Beta]))^2/(2*a*d*(b + \[Beta]) + a^2*(b + \[Beta])^2 + \[Delta]^2)] - 3*\[Delta]^4*Sqrt[(d + a*(b + \[Beta]))^2/(2*a*d*(b + \[Beta]) + a^2*(b + \[Beta])^2 + \[Delta]^2)] + a*(b + \[Beta])*(-d^3 - 2*d^2*e - d^2*\[Beta]^2 + d^2*\[Delta] + d*\[Delta]^2 - 2*e*\[Delta]^2 + \[Beta]^2*\[Delta]^2 - \[Delta]^3 + b^2*(d^2 - \[Delta]^2) + 6*d^3*Sqrt[(d + a*(b + \[Beta]))^2/(2*a*d*(b + \[Beta]) + a^2*(b + \[Beta])^2 + \[Delta]^2)] + 4*d^2*e*Sqrt[(d + a*(b + \[Beta]))^2/(2*a*d*(b + \[Beta]) + a^2*(b + \[Beta])^2 + \[Delta]^2)] - 6*d*\[Delta]^2*Sqrt[(d + a*(b + \[Beta]))^2/(2*a*d*(b + \[Beta]) + a^2*(b + \[Beta])^2 + \[Delta]^2)]) + a^2*(b + \[Beta])^2*(\[Delta]^2*(1 - 3*Sqrt[(d + a*(b + \[Beta]))^2/(2*a*d*(b + \[Beta]) + a^2*(b + \[Beta])^2 + \[Delta]^2)]) + 2*d*e*(-1 + Sqrt[(d + a*(b + \[Beta]))^2/(2*a*d*(b + \[Beta]) + a^2*(b + \[Beta])^2 + \[Delta]^2)]) + d^2*(-1 + 3*Sqrt[(d + a*(b + \[Beta]))^2/(2*a*d*(b + \[Beta]) + a^2*(b + \[Beta])^2 + \[Delta]^2)])))*Hypergeometric2F1[(d^2*\[Beta]^2 + 2*d*e*\[Beta]^2 - \[Beta]^2*\[Delta]^2 + b^2*(d^2 + 2*d*e - \[Delta]^2) + 2*b*\[Beta]*(d^2 + 2*d*e - \[Delta]^2) - Sqrt[(b + \[Beta])^4*(d^2 + 2*e*\[Delta] - \[Delta]^2)^2])/(4*(b + \[Beta])^2*(d^2 - \[Delta]^2)), (d^2*\[Beta]^2 + 2*d*e*\[Beta]^2 - \[Beta]^2*\[Delta]^2 + b^2*(d^2 + 2*d*e - \[Delta]^2) + 2*b*\[Beta]*(d^2 + 2*d*e - \[Delta]^2) + Sqrt[(b + \[Beta])^4*(d^2 + 2*e*\[Delta] - \[Delta]^2)^2])/(4*(b + \[Beta])^2*(d^2 - \[Delta]^2)), -(-3*d^3 + 3*d*\[Delta]^2 + \[Delta]^2*(b^2 + 2*e - \[Beta]^2 + \[Delta])*Sqrt[(d + a*(b + \[Beta]))^2/(2*a*d*(b + \[Beta]) + a^2*(b + \[Beta])^2 + \[Delta]^2)] - d^2*(2*e + (b^2 - \[Beta]^2 + \[Delta])*Sqrt[(d + a*(b + \[Beta]))^2/(2*a*d*(b + \[Beta]) + a^2*(b + \[Beta])^2 + \[Delta]^2)]) + a*(b + \[Beta])*(d^2*(-3 + Sqrt[(d + a*(b + \[Beta]))^2/(2*a*d*(b + \[Beta]) + a^2*(b + \[Beta])^2 + \[Delta]^2)]) - \[Delta]^2*(-3 + Sqrt[(d + a*(b + \[Beta]))^2/(2*a*d*(b + \[Beta]) + a^2*(b + \[Beta])^2 + \[Delta]^2)]) + 2*d*e*(-1 + Sqrt[(d + a*(b + \[Beta]))^2/(2*a*d*(b + \[Beta]) + a^2*(b + \[Beta])^2 + \[Delta]^2)])))/(4*(d + a*(b + \[Beta]))*(d^2 - \[Delta]^2)), (1 - Sqrt[(d + a*(b + \[Beta]))^2/(2*a*d*(b + \[Beta]) + a^2*(b + \[Beta])^2 + \[Delta]^2)])/2])/((d + a*(b + \[Beta]))*(d^2 - \[Delta]^2)*Hypergeometric2F1[(5*d^2*\[Beta]^2 + 2*d*e*\[Beta]^2 - 5*\[Beta]^2*\[Delta]^2 + b^2*(5*d^2 + 2*d*e - 5*\[Delta]^2) + 2*b*\[Beta]*(5*d^2 + 2*d*e - 5*\[Delta]^2) - Sqrt[(b + \[Beta])^4*(d^2 + 2*e*\[Delta] - \[Delta]^2)^2])/(4*(b + \[Beta])^2*(d^2 - \[Delta]^2)), (5*d^2*\[Beta]^2 + 2*d*e*\[Beta]^2 - 5*\[Beta]^2*\[Delta]^2 + b^2*(5*d^2 + 2*d*e - 5*\[Delta]^2) + 2*b*\[Beta]*(5*d^2 + 2*d*e - 5*\[Delta]^2) + Sqrt[(b + \[Beta])^4*(d^2 + 2*e*\[Delta] - \[Delta]^2)^2])/(4*(b + \[Beta])^2*(d^2 - \[Delta]^2)), -(-7*d^3 + 7*d*\[Delta]^2 + \[Delta]^2*(b^2 + 2*e - \[Beta]^2 + \[Delta])*Sqrt[(d + a*(b + \[Beta]))^2/(2*a*d*(b + \[Beta]) + a^2*(b + \[Beta])^2 + \[Delta]^2)] - d^2*(2*e + (b^2 - \[Beta]^2 + \[Delta])*Sqrt[(d + a*(b + \[Beta]))^2/(2*a*d*(b + \[Beta]) + a^2*(b + \[Beta])^2 + \[Delta]^2)]) + a*(b + \[Beta])*(d^2*(-7 + Sqrt[(d + a*(b + \[Beta]))^2/(2*a*d*(b + \[Beta]) + a^2*(b + \[Beta])^2 + \[Delta]^2)]) - \[Delta]^2*(-7 + Sqrt[(d + a*(b + \[Beta]))^2/(2*a*d*(b + \[Beta]) + a^2*(b + \[Beta])^2 + \[Delta]^2)]) + 2*d*e*(-1 + Sqrt[(d + a*(b + \[Beta]))^2/(2*a*d*(b + \[Beta]) + a^2*(b + \[Beta])^2 + \[Delta]^2)])))/(4*(d + a*(b + \[Beta]))*(d^2 - \[Delta]^2)), (1 - Sqrt[(d + a*(b + \[Beta]))^2/(2*a*d*(b + \[Beta]) + a^2*(b + \[Beta])^2 + \[Delta]^2)])/2]))) == Inactive[ContinuedFractionK][e + k*(d + (-1)^k*\[Delta]), b + a*k + (-1)^k*(-(a*k) + \[Beta]), {k, 1, Infinity}], Element[a | b | \[Beta] | d | e | \[Delta], Complexes]]

(* {"LinearAlternating/LinearAlternating", 14}*)
ConditionalExpression[(-2*b^3 - 2*b*d - 4*b*e + 2*b^2*\[Beta] + 2*d*\[Beta] + 4*e*\[Beta] + 2*b*\[Beta]^2 - 2*\[Beta]^3 + 2*(b - \[Beta])*(d + e - \[Delta]) + 2*b*\[Delta] - 2*\[Beta]*\[Delta] + (2*(b - \[Beta])*(b^2*d^3 - d^3*\[Beta]^2 - d^3*\[Delta] - b^2*d*\[Delta]^2 - 2*d*e*\[Delta]^2 + d*\[Beta]^2*\[Delta]^2 + d*\[Delta]^3 + d^2*\[Delta]^2*Sqrt[(d + a*(b - \[Beta]))^2/(2*a*d*(b - \[Beta]) + a^2*(b - \[Beta])^2 + \[Delta]^2)] + 2*d*e*\[Delta]^2*Sqrt[(d + a*(b - \[Beta]))^2/(2*a*d*(b - \[Beta]) + a^2*(b - \[Beta])^2 + \[Delta]^2)] - \[Delta]^4*Sqrt[(d + a*(b - \[Beta]))^2/(2*a*d*(b - \[Beta]) + a^2*(b - \[Beta])^2 + \[Delta]^2)] + a^2*(b - \[Beta])^2*(d^2 + 2*d*e - \[Delta]^2)*(-1 + Sqrt[(d + a*(b - \[Beta]))^2/(2*a*d*(b - \[Beta]) + a^2*(b - \[Beta])^2 + \[Delta]^2)]) + a*(b - \[Beta])*(-d^3 - 2*d^2*e - d^2*\[Beta]^2 - d^2*\[Delta] + d*\[Delta]^2 - 2*e*\[Delta]^2 + \[Beta]^2*\[Delta]^2 + \[Delta]^3 + b^2*(d^2 - \[Delta]^2) + 2*d^3*Sqrt[(d + a*(b - \[Beta]))^2/(2*a*d*(b - \[Beta]) + a^2*(b - \[Beta])^2 + \[Delta]^2)] + 4*d^2*e*Sqrt[(d + a*(b - \[Beta]))^2/(2*a*d*(b - \[Beta]) + a^2*(b - \[Beta])^2 + \[Delta]^2)] - 2*d*\[Delta]^2*Sqrt[(d + a*(b - \[Beta]))^2/(2*a*d*(b - \[Beta]) + a^2*(b - \[Beta])^2 + \[Delta]^2)]))*Hypergeometric2F1[(-(d^2*\[Beta]^2) + 2*d*e*\[Beta]^2 + \[Beta]^2*\[Delta]^2 + 2*b*\[Beta]*(d^2 - 2*d*e - \[Delta]^2) + b^2*(-d^2 + 2*d*e + \[Delta]^2) - Sqrt[(b - \[Beta])^4*(d^2 - \[Delta]*(2*e + \[Delta]))^2])/(4*(b - \[Beta])^2*(d^2 - \[Delta]^2)), (-(d^2*\[Beta]^2) + 2*d*e*\[Beta]^2 + \[Beta]^2*\[Delta]^2 + 2*b*\[Beta]*(d^2 - 2*d*e - \[Delta]^2) + b^2*(-d^2 + 2*d*e + \[Delta]^2) + Sqrt[(b - \[Beta])^4*(d^2 - \[Delta]*(2*e + \[Delta]))^2])/(4*(b - \[Beta])^2*(d^2 - \[Delta]^2)), (d^3 - d*\[Delta]^2 + \[Delta]^2*(-b^2 - 2*e + \[Beta]^2 + \[Delta])*Sqrt[(d + a*(b - \[Beta]))^2/(2*a*d*(b - \[Beta]) + a^2*(b - \[Beta])^2 + \[Delta]^2)] - a*(b - \[Beta])*(d^2 + 2*d*e - \[Delta]^2)*(-1 + Sqrt[(d + a*(b - \[Beta]))^2/(2*a*d*(b - \[Beta]) + a^2*(b - \[Beta])^2 + \[Delta]^2)]) + d^2*(2*e + (b^2 - \[Beta]^2 - \[Delta])*Sqrt[(d + a*(b - \[Beta]))^2/(2*a*d*(b - \[Beta]) + a^2*(b - \[Beta])^2 + \[Delta]^2)]))/(4*(d + a*(b - \[Beta]))*(d^2 - \[Delta]^2)), (1 - Sqrt[(d + a*(b - \[Beta]))^2/(2*a*d*(b - \[Beta]) + a^2*(b - \[Beta])^2 + \[Delta]^2)])/2])/((d + a*(b - \[Beta]))*(d^2 - \[Delta]^2)*Hypergeometric2F1[(3*d^2*\[Beta]^2 + 2*d*e*\[Beta]^2 - 3*\[Beta]^2*\[Delta]^2 + b^2*(3*d^2 + 2*d*e - 3*\[Delta]^2) - 2*b*\[Beta]*(3*d^2 + 2*d*e - 3*\[Delta]^2) - Sqrt[(b - \[Beta])^4*(d^2 - \[Delta]*(2*e + \[Delta]))^2])/(4*(b - \[Beta])^2*(d^2 - \[Delta]^2)), (3*d^2*\[Beta]^2 + 2*d*e*\[Beta]^2 - 3*\[Beta]^2*\[Delta]^2 + b^2*(3*d^2 + 2*d*e - 3*\[Delta]^2) - 2*b*\[Beta]*(3*d^2 + 2*d*e - 3*\[Delta]^2) + Sqrt[(b - \[Beta])^4*(d^2 - \[Delta]*(2*e + \[Delta]))^2])/(4*(b - \[Beta])^2*(d^2 - \[Delta]^2)), (5*d^3 - 5*d*\[Delta]^2 + \[Delta]^2*(-b^2 - 2*e + \[Beta]^2 + \[Delta])*Sqrt[(d + a*(b - \[Beta]))^2/(2*a*d*(b - \[Beta]) + a^2*(b - \[Beta])^2 + \[Delta]^2)] + d^2*(2*e + (b^2 - \[Beta]^2 - \[Delta])*Sqrt[(d + a*(b - \[Beta]))^2/(2*a*d*(b - \[Beta]) + a^2*(b - \[Beta])^2 + \[Delta]^2)]) - a*(b - \[Beta])*(d^2*(-5 + Sqrt[(d + a*(b - \[Beta]))^2/(2*a*d*(b - \[Beta]) + a^2*(b - \[Beta])^2 + \[Delta]^2)]) - \[Delta]^2*(-5 + Sqrt[(d + a*(b - \[Beta]))^2/(2*a*d*(b - \[Beta]) + a^2*(b - \[Beta])^2 + \[Delta]^2)]) + 2*d*e*(-1 + Sqrt[(d + a*(b - \[Beta]))^2/(2*a*d*(b - \[Beta]) + a^2*(b - \[Beta])^2 + \[Delta]^2)])))/(4*(d + a*(b - \[Beta]))*(d^2 - \[Delta]^2)), (1 - Sqrt[(d + a*(b - \[Beta]))^2/(2*a*d*(b - \[Beta]) + a^2*(b - \[Beta])^2 + \[Delta]^2)])/2]))/(2*(b - \[Beta])^2) == Inactive[ContinuedFractionK][e + k*(d + (-1)^k*\[Delta]), b + a*k + (-1)^k*(a*k + \[Beta]), {k, 1, Infinity}], Element[a | b | \[Beta] | d | e | \[Delta], Complexes]]

(* {"LinearAlternating/LinearAlternating", 15}*)
ConditionalExpression[(\[Beta]*(d + e - \[Delta]))/(-d - e + \[Delta] + ((d^3*(-\[Beta]^2 + \[Delta]) + 3*d^2*\[Delta]^2*Sqrt[(d + a*\[Beta])^2/(2*a*d*\[Beta] + a^2*\[Beta]^2 + \[Delta]^2)] - 3*\[Delta]^4*Sqrt[(d + a*\[Beta])^2/(2*a*d*\[Beta] + a^2*\[Beta]^2 + \[Delta]^2)] + d*\[Delta]^2*(\[Beta]^2 - \[Delta] + 2*e*(-1 + Sqrt[(d + a*\[Beta])^2/(2*a*d*\[Beta] + a^2*\[Beta]^2 + \[Delta]^2)])) + a^2*\[Beta]^2*(\[Delta]^2*(1 - 3*Sqrt[(d + a*\[Beta])^2/(2*a*d*\[Beta] + a^2*\[Beta]^2 + \[Delta]^2)]) + 2*d*e*(-1 + Sqrt[(d + a*\[Beta])^2/(2*a*d*\[Beta] + a^2*\[Beta]^2 + \[Delta]^2)]) + d^2*(-1 + 3*Sqrt[(d + a*\[Beta])^2/(2*a*d*\[Beta] + a^2*\[Beta]^2 + \[Delta]^2)])) - a*\[Beta]*(\[Delta]^2*(2*e - \[Beta]^2 + \[Delta]) + d^3*(1 - 6*Sqrt[(d + a*\[Beta])^2/(2*a*d*\[Beta] + a^2*\[Beta]^2 + \[Delta]^2)]) + d*\[Delta]^2*(-1 + 6*Sqrt[(d + a*\[Beta])^2/(2*a*d*\[Beta] + a^2*\[Beta]^2 + \[Delta]^2)]) - d^2*(-2*e - \[Beta]^2 + \[Delta] + 4*e*Sqrt[(d + a*\[Beta])^2/(2*a*d*\[Beta] + a^2*\[Beta]^2 + \[Delta]^2)])))*Hypergeometric2F1[(d^2*\[Beta]^2 + 2*d*e*\[Beta]^2 - \[Beta]^2*\[Delta]^2 + Sqrt[\[Beta]^4*(d^2 + (2*e - \[Delta])*\[Delta])^2])/(4*\[Beta]^2*(d^2 - \[Delta]^2)), -(-(d^2*\[Beta]^2) - 2*d*e*\[Beta]^2 + \[Beta]^2*\[Delta]^2 + Sqrt[\[Beta]^4*(d^2 + (2*e - \[Delta])*\[Delta])^2])/(4*\[Beta]^2*(d^2 - \[Delta]^2)), (1 + (d^2 + 2*d*e - \[Delta]^2)/(2*d^2 - 2*\[Delta]^2) - (Sqrt[(d + a*\[Beta])^2/(2*a*d*\[Beta] + a^2*\[Beta]^2 + \[Delta]^2)]*(d^2*(\[Beta]^2 - \[Delta]) + \[Delta]^2*(2*e - \[Beta]^2 + \[Delta]) + a*\[Beta]*(d^2 + 2*d*e - \[Delta]^2)))/(2*(d + a*\[Beta])*(d^2 - \[Delta]^2)))/2, 1/2 - Sqrt[(d + a*\[Beta])^2/(2*a*d*\[Beta] + a^2*\[Beta]^2 + \[Delta]^2)]/2])/((d + a*\[Beta])*(d^2 - \[Delta]^2)*Hypergeometric2F1[(5*d^2*\[Beta]^2 + 2*d*e*\[Beta]^2 - 5*\[Beta]^2*\[Delta]^2 + Sqrt[\[Beta]^4*(d^2 + (2*e - \[Delta])*\[Delta])^2])/(4*\[Beta]^2*(d^2 - \[Delta]^2)), -(-5*d^2*\[Beta]^2 - 2*d*e*\[Beta]^2 + 5*\[Beta]^2*\[Delta]^2 + Sqrt[\[Beta]^4*(d^2 + (2*e - \[Delta])*\[Delta])^2])/(4*\[Beta]^2*(d^2 - \[Delta]^2)), (3 + (d^2 + 2*d*e - \[Delta]^2)/(2*d^2 - 2*\[Delta]^2) - (Sqrt[(d + a*\[Beta])^2/(2*a*d*\[Beta] + a^2*\[Beta]^2 + \[Delta]^2)]*(d^2*(\[Beta]^2 - \[Delta]) + \[Delta]^2*(2*e - \[Beta]^2 + \[Delta]) + a*\[Beta]*(d^2 + 2*d*e - \[Delta]^2)))/(2*(d + a*\[Beta])*(d^2 - \[Delta]^2)))/2, 1/2 - Sqrt[(d + a*\[Beta])^2/(2*a*d*\[Beta] + a^2*\[Beta]^2 + \[Delta]^2)]/2])) == Inactive[ContinuedFractionK][e + k*(d + (-1)^k*\[Delta]), a*k + (-1)^k*(-(a*k) + \[Beta]), {k, 1, Infinity}], Element[a | \[Beta] | d | e | \[Delta], Complexes]]

(* {"LinearAlternating/LinearAlternating", 16}*)
ConditionalExpression[-(-2*d*\[Beta] - 4*e*\[Beta] + 2*\[Beta]^3 + 2*\[Beta]*(d + e - \[Delta]) + 2*\[Beta]*\[Delta] + (2*\[Beta]*(-(d^3*(\[Beta]^2 + \[Delta])) + d^2*\[Delta]^2*Sqrt[(d - a*\[Beta])^2/(-2*a*d*\[Beta] + a^2*\[Beta]^2 + \[Delta]^2)] - \[Delta]^4*Sqrt[(d - a*\[Beta])^2/(-2*a*d*\[Beta] + a^2*\[Beta]^2 + \[Delta]^2)] + a^2*\[Beta]^2*(d^2 + 2*d*e - \[Delta]^2)*(-1 + Sqrt[(d - a*\[Beta])^2/(-2*a*d*\[Beta] + a^2*\[Beta]^2 + \[Delta]^2)]) + d*\[Delta]^2*(\[Beta]^2 + \[Delta] + 2*e*(-1 + Sqrt[(d - a*\[Beta])^2/(-2*a*d*\[Beta] + a^2*\[Beta]^2 + \[Delta]^2)])) - a*\[Beta]*(\[Delta]^2*(-2*e + \[Beta]^2 + \[Delta]) + d^3*(-1 + 2*Sqrt[(d - a*\[Beta])^2/(-2*a*d*\[Beta] + a^2*\[Beta]^2 + \[Delta]^2)]) - d*\[Delta]^2*(-1 + 2*Sqrt[(d - a*\[Beta])^2/(-2*a*d*\[Beta] + a^2*\[Beta]^2 + \[Delta]^2)]) - d^2*(2*e + \[Beta]^2 + \[Delta] - 4*e*Sqrt[(d - a*\[Beta])^2/(-2*a*d*\[Beta] + a^2*\[Beta]^2 + \[Delta]^2)])))*Hypergeometric2F1[-(d^2*\[Beta]^2 - 2*d*e*\[Beta]^2 - \[Beta]^2*\[Delta]^2 + Sqrt[\[Beta]^4*(d^2 - \[Delta]*(2*e + \[Delta]))^2])/(4*\[Beta]^2*(d^2 - \[Delta]^2)), (-(d^2*\[Beta]^2) + 2*d*e*\[Beta]^2 + \[Beta]^2*\[Delta]^2 + Sqrt[\[Beta]^4*(d^2 - \[Delta]*(2*e + \[Delta]))^2])/(4*\[Beta]^2*(d^2 - \[Delta]^2)), (1 + (-d^2 + 2*d*e + \[Delta]^2)/(2*(d^2 - \[Delta]^2)) + (Sqrt[(d - a*\[Beta])^2/(-2*a*d*\[Beta] + a^2*\[Beta]^2 + \[Delta]^2)]*(-(d^2*(\[Beta]^2 + \[Delta])) + \[Delta]^2*(-2*e + \[Beta]^2 + \[Delta]) + a*\[Beta]*(d^2 + 2*d*e - \[Delta]^2)))/(2*(d - a*\[Beta])*(d^2 - \[Delta]^2)))/2, (1 - Sqrt[(d - a*\[Beta])^2/(-2*a*d*\[Beta] + a^2*\[Beta]^2 + \[Delta]^2)])/2])/((d - a*\[Beta])*(d^2 - \[Delta]^2)*Hypergeometric2F1[(3*d^2*\[Beta]^2 + 2*d*e*\[Beta]^2 - 3*\[Beta]^2*\[Delta]^2 + Sqrt[\[Beta]^4*(d^2 - \[Delta]*(2*e + \[Delta]))^2])/(4*\[Beta]^2*(d^2 - \[Delta]^2)), -(-3*d^2*\[Beta]^2 - 2*d*e*\[Beta]^2 + 3*\[Beta]^2*\[Delta]^2 + Sqrt[\[Beta]^4*(d^2 - \[Delta]*(2*e + \[Delta]))^2])/(4*\[Beta]^2*(d^2 - \[Delta]^2)), (3 + (-d^2 + 2*d*e + \[Delta]^2)/(2*(d^2 - \[Delta]^2)) + (Sqrt[(d - a*\[Beta])^2/(-2*a*d*\[Beta] + a^2*\[Beta]^2 + \[Delta]^2)]*(-(d^2*(\[Beta]^2 + \[Delta])) + \[Delta]^2*(-2*e + \[Beta]^2 + \[Delta]) + a*\[Beta]*(d^2 + 2*d*e - \[Delta]^2)))/(2*(d - a*\[Beta])*(d^2 - \[Delta]^2)))/2, (1 - Sqrt[(d - a*\[Beta])^2/(-2*a*d*\[Beta] + a^2*\[Beta]^2 + \[Delta]^2)])/2]))/(2*\[Beta]^2) == Inactive[ContinuedFractionK][e + k*(d + (-1)^k*\[Delta]), a*k + (-1)^k*(a*k + \[Beta]), {k, 1, Infinity}], Element[a | \[Beta] | d | e | \[Delta], Complexes]]

(* {"LinearAlternating/LinearAlternating", 17}*)
ConditionalExpression[(b*(d + e - \[Delta]))/(-d - e + \[Delta] + ((b^2*(d^3 - d*\[Delta]^2) + a^2*b^2*(\[Delta]^2*(1 - 3*Sqrt[(a*b + d)^2/(a^2*b^2 + 2*a*b*d + \[Delta]^2)]) + 2*d*e*(-1 + Sqrt[(a*b + d)^2/(a^2*b^2 + 2*a*b*d + \[Delta]^2)]) + d^2*(-1 + 3*Sqrt[(a*b + d)^2/(a^2*b^2 + 2*a*b*d + \[Delta]^2)])) + a*b*(-(\[Delta]^2*(2*e + \[Delta])) + b^2*(d^2 - \[Delta]^2) + d^3*(-1 + 6*Sqrt[(a*b + d)^2/(a^2*b^2 + 2*a*b*d + \[Delta]^2)]) - d*\[Delta]^2*(-1 + 6*Sqrt[(a*b + d)^2/(a^2*b^2 + 2*a*b*d + \[Delta]^2)]) + d^2*(-2*e + \[Delta] + 4*e*Sqrt[(a*b + d)^2/(a^2*b^2 + 2*a*b*d + \[Delta]^2)])) + \[Delta]*(d^3 + 3*d^2*\[Delta]*Sqrt[(a*b + d)^2/(a^2*b^2 + 2*a*b*d + \[Delta]^2)] - 3*\[Delta]^3*Sqrt[(a*b + d)^2/(a^2*b^2 + 2*a*b*d + \[Delta]^2)] - d*\[Delta]*(\[Delta] - 2*e*(-1 + Sqrt[(a*b + d)^2/(a^2*b^2 + 2*a*b*d + \[Delta]^2)]))))*Hypergeometric2F1[(Sqrt[b^4*(d^2 + (2*e - \[Delta])*\[Delta])^2] + b^2*(d^2 + 2*d*e - \[Delta]^2))/(4*b^2*(d^2 - \[Delta]^2)), (b^2*(d^2 + 2*d*e - \[Delta]^2) - Sqrt[b^4*(d^2 + 2*e*\[Delta] - \[Delta]^2)^2])/(4*b^2*(d^2 - \[Delta]^2)), (1 + (d^2 + 2*d*e - \[Delta]^2)/(2*d^2 - 2*\[Delta]^2) - (Sqrt[(a*b + d)^2/(a^2*b^2 + 2*a*b*d + \[Delta]^2)]*(a*b*(d^2 + 2*d*e - \[Delta]^2) + b^2*(-d^2 + \[Delta]^2) + \[Delta]*(-d^2 + 2*e*\[Delta] + \[Delta]^2)))/(2*(a*b + d)*(d^2 - \[Delta]^2)))/2, 1/2 - Sqrt[(a*b + d)^2/(a^2*b^2 + 2*a*b*d + \[Delta]^2)]/2])/((a*b + d)*(d^2 - \[Delta]^2)*Hypergeometric2F1[(Sqrt[b^4*(d^2 + (2*e - \[Delta])*\[Delta])^2] + b^2*(5*d^2 + 2*d*e - 5*\[Delta]^2))/(4*b^2*(d^2 - \[Delta]^2)), (b^2*(5*d^2 + 2*d*e - 5*\[Delta]^2) - Sqrt[b^4*(d^2 + 2*e*\[Delta] - \[Delta]^2)^2])/(4*b^2*(d^2 - \[Delta]^2)), (3 + (d^2 + 2*d*e - \[Delta]^2)/(2*d^2 - 2*\[Delta]^2) - (Sqrt[(a*b + d)^2/(a^2*b^2 + 2*a*b*d + \[Delta]^2)]*(a*b*(d^2 + 2*d*e - \[Delta]^2) + b^2*(-d^2 + \[Delta]^2) + \[Delta]*(-d^2 + 2*e*\[Delta] + \[Delta]^2)))/(2*(a*b + d)*(d^2 - \[Delta]^2)))/2, 1/2 - Sqrt[(a*b + d)^2/(a^2*b^2 + 2*a*b*d + \[Delta]^2)]/2])) == Inactive[ContinuedFractionK][e + k*(d + (-1)^k*\[Delta]), b - (-1 + (-1)^k)*a*k, {k, 1, Infinity}], Element[a | b | d | e | \[Delta], Complexes]]

(* {"LinearAlternating/LinearAlternating", 18}*)
ConditionalExpression[-((b^2 + e - ((b^2*(d^3 - d*\[Delta]^2) + a^2*b^2*(d^2 + 2*d*e - \[Delta]^2)*(-1 + Sqrt[(a*b + d)^2/(a^2*b^2 + 2*a*b*d + \[Delta]^2)]) + a*b*(\[Delta]^2*(-2*e + \[Delta]) + b^2*(d^2 - \[Delta]^2) + d^3*(-1 + 2*Sqrt[(a*b + d)^2/(a^2*b^2 + 2*a*b*d + \[Delta]^2)]) - d*\[Delta]^2*(-1 + 2*Sqrt[(a*b + d)^2/(a^2*b^2 + 2*a*b*d + \[Delta]^2)]) + d^2*(-2*e - \[Delta] + 4*e*Sqrt[(a*b + d)^2/(a^2*b^2 + 2*a*b*d + \[Delta]^2)])) + \[Delta]*(-d^3 + d^2*\[Delta]*Sqrt[(a*b + d)^2/(a^2*b^2 + 2*a*b*d + \[Delta]^2)] - \[Delta]^3*Sqrt[(a*b + d)^2/(a^2*b^2 + 2*a*b*d + \[Delta]^2)] + d*\[Delta]*(\[Delta] + 2*e*(-1 + Sqrt[(a*b + d)^2/(a^2*b^2 + 2*a*b*d + \[Delta]^2)]))))*Hypergeometric2F1[(b^2*(-d^2 + 2*d*e + \[Delta]^2) - Sqrt[b^4*(d^2 - \[Delta]*(2*e + \[Delta]))^2])/(4*b^2*(d^2 - \[Delta]^2)), (b^2*(-d^2 + 2*d*e + \[Delta]^2) + Sqrt[b^4*(d^2 - \[Delta]*(2*e + \[Delta]))^2])/(4*b^2*(d^2 - \[Delta]^2)), (d^3 - d*\[Delta]^2 + \[Delta]^2*(-b^2 - 2*e + \[Delta])*Sqrt[(a*b + d)^2/(a^2*b^2 + 2*a*b*d + \[Delta]^2)] - a*b*(d^2 + 2*d*e - \[Delta]^2)*(-1 + Sqrt[(a*b + d)^2/(a^2*b^2 + 2*a*b*d + \[Delta]^2)]) + d^2*(2*e + (b^2 - \[Delta])*Sqrt[(a*b + d)^2/(a^2*b^2 + 2*a*b*d + \[Delta]^2)]))/(4*(a*b + d)*(d^2 - \[Delta]^2)), 1/2 - Sqrt[(a*b + d)^2/(a^2*b^2 + 2*a*b*d + \[Delta]^2)]/2])/((a*b + d)*(d^2 - \[Delta]^2)*Hypergeometric2F1[(b^2*(3*d^2 + 2*d*e - 3*\[Delta]^2) - Sqrt[b^4*(d^2 - \[Delta]*(2*e + \[Delta]))^2])/(4*b^2*(d^2 - \[Delta]^2)), (b^2*(3*d^2 + 2*d*e - 3*\[Delta]^2) + Sqrt[b^4*(d^2 - \[Delta]*(2*e + \[Delta]))^2])/(4*b^2*(d^2 - \[Delta]^2)), (6 + (-d^2 + 2*d*e + \[Delta]^2)/(d^2 - \[Delta]^2) - (Sqrt[(a*b + d)^2/(a^2*b^2 + 2*a*b*d + \[Delta]^2)]*(a*b*(d^2 + 2*d*e - \[Delta]^2) + \[Delta]*(d^2 + 2*e*\[Delta] - \[Delta]^2) + b^2*(-d^2 + \[Delta]^2)))/((a*b + d)*(d^2 - \[Delta]^2)))/4, 1/2 - Sqrt[(a*b + d)^2/(a^2*b^2 + 2*a*b*d + \[Delta]^2)]/2]))/b) == Inactive[ContinuedFractionK][e + k*(d + (-1)^k*\[Delta]), b + (1 + (-1)^k)*a*k, {k, 1, Infinity}], Element[a | b | d | e | \[Delta], Complexes]]

(* {"LinearAlternating/LinearAlternating", 19}*)
ConditionalExpression[-(((b + \[Beta])^2*(e - \[Delta] - \[Epsilon]))/(2*a*b^2 + b^3 + 2*b*e + 4*a*b*\[Beta] + b^2*\[Beta] + 2*e*\[Beta] + 2*a*\[Beta]^2 - b*\[Beta]^2 - \[Beta]^3 + b*\[Delta] + \[Beta]*\[Delta] - (b + \[Beta])*(b^2 + e - \[Beta]^2 + 2*a*(b + \[Beta]) + 2*\[Delta] + \[Epsilon]) - ((a*(b + \[Beta])*\[Delta]*(b^2 + 2*e - \[Beta]^2 + \[Delta]) + \[Delta]^2*Sqrt[(a^2*(b + \[Beta])^2)/(a^2*(b + \[Beta])^2 + \[Delta]^2)]*(3*\[Delta] + 2*\[Epsilon]) + a^2*(b + \[Beta])^2*(\[Delta]*(-1 + 3*Sqrt[(a^2*(b + \[Beta])^2)/(a^2*(b + \[Beta])^2 + \[Delta]^2)]) + 2*(-1 + Sqrt[(a^2*(b + \[Beta])^2)/(a^2*(b + \[Beta])^2 + \[Delta]^2)])*\[Epsilon]))*Hypergeometric2F1[(-Sqrt[(b + \[Beta])^4*\[Delta]^2*(-2*e + \[Delta])^2] + b^2*\[Delta]*(\[Delta] + 2*\[Epsilon]) + 2*b*\[Beta]*\[Delta]*(\[Delta] + 2*\[Epsilon]) + \[Beta]^2*\[Delta]*(\[Delta] + 2*\[Epsilon]))/(4*(b + \[Beta])^2*\[Delta]^2), (Sqrt[(b + \[Beta])^4*\[Delta]^2*(-2*e + \[Delta])^2] + b^2*\[Delta]*(\[Delta] + 2*\[Epsilon]) + 2*b*\[Beta]*\[Delta]*(\[Delta] + 2*\[Epsilon]) + \[Beta]^2*\[Delta]*(\[Delta] + 2*\[Epsilon]))/(4*(b + \[Beta])^2*\[Delta]^2), (\[Delta]*(b^2 + 2*e - \[Beta]^2 + \[Delta])*Sqrt[(a^2*(b + \[Beta])^2)/(a^2*(b + \[Beta])^2 + \[Delta]^2)] - a*(b + \[Beta])*(\[Delta]*(-3 + Sqrt[(a^2*(b + \[Beta])^2)/(a^2*(b + \[Beta])^2 + \[Delta]^2)]) + 2*(-1 + Sqrt[(a^2*(b + \[Beta])^2)/(a^2*(b + \[Beta])^2 + \[Delta]^2)])*\[Epsilon]))/(4*a*(b + \[Beta])*\[Delta]), (1 - Sqrt[(a^2*(b + \[Beta])^2)/(a^2*(b + \[Beta])^2 + \[Delta]^2)])/2])/(a*\[Delta]*Hypergeometric2F1[(-Sqrt[(b + \[Beta])^4*\[Delta]^2*(-2*e + \[Delta])^2] + b^2*\[Delta]*(5*\[Delta] + 2*\[Epsilon]) + 2*b*\[Beta]*\[Delta]*(5*\[Delta] + 2*\[Epsilon]) + \[Beta]^2*\[Delta]*(5*\[Delta] + 2*\[Epsilon]))/(4*(b + \[Beta])^2*\[Delta]^2), (Sqrt[(b + \[Beta])^4*\[Delta]^2*(-2*e + \[Delta])^2] + b^2*\[Delta]*(5*\[Delta] + 2*\[Epsilon]) + 2*b*\[Beta]*\[Delta]*(5*\[Delta] + 2*\[Epsilon]) + \[Beta]^2*\[Delta]*(5*\[Delta] + 2*\[Epsilon]))/(4*(b + \[Beta])^2*\[Delta]^2), (\[Delta]*(b^2 + 2*e - \[Beta]^2 + \[Delta])*Sqrt[(a^2*(b + \[Beta])^2)/(a^2*(b + \[Beta])^2 + \[Delta]^2)] - a*(b + \[Beta])*(\[Delta]*(-7 + Sqrt[(a^2*(b + \[Beta])^2)/(a^2*(b + \[Beta])^2 + \[Delta]^2)]) + 2*(-1 + Sqrt[(a^2*(b + \[Beta])^2)/(a^2*(b + \[Beta])^2 + \[Delta]^2)])*\[Epsilon]))/(4*a*(b + \[Beta])*\[Delta]), (1 - Sqrt[(a^2*(b + \[Beta])^2)/(a^2*(b + \[Beta])^2 + \[Delta]^2)])/2]))) == Inactive[ContinuedFractionK][e + (-1)^k*(k*\[Delta] + \[Epsilon]), b + a*k + (-1)^k*(-(a*k) + \[Beta]), {k, 1, Infinity}], Element[a | b | \[Beta] | e | \[Delta] | \[Epsilon], Complexes]]

(* {"LinearAlternating/LinearAlternating", 20}*)
ConditionalExpression[(-b^3 - 2*b*e + b^2*\[Beta] + 2*e*\[Beta] + b*\[Beta]^2 - \[Beta]^3 + b*\[Delta] - \[Beta]*\[Delta] + (b - \[Beta])*(e - \[Delta] - \[Epsilon]) + ((a*(b - \[Beta])*(b^2 + 2*e - \[Beta]^2 - \[Delta])*\[Delta] + \[Delta]^2*Sqrt[(a^2*(b - \[Beta])^2)/(a^2*(b - \[Beta])^2 + \[Delta]^2)]*(\[Delta] + 2*\[Epsilon]) + a^2*(b - \[Beta])^2*(-1 + Sqrt[(a^2*(b - \[Beta])^2)/(a^2*(b - \[Beta])^2 + \[Delta]^2)])*(\[Delta] + 2*\[Epsilon]))*Hypergeometric2F1[(Sqrt[(b - \[Beta])^4*\[Delta]^2*(2*e + \[Delta])^2] - b^2*\[Delta]*(\[Delta] - 2*\[Epsilon]) + 2*b*\[Beta]*\[Delta]*(\[Delta] - 2*\[Epsilon]) - \[Beta]^2*\[Delta]*(\[Delta] - 2*\[Epsilon]))/(4*(b - \[Beta])^2*\[Delta]^2), -(Sqrt[(b - \[Beta])^4*\[Delta]^2*(2*e + \[Delta])^2] + b^2*\[Delta]*(\[Delta] - 2*\[Epsilon]) - 2*b*\[Beta]*\[Delta]*(\[Delta] - 2*\[Epsilon]) + \[Beta]^2*\[Delta]*(\[Delta] - 2*\[Epsilon]))/(4*(b - \[Beta])^2*\[Delta]^2), ((b^2 + 2*e - \[Beta]^2 - \[Delta])*\[Delta]*Sqrt[(a^2*(b - \[Beta])^2)/(a^2*(b - \[Beta])^2 + \[Delta]^2)] - a*(b - \[Beta])*(-1 + Sqrt[(a^2*(b - \[Beta])^2)/(a^2*(b - \[Beta])^2 + \[Delta]^2)])*(\[Delta] + 2*\[Epsilon]))/(4*a*(b - \[Beta])*\[Delta]), (1 - Sqrt[(a^2*(b - \[Beta])^2)/(a^2*(b - \[Beta])^2 + \[Delta]^2)])/2])/(a*\[Delta]*Hypergeometric2F1[(-Sqrt[(b - \[Beta])^4*\[Delta]^2*(2*e + \[Delta])^2] + b^2*\[Delta]*(3*\[Delta] + 2*\[Epsilon]) - 2*b*\[Beta]*\[Delta]*(3*\[Delta] + 2*\[Epsilon]) + \[Beta]^2*\[Delta]*(3*\[Delta] + 2*\[Epsilon]))/(4*(b - \[Beta])^2*\[Delta]^2), (Sqrt[(b - \[Beta])^4*\[Delta]^2*(2*e + \[Delta])^2] + b^2*\[Delta]*(3*\[Delta] + 2*\[Epsilon]) - 2*b*\[Beta]*\[Delta]*(3*\[Delta] + 2*\[Epsilon]) + \[Beta]^2*\[Delta]*(3*\[Delta] + 2*\[Epsilon]))/(4*(b - \[Beta])^2*\[Delta]^2), ((b^2 + 2*e - \[Beta]^2 - \[Delta])*\[Delta]*Sqrt[(a^2*(b - \[Beta])^2)/(a^2*(b - \[Beta])^2 + \[Delta]^2)] - a*(b - \[Beta])*(\[Delta]*(-5 + Sqrt[(a^2*(b - \[Beta])^2)/(a^2*(b - \[Beta])^2 + \[Delta]^2)]) + 2*(-1 + Sqrt[(a^2*(b - \[Beta])^2)/(a^2*(b - \[Beta])^2 + \[Delta]^2)])*\[Epsilon]))/(4*a*(b - \[Beta])*\[Delta]), (1 - Sqrt[(a^2*(b - \[Beta])^2)/(a^2*(b - \[Beta])^2 + \[Delta]^2)])/2]))/(b - \[Beta])^2 == Inactive[ContinuedFractionK][e + (-1)^k*(k*\[Delta] + \[Epsilon]), b + a*k + (-1)^k*(a*k + \[Beta]), {k, 1, Infinity}], Element[a | b | \[Beta] | e | \[Delta] | \[Epsilon], Complexes]]

(* {"LinearAlternating/LinearAlternating", 21}*)
ConditionalExpression[(\[Beta]^2*(e - \[Delta] - \[Epsilon]))/(-2*e*\[Beta] - 2*a*\[Beta]^2 + \[Beta]^3 - \[Beta]*\[Delta] + \[Beta]*(e + 2*a*\[Beta] - \[Beta]^2 + 2*\[Delta] + \[Epsilon]) + ((a*\[Beta]*\[Delta]*(2*e - \[Beta]^2 + \[Delta]) + \[Delta]^2*Sqrt[(a^2*\[Beta]^2)/(a^2*\[Beta]^2 + \[Delta]^2)]*(3*\[Delta] + 2*\[Epsilon]) + a^2*\[Beta]^2*(\[Delta]*(-1 + 3*Sqrt[(a^2*\[Beta]^2)/(a^2*\[Beta]^2 + \[Delta]^2)]) + 2*(-1 + Sqrt[(a^2*\[Beta]^2)/(a^2*\[Beta]^2 + \[Delta]^2)])*\[Epsilon]))*Hypergeometric2F1[(-Sqrt[\[Beta]^4*\[Delta]^2*(-2*e + \[Delta])^2] + \[Beta]^2*\[Delta]*(\[Delta] + 2*\[Epsilon]))/(4*\[Beta]^2*\[Delta]^2), (Sqrt[\[Beta]^4*\[Delta]^2*(-2*e + \[Delta])^2] + \[Beta]^2*\[Delta]*(\[Delta] + 2*\[Epsilon]))/(4*\[Beta]^2*\[Delta]^2), (\[Delta]*(2*e - \[Beta]^2 + \[Delta])*Sqrt[(a^2*\[Beta]^2)/(a^2*\[Beta]^2 + \[Delta]^2)] + a*\[Beta]*(-(\[Delta]*(-3 + Sqrt[(a^2*\[Beta]^2)/(a^2*\[Beta]^2 + \[Delta]^2)])) - 2*(-1 + Sqrt[(a^2*\[Beta]^2)/(a^2*\[Beta]^2 + \[Delta]^2)])*\[Epsilon]))/(4*a*\[Beta]*\[Delta]), (1 - Sqrt[(a^2*\[Beta]^2)/(a^2*\[Beta]^2 + \[Delta]^2)])/2])/(a*\[Delta]*Hypergeometric2F1[(-Sqrt[\[Beta]^4*\[Delta]^2*(-2*e + \[Delta])^2] + \[Beta]^2*\[Delta]*(5*\[Delta] + 2*\[Epsilon]))/(4*\[Beta]^2*\[Delta]^2), (Sqrt[\[Beta]^4*\[Delta]^2*(-2*e + \[Delta])^2] + \[Beta]^2*\[Delta]*(5*\[Delta] + 2*\[Epsilon]))/(4*\[Beta]^2*\[Delta]^2), (\[Delta]*(2*e - \[Beta]^2 + \[Delta])*Sqrt[(a^2*\[Beta]^2)/(a^2*\[Beta]^2 + \[Delta]^2)] + a*\[Beta]*(-(\[Delta]*(-7 + Sqrt[(a^2*\[Beta]^2)/(a^2*\[Beta]^2 + \[Delta]^2)])) - 2*(-1 + Sqrt[(a^2*\[Beta]^2)/(a^2*\[Beta]^2 + \[Delta]^2)])*\[Epsilon]))/(4*a*\[Beta]*\[Delta]), (1 - Sqrt[(a^2*\[Beta]^2)/(a^2*\[Beta]^2 + \[Delta]^2)])/2])) == Inactive[ContinuedFractionK][e + (-1)^k*(k*\[Delta] + \[Epsilon]), a*k + (-1)^k*(-(a*k) + \[Beta]), {k, 1, Infinity}], Element[a | \[Beta] | e | \[Delta] | \[Epsilon], Complexes]]

(* {"LinearAlternating/LinearAlternating", 22}*)
ConditionalExpression[(2*e*\[Beta] - \[Beta]^3 - \[Beta]*\[Delta] + \[Beta]*(-e + \[Delta] + \[Epsilon]) + ((a*\[Beta]*\[Delta]*(-2*e + \[Beta]^2 + \[Delta]) + \[Delta]^2*Sqrt[(a^2*\[Beta]^2)/(a^2*\[Beta]^2 + \[Delta]^2)]*(\[Delta] + 2*\[Epsilon]) + a^2*\[Beta]^2*(-1 + Sqrt[(a^2*\[Beta]^2)/(a^2*\[Beta]^2 + \[Delta]^2)])*(\[Delta] + 2*\[Epsilon]))*Hypergeometric2F1[(Sqrt[\[Beta]^4*\[Delta]^2*(2*e + \[Delta])^2] - \[Beta]^2*\[Delta]*(\[Delta] - 2*\[Epsilon]))/(4*\[Beta]^2*\[Delta]^2), -(Sqrt[\[Beta]^4*\[Delta]^2*(2*e + \[Delta])^2] + \[Beta]^2*\[Delta]*(\[Delta] - 2*\[Epsilon]))/(4*\[Beta]^2*\[Delta]^2), (\[Delta]*(-2*e + \[Beta]^2 + \[Delta])*Sqrt[(a^2*\[Beta]^2)/(a^2*\[Beta]^2 + \[Delta]^2)] - a*\[Beta]*(-1 + Sqrt[(a^2*\[Beta]^2)/(a^2*\[Beta]^2 + \[Delta]^2)])*(\[Delta] + 2*\[Epsilon]))/(4*a*\[Beta]*\[Delta]), (1 - Sqrt[(a^2*\[Beta]^2)/(a^2*\[Beta]^2 + \[Delta]^2)])/2])/(a*\[Delta]*Hypergeometric2F1[(-Sqrt[\[Beta]^4*\[Delta]^2*(2*e + \[Delta])^2] + \[Beta]^2*\[Delta]*(3*\[Delta] + 2*\[Epsilon]))/(4*\[Beta]^2*\[Delta]^2), (Sqrt[\[Beta]^4*\[Delta]^2*(2*e + \[Delta])^2] + \[Beta]^2*\[Delta]*(3*\[Delta] + 2*\[Epsilon]))/(4*\[Beta]^2*\[Delta]^2), (\[Delta]*(-2*e + \[Beta]^2 + \[Delta])*Sqrt[(a^2*\[Beta]^2)/(a^2*\[Beta]^2 + \[Delta]^2)] + a*\[Beta]*(-(\[Delta]*(-5 + Sqrt[(a^2*\[Beta]^2)/(a^2*\[Beta]^2 + \[Delta]^2)])) - 2*(-1 + Sqrt[(a^2*\[Beta]^2)/(a^2*\[Beta]^2 + \[Delta]^2)])*\[Epsilon]))/(4*a*\[Beta]*\[Delta]), (1 - Sqrt[(a^2*\[Beta]^2)/(a^2*\[Beta]^2 + \[Delta]^2)])/2]))/\[Beta]^2 == Inactive[ContinuedFractionK][e + (-1)^k*(k*\[Delta] + \[Epsilon]), a*k + (-1)^k*(a*k + \[Beta]), {k, 1, Infinity}], Element[a | \[Beta] | e | \[Delta] | \[Epsilon], Complexes]]

(* {"LinearAlternating/LinearAlternating", 23}*)
ConditionalExpression[-((b^2*(e - \[Delta] - \[Epsilon]))/(2*a*b^2 + b^3 + 2*b*e + b*\[Delta] - b*(2*a*b + b^2 + e + 2*\[Delta] + \[Epsilon]) - ((a*b*\[Delta]*(b^2 + 2*e + \[Delta]) + \[Delta]^2*Sqrt[(a^2*b^2)/(a^2*b^2 + \[Delta]^2)]*(3*\[Delta] + 2*\[Epsilon]) + a^2*b^2*(\[Delta]*(-1 + 3*Sqrt[(a^2*b^2)/(a^2*b^2 + \[Delta]^2)]) + 2*(-1 + Sqrt[(a^2*b^2)/(a^2*b^2 + \[Delta]^2)])*\[Epsilon]))*Hypergeometric2F1[(-Sqrt[b^4*\[Delta]^2*(-2*e + \[Delta])^2] + b^2*\[Delta]*(\[Delta] + 2*\[Epsilon]))/(4*b^2*\[Delta]^2), (Sqrt[b^4*\[Delta]^2*(-2*e + \[Delta])^2] + b^2*\[Delta]*(\[Delta] + 2*\[Epsilon]))/(4*b^2*\[Delta]^2), (\[Delta]*(b^2 + 2*e + \[Delta])*Sqrt[(a^2*b^2)/(a^2*b^2 + \[Delta]^2)] + a*b*(-(\[Delta]*(-3 + Sqrt[(a^2*b^2)/(a^2*b^2 + \[Delta]^2)])) - 2*(-1 + Sqrt[(a^2*b^2)/(a^2*b^2 + \[Delta]^2)])*\[Epsilon]))/(4*a*b*\[Delta]), (1 - Sqrt[(a^2*b^2)/(a^2*b^2 + \[Delta]^2)])/2])/(a*\[Delta]*Hypergeometric2F1[(-Sqrt[b^4*\[Delta]^2*(-2*e + \[Delta])^2] + b^2*\[Delta]*(5*\[Delta] + 2*\[Epsilon]))/(4*b^2*\[Delta]^2), (Sqrt[b^4*\[Delta]^2*(-2*e + \[Delta])^2] + b^2*\[Delta]*(5*\[Delta] + 2*\[Epsilon]))/(4*b^2*\[Delta]^2), (\[Delta]*(b^2 + 2*e + \[Delta])*Sqrt[(a^2*b^2)/(a^2*b^2 + \[Delta]^2)] + a*b*(-(\[Delta]*(-7 + Sqrt[(a^2*b^2)/(a^2*b^2 + \[Delta]^2)])) - 2*(-1 + Sqrt[(a^2*b^2)/(a^2*b^2 + \[Delta]^2)])*\[Epsilon]))/(4*a*b*\[Delta]), (1 - Sqrt[(a^2*b^2)/(a^2*b^2 + \[Delta]^2)])/2]))) == Inactive[ContinuedFractionK][e + (-1)^k*(k*\[Delta] + \[Epsilon]), b - (-1 + (-1)^k)*a*k, {k, 1, Infinity}], Element[a | b | e | \[Delta] | \[Epsilon], Complexes]]

(* {"LinearAlternating/LinearAlternating", 24}*)
ConditionalExpression[(-b^3 - 2*b*e + b*\[Delta] + b*(e - \[Delta] - \[Epsilon]) + ((a*b*(b^2 + 2*e - \[Delta])*\[Delta] + \[Delta]^2*Sqrt[(a^2*b^2)/(a^2*b^2 + \[Delta]^2)]*(\[Delta] + 2*\[Epsilon]) + a^2*b^2*(-1 + Sqrt[(a^2*b^2)/(a^2*b^2 + \[Delta]^2)])*(\[Delta] + 2*\[Epsilon]))*Hypergeometric2F1[(Sqrt[b^4*\[Delta]^2*(2*e + \[Delta])^2] - b^2*\[Delta]*(\[Delta] - 2*\[Epsilon]))/(4*b^2*\[Delta]^2), -(Sqrt[b^4*\[Delta]^2*(2*e + \[Delta])^2] + b^2*\[Delta]*(\[Delta] - 2*\[Epsilon]))/(4*b^2*\[Delta]^2), ((b^2 + 2*e - \[Delta])*\[Delta]*Sqrt[(a^2*b^2)/(a^2*b^2 + \[Delta]^2)] - a*b*(-1 + Sqrt[(a^2*b^2)/(a^2*b^2 + \[Delta]^2)])*(\[Delta] + 2*\[Epsilon]))/(4*a*b*\[Delta]), (1 - Sqrt[(a^2*b^2)/(a^2*b^2 + \[Delta]^2)])/2])/(a*\[Delta]*Hypergeometric2F1[(-Sqrt[b^4*\[Delta]^2*(2*e + \[Delta])^2] + b^2*\[Delta]*(3*\[Delta] + 2*\[Epsilon]))/(4*b^2*\[Delta]^2), (Sqrt[b^4*\[Delta]^2*(2*e + \[Delta])^2] + b^2*\[Delta]*(3*\[Delta] + 2*\[Epsilon]))/(4*b^2*\[Delta]^2), ((b^2 + 2*e - \[Delta])*\[Delta]*Sqrt[(a^2*b^2)/(a^2*b^2 + \[Delta]^2)] + a*b*(-(\[Delta]*(-5 + Sqrt[(a^2*b^2)/(a^2*b^2 + \[Delta]^2)])) - 2*(-1 + Sqrt[(a^2*b^2)/(a^2*b^2 + \[Delta]^2)])*\[Epsilon]))/(4*a*b*\[Delta]), (1 - Sqrt[(a^2*b^2)/(a^2*b^2 + \[Delta]^2)])/2]))/b^2 == Inactive[ContinuedFractionK][e + (-1)^k*(k*\[Delta] + \[Epsilon]), b + (1 + (-1)^k)*a*k, {k, 1, Infinity}], Element[a | b | e | \[Delta] | \[Epsilon], Complexes]]

(* {"LinearAlternating/LinearAlternating", 25}*)
ConditionalExpression[-(((b + \[Beta])^2*(d - \[Delta]))/(2*a*b^2 + b^3 + 3*b*d + 4*a*b*\[Beta] + b^2*\[Beta] + 3*d*\[Beta] + 2*a*\[Beta]^2 - b*\[Beta]^2 - \[Beta]^3 + b*\[Delta] + \[Beta]*\[Delta] - (b + \[Beta])*(b^2 + 2*d - \[Beta]^2 + 2*a*(b + \[Beta]) + 2*\[Delta]) - ((b + \[Beta])*(b^2*d - d*\[Beta]^2 + d*\[Delta] + 3*\[Delta]^2*Sqrt[(d + a*(b + \[Beta]))^2/(2*a*d*(b + \[Beta]) + a^2*(b + \[Beta])^2 + \[Delta]^2)] + a^2*(b + \[Beta])^2*(-1 + 3*Sqrt[(d + a*(b + \[Beta]))^2/(2*a*d*(b + \[Beta]) + a^2*(b + \[Beta])^2 + \[Delta]^2)]) + a*(b + \[Beta])*(b^2 - d - \[Beta]^2 + \[Delta] + 6*d*Sqrt[(d + a*(b + \[Beta]))^2/(2*a*d*(b + \[Beta]) + a^2*(b + \[Beta])^2 + \[Delta]^2)])))/((d + a*(b + \[Beta]))*Hypergeometric2F1[(5*d^2*\[Beta]^2 - 5*\[Beta]^2*\[Delta]^2 + 5*b^2*(d^2 - \[Delta]^2) + 10*b*\[Beta]*(d^2 - \[Delta]^2) - Sqrt[(b + \[Beta])^4*(-d^2 + \[Delta]^2)^2])/(4*(b + \[Beta])^2*(d^2 - \[Delta]^2)), (5*d^2*\[Beta]^2 - 5*\[Beta]^2*\[Delta]^2 + 5*b^2*(d^2 - \[Delta]^2) + 10*b*\[Beta]*(d^2 - \[Delta]^2) + Sqrt[(b + \[Beta])^4*(-d^2 + \[Delta]^2)^2])/(4*(b + \[Beta])^2*(d^2 - \[Delta]^2)), (7*d + (b^2 - \[Beta]^2 + \[Delta])*Sqrt[(d + a*(b + \[Beta]))^2/(2*a*d*(b + \[Beta]) + a^2*(b + \[Beta])^2 + \[Delta]^2)] - a*(b + \[Beta])*(-7 + Sqrt[(d + a*(b + \[Beta]))^2/(2*a*d*(b + \[Beta]) + a^2*(b + \[Beta])^2 + \[Delta]^2)]))/(4*(d + a*(b + \[Beta]))), (1 - Sqrt[(d + a*(b + \[Beta]))^2/(2*a*d*(b + \[Beta]) + a^2*(b + \[Beta])^2 + \[Delta]^2)])/2]))) == Inactive[ContinuedFractionK][k*(d + (-1)^k*\[Delta]), b + a*k + (-1)^k*(-(a*k) + \[Beta]), {k, 1, Infinity}], Element[a | b | \[Beta] | d | \[Delta], Complexes]]

(* {"LinearAlternating/LinearAlternating", 26}*)
ConditionalExpression[(-2*b^3 - 2*b*d + 2*b^2*\[Beta] + 2*d*\[Beta] + 2*b*\[Beta]^2 - 2*\[Beta]^3 + 2*(b - \[Beta])*(d - \[Delta]) + 2*b*\[Delta] - 2*\[Beta]*\[Delta] + (2*(b - \[Beta])*(b^2*d - d*\[Beta]^2 - d*\[Delta] + \[Delta]^2*Sqrt[(d + a*(b - \[Beta]))^2/(2*a*d*(b - \[Beta]) + a^2*(b - \[Beta])^2 + \[Delta]^2)] + a^2*(b - \[Beta])^2*(-1 + Sqrt[(d + a*(b - \[Beta]))^2/(2*a*d*(b - \[Beta]) + a^2*(b - \[Beta])^2 + \[Delta]^2)]) + a*(b - \[Beta])*(b^2 - d - \[Beta]^2 - \[Delta] + 2*d*Sqrt[(d + a*(b - \[Beta]))^2/(2*a*d*(b - \[Beta]) + a^2*(b - \[Beta])^2 + \[Delta]^2)])))/((d + a*(b - \[Beta]))*Hypergeometric2F1[(3*d^2*\[Beta]^2 - 3*\[Beta]^2*\[Delta]^2 + 3*b^2*(d^2 - \[Delta]^2) + 6*b*\[Beta]*(-d^2 + \[Delta]^2) - Sqrt[(-b + \[Beta])^4*(-d^2 + \[Delta]^2)^2])/(4*(b - \[Beta])^2*(d^2 - \[Delta]^2)), (3*d^2*\[Beta]^2 - 3*\[Beta]^2*\[Delta]^2 + 3*b^2*(d^2 - \[Delta]^2) + 6*b*\[Beta]*(-d^2 + \[Delta]^2) + Sqrt[(-b + \[Beta])^4*(-d^2 + \[Delta]^2)^2])/(4*(b - \[Beta])^2*(d^2 - \[Delta]^2)), (5*d + (b^2 - \[Beta]^2 - \[Delta])*Sqrt[(d + a*(b - \[Beta]))^2/(2*a*d*(b - \[Beta]) + a^2*(b - \[Beta])^2 + \[Delta]^2)] - a*(b - \[Beta])*(-5 + Sqrt[(d + a*(b - \[Beta]))^2/(2*a*d*(b - \[Beta]) + a^2*(b - \[Beta])^2 + \[Delta]^2)]))/(4*(d + a*(b - \[Beta]))), (1 - Sqrt[(d + a*(b - \[Beta]))^2/(2*a*d*(b - \[Beta]) + a^2*(b - \[Beta])^2 + \[Delta]^2)])/2]))/(2*(b - \[Beta])^2) == Inactive[ContinuedFractionK][k*(d + (-1)^k*\[Delta]), b + a*k + (-1)^k*(a*k + \[Beta]), {k, 1, Infinity}], Element[a | b | \[Beta] | d | \[Delta], Complexes]]

(* {"LinearAlternating/LinearAlternating", 27}*)
ConditionalExpression[(\[Beta]*(d - \[Delta]))/(-d + \[Delta] + (d*(-\[Beta]^2 + \[Delta]) + 3*\[Delta]^2*Sqrt[(d + a*\[Beta])^2/(2*a*d*\[Beta] + a^2*\[Beta]^2 + \[Delta]^2)] + a^2*\[Beta]^2*(-1 + 3*Sqrt[(d + a*\[Beta])^2/(2*a*d*\[Beta] + a^2*\[Beta]^2 + \[Delta]^2)]) - a*\[Beta]*(d + \[Beta]^2 - \[Delta] - 6*d*Sqrt[(d + a*\[Beta])^2/(2*a*d*\[Beta] + a^2*\[Beta]^2 + \[Delta]^2)]))/((d + a*\[Beta])*Hypergeometric2F1[(5*d^2*\[Beta]^2 - 5*\[Beta]^2*\[Delta]^2 + Sqrt[\[Beta]^4*(d^2 - \[Delta]^2)^2])/(4*\[Beta]^2*(d^2 - \[Delta]^2)), -(-5*d^2*\[Beta]^2 + 5*\[Beta]^2*\[Delta]^2 + Sqrt[\[Beta]^4*(d^2 - \[Delta]^2)^2])/(4*\[Beta]^2*(d^2 - \[Delta]^2)), (7*d + (-\[Beta]^2 + \[Delta])*Sqrt[(d + a*\[Beta])^2/(2*a*d*\[Beta] + a^2*\[Beta]^2 + \[Delta]^2)] - a*\[Beta]*(-7 + Sqrt[(d + a*\[Beta])^2/(2*a*d*\[Beta] + a^2*\[Beta]^2 + \[Delta]^2)]))/(4*(d + a*\[Beta])), 1/2 - Sqrt[(d + a*\[Beta])^2/(2*a*d*\[Beta] + a^2*\[Beta]^2 + \[Delta]^2)]/2])) == Inactive[ContinuedFractionK][k*(d + (-1)^k*\[Delta]), a*k + (-1)^k*(-(a*k) + \[Beta]), {k, 1, Infinity}], Element[a | \[Beta] | d | \[Delta], Complexes]]

(* {"LinearAlternating/LinearAlternating", 28}*)
ConditionalExpression[-((\[Beta]^2 + (-(d*(\[Beta]^2 + \[Delta])) + \[Delta]^2*Sqrt[(d - a*\[Beta])^2/(-2*a*d*\[Beta] + a^2*\[Beta]^2 + \[Delta]^2)] + a^2*\[Beta]^2*(-1 + Sqrt[(d - a*\[Beta])^2/(-2*a*d*\[Beta] + a^2*\[Beta]^2 + \[Delta]^2)]) + a*\[Beta]*(d + \[Beta]^2 + \[Delta] - 2*d*Sqrt[(d - a*\[Beta])^2/(-2*a*d*\[Beta] + a^2*\[Beta]^2 + \[Delta]^2)]))/((d - a*\[Beta])*Hypergeometric2F1[(3*d^2*\[Beta]^2 - 3*\[Beta]^2*\[Delta]^2 + Sqrt[\[Beta]^4*(d^2 - \[Delta]^2)^2])/(4*\[Beta]^2*(d^2 - \[Delta]^2)), -(-3*d^2*\[Beta]^2 + 3*\[Beta]^2*\[Delta]^2 + Sqrt[\[Beta]^4*(d^2 - \[Delta]^2)^2])/(4*\[Beta]^2*(d^2 - \[Delta]^2)), (5*d - (\[Beta]^2 + \[Delta])*Sqrt[(d - a*\[Beta])^2/(-2*a*d*\[Beta] + a^2*\[Beta]^2 + \[Delta]^2)] + a*\[Beta]*(-5 + Sqrt[(d - a*\[Beta])^2/(-2*a*d*\[Beta] + a^2*\[Beta]^2 + \[Delta]^2)]))/(4*(d - a*\[Beta])), (1 - Sqrt[(d - a*\[Beta])^2/(-2*a*d*\[Beta] + a^2*\[Beta]^2 + \[Delta]^2)])/2]))/\[Beta]) == Inactive[ContinuedFractionK][k*(d + (-1)^k*\[Delta]), a*k + (-1)^k*(a*k + \[Beta]), {k, 1, Infinity}], Element[a | \[Beta] | d | \[Delta], Complexes]]

(* {"LinearAlternating/LinearAlternating", 29}*)
ConditionalExpression[(b*(d - \[Delta]))/(-3*d - \[Delta] + 2*(d + \[Delta]) + (b^2*d + a^2*b^2*(-1 + 3*Sqrt[(a*b + d)^2/(a^2*b^2 + 2*a*b*d + \[Delta]^2)]) + a*b*(b^2 - d + \[Delta] + 6*d*Sqrt[(a*b + d)^2/(a^2*b^2 + 2*a*b*d + \[Delta]^2)]) + \[Delta]*(d + 3*\[Delta]*Sqrt[(a*b + d)^2/(a^2*b^2 + 2*a*b*d + \[Delta]^2)]))/((a*b + d)*Hypergeometric2F1[-(-5*b^2*(d^2 - \[Delta]^2) + Sqrt[b^4*(d^2 - \[Delta]^2)^2])/(4*b^2*(d^2 - \[Delta]^2)), (5*b^2*(d^2 - \[Delta]^2) + Sqrt[b^4*(d^2 - \[Delta]^2)^2])/(4*b^2*(d^2 - \[Delta]^2)), (7*d + (b^2 + \[Delta])*Sqrt[(a*b + d)^2/(a^2*b^2 + 2*a*b*d + \[Delta]^2)] - a*b*(-7 + Sqrt[(a*b + d)^2/(a^2*b^2 + 2*a*b*d + \[Delta]^2)]))/(4*(a*b + d)), 1/2 - Sqrt[(a*b + d)^2/(a^2*b^2 + 2*a*b*d + \[Delta]^2)]/2])) == Inactive[ContinuedFractionK][d*k + (-1)^k*k*\[Delta], b - (-1 + (-1)^k)*a*k, {k, 1, Infinity}], Element[a | b | d | \[Delta], Complexes]]

(* {"LinearAlternating/LinearAlternating", 30}*)
ConditionalExpression[(-b^2 + (b^2*d + a^2*b^2*(-1 + Sqrt[(a*b + d)^2/(a^2*b^2 + 2*a*b*d + \[Delta]^2)]) + a*b*(b^2 - d - \[Delta] + 2*d*Sqrt[(a*b + d)^2/(a^2*b^2 + 2*a*b*d + \[Delta]^2)]) + \[Delta]*(-d + \[Delta]*Sqrt[(a*b + d)^2/(a^2*b^2 + 2*a*b*d + \[Delta]^2)]))/((a*b + d)*Hypergeometric2F1[-(-3*b^2*(d^2 - \[Delta]^2) + Sqrt[b^4*(d^2 - \[Delta]^2)^2])/(4*b^2*(d^2 - \[Delta]^2)), (3*b^2*(d^2 - \[Delta]^2) + Sqrt[b^4*(d^2 - \[Delta]^2)^2])/(4*b^2*(d^2 - \[Delta]^2)), (5*d + (b^2 - \[Delta])*Sqrt[(a*b + d)^2/(a^2*b^2 + 2*a*b*d + \[Delta]^2)] - a*b*(-5 + Sqrt[(a*b + d)^2/(a^2*b^2 + 2*a*b*d + \[Delta]^2)]))/(4*(a*b + d)), 1/2 - Sqrt[(a*b + d)^2/(a^2*b^2 + 2*a*b*d + \[Delta]^2)]/2]))/b == Inactive[ContinuedFractionK][d*k + (-1)^k*k*\[Delta], b + (1 + (-1)^k)*a*k, {k, 1, Infinity}], Element[a | b | d | \[Delta], Complexes]]

(* {"LinearAlternating/LinearAlternating", 31}*)
ConditionalExpression[-(((b + \[Beta])^2*(-\[Delta] - \[Epsilon]))/(2*a*b^2 + b^3 + 4*a*b*\[Beta] + b^2*\[Beta] + 2*a*\[Beta]^2 - b*\[Beta]^2 - \[Beta]^3 + b*\[Delta] + \[Beta]*\[Delta] - (b + \[Beta])*(b^2 - \[Beta]^2 + 2*a*(b + \[Beta]) + 2*\[Delta] + \[Epsilon]) - ((a*(b + \[Beta])*\[Delta]*(b^2 - \[Beta]^2 + \[Delta]) + \[Delta]^2*Sqrt[(a^2*(b + \[Beta])^2)/(a^2*(b + \[Beta])^2 + \[Delta]^2)]*(3*\[Delta] + 2*\[Epsilon]) + a^2*(b + \[Beta])^2*(\[Delta]*(-1 + 3*Sqrt[(a^2*(b + \[Beta])^2)/(a^2*(b + \[Beta])^2 + \[Delta]^2)]) + 2*(-1 + Sqrt[(a^2*(b + \[Beta])^2)/(a^2*(b + \[Beta])^2 + \[Delta]^2)])*\[Epsilon]))*Hypergeometric2F1[(\[Beta]^2*\[Delta]^2 - Sqrt[(b + \[Beta])^4*\[Delta]^4] + 2*\[Beta]^2*\[Delta]*\[Epsilon] + b^2*\[Delta]*(\[Delta] + 2*\[Epsilon]) + 2*b*\[Beta]*\[Delta]*(\[Delta] + 2*\[Epsilon]))/(4*(b + \[Beta])^2*\[Delta]^2), (\[Beta]^2*\[Delta]^2 + Sqrt[(b + \[Beta])^4*\[Delta]^4] + 2*\[Beta]^2*\[Delta]*\[Epsilon] + b^2*\[Delta]*(\[Delta] + 2*\[Epsilon]) + 2*b*\[Beta]*\[Delta]*(\[Delta] + 2*\[Epsilon]))/(4*(b + \[Beta])^2*\[Delta]^2), (\[Delta]*(b^2 - \[Beta]^2 + \[Delta])*Sqrt[(a^2*(b + \[Beta])^2)/(a^2*(b + \[Beta])^2 + \[Delta]^2)] - a*(b + \[Beta])*(\[Delta]*(-3 + Sqrt[(a^2*(b + \[Beta])^2)/(a^2*(b + \[Beta])^2 + \[Delta]^2)]) + 2*(-1 + Sqrt[(a^2*(b + \[Beta])^2)/(a^2*(b + \[Beta])^2 + \[Delta]^2)])*\[Epsilon]))/(4*a*(b + \[Beta])*\[Delta]), (1 - Sqrt[(a^2*(b + \[Beta])^2)/(a^2*(b + \[Beta])^2 + \[Delta]^2)])/2])/(a*\[Delta]*Hypergeometric2F1[(5*\[Beta]^2*\[Delta]^2 - Sqrt[(b + \[Beta])^4*\[Delta]^4] + 2*\[Beta]^2*\[Delta]*\[Epsilon] + b^2*\[Delta]*(5*\[Delta] + 2*\[Epsilon]) + 2*b*\[Beta]*\[Delta]*(5*\[Delta] + 2*\[Epsilon]))/(4*(b + \[Beta])^2*\[Delta]^2), (5*\[Beta]^2*\[Delta]^2 + Sqrt[(b + \[Beta])^4*\[Delta]^4] + 2*\[Beta]^2*\[Delta]*\[Epsilon] + b^2*\[Delta]*(5*\[Delta] + 2*\[Epsilon]) + 2*b*\[Beta]*\[Delta]*(5*\[Delta] + 2*\[Epsilon]))/(4*(b + \[Beta])^2*\[Delta]^2), (\[Delta]*(b^2 - \[Beta]^2 + \[Delta])*Sqrt[(a^2*(b + \[Beta])^2)/(a^2*(b + \[Beta])^2 + \[Delta]^2)] - a*(b + \[Beta])*(\[Delta]*(-7 + Sqrt[(a^2*(b + \[Beta])^2)/(a^2*(b + \[Beta])^2 + \[Delta]^2)]) + 2*(-1 + Sqrt[(a^2*(b + \[Beta])^2)/(a^2*(b + \[Beta])^2 + \[Delta]^2)])*\[Epsilon]))/(4*a*(b + \[Beta])*\[Delta]), (1 - Sqrt[(a^2*(b + \[Beta])^2)/(a^2*(b + \[Beta])^2 + \[Delta]^2)])/2]))) == Inactive[ContinuedFractionK][(-1)^k*(k*\[Delta] + \[Epsilon]), b + a*k + (-1)^k*(-(a*k) + \[Beta]), {k, 1, Infinity}], Element[a | b | \[Beta] | \[Delta] | \[Epsilon], Complexes]]

(* {"LinearAlternating/LinearAlternating", 32}*)
ConditionalExpression[(-b^3 + b^2*\[Beta] + b*\[Beta]^2 - \[Beta]^3 + b*\[Delta] - \[Beta]*\[Delta] - (b - \[Beta])*(\[Delta] + \[Epsilon]) + ((a*(b - \[Beta])*(b^2 - \[Beta]^2 - \[Delta])*\[Delta] + \[Delta]^2*Sqrt[(a^2*(b - \[Beta])^2)/(a^2*(b - \[Beta])^2 + \[Delta]^2)]*(\[Delta] + 2*\[Epsilon]) + a^2*(b - \[Beta])^2*(-1 + Sqrt[(a^2*(b - \[Beta])^2)/(a^2*(b - \[Beta])^2 + \[Delta]^2)])*(\[Delta] + 2*\[Epsilon]))*Hypergeometric2F1[-(Sqrt[(b - \[Beta])^4*\[Delta]^4] + b^2*\[Delta]*(\[Delta] - 2*\[Epsilon]) - 2*b*\[Beta]*\[Delta]*(\[Delta] - 2*\[Epsilon]) + \[Beta]^2*\[Delta]*(\[Delta] - 2*\[Epsilon]))/(4*(b - \[Beta])^2*\[Delta]^2), (-(\[Beta]^2*\[Delta]^2) + Sqrt[(-b + \[Beta])^4*\[Delta]^4] - b^2*\[Delta]*(\[Delta] - 2*\[Epsilon]) + 2*b*\[Beta]*\[Delta]*(\[Delta] - 2*\[Epsilon]) + 2*\[Beta]^2*\[Delta]*\[Epsilon])/(4*(b - \[Beta])^2*\[Delta]^2), ((b^2 - \[Beta]^2 - \[Delta])*\[Delta]*Sqrt[(a^2*(b - \[Beta])^2)/(a^2*(b - \[Beta])^2 + \[Delta]^2)] - a*(b - \[Beta])*(-1 + Sqrt[(a^2*(b - \[Beta])^2)/(a^2*(b - \[Beta])^2 + \[Delta]^2)])*(\[Delta] + 2*\[Epsilon]))/(4*a*(b - \[Beta])*\[Delta]), (1 - Sqrt[(a^2*(b - \[Beta])^2)/(a^2*(b - \[Beta])^2 + \[Delta]^2)])/2])/(a*\[Delta]*Hypergeometric2F1[(3*\[Beta]^2*\[Delta]^2 + Sqrt[(-b + \[Beta])^4*\[Delta]^4] + 2*\[Beta]^2*\[Delta]*\[Epsilon] + b^2*\[Delta]*(3*\[Delta] + 2*\[Epsilon]) - 2*b*\[Beta]*\[Delta]*(3*\[Delta] + 2*\[Epsilon]))/(4*(b - \[Beta])^2*\[Delta]^2), (-Sqrt[(b - \[Beta])^4*\[Delta]^4] + b^2*\[Delta]*(3*\[Delta] + 2*\[Epsilon]) - 2*b*\[Beta]*\[Delta]*(3*\[Delta] + 2*\[Epsilon]) + \[Beta]^2*\[Delta]*(3*\[Delta] + 2*\[Epsilon]))/(4*(b - \[Beta])^2*\[Delta]^2), ((b^2 - \[Beta]^2 - \[Delta])*\[Delta]*Sqrt[(a^2*(b - \[Beta])^2)/(a^2*(b - \[Beta])^2 + \[Delta]^2)] - a*(b - \[Beta])*(\[Delta]*(-5 + Sqrt[(a^2*(b - \[Beta])^2)/(a^2*(b - \[Beta])^2 + \[Delta]^2)]) + 2*(-1 + Sqrt[(a^2*(b - \[Beta])^2)/(a^2*(b - \[Beta])^2 + \[Delta]^2)])*\[Epsilon]))/(4*a*(b - \[Beta])*\[Delta]), (1 - Sqrt[(a^2*(b - \[Beta])^2)/(a^2*(b - \[Beta])^2 + \[Delta]^2)])/2]))/(b - \[Beta])^2 == Inactive[ContinuedFractionK][(-1)^k*(k*\[Delta] + \[Epsilon]), b + a*k + (-1)^k*(a*k + \[Beta]), {k, 1, Infinity}], Element[a | b | \[Beta] | \[Delta] | \[Epsilon], Complexes]]

(* {"LinearAlternating/LinearAlternating", 33}*)
ConditionalExpression[(\[Beta]^2*(-\[Delta] - \[Epsilon]))/(-2*a*\[Beta]^2 + \[Beta]^3 - \[Beta]*\[Delta] + \[Beta]*(2*a*\[Beta] - \[Beta]^2 + 2*\[Delta] + \[Epsilon]) + ((a*\[Beta]*\[Delta]*(-\[Beta]^2 + \[Delta]) + \[Delta]^2*Sqrt[(a^2*\[Beta]^2)/(a^2*\[Beta]^2 + \[Delta]^2)]*(3*\[Delta] + 2*\[Epsilon]) + a^2*\[Beta]^2*(\[Delta]*(-1 + 3*Sqrt[(a^2*\[Beta]^2)/(a^2*\[Beta]^2 + \[Delta]^2)]) + 2*(-1 + Sqrt[(a^2*\[Beta]^2)/(a^2*\[Beta]^2 + \[Delta]^2)])*\[Epsilon]))*Hypergeometric2F1[(-Sqrt[\[Beta]^4*\[Delta]^4] + \[Beta]^2*\[Delta]*(\[Delta] + 2*\[Epsilon]))/(4*\[Beta]^2*\[Delta]^2), (Sqrt[\[Beta]^4*\[Delta]^4] + \[Beta]^2*\[Delta]*(\[Delta] + 2*\[Epsilon]))/(4*\[Beta]^2*\[Delta]^2), (\[Delta]*(-\[Beta]^2 + \[Delta])*Sqrt[(a^2*\[Beta]^2)/(a^2*\[Beta]^2 + \[Delta]^2)] + a*\[Beta]*(-(\[Delta]*(-3 + Sqrt[(a^2*\[Beta]^2)/(a^2*\[Beta]^2 + \[Delta]^2)])) - 2*(-1 + Sqrt[(a^2*\[Beta]^2)/(a^2*\[Beta]^2 + \[Delta]^2)])*\[Epsilon]))/(4*a*\[Beta]*\[Delta]), (1 - Sqrt[(a^2*\[Beta]^2)/(a^2*\[Beta]^2 + \[Delta]^2)])/2])/(a*\[Delta]*Hypergeometric2F1[(5 - (\[Beta]^2*\[Delta]^2)/Sqrt[\[Beta]^4*\[Delta]^4] + (2*\[Epsilon])/\[Delta])/4, (Sqrt[\[Beta]^4*\[Delta]^4] + \[Beta]^2*\[Delta]*(5*\[Delta] + 2*\[Epsilon]))/(4*\[Beta]^2*\[Delta]^2), (\[Delta]*(-\[Beta]^2 + \[Delta])*Sqrt[(a^2*\[Beta]^2)/(a^2*\[Beta]^2 + \[Delta]^2)] + a*\[Beta]*(-(\[Delta]*(-7 + Sqrt[(a^2*\[Beta]^2)/(a^2*\[Beta]^2 + \[Delta]^2)])) - 2*(-1 + Sqrt[(a^2*\[Beta]^2)/(a^2*\[Beta]^2 + \[Delta]^2)])*\[Epsilon]))/(4*a*\[Beta]*\[Delta]), (1 - Sqrt[(a^2*\[Beta]^2)/(a^2*\[Beta]^2 + \[Delta]^2)])/2])) == Inactive[ContinuedFractionK][(-1)^k*(k*\[Delta] + \[Epsilon]), a*k + (-1)^k*(-(a*k) + \[Beta]), {k, 1, Infinity}], Element[a | \[Beta] | \[Delta] | \[Epsilon], Complexes]]

(* {"LinearAlternating/LinearAlternating", 34}*)
ConditionalExpression[(-\[Beta]^3 - \[Beta]*\[Delta] + \[Beta]*(\[Delta] + \[Epsilon]) + ((a*\[Beta]*\[Delta]*(\[Beta]^2 + \[Delta]) + \[Delta]^2*Sqrt[(a^2*\[Beta]^2)/(a^2*\[Beta]^2 + \[Delta]^2)]*(\[Delta] + 2*\[Epsilon]) + a^2*\[Beta]^2*(-1 + Sqrt[(a^2*\[Beta]^2)/(a^2*\[Beta]^2 + \[Delta]^2)])*(\[Delta] + 2*\[Epsilon]))*Hypergeometric2F1[(Sqrt[\[Beta]^4*\[Delta]^4] - \[Beta]^2*\[Delta]*(\[Delta] - 2*\[Epsilon]))/(4*\[Beta]^2*\[Delta]^2), (-1 - (\[Beta]^2*\[Delta]^2)/Sqrt[\[Beta]^4*\[Delta]^4] + (2*\[Epsilon])/\[Delta])/4, (\[Delta]*(\[Beta]^2 + \[Delta])*Sqrt[(a^2*\[Beta]^2)/(a^2*\[Beta]^2 + \[Delta]^2)] - a*\[Beta]*(-1 + Sqrt[(a^2*\[Beta]^2)/(a^2*\[Beta]^2 + \[Delta]^2)])*(\[Delta] + 2*\[Epsilon]))/(4*a*\[Beta]*\[Delta]), (1 - Sqrt[(a^2*\[Beta]^2)/(a^2*\[Beta]^2 + \[Delta]^2)])/2])/(a*\[Delta]*Hypergeometric2F1[(3 - (\[Beta]^2*\[Delta]^2)/Sqrt[\[Beta]^4*\[Delta]^4] + (2*\[Epsilon])/\[Delta])/4, (Sqrt[\[Beta]^4*\[Delta]^4] + \[Beta]^2*\[Delta]*(3*\[Delta] + 2*\[Epsilon]))/(4*\[Beta]^2*\[Delta]^2), (\[Delta]*(\[Beta]^2 + \[Delta])*Sqrt[(a^2*\[Beta]^2)/(a^2*\[Beta]^2 + \[Delta]^2)] + a*\[Beta]*(-(\[Delta]*(-5 + Sqrt[(a^2*\[Beta]^2)/(a^2*\[Beta]^2 + \[Delta]^2)])) - 2*(-1 + Sqrt[(a^2*\[Beta]^2)/(a^2*\[Beta]^2 + \[Delta]^2)])*\[Epsilon]))/(4*a*\[Beta]*\[Delta]), (1 - Sqrt[(a^2*\[Beta]^2)/(a^2*\[Beta]^2 + \[Delta]^2)])/2]))/\[Beta]^2 == Inactive[ContinuedFractionK][(-1)^k*(k*\[Delta] + \[Epsilon]), a*k + (-1)^k*(a*k + \[Beta]), {k, 1, Infinity}], Element[a | \[Beta] | \[Delta] | \[Epsilon], Complexes]]

(* {"LinearAlternating/LinearAlternating", 35}*)
ConditionalExpression[(b^2*(-\[Delta] - \[Epsilon]))/(-2*a*b^2 - b^3 - b*\[Delta] + b*(2*a*b + b^2 + 2*\[Delta] + \[Epsilon]) + ((a*b*\[Delta]*(b^2 + \[Delta]) + \[Delta]^2*Sqrt[(a^2*b^2)/(a^2*b^2 + \[Delta]^2)]*(3*\[Delta] + 2*\[Epsilon]) + a^2*b^2*(\[Delta]*(-1 + 3*Sqrt[(a^2*b^2)/(a^2*b^2 + \[Delta]^2)]) + 2*(-1 + Sqrt[(a^2*b^2)/(a^2*b^2 + \[Delta]^2)])*\[Epsilon]))*Hypergeometric2F1[(-Sqrt[b^4*\[Delta]^4] + b^2*\[Delta]*(\[Delta] + 2*\[Epsilon]))/(4*b^2*\[Delta]^2), (Sqrt[b^4*\[Delta]^4] + b^2*\[Delta]*(\[Delta] + 2*\[Epsilon]))/(4*b^2*\[Delta]^2), (\[Delta]*(b^2 + \[Delta])*Sqrt[(a^2*b^2)/(a^2*b^2 + \[Delta]^2)] + a*b*(-(\[Delta]*(-3 + Sqrt[(a^2*b^2)/(a^2*b^2 + \[Delta]^2)])) - 2*(-1 + Sqrt[(a^2*b^2)/(a^2*b^2 + \[Delta]^2)])*\[Epsilon]))/(4*a*b*\[Delta]), (1 - Sqrt[(a^2*b^2)/(a^2*b^2 + \[Delta]^2)])/2])/(a*\[Delta]*Hypergeometric2F1[(5 - (b^2*\[Delta]^2)/Sqrt[b^4*\[Delta]^4] + (2*\[Epsilon])/\[Delta])/4, (Sqrt[b^4*\[Delta]^4] + b^2*\[Delta]*(5*\[Delta] + 2*\[Epsilon]))/(4*b^2*\[Delta]^2), (\[Delta]*(b^2 + \[Delta])*Sqrt[(a^2*b^2)/(a^2*b^2 + \[Delta]^2)] + a*b*(-(\[Delta]*(-7 + Sqrt[(a^2*b^2)/(a^2*b^2 + \[Delta]^2)])) - 2*(-1 + Sqrt[(a^2*b^2)/(a^2*b^2 + \[Delta]^2)])*\[Epsilon]))/(4*a*b*\[Delta]), (1 - Sqrt[(a^2*b^2)/(a^2*b^2 + \[Delta]^2)])/2])) == Inactive[ContinuedFractionK][(-1)^k*(k*\[Delta] + \[Epsilon]), b - (-1 + (-1)^k)*a*k, {k, 1, Infinity}], Element[a | b | \[Delta] | \[Epsilon], Complexes]]

(* {"LinearAlternating/LinearAlternating", 36}*)
ConditionalExpression[(-b^3 + b*\[Delta] - b*(\[Delta] + \[Epsilon]) + ((a*b*(b^2 - \[Delta])*\[Delta] + \[Delta]^2*Sqrt[(a^2*b^2)/(a^2*b^2 + \[Delta]^2)]*(\[Delta] + 2*\[Epsilon]) + a^2*b^2*(-1 + Sqrt[(a^2*b^2)/(a^2*b^2 + \[Delta]^2)])*(\[Delta] + 2*\[Epsilon]))*Hypergeometric2F1[(Sqrt[b^4*\[Delta]^4] - b^2*\[Delta]*(\[Delta] - 2*\[Epsilon]))/(4*b^2*\[Delta]^2), (-1 - (b^2*\[Delta]^2)/Sqrt[b^4*\[Delta]^4] + (2*\[Epsilon])/\[Delta])/4, ((b^2 - \[Delta])*\[Delta]*Sqrt[(a^2*b^2)/(a^2*b^2 + \[Delta]^2)] - a*b*(-1 + Sqrt[(a^2*b^2)/(a^2*b^2 + \[Delta]^2)])*(\[Delta] + 2*\[Epsilon]))/(4*a*b*\[Delta]), (1 - Sqrt[(a^2*b^2)/(a^2*b^2 + \[Delta]^2)])/2])/(a*\[Delta]*Hypergeometric2F1[(3 - (b^2*\[Delta]^2)/Sqrt[b^4*\[Delta]^4] + (2*\[Epsilon])/\[Delta])/4, (Sqrt[b^4*\[Delta]^4] + b^2*\[Delta]*(3*\[Delta] + 2*\[Epsilon]))/(4*b^2*\[Delta]^2), ((b^2 - \[Delta])*\[Delta]*Sqrt[(a^2*b^2)/(a^2*b^2 + \[Delta]^2)] + a*b*(-(\[Delta]*(-5 + Sqrt[(a^2*b^2)/(a^2*b^2 + \[Delta]^2)])) - 2*(-1 + Sqrt[(a^2*b^2)/(a^2*b^2 + \[Delta]^2)])*\[Epsilon]))/(4*a*b*\[Delta]), (1 - Sqrt[(a^2*b^2)/(a^2*b^2 + \[Delta]^2)])/2]))/b^2 == Inactive[ContinuedFractionK][(-1)^k*(k*\[Delta] + \[Epsilon]), b + (1 + (-1)^k)*a*k, {k, 1, Infinity}], Element[a | b | \[Delta] | \[Epsilon], Complexes]]

(* {"LinearAlternating/LinearAlternating", 37}*)
ConditionalExpression[-(((b + \[Beta])^2*(e - \[Delta]))/(2*a*b^2 + b^3 + 2*b*e + 4*a*b*\[Beta] + b^2*\[Beta] + 2*e*\[Beta] + 2*a*\[Beta]^2 - b*\[Beta]^2 - \[Beta]^3 + b*\[Delta] + \[Beta]*\[Delta] - (b + \[Beta])*(b^2 + e - \[Beta]^2 + 2*a*(b + \[Beta]) + 2*\[Delta]) - ((a*(b + \[Beta])*(b^2 + 2*e - \[Beta]^2 + \[Delta]) + 3*\[Delta]^2*Sqrt[(a^2*(b + \[Beta])^2)/(a^2*(b + \[Beta])^2 + \[Delta]^2)] + a^2*(b + \[Beta])^2*(-1 + 3*Sqrt[(a^2*(b + \[Beta])^2)/(a^2*(b + \[Beta])^2 + \[Delta]^2)]))*Hypergeometric2F1[(b^2*\[Delta]^2 + 2*b*\[Beta]*\[Delta]^2 + \[Beta]^2*\[Delta]^2 - Sqrt[(b + \[Beta])^4*\[Delta]^2*(-2*e + \[Delta])^2])/(4*(b + \[Beta])^2*\[Delta]^2), (b^2*\[Delta]^2 + 2*b*\[Beta]*\[Delta]^2 + \[Beta]^2*\[Delta]^2 + Sqrt[(b + \[Beta])^4*\[Delta]^2*(-2*e + \[Delta])^2])/(4*(b + \[Beta])^2*\[Delta]^2), ((b^2 + 2*e - \[Beta]^2 + \[Delta])*Sqrt[(a^2*(b + \[Beta])^2)/(a^2*(b + \[Beta])^2 + \[Delta]^2)] - a*(b + \[Beta])*(-3 + Sqrt[(a^2*(b + \[Beta])^2)/(a^2*(b + \[Beta])^2 + \[Delta]^2)]))/(4*a*(b + \[Beta])), (1 - Sqrt[(a^2*(b + \[Beta])^2)/(a^2*(b + \[Beta])^2 + \[Delta]^2)])/2])/(a*Hypergeometric2F1[(5*b^2*\[Delta]^2 + 10*b*\[Beta]*\[Delta]^2 + 5*\[Beta]^2*\[Delta]^2 - Sqrt[(b + \[Beta])^4*\[Delta]^2*(-2*e + \[Delta])^2])/(4*(b + \[Beta])^2*\[Delta]^2), (5*b^2*\[Delta]^2 + 10*b*\[Beta]*\[Delta]^2 + 5*\[Beta]^2*\[Delta]^2 + Sqrt[(b + \[Beta])^4*\[Delta]^2*(-2*e + \[Delta])^2])/(4*(b + \[Beta])^2*\[Delta]^2), ((b^2 + 2*e - \[Beta]^2 + \[Delta])*Sqrt[(a^2*(b + \[Beta])^2)/(a^2*(b + \[Beta])^2 + \[Delta]^2)] - a*(b + \[Beta])*(-7 + Sqrt[(a^2*(b + \[Beta])^2)/(a^2*(b + \[Beta])^2 + \[Delta]^2)]))/(4*a*(b + \[Beta])), (1 - Sqrt[(a^2*(b + \[Beta])^2)/(a^2*(b + \[Beta])^2 + \[Delta]^2)])/2]))) == Inactive[ContinuedFractionK][e + (-1)^k*k*\[Delta], b + a*k + (-1)^k*(-(a*k) + \[Beta]), {k, 1, Infinity}], Element[a | b | \[Beta] | e | \[Delta], Complexes]]

(* {"LinearAlternating/LinearAlternating", 38}*)
ConditionalExpression[(-b^3 - 2*b*e + b^2*\[Beta] + 2*e*\[Beta] + b*\[Beta]^2 - \[Beta]^3 + (b - \[Beta])*(e - \[Delta]) + b*\[Delta] - \[Beta]*\[Delta] + ((a*(b - \[Beta])*(b^2 + 2*e - \[Beta]^2 - \[Delta]) + \[Delta]^2*Sqrt[(a^2*(b - \[Beta])^2)/(a^2*(b - \[Beta])^2 + \[Delta]^2)] + a^2*(b - \[Beta])^2*(-1 + Sqrt[(a^2*(b - \[Beta])^2)/(a^2*(b - \[Beta])^2 + \[Delta]^2)]))*Hypergeometric2F1[(-(b^2*\[Delta]^2) + 2*b*\[Beta]*\[Delta]^2 - \[Beta]^2*\[Delta]^2 + Sqrt[(b - \[Beta])^4*\[Delta]^2*(2*e + \[Delta])^2])/(4*(b - \[Beta])^2*\[Delta]^2), -(b^2*\[Delta]^2 - 2*b*\[Beta]*\[Delta]^2 + \[Beta]^2*\[Delta]^2 + Sqrt[(b - \[Beta])^4*\[Delta]^2*(2*e + \[Delta])^2])/(4*(b - \[Beta])^2*\[Delta]^2), ((b^2 + 2*e - \[Beta]^2 - \[Delta])*Sqrt[(a^2*(b - \[Beta])^2)/(a^2*(b - \[Beta])^2 + \[Delta]^2)] - a*(b - \[Beta])*(-1 + Sqrt[(a^2*(b - \[Beta])^2)/(a^2*(b - \[Beta])^2 + \[Delta]^2)]))/(4*a*(b - \[Beta])), (1 - Sqrt[(a^2*(b - \[Beta])^2)/(a^2*(b - \[Beta])^2 + \[Delta]^2)])/2])/(a*Hypergeometric2F1[-(-3*b^2*\[Delta]^2 + 6*b*\[Beta]*\[Delta]^2 - 3*\[Beta]^2*\[Delta]^2 + Sqrt[(b - \[Beta])^4*\[Delta]^2*(2*e + \[Delta])^2])/(4*(b - \[Beta])^2*\[Delta]^2), (3*b^2*\[Delta]^2 - 6*b*\[Beta]*\[Delta]^2 + 3*\[Beta]^2*\[Delta]^2 + Sqrt[(b - \[Beta])^4*\[Delta]^2*(2*e + \[Delta])^2])/(4*(b - \[Beta])^2*\[Delta]^2), ((b^2 + 2*e - \[Beta]^2 - \[Delta])*Sqrt[(a^2*(b - \[Beta])^2)/(a^2*(b - \[Beta])^2 + \[Delta]^2)] - a*(b - \[Beta])*(-5 + Sqrt[(a^2*(b - \[Beta])^2)/(a^2*(b - \[Beta])^2 + \[Delta]^2)]))/(4*a*(b - \[Beta])), (1 - Sqrt[(a^2*(b - \[Beta])^2)/(a^2*(b - \[Beta])^2 + \[Delta]^2)])/2]))/(b - \[Beta])^2 == Inactive[ContinuedFractionK][e + (-1)^k*k*\[Delta], b + a*k + (-1)^k*(a*k + \[Beta]), {k, 1, Infinity}], Element[a | b | \[Beta] | e | \[Delta], Complexes]]

(* {"LinearAlternating/LinearAlternating", 39}*)
ConditionalExpression[(\[Beta]^2*(e - \[Delta]))/(-2*e*\[Beta] - 2*a*\[Beta]^2 + \[Beta]^3 - \[Beta]*\[Delta] + \[Beta]*(e + 2*a*\[Beta] - \[Beta]^2 + 2*\[Delta]) + ((a*\[Beta]*(2*e - \[Beta]^2 + \[Delta]) + 3*\[Delta]^2*Sqrt[(a^2*\[Beta]^2)/(a^2*\[Beta]^2 + \[Delta]^2)] + a^2*\[Beta]^2*(-1 + 3*Sqrt[(a^2*\[Beta]^2)/(a^2*\[Beta]^2 + \[Delta]^2)]))*Hypergeometric2F1[(\[Beta]^2*\[Delta]^2 - Sqrt[\[Beta]^4*\[Delta]^2*(-2*e + \[Delta])^2])/(4*\[Beta]^2*\[Delta]^2), (\[Beta]^2*\[Delta]^2 + Sqrt[\[Beta]^4*\[Delta]^2*(-2*e + \[Delta])^2])/(4*\[Beta]^2*\[Delta]^2), ((2*e - \[Beta]^2 + \[Delta])*Sqrt[(a^2*\[Beta]^2)/(a^2*\[Beta]^2 + \[Delta]^2)] - a*\[Beta]*(-3 + Sqrt[(a^2*\[Beta]^2)/(a^2*\[Beta]^2 + \[Delta]^2)]))/(4*a*\[Beta]), (1 - Sqrt[(a^2*\[Beta]^2)/(a^2*\[Beta]^2 + \[Delta]^2)])/2])/(a*Hypergeometric2F1[-(-5*\[Beta]^2*\[Delta]^2 + Sqrt[\[Beta]^4*\[Delta]^2*(-2*e + \[Delta])^2])/(4*\[Beta]^2*\[Delta]^2), (5*\[Beta]^2*\[Delta]^2 + Sqrt[\[Beta]^4*\[Delta]^2*(-2*e + \[Delta])^2])/(4*\[Beta]^2*\[Delta]^2), ((2*e - \[Beta]^2 + \[Delta])*Sqrt[(a^2*\[Beta]^2)/(a^2*\[Beta]^2 + \[Delta]^2)] - a*\[Beta]*(-7 + Sqrt[(a^2*\[Beta]^2)/(a^2*\[Beta]^2 + \[Delta]^2)]))/(4*a*\[Beta]), (1 - Sqrt[(a^2*\[Beta]^2)/(a^2*\[Beta]^2 + \[Delta]^2)])/2])) == Inactive[ContinuedFractionK][e + (-1)^k*k*\[Delta], a*k + (-1)^k*(-(a*k) + \[Beta]), {k, 1, Infinity}], Element[a | \[Beta] | e | \[Delta], Complexes]]

(* {"LinearAlternating/LinearAlternating", 40}*)
ConditionalExpression[(2*e*\[Beta] - \[Beta]^3 - \[Beta]*\[Delta] + \[Beta]*(-e + \[Delta]) + ((a*\[Beta]*(-2*e + \[Beta]^2 + \[Delta]) + \[Delta]^2*Sqrt[(a^2*\[Beta]^2)/(a^2*\[Beta]^2 + \[Delta]^2)] + a^2*\[Beta]^2*(-1 + Sqrt[(a^2*\[Beta]^2)/(a^2*\[Beta]^2 + \[Delta]^2)]))*Hypergeometric2F1[(-(\[Beta]^2*\[Delta]^2) + Sqrt[\[Beta]^4*\[Delta]^2*(2*e + \[Delta])^2])/(4*\[Beta]^2*\[Delta]^2), -(\[Beta]^2*\[Delta]^2 + Sqrt[\[Beta]^4*\[Delta]^2*(2*e + \[Delta])^2])/(4*\[Beta]^2*\[Delta]^2), ((-2*e + \[Beta]^2 + \[Delta])*Sqrt[(a^2*\[Beta]^2)/(a^2*\[Beta]^2 + \[Delta]^2)] + a*(\[Beta] - \[Beta]*Sqrt[(a^2*\[Beta]^2)/(a^2*\[Beta]^2 + \[Delta]^2)]))/(4*a*\[Beta]), (1 - Sqrt[(a^2*\[Beta]^2)/(a^2*\[Beta]^2 + \[Delta]^2)])/2])/(a*Hypergeometric2F1[-(-3*\[Beta]^2*\[Delta]^2 + Sqrt[\[Beta]^4*\[Delta]^2*(2*e + \[Delta])^2])/(4*\[Beta]^2*\[Delta]^2), (3*\[Beta]^2*\[Delta]^2 + Sqrt[\[Beta]^4*\[Delta]^2*(2*e + \[Delta])^2])/(4*\[Beta]^2*\[Delta]^2), ((-2*e + \[Beta]^2 + \[Delta])*Sqrt[(a^2*\[Beta]^2)/(a^2*\[Beta]^2 + \[Delta]^2)] - a*\[Beta]*(-5 + Sqrt[(a^2*\[Beta]^2)/(a^2*\[Beta]^2 + \[Delta]^2)]))/(4*a*\[Beta]), (1 - Sqrt[(a^2*\[Beta]^2)/(a^2*\[Beta]^2 + \[Delta]^2)])/2]))/\[Beta]^2 == Inactive[ContinuedFractionK][e + (-1)^k*k*\[Delta], a*k + (-1)^k*(a*k + \[Beta]), {k, 1, Infinity}], Element[a | \[Beta] | e | \[Delta], Complexes]]

(* {"LinearAlternating/LinearAlternating", 41}*)
ConditionalExpression[-((b^2*(e - \[Delta]))/(2*a*b^2 + b^3 + 2*b*e + b*\[Delta] - b*(2*a*b + b^2 + e + 2*\[Delta]) - ((a*b*(b^2 + 2*e + \[Delta]) + 3*\[Delta]^2*Sqrt[(a^2*b^2)/(a^2*b^2 + \[Delta]^2)] + a^2*b^2*(-1 + 3*Sqrt[(a^2*b^2)/(a^2*b^2 + \[Delta]^2)]))*Hypergeometric2F1[(b^2*\[Delta]^2 - Sqrt[b^4*\[Delta]^2*(-2*e + \[Delta])^2])/(4*b^2*\[Delta]^2), (b^2*\[Delta]^2 + Sqrt[b^4*\[Delta]^2*(-2*e + \[Delta])^2])/(4*b^2*\[Delta]^2), ((b^2 + 2*e + \[Delta])*Sqrt[(a^2*b^2)/(a^2*b^2 + \[Delta]^2)] - a*b*(-3 + Sqrt[(a^2*b^2)/(a^2*b^2 + \[Delta]^2)]))/(4*a*b), (1 - Sqrt[(a^2*b^2)/(a^2*b^2 + \[Delta]^2)])/2])/(a*Hypergeometric2F1[-(-5*b^2*\[Delta]^2 + Sqrt[b^4*\[Delta]^2*(-2*e + \[Delta])^2])/(4*b^2*\[Delta]^2), (5*b^2*\[Delta]^2 + Sqrt[b^4*\[Delta]^2*(-2*e + \[Delta])^2])/(4*b^2*\[Delta]^2), ((b^2 + 2*e + \[Delta])*Sqrt[(a^2*b^2)/(a^2*b^2 + \[Delta]^2)] - a*b*(-7 + Sqrt[(a^2*b^2)/(a^2*b^2 + \[Delta]^2)]))/(4*a*b), (1 - Sqrt[(a^2*b^2)/(a^2*b^2 + \[Delta]^2)])/2]))) == Inactive[ContinuedFractionK][e + (-1)^k*k*\[Delta], b - (-1 + (-1)^k)*a*k, {k, 1, Infinity}], Element[a | b | e | \[Delta], Complexes]]

(* {"LinearAlternating/LinearAlternating", 42}*)
ConditionalExpression[(-b^3 - 2*b*e + b*(e - \[Delta]) + b*\[Delta] + ((a*b*(b^2 + 2*e - \[Delta]) + \[Delta]^2*Sqrt[(a^2*b^2)/(a^2*b^2 + \[Delta]^2)] + a^2*b^2*(-1 + Sqrt[(a^2*b^2)/(a^2*b^2 + \[Delta]^2)]))*Hypergeometric2F1[(-(b^2*\[Delta]^2) + Sqrt[b^4*\[Delta]^2*(2*e + \[Delta])^2])/(4*b^2*\[Delta]^2), -(b^2*\[Delta]^2 + Sqrt[b^4*\[Delta]^2*(2*e + \[Delta])^2])/(4*b^2*\[Delta]^2), ((b^2 + 2*e - \[Delta])*Sqrt[(a^2*b^2)/(a^2*b^2 + \[Delta]^2)] + a*(b - b*Sqrt[(a^2*b^2)/(a^2*b^2 + \[Delta]^2)]))/(4*a*b), (1 - Sqrt[(a^2*b^2)/(a^2*b^2 + \[Delta]^2)])/2])/(a*Hypergeometric2F1[-(-3*b^2*\[Delta]^2 + Sqrt[b^4*\[Delta]^2*(2*e + \[Delta])^2])/(4*b^2*\[Delta]^2), (3*b^2*\[Delta]^2 + Sqrt[b^4*\[Delta]^2*(2*e + \[Delta])^2])/(4*b^2*\[Delta]^2), ((b^2 + 2*e - \[Delta])*Sqrt[(a^2*b^2)/(a^2*b^2 + \[Delta]^2)] - a*b*(-5 + Sqrt[(a^2*b^2)/(a^2*b^2 + \[Delta]^2)]))/(4*a*b), (1 - Sqrt[(a^2*b^2)/(a^2*b^2 + \[Delta]^2)])/2]))/b^2 == Inactive[ContinuedFractionK][e + (-1)^k*k*\[Delta], b + (1 + (-1)^k)*a*k, {k, 1, Infinity}], Element[a | b | e | \[Delta], Complexes]]

(* {"LinearAlternating/LinearAlternating", 43}*)
ConditionalExpression[((b + \[Beta])^2*\[Delta])/(2*a*b^2 + b^3 + 4*a*b*\[Beta] + b^2*\[Beta] + 2*a*\[Beta]^2 - b*\[Beta]^2 - \[Beta]^3 + b*\[Delta] + \[Beta]*\[Delta] - (b + \[Beta])*(b^2 - \[Beta]^2 + 2*a*(b + \[Beta]) + 2*\[Delta]) - (a*(b + \[Beta])*(b^2 - \[Beta]^2 + \[Delta]) + 3*\[Delta]^2*Sqrt[(a^2*(b + \[Beta])^2)/(a^2*(b + \[Beta])^2 + \[Delta]^2)] + a^2*(b + \[Beta])^2*(-1 + 3*Sqrt[(a^2*(b + \[Beta])^2)/(a^2*(b + \[Beta])^2 + \[Delta]^2)]))/(a*Hypergeometric2F1[(5*b^2*\[Delta]^2 + 10*b*\[Beta]*\[Delta]^2 + 5*\[Beta]^2*\[Delta]^2 - Sqrt[(b + \[Beta])^4*\[Delta]^4])/(4*(b + \[Beta])^2*\[Delta]^2), (5*b^2*\[Delta]^2 + 10*b*\[Beta]*\[Delta]^2 + 5*\[Beta]^2*\[Delta]^2 + Sqrt[(b + \[Beta])^4*\[Delta]^4])/(4*(b + \[Beta])^2*\[Delta]^2), ((b^2 - \[Beta]^2 + \[Delta])*Sqrt[(a^2*(b + \[Beta])^2)/(a^2*(b + \[Beta])^2 + \[Delta]^2)] - a*(b + \[Beta])*(-7 + Sqrt[(a^2*(b + \[Beta])^2)/(a^2*(b + \[Beta])^2 + \[Delta]^2)]))/(4*a*(b + \[Beta])), (1 - Sqrt[(a^2*(b + \[Beta])^2)/(a^2*(b + \[Beta])^2 + \[Delta]^2)])/2])) == Inactive[ContinuedFractionK][(-1)^k*k*\[Delta], b + a*k + (-1)^k*(-(a*k) + \[Beta]), {k, 1, Infinity}], Element[a | b | \[Beta] | \[Delta], Complexes]]

(* {"LinearAlternating/LinearAlternating", 44}*)
ConditionalExpression[(-b^3 + b^2*\[Beta] + b*\[Beta]^2 - \[Beta]^3 + b*\[Delta] - \[Beta]*\[Delta] + (-b + \[Beta])*\[Delta] + (a*(b - \[Beta])*(b^2 - \[Beta]^2 - \[Delta]) + \[Delta]^2*Sqrt[(a^2*(b - \[Beta])^2)/(a^2*(b - \[Beta])^2 + \[Delta]^2)] + a^2*(b - \[Beta])^2*(-1 + Sqrt[(a^2*(b - \[Beta])^2)/(a^2*(b - \[Beta])^2 + \[Delta]^2)]))/(a*Hypergeometric2F1[-(-3*b^2*\[Delta]^2 + 6*b*\[Beta]*\[Delta]^2 - 3*\[Beta]^2*\[Delta]^2 + Sqrt[(-b + \[Beta])^4*\[Delta]^4])/(4*(b - \[Beta])^2*\[Delta]^2), (3*b^2*\[Delta]^2 - 6*b*\[Beta]*\[Delta]^2 + 3*\[Beta]^2*\[Delta]^2 + Sqrt[(-b + \[Beta])^4*\[Delta]^4])/(4*(b - \[Beta])^2*\[Delta]^2), ((b^2 - \[Beta]^2 - \[Delta])*Sqrt[(a^2*(b - \[Beta])^2)/(a^2*(b - \[Beta])^2 + \[Delta]^2)] - a*(b - \[Beta])*(-5 + Sqrt[(a^2*(b - \[Beta])^2)/(a^2*(b - \[Beta])^2 + \[Delta]^2)]))/(4*a*(b - \[Beta])), (1 - Sqrt[(a^2*(b - \[Beta])^2)/(a^2*(b - \[Beta])^2 + \[Delta]^2)])/2]))/(b - \[Beta])^2 == Inactive[ContinuedFractionK][(-1)^k*k*\[Delta], b + a*k + (-1)^k*(a*k + \[Beta]), {k, 1, Infinity}], Element[a | b | \[Beta] | \[Delta], Complexes]]

(* {"LinearAlternating/LinearAlternating", 45}*)
ConditionalExpression[-((\[Beta]^2*\[Delta])/(-2*a*\[Beta]^2 + \[Beta]^3 - \[Beta]*\[Delta] + \[Beta]*(2*a*\[Beta] - \[Beta]^2 + 2*\[Delta]) + (a*(-\[Beta]^3 + \[Beta]*\[Delta]) + 3*\[Delta]^2*Sqrt[(a^2*\[Beta]^2)/(a^2*\[Beta]^2 + \[Delta]^2)] + a^2*\[Beta]^2*(-1 + 3*Sqrt[(a^2*\[Beta]^2)/(a^2*\[Beta]^2 + \[Delta]^2)]))/(a*Hypergeometric2F1[5/4 - (\[Beta]^2*\[Delta]^2)/(4*Sqrt[\[Beta]^4*\[Delta]^4]), (5 + (\[Beta]^2*\[Delta]^2)/Sqrt[\[Beta]^4*\[Delta]^4])/4, ((-\[Beta]^2 + \[Delta])*Sqrt[(a^2*\[Beta]^2)/(a^2*\[Beta]^2 + \[Delta]^2)] - a*\[Beta]*(-7 + Sqrt[(a^2*\[Beta]^2)/(a^2*\[Beta]^2 + \[Delta]^2)]))/(4*a*\[Beta]), (1 - Sqrt[(a^2*\[Beta]^2)/(a^2*\[Beta]^2 + \[Delta]^2)])/2]))) == Inactive[ContinuedFractionK][(-1)^k*k*\[Delta], a*k + (-1)^k*(-(a*k) + \[Beta]), {k, 1, Infinity}], Element[a | \[Beta] | \[Delta], Complexes]]

(* {"LinearAlternating/LinearAlternating", 46}*)
ConditionalExpression[(-8*\[Beta]^5 + (8*\[Beta]^2*(a*\[Beta]*(\[Beta]^2 + \[Delta]) + \[Delta]^2*Sqrt[(a^2*\[Beta]^2)/(a^2*\[Beta]^2 + \[Delta]^2)] + a^2*\[Beta]^2*(-1 + Sqrt[(a^2*\[Beta]^2)/(a^2*\[Beta]^2 + \[Delta]^2)])))/(a*Hypergeometric2F1[3/4 - (\[Beta]^2*\[Delta]^2)/(4*Sqrt[\[Beta]^4*\[Delta]^4]), (3 + (\[Beta]^2*\[Delta]^2)/Sqrt[\[Beta]^4*\[Delta]^4])/4, ((\[Beta]^2 + \[Delta])*Sqrt[(a^2*\[Beta]^2)/(a^2*\[Beta]^2 + \[Delta]^2)] - a*\[Beta]*(-5 + Sqrt[(a^2*\[Beta]^2)/(a^2*\[Beta]^2 + \[Delta]^2)]))/(4*a*\[Beta]), (1 - Sqrt[(a^2*\[Beta]^2)/(a^2*\[Beta]^2 + \[Delta]^2)])/2]))/(8*\[Beta]^4) == Inactive[ContinuedFractionK][(-1)^k*k*\[Delta], a*k + (-1)^k*(a*k + \[Beta]), {k, 1, Infinity}], Element[a | \[Beta] | \[Delta], Complexes]]

(* {"LinearAlternating/LinearAlternating", 47}*)
ConditionalExpression[-((b^2*\[Delta])/(-2*a*b^2 - b^3 - b*\[Delta] + b*(2*a*b + b^2 + 2*\[Delta]) + (a*b*(b^2 + \[Delta]) + 3*\[Delta]^2*Sqrt[(a^2*b^2)/(a^2*b^2 + \[Delta]^2)] + a^2*b^2*(-1 + 3*Sqrt[(a^2*b^2)/(a^2*b^2 + \[Delta]^2)]))/(a*Hypergeometric2F1[5/4 - (b^2*\[Delta]^2)/(4*Sqrt[b^4*\[Delta]^4]), (5 + (b^2*\[Delta]^2)/Sqrt[b^4*\[Delta]^4])/4, ((b^2 + \[Delta])*Sqrt[(a^2*b^2)/(a^2*b^2 + \[Delta]^2)] - a*b*(-7 + Sqrt[(a^2*b^2)/(a^2*b^2 + \[Delta]^2)]))/(4*a*b), (1 - Sqrt[(a^2*b^2)/(a^2*b^2 + \[Delta]^2)])/2]))) == Inactive[ContinuedFractionK][(-1)^k*k*\[Delta], b - (-1 + (-1)^k)*a*k, {k, 1, Infinity}], Element[a | b | \[Delta], Complexes]]

(* {"LinearAlternating/LinearAlternating", 48}*)
ConditionalExpression[(-8*b^5 + (8*b^2*(a*(b^3 - b*\[Delta]) + \[Delta]^2*Sqrt[(a^2*b^2)/(a^2*b^2 + \[Delta]^2)] + a^2*b^2*(-1 + Sqrt[(a^2*b^2)/(a^2*b^2 + \[Delta]^2)])))/(a*Hypergeometric2F1[3/4 - (b^2*\[Delta]^2)/(4*Sqrt[b^4*\[Delta]^4]), (3 + (b^2*\[Delta]^2)/Sqrt[b^4*\[Delta]^4])/4, ((b^2 - \[Delta])*Sqrt[(a^2*b^2)/(a^2*b^2 + \[Delta]^2)] - a*b*(-5 + Sqrt[(a^2*b^2)/(a^2*b^2 + \[Delta]^2)]))/(4*a*b), (1 - Sqrt[(a^2*b^2)/(a^2*b^2 + \[Delta]^2)])/2]))/(8*b^4) == Inactive[ContinuedFractionK][(-1)^k*k*\[Delta], b + (1 + (-1)^k)*a*k, {k, 1, Infinity}], Element[a | b | \[Delta], Complexes]]

(* {"Linear/Constant", 1}*)
ConditionalExpression[-b + (b*Sqrt[d/b^2]*HermiteH[-(e/d), 1/(Sqrt[2]*Sqrt[d/b^2])])/(Sqrt[2]*HermiteH[-((d + e)/d), 1/(Sqrt[2]*Sqrt[d/b^2])]) == Inactive[ContinuedFractionK][e + d*k, b, {k, 1, Infinity}], Element[b | d | e, Complexes]]

(* {"Linear/Constant", 2}*)
ConditionalExpression[-b + (b*Sqrt[d/b^2]*Sqrt[2/Pi])/(E^(b^2/(2*d))*Erfc[1/(Sqrt[2]*Sqrt[d/b^2])]) == Inactive[ContinuedFractionK][d*k, b, {k, 1, Infinity}], Element[b | d, Complexes]]

(* {"Linear/Linear", 1}*)
ConditionalExpression[-b + ((a*b + d)*Hypergeometric1F1[e/d, (a*b + d)/a^2, d/a^2])/(a*Hypergeometric1F1[1 + e/d, 1 + (a*b + d)/a^2, d/a^2]) == Inactive[ContinuedFractionK][e + d*k, b + a*k, {k, 1, Infinity}], Element[a | b | d | e, Complexes]]

(* {"Linear/Linear", 2}*)
ConditionalExpression[(d*Hypergeometric1F1[e/d, d/a^2, d/a^2])/(a*Hypergeometric1F1[(d + e)/d, 1 + d/a^2, d/a^2]) == Inactive[ContinuedFractionK][e + d*k, a*k, {k, 1, Infinity}], Element[a | d | e, Complexes]]

(* {"Linear/Linear", 3}*)
ConditionalExpression[-b + (a*(d/a^2)^((a*b + d)/a^2))/(E^(d/a^2)*Gamma[(a*b + d)/a^2, 0, d/a^2]) == Inactive[ContinuedFractionK][d*k, b + a*k, {k, 1, Infinity}], Element[a | b | d, Complexes]]

(* {"Linear/Linear", 4}*)
ConditionalExpression[(a*(d/a^2)^(d/a^2))/(E^(d/a^2)*Gamma[d/a^2, 0, d/a^2]) == Inactive[ContinuedFractionK][d*k, a*k, {k, 1, Infinity}], Element[a | d, Complexes]]

(* {"Linear/LinearAlternating", 1}*)
ConditionalExpression[(-2*(d + e)*(b + \[Beta])^2)/(4*a*b^2 + 2*b^3 + 6*b*d + 4*b*e + 8*a*b*\[Beta] + 2*b^2*\[Beta] + 6*d*\[Beta] + 4*e*\[Beta] + 4*a*\[Beta]^2 - 2*b*\[Beta]^2 - 2*\[Beta]^3 - 2*(b + \[Beta])*(b^2 + 2*d + e - \[Beta]^2 + 2*a*(b + \[Beta])) - (2*(b + \[Beta])^2*(d^2*(b - \[Beta]) + a*d*(b^2 - d - 2*e - \[Beta]^2 + 6*d*Sqrt[(d + a*(b + \[Beta]))^2/(a*(b + \[Beta])*(2*d + a*(b + \[Beta])))] + 4*e*Sqrt[(d + a*(b + \[Beta]))^2/(a*(b + \[Beta])*(2*d + a*(b + \[Beta])))]) + a^2*(b + \[Beta])*(2*e*(-1 + Sqrt[(d + a*(b + \[Beta]))^2/(a*(b + \[Beta])*(2*d + a*(b + \[Beta])))]) + d*(-1 + 3*Sqrt[(d + a*(b + \[Beta]))^2/(a*(b + \[Beta])*(2*d + a*(b + \[Beta])))])))*Hypergeometric2F1[(b^2*d*(d + 2*e) + 2*b*d*(d + 2*e)*\[Beta] + d^2*\[Beta]^2 + 2*d*e*\[Beta]^2 - Sqrt[d^4*(b + \[Beta])^4])/(4*d^2*(b + \[Beta])^2), (b^2*d*(d + 2*e) + 2*b*d*(d + 2*e)*\[Beta] + d^2*\[Beta]^2 + 2*d*e*\[Beta]^2 + Sqrt[d^4*(b + \[Beta])^4])/(4*d^2*(b + \[Beta])^2), (d*(3*d + 2*e + (b^2 - \[Beta]^2)*Sqrt[(d + a*(b + \[Beta]))^2/(a*(b + \[Beta])*(2*d + a*(b + \[Beta])))]) - a*(b + \[Beta])*(d*(-3 + Sqrt[(d + a*(b + \[Beta]))^2/(a*(b + \[Beta])*(2*d + a*(b + \[Beta])))]) + 2*e*(-1 + Sqrt[(d + a*(b + \[Beta]))^2/(a*(b + \[Beta])*(2*d + a*(b + \[Beta])))])))/(4*d*(d + a*(b + \[Beta]))), (1 - Sqrt[(d + a*(b + \[Beta]))^2/(a*(b + \[Beta])*(2*d + a*(b + \[Beta])))])/2])/(d*(d + a*(b + \[Beta]))*Hypergeometric2F1[(b^2*d*(5*d + 2*e) + 2*b*d*(5*d + 2*e)*\[Beta] + 5*d^2*\[Beta]^2 + 2*d*e*\[Beta]^2 - Sqrt[d^4*(b + \[Beta])^4])/(4*d^2*(b + \[Beta])^2), (b^2*d*(5*d + 2*e) + 2*b*d*(5*d + 2*e)*\[Beta] + 5*d^2*\[Beta]^2 + 2*d*e*\[Beta]^2 + Sqrt[d^4*(b + \[Beta])^4])/(4*d^2*(b + \[Beta])^2), (d*(7*d + 2*e + (b^2 - \[Beta]^2)*Sqrt[(d + a*(b + \[Beta]))^2/(a*(b + \[Beta])*(2*d + a*(b + \[Beta])))]) - a*(b + \[Beta])*(d*(-7 + Sqrt[(d + a*(b + \[Beta]))^2/(a*(b + \[Beta])*(2*d + a*(b + \[Beta])))]) + 2*e*(-1 + Sqrt[(d + a*(b + \[Beta]))^2/(a*(b + \[Beta])*(2*d + a*(b + \[Beta])))])))/(4*d*(d + a*(b + \[Beta]))), (1 - Sqrt[(d + a*(b + \[Beta]))^2/(a*(b + \[Beta])*(2*d + a*(b + \[Beta])))])/2])) == Inactive[ContinuedFractionK][e + d*k, b + a*k + (-1)^k*(-(a*k) + \[Beta]), {k, 1, Infinity}], Element[a | b | \[Beta] | d | e, Complexes]]

(* {"Linear/LinearAlternating", 2}*)
ConditionalExpression[(-b^3 - b*d - 2*b*e + (d + e)*(b - \[Beta]) + b^2*\[Beta] + d*\[Beta] + 2*e*\[Beta] + b*\[Beta]^2 - \[Beta]^3 + ((b - \[Beta])^2*(d^2*(b + \[Beta]) + a^2*(d + 2*e)*(b - \[Beta])*(-1 + Sqrt[(a*b + d - a*\[Beta])^2/(a*(b - \[Beta])*(a*b + 2*d - a*\[Beta]))]) + a*d*(b^2 - 2*e - \[Beta]^2 + 4*e*Sqrt[(a*b + d - a*\[Beta])^2/(a*(b - \[Beta])*(a*b + 2*d - a*\[Beta]))] + d*(-1 + 2*Sqrt[(a*b + d - a*\[Beta])^2/(a*(b - \[Beta])*(a*b + 2*d - a*\[Beta]))])))*Hypergeometric2F1[-(b^2*d*(d - 2*e) + Sqrt[d^4*(b - \[Beta])^4] - 2*b*d*(d - 2*e)*\[Beta] + d^2*\[Beta]^2 - 2*d*e*\[Beta]^2)/(4*d^2*(b - \[Beta])^2), (-(b^2*d*(d - 2*e)) + Sqrt[d^4*(b - \[Beta])^4] + 2*b*d*(d - 2*e)*\[Beta] - d^2*\[Beta]^2 + 2*d*e*\[Beta]^2)/(4*d^2*(b - \[Beta])^2), (-(a*(d + 2*e)*(b - \[Beta])*(-1 + Sqrt[(a*b + d - a*\[Beta])^2/(a*(b - \[Beta])*(a*b + 2*d - a*\[Beta]))])) + d*(d + 2*e + Sqrt[(d + a*(b - \[Beta]))^2/(a*(2*d + a*(b - \[Beta]))*(b - \[Beta]))]*(b^2 - \[Beta]^2)))/(4*d*(d + a*(b - \[Beta]))), 1/2 - Sqrt[(a*b + d - a*\[Beta])^2/(a*(b - \[Beta])*(a*b + 2*d - a*\[Beta]))]/2])/(d*(d + a*(b - \[Beta]))*Hypergeometric2F1[(b^2*d*(3*d + 2*e) - Sqrt[d^4*(b - \[Beta])^4] - 2*b*d*(3*d + 2*e)*\[Beta] + 3*d^2*\[Beta]^2 + 2*d*e*\[Beta]^2)/(4*d^2*(b - \[Beta])^2), (b^2*d*(3*d + 2*e) + Sqrt[d^4*(b - \[Beta])^4] - 2*b*d*(3*d + 2*e)*\[Beta] + 3*d^2*\[Beta]^2 + 2*d*e*\[Beta]^2)/(4*d^2*(b - \[Beta])^2), (d*(5*d + 2*e + Sqrt[(d + a*(b - \[Beta]))^2/(a*(2*d + a*(b - \[Beta]))*(b - \[Beta]))]*(b^2 - \[Beta]^2)) - a*(b - \[Beta])*(d*(-5 + Sqrt[(a*b + d - a*\[Beta])^2/(a*(b - \[Beta])*(a*b + 2*d - a*\[Beta]))]) + 2*e*(-1 + Sqrt[(a*b + d - a*\[Beta])^2/(a*(b - \[Beta])*(a*b + 2*d - a*\[Beta]))])))/(4*d*(d + a*(b - \[Beta]))), 1/2 - Sqrt[(a*b + d - a*\[Beta])^2/(a*(b - \[Beta])*(a*b + 2*d - a*\[Beta]))]/2]))/(b - \[Beta])^2 == Inactive[ContinuedFractionK][e + d*k, b + a*k + (-1)^k*(a*k + \[Beta]), {k, 1, Infinity}], Element[a | b | \[Beta] | d | e, Complexes]]

(* {"Linear/LinearAlternating", 3}*)
ConditionalExpression[-(((d + e)*\[Beta])/(d + e + 2*a*\[Beta] - \[Beta]^2 + \[Beta]*(-2*a + \[Beta]) + (\[Beta]*(d^2*\[Beta] - a^2*\[Beta]*(2*e*(-1 + Sqrt[(d + a*\[Beta])^2/(a*\[Beta]*(2*d + a*\[Beta]))]) + d*(-1 + 3*Sqrt[(d + a*\[Beta])^2/(a*\[Beta]*(2*d + a*\[Beta]))])) - a*d*(-2*e - \[Beta]^2 + 4*e*Sqrt[(d + a*\[Beta])^2/(a*\[Beta]*(2*d + a*\[Beta]))] + d*(-1 + 6*Sqrt[(d + a*\[Beta])^2/(a*\[Beta]*(2*d + a*\[Beta]))])))*Hypergeometric2F1[(1 + (2*e)/d - (d^2*\[Beta]^2)/Sqrt[d^4*\[Beta]^4])/4, (1 + (2*e)/d + (d^2*\[Beta]^2)/Sqrt[d^4*\[Beta]^4])/4, (3*d^2 - 2*a*e*\[Beta]*(-1 + Sqrt[(d + a*\[Beta])^2/(a*\[Beta]*(2*d + a*\[Beta]))]) + d*(2*e - \[Beta]*(\[Beta]*Sqrt[(d + a*\[Beta])^2/(a*\[Beta]*(2*d + a*\[Beta]))] + a*(-3 + Sqrt[(d + a*\[Beta])^2/(a*\[Beta]*(2*d + a*\[Beta]))]))))/(4*d*(d + a*\[Beta])), 1/2 - Sqrt[(d + a*\[Beta])^2/(a*\[Beta]*(2*d + a*\[Beta]))]/2])/(d*(d + a*\[Beta])*Hypergeometric2F1[(5 + (2*e)/d - (d^2*\[Beta]^2)/Sqrt[d^4*\[Beta]^4])/4, (5 + (2*e)/d + (d^2*\[Beta]^2)/Sqrt[d^4*\[Beta]^4])/4, (7*d^2 - 2*a*e*\[Beta]*(-1 + Sqrt[(d + a*\[Beta])^2/(a*\[Beta]*(2*d + a*\[Beta]))]) + d*(2*e - \[Beta]*(\[Beta]*Sqrt[(d + a*\[Beta])^2/(a*\[Beta]*(2*d + a*\[Beta]))] + a*(-7 + Sqrt[(d + a*\[Beta])^2/(a*\[Beta]*(2*d + a*\[Beta]))]))))/(4*d*(d + a*\[Beta])), 1/2 - Sqrt[(d + a*\[Beta])^2/(a*\[Beta]*(2*d + a*\[Beta]))]/2]))) == Inactive[ContinuedFractionK][e + d*k, a*k + (-1)^k*(-(a*k) + \[Beta]), {k, 1, Infinity}], Element[a | \[Beta] | d | e, Complexes]]

(* {"Linear/LinearAlternating", 4}*)
ConditionalExpression[(e - \[Beta]^2 - (\[Beta]*(-(d^2*\[Beta]) + a^2*(d + 2*e)*\[Beta]*(-1 + Sqrt[(d - a*\[Beta])^2/(a*\[Beta]*(-2*d + a*\[Beta]))]) + a*d*(d + 2*e + \[Beta]^2 - 2*d*Sqrt[(d - a*\[Beta])^2/(a*\[Beta]*(-2*d + a*\[Beta]))] - 4*e*Sqrt[(d - a*\[Beta])^2/(a*\[Beta]*(-2*d + a*\[Beta]))]))*Hypergeometric2F1[(-1 + (2*e)/d - (d^2*\[Beta]^2)/Sqrt[d^4*\[Beta]^4])/4, (-1 + (2*e)/d + (d^2*\[Beta]^2)/Sqrt[d^4*\[Beta]^4])/4, (d^2 + 2*a*e*\[Beta]*(-1 + Sqrt[(d - a*\[Beta])^2/(a*\[Beta]*(-2*d + a*\[Beta]))]) + d*(2*e - \[Beta]*(a - a*Sqrt[(d - a*\[Beta])^2/(a*\[Beta]*(-2*d + a*\[Beta]))] + \[Beta]*Sqrt[(d - a*\[Beta])^2/(a*\[Beta]*(-2*d + a*\[Beta]))])))/(4*d*(d - a*\[Beta])), (1 - Sqrt[(d - a*\[Beta])^2/(a*\[Beta]*(-2*d + a*\[Beta]))])/2])/(d*(d - a*\[Beta])*Hypergeometric2F1[(3 + (2*e)/d - (d^2*\[Beta]^2)/Sqrt[d^4*\[Beta]^4])/4, (3 + (2*e)/d + (d^2*\[Beta]^2)/Sqrt[d^4*\[Beta]^4])/4, (5*d^2 + 2*a*e*\[Beta]*(-1 + Sqrt[(d - a*\[Beta])^2/(a*\[Beta]*(-2*d + a*\[Beta]))]) + d*(2*e + \[Beta]*(-(\[Beta]*Sqrt[(d - a*\[Beta])^2/(a*\[Beta]*(-2*d + a*\[Beta]))]) + a*(-5 + Sqrt[(d - a*\[Beta])^2/(a*\[Beta]*(-2*d + a*\[Beta]))]))))/(4*d*(d - a*\[Beta])), (1 - Sqrt[(d - a*\[Beta])^2/(a*\[Beta]*(-2*d + a*\[Beta]))])/2]))/\[Beta] == Inactive[ContinuedFractionK][e + d*k, a*k + (-1)^k*(a*k + \[Beta]), {k, 1, Infinity}], Element[a | \[Beta] | d | e, Complexes]]

(* {"Linear/LinearAlternating", 5}*)
ConditionalExpression[(-2*d*(b + \[Beta])^2)/(4*a*b^2 + 2*b^3 + 6*b*d + 8*a*b*\[Beta] + 2*b^2*\[Beta] + 6*d*\[Beta] + 4*a*\[Beta]^2 - 2*b*\[Beta]^2 - 2*\[Beta]^3 - 2*(b + \[Beta])*(b^2 + 2*d - \[Beta]^2 + 2*a*(b + \[Beta])) - (2*(b + \[Beta])^2*(d*(b - \[Beta]) + a^2*(b + \[Beta])*(-1 + 3*Sqrt[(d + a*(b + \[Beta]))^2/(a*(b + \[Beta])*(2*d + a*(b + \[Beta])))]) + a*(b^2 - d - \[Beta]^2 + 6*d*Sqrt[(d + a*(b + \[Beta]))^2/(a*(b + \[Beta])*(2*d + a*(b + \[Beta])))])))/((d + a*(b + \[Beta]))*Hypergeometric2F1[(5*b^2*d^2 + 10*b*d^2*\[Beta] + 5*d^2*\[Beta]^2 - Sqrt[d^4*(b + \[Beta])^4])/(4*d^2*(b + \[Beta])^2), (5*b^2*d^2 + 10*b*d^2*\[Beta] + 5*d^2*\[Beta]^2 + Sqrt[d^4*(b + \[Beta])^4])/(4*d^2*(b + \[Beta])^2), (7*d + (b^2 - \[Beta]^2)*Sqrt[(d + a*(b + \[Beta]))^2/(a*(b + \[Beta])*(2*d + a*(b + \[Beta])))] - a*(b + \[Beta])*(-7 + Sqrt[(d + a*(b + \[Beta]))^2/(a*(b + \[Beta])*(2*d + a*(b + \[Beta])))]))/(4*(d + a*(b + \[Beta]))), (1 - Sqrt[(d + a*(b + \[Beta]))^2/(a*(b + \[Beta])*(2*d + a*(b + \[Beta])))])/2])) == Inactive[ContinuedFractionK][d*k, b + a*k + (-1)^k*(-(a*k) + \[Beta]), {k, 1, Infinity}], Element[a | b | \[Beta] | d, Complexes]]

(* {"Linear/LinearAlternating", 6}*)
ConditionalExpression[(-b^3 - b*d + d*(b - \[Beta]) + b^2*\[Beta] + d*\[Beta] + b*\[Beta]^2 - \[Beta]^3 + ((b - \[Beta])^2*(d*(b + \[Beta]) + a^2*(b - \[Beta])*(-1 + Sqrt[(a*b + d - a*\[Beta])^2/(a*(b - \[Beta])*(a*b + 2*d - a*\[Beta]))]) + a*(b^2 - \[Beta]^2 + d*(-1 + 2*Sqrt[(a*b + d - a*\[Beta])^2/(a*(b - \[Beta])*(a*b + 2*d - a*\[Beta]))]))))/((d + a*(b - \[Beta]))*Hypergeometric2F1[-(-3*b^2*d^2 + Sqrt[d^4*(b - \[Beta])^4] + 6*b*d^2*\[Beta] - 3*d^2*\[Beta]^2)/(4*d^2*(b - \[Beta])^2), (3*b^2*d^2 + Sqrt[d^4*(b - \[Beta])^4] - 6*b*d^2*\[Beta] + 3*d^2*\[Beta]^2)/(4*d^2*(b - \[Beta])^2), (5*d + Sqrt[(d + a*(b - \[Beta]))^2/(a*(2*d + a*(b - \[Beta]))*(b - \[Beta]))]*(b^2 - \[Beta]^2) - a*(b - \[Beta])*(-5 + Sqrt[(a*b + d - a*\[Beta])^2/(a*(b - \[Beta])*(a*b + 2*d - a*\[Beta]))]))/(4*(d + a*(b - \[Beta]))), 1/2 - Sqrt[(a*b + d - a*\[Beta])^2/(a*(b - \[Beta])*(a*b + 2*d - a*\[Beta]))]/2]))/(b - \[Beta])^2 == Inactive[ContinuedFractionK][d*k, b + a*k + (-1)^k*(a*k + \[Beta]), {k, 1, Infinity}], Element[a | b | \[Beta] | d, Complexes]]

(* {"Linear/LinearAlternating", 7}*)
ConditionalExpression[-((b*(d + e))/(d + e - (b*(b*d^2 + a*d*(b^2 - d + 6*d*Sqrt[(a*b + d)^2/(a*b*(a*b + 2*d))] - 2*e + 4*Sqrt[(a*b + d)^2/(a*b*(a*b + 2*d))]*e) + a^2*b*(d*(-1 + 3*Sqrt[(a*b + d)^2/(a*b*(a*b + 2*d))]) + 2*(-1 + Sqrt[(a*b + d)^2/(a*b*(a*b + 2*d))])*e))*Hypergeometric2F1[(-Sqrt[b^4*d^4] + b^2*d*(d + 2*e))/(4*b^2*d^2), (Sqrt[b^4*d^4] + b^2*d*(d + 2*e))/(4*b^2*d^2), (d*(3*d + b^2*Sqrt[(a*b + d)^2/(a*b*(a*b + 2*d))] + 2*e) - a*b*(d*(-3 + Sqrt[(a*b + d)^2/(a*b*(a*b + 2*d))]) + 2*(-1 + Sqrt[(a*b + d)^2/(a*b*(a*b + 2*d))])*e))/(4*d*(a*b + d)), 1/2 - Sqrt[(a*b + d)^2/(a*b*(a*b + 2*d))]/2])/(d*(a*b + d)*Hypergeometric2F1[(5 - (b^2*d^2)/Sqrt[b^4*d^4] + (2*e)/d)/4, (Sqrt[b^4*d^4] + b^2*d*(5*d + 2*e))/(4*b^2*d^2), (d*(7*d + b^2*Sqrt[(a*b + d)^2/(a*b*(a*b + 2*d))] + 2*e) - a*b*(d*(-7 + Sqrt[(a*b + d)^2/(a*b*(a*b + 2*d))]) + 2*(-1 + Sqrt[(a*b + d)^2/(a*b*(a*b + 2*d))])*e))/(4*d*(a*b + d)), 1/2 - Sqrt[(a*b + d)^2/(a*b*(a*b + 2*d))]/2]))) == Inactive[ContinuedFractionK][e + d*k, b - (-1 + (-1)^k)*a*k, {k, 1, Infinity}], Element[a | b | d | e, Complexes]]

(* {"Linear/LinearAlternating", 8}*)
ConditionalExpression[-((b^2 + e - (b*(b*d^2 + a^2*b*(-1 + Sqrt[(a*b + d)^2/(a*b*(a*b + 2*d))])*(d + 2*e) + a*d*(b^2 + (-1 + 2*Sqrt[(a*b + d)^2/(a*b*(a*b + 2*d))])*(d + 2*e)))*Hypergeometric2F1[(Sqrt[b^4*d^4] - b^2*d*(d - 2*e))/(4*b^2*d^2), (-1 - (b^2*d^2)/Sqrt[b^4*d^4] + (2*e)/d)/4, (-(a*b*(-1 + Sqrt[(a*b + d)^2/(a*b*(a*b + 2*d))])*(d + 2*e)) + d*(d + b^2*Sqrt[(a*b + d)^2/(a*b*(a*b + 2*d))] + 2*e))/(4*d*(a*b + d)), 1/2 - Sqrt[(a*b + d)^2/(a*b*(a*b + 2*d))]/2])/(d*(a*b + d)*Hypergeometric2F1[(3 - (b^2*d^2)/Sqrt[b^4*d^4] + (2*e)/d)/4, (Sqrt[b^4*d^4] + b^2*d*(3*d + 2*e))/(4*b^2*d^2), (d*(5*d + b^2*Sqrt[(a*b + d)^2/(a*b*(a*b + 2*d))] + 2*e) - a*b*(d*(-5 + Sqrt[(a*b + d)^2/(a*b*(a*b + 2*d))]) + 2*(-1 + Sqrt[(a*b + d)^2/(a*b*(a*b + 2*d))])*e))/(4*d*(a*b + d)), 1/2 - Sqrt[(a*b + d)^2/(a*b*(a*b + 2*d))]/2]))/b) == Inactive[ContinuedFractionK][e + d*k, b + (1 + (-1)^k)*a*k, {k, 1, Infinity}], Element[a | b | d | e, Complexes]]

(* {"Linear/LinearAlternating", 9}*)
ConditionalExpression[(d*\[Beta])/(-d - 2*a*\[Beta] + (2*a - \[Beta])*\[Beta] + \[Beta]^2 - (\[Beta]*(d*\[Beta] - a^2*\[Beta]*(-1 + 3*Sqrt[(d + a*\[Beta])^2/(a*\[Beta]*(2*d + a*\[Beta]))]) + a*(d + \[Beta]^2 - 6*d*Sqrt[(d + a*\[Beta])^2/(a*\[Beta]*(2*d + a*\[Beta]))])))/((d + a*\[Beta])*Hypergeometric2F1[5/4 - (d^2*\[Beta]^2)/(4*Sqrt[d^4*\[Beta]^4]), (5 + (d^2*\[Beta]^2)/Sqrt[d^4*\[Beta]^4])/4, (7*d - \[Beta]*(\[Beta]*Sqrt[(d + a*\[Beta])^2/(a*\[Beta]*(2*d + a*\[Beta]))] + a*(-7 + Sqrt[(d + a*\[Beta])^2/(a*\[Beta]*(2*d + a*\[Beta]))])))/(4*(d + a*\[Beta])), 1/2 - Sqrt[(d + a*\[Beta])^2/(a*\[Beta]*(2*d + a*\[Beta]))]/2])) == Inactive[ContinuedFractionK][d*k, a*k + (-1)^k*(-(a*k) + \[Beta]), {k, 1, Infinity}], Element[a | \[Beta] | d, Complexes]]

(* {"Linear/LinearAlternating", 10}*)
ConditionalExpression[-\[Beta] - (-(d*\[Beta]) + a^2*\[Beta]*(-1 + Sqrt[(d - a*\[Beta])^2/(a*\[Beta]*(-2*d + a*\[Beta]))]) + a*(d + \[Beta]^2 - 2*d*Sqrt[(d - a*\[Beta])^2/(a*\[Beta]*(-2*d + a*\[Beta]))]))/((d - a*\[Beta])*Hypergeometric2F1[3/4 - (d^2*\[Beta]^2)/(4*Sqrt[d^4*\[Beta]^4]), (3 + (d^2*\[Beta]^2)/Sqrt[d^4*\[Beta]^4])/4, (5*d + \[Beta]*(-(\[Beta]*Sqrt[(d - a*\[Beta])^2/(a*\[Beta]*(-2*d + a*\[Beta]))]) + a*(-5 + Sqrt[(d - a*\[Beta])^2/(a*\[Beta]*(-2*d + a*\[Beta]))])))/(4*(d - a*\[Beta])), (1 - Sqrt[(d - a*\[Beta])^2/(a*\[Beta]*(-2*d + a*\[Beta]))])/2]) == Inactive[ContinuedFractionK][d*k, a*k + (-1)^k*(a*k + \[Beta]), {k, 1, Infinity}], Element[a | \[Beta] | d, Complexes]]

(* {"Linear/LinearAlternating", 11}*)
ConditionalExpression[-b + (b*d + a^2*b*(-1 + Sqrt[(a*b + d)^2/(a*b*(a*b + 2*d))]) + a*(b^2 + d*(-1 + 2*Sqrt[(a*b + d)^2/(a*b*(a*b + 2*d))])))/((a*b + d)*Hypergeometric2F1[3/4 - (b^2*d^2)/(4*Sqrt[b^4*d^4]), (3 + (b^2*d^2)/Sqrt[b^4*d^4])/4, (5*d + b^2*Sqrt[(a*b + d)^2/(a*b*(a*b + 2*d))] - a*b*(-5 + Sqrt[(a*b + d)^2/(a*b*(a*b + 2*d))]))/(4*(a*b + d)), 1/2 - Sqrt[(a*b + d)^2/(a*b*(a*b + 2*d))]/2]) == Inactive[ContinuedFractionK][d*k, b + (1 + (-1)^k)*a*k, {k, 1, Infinity}], Element[a | b | d, Complexes]]

(* {"Linear/LinearAlternating", 12}*)
ConditionalExpression[(b*d)/(-d + (b*(b*d + a^2*b*(-1 + 3*Sqrt[(a*b + d)^2/(a*b*(a*b + 2*d))]) + a*(b^2 + d*(-1 + 6*Sqrt[(a*b + d)^2/(a*b*(a*b + 2*d))]))))/((a*b + d)*Hypergeometric2F1[5/4 - (b^2*d^2)/(4*Sqrt[b^4*d^4]), (5 + (b^2*d^2)/Sqrt[b^4*d^4])/4, (7*d + b^2*Sqrt[(a*b + d)^2/(a*b*(a*b + 2*d))] - a*b*(-7 + Sqrt[(a*b + d)^2/(a*b*(a*b + 2*d))]))/(4*(a*b + d)), 1/2 - Sqrt[(a*b + d)^2/(a*b*(a*b + 2*d))]/2])) == Inactive[ContinuedFractionK][d*k, b - (-1 + (-1)^k)*a*k, {k, 1, Infinity}], Element[a | b | d, Complexes]]

(* {"Log", 1}*)
ConditionalExpression[Log[1 + z] == z/(1 + Inactive[ContinuedFractionK][(k*z)/(1 + k), 1 - (k*z)/(1 + k), {k, 1, Infinity}]), Element[z, Complexes] && Abs[z] < 1]

(* {"Log", 2}*)
ConditionalExpression[Log[1 + z] == z/(1 + Inactive[ContinuedFractionK][(((1 + (-1)^k)*k)/(8*(1 + k)) + ((1 - (-1)^k)*(1 + k))/(8*k))*z, 1, {k, 1, Infinity}]), Element[z, Complexes] && Abs[Arg[1 + z]] < Pi]

(* {"Log", 3}*)
ConditionalExpression[Log[1 + z] == z - z^2/(2*(1 + Inactive[ContinuedFractionK][((5 - 3*(-1)^k + (2 - 6*(-1)^k)*(1 + k) + 2*(1 + k)^2)*z)/(8*(1 + k)*(2 + k)), 1, {k, 1, Infinity}])), Element[z, Complexes] && Abs[Arg[1 + z]] < Pi]

(* {"Log", 4}*)
ConditionalExpression[Log[1 + z] == z/(1 + Inactive[ContinuedFractionK][z*Floor[(1 + k)/2]^2, 1 + k, {k, 1, Infinity}]), Element[z, Complexes] && Abs[Arg[1 + z]] < Pi]

(* {"Log", 5}*)
ConditionalExpression[Log[1 + z] == z/(1 + Inactive[ContinuedFractionK][z*Floor[(1 + k)/2], (3 + (-1)^k*(-1 + k) + k)/2, {k, 1, Infinity}]), Element[z, Complexes] && Abs[Arg[1 + z]] < Pi]

(* {"Log", 6}*)
ConditionalExpression[Log[1 + z] == (z*(1 + z/(2 + Inactive[ContinuedFractionK][((1 + (-1)^k)*k*z)/4 + ((1 - (-1)^k)*(3 + k)*z)/4, 1 + (-1)^k + ((1 - (-1)^k)*(2 + k))/2, {k, 1, Infinity}])))/(1 + z), Element[z, Complexes] && Abs[Arg[1 + z]] < Pi]

(* {"Log", 7}*)
ConditionalExpression[Log[1 + z] == (z*(1 + z/(2 + Inactive[ContinuedFractionK][z*Floor[(1 + k)/2]*Floor[(3 + k)/2], 2 + k, {k, 1, Infinity}])))/(1 + z), Element[z, Complexes] && Abs[Arg[1 + z]] < Pi]

(* {"Log", 8}*)
ConditionalExpression[Log[1 + z] == (2*z)/(2 + z + Inactive[ContinuedFractionK][-(k^2*z^2), (1 + 2*k)*(2 + z), {k, 1, Infinity}]), Element[z, Complexes] && Abs[Arg[1 + z]] < Pi]

(* {"Log", 9}*)
ConditionalExpression[Log[1 + z] == z/(1 + Inactive[ContinuedFractionK][k^2*z, 1 + k - k*z, {k, 1, Infinity}]), Element[z, Complexes] && Abs[Arg[1 + z]] < Pi]

(* {"Log", 10}*)
ConditionalExpression[Log[1 + z] == z/(1 + z + Inactive[ContinuedFractionK][(2*((-1 - (-1)^k)*(-1 + I^k) + 2*(-1 + (-1)^k)*z) + k*(1 - z + (-1)^k*(1 + z)))/(2*(4 + k)), (2 + z + (-1)^k*z)/2, {k, 1, Infinity}]), Element[z, Complexes] && Abs[Arg[1 + z]] < Pi]

(* {"Log", 11}*)
ConditionalExpression[Log[1 + z] == z/(1 + z + Inactive[ContinuedFractionK][(-((1 + (-1)^k)*k)/4 - ((1 - (-1)^k)*(1 + k))/4)*z, 1 - (-1)^k + ((1 + (-1)^k)*(1 + k)*(1 + z))/2, {k, 1, Infinity}]), Element[z, Complexes] && Abs[Arg[1 + z]] < Pi]

(* {"Log", 12}*)
ConditionalExpression[Log[1 + z] == z/(1 + z + Inactive[ContinuedFractionK][-(k^2*z*(1 + z)), 1 + k + (1 + 2*k)*z, {k, 1, Infinity}]), Element[z, Complexes] && Abs[Arg[1 + z]] < Pi]

(* {"Log", 13}*)
ConditionalExpression[Log[1 + (2*x)/y] == (2*x)/(y + Inactive[ContinuedFractionK][x*Floor[(1 + k)/2], (1 - (-1)^k)/2 + ((1 + (-1)^k)*(1 + k)*y)/2, {k, 1, Infinity}]), Element[x | y, Complexes] && Abs[Arg[1 + (2*x)/y]] < Pi]

(* {"Log", 14}*)
ConditionalExpression[Log[1 + (2*x)/y] == (2*x)/(x + y + Inactive[ContinuedFractionK][-(k^2*x^2), (1 + 2*k)*(x + y), {k, 1, Infinity}]), Element[x | y, Complexes] && Abs[Arg[1 + (2*x)/y]] < Pi]

(* {"Log", 15}*)
ConditionalExpression[Log[(1 + Sqrt[z])/(1 - Sqrt[z])] == (2*Inactive[ContinuedFractionK][z*(-((-1 + k)^2/(-1 + 4*(-1 + k)^2)) + KroneckerDelta[1 - k]), 1, {k, 1, Infinity}])/Sqrt[z], Element[z, Complexes] && Abs[Arg[1 - z]] < Pi]

(* {"Log", 16}*)
ConditionalExpression[Log[(1 + z)/(1 - z)] == (2*z)/(1 + Inactive[ContinuedFractionK][-((k^2*z^2)/(-1 + 4*k^2)), 1, {k, 1, Infinity}]), Element[z, Complexes] && Abs[Arg[1 - z^2]] < Pi]

(* {"Log", 17}*)
ConditionalExpression[Log[(1 + z)/(1 - z)] == (2*z)/(1 + Inactive[ContinuedFractionK][-(k^2*z^2), 1 + 2*k, {k, 1, Infinity}]), Element[z, Complexes] && Abs[Arg[1 - z^2]] < Pi]

(* {"Log", 18}*)
ConditionalExpression[Log[(1 + z)/(1 - z)] == (2*z)/(1 - z^2/(2*(3/2 + Inactive[ContinuedFractionK][-((1 + k)^2*z^2)/4, (3 + 2*k)/2, {k, 1, Infinity}]))), Element[z, Complexes] && Abs[Arg[1 - z^2]] < Pi]

(* {"Log", 19}*)
ConditionalExpression[Log[(1 + z)/(1 - z)] == (2*z)/(1 + Inactive[ContinuedFractionK][-(((-1 + 2*k)*z^2)/(1 + 2*k)), 1 + ((-1 + 2*k)*z^2)/(1 + 2*k), {k, 1, Infinity}]), Element[z, Complexes] && Abs[z] < 1]

(* {"Log", 20}*)
ConditionalExpression[Log[(1 + z)/(1 - z)] == (2*z)/(1 + Inactive[ContinuedFractionK][-((-1 + 2*k)^2*z^2), 1 + 2*k + (-1 + 2*k)*z^2, {k, 1, Infinity}]), Element[z, Complexes] && Abs[z] < 1]

(* {"Log", 21}*)
ConditionalExpression[Log[(1 + z)/(-1 + z)] == 2/(z + Inactive[ContinuedFractionK][-k^2, (1 + 2*k)*z, {k, 1, Infinity}]),  !(Element[z, Reals] && 0 < z < 1) && Inequality[-Pi/2, Less, Arg[z], LessEqual, Pi/2]]

(* {"Log", 22}*)
ConditionalExpression[Log[(1 + z)/(-1 + z)] == 2/(z + Inactive[ContinuedFractionK][-(k/(1 + k)), ((1 + 2*k)*z)/(1 + k), {k, 1, Infinity}]),  !(Element[z, Reals] && 0 < z < 1) && Inequality[-Pi/2, Less, Arg[z], LessEqual, Pi/2]]

(* {"Log", 23}*)
ConditionalExpression[Log[(1 + z)/(-1 + z)] == 2/(z*(1 + Inactive[ContinuedFractionK][-((k^2*z^(-1 - k))/(-1 + 4*k^2)), 1, {k, 1, Infinity}])), Element[z, Complexes] &&  !(Element[z, Reals] && -1 <= z <= 1)]

(* {"Log", 24}*)
ConditionalExpression[Log[z + Sqrt[1 + z^2]] == (z*Sqrt[1 + z^2])/(1 + Inactive[ContinuedFractionK][2*z^2*Floor[(1 + k)/2]*(-1 + 2*Floor[(1 + k)/2]), 1 + 2*k, {k, 1, Infinity}]), Element[z, Complexes] &&  !(Element[I*z, Reals] && (Inequality[-Infinity, Less, I*z, LessEqual, -1] || Inequality[1, LessEqual, I*z, Less, Infinity]))]

(* {"LogGamma", 1}*)
ConditionalExpression[LogGamma[z] == -(EulerGamma*z) - Log[z] + (Pi^2*z^2)/(12*(1 + Inactive[ContinuedFractionK][((1 + k)*z*Zeta[2 + k])/((2 + k)*Zeta[1 + k]), 1 - ((1 + k)*z*Zeta[2 + k])/((2 + k)*Zeta[1 + k]), {k, 1, Infinity}])), Element[z, Complexes] && Abs[z] < 1]

(* {"LogIntegral", 1}*)
ConditionalExpression[LogIntegral[z] == -(1/(z*Log[z]*(1 + Inactive[ContinuedFractionK][Floor[(1 + k)/2]/Log[z], 1, {k, 1, Infinity}]))) + 2*Inactive[Sum][Log[z]^(1 + 2*k)/((1 + 2*k)*(1 + 2*k)!), {k, 0, Infinity}], Element[z, Complexes] && Abs[Arg[z]] < Pi]

(* {"LogIntegral", 2}*)
ConditionalExpression[LogIntegral[z] == (Log[-z^(-1)] - 3*Log[-z] + 2*Log[-z^2])/2 + z/(Log[z] + Inactive[ContinuedFractionK][-Floor[(1 + k)/2], (1 - (-1)^k)/2 + ((1 + (-1)^k)*Log[z])/2, {k, 1, Infinity}]), Element[z, Complexes] && Abs[Arg[1 - z]] < Pi]

(* {"LogIntegral", 3}*)
ConditionalExpression[LogIntegral[E^(-z)] == (Pi*Sqrt[-z^2])/z - 1/(E^z*(z + (1 + Inactive[ContinuedFractionK][(3 + (-1)^k + 2*k)/4, (1 + (-1)^k)/2 + ((1 - (-1)^k)*z)/2, {k, 1, Infinity}])^(-1))), Element[z, Complexes] && Abs[z] < 1]

(* {"LucasL", 1}*)
ConditionalExpression[LucasL[\[Nu]] == 2 + (\[Nu]^2*(-Pi^2/2 + ArcCsch[2]^2))/(1 + Inactive[ContinuedFractionK][-(\[Nu]*((I*Pi - ArcCsch[2])^(2 + k) + 2*ArcCsch[2]^(2 + k) + (-1)^k*(I*Pi + ArcCsch[2])^(2 + k)))/(2*(2 + k)*(ArcCsch[2]^(1 + k) + ((I*Pi - ArcCsch[2])^(1 + k) - (-1)^k*(I*Pi + ArcCsch[2])^(1 + k))/2)), 1 + (\[Nu]*((I*Pi - ArcCsch[2])^(2 + k) + 2*ArcCsch[2]^(2 + k) + (-1)^k*(I*Pi + ArcCsch[2])^(2 + k)))/(2*(2 + k)*(ArcCsch[2]^(1 + k) + ((I*Pi - ArcCsch[2])^(1 + k) - (-1)^k*(I*Pi + ArcCsch[2])^(1 + k))/2)), {k, 1, Infinity}]), Element[\[Nu], Complexes]]

(* {"LucasL2", 1}*)
ConditionalExpression[LucasL[\[Nu], z] == 2 - (\[Nu]^2*(Pi^2 - 2*Log[(z + Sqrt[4 + z^2])/2]^2))/(2*(1 + Inactive[ContinuedFractionK][-((\[Nu]*(1 + ((-1)^k*((1 - (I*Pi)/Log[(z + Sqrt[4 + z^2])/2])^(2 + k) + (1 + (I*Pi)/Log[(z + Sqrt[4 + z^2])/2])^(2 + k)))/2)*Log[(z + Sqrt[4 + z^2])/2])/((2 + k)*(1 - ((-1)^k*((1 - (I*Pi)/Log[(z + Sqrt[4 + z^2])/2])^(1 + k) + (1 + (I*Pi)/Log[(z + Sqrt[4 + z^2])/2])^(1 + k)))/2))), 1 + (\[Nu]*(1 + ((-1)^k*((1 - (I*Pi)/Log[(z + Sqrt[4 + z^2])/2])^(2 + k) + (1 + (I*Pi)/Log[(z + Sqrt[4 + z^2])/2])^(2 + k)))/2)*Log[(z + Sqrt[4 + z^2])/2])/((2 + k)*(1 - ((-1)^k*((1 - (I*Pi)/Log[(z + Sqrt[4 + z^2])/2])^(1 + k) + (1 + (I*Pi)/Log[(z + Sqrt[4 + z^2])/2])^(1 + k)))/2)), {k, 1, Infinity}])), Element[\[Nu] | z, Complexes]]

(* {"LucasL2", 2}*)
ConditionalExpression[LucasL[v, z] == (2*Cos[(CalculateData`Private`nu*Pi)/2]^2)/(1 + Inactive[ContinuedFractionK][(z*Cot[((k - CalculateData`Private`nu)*Pi)/2]*Gamma[(k - CalculateData`Private`nu)/2]*Gamma[(k + CalculateData`Private`nu)/2])/(k*Gamma[(-1 + k - CalculateData`Private`nu)/2]*Gamma[(-1 + k + CalculateData`Private`nu)/2]), 1 - (z*Cot[((k - CalculateData`Private`nu)*Pi)/2]*Gamma[(k - CalculateData`Private`nu)/2]*Gamma[(k + CalculateData`Private`nu)/2])/(k*Gamma[(-1 + k - CalculateData`Private`nu)/2]*Gamma[(-1 + k + CalculateData`Private`nu)/2]), {k, 1, Infinity}]), Element[CalculateData`Private`nu | z, Complexes]]

(* {"ParabolicCylinderD", 1}*)
ConditionalExpression[ParabolicCylinderD[\[Nu], z] == (2^(\[Nu]/2)*Sqrt[Pi])/(E^(z^2/4)*Gamma[(1 - \[Nu])/2]*(1 + Inactive[ContinuedFractionK][(Sqrt[2]*z*Gamma[(k - \[Nu])/2])/(k*Gamma[(-1 + k - \[Nu])/2]), 1 - (Sqrt[2]*z*Gamma[(k - \[Nu])/2])/(k*Gamma[(-1 + k - \[Nu])/2]), {k, 1, Infinity}])), Element[z | \[Nu], Complexes] && Inequality[-Pi/2, Less, Arg[z], LessEqual, Pi/2]]

(* {"ParabolicCylinderDRatio", 1}*)
ConditionalExpression[ParabolicCylinderD[\[Nu], z]/ParabolicCylinderD[1 + \[Nu], z] == (z + Inactive[ContinuedFractionK][-1 + k - \[Nu], z, {k, 1, Infinity}])^(-1), Element[z | \[Nu], Complexes] && Inequality[-Pi/2, Less, Arg[z], LessEqual, Pi/2]]

(* {"ParabolicCylinderDRatio", 2}*)
ConditionalExpression[ParabolicCylinderD[-3/2, z]/ParabolicCylinderD[-1/2, z] == (z + Inactive[ContinuedFractionK][1/2 + k, z, {k, 1, Infinity}])^(-1), Element[z, Complexes] && Inequality[-Pi/2, Less, Arg[z], LessEqual, Pi/2]]

(* {"Pi", 1}*)
Pi == 3 + Inactive[ContinuedFractionK][(-1 + 2*k)^2, 6, {k, 1, Infinity}]

(* {"Pi", 2}*)
Pi == 16/(5 + Inactive[ContinuedFractionK][k^2, 5*(1 + 2*k), {k, 1, Infinity}]) - 4/(239 + Inactive[ContinuedFractionK][k^2, 239*(1 + 2*k), {k, 1, Infinity}])

(* {"Pi", 3}*)
Pi == 4/(1 + Inactive[ContinuedFractionK][1 - 2/(1 + 2*k), 2/(1 + 2*k), {k, 1, Infinity}])

(* {"Pi", 4}*)
Pi/2 == 1 + (1 + Inactive[ContinuedFractionK][k*(1 + k), 1, {k, 1, Infinity}])^(-1)

(* {"Pi", 5}*)
Pi/2 == 1 - (3 + Inactive[ContinuedFractionK][((-1)^k - k)*(1 - (-1)^k + k), 2 + (-1)^k, {k, 1, Infinity}])^(-1)

(* {"Pi", 6}*)
Pi/4 == (1 + Inactive[ContinuedFractionK][(-1 + 2*k)^2, 2, {k, 1, Infinity}])^(-1)

(* {"Pi", 7}*)
Pi/4 == (1 + Inactive[ContinuedFractionK][k^2, 1 + 2*k, {k, 1, Infinity}])^(-1)

(* {"Pi", 8}*)
Pi/4 == (1 + Inactive[ContinuedFractionK][k^2, 1 + 2*k, {k, 1, Infinity}])^(-1)

(* {"Pi", 9}*)
Pi/16 == (5 + Inactive[ContinuedFractionK][(-1 + 2*k)^2, 10, {k, 1, Infinity}])^(-1)

(* {"Pi", 10}*)
Pi/Sqrt[3] == 2 - (6 + Inactive[ContinuedFractionK][-(k*(2 + 4*k)), 6 + 5*k, {k, 1, Infinity}])^(-1)

(* {"PiCompound", 1}*)
Pi^(-1) == (3 + Inactive[ContinuedFractionK][(-1 + 2*k)^2, 6, {k, 1, Infinity}])^(-1)

(* {"PiCompound", 2}*)
2/Pi == 1 - (2 + Inactive[ContinuedFractionK][k*(1 + k), 1, {k, 1, Infinity}])^(-1)

(* {"PiCompound", 3}*)
2/Pi == 1 + (2 + Inactive[ContinuedFractionK][-1 + (-1)^k + (-1 + 2*(-1)^k)*k - k^2, 2 + (-1)^k, {k, 1, Infinity}])^(-1)

(* {"PiCompound", 4}*)
4/Pi == 1 + Inactive[ContinuedFractionK][k^2, 1 + 2*k, {k, 1, Infinity}]

(* {"PiCompound", 5}*)
4/Pi == 1 + Inactive[ContinuedFractionK][(-1 + 2*k)^2, 2, {k, 1, Infinity}]

(* {"PiCompound", 6}*)
16/Pi == 5 + Inactive[ContinuedFractionK][(-1 + 2*k)^2, 10, {k, 1, Infinity}]

(* {"PiCompound", 7}*)
Pi^2/6 == 1 + (1 + Inactive[ContinuedFractionK][(1 - (-1)^k + 4*k + 2*k^2)/8, 1, {k, 1, Infinity}])^(-1)

(* {"PiCompound", 8}*)
Pi^2/12 == (1 + Inactive[ContinuedFractionK][k^4, 1 + 2*k, {k, 1, Infinity}])^(-1)

(* {"PiCompound", 9}*)
6/Pi^2 == 1 - (2 + Inactive[ContinuedFractionK][(1 - (-1)^k + 4*k + 2*k^2)/8, 1, {k, 1, Infinity}])^(-1)

(* {"PiCompound", 10}*)
12/Pi^2 == 1 + Inactive[ContinuedFractionK][k^4, 1 + 2*k, {k, 1, Infinity}]

(* {"PiCompound", 11}*)
6/(-6 + Pi^2) == 1 + Inactive[ContinuedFractionK][Floor[(1 + k)/2]*Floor[(2 + k)/2], 1, {k, 1, Infinity}]

(* {"PiCompound", 12}*)
2/(4 - Pi) == 9/2 + Inactive[ContinuedFractionK][1, ((-15 + 17*(-1)^k)*(-1 + 2*k)^2*(9 + 16*k + 8*k^2)*Pochhammer[(5 - 2*k)/4, Floor[(-1 + k)/2]]^2)/(64*(1 + k)*(1 + 2*k)^2*Pochhammer[(3 - 2*k)/4, Floor[k/2]]^2), {k, 1, Infinity}]

(* {"PiCompound", 13}*)
Pi^2 == 6/(1 + Inactive[ContinuedFractionK][-(k^2/(1 + k)^2), 1 + k^2/(1 + k)^2, {k, 1, Infinity}])

(* {"PolyGamma", 1}*)
ConditionalExpression[PolyGamma[0, z] == -EulerGamma - z^(-1) + (Pi^2*z)/(6*(1 + Inactive[ContinuedFractionK][(z*Zeta[2 + k])/Zeta[1 + k], 1 - (z*Zeta[2 + k])/Zeta[1 + k], {k, 1, Infinity}])), Element[z, Complexes] && Abs[z] < 1]

(* {"PolyGamma2", 1}*)
ConditionalExpression[PolyGamma[1, z] == 1/(z*(1 + Inactive[ContinuedFractionK][(((1 + (-1)^k)*k^2)/(16*(1 + k)) - ((1 - (-1)^k)*(1 + k)^2)/(16*k))/z, 1, {k, 1, Infinity}])), Element[z, Complexes] && Re[z] > 1/2]

(* {"PolyGamma2", 2}*)
ConditionalExpression[PolyGamma[1, z] == 1/(z*(1 + Inactive[ContinuedFractionK][(((1 + (-1)^k)*k^2)/(16*(1 + k)) - ((1 - (-1)^k)*(1 + k)^2)/(16*k))/z, 1, {k, 1, Infinity}])), Element[z, Complexes] && Re[z] > 1/2]

(* {"PolyGamma2", 3}*)
ConditionalExpression[PolyGamma[1, z] == z^(-2) + 1/(z*(1 + Inactive[ContinuedFractionK][(-((1 + (-1)^k)*k^2)/(8*(1 + k)) + ((1 - (-1)^k)*(1 + k)^2)/(8*k))/(2*z), 1, {k, 1, Infinity}])), Element[z, Complexes] && Re[z] > 0]

(* {"PolyGamma2", 4}*)
ConditionalExpression[PolyGamma[1, z] == 1/(2*z^2) + z^(-1) + 1/(4*z^3*(3/2 + Inactive[ContinuedFractionK][1/(4*z^2), (1 + k)^(-1) + (2 + k)^(-1), {k, 1, Infinity}])), Element[z, Complexes] && Re[z] > 0]

(* {"PolyGamma2", 5}*)
ConditionalExpression[PolyGamma[1, z] == 1/(2*z^2) + z^(-1) + 1/(2*z^2*(3*z + Inactive[ContinuedFractionK][(k*(1 + k)^2*(2 + k))/4, (3 + 2*k)*z, {k, 1, Infinity}])), Element[z, Complexes] && Re[z] > 0]

(* {"PolyGamma2", 6}*)
ConditionalExpression[PolyGamma[1, z] == 1/(2*z^2) + z^(-1) + 1/(z^2*(6*z + Inactive[ContinuedFractionK][k*(1 + k)^2*(2 + k), 2*(3 + 2*k)*z, {k, 1, Infinity}])), Element[z, Complexes] && Re[z] > 0]

(* {"PolyGamma2", 7}*)
ConditionalExpression[PolyGamma[1, z] == (-1/2 + z + Inactive[ContinuedFractionK][k^4/(4*(-1 + 2*k)*(1 + 2*k)), -1/2 + z, {k, 1, Infinity}])^(-1), Element[z, Complexes] && Re[z] > 1/2]

(* {"PolyGamma2", 8}*)
ConditionalExpression[PolyGamma[1, z] == 2/(-1 + 2*z + Inactive[ContinuedFractionK][k^4, (1 + 2*k)*(-1 + 2*z), {k, 1, Infinity}]), Element[z, Complexes] && Re[z] > 1/2]

(* {"PolyGamma2", 9}*)
ConditionalExpression[PolyGamma[1, z] == z^(-2) + 2/(1 + 2*z + Inactive[ContinuedFractionK][k^4, (1 + 2*k)*(1 + 2*z), {k, 1, Infinity}]), Element[z, Complexes] && Re[z] > -1/2]

(* {"PolyGamma2", 10}*)
ConditionalExpression[PolyGamma[1, z] == 1/(2*z^2) + z^(-1) + 1/(6*z*(z^2 + Inactive[ContinuedFractionK][(k*(1 + k)^2*(2 + k))/(4*(3 + 8*k + 4*k^2)), (1 - (-1)^k + (1 + (-1)^k)*z^2)/2, {k, 1, Infinity}])), Element[z, Complexes] && Re[z] > 0]

(* {"PolyGamma2", 11}*)
ConditionalExpression[PolyGamma[1, 1 + z] == (1/2 + z)/(z + z^2 + Inactive[ContinuedFractionK][Floor[(1 + k)/2]^2*(-1 + 2*Floor[(1 + k)/2])^2, ((1 - (-1)^k)*(1 + 2*k))/2 + ((1 + (-1)^k)*(1 + 2*k)*(z + z^2))/2, {k, 1, Infinity}]), Element[z, Complexes] && Re[z] > -1/2]

(* {"PolyGamma2", 12}*)
ConditionalExpression[PolyGamma[1, 1/2 + z] == (4*z)/(-1 + 4*z^2) + 8/((1 - 4*z^2)*(6*z + Inactive[ContinuedFractionK][k^2*(2 + k)^2, 2*(3 + 2*k)*z, {k, 1, Infinity}])), Element[z, Complexes] && Re[z] > 0]

(* {"PolyGamma2", 13}*)
ConditionalExpression[PolyGamma[1, 1/2 + z] == 2/(2*z + Inactive[ContinuedFractionK][k^4, 2*(1 + 2*k)*z, {k, 1, Infinity}]), Element[z, Complexes] && Re[z] > 0]

(* {"PolyGamma2", 14}*)
ConditionalExpression[PolyGamma[2, z] == -z^(-1) + 1/(z*(1 + Inactive[ContinuedFractionK][Piecewise[{{(1 + k)^2/(2*(17 + 2*k + k^2)), Mod[1 + k, 4] == 0}, {-(20 + 4*k + k^2)/(8*k), Mod[2 + k, 4] == 0}, {(17 - 2*k + k^2)/(8 + 8*k), Mod[3 + k, 4] == 0}, {-(k^2/(32 + 2*k^2)), Mod[k, 4] == 0}}, 0]/z, 1, {k, 1, Infinity}])), Element[z, Complexes] && Re[z] > 1]

(* {"PolyGamma2", 15}*)
ConditionalExpression[PolyGamma[2, z] == -(1/((-1 + z)*z*(1 + Inactive[ContinuedFractionK][(((1 + (-1)^k)*k^4)/32 + ((1 - (-1)^k)*(1 + k)^4)/32)/((-1 + z)*z), 1 + k, {k, 1, Infinity}]))), Element[z, Complexes] &&  !(Element[z, Reals] && 1/2 < z < 1) && Re[z] > 1/2]

(* {"PolyGamma2", 16}*)
ConditionalExpression[PolyGamma[2, z] == -z^(-3) - z^(-2) - 1/(2*z^3*(z + Inactive[ContinuedFractionK][((1 + (-1)^k)*k*(2 + k)^2)/(32*(1 + k)) + ((1 - (-1)^k)*(1 + k)^2*(3 + k))/(32*(2 + k)), z, {k, 1, Infinity}])), Element[z, Complexes] && Re[z] > 0]

(* {"PolyGamma2", 17}*)
ConditionalExpression[PolyGamma[2, z] == -z^(-3) - z^(-2) - 1/(z^3*(2*z + Inactive[ContinuedFractionK][((1 + (-1)^k)*k*(2 + k)^3)/32 + ((1 - (-1)^k)*(1 + k)^3*(3 + k))/32, (2 + k)*z, {k, 1, Infinity}])), Element[z, Complexes] && Re[z] > 0]

(* {"PolyGamma2", 18}*)
ConditionalExpression[PolyGamma[2, z] == -(1/(z*(-1 + z + Inactive[ContinuedFractionK][((((1 + (-1)^k)*k^4)/32 + ((1 - (-1)^k)*(1 + k)^4)/32)*(-1 + z))/z, (1 + k)*(-1 + z), {k, 1, Infinity}]))), Element[z, Complexes] &&  !(Element[z, Reals] && 1/2 < z < 1) && Re[z] > 1/2]

(* {"PolyGamma2", 19}*)
ConditionalExpression[PolyGamma[2, z] == -2/(2*(-1 + z)*z + Inactive[ContinuedFractionK][Floor[(1 + k)/2]^3, (1 - (-1)^k)/2 + (1 + (-1)^k)*(1 + k)*(-1 + z)*z, {k, 1, Infinity}]), Element[z, Complexes] && Re[z] > 1/2]

(* {"PolyGamma2", 20}*)
ConditionalExpression[PolyGamma[2, z] == -z^(-3) - z^(-2) - 1/(2*z^2*(z^2 + Inactive[ContinuedFractionK][((1 + (-1)^k)*k*(2 + k)^2)/(32*(1 + k)) + ((1 - (-1)^k)*(1 + k)^2*(3 + k))/(32*(2 + k)), (1 - (-1)^k)/2 + ((1 + (-1)^k)*z^2)/2, {k, 1, Infinity}])), Element[z, Complexes] && Re[z] > 0]

(* {"PolyGamma2", 21}*)
ConditionalExpression[PolyGamma[2, 1/2 + z] == -4/((1 + 2*z)*(-1 + 2*z + Inactive[ContinuedFractionK][((1 + (-1)^k)*k^4*(-1 + 2*z))/(8*(1 + 2*z)) + ((1 - (-1)^k)*(1 + k)^4*(-1 + 2*z))/(8*(1 + 2*z)), (1 + k)*(-1 + 2*z), {k, 1, Infinity}])), Element[z, Complexes] &&  !(Element[z, Reals] && 0 < z < 1/2) && Re[z] > 0]

(* {"PolyGamma2", 22}*)
ConditionalExpression[PolyGamma[2, 1/2 + z] == -4/(-1 + 4*z^2 + Inactive[ContinuedFractionK][2*Floor[(1 + k)/2]^3, ((1 + k)*(-1 + 4*z^2))^((1 + (-1)^k)/2), {k, 1, Infinity}]), Element[z, Complexes] &&  !(Element[z, Reals] && 0 < z < 1/2) && Re[z] > 0]

(* {"PolyGamma2", 23}*)
ConditionalExpression[PolyGamma[\[Nu], z] == -(EulerGamma/(z^\[Nu]*Gamma[1 - \[Nu]])) + (z^(-1 - \[Nu])*(EulerGamma - Log[z] + PolyGamma[0, -\[Nu]]))/Gamma[-\[Nu]] + (Pi^2*z^(1 - \[Nu]))/(6*Gamma[2 - \[Nu]]*(1 + Inactive[ContinuedFractionK][((1 + k)*z*Zeta[2 + k])/((1 + k - \[Nu])*Zeta[1 + k]), 1 - ((1 + k)*z*Zeta[2 + k])/((1 + k - \[Nu])*Zeta[1 + k]), {k, 1, Infinity}])), Element[\[Nu] | z, Complexes] && NotElement[\[Nu], Integers] && Abs[z] < 1]

(* {"PolyGamma2", 24}*)
ConditionalExpression[PolyGamma[m, z] == (-1)^(-1 + m)*z^(-1 - m)*m! + ((-1)^(1 + m)*m!*Zeta[1 + m])/(1 + Inactive[ContinuedFractionK][((k + m)*z*Zeta[1 + k + m])/(k*Zeta[k + m]), 1 - ((k + m)*z*Zeta[1 + k + m])/(k*Zeta[k + m]), {k, 1, Infinity}]), Element[m, Integers] && Element[z, Complexes] && m > 0 && Abs[z] < 1]

(* {"PolyGamma2Compound", 1}*)
ConditionalExpression[PolyGamma[1, a] - PolyGamma[1, b] == (4*(-a + b))/(2 - 2*b + a*(-2 + 4*b) + Inactive[ContinuedFractionK][-4*k^4*(-(-a + b)^2 + k^2), (1 + 2*k)*(2 - 2*b + a*(-2 + 4*b) + 2*k*(1 + k)), {k, 1, Infinity}]), Element[a | b, Complexes] && Re[a + b] > 1]

(* {"PolyGamma2Compound", 2}*)
ConditionalExpression[PolyGamma[1, a] - PolyGamma[1, b] == (4*(-a + b))/(2*((-1 + a)*a + (-1 + b)*b) + Inactive[ContinuedFractionK][((1 + (-1)^k)*k^3)/8 + ((1 - (-1)^k)*(1 + k)*(-(-a + b)^2 + (1 + k)^2/4))/2, (1 - (-1)^k)/2 + ((1 + (-1)^k)*((-a + b)^2 + (-1 + (-1 + a + b)^2)*(1 + k)))/2, {k, 1, Infinity}]), Element[a | b, Complexes] && Re[a + b] > 1]

(* {"PolyGamma2Compound", 3}*)
ConditionalExpression[-PolyGamma[1, z] + PolyGamma[1, 1/2 + z] == 2/z - 2/(z*(1 + Inactive[ContinuedFractionK][Piecewise[{{(1 + k)^2/(16*(-1/2 + (1 + k)/4)), Mod[1 + k, 4] == 0}, {1/2 + (-2 - k)/4, Mod[2 + k, 4] == 0}, {-1/2 + (-1 + k)/4, Mod[3 + k, 4] == 0}, {-k^2/(16*(-1/2 + k/4)), Mod[k, 4] == 0}}, 0]/(2*z), 1, {k, 1, Infinity}])), Element[z, Complexes] &&  !(Element[z, Reals] && 0 < z < 1/2) && Re[z] > 1/4]

(* {"PolyGamma2Compound", 4}*)
ConditionalExpression[-PolyGamma[1, z] + PolyGamma[1, 1/2 + z] == -(1/(z*(-1 + 2*z)*(1 + Inactive[ContinuedFractionK][Floor[(1 + k)/2]^2/(2*z*(-1 + 2*z)), 1, {k, 1, Infinity}]))), Element[z, Complexes] &&  !(Element[z, Reals] && 0 < z < 1) && Re[z] > 1/2]

(* {"PolyGamma2Compound", 5}*)
ConditionalExpression[-PolyGamma[1, (1 + z)/4] + PolyGamma[1, (3 + z)/4] == -8/(-1 + z^2 + Inactive[ContinuedFractionK][4*Floor[(1 + k)/2]^2, (-1 + z^2)^((1 + (-1)^k)/2), {k, 1, Infinity}]), Element[z, Complexes] && Re[z] > -1]

(* {"PolyGammaCompound", 1}*)
ConditionalExpression[PolyGamma[0, a] - PolyGamma[0, b] == (2*(a - b))/(-1 + a + b + Inactive[ContinuedFractionK][k^2*(-(a - b)^2 + k^2), (-1 + a + b)*(1 + 2*k), {k, 1, Infinity}]), Element[a | b, Complexes] && Re[a + b] > 1]

(* {"PolyGammaCompound", 2}*)
ConditionalExpression[PolyGamma[0, a] - PolyGamma[0, b] == (a - b)/((-1 + a + b)/2 + Inactive[ContinuedFractionK][(k^2*(a - b + k)*(-a + b + k))/(4*(-1 + 4*k^2)), (-1 + a + b)/2, {k, 1, Infinity}]), Element[a | b, Complexes] && Re[a] > 1 && Re[b] > 1]

(* {"PolyGammaCompound", 3}*)
ConditionalExpression[-PolyGamma[0, z] + PolyGamma[0, 1/2 + z] == 1/(2*z*(1 + Inactive[ContinuedFractionK][((-1)^k*Floor[(1 + k)/2])/(4*z), 1, {k, 1, Infinity}])), Element[z, Complexes] && Re[z] > 1/4]

(* {"PolyGammaCompound", 4}*)
ConditionalExpression[-PolyGamma[0, z] + PolyGamma[0, 1/2 + z] == z^(-1) - 1/(2*z*(1 + Inactive[ContinuedFractionK][((-1)^(-1 + k)*Floor[(1 + k)/2])/(4*z), 1, {k, 1, Infinity}])), Element[z, Complexes] && Re[z] > 0]

(* {"PolyGammaCompound", 5}*)
ConditionalExpression[-PolyGamma[0, z] + PolyGamma[0, 1/2 + z] == (1 + (4*z + Inactive[ContinuedFractionK][k*(1 + k), 4*z, {k, 1, Infinity}])^(-1))/(2*z), Element[z, Complexes] && Re[z] > 0]

(* {"PolyGammaCompound", 6}*)
ConditionalExpression[-PolyGamma[0, z] + PolyGamma[0, 1/2 + z] == 2/(-1 + 4*z + Inactive[ContinuedFractionK][k^2, -1 + 4*z, {k, 1, Infinity}]), Element[z, Complexes] && Re[z] > 1/4]

(* {"PolyGammaCompound", 7}*)
ConditionalExpression[-PolyGamma[0, z] + PolyGamma[0, 1/2 + z] == 1/(2*z) + 2/(16*z^2 + Inactive[ContinuedFractionK][k*(1 + k), 4^(1 + (-1)^k)*z^(1 + (-1)^k), {k, 1, Infinity}]), Element[z, Complexes] && Re[z] > 0]

(* {"PolyGammaCompound", 8}*)
ConditionalExpression[-PolyGamma[0, (1 + z)/4] + PolyGamma[0, (3 + z)/4] == 2/(z + Inactive[ContinuedFractionK][k^2, z, {k, 1, Infinity}]), Element[z, Complexes] && Re[z] > 0]

(* {"PolyGammaCompound", 9}*)
ConditionalExpression[-PolyGamma[0, 1 + z/3] + PolyGamma[0, 1 + z] == -z^(-1) + Log[3] + 2/(3*(z^2 + Inactive[ContinuedFractionK][(3*(1 + (-1)^k)*k*(2 + 3*k)*(4 + 3*k))/16 + (3*(1 - (-1)^k)*(1 + k)*(-1 + 9*k^2))/16, 3*(1 - (-1)^k) + ((1 + (-1)^k)*(1 + k)*z^2)/2, {k, 1, Infinity}])), Element[z, Complexes] && Re[z] > 0]

(* {"PolyGammaCompound", 10}*)
ConditionalExpression[-PolyGamma[0, z/(2*(a + b))] + PolyGamma[0, (2*a + z)/(2*(a + b))] + PolyGamma[0, (2*b + z)/(2*(a + b))] - PolyGamma[0, 1 + z/(2*(a + b))] == -4/z + 4/(z*(1 + Inactive[ContinuedFractionK][((-1)^k*(((1 - (-1)^Floor[(1 + k)/2])*(a + ((a + b)*(-1 + Floor[(1 + k)/2]))/2)*(b + ((a + b)*(-1 + Floor[(1 + k)/2]))/2))/(2*Floor[(1 + k)/2]) + ((1 + (-1)^Floor[(1 + k)/2])*Floor[(1 + k)/2])/2))/z, 1, {k, 1, Infinity}])), Element[a | b | z, Complexes] && Re[z] > 0]

(* {"PolyGammaCompound", 11}*)
ConditionalExpression[-PolyGamma[0, z/(2*(a + b))] + PolyGamma[0, (2*a + z)/(2*(a + b))] + PolyGamma[0, (2*b + z)/(2*(a + b))] - PolyGamma[0, 1 + z/(2*(a + b))] == (4*a*b)/(z*(z + Inactive[ContinuedFractionK][((1 + (-1)^k)*k^2*(a + ((a + b)*k)/2)*(b + ((a + b)*k)/2))/2 + ((1 - (-1)^k)*(1 + k)^2*(-a + ((a + b)*(1 + k))/2)*(-b + ((a + b)*(1 + k))/2))/2, (1 + k)*z, {k, 1, Infinity}])), Element[a | b | z, Complexes] && Re[z] > 0]

(* {"PolyGammaCompound", 12}*)
ConditionalExpression[-PolyGamma[0, z/(2*(a + b))] + PolyGamma[0, (2*a + z)/(2*(a + b))] + PolyGamma[0, (2*b + z)/(2*(a + b))] - PolyGamma[0, 1 + z/(2*(a + b))] == (4*a*b)/(2*a*b + z^2 + Inactive[ContinuedFractionK][(-2*k^2*(-a^2 + (a + b)^2*k^2)*(-b^2 + (a + b)^2*k^2))/(-1 + 4*k^2), -a^2 - b^2 + (a + b)^2*(1 - 2*(1 + k) + 2*(1 + k)^2) + z^2, {k, 1, Infinity}]), Element[a | b | z, Complexes] && Re[z] > 0]

(* {"PolyGammaCompound", 13}*)
ConditionalExpression[-PolyGamma[0, (-a + b + z)/(4*b)] - PolyGamma[0, (a + b + z)/(4*b)] + PolyGamma[0, 1/2 + (-a + b + z)/(4*b)] + PolyGamma[0, 1/2 + (a + b + z)/(4*b)] == (4*b)/(z + Inactive[ContinuedFractionK][((1 + (-1)^k)*b^2*k^2)/2 + ((1 - (-1)^k)*(-a^2 + b^2*k^2))/2, z, {k, 1, Infinity}]), Element[a | b | z, Complexes] && Re[-a + b + z] > 0 && Re[a + b + z] > 0 && Re[b] > 0]

(* {"PolyGammaCompound", 14}*)
ConditionalExpression[-PolyGamma[0, (1 - a - b + z)/2] + PolyGamma[0, (1 + a - b + z)/2] + PolyGamma[0, (1 - a + b + z)/2] - PolyGamma[0, (1 + a + b + z)/2] == (4*a*b)/(-1 - a^2 + b^2 + z^2 + Inactive[ContinuedFractionK][((1 + (-1)^k)*k*(-a^2 + k^2/4))/2 + ((1 - (-1)^k)*(1 + k)*(-b^2 + (1 + k)^2/4))/2, (1 - (-1)^k)/2 + ((1 + (-1)^k)*(-a^2 + b^2 + (1 + k)*(-1 + z^2)))/2, {k, 1, Infinity}]), Element[a | b | z, Complexes] && Re[z] > 0]

(* {"PolyGammaCompound", 15}*)
ConditionalExpression[-PolyGamma[0, (1 - a + z)/4] + PolyGamma[0, (3 - a + z)/4] + PolyGamma[0, (1 + a + z)/4] - PolyGamma[0, (3 + a + z)/4] == (4*a)/(-1 + z^2 + Inactive[ContinuedFractionK][-((1 - (-1)^k)*a^2)/2 + 4*Floor[(1 + k)/2]^2, (-1 + z^2)^((1 + (-1)^k)/2), {k, 1, Infinity}]), Element[a | z, Complexes] && Re[-a + z] > -1 && Re[a + z] > -1]

(* {"PolyLog", 1}*)
ConditionalExpression[PolyLog[\[Nu], z] == z/(1 + Inactive[ContinuedFractionK][-((k/(1 + k))^\[Nu]*z), 1 + (k/(1 + k))^\[Nu]*z, {k, 1, Infinity}]), Element[\[Nu] | z, Complexes] && Abs[z] < 1]

(* {"PolyLog", 2}*)
ConditionalExpression[PolyLog[m, z] == -((((2*I)*Pi)^m*BernoulliB[m, 1/2 - ((I/2)*Log[-z])/Pi])/m!) + (-1)^(-1 + m)/(z*(1 + Inactive[ContinuedFractionK][-(k^m/((1 + k)^m*z)), 1 + k^m/((1 + k)^m*z), {k, 1, Infinity}])), Element[m, Integers] && Element[z, Complexes] && m > 0 && Abs[z] > 1]

(* {"PolyLog3", 1}*)
ConditionalExpression[PolyLog[\[Nu], p, z] == z^p/(p^\[Nu]*p!*(1 + Inactive[ContinuedFractionK][((1 - (k + p)^(-1))^\[Nu]*z*StirlingS1[k + p, p])/((k + p)*StirlingS1[-1 + k + p, p]), 1 - ((1 - (k + p)^(-1))^\[Nu]*z*StirlingS1[k + p, p])/((k + p)*StirlingS1[-1 + k + p, p]), {k, 1, Infinity}])), Element[p, Integers] && Element[\[Nu] | z, Complexes] && p > 0 && Abs[z] < 1]

(* {"Power", 1}*)
ConditionalExpression[z^a == (1 + Inactive[ContinuedFractionK][-((a*(-1 + k)!*Log[z])/k!), 1 + (a*(-1 + k)!*Log[z])/k!, {k, 1, Infinity}])^(-1), Element[a | z, Complexes] && Abs[Arg[z]] < Pi]

(* {"Power", 2}*)
ConditionalExpression[(1 + z)^a == 1 + (a*z)/(1 + Inactive[ContinuedFractionK][(((1 + (-1)^k)*(a + k/2))/(4*(1 + k)) + ((1 - (-1)^k)*(-a + (1 + k)/2))/(4*k))*z, 1, {k, 1, Infinity}]), Element[z, Complexes] && Abs[Arg[1 + z]] < Pi]

(* {"Power", 3}*)
ConditionalExpression[(1 + z)^a == (1 + Inactive[ContinuedFractionK][((-1 - a + k)*z)/k, 1 - ((-1 - a + k)*z)/k, {k, 1, Infinity}])^(-1), Element[a | z, Complexes] && Abs[z] < 1]

(* {"Power", 4}*)
ConditionalExpression[(1 + z)^a == z^a/(1 + Inactive[ContinuedFractionK][(-1 - a + k)/(k*z), 1 - (-1 - a + k)/(k*z), {k, 1, Infinity}]), Element[a | z, Complexes] && Abs[z] > 1]

(* {"Power", 5}*)
ConditionalExpression[(1 + z)^a == (1 - (a*z)/(1 + Inactive[ContinuedFractionK][(((1 + (-1)^k)*(-a + k/2))/(4*(1 + k)) + ((1 - (-1)^k)*(a + (1 + k)/2))/(4*k))*z, 1, {k, 1, Infinity}]))^(-1), Element[z, Complexes] && Abs[Arg[1 + z]] < Pi]

(* {"Power", 6}*)
ConditionalExpression[(1 + z)^a == (1 - (a*z)/((1 + z)*(1 + Inactive[ContinuedFractionK][((((1 - (-1)^k)*(a + (-1 - k)/2))/(4*k) + ((1 + (-1)^k)*(-a - k/2))/(4*(1 + k)))*z)/(1 + z), 1, {k, 1, Infinity}])))^(-1), Element[z, Complexes] && Abs[Arg[1 + z]] < Pi]

(* {"Power", 7}*)
ConditionalExpression[(1 + z)^a == 1 + (a*z)/(1 + Inactive[ContinuedFractionK][k*(1 + k)*(((1 + (-1)^k)*(a + k/2))/(4*(1 + k)) + ((1 - (-1)^k)*(-a + (1 + k)/2))/(4*k))*z, 1 + k, {k, 1, Infinity}]), Element[z, Complexes] && Abs[Arg[1 + z]] < Pi]

(* {"Power", 8}*)
ConditionalExpression[(1 + z)^a == 1 + Inactive[ContinuedFractionK][z*(-((-1)^k*a) + Floor[k/2]), 1 + (-1)^k + ((1 - (-1)^k)*k)/2, {k, 1, Infinity}], Element[z, Complexes] && Abs[Arg[1 + z]] < Pi]

(* {"Power", 9}*)
ConditionalExpression[(1 + z)^a == (1 - (a*z)/(1 + Inactive[ContinuedFractionK][k*(1 + k)*(((1 + (-1)^k)*(-a + k/2))/(4*(1 + k)) + ((1 - (-1)^k)*(a + (1 + k)/2))/(4*k))*z, 1 + k, {k, 1, Infinity}]))^(-1), Element[z, Complexes] && Abs[Arg[1 + z]] < Pi]

(* {"Power", 10}*)
ConditionalExpression[(1 + z)^a == (1 + Inactive[ContinuedFractionK][z*((-1)^k*a + Floor[k/2]), 1 + (-1)^k + ((1 - (-1)^k)*k)/2, {k, 1, Infinity}])^(-1), Element[z, Complexes] && Abs[Arg[1 + z]] < Pi]

(* {"Power", 11}*)
ConditionalExpression[(1 + z)^a == 1 + (a*z)/(1 + Inactive[ContinuedFractionK][((-a + k)*z)/(1 + k), 1 - ((-a + k)*z)/(1 + k), {k, 1, Infinity}]), Element[z, Complexes] && Abs[z] < 1]

(* {"Power", 12}*)
ConditionalExpression[(1 + z)^a == (1 + Inactive[ContinuedFractionK][z*((-1)^k*a - Floor[k/2]), 1 + (-1)^k + ((1 - (-1)^k)*k*(1 + z))/2, {k, 1, Infinity}])^(-1), Element[z, Complexes] && Abs[Arg[1 + z]] < Pi]

(* {"Power", 13}*)
ConditionalExpression[(1 + z)^a == (1 - (a*z)/(1 + (1 + a)*z + Inactive[ContinuedFractionK][-(k*(a + k)*z*(1 + z)), 1 + k + (1 + a + 2*k)*z, {k, 1, Infinity}]))^(-1), Element[z, Complexes] && Re[z] > -1/2]

(* {"Power", 14}*)
ConditionalExpression[(1 + z)^a == (1 - (a*z)/(1 + a*z + Inactive[ContinuedFractionK][k*(-a + k)*z, 1 + k - (-a + k)*z, {k, 1, Infinity}]))^(-1), Element[z, Complexes] && Abs[z] < 1]

(* {"Power", 15}*)
ConditionalExpression[(1 + z)^a == 1 + (2*a*z)/(2 + (1 - a)*z + Inactive[ContinuedFractionK][(a^2 - k^2)*z^2, (1 + 2*k)*(2 + z), {k, 1, Infinity}]), Element[a | z, Complexes] && Abs[Arg[1 + z]] < Pi]

(* {"Power", 16}*)
ConditionalExpression[(1 + z)^(-1) == 1 - z/(1 + Inactive[ContinuedFractionK][z, 1 - z, {k, 1, Infinity}]), Element[z, Complexes] && Abs[z] < 1]

(* {"Power", 17}*)
ConditionalExpression[((1 + z)/(-1 + z))^a == 1 + (2*a)/(-a + z + Inactive[ContinuedFractionK][a^2 - k^2, (1 + 2*k)*z, {k, 1, Infinity}]), Element[a | z, Complexes] &&  !(Element[z, Reals] && 0 < z < 1) && Inequality[-Pi/2, Less, Arg[z], LessEqual, Pi/2]]

(* {"Power", 18}*)
ConditionalExpression[((1 + a*z)/(1 + b*z))^\[Nu] == 1 + (2*(a - b)*z*\[Nu])/(2 + z*(a + b - (a - b)*\[Nu]) + Inactive[ContinuedFractionK][-((a - b)^2*z^2*(k^2 - \[Nu]^2)), (1 + 2*k)*(2 + (a + b)*z), {k, 1, Infinity}]), Element[a | b | z | \[Nu], Complexes] && Abs[a*z] < 1 && Abs[b*z] < 1]

(* {"Power", 19}*)
ConditionalExpression[(x^p + y)^(m/p) == x^m + (m*y)/(p*x^(-m + p) + Inactive[ContinuedFractionK][y*((-1)^k*m + p*Floor[(1 + k)/2]), (1 - (-1)^k)*x^m + ((1 + (-1)^k)*(1 + k)*p*x^(-m + p))/2, {k, 1, Infinity}]), Element[m | p, Integers] && Element[x | y, Complexes] && m > 0 && p > 0]

(* {"Power", 20}*)
ConditionalExpression[(c + b*z + a*z^2)^r == c^r/(1 + Inactive[ContinuedFractionK][(-2*a*z*(-1 + k)!*Hypergeometric2F1[-k, -r, 1 - k + r, (b - Sqrt[b^2 - 4*a*c])/(b + Sqrt[b^2 - 4*a*c])]*Pochhammer[-r, k])/((-b + Sqrt[b^2 - 4*a*c])*k!*Hypergeometric2F1[1 - k, -r, 2 - k + r, (b - Sqrt[b^2 - 4*a*c])/(b + Sqrt[b^2 - 4*a*c])]*Pochhammer[-r, -1 + k]), 1 + (2*a*z*(-1 + k)!*Hypergeometric2F1[-k, -r, 1 - k + r, (b - Sqrt[b^2 - 4*a*c])/(b + Sqrt[b^2 - 4*a*c])]*Pochhammer[-r, k])/((-b + Sqrt[b^2 - 4*a*c])*k!*Hypergeometric2F1[1 - k, -r, 2 - k + r, (b - Sqrt[b^2 - 4*a*c])/(b + Sqrt[b^2 - 4*a*c])]*Pochhammer[-r, -1 + k]), {k, 1, Infinity}]), Element[a | b | c | r | z, Complexes]]

(* {"PowerCompound", 1}*)
ConditionalExpression[(-(1 - z)^a + (1 + z)^a)/((1 - z)^a + (1 + z)^a) == (a*z)/(1 + Inactive[ContinuedFractionK][(a^2 - k^2)*z^2, 1 + 2*k, {k, 1, Infinity}]), Element[a, Complexes] && Element[z, Complexes] &&  !(Element[z, Reals] && (Inequality[-Infinity, Less, z, LessEqual, -1] || Inequality[1, LessEqual, z, Less, Infinity]))]

(* {"PowerCompound", 2}*)
ConditionalExpression[((-1 + z)^a + (1 + z)^a)/(-(-1 + z)^a + (1 + z)^a) == (z + Inactive[ContinuedFractionK][a^2 - k^2, (1 + 2*k)*z, {k, 1, Infinity}])/a, Element[a, Complexes] && Element[z, Complexes] && Inequality[-Pi/2, Less, Arg[z], LessEqual, Pi/2]]

(* {"PowerCompound", 3}*)
ConditionalExpression[z^z^(-1) == 1 + (-1 + z)/(z + Inactive[ContinuedFractionK][(-1 + z)*((-1)^k + z*Floor[(1 + k)/2]), 1 - (-1)^k + ((1 + (-1)^k)*(1 + k)*z)/2, {k, 1, Infinity}]), Element[z, Complexes] && Abs[Arg[z]] < Pi]

(* {"PowerCompound", 4}*)
ConditionalExpression[z^z^(-1) == 1 + (2*(-1 + z))/(1 + z^2 + Inactive[ContinuedFractionK][(-1 + z)^2*(1 - k^2*z^2), (1 + 2*k)*z*(1 + z), {k, 1, Infinity}]), Element[z, Complexes] && Abs[Arg[z]] < Pi]

(* {"ProductFromFunctionCompound", 1}*)
ConditionalExpression[(-(Gamma[(1 + z)/2]^2/(Gamma[(1 - 2*a + z)/2]*Gamma[(1 + 2*a + z)/2])) + Inactive[Product][1 + (4*a^2)/(1 + 2*k + z)^2, {k, 0, Infinity}])/(Gamma[(1 + z)/2]^2/(Gamma[(1 - 2*a + z)/2]*Gamma[(1 + 2*a + z)/2]) + Inactive[Product][1 + (4*a^2)/(1 + 2*k + z)^2, {k, 0, Infinity}]) == Inactive[ContinuedFractionK][4*a^4 + (-1 + k)^4, (-1 + 2*k)*z, {k, 1, Infinity}]/(2*a^2), Element[a | z, Complexes] && Re[z] > 1 + 2*Abs[Re[a]]]

(* {"ProductFromFunctionCompound", 2}*)
ConditionalExpression[(-Inactive[Product][1 - a^3/(k + z)^3, {k, 1, Infinity}] + Inactive[Product][1 + a^3/(k + z)^3, {k, 1, Infinity}])/(Inactive[Product][1 - a^3/(k + z)^3, {k, 1, Infinity}] + Inactive[Product][1 + a^3/(k + z)^3, {k, 1, Infinity}]) == Inactive[ContinuedFractionK][a^6 - (-1 + k)^6, (-1 + 2*k)*((-1 + k)^2 + k + 2*z + 2*z^2), {k, 1, Infinity}]/a^3, Element[a | z, Complexes]]

(* {"ProductLog", 1}*)
ConditionalExpression[ProductLog[z] == z/(1 + Inactive[ContinuedFractionK][((1 + k^(-1))^k*k*z)/(1 + k), 1 - ((1 + k^(-1))^k*k*z)/(1 + k), {k, 1, Infinity}]), Element[z, Complexes] && Abs[z] < E^(-1)]

(* {"QAlternatingFunction/Constant", 1}*)
ConditionalExpression[-1 + 1/(QPochhammer[-q, q]*QPochhammer[q^2, q^2]) == Inactive[ContinuedFractionK][-((1 - (-1)^k)*q^k)/2 + ((1 + (-1)^k)*q^(k/2)*(1 - q^(k/2)))/2, 1, {k, 1, Infinity}], Element[q, Complexes] && 0 < Abs[q] < 1]

(* {"QAlternatingFunction/Constant", 2}*)
ConditionalExpression[-1 + QPochhammer[-q, q^2]/QPochhammer[-q^2, q^2] == Inactive[ContinuedFractionK][((1 - (-1)^k)*q^k)/2 + ((1 + (-1)^k)*q^(k/2)*(1 + q^(k/2)))/2, 1, {k, 1, Infinity}], Element[q, Complexes] && 0 < Abs[q] < 1]

(* {"QAlternatingFunction/Constant", 3}*)
ConditionalExpression[-1 + QPochhammer[-q, q^4]/QPochhammer[-q^3, q^4] == Inactive[ContinuedFractionK][((1 - (-1)^k)*q^(-1 + 2*k))/2 + ((1 + (-1)^k)*q^k*(1 + q^(-1 + k)))/2, 1, {k, 1, Infinity}], Element[q, Complexes] && 0 < Abs[q] < 1]

(* {"QAlternatingFunction/Constant", 4}*)
ConditionalExpression[-1 + (QPochhammer[q^3, q^8]*QPochhammer[q^5, q^8])/(QPochhammer[q, q^8]*QPochhammer[q^7, q^8]) == Inactive[ContinuedFractionK][((1 + (-1)^k)*q^(2*k))/2 + ((1 - (-1)^k)*(q^k + q^(2*k)))/2, 1, {k, 1, Infinity}], Element[q, Complexes] && 0 < Abs[q] < 1]

(* {"QCubic/QQuadratic", 1}*)
ConditionalExpression[-b + b*q + ((c*q + b^2*v^2)*(QPochhammer[-((c*q)/(b^2*v)), q]*QPochhammer[-v, q] + QPochhammer[(c*q)/(b^2*v), q]*QPochhammer[v, q]))/(b*v*(QPochhammer[-((c*q)/(b^2*v)), q]*QPochhammer[-v, q] - QPochhammer[(c*q)/(b^2*v), q]*QPochhammer[v, q])) == Inactive[ContinuedFractionK][c*q^k + c*q^(3*k) + b^2*q^(2*k)*((c^2*q)/(b^4*v^2) + v^2/q), b - b*q^(1 + 2*k), {k, 1, Infinity}], Element[b | c | v | q, Complexes] && 0 < Abs[q] < 1]

(* {"QCubic/QQuadratic", 2}*)
ConditionalExpression[-b + b*q + (2*b*q*(QPochhammer[-q, q]^2 + QPochhammer[q, q]^2))/(QPochhammer[-q, q]^2 - QPochhammer[q, q]^2) == Inactive[ContinuedFractionK][b^2*q^(1 + k) + 2*b^2*q^(1 + 2*k) + b^2*q^(1 + 3*k), b - b*q^(1 + 2*k), {k, 1, Infinity}], Element[b | q, Complexes] && 0 < Abs[q] < 1]

(* {"QHighOrder/QHighOrder", 1}*)
ConditionalExpression[(1 - q^2*z^2*\[Sigma]5)*(1 - q^3*z^2*\[Sigma]5)*(1 - q^4*z^2*\[Sigma]4 + q^6*z^3*\[Sigma]1*\[Sigma]5 - q^10*z^5*\[Sigma]5^2)*(((-1 + q^2*z^2*\[Sigma]4 - q^3*z^3*\[Sigma]1*\[Sigma]5 + q^5*z^5*\[Sigma]5^2)*(-1 + q^3*z^2*(-\[Sigma]3 + \[Sigma]4) + q^5*z^3*\[Sigma]1*(\[Sigma]4 - \[Sigma]5) - q^6*z^3*\[Sigma]1*\[Sigma]5 - q^8*z^5*\[Sigma]4*\[Sigma]5 + q^9*z^5*(-1 + \[Sigma]1)*\[Sigma]4*\[Sigma]5 + q^10*z^5*(1 + z*\[Sigma]1)*\[Sigma]5^2 - q^14*z^8*\[Sigma]5^3 + q^4*z^2*(\[Sigma]4 + z*\[Sigma]5) + q^11*z^6*\[Sigma]5*(-\[Sigma]2 + \[Sigma]1*\[Sigma]5) + q^7*z^4*(-\[Sigma]4^2 + (-\[Sigma]1^2 + \[Sigma]2 + \[Sigma]3)*\[Sigma]5)) + q*z*(-1 + q^3*z^2*\[Sigma]5)*(-1 + q^4*z^2*\[Sigma]4 - q^6*z^3*\[Sigma]1*\[Sigma]5 + q^10*z^5*\[Sigma]5^2)*(-\[Sigma]1 + q*z*(\[Sigma]3 + q^2*z^2*(-\[Sigma]2 + q*z*\[Sigma]4)*\[Sigma]5)))/((-1 + q^2*z^2*\[Sigma]5)*(-1 + q^3*z^2*\[Sigma]5)*(-1 + q^4*z^2*\[Sigma]4 - q^6*z^3*\[Sigma]1*\[Sigma]5 + q^10*z^5*\[Sigma]5^2)) + (QHypergeometricPFQ[{z, q*Sqrt[z], -(q*Sqrt[z]), a1, a2, a3, a4, a5}, {Sqrt[z], -Sqrt[z], (q*z)/a1, (q*z)/a2, (q*z)/a3, (q*z)/a4, (q*z)/a5}, q, q^2*z^2*\[Sigma]5]*QPochhammer[(q*z)/a1, q]*QPochhammer[(q*z)/a2, q]*QPochhammer[(q*z)/a3, q]*QPochhammer[(q*z)/a4, q]*QPochhammer[(q*z)/a5, q]*QPochhammer[q^2*z, q])/(QHypergeometricPFQ[{q*z, q*Sqrt[q*z], -(q*Sqrt[q*z]), a1, a2, a3, a4, a5}, {Sqrt[q*z], -Sqrt[q*z], (q^2*z)/a1, (q^2*z)/a2, (q^2*z)/a3, (q^2*z)/a4, (q^2*z)/a5}, q, q^4*z^2*\[Sigma]5]*QPochhammer[q*z, q]*QPochhammer[(q^2*z)/a1, q]*QPochhammer[(q^2*z)/a2, q]*QPochhammer[(q^2*z)/a3, q]*QPochhammer[(q^2*z)/a4, q]*QPochhammer[(q^2*z)/a5, q])) == Inactive[ContinuedFractionK][c1*q^k + c2*q^(2*k) + c3*q^(3*k) + c4*q^(4*k) + c5*q^(5*k) + c6*q^(6*k) + c7*q^(7*k) + c8*q^(8*k) + c9*q^(9*k) + c10*q^(10*k) + c11*q^(11*k) + c12*q^(12*k) + c13*q^(13*k) + c14*q^(14*k) + c15*q^(15*k) + c16*q^(16*k) + c17*q^(17*k) + c18*q^(18*k) + c19*q^(19*k) + c20*q^(20*k) + c21*q^(21*k) + c22*q^(22*k) + c23*q^(23*k) + c24*q^(24*k) + c25*q^(25*k), d0 + d1*q^k + d2*q^(2*k) + d3*q^(3*k) + d4*q^(4*k) + d5*q^(5*k) + d6*q^(6*k) + d7*q^(7*k) + d8*q^(8*k) + d9*q^(9*k) + d10*q^(10*k) + d11*q^(11*k) + d12*q^(12*k) + d13*q^(13*k), {k, 1, Infinity}], c1 == z && c2 == -(q*z^2*\[Sigma]2) && c3 == -(z^3*(\[Sigma]4 + q^4*\[Sigma]4 + q^3*\[Sigma]5 + q^2*(-(\[Sigma]1*\[Sigma]3) + \[Sigma]4 + \[Sigma]5))) && c4 == z^4*(q*\[Sigma]2*\[Sigma]4 + q^5*\[Sigma]2*\[Sigma]4 + \[Sigma]1*\[Sigma]5 + q^6*\[Sigma]1*\[Sigma]5 + q^4*\[Sigma]2*\[Sigma]5 + q^3*(-\[Sigma]3^2 - \[Sigma]1^2*\[Sigma]4 + 2*\[Sigma]2*\[Sigma]4 + \[Sigma]1*\[Sigma]5 + \[Sigma]2*\[Sigma]5)) && c5 == q*z^5*(-(\[Sigma]1*\[Sigma]2*\[Sigma]5) + q^2*\[Sigma]4*\[Sigma]5 + q^6*(-(\[Sigma]1*\[Sigma]2) + \[Sigma]4)*\[Sigma]5 + q*\[Sigma]4*(-(\[Sigma]1*\[Sigma]3) + \[Sigma]4 + \[Sigma]5) + q^5*\[Sigma]4*(-(\[Sigma]1*\[Sigma]3) + \[Sigma]4 + \[Sigma]5) + q^4*\[Sigma]5*(-(\[Sigma]1*\[Sigma]3) + \[Sigma]4 + \[Sigma]5) + q^3*(\[Sigma]1^3*\[Sigma]5 + (\[Sigma]3 + \[Sigma]4)*\[Sigma]5 + \[Sigma]1*(\[Sigma]3*\[Sigma]4 - 3*\[Sigma]2*\[Sigma]5 - \[Sigma]3*\[Sigma]5))) && c6 == z^6*(-(q^4*(\[Sigma]1 + \[Sigma]2)*\[Sigma]4*\[Sigma]5) + q^2*\[Sigma]1*(\[Sigma]1*\[Sigma]3 - \[Sigma]4 - \[Sigma]5)*\[Sigma]5 - \[Sigma]5^2 - q^10*\[Sigma]5^2 - q^9*\[Sigma]1*\[Sigma]5^2 - q^8*\[Sigma]5*(-(\[Sigma]1^2*\[Sigma]3) + \[Sigma]2*\[Sigma]4 + \[Sigma]1*(\[Sigma]4 + \[Sigma]5)) + q^7*\[Sigma]4*(\[Sigma]3^2 + \[Sigma]1^2*\[Sigma]4 - \[Sigma]1*\[Sigma]5 - \[Sigma]2*(2*\[Sigma]4 + \[Sigma]5)) - q^6*\[Sigma]5*(-\[Sigma]3^2 - \[Sigma]1^2*\[Sigma]4 + \[Sigma]1*(\[Sigma]4 + \[Sigma]5) + \[Sigma]2*(2*\[Sigma]4 + \[Sigma]5)) + q^3*(\[Sigma]3^2*\[Sigma]4 + \[Sigma]1^2*\[Sigma]4^2 - \[Sigma]1*\[Sigma]5*(\[Sigma]4 + \[Sigma]5) - \[Sigma]2*\[Sigma]4*(2*\[Sigma]4 + \[Sigma]5)) + q^5*((\[Sigma]3^2 + \[Sigma]1^2*(-\[Sigma]3 + \[Sigma]4) + \[Sigma]1*(2*\[Sigma]4 - \[Sigma]5) - 2*\[Sigma]5)*\[Sigma]5 - 2*\[Sigma]2*(\[Sigma]4^2 - \[Sigma]3*\[Sigma]5 + \[Sigma]4*\[Sigma]5))) && c7 == q*z^7*(\[Sigma]2*\[Sigma]5^2 + q^10*\[Sigma]2*\[Sigma]5^2 + q^9*\[Sigma]1*\[Sigma]2*\[Sigma]5^2 - q^4*\[Sigma]4*\[Sigma]5*(-(\[Sigma]1*(\[Sigma]2 + \[Sigma]3)) + \[Sigma]4 + \[Sigma]5) + q^2*\[Sigma]1*\[Sigma]5*(-\[Sigma]3^2 - \[Sigma]1^2*\[Sigma]4 + 2*\[Sigma]2*\[Sigma]4 + \[Sigma]1*\[Sigma]5 + \[Sigma]2*\[Sigma]5) + q^8*\[Sigma]5*(-(\[Sigma]1^3*\[Sigma]4) + \[Sigma]1^2*\[Sigma]5 - \[Sigma]4*(\[Sigma]4 + \[Sigma]5) + \[Sigma]1*(-\[Sigma]3^2 + 2*\[Sigma]2*\[Sigma]4 + \[Sigma]3*\[Sigma]4 + \[Sigma]2*\[Sigma]5)) + q^7*\[Sigma]4*(\[Sigma]4^2 - \[Sigma]1^3*\[Sigma]5 - \[Sigma]3*\[Sigma]5 - \[Sigma]4*\[Sigma]5 + \[Sigma]1*(-(\[Sigma]3*\[Sigma]4) + 3*\[Sigma]2*\[Sigma]5 + \[Sigma]3*\[Sigma]5)) - q^6*\[Sigma]5*(\[Sigma]1^3*\[Sigma]5 + (\[Sigma]3 + \[Sigma]4)*\[Sigma]5 - \[Sigma]1*(\[Sigma]2*\[Sigma]4 - \[Sigma]3*\[Sigma]4 + 3*\[Sigma]2*\[Sigma]5 + \[Sigma]3*\[Sigma]5)) + q^3*(-(\[Sigma]1^3*\[Sigma]4*\[Sigma]5) + \[Sigma]4*(\[Sigma]4^2 - \[Sigma]3*\[Sigma]5 - \[Sigma]4*\[Sigma]5) + \[Sigma]1*(\[Sigma]3*\[Sigma]4*(-\[Sigma]4 + \[Sigma]5) + \[Sigma]2*\[Sigma]5*(3*\[Sigma]4 + \[Sigma]5))) + q^5*(-(\[Sigma]1^3*\[Sigma]5^2) + \[Sigma]5*(\[Sigma]2*\[Sigma]5 - \[Sigma]3*(3*\[Sigma]4 + \[Sigma]5)) + \[Sigma]1*(\[Sigma]3*\[Sigma]4*(\[Sigma]4 - \[Sigma]5) + \[Sigma]2*\[Sigma]5*(\[Sigma]4 + 3*\[Sigma]5)))) && c8 == q^2*z^8*(q*\[Sigma]5^3 + q^11*\[Sigma]5^3 + \[Sigma]5^2*(-(\[Sigma]1*\[Sigma]3) + \[Sigma]4 + \[Sigma]5) + q^10*\[Sigma]5^2*(-(\[Sigma]1*\[Sigma]3) + \[Sigma]4 + \[Sigma]5) + q^9*\[Sigma]1*\[Sigma]5^2*(-(\[Sigma]1*\[Sigma]3) + \[Sigma]4 + \[Sigma]5) + q^4*\[Sigma]4*\[Sigma]5*(-\[Sigma]3^2 - \[Sigma]1^2*(\[Sigma]3 + \[Sigma]4) + \[Sigma]2*(2*\[Sigma]4 + \[Sigma]5) + \[Sigma]1*(\[Sigma]4 + 2*\[Sigma]5)) + q^2*\[Sigma]5*(\[Sigma]1^4*\[Sigma]5 + \[Sigma]4*\[Sigma]5 + \[Sigma]1^2*(\[Sigma]3*(\[Sigma]4 - \[Sigma]5) - 3*\[Sigma]2*\[Sigma]5) + \[Sigma]1*(-\[Sigma]4^2 + \[Sigma]3*\[Sigma]5 + \[Sigma]4*\[Sigma]5)) + q^7*\[Sigma]4*(\[Sigma]5*(-\[Sigma]3^2 + \[Sigma]1^2*(\[Sigma]3 - \[Sigma]4) - 2*\[Sigma]1*(\[Sigma]4 - \[Sigma]5) + 2*\[Sigma]5) + \[Sigma]2*(\[Sigma]4^2 - 2*\[Sigma]3*\[Sigma]5 + 2*\[Sigma]4*\[Sigma]5)) + q^6*\[Sigma]5*(\[Sigma]5*(-\[Sigma]3^2 + 2*\[Sigma]5) - \[Sigma]1^2*(\[Sigma]3*(\[Sigma]4 - \[Sigma]5) + \[Sigma]4*\[Sigma]5) + 2*\[Sigma]2*(\[Sigma]4^2 - \[Sigma]3*\[Sigma]5 + \[Sigma]4*\[Sigma]5) + \[Sigma]1*(\[Sigma]4^2 - \[Sigma]4*\[Sigma]5 + \[Sigma]5^2)) - q^5*(\[Sigma]3^2*\[Sigma]4^2 - 2*\[Sigma]2*\[Sigma]4^3 - 2*\[Sigma]2*\[Sigma]4^2*\[Sigma]5 + \[Sigma]2^2*\[Sigma]5^2 - (2*\[Sigma]1 + \[Sigma]1^2 - 2*\[Sigma]2)*\[Sigma]3*\[Sigma]5^2 - \[Sigma]4*\[Sigma]5^2 + \[Sigma]1*\[Sigma]4*\[Sigma]5^2 - 2*\[Sigma]5^3 + \[Sigma]1^2*(\[Sigma]4^3 + \[Sigma]2*\[Sigma]5^2)) + q^8*\[Sigma]5*(\[Sigma]1^4*\[Sigma]5 + \[Sigma]4*(-\[Sigma]3^2 + 2*\[Sigma]2*\[Sigma]4 + \[Sigma]5 + \[Sigma]2*\[Sigma]5) + \[Sigma]1*(-\[Sigma]4^2 + \[Sigma]3*\[Sigma]5 + 2*\[Sigma]4*\[Sigma]5) - \[Sigma]1^2*(\[Sigma]4^2 + 3*\[Sigma]2*\[Sigma]5 + \[Sigma]3*(-\[Sigma]4 + \[Sigma]5))) + q^3*(\[Sigma]2*\[Sigma]4*(\[Sigma]4^2 - 2*\[Sigma]3*\[Sigma]5 + 2*\[Sigma]4*\[Sigma]5) + \[Sigma]5*(-(\[Sigma]4*(\[Sigma]3^2 - 2*\[Sigma]5)) + \[Sigma]1*(-2*\[Sigma]4^2 + 2*\[Sigma]4*\[Sigma]5 + \[Sigma]5^2) - \[Sigma]1^2*(\[Sigma]4^2 + \[Sigma]3*(-\[Sigma]4 + \[Sigma]5))))) && c9 == q^3*z^9*(-(q*\[Sigma]2*\[Sigma]5^3) - q^11*\[Sigma]2*\[Sigma]5^3 - q^7*(\[Sigma]4^4 + (\[Sigma]1*(\[Sigma]2 - \[Sigma]3) - 3*\[Sigma]3)*\[Sigma]4^2*\[Sigma]5 + \[Sigma]4^3*\[Sigma]5 - (\[Sigma]1^2 + \[Sigma]1^3 - \[Sigma]2 - 4*\[Sigma]1*\[Sigma]2 + \[Sigma]3)*\[Sigma]4*\[Sigma]5^2 + \[Sigma]1*\[Sigma]5^3) + \[Sigma]5^2*(\[Sigma]3^2 + \[Sigma]1^2*\[Sigma]4 - \[Sigma]1*\[Sigma]5 - \[Sigma]2*(2*\[Sigma]4 + \[Sigma]5)) + q^10*\[Sigma]5^2*(\[Sigma]3^2 + \[Sigma]1^2*\[Sigma]4 - \[Sigma]1*\[Sigma]5 - \[Sigma]2*(2*\[Sigma]4 + \[Sigma]5)) + q^9*\[Sigma]1*\[Sigma]5^2*(\[Sigma]3^2 + \[Sigma]1^2*\[Sigma]4 - \[Sigma]1*\[Sigma]5 - \[Sigma]2*(2*\[Sigma]4 + \[Sigma]5)) - q^3*(\[Sigma]4^4 + (\[Sigma]1*(\[Sigma]2 - \[Sigma]3) - 3*\[Sigma]3)*\[Sigma]4^2*\[Sigma]5 + \[Sigma]4^3*\[Sigma]5 - (\[Sigma]1^2 + 2*\[Sigma]1^3 - \[Sigma]2 - 5*\[Sigma]1*\[Sigma]2 + \[Sigma]3)*\[Sigma]4*\[Sigma]5^2 + \[Sigma]1*\[Sigma]5^2*(-\[Sigma]3^2 + (1 + \[Sigma]1 + \[Sigma]2)*\[Sigma]5)) + q^4*\[Sigma]4*\[Sigma]5*(-\[Sigma]4^2 - \[Sigma]1^2*\[Sigma]5 + \[Sigma]3*\[Sigma]5 + \[Sigma]4*\[Sigma]5 + \[Sigma]1^3*(\[Sigma]4 + \[Sigma]5) + \[Sigma]1*(\[Sigma]3^2 + \[Sigma]3*(\[Sigma]4 - \[Sigma]5) - 2*\[Sigma]2*(\[Sigma]4 + 2*\[Sigma]5))) - q^2*\[Sigma]5*(\[Sigma]1^3*(\[Sigma]3 - \[Sigma]4)*\[Sigma]5 + \[Sigma]2*\[Sigma]4*\[Sigma]5 + \[Sigma]1^2*\[Sigma]5*(-2*\[Sigma]4 + \[Sigma]5) + \[Sigma]1*(\[Sigma]5*(-\[Sigma]3^2 + 2*\[Sigma]5) + \[Sigma]2*(\[Sigma]4^2 - 2*\[Sigma]3*\[Sigma]5 + 2*\[Sigma]4*\[Sigma]5))) - q^8*\[Sigma]5*(\[Sigma]1^3*(\[Sigma]3 - 2*\[Sigma]4)*\[Sigma]5 + \[Sigma]1^2*\[Sigma]5*(-2*\[Sigma]4 + \[Sigma]5) + \[Sigma]4*(\[Sigma]4^2 + (\[Sigma]2 - \[Sigma]3)*\[Sigma]5 - \[Sigma]4*\[Sigma]5) + \[Sigma]1*(-(\[Sigma]3^2*\[Sigma]5) + 2*\[Sigma]5^2 + \[Sigma]3*\[Sigma]4*(-\[Sigma]4 + \[Sigma]5) + \[Sigma]2*(\[Sigma]4^2 - 2*\[Sigma]3*\[Sigma]5 + 5*\[Sigma]4*\[Sigma]5))) + q^6*\[Sigma]5*(-(\[Sigma]1^2*\[Sigma]4*\[Sigma]5) + \[Sigma]1^3*(\[Sigma]4^2 + \[Sigma]5^2) + \[Sigma]5*(-(\[Sigma]2*\[Sigma]5) + \[Sigma]3*(3*\[Sigma]4 + \[Sigma]5)) + \[Sigma]1*(\[Sigma]3^2*\[Sigma]4 + \[Sigma]3*\[Sigma]4*(-\[Sigma]4 + \[Sigma]5) - \[Sigma]2*(2*\[Sigma]4^2 + 2*\[Sigma]4*\[Sigma]5 + 3*\[Sigma]5^2))) + q^5*(-\[Sigma]4^4 + \[Sigma]3*\[Sigma]4^2*\[Sigma]5 - \[Sigma]1^2*\[Sigma]4*\[Sigma]5^2 + (\[Sigma]2 + 3*\[Sigma]3)*\[Sigma]4*\[Sigma]5^2 - \[Sigma]2*\[Sigma]5^3 + \[Sigma]1^3*\[Sigma]5*(\[Sigma]4^2 + \[Sigma]3*\[Sigma]5) + \[Sigma]1*(\[Sigma]3*\[Sigma]4^2*(\[Sigma]4 - \[Sigma]5) - \[Sigma]5*(\[Sigma]5^2 + \[Sigma]2*\[Sigma]4*(3*\[Sigma]4 + 2*\[Sigma]5))))) && c10 == q^4*z^10*(q*(\[Sigma]1*\[Sigma]3 - \[Sigma]4 - \[Sigma]5)*\[Sigma]5^3 + q^11*(\[Sigma]1*\[Sigma]3 - \[Sigma]4 - \[Sigma]5)*\[Sigma]5^3 - \[Sigma]5^2*(-\[Sigma]4^2 + \[Sigma]1^3*\[Sigma]5 + \[Sigma]3*\[Sigma]5 + \[Sigma]4*\[Sigma]5 + \[Sigma]1*(\[Sigma]3*(\[Sigma]4 - \[Sigma]5) - 3*\[Sigma]2*\[Sigma]5)) - q^10*\[Sigma]5^2*(-\[Sigma]4^2 + \[Sigma]1^3*\[Sigma]5 + \[Sigma]3*\[Sigma]5 + \[Sigma]4*\[Sigma]5 + \[Sigma]1*(\[Sigma]3*(\[Sigma]4 - \[Sigma]5) - 3*\[Sigma]2*\[Sigma]5)) - q^9*\[Sigma]5^2*(\[Sigma]1^4*\[Sigma]5 + \[Sigma]4*\[Sigma]5 + \[Sigma]1^2*(\[Sigma]3*(\[Sigma]4 - \[Sigma]5) - 3*\[Sigma]2*\[Sigma]5) + \[Sigma]1*(-\[Sigma]4^2 + \[Sigma]3*\[Sigma]5 + \[Sigma]4*\[Sigma]5)) - q^4*\[Sigma]4*\[Sigma]5*(\[Sigma]1^4*\[Sigma]5 + \[Sigma]5*(-\[Sigma]3^2 + 2*\[Sigma]5) + \[Sigma]2*(\[Sigma]4^2 - 2*\[Sigma]3*\[Sigma]5 + 2*\[Sigma]4*\[Sigma]5) + \[Sigma]1^2*(\[Sigma]3*\[Sigma]4 - (3*\[Sigma]2 + \[Sigma]4)*\[Sigma]5) + \[Sigma]1*(-\[Sigma]4^2 - \[Sigma]4*\[Sigma]5 + \[Sigma]5*(\[Sigma]3 + \[Sigma]5))) - q^2*\[Sigma]5*(\[Sigma]1^3*\[Sigma]5^2 + \[Sigma]1^4*\[Sigma]5^2 + \[Sigma]4*\[Sigma]5*(\[Sigma]4 + \[Sigma]5) - \[Sigma]1*(\[Sigma]4^3 - 2*\[Sigma]3*\[Sigma]4*\[Sigma]5 + \[Sigma]4^2*\[Sigma]5 + (\[Sigma]2 - \[Sigma]3)*\[Sigma]5^2) + \[Sigma]1^2*\[Sigma]5*(\[Sigma]3*\[Sigma]4 - \[Sigma]2*(\[Sigma]4 + 3*\[Sigma]5))) + q^7*\[Sigma]5*(\[Sigma]1*(\[Sigma]4^3 + \[Sigma]4^2*\[Sigma]5 + \[Sigma]2*\[Sigma]5^2 - \[Sigma]4*\[Sigma]5*(2*\[Sigma]3 + \[Sigma]5)) - \[Sigma]4*(-(\[Sigma]2^2*\[Sigma]5) + \[Sigma]5*(\[Sigma]4 + 2*\[Sigma]5) + \[Sigma]2*(\[Sigma]4^2 - 2*\[Sigma]3*\[Sigma]5))) - q^3*\[Sigma]5*(\[Sigma]1^4*\[Sigma]5^2 + \[Sigma]1*(-\[Sigma]4^3 - 3*\[Sigma]4^2*\[Sigma]5 + (-\[Sigma]2 + \[Sigma]3)*\[Sigma]5^2 + \[Sigma]4*\[Sigma]5*(2*\[Sigma]3 + \[Sigma]5)) - \[Sigma]1^2*\[Sigma]5*(3*\[Sigma]2*\[Sigma]5 + \[Sigma]3*(-2*\[Sigma]4 + \[Sigma]5)) + \[Sigma]4*(-(\[Sigma]2^2*\[Sigma]5) + \[Sigma]5*(\[Sigma]4 + 3*\[Sigma]5) + \[Sigma]2*(\[Sigma]4^2 - 2*\[Sigma]3*\[Sigma]5))) - q^8*\[Sigma]5*(\[Sigma]1^3*\[Sigma]5^2 + \[Sigma]1^4*\[Sigma]5^2 + \[Sigma]1*(-\[Sigma]4^3 - 3*\[Sigma]4^2*\[Sigma]5 + (-\[Sigma]2 + \[Sigma]3)*\[Sigma]5^2 + \[Sigma]4*\[Sigma]5*(2*\[Sigma]3 + \[Sigma]5)) - \[Sigma]1^2*\[Sigma]5*(\[Sigma]4*(-2*\[Sigma]3 + \[Sigma]4) + \[Sigma]2*(\[Sigma]4 + 3*\[Sigma]5)) + \[Sigma]4*(\[Sigma]5*(-\[Sigma]3^2 + \[Sigma]4 + 3*\[Sigma]5) + \[Sigma]2*(\[Sigma]4^2 - 2*\[Sigma]3*\[Sigma]5 + 2*\[Sigma]4*\[Sigma]5))) + q^6*\[Sigma]5*(\[Sigma]3^2*\[Sigma]4^2 - 2*\[Sigma]2*\[Sigma]4^3 - \[Sigma]1^4*\[Sigma]4*\[Sigma]5 - 2*\[Sigma]2*\[Sigma]4^2*\[Sigma]5 + \[Sigma]2^2*\[Sigma]5^2 + 2*\[Sigma]2*\[Sigma]3*\[Sigma]5^2 - \[Sigma]4*\[Sigma]5^2 - 2*\[Sigma]5^3 + \[Sigma]1*(\[Sigma]4^3 - \[Sigma]4^2*\[Sigma]5 - 2*\[Sigma]3*\[Sigma]5^2 + \[Sigma]4*\[Sigma]5*(-\[Sigma]3 + 2*\[Sigma]5)) + \[Sigma]1^2*(\[Sigma]4^3 + 3*\[Sigma]2*\[Sigma]4*\[Sigma]5 + \[Sigma]2*\[Sigma]5^2 - \[Sigma]3*(\[Sigma]4^2 - \[Sigma]4*\[Sigma]5 + \[Sigma]5^2))) + q^5*(\[Sigma]2^2*\[Sigma]5^3 + \[Sigma]2*(-\[Sigma]4^4 + 2*\[Sigma]3*\[Sigma]4^2*\[Sigma]5 - 2*\[Sigma]4^3*\[Sigma]5 + 2*\[Sigma]1^2*\[Sigma]4*\[Sigma]5^2 + \[Sigma]1^2*\[Sigma]5^3) + \[Sigma]5*(\[Sigma]3^2*\[Sigma]4^2 - \[Sigma]1^4*\[Sigma]4*\[Sigma]5 + \[Sigma]1^3*\[Sigma]5^2 - \[Sigma]3*\[Sigma]5^2 - \[Sigma]4*\[Sigma]5*(2*\[Sigma]4 + \[Sigma]5) - \[Sigma]1^2*(\[Sigma]3 - \[Sigma]4)*(\[Sigma]4^2 + \[Sigma]3*\[Sigma]5) + \[Sigma]1*(2*\[Sigma]4^3 - \[Sigma]4^2*\[Sigma]5 - 2*\[Sigma]3*\[Sigma]5^2 - \[Sigma]4*\[Sigma]5^2)))) && c11 == q^5*z^11*(q*\[Sigma]5^3*(-\[Sigma]3^2 - \[Sigma]1^2*\[Sigma]4 + \[Sigma]1*\[Sigma]5 + \[Sigma]2*(2*\[Sigma]4 + \[Sigma]5)) + q^11*\[Sigma]5^3*(-\[Sigma]3^2 - \[Sigma]1^2*\[Sigma]4 + \[Sigma]1*\[Sigma]5 + \[Sigma]2*(2*\[Sigma]4 + \[Sigma]5)) + q^5*(\[Sigma]4^5 + (\[Sigma]1*(\[Sigma]2 - \[Sigma]3) - 3*\[Sigma]3)*\[Sigma]4^3*\[Sigma]5 + \[Sigma]4^4*\[Sigma]5 + (-2*\[Sigma]1^2 - 2*\[Sigma]1^3 + \[Sigma]2 + 5*\[Sigma]1*\[Sigma]2 - \[Sigma]3)*\[Sigma]4^2*\[Sigma]5^2 + \[Sigma]5^3*(\[Sigma]1^5 + \[Sigma]1^2*\[Sigma]3 - \[Sigma]1^3*(3*\[Sigma]2 + \[Sigma]3) + 2*\[Sigma]5 + \[Sigma]1*\[Sigma]5) + \[Sigma]4*\[Sigma]5^2*(\[Sigma]1^3*\[Sigma]3 - \[Sigma]1*\[Sigma]3^2 + 2*\[Sigma]1^2*\[Sigma]5 - \[Sigma]2*\[Sigma]5 + \[Sigma]1*\[Sigma]2*\[Sigma]5)) + q^8*\[Sigma]5*(\[Sigma]4^4 - (2*\[Sigma]1^2 - 2*\[Sigma]2 + 3*\[Sigma]3 + \[Sigma]1*(-2*\[Sigma]2 + \[Sigma]3))*\[Sigma]4^2*\[Sigma]5 + \[Sigma]4^3*\[Sigma]5 + \[Sigma]1*\[Sigma]5^2*(-\[Sigma]2^2 + 2*\[Sigma]1*\[Sigma]3 + \[Sigma]1^2*\[Sigma]3 - 2*\[Sigma]2*\[Sigma]3 + 3*\[Sigma]5) - \[Sigma]4*\[Sigma]5*(\[Sigma]3^2 + (-2*\[Sigma]1 + 3*\[Sigma]1^2 + \[Sigma]1^3 - 2*\[Sigma]2 - 3*\[Sigma]1*\[Sigma]2)*\[Sigma]5 + \[Sigma]3*\[Sigma]5)) + q^3*\[Sigma]5*(\[Sigma]4^4 + ((-1 + 2*\[Sigma]1)*\[Sigma]2 - 3*\[Sigma]3)*\[Sigma]4^2*\[Sigma]5 + (-3*\[Sigma]1^2 - \[Sigma]1^3 + 2*\[Sigma]2 + 2*\[Sigma]1*(1 + \[Sigma]2))*\[Sigma]4*\[Sigma]5^2 + \[Sigma]1*\[Sigma]5^2*(\[Sigma]1^2*\[Sigma]3 - 2*\[Sigma]2*\[Sigma]3 - \[Sigma]3^2 + 3*\[Sigma]5 + \[Sigma]1*(-\[Sigma]3 + \[Sigma]5))) + \[Sigma]5^2*(\[Sigma]2*(\[Sigma]4^2 - 2*\[Sigma]3*\[Sigma]5 + 2*\[Sigma]4*\[Sigma]5) + \[Sigma]5*(-\[Sigma]3^2 + \[Sigma]1^2*(\[Sigma]3 - \[Sigma]4) + 2*\[Sigma]5 + \[Sigma]1*(-2*\[Sigma]4 + \[Sigma]5))) + q^10*\[Sigma]5^2*(\[Sigma]2*(\[Sigma]4^2 - 2*\[Sigma]3*\[Sigma]5 + 2*\[Sigma]4*\[Sigma]5) + \[Sigma]5*(-\[Sigma]3^2 + \[Sigma]1^2*(\[Sigma]3 - \[Sigma]4) + 2*\[Sigma]5 + \[Sigma]1*(-2*\[Sigma]4 + \[Sigma]5))) + q^2*\[Sigma]5^2*(-(\[Sigma]3^2*\[Sigma]4) + \[Sigma]1*(2*\[Sigma]1 + \[Sigma]1^2 - 2*\[Sigma]2)*\[Sigma]3*\[Sigma]5 - 2*\[Sigma]1^2*\[Sigma]4*(\[Sigma]4 + \[Sigma]5) + \[Sigma]2*\[Sigma]4*(2*\[Sigma]4 + \[Sigma]5) + \[Sigma]1*(\[Sigma]2*\[Sigma]4^2 - \[Sigma]2^2*\[Sigma]5 + 2*\[Sigma]5*(\[Sigma]4 + \[Sigma]5))) + q^7*\[Sigma]5*(\[Sigma]4^4 - (\[Sigma]1^3 + \[Sigma]2 - 3*\[Sigma]1*\[Sigma]2 + 3*\[Sigma]3)*\[Sigma]4^2*\[Sigma]5 + \[Sigma]1*\[Sigma]5^2*(-(\[Sigma]1*\[Sigma]3) + \[Sigma]5) + \[Sigma]4*\[Sigma]5*(\[Sigma]2*\[Sigma]5 + \[Sigma]1*(-\[Sigma]3^2 + (2 + \[Sigma]2)*\[Sigma]5))) + q^9*\[Sigma]5^2*(\[Sigma]1^3*(\[Sigma]3 - \[Sigma]4)*\[Sigma]5 + \[Sigma]2*\[Sigma]4*\[Sigma]5 + \[Sigma]1^2*\[Sigma]5*(-2*\[Sigma]4 + \[Sigma]5) + \[Sigma]1*(\[Sigma]5*(-\[Sigma]3^2 + 2*\[Sigma]5) + \[Sigma]2*(\[Sigma]4^2 - 2*\[Sigma]3*\[Sigma]5 + 2*\[Sigma]4*\[Sigma]5))) + q^4*\[Sigma]5*(-2*\[Sigma]1^2*\[Sigma]4^2*\[Sigma]5 - \[Sigma]1^3*\[Sigma]4*\[Sigma]5*(-\[Sigma]3 + \[Sigma]4 + \[Sigma]5) + \[Sigma]4*(\[Sigma]4^3 - 3*\[Sigma]3*\[Sigma]4*\[Sigma]5 + \[Sigma]4^2*\[Sigma]5 + (\[Sigma]2 - \[Sigma]3)*\[Sigma]5^2) + \[Sigma]1*(\[Sigma]5*(-(\[Sigma]3^2*\[Sigma]4) - \[Sigma]3*\[Sigma]4^2 + 2*\[Sigma]4*\[Sigma]5 + \[Sigma]5^2) + \[Sigma]2*\[Sigma]4*(\[Sigma]4^2 - 2*\[Sigma]3*\[Sigma]5 + 3*\[Sigma]4*\[Sigma]5 + 3*\[Sigma]5^2))) + q^6*\[Sigma]5*(\[Sigma]4^4 - \[Sigma]3*\[Sigma]4^2*\[Sigma]5 + \[Sigma]1^3*(-2*\[Sigma]4^2 + \[Sigma]3*(\[Sigma]4 - \[Sigma]5))*\[Sigma]5 - (\[Sigma]2 + 3*\[Sigma]3)*\[Sigma]4*\[Sigma]5^2 + \[Sigma]2*\[Sigma]5^3 + 2*\[Sigma]1^2*\[Sigma]4*\[Sigma]5*(-\[Sigma]4 + \[Sigma]5) + \[Sigma]1*(-(\[Sigma]3^2*\[Sigma]4*\[Sigma]5) + \[Sigma]3*\[Sigma]4^2*(-\[Sigma]4 + \[Sigma]5) + \[Sigma]5^2*(2*\[Sigma]4 + \[Sigma]5) + \[Sigma]2*\[Sigma]4*(\[Sigma]4^2 + 5*\[Sigma]4*\[Sigma]5 + \[Sigma]5*(-2*\[Sigma]3 + \[Sigma]5))))) && c12 == q^6*z^12*\[Sigma]5*(\[Sigma]5*(-\[Sigma]4^3 + (3*\[Sigma]3 + \[Sigma]1*(-\[Sigma]2 + \[Sigma]3))*\[Sigma]4*\[Sigma]5 - \[Sigma]4^2*\[Sigma]5 + (\[Sigma]1^2 + \[Sigma]1^3 - \[Sigma]2 - 3*\[Sigma]1*\[Sigma]2 + \[Sigma]3)*\[Sigma]5^2) + q^10*\[Sigma]5*(-\[Sigma]4^3 + (3*\[Sigma]3 + \[Sigma]1*(-\[Sigma]2 + \[Sigma]3))*\[Sigma]4*\[Sigma]5 - \[Sigma]4^2*\[Sigma]5 + (\[Sigma]1^2 + \[Sigma]1^3 - \[Sigma]2 - 3*\[Sigma]1*\[Sigma]2 + \[Sigma]3)*\[Sigma]5^2) + q*\[Sigma]5^2*(-\[Sigma]4^2 + \[Sigma]1^3*\[Sigma]5 + \[Sigma]3*\[Sigma]5 + \[Sigma]4*\[Sigma]5 + \[Sigma]1*(\[Sigma]3*(\[Sigma]4 - \[Sigma]5) - 3*\[Sigma]2*\[Sigma]5)) + q^11*\[Sigma]5^2*(-\[Sigma]4^2 + \[Sigma]1^3*\[Sigma]5 + \[Sigma]3*\[Sigma]5 + \[Sigma]4*\[Sigma]5 + \[Sigma]1*(\[Sigma]3*(\[Sigma]4 - \[Sigma]5) - 3*\[Sigma]2*\[Sigma]5)) + q^2*\[Sigma]5*(\[Sigma]1^3*\[Sigma]5*(\[Sigma]4 + \[Sigma]5) - \[Sigma]1^2*\[Sigma]5*(\[Sigma]2*\[Sigma]4 + \[Sigma]5) + \[Sigma]4*(-\[Sigma]4^2 + \[Sigma]3*\[Sigma]5 + \[Sigma]4*\[Sigma]5) + \[Sigma]1*(-\[Sigma]4^3 - 2*\[Sigma]2*\[Sigma]4*\[Sigma]5 - \[Sigma]2*\[Sigma]5^2 + \[Sigma]3*\[Sigma]4*(\[Sigma]4 + 2*\[Sigma]5))) + q^9*\[Sigma]5*(\[Sigma]1^3*\[Sigma]5^2 + \[Sigma]1^4*\[Sigma]5^2 + \[Sigma]4*\[Sigma]5*(\[Sigma]4 + \[Sigma]5) - \[Sigma]1*(\[Sigma]4^3 - 2*\[Sigma]3*\[Sigma]4*\[Sigma]5 + \[Sigma]4^2*\[Sigma]5 + (\[Sigma]2 - \[Sigma]3)*\[Sigma]5^2) + \[Sigma]1^2*\[Sigma]5*(\[Sigma]3*\[Sigma]4 - \[Sigma]2*(\[Sigma]4 + 3*\[Sigma]5))) + q^8*\[Sigma]5*(\[Sigma]1^3*\[Sigma]5*(\[Sigma]4 + \[Sigma]5) - \[Sigma]1^2*\[Sigma]5*(\[Sigma]2*\[Sigma]4 - \[Sigma]3*\[Sigma]4 + \[Sigma]5) + \[Sigma]4*((-1 + \[Sigma]2)*\[Sigma]4^2 + 2*\[Sigma]4*\[Sigma]5 + \[Sigma]5*(-\[Sigma]2^2 + \[Sigma]3 - 2*\[Sigma]2*\[Sigma]3 + 2*\[Sigma]5)) + \[Sigma]1*(\[Sigma]3*\[Sigma]4*(\[Sigma]4 + 4*\[Sigma]5) - 2*(\[Sigma]4 + \[Sigma]5)*(\[Sigma]4^2 + \[Sigma]2*\[Sigma]5))) + q^4*(\[Sigma]1^3*\[Sigma]4*\[Sigma]5^2 + \[Sigma]1^4*\[Sigma]4*\[Sigma]5^2 - \[Sigma]1*(\[Sigma]4^4 + 2*\[Sigma]4^3*\[Sigma]5 + (\[Sigma]2 - 3*\[Sigma]3)*\[Sigma]4*\[Sigma]5^2 + \[Sigma]2*\[Sigma]5^3 + \[Sigma]4^2*\[Sigma]5*(-3*\[Sigma]3 + 2*\[Sigma]5)) + \[Sigma]1^2*\[Sigma]4*\[Sigma]5*(\[Sigma]3*(\[Sigma]4 + \[Sigma]5) - \[Sigma]2*(\[Sigma]4 + 3*\[Sigma]5)) + \[Sigma]4*\[Sigma]5*(-(\[Sigma]2^2*\[Sigma]5) + \[Sigma]5*(\[Sigma]4 + 2*\[Sigma]5) + \[Sigma]2*(\[Sigma]4^2 - 2*\[Sigma]3*\[Sigma]5))) + q^3*\[Sigma]5*(\[Sigma]1^4*\[Sigma]5^2 + \[Sigma]1^3*\[Sigma]5*(\[Sigma]4 + \[Sigma]5) + \[Sigma]4*\[Sigma]5*(-\[Sigma]2^2 + \[Sigma]3 + 2*\[Sigma]4 + \[Sigma]5) - \[Sigma]1^2*\[Sigma]5*(-(\[Sigma]3*\[Sigma]4) + \[Sigma]5 + \[Sigma]2*(\[Sigma]4 + 3*\[Sigma]5)) + \[Sigma]1*(-2*\[Sigma]4^3 - 2*(\[Sigma]2 - 2*\[Sigma]3)*\[Sigma]4*\[Sigma]5 - \[Sigma]4^2*\[Sigma]5 + \[Sigma]5*(\[Sigma]3^2 - 2*\[Sigma]2*\[Sigma]5 + \[Sigma]3*\[Sigma]5))) + q^7*\[Sigma]5*(\[Sigma]1^3*\[Sigma]4*\[Sigma]5 + \[Sigma]1^4*\[Sigma]4*\[Sigma]5 + \[Sigma]4*(-\[Sigma]2^2 + \[Sigma]3 + \[Sigma]4)*\[Sigma]5 + \[Sigma]1^2*(\[Sigma]3*\[Sigma]4*(\[Sigma]4 - \[Sigma]5) - \[Sigma]5*(3*\[Sigma]2*\[Sigma]4 + \[Sigma]5)) + \[Sigma]1*(-2*\[Sigma]4^3 + \[Sigma]4^2*\[Sigma]5 + \[Sigma]5*(\[Sigma]3^2 - \[Sigma]2*\[Sigma]5) + \[Sigma]4*(-2*\[Sigma]2*\[Sigma]5 + 3*\[Sigma]3*\[Sigma]5))) + q^5*(-(\[Sigma]2^2*\[Sigma]4^2*\[Sigma]5) - \[Sigma]1^4*(\[Sigma]3 - 2*\[Sigma]4)*\[Sigma]5^2 + \[Sigma]1^3*(2*\[Sigma]4 - \[Sigma]5)*\[Sigma]5^2 + \[Sigma]5*(\[Sigma]4^3 + 2*\[Sigma]4^2*\[Sigma]5 + \[Sigma]3*\[Sigma]5^2) + \[Sigma]2*(\[Sigma]4^4 - 2*\[Sigma]3*\[Sigma]4^2*\[Sigma]5 - \[Sigma]5^3) + \[Sigma]1*\[Sigma]4*(-\[Sigma]4^3 - 3*\[Sigma]4^2*\[Sigma]5 + \[Sigma]3*\[Sigma]5^2 + \[Sigma]4*\[Sigma]5*(2*\[Sigma]3 + \[Sigma]5)) - \[Sigma]1^2*\[Sigma]5*(-(\[Sigma]3^2*\[Sigma]5) + 2*\[Sigma]5^2 + \[Sigma]3*\[Sigma]4*(-2*\[Sigma]4 + \[Sigma]5) + \[Sigma]2*(\[Sigma]4^2 - 2*\[Sigma]3*\[Sigma]5 + 5*\[Sigma]4*\[Sigma]5))) + q^6*(2*\[Sigma]1^4*\[Sigma]4*\[Sigma]5^2 + \[Sigma]1^3*(\[Sigma]4 - \[Sigma]5)*\[Sigma]5^2 - \[Sigma]2^2*\[Sigma]5^3 + \[Sigma]2*\[Sigma]4^2*(\[Sigma]4^2 - 2*\[Sigma]3*\[Sigma]5 + 2*\[Sigma]4*\[Sigma]5) - \[Sigma]1*(\[Sigma]4^4 - 3*\[Sigma]3*\[Sigma]4^2*\[Sigma]5 + 3*\[Sigma]4^3*\[Sigma]5 + (\[Sigma]2 - \[Sigma]3)*\[Sigma]4*\[Sigma]5^2 - 2*\[Sigma]3*\[Sigma]5^3) + \[Sigma]5*(-(\[Sigma]3^2*\[Sigma]4^2) + \[Sigma]3*\[Sigma]5^2 + \[Sigma]4*\[Sigma]5*(2*\[Sigma]4 + \[Sigma]5)) - \[Sigma]1^2*\[Sigma]5*(-2*\[Sigma]3*\[Sigma]4^2 + \[Sigma]4^3 - \[Sigma]3^2*\[Sigma]5 + \[Sigma]2*(\[Sigma]4^2 + 5*\[Sigma]4*\[Sigma]5 + \[Sigma]5^2)))) && c13 == q^7*z^13*\[Sigma]5*(-(\[Sigma]5^2*(-(\[Sigma]2^2*\[Sigma]5) + \[Sigma]1^2*\[Sigma]3*\[Sigma]5 + \[Sigma]5*(\[Sigma]4 + 2*\[Sigma]5) + \[Sigma]2*(\[Sigma]4^2 - 2*\[Sigma]3*\[Sigma]5) - \[Sigma]1*(\[Sigma]4^2 - 2*\[Sigma]3*\[Sigma]5 + 2*\[Sigma]4*\[Sigma]5))) - q^10*\[Sigma]5^2*(-(\[Sigma]2^2*\[Sigma]5) + \[Sigma]1^2*\[Sigma]3*\[Sigma]5 + \[Sigma]5*(\[Sigma]4 + 2*\[Sigma]5) + \[Sigma]2*(\[Sigma]4^2 - 2*\[Sigma]3*\[Sigma]5) - \[Sigma]1*(\[Sigma]4^2 - 2*\[Sigma]3*\[Sigma]5 + 2*\[Sigma]4*\[Sigma]5)) - q^8*\[Sigma]5*(\[Sigma]4^4 - (2*\[Sigma]1 + 2*\[Sigma]1^2 + 3*\[Sigma]3)*\[Sigma]4^2*\[Sigma]5 - \[Sigma]1*\[Sigma]2^2*\[Sigma]5^2 + \[Sigma]1*\[Sigma]5^2*(\[Sigma]3 + \[Sigma]1*\[Sigma]3 + \[Sigma]5) + \[Sigma]4*\[Sigma]5*(-\[Sigma]3^2 + \[Sigma]1^2*(\[Sigma]3 - \[Sigma]5) + 2*\[Sigma]5 + 4*\[Sigma]1*\[Sigma]5) + \[Sigma]2*\[Sigma]4*(\[Sigma]4^2 + (1 + \[Sigma]1)*\[Sigma]4*\[Sigma]5 + \[Sigma]5*(-2*\[Sigma]3 + \[Sigma]5))) - q^6*(\[Sigma]4^5 - (\[Sigma]1^2 + 3*\[Sigma]3 + \[Sigma]1*(-2*\[Sigma]2 + \[Sigma]3))*\[Sigma]4^3*\[Sigma]5 + \[Sigma]4^4*\[Sigma]5 + (\[Sigma]1 - 4*\[Sigma]1^2 - \[Sigma]1^3 + \[Sigma]2 + 3*\[Sigma]1*\[Sigma]2 - \[Sigma]3)*\[Sigma]4^2*\[Sigma]5^2 + \[Sigma]5^3*(\[Sigma]1^5 + \[Sigma]1^2*\[Sigma]3 - \[Sigma]1^3*(3*\[Sigma]2 + \[Sigma]3) + 2*\[Sigma]5 + \[Sigma]1*\[Sigma]5) + \[Sigma]4*\[Sigma]5^2*(2*\[Sigma]1^3*\[Sigma]3 - \[Sigma]1*(\[Sigma]2^2 + 2*\[Sigma]2*\[Sigma]3 - 2*\[Sigma]5) - \[Sigma]2*\[Sigma]5 + \[Sigma]1^2*(2*\[Sigma]3 + \[Sigma]5))) - q^5*(\[Sigma]4^5 - (\[Sigma]1^2 + \[Sigma]2 - 2*\[Sigma]1*\[Sigma]2 + 3*\[Sigma]3)*\[Sigma]4^3*\[Sigma]5 + (\[Sigma]1 - 4*\[Sigma]1^2 - \[Sigma]1^3 + \[Sigma]2 + 2*\[Sigma]1*\[Sigma]2)*\[Sigma]4^2*\[Sigma]5^2 + \[Sigma]5^3*(\[Sigma]1^4 + \[Sigma]1^5 - 3*\[Sigma]1^3*\[Sigma]2 - \[Sigma]1*\[Sigma]3 + \[Sigma]1^2*(-\[Sigma]2 + \[Sigma]3) + 2*\[Sigma]5) + \[Sigma]4*\[Sigma]5^2*(-(\[Sigma]1^3*(\[Sigma]2 - 2*\[Sigma]3)) - \[Sigma]1*(2*\[Sigma]2*\[Sigma]3 + \[Sigma]3^2 - 2*\[Sigma]5) + \[Sigma]5 + \[Sigma]1^2*(3*\[Sigma]3 + \[Sigma]5))) - q*\[Sigma]5^2*(\[Sigma]2*(\[Sigma]4^2 - 2*\[Sigma]3*\[Sigma]5 + 2*\[Sigma]4*\[Sigma]5) + \[Sigma]5*(-\[Sigma]3^2 + \[Sigma]1^2*(\[Sigma]3 - \[Sigma]4) + 2*\[Sigma]5 + \[Sigma]1*(-2*\[Sigma]4 + \[Sigma]5))) - q^11*\[Sigma]5^2*(\[Sigma]2*(\[Sigma]4^2 - 2*\[Sigma]3*\[Sigma]5 + 2*\[Sigma]4*\[Sigma]5) + \[Sigma]5*(-\[Sigma]3^2 + \[Sigma]1^2*(\[Sigma]3 - \[Sigma]4) + 2*\[Sigma]5 + \[Sigma]1*(-2*\[Sigma]4 + \[Sigma]5))) - q^9*\[Sigma]5^2*(-(\[Sigma]3^2*\[Sigma]4) + \[Sigma]1*(2*\[Sigma]1 + \[Sigma]1^2 - 2*\[Sigma]2)*\[Sigma]3*\[Sigma]5 - 2*\[Sigma]1^2*\[Sigma]4*(\[Sigma]4 + \[Sigma]5) + \[Sigma]2*\[Sigma]4*(2*\[Sigma]4 + \[Sigma]5) + \[Sigma]1*(\[Sigma]2*\[Sigma]4^2 - \[Sigma]2^2*\[Sigma]5 + 2*\[Sigma]5*(\[Sigma]4 + \[Sigma]5))) - q^3*\[Sigma]5^2*(\[Sigma]1^4*\[Sigma]5 + \[Sigma]1^3*\[Sigma]3*\[Sigma]5 + \[Sigma]4*(-\[Sigma]3^2 + \[Sigma]5 + \[Sigma]2*(\[Sigma]4 + \[Sigma]5)) + \[Sigma]1^2*(-2*\[Sigma]4^2 - 3*\[Sigma]2*\[Sigma]5 - 2*\[Sigma]4*\[Sigma]5 + \[Sigma]3*(\[Sigma]4 + \[Sigma]5)) + \[Sigma]1*((-1 + \[Sigma]2)*\[Sigma]4^2 + 4*\[Sigma]4*\[Sigma]5 + \[Sigma]5*(-\[Sigma]2^2 + \[Sigma]3 - 2*\[Sigma]2*\[Sigma]3 + 2*\[Sigma]5))) + q^2*\[Sigma]5*(\[Sigma]1*\[Sigma]2^2*\[Sigma]5^2 - \[Sigma]2*\[Sigma]4*(\[Sigma]4^2 - 2*\[Sigma]3*\[Sigma]5 + 2*\[Sigma]4*\[Sigma]5) - \[Sigma]5*(-(\[Sigma]4*(\[Sigma]3^2 - 2*\[Sigma]5)) + \[Sigma]1^2*(\[Sigma]3*\[Sigma]4 - 2*\[Sigma]4^2 + 2*\[Sigma]3*\[Sigma]5) + \[Sigma]1*(-2*\[Sigma]4^2 + \[Sigma]3*\[Sigma]5 + 2*\[Sigma]4*\[Sigma]5))) - q^7*\[Sigma]5*(\[Sigma]1^3*(\[Sigma]3 - \[Sigma]4)*\[Sigma]4*\[Sigma]5 + \[Sigma]1^4*\[Sigma]5^2 + \[Sigma]4*\[Sigma]5*(-(\[Sigma]2*\[Sigma]4) + \[Sigma]5) + \[Sigma]1^2*\[Sigma]5*(-2*\[Sigma]4^2 + \[Sigma]3*(\[Sigma]4 - \[Sigma]5) - 3*\[Sigma]2*\[Sigma]5 + \[Sigma]4*\[Sigma]5) + \[Sigma]1*(\[Sigma]2*\[Sigma]4*(\[Sigma]4^2 - 2*\[Sigma]3*\[Sigma]5 + 2*\[Sigma]4*\[Sigma]5) + \[Sigma]5*(-(\[Sigma]3^2*\[Sigma]4) - \[Sigma]4^2 + \[Sigma]3*\[Sigma]5 + 4*\[Sigma]4*\[Sigma]5))) - q^4*\[Sigma]5*(\[Sigma]1^3*\[Sigma]3*\[Sigma]4*\[Sigma]5 + \[Sigma]4*(\[Sigma]4^3 - (\[Sigma]2 + 3*\[Sigma]3)*\[Sigma]4*\[Sigma]5 + \[Sigma]2*\[Sigma]5^2) - \[Sigma]1^2*(\[Sigma]4^3 + 2*\[Sigma]4^2*\[Sigma]5 + \[Sigma]3*\[Sigma]5^2 + \[Sigma]4*\[Sigma]5*(-2*\[Sigma]3 + \[Sigma]5)) + \[Sigma]1*(-(\[Sigma]2^2*\[Sigma]4*\[Sigma]5) + \[Sigma]2*\[Sigma]4*(\[Sigma]4^2 - 2*\[Sigma]3*\[Sigma]5 + \[Sigma]4*\[Sigma]5) + \[Sigma]5*(\[Sigma]4^2 + 4*\[Sigma]4*\[Sigma]5 + \[Sigma]5^2)))) && c14 == q^8*z^14*\[Sigma]5^2*(\[Sigma]5*(\[Sigma]4^3 + ((-1 + \[Sigma]1)*\[Sigma]2 - 3*\[Sigma]3)*\[Sigma]4*\[Sigma]5 + (\[Sigma]1 - \[Sigma]1^2 + \[Sigma]2)*\[Sigma]5^2) + q^10*\[Sigma]5*(\[Sigma]4^3 + ((-1 + \[Sigma]1)*\[Sigma]2 - 3*\[Sigma]3)*\[Sigma]4*\[Sigma]5 + (\[Sigma]1 - \[Sigma]1^2 + \[Sigma]2)*\[Sigma]5^2) + q*\[Sigma]5*(\[Sigma]4^3 + (\[Sigma]1*(\[Sigma]2 - \[Sigma]3) - 3*\[Sigma]3)*\[Sigma]4*\[Sigma]5 + \[Sigma]4^2*\[Sigma]5 - (\[Sigma]1^2 + \[Sigma]1^3 - \[Sigma]2 - 3*\[Sigma]1*\[Sigma]2 + \[Sigma]3)*\[Sigma]5^2) + q^11*\[Sigma]5*(\[Sigma]4^3 + (\[Sigma]1*(\[Sigma]2 - \[Sigma]3) - 3*\[Sigma]3)*\[Sigma]4*\[Sigma]5 + \[Sigma]4^2*\[Sigma]5 - (\[Sigma]1^2 + \[Sigma]1^3 - \[Sigma]2 - 3*\[Sigma]1*\[Sigma]2 + \[Sigma]3)*\[Sigma]5^2) + q^2*(\[Sigma]4^4 + (\[Sigma]1*(\[Sigma]2 - \[Sigma]3) - 3*\[Sigma]3)*\[Sigma]4^2*\[Sigma]5 + \[Sigma]4^3*\[Sigma]5 - (\[Sigma]1^2 + \[Sigma]1^3 - \[Sigma]2 - 2*\[Sigma]1*\[Sigma]2 + \[Sigma]3)*\[Sigma]4*\[Sigma]5^2 + \[Sigma]1*(1 + \[Sigma]1)*\[Sigma]5^3) + q^8*(\[Sigma]4^4 + (1 + \[Sigma]1)*\[Sigma]4^3*\[Sigma]5 + \[Sigma]4^2*(\[Sigma]1*(\[Sigma]2 - \[Sigma]3) - 3*\[Sigma]3 - \[Sigma]5)*\[Sigma]5 + (-\[Sigma]1^2 - 2*\[Sigma]1^3 + \[Sigma]2 + 4*\[Sigma]1*\[Sigma]2 + \[Sigma]2^2 - 2*\[Sigma]3 - 2*\[Sigma]1*\[Sigma]3)*\[Sigma]4*\[Sigma]5^2 + \[Sigma]1*\[Sigma]5^2*(-\[Sigma]3^2 + (1 + 2*\[Sigma]1 + \[Sigma]2)*\[Sigma]5)) + q^9*\[Sigma]5*(-(\[Sigma]1^3*\[Sigma]5*(\[Sigma]4 + \[Sigma]5)) + \[Sigma]1^2*\[Sigma]5*(\[Sigma]2*\[Sigma]4 + \[Sigma]5) + \[Sigma]4*(\[Sigma]4^2 - \[Sigma]3*\[Sigma]5 - \[Sigma]4*\[Sigma]5) + \[Sigma]1*(\[Sigma]4^3 + 2*\[Sigma]2*\[Sigma]4*\[Sigma]5 + \[Sigma]2*\[Sigma]5^2 - \[Sigma]3*\[Sigma]4*(\[Sigma]4 + 2*\[Sigma]5))) + q^7*(\[Sigma]1^3*(\[Sigma]3 - 2*\[Sigma]4)*\[Sigma]5^2 - \[Sigma]1^4*\[Sigma]4*\[Sigma]5^2 - \[Sigma]3*\[Sigma]4*\[Sigma]5^2 + \[Sigma]1*(\[Sigma]4^4 + (\[Sigma]2 - 3*\[Sigma]3)*\[Sigma]4^2*\[Sigma]5 + \[Sigma]4^3*\[Sigma]5 + (3*\[Sigma]2 - \[Sigma]3)*\[Sigma]4*\[Sigma]5^2 + \[Sigma]5^2*(-2*\[Sigma]2*\[Sigma]3 - \[Sigma]3^2 + 2*\[Sigma]5)) + \[Sigma]1^2*\[Sigma]5*(-(\[Sigma]3*\[Sigma]4^2) - 2*\[Sigma]4*\[Sigma]5 + \[Sigma]5^2 + \[Sigma]2*\[Sigma]4*(\[Sigma]4 + 3*\[Sigma]5))) + q^4*(-2*\[Sigma]1^3*\[Sigma]4*\[Sigma]5^2 + (\[Sigma]2^2 - \[Sigma]3 - \[Sigma]4)*\[Sigma]4*\[Sigma]5^2 + \[Sigma]1^2*\[Sigma]5*(\[Sigma]2*\[Sigma]4^2 + \[Sigma]5*(\[Sigma]4 + \[Sigma]5)) + \[Sigma]1*(\[Sigma]4^4 - (\[Sigma]2 + 3*\[Sigma]3)*\[Sigma]4^2*\[Sigma]5 + \[Sigma]4^3*\[Sigma]5 + (3*\[Sigma]2 - 2*\[Sigma]3)*\[Sigma]4*\[Sigma]5^2 + \[Sigma]5^2*(-\[Sigma]3^2 + \[Sigma]2*\[Sigma]5))) + q^6*(\[Sigma]2^2*\[Sigma]4^2*\[Sigma]5 + \[Sigma]1^4*(\[Sigma]3 - \[Sigma]4)*\[Sigma]5^2 + \[Sigma]1^3*\[Sigma]5^2*(-3*\[Sigma]4 + \[Sigma]5) + \[Sigma]1*\[Sigma]4*(2*\[Sigma]4^3 - (\[Sigma]2 + 5*\[Sigma]3)*\[Sigma]4*\[Sigma]5 + 2*\[Sigma]4^2*\[Sigma]5 + \[Sigma]2*\[Sigma]5^2) - \[Sigma]5*(\[Sigma]4^3 + 2*\[Sigma]4^2*\[Sigma]5 + \[Sigma]3*\[Sigma]5^2) + \[Sigma]2*(-\[Sigma]4^4 + 2*\[Sigma]3*\[Sigma]4^2*\[Sigma]5 + \[Sigma]5^3) + \[Sigma]1^2*\[Sigma]5*(-(\[Sigma]3*\[Sigma]4^2) - \[Sigma]3^2*\[Sigma]5 + \[Sigma]5*(\[Sigma]4 + 2*\[Sigma]5) + 2*\[Sigma]2*(\[Sigma]4^2 - \[Sigma]3*\[Sigma]5 + \[Sigma]4*\[Sigma]5))) + q^5*(\[Sigma]1^4*(\[Sigma]3 - \[Sigma]4)*\[Sigma]5^2 - \[Sigma]1^3*\[Sigma]5*(\[Sigma]4^2 - 2*\[Sigma]3*\[Sigma]5 + 3*\[Sigma]4*\[Sigma]5) + \[Sigma]1*(2*\[Sigma]4^4 - 5*\[Sigma]3*\[Sigma]4^2*\[Sigma]5 + \[Sigma]4^3*\[Sigma]5 + (\[Sigma]2 - \[Sigma]3)*\[Sigma]4*\[Sigma]5^2 + \[Sigma]5^3) + \[Sigma]5*(\[Sigma]2^2*\[Sigma]4^2 - \[Sigma]3*\[Sigma]4^2 - \[Sigma]4^3 - \[Sigma]3^2*\[Sigma]5 + \[Sigma]2*\[Sigma]5*(2*\[Sigma]4 + \[Sigma]5)) + \[Sigma]1^2*\[Sigma]5*(-(\[Sigma]3*\[Sigma]4^2) - \[Sigma]2^2*\[Sigma]5 + 2*\[Sigma]5^2 + \[Sigma]2*(2*\[Sigma]4^2 - 2*\[Sigma]3*\[Sigma]5 + 3*\[Sigma]4*\[Sigma]5))) + q^3*\[Sigma]5*(\[Sigma]1^3*(\[Sigma]3 - 2*\[Sigma]4 - \[Sigma]5)*\[Sigma]5 + \[Sigma]1^2*\[Sigma]5*((-2 + \[Sigma]2)*\[Sigma]4 + 2*\[Sigma]5) + \[Sigma]4*(\[Sigma]4^2 - 2*\[Sigma]3*\[Sigma]5 - \[Sigma]4*\[Sigma]5) + \[Sigma]1*(\[Sigma]4^3 - \[Sigma]3^2*\[Sigma]5 + 2*\[Sigma]5^2 - \[Sigma]3*\[Sigma]4*(\[Sigma]4 + 2*\[Sigma]5) + \[Sigma]2*(\[Sigma]4^2 + 4*\[Sigma]4*\[Sigma]5 + \[Sigma]5*(-2*\[Sigma]3 + \[Sigma]5))))) && c15 == q^9*z^15*\[Sigma]5^2*(q^6*(\[Sigma]4^5 - (2*\[Sigma]1^2 + \[Sigma]2 - \[Sigma]1*\[Sigma]2 + 3*\[Sigma]3)*\[Sigma]4^3*\[Sigma]5 + (2*\[Sigma]1 - 2*\[Sigma]1^2 + \[Sigma]2)*\[Sigma]4^2*\[Sigma]5^2 + \[Sigma]4*\[Sigma]5^2*(5*\[Sigma]1^2*\[Sigma]3 + \[Sigma]1^3*(-\[Sigma]2 + \[Sigma]3) + \[Sigma]1*(-\[Sigma]2^2 + \[Sigma]3) + \[Sigma]5) + \[Sigma]5^3*(\[Sigma]1^4 + \[Sigma]1^5 - 3*\[Sigma]1^3*\[Sigma]2 - \[Sigma]1*\[Sigma]3 + \[Sigma]1^2*(-\[Sigma]2 + \[Sigma]3) + 2*\[Sigma]5)) + \[Sigma]5^2*((-\[Sigma]2^2 + \[Sigma]3 + \[Sigma]4)*\[Sigma]5 - \[Sigma]1*(\[Sigma]4^2 - 2*\[Sigma]3*\[Sigma]5)) + q^10*\[Sigma]5^2*((-\[Sigma]2^2 + \[Sigma]3 + \[Sigma]4)*\[Sigma]5 - \[Sigma]1*(\[Sigma]4^2 - 2*\[Sigma]3*\[Sigma]5)) + q*\[Sigma]5^2*(-(\[Sigma]2^2*\[Sigma]5) + \[Sigma]1^2*\[Sigma]3*\[Sigma]5 + \[Sigma]5*(\[Sigma]4 + 2*\[Sigma]5) + \[Sigma]2*(\[Sigma]4^2 - 2*\[Sigma]3*\[Sigma]5) - \[Sigma]1*(\[Sigma]4^2 - 2*\[Sigma]3*\[Sigma]5 + 2*\[Sigma]4*\[Sigma]5)) + q^11*\[Sigma]5^2*(-(\[Sigma]2^2*\[Sigma]5) + \[Sigma]1^2*\[Sigma]3*\[Sigma]5 + \[Sigma]5*(\[Sigma]4 + 2*\[Sigma]5) + \[Sigma]2*(\[Sigma]4^2 - 2*\[Sigma]3*\[Sigma]5) - \[Sigma]1*(\[Sigma]4^2 - 2*\[Sigma]3*\[Sigma]5 + 2*\[Sigma]4*\[Sigma]5)) + q^4*\[Sigma]5*(\[Sigma]1^4*\[Sigma]5^2 + \[Sigma]4*\[Sigma]5*(-(\[Sigma]2*\[Sigma]4) + \[Sigma]5) - \[Sigma]1^2*(\[Sigma]4^3 - 3*\[Sigma]3*\[Sigma]4*\[Sigma]5 + (3*\[Sigma]2 + \[Sigma]3)*\[Sigma]5^2) + \[Sigma]1*\[Sigma]5*(-(\[Sigma]2^2*\[Sigma]4) + 2*\[Sigma]4*\[Sigma]5 + \[Sigma]3*(\[Sigma]4 + \[Sigma]5))) + q^7*\[Sigma]5*(\[Sigma]1^4*\[Sigma]5^2 + \[Sigma]4*\[Sigma]5^2 + \[Sigma]1^3*\[Sigma]5*(\[Sigma]3*\[Sigma]4 + \[Sigma]5) - \[Sigma]1^2*(\[Sigma]4^3 + (\[Sigma]2 - 3*\[Sigma]3)*\[Sigma]4*\[Sigma]5 + 2*\[Sigma]4^2*\[Sigma]5 + 3*\[Sigma]2*\[Sigma]5^2) + \[Sigma]1*((-1 + \[Sigma]2)*\[Sigma]4^3 + (-\[Sigma]2 + \[Sigma]3)*\[Sigma]5^2 + \[Sigma]4*\[Sigma]5*(-\[Sigma]2^2 + 3*\[Sigma]3 - 2*\[Sigma]2*\[Sigma]3 + 2*\[Sigma]5))) + q^2*\[Sigma]5*(\[Sigma]1^2*\[Sigma]3*\[Sigma]4*\[Sigma]5 + \[Sigma]1*(-\[Sigma]4^3 + 2*\[Sigma]3*\[Sigma]4*\[Sigma]5 - 2*\[Sigma]4^2*\[Sigma]5 + \[Sigma]3*\[Sigma]5^2) + \[Sigma]4*(-(\[Sigma]2^2*\[Sigma]5) + \[Sigma]5*(\[Sigma]4 + 2*\[Sigma]5) + \[Sigma]2*(\[Sigma]4^2 - 2*\[Sigma]3*\[Sigma]5))) + q^8*\[Sigma]5*(\[Sigma]1^4*\[Sigma]5^2 + \[Sigma]1*(-\[Sigma]4^3 - 3*\[Sigma]4^2*\[Sigma]5 + 2*\[Sigma]3*\[Sigma]5^2 + 2*\[Sigma]4*\[Sigma]5*(\[Sigma]3 + \[Sigma]5)) - \[Sigma]1^2*\[Sigma]5*(3*\[Sigma]2*\[Sigma]5 + \[Sigma]3*(-2*\[Sigma]4 + \[Sigma]5)) + \[Sigma]4*(-(\[Sigma]2^2*\[Sigma]5) + \[Sigma]5*(\[Sigma]4 + 3*\[Sigma]5) + \[Sigma]2*(\[Sigma]4^2 - 2*\[Sigma]3*\[Sigma]5 - \[Sigma]4*\[Sigma]5))) + q^3*\[Sigma]5*(\[Sigma]1^3*\[Sigma]5^2 + \[Sigma]1^4*\[Sigma]5^2 - \[Sigma]1^2*\[Sigma]5*(\[Sigma]2*\[Sigma]4 - 2*\[Sigma]3*\[Sigma]4 + 2*\[Sigma]4^2 + 3*\[Sigma]2*\[Sigma]5 - 2*\[Sigma]3*\[Sigma]5) - \[Sigma]1*(\[Sigma]4^3 + 3*\[Sigma]4^2*\[Sigma]5 + (\[Sigma]2 + \[Sigma]2^2 - 2*\[Sigma]3)*\[Sigma]5^2 - \[Sigma]4*\[Sigma]5*(3*\[Sigma]3 + 2*\[Sigma]5)) + \[Sigma]4*(\[Sigma]5*(-\[Sigma]3^2 + 3*\[Sigma]5) + \[Sigma]2*(\[Sigma]4^2 - 2*\[Sigma]3*\[Sigma]5 + 2*\[Sigma]4*\[Sigma]5))) + q^9*\[Sigma]5*(-(\[Sigma]1*\[Sigma]2^2*\[Sigma]5^2) + \[Sigma]2*\[Sigma]4*(\[Sigma]4^2 - 2*\[Sigma]3*\[Sigma]5 + 2*\[Sigma]4*\[Sigma]5) + \[Sigma]5*(-(\[Sigma]4*(\[Sigma]3^2 - 2*\[Sigma]5)) + \[Sigma]1^2*(\[Sigma]3*\[Sigma]4 - 2*\[Sigma]4^2 + 2*\[Sigma]3*\[Sigma]5) + \[Sigma]1*(-2*\[Sigma]4^2 + \[Sigma]3*\[Sigma]5 + 2*\[Sigma]4*\[Sigma]5))) + q^5*\[Sigma]5*(-(\[Sigma]2*\[Sigma]4^3) + \[Sigma]1^3*(-\[Sigma]2 + \[Sigma]3)*\[Sigma]4*\[Sigma]5 + \[Sigma]1^4*\[Sigma]5^2 + (\[Sigma]3 + \[Sigma]4)*\[Sigma]5^2 + \[Sigma]1^2*(-2*\[Sigma]4^3 + (\[Sigma]2 + 5*\[Sigma]3)*\[Sigma]4*\[Sigma]5 - 2*\[Sigma]4^2*\[Sigma]5 - \[Sigma]2*\[Sigma]5^2) + \[Sigma]1*(-(\[Sigma]2^2*\[Sigma]4*\[Sigma]5) + \[Sigma]2*(\[Sigma]4^3 - 2*\[Sigma]3*\[Sigma]4*\[Sigma]5 - 3*\[Sigma]5^2) + \[Sigma]5*(\[Sigma]3*(\[Sigma]4 - \[Sigma]5) + 2*\[Sigma]4*(\[Sigma]4 + \[Sigma]5))))) && c16 == q^10*z^16*\[Sigma]5^3*(q^4*(\[Sigma]3*\[Sigma]4 + \[Sigma]1^3*(-\[Sigma]3 + \[Sigma]4) + \[Sigma]1*(2*\[Sigma]2*\[Sigma]3 + \[Sigma]3^2 - \[Sigma]4 - 2*\[Sigma]2*\[Sigma]4 - 2*\[Sigma]5) + \[Sigma]1^2*(\[Sigma]4 - \[Sigma]5))*\[Sigma]5^2 - \[Sigma]5^2*(-(\[Sigma]2*\[Sigma]4) + \[Sigma]5 + \[Sigma]1*\[Sigma]5) - q^10*\[Sigma]5^2*(-(\[Sigma]2*\[Sigma]4) + \[Sigma]5 + \[Sigma]1*\[Sigma]5) - q*\[Sigma]5*(\[Sigma]4^3 + ((-1 + \[Sigma]1)*\[Sigma]2 - 3*\[Sigma]3)*\[Sigma]4*\[Sigma]5 + (\[Sigma]1 - \[Sigma]1^2 + \[Sigma]2)*\[Sigma]5^2) - q^11*\[Sigma]5*(\[Sigma]4^3 + ((-1 + \[Sigma]1)*\[Sigma]2 - 3*\[Sigma]3)*\[Sigma]4*\[Sigma]5 + (\[Sigma]1 - \[Sigma]1^2 + \[Sigma]2)*\[Sigma]5^2) + q^7*\[Sigma]1*(-\[Sigma]4^4 + (\[Sigma]1 - \[Sigma]1*\[Sigma]2 + 3*\[Sigma]3)*\[Sigma]4^2*\[Sigma]5 + (-1 + \[Sigma]1 + \[Sigma]1^2 - \[Sigma]2)*\[Sigma]4*\[Sigma]5^2 + (\[Sigma]2^2 - 2*\[Sigma]1*\[Sigma]3 - \[Sigma]1^2*\[Sigma]3 + 2*\[Sigma]2*\[Sigma]3 - 2*\[Sigma]5)*\[Sigma]5^2) - q^2*(\[Sigma]4^4 + ((-1 + \[Sigma]1)*\[Sigma]2 - 3*\[Sigma]3)*\[Sigma]4^2*\[Sigma]5 + (\[Sigma]1 - \[Sigma]1^2 + \[Sigma]2)*\[Sigma]4*\[Sigma]5^2 + \[Sigma]1*\[Sigma]5^3) - q^9*(\[Sigma]4^4 + (\[Sigma]1*\[Sigma]2 - 3*\[Sigma]3 - \[Sigma]1*\[Sigma]3)*\[Sigma]4^2*\[Sigma]5 + \[Sigma]4^3*\[Sigma]5 - (\[Sigma]1^2 + \[Sigma]1^3 - \[Sigma]2 - 2*\[Sigma]1*\[Sigma]2 + \[Sigma]3)*\[Sigma]4*\[Sigma]5^2 + \[Sigma]1*(1 + \[Sigma]1)*\[Sigma]5^3) - q^3*(\[Sigma]4^4 - (\[Sigma]1^2 - 2*\[Sigma]1*\[Sigma]2 + 3*\[Sigma]3 + \[Sigma]1*\[Sigma]3)*\[Sigma]4^2*\[Sigma]5 + \[Sigma]4^3*\[Sigma]5 + (\[Sigma]1 - 3*\[Sigma]1^2 - \[Sigma]1^3 + \[Sigma]2 + 2*\[Sigma]1*\[Sigma]2 - \[Sigma]3)*\[Sigma]4*\[Sigma]5^2 + \[Sigma]1*\[Sigma]5^2*(-\[Sigma]2^2 + 2*\[Sigma]1*\[Sigma]3 + \[Sigma]1^2*\[Sigma]3 - 2*\[Sigma]2*\[Sigma]3 + 3*\[Sigma]5 + \[Sigma]1*\[Sigma]5)) - q^8*(\[Sigma]4^4 + (-\[Sigma]2 + 2*\[Sigma]1*\[Sigma]2 - 3*\[Sigma]3)*\[Sigma]4^2*\[Sigma]5 + (\[Sigma]1 - 3*\[Sigma]1^2 - \[Sigma]1^3 + \[Sigma]2 + 2*\[Sigma]1*\[Sigma]2 - \[Sigma]3)*\[Sigma]4*\[Sigma]5^2 + \[Sigma]1*\[Sigma]5^2*(\[Sigma]1^2*\[Sigma]3 - 2*\[Sigma]2*\[Sigma]3 - \[Sigma]3^2 + 3*\[Sigma]5 + \[Sigma]1*\[Sigma]5)) - q^6*(\[Sigma]1^4*\[Sigma]3*\[Sigma]5^2 - \[Sigma]1^3*\[Sigma]5*(\[Sigma]4^2 - 2*\[Sigma]3*\[Sigma]5 + 2*\[Sigma]4*\[Sigma]5) + \[Sigma]1*(\[Sigma]4^4 - (\[Sigma]2 + 2*\[Sigma]3)*\[Sigma]4^2*\[Sigma]5 + \[Sigma]4*\[Sigma]5^2 + \[Sigma]5^3) + \[Sigma]5*(\[Sigma]2^2*\[Sigma]4^2 - \[Sigma]3*\[Sigma]4^2 - \[Sigma]4^3 - \[Sigma]3^2*\[Sigma]5 + \[Sigma]2*\[Sigma]5*(2*\[Sigma]4 + \[Sigma]5)) + \[Sigma]1^2*\[Sigma]5*(-(\[Sigma]2^2*\[Sigma]5) + \[Sigma]5*(\[Sigma]4 + 2*\[Sigma]5) + \[Sigma]2*(\[Sigma]4^2 - 2*\[Sigma]3*\[Sigma]5))) + q^5*(\[Sigma]1^3*\[Sigma]5*(\[Sigma]4^2 - 2*\[Sigma]3*\[Sigma]5 + \[Sigma]4*\[Sigma]5) + \[Sigma]1^2*\[Sigma]5*(-(\[Sigma]2*\[Sigma]4^2) + \[Sigma]2^2*\[Sigma]5 - (2*\[Sigma]3 + \[Sigma]4)*\[Sigma]5) - \[Sigma]1*(\[Sigma]4^4 - (\[Sigma]2 + 3*\[Sigma]3)*\[Sigma]4^2*\[Sigma]5 + (-2 + \[Sigma]2)*\[Sigma]4*\[Sigma]5^2 + \[Sigma]5^3) + \[Sigma]5*(\[Sigma]3*\[Sigma]4^2 + \[Sigma]3^2*\[Sigma]5 - 2*\[Sigma]5^2 - \[Sigma]2*(\[Sigma]4^2 - 2*\[Sigma]3*\[Sigma]5 + 2*\[Sigma]4*\[Sigma]5)))) && c17 == q^11*z^17*\[Sigma]5^4*(-(\[Sigma]3*\[Sigma]5^2) - q^10*\[Sigma]3*\[Sigma]5^2 + q^7*\[Sigma]1*((1 + \[Sigma]1)*\[Sigma]4^3 + ((-1 + \[Sigma]1)*\[Sigma]2 + \[Sigma]2^2 - 2*(2 + \[Sigma]1)*\[Sigma]3)*\[Sigma]4*\[Sigma]5 - \[Sigma]4^2*\[Sigma]5 + (\[Sigma]1 - \[Sigma]1^2 + \[Sigma]2)*\[Sigma]5^2) + q^5*((1 + \[Sigma]1^2)*\[Sigma]4^3 + (\[Sigma]1*(\[Sigma]2 + \[Sigma]2^2 - 2*\[Sigma]3) - 3*\[Sigma]3 - \[Sigma]1^2*(\[Sigma]2 + 2*\[Sigma]3))*\[Sigma]4*\[Sigma]5 - \[Sigma]1*\[Sigma]4^2*\[Sigma]5 + (\[Sigma]2 + 3*\[Sigma]1*\[Sigma]2 - \[Sigma]3)*\[Sigma]5^2) + q^2*\[Sigma]4*((\[Sigma]2^2 - \[Sigma]3 - \[Sigma]4)*\[Sigma]5 + \[Sigma]1*(\[Sigma]4^2 - 2*\[Sigma]3*\[Sigma]5)) + q*\[Sigma]5*((\[Sigma]2^2 - \[Sigma]3 - \[Sigma]4)*\[Sigma]5 + \[Sigma]1*(\[Sigma]4^2 - 2*\[Sigma]3*\[Sigma]5)) + q^11*\[Sigma]5*((\[Sigma]2^2 - \[Sigma]3 - \[Sigma]4)*\[Sigma]5 + \[Sigma]1*(\[Sigma]4^2 - 2*\[Sigma]3*\[Sigma]5)) + q^6*(\[Sigma]2*\[Sigma]4^3 + \[Sigma]1^3*\[Sigma]2*\[Sigma]4*\[Sigma]5 - \[Sigma]1^4*\[Sigma]5^2 - (\[Sigma]3 + \[Sigma]4)*\[Sigma]5^2 + \[Sigma]1^2*(\[Sigma]4^3 - (\[Sigma]2 + 3*\[Sigma]3)*\[Sigma]4*\[Sigma]5 + \[Sigma]2*\[Sigma]5^2) + \[Sigma]1*\[Sigma]5*(-\[Sigma]4^2 + 3*\[Sigma]2*\[Sigma]5 + \[Sigma]3*(-2*\[Sigma]4 + \[Sigma]5))) - q^8*(\[Sigma]1^3*\[Sigma]5^2 + \[Sigma]1^4*\[Sigma]5^2 + \[Sigma]4*\[Sigma]5*(-\[Sigma]2^2 + \[Sigma]3 + \[Sigma]4 + \[Sigma]5) - \[Sigma]1*(2*\[Sigma]4^3 - 5*\[Sigma]3*\[Sigma]4*\[Sigma]5 + \[Sigma]4^2*\[Sigma]5 + (\[Sigma]2 - \[Sigma]3)*\[Sigma]5^2) + \[Sigma]1^2*\[Sigma]5*(\[Sigma]3*\[Sigma]4 - \[Sigma]2*(\[Sigma]4 + 3*\[Sigma]5))) - q^4*(\[Sigma]1^3*\[Sigma]5^2 + \[Sigma]1^4*\[Sigma]5^2 + \[Sigma]4*\[Sigma]5^2 - \[Sigma]1*(\[Sigma]4^3 - 4*\[Sigma]3*\[Sigma]4*\[Sigma]5 + \[Sigma]4^2*\[Sigma]5 + (\[Sigma]2 - \[Sigma]3)*\[Sigma]5^2) + \[Sigma]1^2*\[Sigma]5*(\[Sigma]3*\[Sigma]4 - \[Sigma]2*(\[Sigma]4 + 3*\[Sigma]5))) - q^9*(\[Sigma]1^2*\[Sigma]3*\[Sigma]4*\[Sigma]5 + \[Sigma]1*(-\[Sigma]4^3 + 2*\[Sigma]3*\[Sigma]4*\[Sigma]5 - 2*\[Sigma]4^2*\[Sigma]5 + \[Sigma]3*\[Sigma]5^2) + \[Sigma]4*(-(\[Sigma]2^2*\[Sigma]5) + \[Sigma]5*(\[Sigma]4 + 2*\[Sigma]5) + \[Sigma]2*(\[Sigma]4^2 - 2*\[Sigma]3*\[Sigma]5))) - q^3*(\[Sigma]1^3*\[Sigma]5^2 - \[Sigma]1^2*\[Sigma]5*(\[Sigma]2*\[Sigma]4 - \[Sigma]3*\[Sigma]4 + \[Sigma]5) + \[Sigma]1*(-2*\[Sigma]4^3 + (\[Sigma]2 + 5*\[Sigma]3)*\[Sigma]4*\[Sigma]5 - 2*\[Sigma]4^2*\[Sigma]5 + (-\[Sigma]2 + \[Sigma]3)*\[Sigma]5^2) + \[Sigma]4*(-(\[Sigma]2^2*\[Sigma]5) + \[Sigma]5*(\[Sigma]4 + 2*\[Sigma]5) + \[Sigma]2*(\[Sigma]4^2 - 2*\[Sigma]3*\[Sigma]5)))) && c18 == q^12*z^18*\[Sigma]5^4*(\[Sigma]5^3 + q^10*\[Sigma]5^3 + q^2*\[Sigma]4*\[Sigma]5*(-(\[Sigma]2*\[Sigma]4) + \[Sigma]5 + \[Sigma]1*\[Sigma]5) + q*\[Sigma]5^2*(-(\[Sigma]2*\[Sigma]4) + \[Sigma]5 + \[Sigma]1*\[Sigma]5) + q^11*\[Sigma]5^2*(-(\[Sigma]2*\[Sigma]4) + \[Sigma]5 + \[Sigma]1*\[Sigma]5) + q^9*(\[Sigma]4^4 + ((-1 + \[Sigma]1)*\[Sigma]2 - 3*\[Sigma]3)*\[Sigma]4^2*\[Sigma]5 + (\[Sigma]1 - \[Sigma]1^2 + \[Sigma]2)*\[Sigma]4*\[Sigma]5^2 + \[Sigma]1*\[Sigma]5^3) + q^3*(\[Sigma]4^4 - (\[Sigma]1^2 + \[Sigma]2 - \[Sigma]1*\[Sigma]2 + 3*\[Sigma]3)*\[Sigma]4^2*\[Sigma]5 + (2*\[Sigma]1 - \[Sigma]1^2 + \[Sigma]2)*\[Sigma]4*\[Sigma]5^2 + \[Sigma]1*\[Sigma]5^2*(-\[Sigma]2^2 + \[Sigma]3 + 2*\[Sigma]1*\[Sigma]3 + \[Sigma]5)) + q^5*\[Sigma]5*(-(\[Sigma]2^2*\[Sigma]5) + \[Sigma]1^2*(2*\[Sigma]3 + \[Sigma]4)*\[Sigma]5 + \[Sigma]5*(\[Sigma]4 + 2*\[Sigma]5) + \[Sigma]2*(\[Sigma]4^2 - 2*\[Sigma]3*\[Sigma]5) - \[Sigma]1*((1 + \[Sigma]2)*\[Sigma]4^2 - 2*\[Sigma]3*\[Sigma]5 + \[Sigma]4*\[Sigma]5)) + q^7*\[Sigma]1*\[Sigma]5*(-(\[Sigma]2*\[Sigma]4^2) - \[Sigma]2^2*\[Sigma]5 + (\[Sigma]3 + 2*\[Sigma]4)*\[Sigma]5 + \[Sigma]1*(-\[Sigma]4^2 + 2*\[Sigma]3*\[Sigma]5 + \[Sigma]4*\[Sigma]5)) + q^4*\[Sigma]1*\[Sigma]5*(-(\[Sigma]2^2*\[Sigma]5) + \[Sigma]1^2*\[Sigma]3*\[Sigma]5 + 2*\[Sigma]5*(\[Sigma]4 + \[Sigma]5) + \[Sigma]2*(\[Sigma]4^2 - 2*\[Sigma]3*\[Sigma]5) - \[Sigma]1*(\[Sigma]4^2 - 2*\[Sigma]3*\[Sigma]5 + 2*\[Sigma]4*\[Sigma]5)) - q^6*\[Sigma]5*(\[Sigma]3*\[Sigma]4^2 + \[Sigma]1^2*(\[Sigma]2^2 - 2*\[Sigma]3)*\[Sigma]5 + \[Sigma]3^2*\[Sigma]5 + \[Sigma]1*(\[Sigma]4 - \[Sigma]5)*\[Sigma]5 - 2*\[Sigma]5^2 + \[Sigma]1^3*(\[Sigma]4^2 - 2*\[Sigma]3*\[Sigma]5) - \[Sigma]2*(\[Sigma]4^2 - 2*\[Sigma]3*\[Sigma]5 + 2*\[Sigma]4*\[Sigma]5)) + q^8*\[Sigma]5*(\[Sigma]1^3*\[Sigma]3*\[Sigma]5 + \[Sigma]4*(-(\[Sigma]2*\[Sigma]4) + \[Sigma]5) - \[Sigma]1^2*(\[Sigma]4^2 - 2*\[Sigma]3*\[Sigma]5 + 2*\[Sigma]4*\[Sigma]5) + \[Sigma]1*(-(\[Sigma]2^2*\[Sigma]5) + 2*\[Sigma]5*(\[Sigma]4 + \[Sigma]5) + \[Sigma]2*(\[Sigma]4^2 - 2*\[Sigma]3*\[Sigma]5)))) && c19 == q^14*z^19*\[Sigma]5^5*(q*\[Sigma]3*\[Sigma]4*\[Sigma]5 + \[Sigma]3*\[Sigma]5^2 + q^10*\[Sigma]3*\[Sigma]5^2 + q^6*\[Sigma]1*\[Sigma]5*(\[Sigma]2*\[Sigma]4 + \[Sigma]3*\[Sigma]4 - (1 + \[Sigma]1)*\[Sigma]5) + q^3*\[Sigma]1*(-\[Sigma]4^3 + (\[Sigma]2 - \[Sigma]1*\[Sigma]2 + 3*\[Sigma]3)*\[Sigma]4*\[Sigma]5 + (-\[Sigma]1 + \[Sigma]1^2 - \[Sigma]2)*\[Sigma]5^2) - q^4*(\[Sigma]4^3 + ((-1 + \[Sigma]1)*\[Sigma]2 - (3 + \[Sigma]1)*\[Sigma]3)*\[Sigma]4*\[Sigma]5 + (\[Sigma]1 + \[Sigma]2)*\[Sigma]5^2) + q^5*(-\[Sigma]4^3 + (\[Sigma]1^2*\[Sigma]2 + 3*\[Sigma]3 + \[Sigma]1*(-\[Sigma]2 + \[Sigma]3))*\[Sigma]4*\[Sigma]5 + ((-1 - 3*\[Sigma]1)*\[Sigma]2 + \[Sigma]3)*\[Sigma]5^2) + q^8*\[Sigma]4*((-\[Sigma]2^2 + \[Sigma]3 + \[Sigma]4)*\[Sigma]5 - \[Sigma]1*(\[Sigma]4^2 - 2*\[Sigma]3*\[Sigma]5)) + q^2*(\[Sigma]4*(-\[Sigma]2^2 + \[Sigma]3 + \[Sigma]4)*\[Sigma]5 - \[Sigma]1^2*\[Sigma]5^2 - \[Sigma]1*(\[Sigma]4^3 - (\[Sigma]2 + 2*\[Sigma]3)*\[Sigma]4*\[Sigma]5 + \[Sigma]5^2)) + q^7*(\[Sigma]3*\[Sigma]4*\[Sigma]5 + \[Sigma]1^3*\[Sigma]5^2 - \[Sigma]1^2*\[Sigma]5*(\[Sigma]2*\[Sigma]4 + \[Sigma]5) - \[Sigma]1*(\[Sigma]4^3 - (\[Sigma]2 + 3*\[Sigma]3)*\[Sigma]4*\[Sigma]5 + \[Sigma]2*\[Sigma]5^2))) && c20 == q^15*z^20*\[Sigma]5^6*(-(q*\[Sigma]4*\[Sigma]5) - q^6*\[Sigma]1*(\[Sigma]3 + \[Sigma]4)*\[Sigma]5 - \[Sigma]5^2 - q^10*\[Sigma]5^2 + q^8*\[Sigma]4*(\[Sigma]2*\[Sigma]4 - (1 + \[Sigma]1)*\[Sigma]5) + q^2*(\[Sigma]2*\[Sigma]4^2 - (\[Sigma]4 + \[Sigma]1*(\[Sigma]3 + \[Sigma]4))*\[Sigma]5) + q^3*\[Sigma]1*((\[Sigma]2^2 - \[Sigma]3 - \[Sigma]4)*\[Sigma]5 + \[Sigma]1*(\[Sigma]4^2 - 2*\[Sigma]3*\[Sigma]5)) + q^7*(\[Sigma]1*(\[Sigma]2^2 - \[Sigma]3 - \[Sigma]4)*\[Sigma]5 - \[Sigma]4*\[Sigma]5 + \[Sigma]1^2*(\[Sigma]4^2 - 2*\[Sigma]3*\[Sigma]5)) + q^4*((\[Sigma]2^2 - \[Sigma]3 - \[Sigma]4)*\[Sigma]5 + \[Sigma]1*(\[Sigma]4^2 - 2*\[Sigma]3*\[Sigma]5 - \[Sigma]4*\[Sigma]5)) + q^5*(\[Sigma]2^2*\[Sigma]5 - 2*\[Sigma]1^2*\[Sigma]3*\[Sigma]5 - \[Sigma]5*(\[Sigma]4 + 2*\[Sigma]5) - \[Sigma]2*(\[Sigma]4^2 - 2*\[Sigma]3*\[Sigma]5) + \[Sigma]1*(\[Sigma]4^2 - 2*\[Sigma]3*\[Sigma]5 + 2*\[Sigma]4*\[Sigma]5))) && c21 == q^18*z^21*\[Sigma]5^6*(-(q^6*\[Sigma]3*\[Sigma]4*\[Sigma]5) + q^4*\[Sigma]1*\[Sigma]5^2 + \[Sigma]5*(-(\[Sigma]3*\[Sigma]4) + \[Sigma]1*\[Sigma]5) + q^2*\[Sigma]5*(-(\[Sigma]2*\[Sigma]4) + \[Sigma]5 + \[Sigma]1*\[Sigma]5) + q*\[Sigma]1*\[Sigma]5*(-(\[Sigma]2*\[Sigma]4) + \[Sigma]5 + \[Sigma]1*\[Sigma]5) + q^5*\[Sigma]1*\[Sigma]5*(-(\[Sigma]2*\[Sigma]4) + \[Sigma]5 + \[Sigma]1*\[Sigma]5) + q^3*(\[Sigma]4^3 + ((-1 + \[Sigma]1)*\[Sigma]2 - 3*\[Sigma]3)*\[Sigma]4*\[Sigma]5 + (\[Sigma]1 + \[Sigma]2)*\[Sigma]5^2)) && c22 == q^19*z^22*\[Sigma]5^7*(q^2*\[Sigma]3*\[Sigma]5 + q*\[Sigma]1*\[Sigma]3*\[Sigma]5 + q^5*\[Sigma]1*\[Sigma]3*\[Sigma]5 + \[Sigma]4*\[Sigma]5 + q^6*\[Sigma]4*\[Sigma]5 + q^3*((-\[Sigma]2^2 + \[Sigma]3 + \[Sigma]4)*\[Sigma]5 - \[Sigma]1*(\[Sigma]4^2 - 2*\[Sigma]3*\[Sigma]5))) && c23 == -(q^21*z^23*\[Sigma]5^8*(q*\[Sigma]5 + \[Sigma]1*\[Sigma]5 + q^4*\[Sigma]1*\[Sigma]5 + q^2*(-(\[Sigma]2*\[Sigma]4) + \[Sigma]5 + \[Sigma]1*\[Sigma]5))) && c24 == -(q^24*z^24*\[Sigma]3*\[Sigma]5^9) && c25 == q^25*z^25*\[Sigma]5^10 && d0 == 1 && d1 == -(q*z*\[Sigma]1) && d2 == q^2*z^2*\[Sigma]3 - q^2*z^2*\[Sigma]4 - q^3*z^2*(-\[Sigma]3 + \[Sigma]4 + q*\[Sigma]4) && d3 == q^5*z^3*\[Sigma]1*\[Sigma]4 + q^3*z^3*\[Sigma]1*\[Sigma]5 + q^4*z^3*\[Sigma]1*\[Sigma]5 - q^4*z^3*(q*\[Sigma]1*(\[Sigma]4 - \[Sigma]5) + \[Sigma]5 - q^2*\[Sigma]1*\[Sigma]5) && d4 == -(q^6*z^4*\[Sigma]3*\[Sigma]4) + q^5*z^4*\[Sigma]4*(-\[Sigma]3 + \[Sigma]4 + q*\[Sigma]4) - q^7*z^4*\[Sigma]1^2*\[Sigma]5 - q^4*z^4*\[Sigma]2*\[Sigma]5 - q^5*z^4*\[Sigma]3*\[Sigma]5 - q^7*z^4*(-\[Sigma]4^2 + (-\[Sigma]1^2 + \[Sigma]2 + \[Sigma]3)*\[Sigma]5) && d5 == q^8*z^5*\[Sigma]1*\[Sigma]3*\[Sigma]5 + q^5*z^5*\[Sigma]4*\[Sigma]5 - q^8*z^5*\[Sigma]1*\[Sigma]4*\[Sigma]5 - q^6*z^5*\[Sigma]1*(-\[Sigma]3 + \[Sigma]4 + q*\[Sigma]4)*\[Sigma]5 - q^5*z^5*\[Sigma]5^2 - q^8*z^5*\[Sigma]5*((-1 + q*(-1 + \[Sigma]1))*\[Sigma]4 + q^2*\[Sigma]5) + q^6*z^5*\[Sigma]4*(q*\[Sigma]1*(\[Sigma]4 - \[Sigma]5) + \[Sigma]5 - q^2*\[Sigma]1*\[Sigma]5) && d6 == q^8*z^6*\[Sigma]2*\[Sigma]4*\[Sigma]5 + q^9*z^6*\[Sigma]3*\[Sigma]4*\[Sigma]5 + q^11*z^6*\[Sigma]1*\[Sigma]5^2 + q^10*z^6*\[Sigma]1^2*\[Sigma]5^2 + q^7*z^6*\[Sigma]2*\[Sigma]5^2 - q^10*z^6*\[Sigma]5*(-(q*\[Sigma]2) + \[Sigma]1*\[Sigma]5 + q*\[Sigma]1*\[Sigma]5) - q^7*z^6*\[Sigma]1*\[Sigma]5*(q*\[Sigma]1*(\[Sigma]4 - \[Sigma]5) + \[Sigma]5 - q^2*\[Sigma]1*\[Sigma]5) + q^9*z^6*\[Sigma]4*(-\[Sigma]4^2 + (-\[Sigma]1^2 + \[Sigma]2 + \[Sigma]3)*\[Sigma]5) && d7 == -(q^9*z^7*\[Sigma]4^2*\[Sigma]5) - q^10*z^7*\[Sigma]1*\[Sigma]2*\[Sigma]5^2 - q^12*z^7*\[Sigma]3*\[Sigma]5^2 - q^11*z^7*\[Sigma]1*\[Sigma]3*\[Sigma]5^2 - q^8*z^7*\[Sigma]4*\[Sigma]5^2 + q^8*z^7*(-\[Sigma]3 + \[Sigma]4 + q*\[Sigma]4)*\[Sigma]5^2 + q^10*z^7*\[Sigma]4*\[Sigma]5*((-1 + q*(-1 + \[Sigma]1))*\[Sigma]4 + q^2*\[Sigma]5) - q^10*z^7*\[Sigma]1*\[Sigma]5*(-\[Sigma]4^2 + (-\[Sigma]1^2 + \[Sigma]2 + \[Sigma]3)*\[Sigma]5) && d8 == q^11*z^8*\[Sigma]1*\[Sigma]4*\[Sigma]5^2 - q^11*z^8*\[Sigma]2*\[Sigma]4*\[Sigma]5^2 + q^14*z^8*\[Sigma]5^3 - q^14*z^8*\[Sigma]1*\[Sigma]5^3 - q^11*z^8*\[Sigma]1*\[Sigma]5^2*((-1 + q*(-1 + \[Sigma]1))*\[Sigma]4 + q^2*\[Sigma]5) + q^12*z^8*\[Sigma]4*\[Sigma]5*(-(q*\[Sigma]2) + \[Sigma]1*\[Sigma]5 + q*\[Sigma]1*\[Sigma]5) + q^9*z^8*\[Sigma]5^2*(q*\[Sigma]1*(\[Sigma]4 - \[Sigma]5) + \[Sigma]5 - q^2*\[Sigma]1*\[Sigma]5) && d9 == q^12*z^9*\[Sigma]4^2*\[Sigma]5^2 + q^14*z^9*\[Sigma]2*\[Sigma]5^3 + q^13*z^9*\[Sigma]1*\[Sigma]2*\[Sigma]5^3 + q^15*z^9*\[Sigma]3*\[Sigma]5^3 - q^13*z^9*\[Sigma]1*\[Sigma]5^2*(-(q*\[Sigma]2) + \[Sigma]1*\[Sigma]5 + q*\[Sigma]1*\[Sigma]5) + q^12*z^9*\[Sigma]5^2*(-\[Sigma]4^2 + (-\[Sigma]1^2 + \[Sigma]2 + \[Sigma]3)*\[Sigma]5) && d10 == -(q^15*z^10*\[Sigma]4*\[Sigma]5^3) - q^16*z^10*\[Sigma]4*\[Sigma]5^3 - q^14*z^10*\[Sigma]1*\[Sigma]4*\[Sigma]5^3 + q^13*z^10*\[Sigma]5^3*((-1 + q*(-1 + \[Sigma]1))*\[Sigma]4 + q^2*\[Sigma]5) && d11 == q^17*z^11*\[Sigma]1*\[Sigma]5^4 - q^17*z^11*\[Sigma]2*\[Sigma]5^4 + q^15*z^11*\[Sigma]5^3*(-(q*\[Sigma]2) + \[Sigma]1*\[Sigma]5 + q*\[Sigma]1*\[Sigma]5) && d12 == q^18*z^12*\[Sigma]4*\[Sigma]5^4 && d13 == -(q^19*z^13*\[Sigma]5^5) && \[Sigma]1 == a1^(-1) + a2^(-1) + a3^(-1) + a4^(-1) + a5^(-1) && \[Sigma]2 == 1/(a1*a2) + 1/(a1*a3) + 1/(a2*a3) + 1/(a1*a4) + 1/(a2*a4) + 1/(a3*a4) + 1/(a1*a5) + 1/(a2*a5) + 1/(a3*a5) + 1/(a4*a5) && \[Sigma]3 == 1/(a1*a2*a3) + 1/(a1*a2*a4) + 1/(a1*a3*a4) + 1/(a2*a3*a4) + 1/(a1*a2*a5) + 1/(a1*a3*a5) + 1/(a2*a3*a5) + 1/(a1*a4*a5) + 1/(a2*a4*a5) + 1/(a3*a4*a5) && \[Sigma]4 == 1/(a1*a2*a3*a4) + 1/(a1*a2*a3*a5) + 1/(a1*a2*a4*a5) + 1/(a1*a3*a4*a5) + 1/(a2*a3*a4*a5) && \[Sigma]5 == 1/(a1*a2*a3*a4*a5) && Element[a1 | a2 | a3 | a4 | a5 | \[Sigma]1 | \[Sigma]2 | \[Sigma]3 | \[Sigma]4 | \[Sigma]5 | c1 | c2 | c3 | c4 | c5 | c6 | c7 | c8 | c9 | c10 | c11 | c12 | c13 | c14 | c15 | c16 | c17 | c18 | c19 | c20 | c21 | c22 | c23 | c24 | c25 | d0 | d1 | d2 | d3 | d4 | d5 | d6 | d7 | d8 | d9 | d10 | d11 | d12 | d13 | z | q, Complexes] && 0 < Abs[q] < 1]

(* {"QHighOrder/QHighOrder", 2}*)
ConditionalExpression[-c + c*q + c*q^3 - c*q^6 + (2*c*(-1 + q)^2*q*QPochhammer[q^3, q^2])/((QPochhammer[-q, -q] - QPochhammer[q, -q])*QPochhammer[q^2, q^4]) == Inactive[ContinuedFractionK][c^2*q^(4*k)*(1 - q^(4*k))*(1 - q^(-1 + 4*k))*(1 - q^(1 + 4*k)), c - c*q^(1 + 4*k)*(1 + q + q^2) + c*q^(2 + 8*k)*(1 + q^4), {k, 1, Infinity}], Element[c | q, Complexes] && 0 < Abs[q] < 1]

(* {"QHighOrder/QHighOrder", 3}*)
ConditionalExpression[(b*c - d*e*q)*(a*(-(d^2*e^2*q^2) + b*c*d*e*(1 + d*q + e*q + q^2 - c*(1 + q)) + b^2*c*(c*(-1 + d + e) - d*e*(1 + q))) + d*e*(b^2*c + c*d*e*q + b*(c^2 + d*e*q - c*(d + e)*(1 + q)))) + (a*b^2*c^2*(b*c - d*e*q^2)*QHypergeometricPFQ[{a, b, c}, {d, e}, q, (d*e)/(a*b*c)]*QPochhammer[d, q]*QPochhammer[e, q]*QPochhammer[(d*e)/(a*b*c), q])/(QHypergeometricPFQ[{a*q, b, c}, {d*q, e*q}, q, (d*e*q)/(a*b*c)]*QPochhammer[d*q, q]*QPochhammer[e*q, q]*QPochhammer[(d*e*q)/(a*b*c), q]) == Inactive[ContinuedFractionK][c1*q^k + c2*q^(2*k) + c3*q^(3*k) + c4*q^(4*k) + c5*q^(5*k) + c6*q^(6*k) + c7*q^(7*k) + c8*q^(8*k) + c9*q^(9*k) + c10*q^(10*k) + c11*q^(11*k), d0 + d1*q^k + d2*q^(2*k) + d3*q^(3*k) + d4*q^(4*k) + d5*q^(5*k) + d6*q^(6*k), {k, 1, Infinity}], c1 == (a*b^6*c^6*d*e)/q && c2 == -((b^5*c^5*d*e*(a^2*b*c + d*e + a*(b + c)*(d + e)))/q) && c3 == (b^4*c^4*d*e*(a^2*b*c*(b + c)*(d + e)*q^2 + (b + c)*d*e*(d + e)*q^2 + a*(b^2*d*e*q^2 + c^2*d*e*q^2 + b*c*(d^2*q^2 + e^2*q^2 - d*e*(1 - 3*q^2 + q^4)))))/q^3 && c4 == -((b^3*c^3*d*e*(-(a*b*c*(b + c)*d*e*(d + e)*(-1 + q^2)^2) + a^2*b*c*(b^2*d*e*q^2 + c^2*d*e*q^2 + b*c*(d^2*q^2 + e^2*q^2 - d*e*(-1 + q^2)^2)) + d*e*(b^2*d*e*q^2 + c^2*d*e*q^2 + b*c*(d^2*q^2 + e^2*q^2 - d*e*(-1 + q^2)^2))))/q^3) && c5 == -((b^3*c^3*d^2*e^2*(a^2*b*c*(b + c)*(d + e)*(1 - q^2 + q^4) + (b + c)*d*e*(d + e)*(1 - q^2 + q^4) + a*(b^2*d*e*(1 - q^2 + q^4) + c^2*d*e*(1 - q^2 + q^4) + b*c*(d^2*(1 - q^2 + q^4) + e^2*(1 - q^2 + q^4) + d*e*(3 - 4*q^2 + 3*q^4)))))/q^3) && c6 == (b^2*c^2*d^2*e^2*(2*a*b*c*(b + c)*d*e*(d + e)*(1 - q^2 + q^4) + a^2*b*c*(b^2*d*e*(1 + q^4) + c^2*d*e*(1 + q^4) + b*c*(d^2*(1 + q^4) + e^2*(1 + q^4) + 2*d*e*(1 - q^2 + q^4))) + d*e*(b^2*d*e*(1 + q^4) + c^2*d*e*(1 + q^4) + b*c*(d^2*(1 + q^4) + e^2*(1 + q^4) + 2*d*e*(1 - q^2 + q^4)))))/q^3 && c7 == -((b^2*c^2*d^3*e^3*(a^2*b*c*(b + c)*(d + e)*(1 - q^2 + q^4) + (b + c)*d*e*(d + e)*(1 - q^2 + q^4) + a*(b^2*d*e*(1 - q^2 + q^4) + c^2*d*e*(1 - q^2 + q^4) + b*c*(d^2*(1 - q^2 + q^4) + e^2*(1 - q^2 + q^4) + d*e*(3 - 4*q^2 + 3*q^4)))))/q^3) && c8 == -((b*c*d^3*e^3*(-(a*b*c*(b + c)*d*e*(d + e)*(-1 + q^2)^2) + a^2*b*c*(b^2*d*e*q^2 + c^2*d*e*q^2 + b*c*(d^2*q^2 + e^2*q^2 - d*e*(-1 + q^2)^2)) + d*e*(b^2*d*e*q^2 + c^2*d*e*q^2 + b*c*(d^2*q^2 + e^2*q^2 - d*e*(-1 + q^2)^2))))/q^3) && c9 == (b*c*d^4*e^4*(a^2*b*c*(b + c)*(d + e)*q^2 + (b + c)*d*e*(d + e)*q^2 + a*(b^2*d*e*q^2 + c^2*d*e*q^2 + b*c*(d^2*q^2 + e^2*q^2 - d*e*(1 - 3*q^2 + q^4)))))/q^3 && c10 == -((b*c*d^5*e^5*(a^2*b*c + d*e + a*(b + c)*(d + e)))/q) && c11 == (a*b*c*d^6*e^6)/q && d0 == a*b^3*c^3 && d1 == -(b^2*c^2*((b + c)*d*e + a*b*c*(d + e))) && d2 == b^2*c^2*d*e*((d + e)*(1 + q) + a*(-1 + b + c - q + b*q + c*q - q^2)) && d3 == 0 && d4 == b*c*d^2*e^2*q*((-d - e)*(1 + q) - a*(-1 + b + c - q + b*q + c*q - q^2)) && d5 == d^2*e^2*((b + c)*d*e + a*b*c*(d + e))*q^2 && d6 == -(a*d^3*e^3*q^3) && Element[a | b | c | d | e | c1 | c2 | c3 | c4 | c5 | c6 | c7 | c8 | c9 | c10 | c11 | d0 | d1 | d2 | d3 | d4 | d5 | d6 | q, Complexes] && 0 < Abs[q] < 1]

(* {"QHighOrder/QHighOrder", 4}*)
ConditionalExpression[-c - c/q - 2*c*q + (c*(1 + q)^2)/(q*QHypergeometricPFQ[{q, q^2}, {-q, -q^3}, q^2, q]) == Inactive[ContinuedFractionK][c^2*q^(-2 + 2*k)*(1 - q^(4*k))*(1 + q^(-2 + 2*k)), c + c*q^(1 + 2*k) + c*q^(-1 + 4*k)*(1 + q^2), {k, 1, Infinity}], Element[c | q, Complexes] && 0 < Abs[q] < 1]

(* {"QHypergeometricPFQ", 1}*)
ConditionalExpression[QHypergeometricPFQ[{a, b}, {b*q}, q, z] == (a*b*QPochhammer[b, q]*QPochhammer[(a*z)/q, q])/(QPochhammer[b*q, q]*QPochhammer[z, q]*((a*b*(q*(1 + b*(-1 + z)) - a*z))/q + a*b*Inactive[ContinuedFractionK][a*b*q^(-2 + k)*z - b^2*q^(-3 + 4*k)*z^2 - b*q^(-3 + 2*k)*z*(b*q + a*(q + z)) + b*q^(-3 + 3*k)*z*(a*z + b*(q + z)), 1 + b*q^(-1 + 2*k)*(1 + q)*z - q^(-1 + k)*(a*z + b*(q + z)), {k, 1, Infinity}])), Element[a | b | q | z, Complexes] && 0 < Abs[q] < 1]

(* {"QHypergeometricPFQ", 2}*)
ConditionalExpression[QHypergeometricPFQ[{a, q}, {c*q}, q, z] == (1 + Inactive[ContinuedFractionK][(((1 - (-1)^k)*q^((-1 + k)/2)*(1 - a*q^((-1 + k)/2))*(-1 + c*q^((-1 + k)/2)))/(2*(1 - c*q^(-1 + k))*(1 - c*q^k)) + ((1 + (-1)^k)*q^(-1 + k/2)*(1 - q^(k/2))*(-a + c*q^(k/2)))/(2*(1 - c*q^(-1 + k))*(1 - c*q^k)))*z, 1, {k, 1, Infinity}])^(-1), Element[a | c | q | z, Complexes] && 0 < Abs[q] < 1]

(* {"QHypergeometricPFQ", 3}*)
ConditionalExpression[QHypergeometricPFQ[{a, q}, {c*q}, q, z] == (1 - c)/(1 - c + Inactive[ContinuedFractionK][((1 - (-1)^k)*q^((-1 + k)/2)*(1 - a*q^((-1 + k)/2))*(-1 + c*q^((-1 + k)/2))*z)/2 + ((1 + (-1)^k)*q^((-2 + k)/2)*(1 - q^(k/2))*(-a + c*q^(k/2))*z)/2, 1 - c*q^k, {k, 1, Infinity}]), Element[a | c | q | z, Complexes] && 0 < Abs[q] < 1 && Abs[z] < Abs[q/a]]

(* {"QHypergeometricPFQ", 4}*)
ConditionalExpression[QHypergeometricPFQ[{a, q}, {c*q}, q, z] == ((1 - c)*q)/((1 - c)*q + (a - q)*z + Inactive[ContinuedFractionK][q*(1 - q^k)*(-a + c*q^k)*z, q*(1 - c*q^k) + (a - q^(1 + k))*z, {k, 1, Infinity}]), Element[a | c | q | z, Complexes] && 0 < Abs[q] < 1 && Abs[z] < Abs[q/a]]

(* {"QHypergeometricPFQ", 5}*)
ConditionalExpression[QHypergeometricPFQ[{a, q}, {c*q}, q, z] == (1 - c)/(1 - c - z + a*z + Inactive[ContinuedFractionK][q^(-1 + k)*(1 - a*q^(-1 + k))*(1 - q^k)*z*(c - a*q^(-1 + k)*z), 1 - c*q^k + q^k*(-1 + (a*(-1 + q^k + q^(1 + k)))/q)*z, {k, 1, Infinity}]), Element[a | c | q | z, Complexes] && 0 < Abs[q] < 1]

(* {"QHypergeometricPFQ", 6}*)
ConditionalExpression[QHypergeometricPFQ[{q, q}, {q^2}, q, z] == (1 + Inactive[ContinuedFractionK][(-((1 - (-1)^k)*q^((-1 + k)/2)*(1 - q^((1 + k)/2)))/(2*(1 - q^k)*(1 + q^((1 + k)/2))) - ((1 + (-1)^k)*q^(k/2)*(1 - q^(k/2)))/(2*(1 + q^(k/2))*(1 - q^(1 + k))))*z, 1, {k, 1, Infinity}])^(-1), Element[q | z, Complexes] && 0 < Abs[q] < 1]

(* {"QHypergeometricPFQ", 7}*)
ConditionalExpression[QHypergeometricPFQ[{0, a*q}, {a*q^2}, q, z] == (1 - a*q)/(QPochhammer[z, q]*(1 + Inactive[ContinuedFractionK][-((1 + (-1)^k)*a*q^(k/2)*(1 - q^(k/2))*z)/2 - ((1 - (-1)^k)*a*q^((1 + k)/2)*(1 - q^((-1 + k)/2)*z))/2, 1, {k, 1, 100}])), Element[a | q | z, Complexes] && 0 < Abs[q] < 1]

(* {"QHypergeometricPFQ", 8}*)
ConditionalExpression[QHypergeometricPFQ[{a}, {a*q}, q, z] == (q*QPochhammer[a, q]*QPochhammer[z/q, q])/(QPochhammer[a*q, q]*(q - a*q - z + q*Inactive[ContinuedFractionK][-(a*q^(-2 + k)*(-1 + q^k)*z), 1 - a*q^k - q^(-1 + k)*z, {k, 1, Infinity}])), Element[a | q | z, Complexes] && 0 < Abs[q] < 1]

(* {"QHypergeometricPFQ", 9}*)
ConditionalExpression[QHypergeometricPFQ[{a, q}, {c, (a*q*z)/c}, q, z] == -((c*q*QPochhammer[c/q, q]*QPochhammer[(a*z)/c, q])/(QPochhammer[c, q]*QPochhammer[(a*q*z)/c, q]*(c^2 + a*q*z - c*q*(1 + z) - c*q*Inactive[ContinuedFractionK][-((q^(-3 + k)*(-1 + q^k)*(a*q - c*q^k)*z*(c - q^k*z))/c), 1 + q^(-1 + 2*k)*(1 + q)*z - (q^(-1 + k)*(c^2 + c*z + a*q*z))/c, {k, 1, 100}]))), Element[a | c | q | z, Complexes] && 0 < Abs[q] < 1]

(* {"QHypergeometricPFQ", 10}*)
ConditionalExpression[QHypergeometricPFQ[{q, q^2}, {-q, -q^3}, q^2, q] == (1 + q)^2/(1 + q + 2*q^2 + q*Inactive[ContinuedFractionK][-(q^(-4 + 2*k)*(-1 + q^(2*k))*(1 + q^(2*k))*(q^2 + q^(2*k))), 1 + q^(1 + 2*k) + q^(-1 + 4*k) + q^(1 + 4*k), {k, 1, Infinity}]), Element[q, Complexes] && 0 < Abs[q] < 1]

(* {"QHypergeometricPFQRatio", 1}*)
ConditionalExpression[QHypergeometricPFQ[{}, {b}, q, z]/QHypergeometricPFQ[{}, {b}, q, q*z] == 1 + Inactive[ContinuedFractionK][q^(-1 + k)*z, 1 - b*q^(-1 + k), {k, 1, Infinity}], Element[b | q | z, Complexes] && 0 < Abs[q] < 1]

(* {"QHypergeometricPFQRatio", 2}*)
ConditionalExpression[QHypergeometricPFQ[{}, {b}, q, z]/QHypergeometricPFQ[{}, {b}, q, q*z] == 1 + Inactive[ContinuedFractionK][((1 - (-1)^k)*q^(-1 + k)*z)/2 + ((1 + (-1)^k)*(-(b*q^(-1 + k/2)) + q^(-1 + k)*z))/2, 1, {k, 1, Infinity}], Element[b | q | z, Complexes] && 0 < Abs[q] < 1]

(* {"QHypergeometricPFQRatio", 3}*)
ConditionalExpression[QHypergeometricPFQ[{a}, {b}, q, z]/QHypergeometricPFQ[{a}, {b}, q, q*z] == 1 + Inactive[ContinuedFractionK][((1 + (-1)^k)*(-(b*q^(-1 + k/2)) + a*q^(-1 + k)*z))/2 + ((1 - (-1)^k)*(a*q^(-1 + k)*z - q^(-1 + (1 + k)/2)*z))/2, 1, {k, 1, Infinity}], Element[a | b | q | z, Complexes] && 0 < Abs[q] < 1 && Abs[z] < Abs[q^2/z]]

(* {"QHypergeometricPFQRatio", 4}*)
ConditionalExpression[QHypergeometricPFQ[{a}, {b}, q, z]/QHypergeometricPFQ[{a}, {b*q}, q, q*z] == (QPochhammer[b*q, q]*(1 - b - z + Inactive[ContinuedFractionK][-(q^(-1 + k)*(-a + b*q^k)*r^2*z), r - q^k*r*(b + z), {k, 1, Infinity}]/r))/QPochhammer[b, q], Element[a | b | z | q, Complexes] && 0 < Abs[q] < 1]

(* {"QHypergeometricPFQRatio", 5}*)
ConditionalExpression[QHypergeometricPFQ[{0}, {-q}, q, z]/QHypergeometricPFQ[{0}, {-q}, q, q*z] == 1 + Inactive[ContinuedFractionK][((1 + (-1)^k)*q^(-1 + (3*k)/2)*z)/2 - ((1 - (-1)^k)*q^(-1 + (1 + k)/2)*z)/2, 1 + q^k, {k, 1, Infinity}], Element[q | z, Complexes] && 0 < Abs[q] < 1]

(* {"QHypergeometricPFQRatio", 6}*)
ConditionalExpression[QHypergeometricPFQ[{a, b}, {c}, q, z]/QHypergeometricPFQ[{a, b}, {c}, q, q*z] == 1 + Inactive[ContinuedFractionK][((1 - (-1)^k)*(1 - a*q^((-1 + k)/2))*(1 - b*q^((-1 + k)/2))*z)/2 + ((1 + (-1)^k)*(-(c*q^(-1 + k/2)) + a*b*q^(-1 + k)*z))/2, (1 + (-1)^k)/2 + ((1 - (-1)^k)*(1 - z))/2, {k, 1, Infinity}], Element[a | b | c | q | z, Complexes] && 0 < Abs[q] < 1]

(* {"QHypergeometricPFQRatio", 7}*)
ConditionalExpression[QHypergeometricPFQ[{a, b}, {c}, q, z]/QHypergeometricPFQ[{a, b}, {c*q}, q, q*z] == (QPochhammer[c*q, q]*QPochhammer[q*z, q]*(a*b*(-b + c + c*q)*z + a*(b - b*c - a*b*z) + a*b*Inactive[ContinuedFractionK][-((q^(-1 + k)*(-a + c*q^k)*(-b + c*q^k)*z*(-(a*b) + a*b*q^k*z))/(a*b)), (a*b*q^k*(-b + c*q^k*(1 + q))*z + a*(b - b*c*q^k - a*b*q^k*z))/(a*b), {k, 1, Infinity}]))/(a*b*QPochhammer[c, q]*QPochhammer[z, q]), Element[a | b | c | z | q, Complexes] && 0 < Abs[q] < 1]

(* {"QHypergeometricPFQRatio", 8}*)
ConditionalExpression[QHypergeometricPFQ[{a, b}, {c}, q, z]/QHypergeometricPFQ[{a, b*q}, {c*q}, q, z] == 1 + Inactive[ContinuedFractionK][(((1 - (-1)^k)*q^((-1 + k)/2)*(1 - a*q^((-1 + k)/2))*(-b + c*q^((-1 + k)/2)))/(2*(1 - c*q^(-1 + k))*(1 - c*q^k)) + ((1 + (-1)^k)*q^(-1 + k/2)*(1 - b*q^(k/2))*(-a + c*q^(k/2)))/(2*(1 - c*q^(-1 + k))*(1 - c*q^k)))*z, 1, {k, 1, Infinity}], Element[a | b | c | q | z, Complexes] && 0 < Abs[q] < 1]

(* {"QHypergeometricPFQRatio", 9}*)
ConditionalExpression[QHypergeometricPFQ[{a, b}, {c}, q, z]/QHypergeometricPFQ[{a, b*q}, {c*q}, q, z] == 1 + Inactive[ContinuedFractionK][(-((-1 + (-1)^k)*q^((-1 + k)/2)*(Sqrt[q] - a*q^(k/2))*(b*Sqrt[q] - c*q^(k/2)))/(2*(q - c*q^k)*(-1 + c*q^k)) - ((1 + (-1)^k)*q^(k/2)*(-1 + b*q^(k/2))*(-a + c*q^(k/2)))/(2*(-1 + c*q^k)*(-q + c*q^k)))*z, 1, {k, 1, Infinity}], Element[a | b | c | q | z, Complexes] && 0 < Abs[q] < 1]

(* {"QHypergeometricPFQRatio", 10}*)
ConditionalExpression[QHypergeometricPFQ[{a, b}, {c}, q, z]/QHypergeometricPFQ[{a, b*q}, {c*q}, q, z] == 1 + Inactive[ContinuedFractionK][((1 - (-1)^k)*q^((-1 + k)/2)*(1 - a*q^((-1 + k)/2))*(-b + c*q^((-1 + k)/2))*z)/2 + ((1 + (-1)^k)*q^((-2 + k)/2)*(1 - b*q^(k/2))*(-a + c*q^(k/2))*z)/2, 1 - c*q^k, {k, 1, Infinity}]/(1 - c), Element[a | b | c | q | z, Complexes] && Abs[z] < 1 && 0 < Abs[q] < 1 && Abs[q/a] < 1]

(* {"QHypergeometricPFQRatio", 11}*)
ConditionalExpression[QHypergeometricPFQ[{a, b}, {c}, q, z]/QHypergeometricPFQ[{a, b*q}, {c*q}, q, z] == 1 + Inactive[ContinuedFractionK][(-((-1 + (-1)^k)*q^((-1 + k)/2)*(Sqrt[q] - a*q^(k/2))*(b*Sqrt[q] - c*q^(k/2)))/(2*(q - c*q^k)*(-1 + c*q^k)) - ((1 + (-1)^k)*q^(k/2)*(-1 + b*q^(k/2))*(-a + c*q^(k/2)))/(2*(-1 + c*q^k)*(-q + c*q^k)))*z, 1, {k, 1, Infinity}], Element[a | b | c | q | z, Complexes] && 0 < Abs[q] < 1]

(* {"QHypergeometricPFQRatio", 12}*)
ConditionalExpression[QHypergeometricPFQ[{a, b}, {c}, q, z]/QHypergeometricPFQ[{a, b*q}, {c*q}, q, z] == 1 + ((a - b*q)*z)/((1 - c)*q) + (a*z*Inactive[ContinuedFractionK][(q^3*(-1 + b*q^k)*(a - c*q^k))/(a^2*z), (q*(q + a*z - q^(1 + k)*(c + b*z)))/(a*z), {k, 1, Infinity}])/((1 - c)*q^2), Element[a | b | c | q | z, Complexes] && 0 < Abs[q] < 1 && 0 < Abs[q/a] < 1 && 0 < Abs[z] < Abs[q/a]]

(* {"QHypergeometricPFQRatio", 13}*)
ConditionalExpression[QHypergeometricPFQ[{a, b}, {c}, q, z]/QHypergeometricPFQ[{a*q, b*q}, {c*q}, q, z] == 1 - ((a + b - a*b - a*b*q)*z)/(1 - c) + Inactive[ContinuedFractionK][q^(-1 + k)*(1 - a*q^k)*(1 - b*q^k)*(c*z - a*b*q^k*z^2), 1 - c*q^k - q^k*(a + b - a*b*q^k - a*b*q^(1 + k))*z, {k, 1, Infinity}]/(1 - c), Element[a | b | c | q | z, Complexes] && 0 < Abs[q] < 1 && 0 < Abs[q/a] < 1 && 0 < Abs[z] < Abs[q/a]]

(* {"QHypergeometricPFQRatio", 14}*)
ConditionalExpression[QHypergeometricPFQ[{a*q, b}, {c}, q, z]/QHypergeometricPFQ[{a, b}, {c}, q, q*z] == 1 + Inactive[ContinuedFractionK][((1 + (-1)^k)*(a - c*q^(-1 + k/2)))/2 + ((1 - (-1)^k)*(1 - b*q^((-1 + k)/2))*z)/2, (1 + (-1)^k)/2 + ((1 - (-1)^k)*(1 - a)*(1 - z))/2, {k, 1, Infinity}], Element[a | b | c | q | z, Complexes] && 0 < Abs[q] < 1 && Abs[z/((1 - a)*(1 - z))] < 1/4 && Abs[a/((1 - a)*(1 - z))] < 1/4]

(* {"QHypergeometricPFQRatio", 15}*)
ConditionalExpression[QHypergeometricPFQ[{a, a*q}, {q^3}, q^2, z]/QHypergeometricPFQ[{a, a/q}, {q}, q^2, z] == (1 - q)/(1 - q + Inactive[ContinuedFractionK][q^(-1 + k)*(Sqrt[z] - a*q^(-1 + k)*Sqrt[z])*(-((a*Sqrt[z])/q) + q^k*Sqrt[z]), 1 - q^(1 + 2*k), {k, 1, Infinity}]), Element[a | q | z, Complexes] && 0 < Abs[q] < 1 && Abs[z/((1 - a)*(1 - z))] < 1/4 && Abs[a/((1 - a)*(1 - z))] < 1/4]

(* {"QHypergeometricPFQRatio", 16}*)
ConditionalExpression[Undefined, Element[a | b | c | e | Undefined | q, Complexes] && 0 < Abs[q] < 1]

(* {"QHypergeometricPFQRatio", 17}*)
ConditionalExpression[QHypergeometricPFQ[{a, b, c}, {d, e}, q, (d*e)/(a*b*c)]/QHypergeometricPFQ[{a*q, b, c}, {d*q, e*q}, q, (d*e*q)/(a*b*c)] == (QPochhammer[d*q, q]*QPochhammer[e*q, q]*QPochhammer[(d*e*q)/(a*b*c), q]*((-(b*c) + d*e*q)*(a*(-(d^2*e^2*q^2) + b*c*d*e*(1 + d*q + e*q + q^2 - c*(1 + q)) + b^2*c*(c*(-1 + d + e) - d*e*(1 + q))) + d*e*(b^2*c + c*d*e*q + b*(c^2 + d*e*q - c*(d + e)*(1 + q)))) + a*b^2*c^2*(b*c - d*e*q^2)*Inactive[ContinuedFractionK][(d*e*q^(-3 + k)*(-1 + a*q^k)*(-b + d*q^k)*(-c + d*q^k)*(-b + e*q^k)*(-c + e*q^k)*(-(a*b*c) + d*e*q^k)*(-(b*c*q^2) + d*e*q^(2*k)))/(a^2*b^3*c^3*(-(b*c) + d*e*q^(2*k))), -(((b*c - d*e*q^(1 + 2*k))*(d*e*q^k*(b^2*c + c*d*e*q^(1 + 2*k) + b*(c^2 + d*e*q^(1 + 2*k) - c*(d + e)*q^k*(1 + q))) + a*(-(d^2*e^2*q^(2 + 4*k)) + b*c*d*e*q^(2*k)*(1 + q^2 + (d + e)*q^(1 + k) - c*(1 + q)) + b^2*c*(-(d*e*q^(2*k)*(1 + q)) + c*(-1 + d*q^k + e*q^k)))))/(a*b^2*c^2*(b*c - d*e*q^(2 + 2*k)))), {k, 1, Infinity}]))/(a*b^2*c^2*(b*c - d*e*q^2)*QPochhammer[d, q]*QPochhammer[e, q]*QPochhammer[(d*e)/(a*b*c), q]), Element[a | b | c | d | e | q, Complexes] && 0 < Abs[q] < 1]

(* {"QHypergeometricPFQRatio", 18}*)
ConditionalExpression[Undefined, Element[a | b | c | e | Undefined | q, Complexes] && 0 < Abs[q] < 1]

(* {"QHypergeometricPFQRatio", 19}*)
ConditionalExpression[QHypergeometricPFQ[{a, b, c, -(Sqrt[c]*q), Sqrt[c]*q}, {0, 0, 0, -Sqrt[c], Sqrt[c], (c*q)/a, (c*q)/b}, q, (c^2*q^2)/(a*b)]/QHypergeometricPFQ[{a, b, c*q, -(Sqrt[c]*q^(3/2)), Sqrt[c]*q^(3/2)}, {0, 0, 0, -(Sqrt[c]*Sqrt[q]), Sqrt[c]*Sqrt[q], (c*q^2)/a, (c*q^2)/b}, q, (c^2*q^4)/(a*b)] == (QPochhammer[c*q, q]*QPochhammer[(c*q^2)/a, q]*QPochhammer[(c*q^2)/b, q]*(1 + (-a^(-1) - b^(-1))*c*q + Inactive[ContinuedFractionK][c*q^k*(1 - (c*q^(1 + k))/(a*b)), 1 + (-a^(-1) - b^(-1))*c*q^(1 + k), {k, 1, Infinity}]))/(QPochhammer[(c*q)/a, q]*QPochhammer[(c*q)/b, q]*QPochhammer[c*q^2, q]), Element[a | b | c | q, Complexes] && 0 < Abs[q] < 1]

(* {"QHypergeometricPFQRatio", 20}*)
ConditionalExpression[QHypergeometricPFQ[{a}, {d, e}, q, (d*e)/a]/QHypergeometricPFQ[{a*q}, {d*q, e*q}, q, (d*e*q)/a] == (QPochhammer[d*q, q]*QPochhammer[e*q, q]*(a - a*d - a*e + (a*d*e*(-1 + a*q))/(-a + a*d*q + a*e*q - a*Inactive[ContinuedFractionK][-((d*e*q^k*(-1 + a*q^(1 + k)))/a), 1 - d*q^(1 + k) - e*q^(1 + k), {k, 1, Infinity}])))/(a*QPochhammer[d, q]*QPochhammer[e, q]), Element[a | d | e | q, Complexes] && 0 < Abs[q] < 1]

(* {"QHypergeometricPFQRatio", 21}*)
ConditionalExpression[QHypergeometricPFQ[{a, b}, {d, e}, q, (d*e)/(a*b)]/QHypergeometricPFQ[{a*q, b}, {d*q, e*q}, q, (d*e*q)/(a*b)] == (QPochhammer[d*q, q]*QPochhammer[e*q, q]*(-(d*e) - a*(b*(-1 + d + e) - d*e*(1 + q)) + (a*b*c*d*e*(-1 + a*q)*(b - d*q)*(b - e*q))/((b*c - d*e*q^2)*(d*e*q + a*(-(d*e*q^2*(1 + q)) + b*(-1 + d*q + e*q)) - a*Inactive[ContinuedFractionK][-((d*e*q^k*(-1 + a*q^(1 + k))*(-b + d*q^(1 + k))*(-b + e*q^(1 + k)))/a), b - ((d*e + a*b*(d + e))*q^(1 + k))/a + d*e*q^(2 + 2*k)*(1 + q), {k, 1, Infinity}]))))/(a*b*QPochhammer[d, q]*QPochhammer[e, q]), Element[a | b | d | e | q, Complexes] && 0 < Abs[q] < 1]

(* {"QHypergeometricPFQRatio", 22}*)
ConditionalExpression[QHypergeometricPFQ[{a, b}, {c, (a*b*z)/c}, q, z]/QHypergeometricPFQ[{a, b*q}, {c*q, (a*b*q*z)/c}, q, q*z] == -((QPochhammer[c*q, q]*QPochhammer[(a*b*q*z)/c, q]*(c^2 + a*b*z - c*(1 + (-1 + b + b*q)*z) - c*Inactive[ContinuedFractionK][(q^(-1 + k)*(-1 + b*q^k)*(-a + c*q^k)*z*(c - b*q^k*z))/c, 1 + b*q^(2*k)*(1 + q)*z - (q^k*(c^2 + a*b*z + c*z))/c, {k, 1, Infinity}]))/(c*QPochhammer[c, q]*QPochhammer[(a*b*z)/c, q])), Element[a | b | c | z | q, Complexes] && 0 < Abs[q] < 1]

(* {"QHypergeometricPFQRatio", 23}*)
ConditionalExpression[QHypergeometricPFQ[{z, q*Sqrt[z], -(q*Sqrt[z]), Symbol[Subscript["a", 1]], Symbol[Subscript["a", 2]], Symbol[Subscript["a", 3]], Symbol[Subscript["a", 4]], Symbol[Subscript["a", 5]]}, {Sqrt[z], -Sqrt[z], (q*z)/Symbol[Subscript["a", 1]], (q*z)/Symbol[Subscript["a", 2]], (q*z)/Symbol[Subscript["a", 3]], (q*z)/Symbol[Subscript["a", 4]], (q*z)/Symbol[Subscript["a", 5]]}, q, (q^2*z^2)/(Symbol[Subscript["a", 1]]*Symbol[Subscript["a", 2]]*Symbol[Subscript["a", 3]]*Symbol[Subscript["a", 4]]*Symbol[Subscript["a", 5]])]/QHypergeometricPFQ[{q*z, q*Sqrt[q*z], -(q*Sqrt[q*z]), Symbol[Subscript["a", 1]], Symbol[Subscript["a", 2]], Symbol[Subscript["a", 3]], Symbol[Subscript["a", 4]], Symbol[Subscript["a", 5]]}, {Sqrt[q*z], -Sqrt[q*z], (q^2*z)/Symbol[Subscript["a", 1]], (q^2*z)/Symbol[Subscript["a", 2]], (q^2*z)/Symbol[Subscript["a", 3]], (q^2*z)/Symbol[Subscript["a", 4]], (q^2*z)/Symbol[Subscript["a", 5]]}, q, (q^4*z^2)/(Symbol[Subscript["a", 1]]*Symbol[Subscript["a", 2]]*Symbol[Subscript["a", 3]]*Symbol[Subscript["a", 4]]*Symbol[Subscript["a", 5]])] == (QPochhammer[q*z, q]*QPochhammer[(q^2*z)/Symbol[Subscript["a", 1]], q]*QPochhammer[(q^2*z)/Symbol[Subscript["a", 2]], q]*QPochhammer[(q^2*z)/Symbol[Subscript["a", 3]], q]*QPochhammer[(q^2*z)/Symbol[Subscript["a", 4]], q]*QPochhammer[(q^2*z)/Symbol[Subscript["a", 5]], q]*((-(q*z*(1 - (q^3*z^2)/(Symbol[Subscript["a", 1]]*Symbol[Subscript["a", 2]]*Symbol[Subscript["a", 3]]*Symbol[Subscript["a", 4]]*Symbol[Subscript["a", 5]]))*(1 - q^4*z^2*(1/(Symbol[Subscript["a", 1]]*Symbol[Subscript["a", 2]]*Symbol[Subscript["a", 3]]*Symbol[Subscript["a", 4]]) + 1/(Symbol[Subscript["a", 1]]*Symbol[Subscript["a", 2]]*Symbol[Subscript["a", 3]]*Symbol[Subscript["a", 5]]) + 1/(Symbol[Subscript["a", 1]]*Symbol[Subscript["a", 2]]*Symbol[Subscript["a", 4]]*Symbol[Subscript["a", 5]]) + 1/(Symbol[Subscript["a", 1]]*Symbol[Subscript["a", 3]]*Symbol[Subscript["a", 4]]*Symbol[Subscript["a", 5]]) + 1/(Symbol[Subscript["a", 2]]*Symbol[Subscript["a", 3]]*Symbol[Subscript["a", 4]]*Symbol[Subscript["a", 5]])) - (q^10*z^5)/(Symbol[Subscript["a", 1]]^2*Symbol[Subscript["a", 2]]^2*Symbol[Subscript["a", 3]]^2*Symbol[Subscript["a", 4]]^2*Symbol[Subscript["a", 5]]^2) + (q^6*z^3*(Symbol[Subscript["a", 1]]^(-1) + Symbol[Subscript["a", 2]]^(-1) + Symbol[Subscript["a", 3]]^(-1) + Symbol[Subscript["a", 4]]^(-1) + Symbol[Subscript["a", 5]]^(-1)))/(Symbol[Subscript["a", 1]]*Symbol[Subscript["a", 2]]*Symbol[Subscript["a", 3]]*Symbol[Subscript["a", 4]]*Symbol[Subscript["a", 5]]))*(Symbol[Subscript["a", 1]]^(-1) + Symbol[Subscript["a", 2]]^(-1) + Symbol[Subscript["a", 3]]^(-1) + Symbol[Subscript["a", 4]]^(-1) - q*z*(1/(Symbol[Subscript["a", 1]]*Symbol[Subscript["a", 2]]*Symbol[Subscript["a", 3]]) + 1/(Symbol[Subscript["a", 1]]*Symbol[Subscript["a", 2]]*Symbol[Subscript["a", 4]]) + 1/(Symbol[Subscript["a", 1]]*Symbol[Subscript["a", 3]]*Symbol[Subscript["a", 4]]) + 1/(Symbol[Subscript["a", 2]]*Symbol[Subscript["a", 3]]*Symbol[Subscript["a", 4]]) + 1/(Symbol[Subscript["a", 1]]*Symbol[Subscript["a", 2]]*Symbol[Subscript["a", 5]]) + 1/(Symbol[Subscript["a", 1]]*Symbol[Subscript["a", 3]]*Symbol[Subscript["a", 5]]) + 1/(Symbol[Subscript["a", 2]]*Symbol[Subscript["a", 3]]*Symbol[Subscript["a", 5]]) + 1/(Symbol[Subscript["a", 1]]*Symbol[Subscript["a", 4]]*Symbol[Subscript["a", 5]]) + 1/(Symbol[Subscript["a", 2]]*Symbol[Subscript["a", 4]]*Symbol[Subscript["a", 5]]) + 1/(Symbol[Subscript["a", 3]]*Symbol[Subscript["a", 4]]*Symbol[Subscript["a", 5]])) + Symbol[Subscript["a", 5]]^(-1) + (q^3*z^3*(1/(Symbol[Subscript["a", 1]]*Symbol[Subscript["a", 2]]) + 1/(Symbol[Subscript["a", 1]]*Symbol[Subscript["a", 3]]) + 1/(Symbol[Subscript["a", 2]]*Symbol[Subscript["a", 3]]) + 1/(Symbol[Subscript["a", 1]]*Symbol[Subscript["a", 4]]) + 1/(Symbol[Subscript["a", 2]]*Symbol[Subscript["a", 4]]) + 1/(Symbol[Subscript["a", 3]]*Symbol[Subscript["a", 4]]) + 1/(Symbol[Subscript["a", 1]]*Symbol[Subscript["a", 5]]) + 1/(Symbol[Subscript["a", 2]]*Symbol[Subscript["a", 5]]) + 1/(Symbol[Subscript["a", 3]]*Symbol[Subscript["a", 5]]) + 1/(Symbol[Subscript["a", 4]]*Symbol[Subscript["a", 5]])))/(Symbol[Subscript["a", 1]]*Symbol[Subscript["a", 2]]*Symbol[Subscript["a", 3]]*Symbol[Subscript["a", 4]]*Symbol[Subscript["a", 5]]) - (q^4*z^4*(1/(Symbol[Subscript["a", 1]]*Symbol[Subscript["a", 2]]*Symbol[Subscript["a", 3]]*Symbol[Subscript["a", 4]]) + 1/(Symbol[Subscript["a", 1]]*Symbol[Subscript["a", 2]]*Symbol[Subscript["a", 3]]*Symbol[Subscript["a", 5]]) + 1/(Symbol[Subscript["a", 1]]*Symbol[Subscript["a", 2]]*Symbol[Subscript["a", 4]]*Symbol[Subscript["a", 5]]) + 1/(Symbol[Subscript["a", 1]]*Symbol[Subscript["a", 3]]*Symbol[Subscript["a", 4]]*Symbol[Subscript["a", 5]]) + 1/(Symbol[Subscript["a", 2]]*Symbol[Subscript["a", 3]]*Symbol[Subscript["a", 4]]*Symbol[Subscript["a", 5]])))/(Symbol[Subscript["a", 1]]*Symbol[Subscript["a", 2]]*Symbol[Subscript["a", 3]]*Symbol[Subscript["a", 4]]*Symbol[Subscript["a", 5]]))) - (1 - q^2*z^2*(1/(Symbol[Subscript["a", 1]]*Symbol[Subscript["a", 2]]*Symbol[Subscript["a", 3]]*Symbol[Subscript["a", 4]]) + 1/(Symbol[Subscript["a", 1]]*Symbol[Subscript["a", 2]]*Symbol[Subscript["a", 3]]*Symbol[Subscript["a", 5]]) + 1/(Symbol[Subscript["a", 1]]*Symbol[Subscript["a", 2]]*Symbol[Subscript["a", 4]]*Symbol[Subscript["a", 5]]) + 1/(Symbol[Subscript["a", 1]]*Symbol[Subscript["a", 3]]*Symbol[Subscript["a", 4]]*Symbol[Subscript["a", 5]]) + 1/(Symbol[Subscript["a", 2]]*Symbol[Subscript["a", 3]]*Symbol[Subscript["a", 4]]*Symbol[Subscript["a", 5]])) - (q^5*z^5)/(Symbol[Subscript["a", 1]]^2*Symbol[Subscript["a", 2]]^2*Symbol[Subscript["a", 3]]^2*Symbol[Subscript["a", 4]]^2*Symbol[Subscript["a", 5]]^2) + (q^3*z^3*(Symbol[Subscript["a", 1]]^(-1) + Symbol[Subscript["a", 2]]^(-1) + Symbol[Subscript["a", 3]]^(-1) + Symbol[Subscript["a", 4]]^(-1) + Symbol[Subscript["a", 5]]^(-1)))/(Symbol[Subscript["a", 1]]*Symbol[Subscript["a", 2]]*Symbol[Subscript["a", 3]]*Symbol[Subscript["a", 4]]*Symbol[Subscript["a", 5]]))*(q*z*(Symbol[Subscript["a", 1]]^(-1) + Symbol[Subscript["a", 2]]^(-1) + Symbol[Subscript["a", 3]]^(-1) + Symbol[Subscript["a", 4]]^(-1) + Symbol[Subscript["a", 5]]^(-1)) - q^3*z^2*(1/(Symbol[Subscript["a", 1]]*Symbol[Subscript["a", 2]]*Symbol[Subscript["a", 3]]) + 1/(Symbol[Subscript["a", 1]]*Symbol[Subscript["a", 2]]*Symbol[Subscript["a", 4]]) + 1/(Symbol[Subscript["a", 1]]*Symbol[Subscript["a", 3]]*Symbol[Subscript["a", 4]]) + 1/(Symbol[Subscript["a", 2]]*Symbol[Subscript["a", 3]]*Symbol[Subscript["a", 4]]) + 1/(Symbol[Subscript["a", 1]]*Symbol[Subscript["a", 2]]*Symbol[Subscript["a", 5]]) + 1/(Symbol[Subscript["a", 1]]*Symbol[Subscript["a", 3]]*Symbol[Subscript["a", 5]]) + 1/(Symbol[Subscript["a", 2]]*Symbol[Subscript["a", 3]]*Symbol[Subscript["a", 5]]) + 1/(Symbol[Subscript["a", 1]]*Symbol[Subscript["a", 4]]*Symbol[Subscript["a", 5]]) + 1/(Symbol[Subscript["a", 2]]*Symbol[Subscript["a", 4]]*Symbol[Subscript["a", 5]]) + 1/(Symbol[Subscript["a", 3]]*Symbol[Subscript["a", 4]]*Symbol[Subscript["a", 5]])) + q^3*z^2*(1/(Symbol[Subscript["a", 1]]*Symbol[Subscript["a", 2]]*Symbol[Subscript["a", 3]]*Symbol[Subscript["a", 4]]) + 1/(Symbol[Subscript["a", 1]]*Symbol[Subscript["a", 2]]*Symbol[Subscript["a", 3]]*Symbol[Subscript["a", 5]]) + 1/(Symbol[Subscript["a", 1]]*Symbol[Subscript["a", 2]]*Symbol[Subscript["a", 4]]*Symbol[Subscript["a", 5]]) + 1/(Symbol[Subscript["a", 1]]*Symbol[Subscript["a", 3]]*Symbol[Subscript["a", 4]]*Symbol[Subscript["a", 5]]) + 1/(Symbol[Subscript["a", 2]]*Symbol[Subscript["a", 3]]*Symbol[Subscript["a", 4]]*Symbol[Subscript["a", 5]])) - q^7*z^4*(1/(Symbol[Subscript["a", 1]]*Symbol[Subscript["a", 2]]*Symbol[Subscript["a", 3]]*Symbol[Subscript["a", 4]]) + 1/(Symbol[Subscript["a", 1]]*Symbol[Subscript["a", 2]]*Symbol[Subscript["a", 3]]*Symbol[Subscript["a", 5]]) + 1/(Symbol[Subscript["a", 1]]*Symbol[Subscript["a", 2]]*Symbol[Subscript["a", 4]]*Symbol[Subscript["a", 5]]) + 1/(Symbol[Subscript["a", 1]]*Symbol[Subscript["a", 3]]*Symbol[Subscript["a", 4]]*Symbol[Subscript["a", 5]]) + 1/(Symbol[Subscript["a", 2]]*Symbol[Subscript["a", 3]]*Symbol[Subscript["a", 4]]*Symbol[Subscript["a", 5]]))^2 + (-1 - q*z*(Symbol[Subscript["a", 1]]^(-1) + Symbol[Subscript["a", 2]]^(-1) + Symbol[Subscript["a", 3]]^(-1) + Symbol[Subscript["a", 4]]^(-1) + Symbol[Subscript["a", 5]]^(-1)) + (q^4*z^3)/(Symbol[Subscript["a", 1]]*Symbol[Subscript["a", 2]]*Symbol[Subscript["a", 3]]*Symbol[Subscript["a", 4]]*Symbol[Subscript["a", 5]]))*(1 - q^4*z^2*(1/(Symbol[Subscript["a", 1]]*Symbol[Subscript["a", 2]]*Symbol[Subscript["a", 3]]*Symbol[Subscript["a", 4]]) + 1/(Symbol[Subscript["a", 1]]*Symbol[Subscript["a", 2]]*Symbol[Subscript["a", 3]]*Symbol[Subscript["a", 5]]) + 1/(Symbol[Subscript["a", 1]]*Symbol[Subscript["a", 2]]*Symbol[Subscript["a", 4]]*Symbol[Subscript["a", 5]]) + 1/(Symbol[Subscript["a", 1]]*Symbol[Subscript["a", 3]]*Symbol[Subscript["a", 4]]*Symbol[Subscript["a", 5]]) + 1/(Symbol[Subscript["a", 2]]*Symbol[Subscript["a", 3]]*Symbol[Subscript["a", 4]]*Symbol[Subscript["a", 5]])) - (q^10*z^5)/(Symbol[Subscript["a", 1]]^2*Symbol[Subscript["a", 2]]^2*Symbol[Subscript["a", 3]]^2*Symbol[Subscript["a", 4]]^2*Symbol[Subscript["a", 5]]^2) + (q^6*z^3*(Symbol[Subscript["a", 1]]^(-1) + Symbol[Subscript["a", 2]]^(-1) + Symbol[Subscript["a", 3]]^(-1) + Symbol[Subscript["a", 4]]^(-1) + Symbol[Subscript["a", 5]]^(-1)))/(Symbol[Subscript["a", 1]]*Symbol[Subscript["a", 2]]*Symbol[Subscript["a", 3]]*Symbol[Subscript["a", 4]]*Symbol[Subscript["a", 5]])) - (q^5*z^3*(Symbol[Subscript["a", 1]]^(-1) + Symbol[Subscript["a", 2]]^(-1) + Symbol[Subscript["a", 3]]^(-1) + Symbol[Subscript["a", 4]]^(-1) + Symbol[Subscript["a", 5]]^(-1)))/(Symbol[Subscript["a", 1]]*Symbol[Subscript["a", 2]]*Symbol[Subscript["a", 3]]*Symbol[Subscript["a", 4]]*Symbol[Subscript["a", 5]]) + (q^7*z^4*(1/(Symbol[Subscript["a", 1]]*Symbol[Subscript["a", 2]]) + 1/(Symbol[Subscript["a", 1]]*Symbol[Subscript["a", 3]]) + 1/(Symbol[Subscript["a", 2]]*Symbol[Subscript["a", 3]]) + 1/(Symbol[Subscript["a", 1]]*Symbol[Subscript["a", 4]]) + 1/(Symbol[Subscript["a", 2]]*Symbol[Subscript["a", 4]]) + 1/(Symbol[Subscript["a", 3]]*Symbol[Subscript["a", 4]]) + 1/(Symbol[Subscript["a", 1]]*Symbol[Subscript["a", 5]]) + 1/(Symbol[Subscript["a", 2]]*Symbol[Subscript["a", 5]]) + 1/(Symbol[Subscript["a", 3]]*Symbol[Subscript["a", 5]]) + 1/(Symbol[Subscript["a", 4]]*Symbol[Subscript["a", 5]])))/(Symbol[Subscript["a", 1]]*Symbol[Subscript["a", 2]]*Symbol[Subscript["a", 3]]*Symbol[Subscript["a", 4]]*Symbol[Subscript["a", 5]]) - (q^11*z^6*(1/(Symbol[Subscript["a", 1]]*Symbol[Subscript["a", 2]]) + 1/(Symbol[Subscript["a", 1]]*Symbol[Subscript["a", 3]]) + 1/(Symbol[Subscript["a", 2]]*Symbol[Subscript["a", 3]]) + 1/(Symbol[Subscript["a", 1]]*Symbol[Subscript["a", 4]]) + 1/(Symbol[Subscript["a", 2]]*Symbol[Subscript["a", 4]]) + 1/(Symbol[Subscript["a", 3]]*Symbol[Subscript["a", 4]]) + 1/(Symbol[Subscript["a", 1]]*Symbol[Subscript["a", 5]]) + 1/(Symbol[Subscript["a", 2]]*Symbol[Subscript["a", 5]]) + 1/(Symbol[Subscript["a", 3]]*Symbol[Subscript["a", 5]]) + 1/(Symbol[Subscript["a", 4]]*Symbol[Subscript["a", 5]])))/(Symbol[Subscript["a", 1]]*Symbol[Subscript["a", 2]]*Symbol[Subscript["a", 3]]*Symbol[Subscript["a", 4]]*Symbol[Subscript["a", 5]]) + (q^7*z^4*(1/(Symbol[Subscript["a", 1]]*Symbol[Subscript["a", 2]]*Symbol[Subscript["a", 3]]) + 1/(Symbol[Subscript["a", 1]]*Symbol[Subscript["a", 2]]*Symbol[Subscript["a", 4]]) + 1/(Symbol[Subscript["a", 1]]*Symbol[Subscript["a", 3]]*Symbol[Subscript["a", 4]]) + 1/(Symbol[Subscript["a", 2]]*Symbol[Subscript["a", 3]]*Symbol[Subscript["a", 4]]) + 1/(Symbol[Subscript["a", 1]]*Symbol[Subscript["a", 2]]*Symbol[Subscript["a", 5]]) + 1/(Symbol[Subscript["a", 1]]*Symbol[Subscript["a", 3]]*Symbol[Subscript["a", 5]]) + 1/(Symbol[Subscript["a", 2]]*Symbol[Subscript["a", 3]]*Symbol[Subscript["a", 5]]) + 1/(Symbol[Subscript["a", 1]]*Symbol[Subscript["a", 4]]*Symbol[Subscript["a", 5]]) + 1/(Symbol[Subscript["a", 2]]*Symbol[Subscript["a", 4]]*Symbol[Subscript["a", 5]]) + 1/(Symbol[Subscript["a", 3]]*Symbol[Subscript["a", 4]]*Symbol[Subscript["a", 5]])))/(Symbol[Subscript["a", 1]]*Symbol[Subscript["a", 2]]*Symbol[Subscript["a", 3]]*Symbol[Subscript["a", 4]]*Symbol[Subscript["a", 5]]) - (q^9*z^5*(1/(Symbol[Subscript["a", 1]]*Symbol[Subscript["a", 2]]*Symbol[Subscript["a", 3]]*Symbol[Subscript["a", 4]]) + 1/(Symbol[Subscript["a", 1]]*Symbol[Subscript["a", 2]]*Symbol[Subscript["a", 3]]*Symbol[Subscript["a", 5]]) + 1/(Symbol[Subscript["a", 1]]*Symbol[Subscript["a", 2]]*Symbol[Subscript["a", 4]]*Symbol[Subscript["a", 5]]) + 1/(Symbol[Subscript["a", 1]]*Symbol[Subscript["a", 3]]*Symbol[Subscript["a", 4]]*Symbol[Subscript["a", 5]]) + 1/(Symbol[Subscript["a", 2]]*Symbol[Subscript["a", 3]]*Symbol[Subscript["a", 4]]*Symbol[Subscript["a", 5]])))/(Symbol[Subscript["a", 1]]*Symbol[Subscript["a", 2]]*Symbol[Subscript["a", 3]]*Symbol[Subscript["a", 4]]*Symbol[Subscript["a", 5]]) + (q^9*z^5*(Symbol[Subscript["a", 1]]^(-1) + Symbol[Subscript["a", 2]]^(-1) + Symbol[Subscript["a", 3]]^(-1) + Symbol[Subscript["a", 4]]^(-1) + Symbol[Subscript["a", 5]]^(-1))*(1/(Symbol[Subscript["a", 1]]*Symbol[Subscript["a", 2]]*Symbol[Subscript["a", 3]]*Symbol[Subscript["a", 4]]) + 1/(Symbol[Subscript["a", 1]]*Symbol[Subscript["a", 2]]*Symbol[Subscript["a", 3]]*Symbol[Subscript["a", 5]]) + 1/(Symbol[Subscript["a", 1]]*Symbol[Subscript["a", 2]]*Symbol[Subscript["a", 4]]*Symbol[Subscript["a", 5]]) + 1/(Symbol[Subscript["a", 1]]*Symbol[Subscript["a", 3]]*Symbol[Subscript["a", 4]]*Symbol[Subscript["a", 5]]) + 1/(Symbol[Subscript["a", 2]]*Symbol[Subscript["a", 3]]*Symbol[Subscript["a", 4]]*Symbol[Subscript["a", 5]])))/(Symbol[Subscript["a", 1]]*Symbol[Subscript["a", 2]]*Symbol[Subscript["a", 3]]*Symbol[Subscript["a", 4]]*Symbol[Subscript["a", 5]])))/((1 - (q^2*z^2)/(Symbol[Subscript["a", 1]]*Symbol[Subscript["a", 2]]*Symbol[Subscript["a", 3]]*Symbol[Subscript["a", 4]]*Symbol[Subscript["a", 5]]))*(1 - (q^3*z^2)/(Symbol[Subscript["a", 1]]*Symbol[Subscript["a", 2]]*Symbol[Subscript["a", 3]]*Symbol[Subscript["a", 4]]*Symbol[Subscript["a", 5]]))*(1 - q^4*z^2*(1/(Symbol[Subscript["a", 1]]*Symbol[Subscript["a", 2]]*Symbol[Subscript["a", 3]]*Symbol[Subscript["a", 4]]) + 1/(Symbol[Subscript["a", 1]]*Symbol[Subscript["a", 2]]*Symbol[Subscript["a", 3]]*Symbol[Subscript["a", 5]]) + 1/(Symbol[Subscript["a", 1]]*Symbol[Subscript["a", 2]]*Symbol[Subscript["a", 4]]*Symbol[Subscript["a", 5]]) + 1/(Symbol[Subscript["a", 1]]*Symbol[Subscript["a", 3]]*Symbol[Subscript["a", 4]]*Symbol[Subscript["a", 5]]) + 1/(Symbol[Subscript["a", 2]]*Symbol[Subscript["a", 3]]*Symbol[Subscript["a", 4]]*Symbol[Subscript["a", 5]])) - (q^10*z^5)/(Symbol[Subscript["a", 1]]^2*Symbol[Subscript["a", 2]]^2*Symbol[Subscript["a", 3]]^2*Symbol[Subscript["a", 4]]^2*Symbol[Subscript["a", 5]]^2) + (q^6*z^3*(Symbol[Subscript["a", 1]]^(-1) + Symbol[Subscript["a", 2]]^(-1) + Symbol[Subscript["a", 3]]^(-1) + Symbol[Subscript["a", 4]]^(-1) + Symbol[Subscript["a", 5]]^(-1)))/(Symbol[Subscript["a", 1]]*Symbol[Subscript["a", 2]]*Symbol[Subscript["a", 3]]*Symbol[Subscript["a", 4]]*Symbol[Subscript["a", 5]]))) + Inactive[ContinuedFractionK][(q^k*z*(1 - (q^(1 + k)*z)/(Symbol[Subscript["a", 1]]*Symbol[Subscript["a", 2]]))*(1 - (q^(1 + k)*z)/(Symbol[Subscript["a", 1]]*Symbol[Subscript["a", 3]]))*(1 - (q^(1 + k)*z)/(Symbol[Subscript["a", 2]]*Symbol[Subscript["a", 3]]))*(1 - (q^(1 + k)*z)/(Symbol[Subscript["a", 1]]*Symbol[Subscript["a", 4]]))*(1 - (q^(1 + k)*z)/(Symbol[Subscript["a", 2]]*Symbol[Subscript["a", 4]]))*(1 - (q^(1 + k)*z)/(Symbol[Subscript["a", 3]]*Symbol[Subscript["a", 4]]))*(1 - (q^(1 + k)*z)/(Symbol[Subscript["a", 1]]*Symbol[Subscript["a", 5]]))*(1 - (q^(1 + k)*z)/(Symbol[Subscript["a", 2]]*Symbol[Subscript["a", 5]]))*(1 - (q^(1 + k)*z)/(Symbol[Subscript["a", 3]]*Symbol[Subscript["a", 5]]))*(1 - (q^(1 + k)*z)/(Symbol[Subscript["a", 4]]*Symbol[Subscript["a", 5]]))*(1 - q^(2*k)*z^2*(1/(Symbol[Subscript["a", 1]]*Symbol[Subscript["a", 2]]*Symbol[Subscript["a", 3]]*Symbol[Subscript["a", 4]]) + 1/(Symbol[Subscript["a", 1]]*Symbol[Subscript["a", 2]]*Symbol[Subscript["a", 3]]*Symbol[Subscript["a", 5]]) + 1/(Symbol[Subscript["a", 1]]*Symbol[Subscript["a", 2]]*Symbol[Subscript["a", 4]]*Symbol[Subscript["a", 5]]) + 1/(Symbol[Subscript["a", 1]]*Symbol[Subscript["a", 3]]*Symbol[Subscript["a", 4]]*Symbol[Subscript["a", 5]]) + 1/(Symbol[Subscript["a", 2]]*Symbol[Subscript["a", 3]]*Symbol[Subscript["a", 4]]*Symbol[Subscript["a", 5]])) - (q^(5*k)*z^5)/(Symbol[Subscript["a", 1]]^2*Symbol[Subscript["a", 2]]^2*Symbol[Subscript["a", 3]]^2*Symbol[Subscript["a", 4]]^2*Symbol[Subscript["a", 5]]^2) + (q^(3*k)*z^3*(Symbol[Subscript["a", 1]]^(-1) + Symbol[Subscript["a", 2]]^(-1) + Symbol[Subscript["a", 3]]^(-1) + Symbol[Subscript["a", 4]]^(-1) + Symbol[Subscript["a", 5]]^(-1)))/(Symbol[Subscript["a", 1]]*Symbol[Subscript["a", 2]]*Symbol[Subscript["a", 3]]*Symbol[Subscript["a", 4]]*Symbol[Subscript["a", 5]])))/((1 - (q^(2*k)*z^2)/(Symbol[Subscript["a", 1]]*Symbol[Subscript["a", 2]]*Symbol[Subscript["a", 3]]*Symbol[Subscript["a", 4]]*Symbol[Subscript["a", 5]]))*(1 - (q^(1 + 2*k)*z^2)/(Symbol[Subscript["a", 1]]*Symbol[Subscript["a", 2]]*Symbol[Subscript["a", 3]]*Symbol[Subscript["a", 4]]*Symbol[Subscript["a", 5]]))*(1 - q^(2 + 2*k)*z^2*(1/(Symbol[Subscript["a", 1]]*Symbol[Subscript["a", 2]]*Symbol[Subscript["a", 3]]*Symbol[Subscript["a", 4]]) + 1/(Symbol[Subscript["a", 1]]*Symbol[Subscript["a", 2]]*Symbol[Subscript["a", 3]]*Symbol[Subscript["a", 5]]) + 1/(Symbol[Subscript["a", 1]]*Symbol[Subscript["a", 2]]*Symbol[Subscript["a", 4]]*Symbol[Subscript["a", 5]]) + 1/(Symbol[Subscript["a", 1]]*Symbol[Subscript["a", 3]]*Symbol[Subscript["a", 4]]*Symbol[Subscript["a", 5]]) + 1/(Symbol[Subscript["a", 2]]*Symbol[Subscript["a", 3]]*Symbol[Subscript["a", 4]]*Symbol[Subscript["a", 5]])) - (q^(5 + 5*k)*z^5)/(Symbol[Subscript["a", 1]]^2*Symbol[Subscript["a", 2]]^2*Symbol[Subscript["a", 3]]^2*Symbol[Subscript["a", 4]]^2*Symbol[Subscript["a", 5]]^2) + (q^(3 + 3*k)*z^3*(Symbol[Subscript["a", 1]]^(-1) + Symbol[Subscript["a", 2]]^(-1) + Symbol[Subscript["a", 3]]^(-1) + Symbol[Subscript["a", 4]]^(-1) + Symbol[Subscript["a", 5]]^(-1)))/(Symbol[Subscript["a", 1]]*Symbol[Subscript["a", 2]]*Symbol[Subscript["a", 3]]*Symbol[Subscript["a", 4]]*Symbol[Subscript["a", 5]]))), (-(q^(1 + k)*z*(1 - (q^(3 + 2*k)*z^2)/(Symbol[Subscript["a", 1]]*Symbol[Subscript["a", 2]]*Symbol[Subscript["a", 3]]*Symbol[Subscript["a", 4]]*Symbol[Subscript["a", 5]]))*(1 - q^(4 + 2*k)*z^2*(1/(Symbol[Subscript["a", 1]]*Symbol[Subscript["a", 2]]*Symbol[Subscript["a", 3]]*Symbol[Subscript["a", 4]]) + 1/(Symbol[Subscript["a", 1]]*Symbol[Subscript["a", 2]]*Symbol[Subscript["a", 3]]*Symbol[Subscript["a", 5]]) + 1/(Symbol[Subscript["a", 1]]*Symbol[Subscript["a", 2]]*Symbol[Subscript["a", 4]]*Symbol[Subscript["a", 5]]) + 1/(Symbol[Subscript["a", 1]]*Symbol[Subscript["a", 3]]*Symbol[Subscript["a", 4]]*Symbol[Subscript["a", 5]]) + 1/(Symbol[Subscript["a", 2]]*Symbol[Subscript["a", 3]]*Symbol[Subscript["a", 4]]*Symbol[Subscript["a", 5]])) - (q^(10 + 5*k)*z^5)/(Symbol[Subscript["a", 1]]^2*Symbol[Subscript["a", 2]]^2*Symbol[Subscript["a", 3]]^2*Symbol[Subscript["a", 4]]^2*Symbol[Subscript["a", 5]]^2) + (q^(6 + 3*k)*z^3*(Symbol[Subscript["a", 1]]^(-1) + Symbol[Subscript["a", 2]]^(-1) + Symbol[Subscript["a", 3]]^(-1) + Symbol[Subscript["a", 4]]^(-1) + Symbol[Subscript["a", 5]]^(-1)))/(Symbol[Subscript["a", 1]]*Symbol[Subscript["a", 2]]*Symbol[Subscript["a", 3]]*Symbol[Subscript["a", 4]]*Symbol[Subscript["a", 5]]))*(Symbol[Subscript["a", 1]]^(-1) + Symbol[Subscript["a", 2]]^(-1) + Symbol[Subscript["a", 3]]^(-1) + Symbol[Subscript["a", 4]]^(-1) - q^(1 + k)*z*(1/(Symbol[Subscript["a", 1]]*Symbol[Subscript["a", 2]]*Symbol[Subscript["a", 3]]) + 1/(Symbol[Subscript["a", 1]]*Symbol[Subscript["a", 2]]*Symbol[Subscript["a", 4]]) + 1/(Symbol[Subscript["a", 1]]*Symbol[Subscript["a", 3]]*Symbol[Subscript["a", 4]]) + 1/(Symbol[Subscript["a", 2]]*Symbol[Subscript["a", 3]]*Symbol[Subscript["a", 4]]) + 1/(Symbol[Subscript["a", 1]]*Symbol[Subscript["a", 2]]*Symbol[Subscript["a", 5]]) + 1/(Symbol[Subscript["a", 1]]*Symbol[Subscript["a", 3]]*Symbol[Subscript["a", 5]]) + 1/(Symbol[Subscript["a", 2]]*Symbol[Subscript["a", 3]]*Symbol[Subscript["a", 5]]) + 1/(Symbol[Subscript["a", 1]]*Symbol[Subscript["a", 4]]*Symbol[Subscript["a", 5]]) + 1/(Symbol[Subscript["a", 2]]*Symbol[Subscript["a", 4]]*Symbol[Subscript["a", 5]]) + 1/(Symbol[Subscript["a", 3]]*Symbol[Subscript["a", 4]]*Symbol[Subscript["a", 5]])) + Symbol[Subscript["a", 5]]^(-1) + (q^(3 + 3*k)*z^3*(1/(Symbol[Subscript["a", 1]]*Symbol[Subscript["a", 2]]) + 1/(Symbol[Subscript["a", 1]]*Symbol[Subscript["a", 3]]) + 1/(Symbol[Subscript["a", 2]]*Symbol[Subscript["a", 3]]) + 1/(Symbol[Subscript["a", 1]]*Symbol[Subscript["a", 4]]) + 1/(Symbol[Subscript["a", 2]]*Symbol[Subscript["a", 4]]) + 1/(Symbol[Subscript["a", 3]]*Symbol[Subscript["a", 4]]) + 1/(Symbol[Subscript["a", 1]]*Symbol[Subscript["a", 5]]) + 1/(Symbol[Subscript["a", 2]]*Symbol[Subscript["a", 5]]) + 1/(Symbol[Subscript["a", 3]]*Symbol[Subscript["a", 5]]) + 1/(Symbol[Subscript["a", 4]]*Symbol[Subscript["a", 5]])))/(Symbol[Subscript["a", 1]]*Symbol[Subscript["a", 2]]*Symbol[Subscript["a", 3]]*Symbol[Subscript["a", 4]]*Symbol[Subscript["a", 5]]) - (q^(4 + 4*k)*z^4*(1/(Symbol[Subscript["a", 1]]*Symbol[Subscript["a", 2]]*Symbol[Subscript["a", 3]]*Symbol[Subscript["a", 4]]) + 1/(Symbol[Subscript["a", 1]]*Symbol[Subscript["a", 2]]*Symbol[Subscript["a", 3]]*Symbol[Subscript["a", 5]]) + 1/(Symbol[Subscript["a", 1]]*Symbol[Subscript["a", 2]]*Symbol[Subscript["a", 4]]*Symbol[Subscript["a", 5]]) + 1/(Symbol[Subscript["a", 1]]*Symbol[Subscript["a", 3]]*Symbol[Subscript["a", 4]]*Symbol[Subscript["a", 5]]) + 1/(Symbol[Subscript["a", 2]]*Symbol[Subscript["a", 3]]*Symbol[Subscript["a", 4]]*Symbol[Subscript["a", 5]])))/(Symbol[Subscript["a", 1]]*Symbol[Subscript["a", 2]]*Symbol[Subscript["a", 3]]*Symbol[Subscript["a", 4]]*Symbol[Subscript["a", 5]]))) - (1 - q^(2 + 2*k)*z^2*(1/(Symbol[Subscript["a", 1]]*Symbol[Subscript["a", 2]]*Symbol[Subscript["a", 3]]*Symbol[Subscript["a", 4]]) + 1/(Symbol[Subscript["a", 1]]*Symbol[Subscript["a", 2]]*Symbol[Subscript["a", 3]]*Symbol[Subscript["a", 5]]) + 1/(Symbol[Subscript["a", 1]]*Symbol[Subscript["a", 2]]*Symbol[Subscript["a", 4]]*Symbol[Subscript["a", 5]]) + 1/(Symbol[Subscript["a", 1]]*Symbol[Subscript["a", 3]]*Symbol[Subscript["a", 4]]*Symbol[Subscript["a", 5]]) + 1/(Symbol[Subscript["a", 2]]*Symbol[Subscript["a", 3]]*Symbol[Subscript["a", 4]]*Symbol[Subscript["a", 5]])) - (q^(5 + 5*k)*z^5)/(Symbol[Subscript["a", 1]]^2*Symbol[Subscript["a", 2]]^2*Symbol[Subscript["a", 3]]^2*Symbol[Subscript["a", 4]]^2*Symbol[Subscript["a", 5]]^2) + (q^(3 + 3*k)*z^3*(Symbol[Subscript["a", 1]]^(-1) + Symbol[Subscript["a", 2]]^(-1) + Symbol[Subscript["a", 3]]^(-1) + Symbol[Subscript["a", 4]]^(-1) + Symbol[Subscript["a", 5]]^(-1)))/(Symbol[Subscript["a", 1]]*Symbol[Subscript["a", 2]]*Symbol[Subscript["a", 3]]*Symbol[Subscript["a", 4]]*Symbol[Subscript["a", 5]]))*(q^(1 + k)*z*(Symbol[Subscript["a", 1]]^(-1) + Symbol[Subscript["a", 2]]^(-1) + Symbol[Subscript["a", 3]]^(-1) + Symbol[Subscript["a", 4]]^(-1) + Symbol[Subscript["a", 5]]^(-1)) - q^(3 + 2*k)*z^2*(1/(Symbol[Subscript["a", 1]]*Symbol[Subscript["a", 2]]*Symbol[Subscript["a", 3]]) + 1/(Symbol[Subscript["a", 1]]*Symbol[Subscript["a", 2]]*Symbol[Subscript["a", 4]]) + 1/(Symbol[Subscript["a", 1]]*Symbol[Subscript["a", 3]]*Symbol[Subscript["a", 4]]) + 1/(Symbol[Subscript["a", 2]]*Symbol[Subscript["a", 3]]*Symbol[Subscript["a", 4]]) + 1/(Symbol[Subscript["a", 1]]*Symbol[Subscript["a", 2]]*Symbol[Subscript["a", 5]]) + 1/(Symbol[Subscript["a", 1]]*Symbol[Subscript["a", 3]]*Symbol[Subscript["a", 5]]) + 1/(Symbol[Subscript["a", 2]]*Symbol[Subscript["a", 3]]*Symbol[Subscript["a", 5]]) + 1/(Symbol[Subscript["a", 1]]*Symbol[Subscript["a", 4]]*Symbol[Subscript["a", 5]]) + 1/(Symbol[Subscript["a", 2]]*Symbol[Subscript["a", 4]]*Symbol[Subscript["a", 5]]) + 1/(Symbol[Subscript["a", 3]]*Symbol[Subscript["a", 4]]*Symbol[Subscript["a", 5]])) + q^(3 + 2*k)*z^2*(1/(Symbol[Subscript["a", 1]]*Symbol[Subscript["a", 2]]*Symbol[Subscript["a", 3]]*Symbol[Subscript["a", 4]]) + 1/(Symbol[Subscript["a", 1]]*Symbol[Subscript["a", 2]]*Symbol[Subscript["a", 3]]*Symbol[Subscript["a", 5]]) + 1/(Symbol[Subscript["a", 1]]*Symbol[Subscript["a", 2]]*Symbol[Subscript["a", 4]]*Symbol[Subscript["a", 5]]) + 1/(Symbol[Subscript["a", 1]]*Symbol[Subscript["a", 3]]*Symbol[Subscript["a", 4]]*Symbol[Subscript["a", 5]]) + 1/(Symbol[Subscript["a", 2]]*Symbol[Subscript["a", 3]]*Symbol[Subscript["a", 4]]*Symbol[Subscript["a", 5]])) - q^(7 + 4*k)*z^4*(1/(Symbol[Subscript["a", 1]]*Symbol[Subscript["a", 2]]*Symbol[Subscript["a", 3]]*Symbol[Subscript["a", 4]]) + 1/(Symbol[Subscript["a", 1]]*Symbol[Subscript["a", 2]]*Symbol[Subscript["a", 3]]*Symbol[Subscript["a", 5]]) + 1/(Symbol[Subscript["a", 1]]*Symbol[Subscript["a", 2]]*Symbol[Subscript["a", 4]]*Symbol[Subscript["a", 5]]) + 1/(Symbol[Subscript["a", 1]]*Symbol[Subscript["a", 3]]*Symbol[Subscript["a", 4]]*Symbol[Subscript["a", 5]]) + 1/(Symbol[Subscript["a", 2]]*Symbol[Subscript["a", 3]]*Symbol[Subscript["a", 4]]*Symbol[Subscript["a", 5]]))^2 + (-1 - q^(1 + k)*z*(Symbol[Subscript["a", 1]]^(-1) + Symbol[Subscript["a", 2]]^(-1) + Symbol[Subscript["a", 3]]^(-1) + Symbol[Subscript["a", 4]]^(-1) + Symbol[Subscript["a", 5]]^(-1)) + (q^(4 + 3*k)*z^3)/(Symbol[Subscript["a", 1]]*Symbol[Subscript["a", 2]]*Symbol[Subscript["a", 3]]*Symbol[Subscript["a", 4]]*Symbol[Subscript["a", 5]]))*(1 - q^(4 + 2*k)*z^2*(1/(Symbol[Subscript["a", 1]]*Symbol[Subscript["a", 2]]*Symbol[Subscript["a", 3]]*Symbol[Subscript["a", 4]]) + 1/(Symbol[Subscript["a", 1]]*Symbol[Subscript["a", 2]]*Symbol[Subscript["a", 3]]*Symbol[Subscript["a", 5]]) + 1/(Symbol[Subscript["a", 1]]*Symbol[Subscript["a", 2]]*Symbol[Subscript["a", 4]]*Symbol[Subscript["a", 5]]) + 1/(Symbol[Subscript["a", 1]]*Symbol[Subscript["a", 3]]*Symbol[Subscript["a", 4]]*Symbol[Subscript["a", 5]]) + 1/(Symbol[Subscript["a", 2]]*Symbol[Subscript["a", 3]]*Symbol[Subscript["a", 4]]*Symbol[Subscript["a", 5]])) - (q^(10 + 5*k)*z^5)/(Symbol[Subscript["a", 1]]^2*Symbol[Subscript["a", 2]]^2*Symbol[Subscript["a", 3]]^2*Symbol[Subscript["a", 4]]^2*Symbol[Subscript["a", 5]]^2) + (q^(6 + 3*k)*z^3*(Symbol[Subscript["a", 1]]^(-1) + Symbol[Subscript["a", 2]]^(-1) + Symbol[Subscript["a", 3]]^(-1) + Symbol[Subscript["a", 4]]^(-1) + Symbol[Subscript["a", 5]]^(-1)))/(Symbol[Subscript["a", 1]]*Symbol[Subscript["a", 2]]*Symbol[Subscript["a", 3]]*Symbol[Subscript["a", 4]]*Symbol[Subscript["a", 5]])) - (q^(5 + 3*k)*z^3*(Symbol[Subscript["a", 1]]^(-1) + Symbol[Subscript["a", 2]]^(-1) + Symbol[Subscript["a", 3]]^(-1) + Symbol[Subscript["a", 4]]^(-1) + Symbol[Subscript["a", 5]]^(-1)))/(Symbol[Subscript["a", 1]]*Symbol[Subscript["a", 2]]*Symbol[Subscript["a", 3]]*Symbol[Subscript["a", 4]]*Symbol[Subscript["a", 5]]) + (q^(7 + 4*k)*z^4*(1/(Symbol[Subscript["a", 1]]*Symbol[Subscript["a", 2]]) + 1/(Symbol[Subscript["a", 1]]*Symbol[Subscript["a", 3]]) + 1/(Symbol[Subscript["a", 2]]*Symbol[Subscript["a", 3]]) + 1/(Symbol[Subscript["a", 1]]*Symbol[Subscript["a", 4]]) + 1/(Symbol[Subscript["a", 2]]*Symbol[Subscript["a", 4]]) + 1/(Symbol[Subscript["a", 3]]*Symbol[Subscript["a", 4]]) + 1/(Symbol[Subscript["a", 1]]*Symbol[Subscript["a", 5]]) + 1/(Symbol[Subscript["a", 2]]*Symbol[Subscript["a", 5]]) + 1/(Symbol[Subscript["a", 3]]*Symbol[Subscript["a", 5]]) + 1/(Symbol[Subscript["a", 4]]*Symbol[Subscript["a", 5]])))/(Symbol[Subscript["a", 1]]*Symbol[Subscript["a", 2]]*Symbol[Subscript["a", 3]]*Symbol[Subscript["a", 4]]*Symbol[Subscript["a", 5]]) - (q^(11 + 6*k)*z^6*(1/(Symbol[Subscript["a", 1]]*Symbol[Subscript["a", 2]]) + 1/(Symbol[Subscript["a", 1]]*Symbol[Subscript["a", 3]]) + 1/(Symbol[Subscript["a", 2]]*Symbol[Subscript["a", 3]]) + 1/(Symbol[Subscript["a", 1]]*Symbol[Subscript["a", 4]]) + 1/(Symbol[Subscript["a", 2]]*Symbol[Subscript["a", 4]]) + 1/(Symbol[Subscript["a", 3]]*Symbol[Subscript["a", 4]]) + 1/(Symbol[Subscript["a", 1]]*Symbol[Subscript["a", 5]]) + 1/(Symbol[Subscript["a", 2]]*Symbol[Subscript["a", 5]]) + 1/(Symbol[Subscript["a", 3]]*Symbol[Subscript["a", 5]]) + 1/(Symbol[Subscript["a", 4]]*Symbol[Subscript["a", 5]])))/(Symbol[Subscript["a", 1]]*Symbol[Subscript["a", 2]]*Symbol[Subscript["a", 3]]*Symbol[Subscript["a", 4]]*Symbol[Subscript["a", 5]]) + (q^(7 + 4*k)*z^4*(1/(Symbol[Subscript["a", 1]]*Symbol[Subscript["a", 2]]*Symbol[Subscript["a", 3]]) + 1/(Symbol[Subscript["a", 1]]*Symbol[Subscript["a", 2]]*Symbol[Subscript["a", 4]]) + 1/(Symbol[Subscript["a", 1]]*Symbol[Subscript["a", 3]]*Symbol[Subscript["a", 4]]) + 1/(Symbol[Subscript["a", 2]]*Symbol[Subscript["a", 3]]*Symbol[Subscript["a", 4]]) + 1/(Symbol[Subscript["a", 1]]*Symbol[Subscript["a", 2]]*Symbol[Subscript["a", 5]]) + 1/(Symbol[Subscript["a", 1]]*Symbol[Subscript["a", 3]]*Symbol[Subscript["a", 5]]) + 1/(Symbol[Subscript["a", 2]]*Symbol[Subscript["a", 3]]*Symbol[Subscript["a", 5]]) + 1/(Symbol[Subscript["a", 1]]*Symbol[Subscript["a", 4]]*Symbol[Subscript["a", 5]]) + 1/(Symbol[Subscript["a", 2]]*Symbol[Subscript["a", 4]]*Symbol[Subscript["a", 5]]) + 1/(Symbol[Subscript["a", 3]]*Symbol[Subscript["a", 4]]*Symbol[Subscript["a", 5]])))/(Symbol[Subscript["a", 1]]*Symbol[Subscript["a", 2]]*Symbol[Subscript["a", 3]]*Symbol[Subscript["a", 4]]*Symbol[Subscript["a", 5]]) - (q^(9 + 5*k)*z^5*(1/(Symbol[Subscript["a", 1]]*Symbol[Subscript["a", 2]]*Symbol[Subscript["a", 3]]*Symbol[Subscript["a", 4]]) + 1/(Symbol[Subscript["a", 1]]*Symbol[Subscript["a", 2]]*Symbol[Subscript["a", 3]]*Symbol[Subscript["a", 5]]) + 1/(Symbol[Subscript["a", 1]]*Symbol[Subscript["a", 2]]*Symbol[Subscript["a", 4]]*Symbol[Subscript["a", 5]]) + 1/(Symbol[Subscript["a", 1]]*Symbol[Subscript["a", 3]]*Symbol[Subscript["a", 4]]*Symbol[Subscript["a", 5]]) + 1/(Symbol[Subscript["a", 2]]*Symbol[Subscript["a", 3]]*Symbol[Subscript["a", 4]]*Symbol[Subscript["a", 5]])))/(Symbol[Subscript["a", 1]]*Symbol[Subscript["a", 2]]*Symbol[Subscript["a", 3]]*Symbol[Subscript["a", 4]]*Symbol[Subscript["a", 5]]) + (q^(9 + 5*k)*z^5*(Symbol[Subscript["a", 1]]^(-1) + Symbol[Subscript["a", 2]]^(-1) + Symbol[Subscript["a", 3]]^(-1) + Symbol[Subscript["a", 4]]^(-1) + Symbol[Subscript["a", 5]]^(-1))*(1/(Symbol[Subscript["a", 1]]*Symbol[Subscript["a", 2]]*Symbol[Subscript["a", 3]]*Symbol[Subscript["a", 4]]) + 1/(Symbol[Subscript["a", 1]]*Symbol[Subscript["a", 2]]*Symbol[Subscript["a", 3]]*Symbol[Subscript["a", 5]]) + 1/(Symbol[Subscript["a", 1]]*Symbol[Subscript["a", 2]]*Symbol[Subscript["a", 4]]*Symbol[Subscript["a", 5]]) + 1/(Symbol[Subscript["a", 1]]*Symbol[Subscript["a", 3]]*Symbol[Subscript["a", 4]]*Symbol[Subscript["a", 5]]) + 1/(Symbol[Subscript["a", 2]]*Symbol[Subscript["a", 3]]*Symbol[Subscript["a", 4]]*Symbol[Subscript["a", 5]])))/(Symbol[Subscript["a", 1]]*Symbol[Subscript["a", 2]]*Symbol[Subscript["a", 3]]*Symbol[Subscript["a", 4]]*Symbol[Subscript["a", 5]])))/((1 - (q^(2 + 2*k)*z^2)/(Symbol[Subscript["a", 1]]*Symbol[Subscript["a", 2]]*Symbol[Subscript["a", 3]]*Symbol[Subscript["a", 4]]*Symbol[Subscript["a", 5]]))*(1 - (q^(3 + 2*k)*z^2)/(Symbol[Subscript["a", 1]]*Symbol[Subscript["a", 2]]*Symbol[Subscript["a", 3]]*Symbol[Subscript["a", 4]]*Symbol[Subscript["a", 5]]))*(1 - q^(4 + 2*k)*z^2*(1/(Symbol[Subscript["a", 1]]*Symbol[Subscript["a", 2]]*Symbol[Subscript["a", 3]]*Symbol[Subscript["a", 4]]) + 1/(Symbol[Subscript["a", 1]]*Symbol[Subscript["a", 2]]*Symbol[Subscript["a", 3]]*Symbol[Subscript["a", 5]]) + 1/(Symbol[Subscript["a", 1]]*Symbol[Subscript["a", 2]]*Symbol[Subscript["a", 4]]*Symbol[Subscript["a", 5]]) + 1/(Symbol[Subscript["a", 1]]*Symbol[Subscript["a", 3]]*Symbol[Subscript["a", 4]]*Symbol[Subscript["a", 5]]) + 1/(Symbol[Subscript["a", 2]]*Symbol[Subscript["a", 3]]*Symbol[Subscript["a", 4]]*Symbol[Subscript["a", 5]])) - (q^(10 + 5*k)*z^5)/(Symbol[Subscript["a", 1]]^2*Symbol[Subscript["a", 2]]^2*Symbol[Subscript["a", 3]]^2*Symbol[Subscript["a", 4]]^2*Symbol[Subscript["a", 5]]^2) + (q^(6 + 3*k)*z^3*(Symbol[Subscript["a", 1]]^(-1) + Symbol[Subscript["a", 2]]^(-1) + Symbol[Subscript["a", 3]]^(-1) + Symbol[Subscript["a", 4]]^(-1) + Symbol[Subscript["a", 5]]^(-1)))/(Symbol[Subscript["a", 1]]*Symbol[Subscript["a", 2]]*Symbol[Subscript["a", 3]]*Symbol[Subscript["a", 4]]*Symbol[Subscript["a", 5]]))), {k, 1, Infinity}]))/(QPochhammer[q^2*z, q]*QPochhammer[(q*z)/Symbol[Subscript["a", 1]], q]*QPochhammer[(q*z)/Symbol[Subscript["a", 2]], q]*QPochhammer[(q*z)/Symbol[Subscript["a", 3]], q]*QPochhammer[(q*z)/Symbol[Subscript["a", 4]], q]*QPochhammer[(q*z)/Symbol[Subscript["a", 5]], q]), Element[Symbol[Subscript["a", 1]] | Symbol[Subscript["a", 2]] | Symbol[Subscript["a", 3]] | Symbol[Subscript["a", 4]] | Symbol[Subscript["a", 5]] | z | q, Complexes] && 0 < Abs[q] < 1]

(* {"QHypergeometricPFQRatio", 24}*)
ConditionalExpression[QHypergeometricPFQ[{}, {0}, q, z]/QHypergeometricPFQ[{}, {0}, q, q*z] == 1 + Inactive[ContinuedFractionK][q^(-1 + k)*z, 1, {k, 1, Infinity}], Element[q | z, Complexes] && 0 < Abs[q] < 1]

(* {"QHypergeometricPFQRatio", 25}*)
ConditionalExpression[QHypergeometricPFQ[{}, {0}, q, q*z]/QHypergeometricPFQ[{}, {0}, q, z] == (q*Inactive[ContinuedFractionK][q^(-2 + k)*z, 1, {k, 1, Infinity}])/z, Element[q | z, Complexes] && 0 < Abs[q] < 1]

(* {"QLinear/Constant", 1}*)
ConditionalExpression[-b + ((b + (2*e)/(b + Sqrt[b^2 + 4*e]))*QHypergeometricPFQ[{-(d/e)}, {0}, q, (-2*e*q)/(b^2 + 2*e + b*Sqrt[b^2 + 4*e])])/QHypergeometricPFQ[{-((d*q)/e)}, {0}, q, (-2*e*q)/(b^2 + 2*e + b*Sqrt[b^2 + 4*e])] == Inactive[ContinuedFractionK][e + d*q^k, b, {k, 1, Infinity}], Element[b | d | e | q, Complexes] && 0 < Abs[q] < 1]

(* {"QLinear/Constant", 2}*)
ConditionalExpression[(d*q*QHypergeometricPFQ[{}, {0}, q, (d*q^3)/b^2])/(b*QHypergeometricPFQ[{}, {0}, q, (d*q^2)/b^2]) == Inactive[ContinuedFractionK][d*q^k, b, {k, 1, Infinity}], Element[b | d | q, Complexes] && 0 < Abs[q] < 1]

(* {"QLinear/Constant", 3}*)
ConditionalExpression[(b*QPochhammer[q, q^5]*QPochhammer[q^4, q^5])/(QPochhammer[q^2, q^5]*QPochhammer[q^3, q^5]) == Inactive[ContinuedFractionK][b^2*q^(-1 + k), b, {k, 1, Infinity}], Element[b | q, Complexes] && 0 < Abs[q] < 1]

(* {"QLinear/Constant", 4}*)
ConditionalExpression[-(b/(1 + Sqrt[q])) + (b*QPochhammer[-q^(3/2), q^4]*QPochhammer[-q^(5/2), q^4])/((1 + Sqrt[q])*QPochhammer[-Sqrt[q], q^4]*QPochhammer[-q^(7/2), q^4]) == Inactive[ContinuedFractionK][-((b^2*Sqrt[q])/(1 + Sqrt[q])^2) + (b^2*q^k)/(1 + Sqrt[q])^2, b, {k, 1, Infinity}], Element[b | q, Complexes] && 0 < Abs[q] < 1]

(* {"QLinear/QLinear", 1}*)
ConditionalExpression[-a - b + ((a + b + (2*e)/(b + Sqrt[b^2 + 4*e]))*QHypergeometricPFQ[{-(d/e)}, {-((a*(b + Sqrt[b^2 + 4*e]))/(b^2 + 2*e + b*Sqrt[b^2 + 4*e]))}, q, (-2*e*q)/(b^2 + 2*e + b*Sqrt[b^2 + 4*e])])/QHypergeometricPFQ[{-((d*q)/e)}, {-((a*(b + Sqrt[b^2 + 4*e])*q)/(b^2 + 2*e + b*Sqrt[b^2 + 4*e]))}, q, (-2*e*q)/(b^2 + 2*e + b*Sqrt[b^2 + 4*e])] == Inactive[ContinuedFractionK][e + d*q^k, b + a*q^k, {k, 1, Infinity}], Element[a | b | d | e | q, Complexes] && 0 < Abs[q] < 1]

(* {"QLinear/QLinear", 2}*)
ConditionalExpression[-a - b + ((a + b)*QHypergeometricPFQ[{}, {-(a/b)}, q, (2*d*q)/(b^2 + b*Sqrt[b^2])])/QHypergeometricPFQ[{}, {-((a*q)/b)}, q, (2*d*q^2)/(b^2 + b*Sqrt[b^2])] == Inactive[ContinuedFractionK][d*q^k, b + a*q^k, {k, 1, Infinity}], Element[a | b | d | q, Complexes] && 0 < Abs[q] < 1]

(* {"QLinear/QLinear", 3}*)
ConditionalExpression[(d*q*QHypergeometricPFQ[{}, {0}, q/p^2, (d*q^3)/(a^2*p^5)])/(a*p*QHypergeometricPFQ[{}, {0}, q/p^2, (d*q^2)/(a^2*p^3)]) == Inactive[ContinuedFractionK][d*q^k, a*p^k, {k, 1, Infinity}], Element[a | d | p | q, Complexes] && 0 < Abs[q] < 1]

(* {"QLinear/QLinear", 4}*)
ConditionalExpression[-a + (a*(a^2 + d)*q*QPochhammer[-(d/(a^2*q)), q^2])/((d + a^2*q)*QPochhammer[-(d/a^2), q^2]) == Inactive[ContinuedFractionK][d*q^k, a + a*q^k, {k, 1, Infinity}], Element[a | d | q, Complexes] && 0 < Abs[q] < 1]

(* {"QLinear/QLinear", 5}*)
ConditionalExpression[-a + (a*QPochhammer[q, q^4]*QPochhammer[q^(3/2), q^4]*QPochhammer[q^(7/2), q^4])/(QPochhammer[Sqrt[q], q^4]*QPochhammer[q^(5/2), q^4]*QPochhammer[q^3, q^4]) == Inactive[ContinuedFractionK][a^2*q^(-1/2 + k), a + a*q^k, {k, 1, Infinity}], Element[a | q, Complexes] && 0 < Abs[q] < 1]

(* {"QLinear/QLinear", 6}*)
ConditionalExpression[-a + (a*QPochhammer[Sqrt[q], q^2])/QPochhammer[q^(3/2), q^2] == Inactive[ContinuedFractionK][-(a^2*q^(-1/2 + k)), a + a*q^k, {k, 1, Infinity}], Element[a | q, Complexes] && 0 < Abs[q] < 1]

(* {"QLinear/QLinear", 7}*)
ConditionalExpression[-b + b*Sqrt[q] + (b*q^(1/4)*(QPochhammer[-q^(1/4), Sqrt[q]] + QPochhammer[q^(1/4), Sqrt[q]]))/(QPochhammer[-q^(1/4), Sqrt[q]] - QPochhammer[q^(1/4), Sqrt[q]]) == Inactive[ContinuedFractionK][b^2*q^k, b - b*q^(1/2 + k), {k, 1, Infinity}], Element[b | q, Complexes] && 0 < Abs[q] < 1]

(* {"QLinear/QLinear", 8}*)
ConditionalExpression[-b - b*Sqrt[q] + (b*QPochhammer[q^(3/2), q^4]*QPochhammer[q^(5/2), q^4])/(QPochhammer[Sqrt[q], q^4]*QPochhammer[q^(7/2), q^4]) == Inactive[ContinuedFractionK][b^2*q^k, b + b*q^(1/2 + k), {k, 1, Infinity}], Element[b | q, Complexes] && 0 < Abs[q] < 1]

(* {"QLinear/QLinear", 9}*)
ConditionalExpression[-b - b*Sqrt[q] + (b*QPochhammer[q^(3/2), q^4]*QPochhammer[q^(5/2), q^4])/(QPochhammer[Sqrt[q], q^4]*QPochhammer[q^(7/2), q^4]) == Inactive[ContinuedFractionK][b^2*q^k, b + b*q^(1/2 + k), {k, 1, Infinity}], Element[b | q, Complexes] && 0 < Abs[q] < 1]

(* {"QPochhammerRatio", 1}*)
ConditionalExpression[QPochhammer[-q^2, q^2]/QPochhammer[-q, q^2] == (1 + Inactive[ContinuedFractionK][((1 - (-1)^k)*q^k)/2 + ((1 + (-1)^k)*(q^(k/2) + q^k))/2, 1, {k, 1, Infinity}])^(-1), Element[q, Complexes] && Abs[q] < 1]

(* {"QPochhammerRatio", 2}*)
ConditionalExpression[QPochhammer[q^2, q^3]/QPochhammer[q, q^3] == (1 + Inactive[ContinuedFractionK][-q^(-1 + 2*k), 1 + q^k, {k, 1, Infinity}])^(-1), Element[q, Complexes] && Abs[q] < 1]

(* {"QPochhammerRatio", 3}*)
ConditionalExpression[QPochhammer[q^3, q^4]/QPochhammer[q, q^4] == (1 + Inactive[ContinuedFractionK][-q^(-1 + 2*k), 1 + q^(2*k), {k, 1, Infinity}])^(-1), Element[q, Complexes] && Abs[q] < 1]

(* {"QPochhammerRatio", 4}*)
ConditionalExpression[QPochhammer[-(b/q), q^2]/QPochhammer[-b, q^2] == ((b + q)*(1 + Inactive[ContinuedFractionK][b*q^k, 1 + q^k, {k, 1, Infinity}]))/((1 + b)*q), Element[q, Complexes] && Abs[q] < 1]

(* {"QPochhammerRatio", 5}*)
ConditionalExpression[QPochhammer[-(b/q^3), q^4]/QPochhammer[-(b/q), q^4] == ((b + q^3)*(1 + Inactive[ContinuedFractionK][b*q^(-1 + 2*k), 1 + q^(2*k), {k, 1, Infinity}]))/(q^2*(b + q)), Element[q, Complexes] && Abs[q] < 1]

(* {"QPochhammerRatio", 6}*)
ConditionalExpression[QPochhammer[q, q^2]/QPochhammer[q^3, q^6]^3 == (1 + Inactive[ContinuedFractionK][q^k + q^(2*k), 1, {k, 1, Infinity}])^(-1), Element[q, Complexes] && Abs[q] < 1]

(* {"QPochhammerRatio", 7}*)
ConditionalExpression[(q^(1/5)*QPochhammer[q, q^5]*QPochhammer[q^4, q^5])/(QPochhammer[q^2, q^5]*QPochhammer[q^3, q^5]) == q^(1/5)*Inactive[ContinuedFractionK][q^(-1 + k), 1, {k, 1, Infinity}], Element[q, Complexes] && Abs[q] < 1]

(* {"QPochhammerRatio", 8}*)
ConditionalExpression[(QPochhammer[q, q^8]*QPochhammer[q^7, q^8])/(QPochhammer[q^3, q^8]*QPochhammer[q^5, q^8]) == (1 + Inactive[ContinuedFractionK][((1 + (-1)^k)*q^(2*k))/2 + ((1 - (-1)^k)*(q^k + q^(2*k)))/2, 1, {k, 1, Infinity}])^(-1), Element[q, Complexes] && Abs[q] < 1]

(* {"QPochhammerRatio", 9}*)
ConditionalExpression[(QPochhammer[a^2*q^3, q^4]*QPochhammer[b^2*q^3, q^4])/(QPochhammer[a^2*q, q^4]*QPochhammer[b^2*q, q^4]) == (1 - a*b + Inactive[ContinuedFractionK][(b - a*q^(-1 + 2*k))*(a - b*q^(-1 + 2*k)), (1 - a*b)*(1 + q^(2*k)), {k, 1, Infinity}])^(-1), Element[a | b | q, Complexes] && 0 < Abs[q] < 1]

(* {"QPochhammerRatio", 10}*)
ConditionalExpression[(QPochhammer[q^2, q^8]*QPochhammer[q^3, q^8]*QPochhammer[q^7, q^8])/(QPochhammer[q, q^8]*QPochhammer[q^5, q^8]*QPochhammer[q^6, q^8]) == 1 + Inactive[ContinuedFractionK][q^(-1 + 2*k), 1 + q^(2*k), {k, 1, Infinity}], Element[q, Complexes] && Abs[q] < 1]

(* {"QPochhammerRatio", 11}*)
ConditionalExpression[(QPochhammer[q^3, q^8]*QPochhammer[q^5, q^8])/(QPochhammer[q, q^8]*QPochhammer[q^7, q^8]) == 1 + q + Inactive[ContinuedFractionK][q^(2*k), 1 + q^(1 + 2*k), {k, 1, Infinity}], Element[q, Complexes] && Abs[q] < 1]

(* {"QPochhammerRatio", 12}*)
ConditionalExpression[(-(QPochhammer[a, q]*QPochhammer[-b, q]) + QPochhammer[-a, q]*QPochhammer[b, q])/(QPochhammer[a, q]*QPochhammer[-b, q] + QPochhammer[-a, q]*QPochhammer[b, q]) == (a - b)/(1 - q + Inactive[ContinuedFractionK][q^(-1 + k)*(-b + a*q^k)*(a - b*q^k), 1 - q^(1 + 2*k), {k, 1, Infinity}]), Element[a | b | q, Complexes] && Abs[q] < 1]

(* {"QPochhammerRatio", 13}*)
ConditionalExpression[(QPochhammer[a, q]*QPochhammer[b, q])/(QPochhammer[a*q, q]*QPochhammer[b*q, q]) == 1 - b - c + a*(-1 + b + b*q) + Inactive[ContinuedFractionK][-(q^(-1 + k)*(-1 + a*q^k)*(-1 + b*q^k)*(-c + a*b*q^k)), 1 - b*q^k - c*q^k + a*q^k*(-1 + b*q^k*(1 + q)), {k, 1, Infinity}], Element[a | b | q, Complexes] && Abs[q] < 1]

(* {"QPochhammerRatio", 14}*)
ConditionalExpression[((QPochhammer[-q, -q] - QPochhammer[q, -q])*QPochhammer[q^2, q^4])/(2*(1 - q)*q*QPochhammer[q^3, q^2]) == (1 - q)/(1 - q - q^3 + q^6 + Inactive[ContinuedFractionK][q^(4*k)*(1 - q^(4*k))*(1 - q^(-1 + 4*k))*(1 - q^(1 + 4*k)), 1 - q^(1 + 4*k)*(1 + q + q^2) + q^(2 + 8*k)*(1 + q^4), {k, 1, Infinity}]), Element[q, Complexes] && Abs[q] < 1]

(* {"QPochhammerRatio", 15}*)
ConditionalExpression[QPochhammer[-q, q]*QPochhammer[q^2, q^2] == (1 + Inactive[ContinuedFractionK][-((1 - (-1)^k)*q^k)/2 + ((1 + (-1)^k)*q^(k/2)*(1 - q^(k/2)))/2, 1, {k, 1, Infinity}])^(-1), Element[q, Complexes] && Abs[q] < 1]

(* {"QPochhammerRatio", 16}*)
ConditionalExpression[QPochhammer[q^2, q^2]/QPochhammer[q, q^2] == (1 + Inactive[ContinuedFractionK][-((1 - (-1)^k)*q^k)/2 + ((1 + (-1)^k)*q^(k/2)*(1 - q^(k/2)))/2, 1, {k, 1, Infinity}])^(-1), Element[q, Complexes] && Abs[q] < 1]

(* {"QPochhammerRatio", 17}*)
ConditionalExpression[QPochhammer[-q^3, q^4]/QPochhammer[-q, q^4] == (1 + Inactive[ContinuedFractionK][((1 - (-1)^k)*q^(-1 + 2*k))/2 + ((1 + (-1)^k)*q^k*(1 + q^(-1 + k)))/2, 1, {k, 1, Infinity}])^(-1), Element[q, Complexes] && Abs[q] < 1]

(* {"QPochhammerRatio", 18}*)
ConditionalExpression[(Sqrt[q]*QPochhammer[q^4, q^4]^2)/QPochhammer[q^2, q^4]^2 == Sqrt[q]/(1 - q + Inactive[ContinuedFractionK][q*(1 - q^(-1 + 2*k))^2, (1 - q)*(1 + q^(2*k)), {k, 1, Infinity}]), Element[q, Complexes] && Abs[q] < 1]

(* {"QPochhammerRatio", 19}*)
ConditionalExpression[(QPochhammer[-q, q]^2 - QPochhammer[q, q]^2)/(QPochhammer[-q, q]^2 + QPochhammer[q, q]^2) == (2*q)/(1 - q + Inactive[ContinuedFractionK][q^(1 + k)*(1 + q^k)^2, 1 - q^(1 + 2*k), {k, 1, Infinity}]), Element[q, Complexes] && Abs[q] < 1]

(* {"QPochhammerRatio", 20}*)
ConditionalExpression[(QPochhammer[-q, q^2] - QPochhammer[q, q^2])/(QPochhammer[-q, q^2] + QPochhammer[q, q^2]) == q/(1 - q^2 + Inactive[ContinuedFractionK][q^(4*k), 1 - q^(2 + 4*k), {k, 1, Infinity}]), Element[q, Complexes] && Abs[q] < 1]

(* {"QPochhammerRatio", 21}*)
ConditionalExpression[(q^(1/3)*QPochhammer[q, q^6]*QPochhammer[q^5, q^6])/QPochhammer[q^3, q^6]^2 == q^(1/3)/(1 + Inactive[ContinuedFractionK][q^k + q^(2*k), 1, {k, 1, Infinity}]), Element[q, Complexes] && Abs[q] < 1]

(* {"QPochhammerRatio", 22}*)
ConditionalExpression[(QPochhammer[q^8, q^20]*QPochhammer[q^12, q^20])/(QPochhammer[q^4, q^20]*QPochhammer[q^16, q^20]) == 1 + q + Inactive[ContinuedFractionK][-q, 1 + q + q^(1 + 2*k), {k, 1, Infinity}], Element[q, Complexes] && Abs[q] < 1]

(* {"QPochhammerRatio", 23}*)
ConditionalExpression[(QPochhammer[-q^3, q^8]*QPochhammer[-q^5, q^8])/(QPochhammer[-q, q^8]*QPochhammer[-q^7, q^8]) == 1 + Inactive[ContinuedFractionK][-q + q^(2*k), 1 + q, {k, 1, Infinity}], Element[q, Complexes] && Abs[q] < 1]

(* {"QPochhammerRatio", 24}*)
ConditionalExpression[(Sqrt[q]*QPochhammer[q, q^8]*QPochhammer[q^7, q^8])/(QPochhammer[q^3, q^8]*QPochhammer[q^5, q^8]) == Sqrt[q]/(1 + q + Inactive[ContinuedFractionK][q^(2*k), 1 + q^(1 + 2*k), {k, 1, Infinity}]), Element[q, Complexes] && Abs[q] < 1]

(* {"QPochhammerRatio", 25}*)
ConditionalExpression[(Sqrt[q]*QPochhammer[q, q^8]*QPochhammer[q^7, q^8])/(QPochhammer[q^3, q^8]*QPochhammer[q^5, q^8]) == Sqrt[q]/(1 + Inactive[ContinuedFractionK][((1 + (-1)^k)*q^(2*k))/2 + ((1 - (-1)^k)*(q^k + q^(2*k)))/2, 1, {k, 1, Infinity}]), Element[q, Complexes] && Abs[q] < 1]

(* {"QQuadratic/Constant", 1}*)
ConditionalExpression[-b + ((b + Sqrt[b^2 + 4*e] + 2*Sqrt[c*q])*QHypergeometricPFQ[{(d*(b + Sqrt[b^2 + 4*e])*(1 + Sqrt[1 - (4*c*e)/d^2])*q)/(2*(2*e + b*(b + Sqrt[b^2 + 4*e]))*Sqrt[c*q]), (2*c)/(d*(-1 + Sqrt[1 - (4*c*e)/d^2]))}, {((b - Sqrt[b^2 + 4*e])*Sqrt[c*q])/(2*e)}, q, (-4*e*Sqrt[c*q])/(d*(b + Sqrt[b^2 + 4*e])*(1 + Sqrt[1 - (4*c*e)/d^2]))])/(2*QHypergeometricPFQ[{(d*(b + Sqrt[b^2 + 4*e])*(1 + Sqrt[1 - (4*c*e)/d^2])*q)/(2*(2*e + b*(b + Sqrt[b^2 + 4*e]))*Sqrt[c*q]), (2*c*q)/(d*(-1 + Sqrt[1 - (4*c*e)/d^2]))}, {((b - Sqrt[b^2 + 4*e])*q*Sqrt[c*q])/(2*e)}, q, (-4*e*Sqrt[c*q])/(d*(b + Sqrt[b^2 + 4*e])*(1 + Sqrt[1 - (4*c*e)/d^2]))]) == Inactive[ContinuedFractionK][e + d*q^k + c*q^(2*k), b, {k, 1, Infinity}], Element[b | c | d | e | q, Complexes] && 0 < Abs[q] < 1]

(* {"QQuadratic/Constant", 2}*)
ConditionalExpression[-b + ((b + Sqrt[c*q])*QHypergeometricPFQ[{(d*Sqrt[c*q])/(b*c)}, {-(Sqrt[c*q]/b)}, q, Sqrt[c*q]/b])/QHypergeometricPFQ[{(d*Sqrt[c*q])/(b*c)}, {-((q*Sqrt[c*q])/b)}, q, (q*Sqrt[c*q])/b] == Inactive[ContinuedFractionK][d*q^k + c*q^(2*k), b, {k, 1, Infinity}], Element[b | c | d | q, Complexes] && 0 < Abs[q] < 1]

(* {"QQuadratic/Constant", 3}*)
ConditionalExpression[-b + ((b + (2*e)/(b + Sqrt[b^2 + 4*e]))*QHypergeometricPFQ[{-(c/e)}, {0}, q^2, (-2*e*q^2)/(b^2 + 2*e + b*Sqrt[b^2 + 4*e])])/QHypergeometricPFQ[{-((c*q^2)/e)}, {0}, q^2, (-2*e*q^2)/(b^2 + 2*e + b*Sqrt[b^2 + 4*e])] == Inactive[ContinuedFractionK][e + c*q^(2*k), b, {k, 1, Infinity}], Element[b | c | e | q, Complexes] && 0 < Abs[q] < 1]

(* {"QQuadratic/Constant", 4}*)
ConditionalExpression[(c*q^2*QHypergeometricPFQ[{}, {0}, q^2, (c*q^6)/b^2])/(b*QHypergeometricPFQ[{}, {0}, q^2, (c*q^4)/b^2]) == Inactive[ContinuedFractionK][c*q^(2*k), b, {k, 1, Infinity}], Element[b | c | q, Complexes] && 0 < Abs[q] < 1]

(* {"QQuadratic/Constant", 5}*)
ConditionalExpression[-b + (b*QPochhammer[q^3, q^6]^3)/QPochhammer[q, q^2] == Inactive[ContinuedFractionK][b^2*q^k + b^2*q^(2*k), b, {k, 1, Infinity}], Element[b | q, Complexes] && 0 < Abs[q] < 1]

(* {"QQuadratic/Constant", 6}*)
ConditionalExpression[-b + (b*QPochhammer[q^3, q^6]^2)/(QPochhammer[q, q^6]*QPochhammer[q^5, q^6]) == Inactive[ContinuedFractionK][b^2*q^k + b^2*q^(2*k), b, {k, 1, Infinity}], Element[b | q, Complexes] && 0 < Abs[q] < 1]

(* {"QQuadratic/QLinear", 1}*)
ConditionalExpression[-a - b + ((2*c*(b + Sqrt[b^2 + 4*e])*q + a*(2*e + b*(b + Sqrt[b^2 + 4*e]))*(-1 + Sqrt[1 + (4*c*q)/a^2]))*QHypergeometricPFQ[{(d*(b + Sqrt[b^2 + 4*e])*(1 + Sqrt[1 - (4*c*e)/d^2])*q)/(a*(2*e + b*(b + Sqrt[b^2 + 4*e]))*(-1 + Sqrt[1 + (4*c*q)/a^2])), (2*c)/(d*(-1 + Sqrt[1 - (4*c*e)/d^2]))}, {(-2*c*(b + Sqrt[b^2 + 4*e])*q)/(a*(2*e + b*(b + Sqrt[b^2 + 4*e]))*(-1 + Sqrt[1 + (4*c*q)/a^2]))}, q, (a*e*(2 - 2*Sqrt[1 + (4*c*q)/a^2]))/(d*(b + Sqrt[b^2 + 4*e])*(1 + Sqrt[1 - (4*c*e)/d^2]))])/(a*(b + Sqrt[b^2 + 4*e])*(-1 + Sqrt[1 + (4*c*q)/a^2])*QHypergeometricPFQ[{(d*(b + Sqrt[b^2 + 4*e])*(1 + Sqrt[1 - (4*c*e)/d^2])*q)/(a*(2*e + b*(b + Sqrt[b^2 + 4*e]))*(-1 + Sqrt[1 + (4*c*q)/a^2])), (2*c*q)/(d*(-1 + Sqrt[1 - (4*c*e)/d^2]))}, {(-2*c*(b + Sqrt[b^2 + 4*e])*q^2)/(a*(2*e + b*(b + Sqrt[b^2 + 4*e]))*(-1 + Sqrt[1 + (4*c*q)/a^2]))}, q, (a*e*(2 - 2*Sqrt[1 + (4*c*q)/a^2]))/(d*(b + Sqrt[b^2 + 4*e])*(1 + Sqrt[1 - (4*c*e)/d^2]))]) == Inactive[ContinuedFractionK][e + d*q^k + c*q^(2*k), b + a*q^k, {k, 1, Infinity}], Element[a | b | c | d | e | q, Complexes] && 0 < Abs[q] < 1]

(* {"QQuadratic/QLinear", 2}*)
ConditionalExpression[-a - b + ((2*c*q + a*b*(-1 + Sqrt[1 + (4*c*q)/a^2]))*QHypergeometricPFQ[{(2*d*q)/(a*b*(-1 + Sqrt[1 + (4*c*q)/a^2]))}, {(2*c*q)/(a*(b - b*Sqrt[1 + (4*c*q)/a^2]))}, q, (a*(-1 + Sqrt[1 + (4*c*q)/a^2]))/(2*b)])/(a*(-1 + Sqrt[1 + (4*c*q)/a^2])*QHypergeometricPFQ[{(2*d*q)/(a*b*(-1 + Sqrt[1 + (4*c*q)/a^2]))}, {(2*c*q^2)/(a*(b - b*Sqrt[1 + (4*c*q)/a^2]))}, q, (a*q*(-1 + Sqrt[1 + (4*c*q)/a^2]))/(2*b)]) == Inactive[ContinuedFractionK][d*q^k + c*q^(2*k), b + a*q^k, {k, 1, Infinity}], Element[a | b | c | d | q, Complexes] && 0 < Abs[q] < 1]

(* {"QQuadratic/QLinear", 3}*)
ConditionalExpression[-a - b + (b*QHypergeometricPFQ[{(2*d*q)/(a*b*(-1 + Sqrt[(a^2 + 4*c*q)/a^2]))}, {-(a*(1 + Sqrt[1 + (4*c*q)/a^2]))/(2*b)}, q, (a*(-1 + Sqrt[1 + (4*c*q)/a^2]))/(2*b)]*QPochhammer[-(a*(1 + Sqrt[1 + (4*c*q)/a^2]))/(2*b), q])/(QHypergeometricPFQ[{(2*d*q)/(a*b*(-1 + Sqrt[(a^2 + 4*c*q)/a^2]))}, {-(a*q*(1 + Sqrt[1 + (4*c*q)/a^2]))/(2*b)}, q, (a*q*(-1 + Sqrt[1 + (4*c*q)/a^2]))/(2*b)]*QPochhammer[-(a*q*(1 + Sqrt[1 + (4*c*q)/a^2]))/(2*b), q]) == Inactive[ContinuedFractionK][d*q^k + c*q^(2*k), b + a*q^k, {k, 1, Infinity}], Element[a | b | c | d | q, Complexes] && 0 < Abs[q] < 1]

(* {"QQuadratic/QLinear", 4}*)
ConditionalExpression[-a - b - (c + d)/(b + a/q - (b*QHypergeometricPFQ[{-(c/(d*q))}, {(a*(-1 + Sqrt[1 + (4*c*q)/a^2]))/(2*b*q), -(a*(1 + Sqrt[1 + (4*c*q)/a^2]))/(2*b*q)}, q, d/b^2]*QPochhammer[(a*(-1 + Sqrt[1 + (4*c*q)/a^2]))/(2*b*q), q]*QPochhammer[-(a*(1 + Sqrt[1 + (4*c*q)/a^2]))/(2*b*q), q])/(QHypergeometricPFQ[{-(c/d)}, {(a*(-1 + Sqrt[1 + (4*c*q)/a^2]))/(2*b), -(a*(1 + Sqrt[1 + (4*c*q)/a^2]))/(2*b)}, q, (d*q)/b^2]*QPochhammer[(a*(-1 + Sqrt[1 + (4*c*q)/a^2]))/(2*b), q]*QPochhammer[-(a*(1 + Sqrt[1 + (4*c*q)/a^2]))/(2*b), q])) == Inactive[ContinuedFractionK][d*q^k + c*q^(2*k), b + a*q^k, {k, 1, Infinity}], Element[a | b | c | d | q, Complexes] && 0 < Abs[q] < 1]

(* {"QQuadratic/QLinear", 5}*)
ConditionalExpression[-a - b + (b*QPochhammer[(a*(-1 + Sqrt[1 + (4*c*q)/a^2]))/(2*b), q]*QPochhammer[-(a*(1 + Sqrt[1 + (4*c*q)/a^2]))/(2*b), q])/(QHypergeometricPFQ[{(a*(-1 + Sqrt[1 + (4*c*q)/a^2]))/(2*b)}, {(a*q*(-1 + Sqrt[1 + (4*c*q)/a^2]))/(2*b)}, q, -(a*q*(1 + Sqrt[1 + (4*c*q)/a^2]))/(2*b)]*QPochhammer[(a*q*(-1 + Sqrt[1 + (4*c*q)/a^2]))/(2*b), q]) == Inactive[ContinuedFractionK][-(c*q^k) + c*q^(2*k), b + a*q^k, {k, 1, Infinity}], Element[a | b | c | q, Complexes] && 0 < Abs[q] < 1]

(* {"QQuadratic/QLinear", 6}*)
ConditionalExpression[-a - b + ((2*c*(b + Sqrt[b^2 + 4*e])*q + a*(b^2 + 2*e + b*Sqrt[b^2 + 4*e])*(-1 + Sqrt[1 + (4*c*q)/a^2]))*QHypergeometricPFQ[{(2*Sqrt[-(c*e)]*(b + Sqrt[b^2 + 4*e])*q)/(a*(2*e + b*(b + Sqrt[b^2 + 4*e]))*(-1 + Sqrt[1 + (4*c*q)/a^2])), c/Sqrt[-(c*e)]}, {(-2*c*(b + Sqrt[b^2 + 4*e])*q)/(a*(2*e + b*(b + Sqrt[b^2 + 4*e]))*(-1 + Sqrt[1 + (4*c*q)/a^2]))}, q, (a*Sqrt[-(c*e)]*(-1 + Sqrt[1 + (4*c*q)/a^2]))/(c*(b + Sqrt[b^2 + 4*e]))])/(a*(b + Sqrt[b^2 + 4*e])*(-1 + Sqrt[1 + (4*c*q)/a^2])*QHypergeometricPFQ[{(2*Sqrt[-(c*e)]*(b + Sqrt[b^2 + 4*e])*q)/(a*(2*e + b*(b + Sqrt[b^2 + 4*e]))*(-1 + Sqrt[1 + (4*c*q)/a^2])), (c*q)/Sqrt[-(c*e)]}, {(-2*c*(b + Sqrt[b^2 + 4*e])*q^2)/(a*(2*e + b*(b + Sqrt[b^2 + 4*e]))*(-1 + Sqrt[1 + (4*c*q)/a^2]))}, q, (a*Sqrt[-(c*e)]*(-1 + Sqrt[1 + (4*c*q)/a^2]))/(c*(b + Sqrt[b^2 + 4*e]))]) == Inactive[ContinuedFractionK][e + c*q^(2*k), b + a*q^k, {k, 1, Infinity}], Element[a | b | c | e | q, Complexes] && 0 < Abs[q] < 1]

(* {"QQuadratic/QLinear", 7}*)
ConditionalExpression[-a - b + ((2*c*q + a*b*(-1 + Sqrt[1 + (4*c*q)/a^2]))*QHypergeometricPFQ[{0}, {(2*c*q)/(a*b*(1 - Sqrt[1 + (4*c*q)/a^2]))}, q, (a*(-1 + Sqrt[1 + (4*c*q)/a^2]))/(2*b)])/(a*(-1 + Sqrt[1 + (4*c*q)/a^2])*QHypergeometricPFQ[{0}, {(2*c*q^2)/(a*b*(1 - Sqrt[1 + (4*c*q)/a^2]))}, q, (a*q*(-1 + Sqrt[1 + (4*c*q)/a^2]))/(2*b)]) == Inactive[ContinuedFractionK][c*q^(2*k), b + a*q^k, {k, 1, Infinity}], Element[a | b | c | q, Complexes] && 0 < Abs[q] < 1]

(* {"QQuadratic/QLinear", 8}*)
ConditionalExpression[-a - (a*QPochhammer[Sqrt[q]*u^2, q^2]*QPochhammer[Sqrt[q]*v^2, q^2])/((-1 + u*v)*QPochhammer[q^(3/2)*u^2, q^2]*QPochhammer[q^(3/2)*v^2, q^2]) == Inactive[ContinuedFractionK][c0 + c1*q^k + c0*q^(-1 + 2*k), a + a*q^k, {k, 1, Infinity}], c0 == (a^2*u*v)/(-1 + u*v)^2 && c1 == -((a^2*(u^2 + v^2))/(Sqrt[q]*(-1 + u*v)^2)) && Element[a | c0 | c1 | u | v | q, Complexes] && 0 < Abs[q] < 1 && 0 < Abs[q] < 1]

(* {"QQuadratic/QLinear", 9}*)
ConditionalExpression[-a + (a*QPochhammer[q, q^2]^2)/((1 - Sqrt[q])*QPochhammer[q^2, q^2]^2) == Inactive[ContinuedFractionK][c0 - 2*c0*q^(-1/2 + k) + c0*q^(-1 + 2*k), a + a*q^k, {k, 1, Infinity}], c0 == (a^2*Sqrt[q])/(-1 + Sqrt[q])^2 && Element[a | c0 | q, Complexes] && 0 < Abs[q] < 1 && 0 < Abs[q] < 1]

(* {"QQuadratic/QLinear", 10}*)
ConditionalExpression[-a + (a*QPochhammer[q, q^3])/QPochhammer[q^2, q^3] == Inactive[ContinuedFractionK][-(a^2*q^(-1 + 2*k)), a + a*q^k, {k, 1, Infinity}], Element[a | q, Complexes] && 0 < Abs[q] < 1]

(* {"QQuartic/QQuadratic", 1}*)
ConditionalExpression[-a - b - c + (c*QHypergeometricPFQ[{(1 + q)*u*v, -((v*(b*(1 + q) + a*(1 + q)^2*u + c*v))/(a*(1 + q)))}, {v/(1 + q)}, q, a/(c*v)]*QPochhammer[a/(c*v), q]*QPochhammer[v/(1 + q), q])/(QHypergeometricPFQ[{(1 + q)*u*v, -((v*(b*(1 + q) + a*(1 + q)^2*u + c*v))/(a*(1 + q)))}, {(q*v)/(1 + q)}, q, (a*q)/(c*v)]*QPochhammer[(a*q)/(c*v), q]*QPochhammer[(q*v)/(1 + q), q]) == Inactive[ContinuedFractionK][c1*q^k + c2*q^(2*k) + c3*q^(3*k) + c4*q^(4*k), c + b*q^k + a*q^(2*k), {k, 1, Infinity}], c1 == -((c*u*v*(b*(1 + q) + a*(1 + q)^2*u + c*v))/q) && c2 == (a^2*(1 + q)^2*u^2 + a*u*(b + b*q + c*v) + (c*v*(b + b*q + c*v))/(1 + q)^2)/q && c3 == -((a*b)/(q*(1 + q))) && c4 == -(a^2/(q*(1 + q)^2)) && Element[a | b | c | c1 | c2 | c3 | c4 | u | v | q, Complexes] && 0 < Abs[q] < 1]

(* {"QQuartic/QQuadratic", 2}*)
ConditionalExpression[-a - b - c + (c^2*(1 + q*(1 - u))*(a - c*q*(1 + q)*v)*(a*(1 + q + q*u) + q*(1 + q)*u*(b + c*q*v)))/(q*(1 + q)*(a - c^2*(1 + q))*u^2*(a + b*q + c*q^2 - (c*q^2*QHypergeometricPFQ[{u/(1 + q), -(((1 + q)*v*(a + q*u*(b + c*q*v)))/(a*u))}, {(-a + q*u*(-b - c*q*v))/(c*q^2*u), v}, q, a/(c*q^2*u)]*QPochhammer[v, q]*QPochhammer[(-a + q*u*(-b - c*q*v))/(c*q^2*u), q])/(QHypergeometricPFQ[{(q*u)/(1 + q), -(((1 + q)*v*(a + q*u*(b + c*q*v)))/(a*u))}, {(-a + q*u*(-b - c*q*v))/(c*q*u), q*v}, q, a/((c*q*u)/(1 + q) + (c*q^2*u)/(1 + q))]*QPochhammer[q*v, q]*QPochhammer[(-a + q*u*(-b - c*q*v))/(c*q*u), q]))) == Inactive[ContinuedFractionK][c1*q^k + c2*q^(2*k) + c3*q^(3*k) + c4*q^(4*k), c + b*q^k + a*q^(2*k), {k, 1, Infinity}], c1 == -((c*(1 + q)*v*(a + q*u*(b + c*q*v)))/(q^2*u^2)) && c2 == a^2/(q^3*u^2) + (a*(b + c*q*v))/(q^2*u) + c*v*(b + c*q*v) && c3 == -((a*b)/(q*(1 + q))) && c4 == -(a^2/(q*(1 + q)^2)) && Element[a | b | c | c1 | c2 | c3 | c4 | u | v | q, Complexes] && 0 < Abs[q] < 1]

(* {"QQuartic/QQuadratic", 3}*)
ConditionalExpression[-a - b - c + (c*QHypergeometricPFQ[{-((v*(a + (1 + q)*u*(b + c*v)))/(a*u)), u}, {v, -((a + (1 + q)*u*(b + c*v))/(c*(1 + q)*u))}, q, a/(c*u + c*q*u)]*QPochhammer[v, q]*QPochhammer[-((a + (1 + q)*u*(b + c*v))/(c*(1 + q)*u)), q])/(QHypergeometricPFQ[{-((v*(a + (1 + q)*u*(b + c*v)))/(a*u)), q*u}, {q*v, -((q*(a + (1 + q)*u*(b + c*v)))/(c*(1 + q)*u))}, q, (a*q)/(c*u + c*q*u)]*QPochhammer[q*v, q]*QPochhammer[-((q*(a + (1 + q)*u*(b + c*v)))/(c*(1 + q)*u)), q]) == Inactive[ContinuedFractionK][c1*q^k + c2*q^(2*k) + c3*q^(3*k) + c4*q^(4*k), c + b*q^k + a*q^(2*k), {k, 1, Infinity}], c1 == -((c*v*(a + (1 + q)*u*(b + c*v)))/(q*(1 + q)*u^2)) && c2 == (c*v*(b + c*v))/q + (a^2 + a*(b + c*v))/(q*(1 + q)*u) && c3 == -((a*b)/(q*(1 + q))) && c4 == -(a^2/(q*(1 + q)^2)) && Element[a | b | c | c1 | c2 | c3 | c4 | u | v | q, Complexes] && 0 < Abs[q] < 1]

(* {"QQuartic/QQuadratic", 4}*)
ConditionalExpression[-a - b - c + (c*QPochhammer[v/q, q]*QPochhammer[-((a + b + b*q)/(c + c*q)) - v/q, q])/(QHypergeometricPFQ[{-((v*(a*q + (1 + q)*(b*q + c*v)))/(a*q^2)), q}, {v, -((q*(a + b + b*q))/(c*(1 + q))) - v}, q, (a*q)/(c + c*q)]*QPochhammer[-((q*(a + b + b*q))/(c*(1 + q))) - v, q]*QPochhammer[v, q]) == Inactive[ContinuedFractionK][c1*q^k + c2*q^(2*k) + c3*q^(3*k) + c4*q^(4*k), c + b*q^k + a*q^(2*k), {k, 1, Infinity}], c1 == -((c*v*(a*q + (1 + q)*(b*q + c*v)))/(q^3*(1 + q))) && c2 == (c^2*v^2)/q^3 + ((a + b + b*q)*(a*q + c*(1 + q)*v))/(q^2*(1 + q)^2) && c3 == -((a*b)/(q + q^2)) && c4 == -(a^2/(q*(1 + q)^2)) && Element[a | b | c | c1 | c2 | c3 | c4 | u | v | q, Complexes] && 0 < Abs[q] < 1]

(* {"QQuartic/QQuadratic", 5}*)
ConditionalExpression[-a - b - c + (c*QPochhammer[u, q]*QPochhammer[-((a + b + b*q + c*u + c*q*u)/(c*(1 + q))), q])/(QHypergeometricPFQ[{-((u*(a + (1 + q)*(b + c*u)))/a), u}, {q*u}, q, (a*q)/(c*(1 + q)*u)]*QPochhammer[(a*q)/(c*(1 + q)*u), q]*QPochhammer[q*u, q]) == Inactive[ContinuedFractionK][c1*q^k + c2*q^(2*k) + c3*q^(3*k) + c4*q^(4*k), c + b*q^k + a*q^(2*k), {k, 1, Infinity}], c1 == -((c*u*(a + (1 + q)*(b + c*u)))/(q*(1 + q))) && c2 == (a^2 + a*(1 + q)*(b + c*u) + c*(1 + q)^2*u*(b + c*u))/(q*(1 + q)^2) && c3 == -((a*b)/(q + q^2)) && c4 == -(a^2/(q*(1 + q)^2)) && Element[a | b | c | c1 | c2 | c3 | c4 | u | q, Complexes] && 0 < Abs[q] < 1]

(* {"QQuartic/QQuadratic", 6}*)
ConditionalExpression[-a - b - c + (c*QPochhammer[a/(c*(1 + q)*u), q]*QPochhammer[u, q])/(QPochhammer[(a*q)/(c*(1 + q)*u), q]*QPochhammer[q*u, q]) == Inactive[ContinuedFractionK][c1*q^k + c2*q^(2*k) + c3*q^(3*k) + c4*q^(4*k), c + b*q^k + a*q^(2*k), {k, 1, Infinity}], c1 == -((c*(a + (1 + q)*u*(b + c*u)))/(q*(1 + q)*u)) && c2 == (a^2 + a*(1 + q)*u*(b + c*u) + c*(1 + q)^2*u^3*(b + c*u))/(q*(1 + q)^2*u^2) && c3 == -((a*b)/(q*(1 + q))) && c4 == -(a^2/(q*(1 + q)^2)) && Element[a | b | c | c1 | c2 | c3 | c4 | u | q, Complexes] && 0 < Abs[q] < 1]

(* {"QQuartic/QQuadratic", 7}*)
ConditionalExpression[-a - b - c + (c*QPochhammer[b, q]*QPochhammer[a/(b*c*(1 + q)), q])/(QPochhammer[b*q, q]*QPochhammer[(a*q)/(b*c*(1 + q)), q]) == Inactive[ContinuedFractionK][c1*q^k + c2*q^(2*k) + c3*q^(3*k) + c4*q^(4*k), c + b*q^k + a*q^(2*k), {k, 1, Infinity}], c1 == -((c*(a + b*(b + b*c)*(1 + q)))/(b*q*(1 + q))) && c2 == (a^2 + a*b*(b + b*c)*(1 + q) + b^3*c*(b + b*c)*(1 + q)^2)/(b^2*q*(1 + q)^2) && c3 == -((a*b)/(q*(1 + q))) && c4 == -(a^2/(q*(1 + q)^2)) && Element[a | b | c | c1 | c2 | c3 | c4 | q, Complexes] && 0 < Abs[q] < 1]

(* {"Quadratic/Constant", 1}*)
ConditionalExpression[-b + ((b*Sqrt[c] + c + d)*Hypergeometric2F1[(d - Sqrt[d^2 - 4*c*e])/(2*c), (d + Sqrt[d^2 - 4*c*e])/(2*c), (b*Sqrt[c] + c + d)/(2*c), 1/2])/(Sqrt[c]*Hypergeometric2F1[1 + (d - Sqrt[d^2 - 4*c*e])/(2*c), 1 + (d + Sqrt[d^2 - 4*c*e])/(2*c), (b*Sqrt[c] + 3*c + d)/(2*c), 1/2]) == Inactive[ContinuedFractionK][e + d*k + c*k^2, b, {k, 1, Infinity}], Element[b | c | d | e, Complexes]]

(* {"Quadratic/Constant", 2}*)
ConditionalExpression[-b + (b + (c + d)/Sqrt[c])/Hypergeometric2F1[1, (c + d)/c, (b*Sqrt[c] + 3*c + d)/(2*c), 1/2] == Inactive[ContinuedFractionK][d*k + c*k^2, b, {k, 1, Infinity}], Element[b | c | d, Complexes]]

(* {"Quadratic/Constant", 3}*)
ConditionalExpression[-b + ((b + Sqrt[c])*Hypergeometric2F1[e/Sqrt[-(c*e)], Sqrt[-(c*e)]/c, (1 + b/Sqrt[c])/2, 1/2])/Hypergeometric2F1[1 + e/Sqrt[-(c*e)], (c + Sqrt[-(c*e)])/c, (3 + b/Sqrt[c])/2, 1/2] == Inactive[ContinuedFractionK][e + c*k^2, b, {k, 1, Infinity}], Element[b | c | e, Complexes]]

(* {"Quadratic/Constant", 4}*)
ConditionalExpression[-b - (2*Sqrt[c])/(PolyGamma[0, (1 + b/Sqrt[c])/4] - PolyGamma[0, (3 + b/Sqrt[c])/4]) == Inactive[ContinuedFractionK][c*k^2, b, {k, 1, Infinity}], Element[b | c, Complexes]]

(* {"Quadratic/Linear", 1}*)
ConditionalExpression[-b + ((2*b*c - a*(c + d) + (Sqrt[a^2/(a^2 + 4*c)]*(a^2 + 4*c)*(c + d))/a)*Hypergeometric2F1[(d - Sqrt[d^2 - 4*c*e])/(2*c), (d + Sqrt[d^2 - 4*c*e])/(2*c), (1 + d/c + (Sqrt[a^2/(a^2 + 4*c)]*(2*b*c - a*(c + d)))/(a*c))/2, (1 - Sqrt[a^2/(a^2 + 4*c)])/2])/(2*c*Hypergeometric2F1[1 + (d - Sqrt[d^2 - 4*c*e])/(2*c), 1 + (d + Sqrt[d^2 - 4*c*e])/(2*c), (3 + d/c + (Sqrt[a^2/(a^2 + 4*c)]*(2*b*c - a*(c + d)))/(a*c))/2, (1 - Sqrt[a^2/(a^2 + 4*c)])/2]) == Inactive[ContinuedFractionK][e + d*k + c*k^2, b + a*k, {k, 1, Infinity}], Element[a | b | c | d | e, Complexes]]

(* {"Quadratic/Linear", 2}*)
ConditionalExpression[-b + (a*HypergeometricU[(2*(-d + Sqrt[d^2 + a^2*e]))/a^2, 1 + (4*Sqrt[d^2 + a^2*e])/a^2, -1 + (2*a*b + 4*d)/a^2])/(2*HypergeometricU[1 + (2*(-d + Sqrt[d^2 + a^2*e]))/a^2, 1 + (4*Sqrt[d^2 + a^2*e])/a^2, -1 + (2*a*b + 4*d)/a^2]) == Inactive[ContinuedFractionK][e + d*k - (a^2*k^2)/4, b + a*k, {k, 1, Infinity}], Element[a | b | d | e, Complexes]]

(* {"Quadratic/Linear", 3}*)
ConditionalExpression[-b + (2*b*c - a*(c + d) + (Sqrt[a^2/(a^2 + 4*c)]*(a^2 + 4*c)*(c + d))/a)/(2*c*Hypergeometric2F1[1 + (d - Sqrt[d^2])/(2*c), 1 + (d + Sqrt[d^2])/(2*c), (3 + d/c + (Sqrt[a^2/(a^2 + 4*c)]*(2*b*c - a*(c + d)))/(a*c))/2, (1 - Sqrt[a^2/(a^2 + 4*c)])/2]) == Inactive[ContinuedFractionK][d*k + c*k^2, b + a*k, {k, 1, Infinity}], Element[a | b | c | d, Complexes]]

(* {"Quadratic/Linear", 4}*)
ConditionalExpression[-b + (a*E^(1 - (2*(a*b + 2*d))/a^2))/(2*ExpIntegralE[1 - (4*d)/a^2, -1 + (2*a*b + 4*d)/a^2]) == Inactive[ContinuedFractionK][d*k - (a^2*k^2)/4, b + a*k, {k, 1, Infinity}], Element[a | b | d, Complexes]]

(* {"Quadratic/Linear", 5}*)
ConditionalExpression[-b + ((-(a*c) + 2*b*c + (c*Sqrt[a^2/(a^2 + 4*c)]*(a^2 + 4*c))/a)*Hypergeometric2F1[-(Sqrt[-(c*e)]/c), Sqrt[-(c*e)]/c, (1 + (Sqrt[a^2/(a^2 + 4*c)]*(-(a*c) + 2*b*c))/(a*c))/2, (1 - Sqrt[a^2/(a^2 + 4*c)])/2])/(2*c*Hypergeometric2F1[1 - Sqrt[-(c*e)]/c, 1 + Sqrt[-(c*e)]/c, (3 + (Sqrt[a^2/(a^2 + 4*c)]*(-(a*c) + 2*b*c))/(a*c))/2, (1 - Sqrt[a^2/(a^2 + 4*c)])/2]) == Inactive[ContinuedFractionK][e + c*k^2, b + a*k, {k, 1, Infinity}], Element[a | b | c | e, Complexes]]

(* {"Quadratic/Linear", 6}*)
ConditionalExpression[-b - (a*e*(BesselK[-1/2 + (2*e)/Sqrt[a^2*e], -1/2 + b/a] + BesselK[1/2 + (2*e)/Sqrt[a^2*e], -1/2 + b/a]))/(Sqrt[a^2*e]*(BesselK[-1/2 + (2*e)/Sqrt[a^2*e], -1/2 + b/a] - BesselK[1/2 + (2*e)/Sqrt[a^2*e], -1/2 + b/a])) == Inactive[ContinuedFractionK][e - (a^2*k^2)/4, b + a*k, {k, 1, Infinity}], Element[a | b | e, Complexes]]

(* {"Quadratic/Linear", 7}*)
ConditionalExpression[-b + (-(a*c) + 2*b*c + (c*Sqrt[a^2/(a^2 + 4*c)]*(a^2 + 4*c))/a)/(2*c*Hypergeometric2F1[1, 1, (3 + (Sqrt[a^2/(a^2 + 4*c)]*(-(a*c) + 2*b*c))/(a*c))/2, (1 - Sqrt[a^2/(a^2 + 4*c)])/2]) == Inactive[ContinuedFractionK][c*k^2, b + a*k, {k, 1, Infinity}], Element[a | b | c, Complexes]]

(* {"Quadratic/Linear", 8}*)
ConditionalExpression[-b - (a*E^(1 - (2*b)/a))/(2*(CoshIntegral[-1 + (2*b)/a] + SinhIntegral[1 - (2*b)/a])) == Inactive[ContinuedFractionK][-(a^2*k^2)/4, b + a*k, {k, 1, Infinity}], Element[a | b, Complexes]]

(* {"Quadratic/Linear", 9}*)
ConditionalExpression[b*(-1 + Sqrt[c/b^2]/ArcTan[Sqrt[c/b^2]]) == Inactive[ContinuedFractionK][c*k^2, b + 2*b*k, {k, 1, Infinity}], Element[b | c, Complexes]]

(* {"Quadratic/Linear", 10}*)
ConditionalExpression[((-(a*(c + d)) + (Sqrt[a^2/(a^2 + 4*c)]*(a^2 + 4*c)*(c + d))/a)*Hypergeometric2F1[(d - Sqrt[d^2 - 4*c*e])/(2*c), (d + Sqrt[d^2 - 4*c*e])/(2*c), (1 + d/c - (Sqrt[a^2/(a^2 + 4*c)]*(c + d))/c)/2, (1 - Sqrt[a^2/(a^2 + 4*c)])/2])/(2*c*Hypergeometric2F1[1 + (d - Sqrt[d^2 - 4*c*e])/(2*c), 1 + (d + Sqrt[d^2 - 4*c*e])/(2*c), (3 + d/c - (Sqrt[a^2/(a^2 + 4*c)]*(c + d))/c)/2, (1 - Sqrt[a^2/(a^2 + 4*c)])/2]) == Inactive[ContinuedFractionK][e + d*k + c*k^2, a*k, {k, 1, Infinity}], Element[a | c | d | e, Complexes]]

(* {"Quadratic/Linear", 11}*)
ConditionalExpression[(a*HypergeometricU[(2*(-d + Sqrt[d^2 + a^2*e]))/a^2, 1 + (4*Sqrt[d^2 + a^2*e])/a^2, -1 + (4*d)/a^2])/(2*HypergeometricU[1 + (2*(-d + Sqrt[d^2 + a^2*e]))/a^2, 1 + (4*Sqrt[d^2 + a^2*e])/a^2, -1 + (4*d)/a^2]) == Inactive[ContinuedFractionK][e + d*k - (a^2*k^2)/4, a*k, {k, 1, Infinity}], Element[a | d | e, Complexes]]

(* {"Quadratic/Linear", 12}*)
ConditionalExpression[(-(a*(c + d)) + (Sqrt[a^2/(a^2 + 4*c)]*(a^2 + 4*c)*(c + d))/a)/(2*c*Hypergeometric2F1[1 + (d - Sqrt[d^2])/(2*c), 1 + (d + Sqrt[d^2])/(2*c), (3 + d/c - (Sqrt[a^2/(a^2 + 4*c)]*(c + d))/c)/2, (1 - Sqrt[a^2/(a^2 + 4*c)])/2]) == Inactive[ContinuedFractionK][d*k + c*k^2, a*k, {k, 1, Infinity}], Element[a | c | d, Complexes]]

(* {"Quadratic/Linear", 13}*)
ConditionalExpression[(a*E^(1 - (4*d)/a^2))/(2*ExpIntegralE[1 - (4*d)/a^2, -1 + (4*d)/a^2]) == Inactive[ContinuedFractionK][d*k - (a^2*k^2)/4, a*k, {k, 1, Infinity}], Element[a | d, Complexes]]

(* {"Quadratic/Linear", 14}*)
ConditionalExpression[((-(a*c) + (c*Sqrt[a^2/(a^2 + 4*c)]*(a^2 + 4*c))/a)*Hypergeometric2F1[-(Sqrt[-(c*e)]/c), Sqrt[-(c*e)]/c, (1 - Sqrt[a^2/(a^2 + 4*c)])/2, (1 - Sqrt[a^2/(a^2 + 4*c)])/2])/(2*c*Hypergeometric2F1[1 - Sqrt[-(c*e)]/c, 1 + Sqrt[-(c*e)]/c, (3 - Sqrt[a^2/(a^2 + 4*c)])/2, (1 - Sqrt[a^2/(a^2 + 4*c)])/2]) == Inactive[ContinuedFractionK][e + c*k^2, a*k, {k, 1, Infinity}], Element[a | c | e, Complexes]]

(* {"Quadratic/Linear", 15}*)
ConditionalExpression[-((a*e*(BesselK[-1/2 + (2*e)/Sqrt[a^2*e], -1/2] + BesselK[1/2 + (2*e)/Sqrt[a^2*e], -1/2]))/(Sqrt[a^2*e]*(BesselK[-1/2 + (2*e)/Sqrt[a^2*e], -1/2] - BesselK[1/2 + (2*e)/Sqrt[a^2*e], -1/2]))) == Inactive[ContinuedFractionK][e - (a^2*k^2)/4, a*k, {k, 1, Infinity}], Element[a | e, Complexes]]

(* {"Quadratic/Linear", 16}*)
ConditionalExpression[(-(a*c) + (c*Sqrt[a^2/(a^2 + 4*c)]*(a^2 + 4*c))/a)/(2*c*Hypergeometric2F1[1, 1, (3 - Sqrt[a^2/(a^2 + 4*c)])/2, (1 - Sqrt[a^2/(a^2 + 4*c)])/2]) == Inactive[ContinuedFractionK][c*k^2, a*k, {k, 1, Infinity}], Element[a | c, Complexes]]

(* {"Quadratic/Linear", 17}*)
ConditionalExpression[-(a*E)/(2*(CoshIntegral[-1] + SinhIntegral[1])) == Inactive[ContinuedFractionK][-(a^2*k^2)/4, a*k, {k, 1, Infinity}], Element[a, Complexes]]

(* {"RamanujanTauTheta", 1}*)
ConditionalExpression[RamanujanTauTheta[z] == (z*(137/60 - EulerGamma - Log[2*Pi]))/(1 + Inactive[ContinuedFractionK][((-1)^k*z^2*PolyGamma[2*k, 6])/((1 + 2*k)!*(KroneckerDelta[1 - k]*Log[2*Pi] + ((-1)^k*PolyGamma[2*(-1 + k), 6])/(-1 + 2*k)!)), 1 - ((-1)^k*z^2*PolyGamma[2*k, 6])/((1 + 2*k)!*(KroneckerDelta[1 - k]*Log[2*Pi] + ((-1)^k*PolyGamma[2*(-1 + k), 6])/(-1 + 2*k)!)), {k, 1, Infinity}]), Element[z, Complexes] && Abs[z] < 1]

(* {"Rational", 1}*)
ConditionalExpression[(1 + a + z)/(1 + z) == (a + z)/(-1 + z + Inactive[ContinuedFractionK][a*(1 + k) + z, -1 + a*k + z, {k, 1, Infinity}]), Element[a | z, Complexes]]

(* {"Rational", 2}*)
ConditionalExpression[(1 + z + z^2)/(1 - z + z^2) == z/(-3 + z + Inactive[ContinuedFractionK][k + z, -3 + k + z, {k, 1, Infinity}]), Element[z, Complexes]]

(* {"Rational", 3}*)
ConditionalExpression[(1 + 2*z + z^3)/(1 + 2*(-1 + z) + (-1 + z)^3) == z/(-4 + z + Inactive[ContinuedFractionK][k + z, -4 + k + z, {k, 1, Infinity}]), Element[z, Complexes]]

(* {"Rational/Constant", 1}*)
ConditionalExpression[-b + ((d + b^2*u*v)*Hypergeometric1F1[e/d, d/(b^2*u) + v, d/(b^2*u)])/(b*u*v*Hypergeometric1F1[(d + e)/d, 1 + d/(b^2*u) + v, d/(b^2*u)]) == Inactive[ContinuedFractionK][(e + d*k)/(u*(-1 + k + v)*(k + v)), b, {k, 1, Infinity}], Element[b | d | e | u | v, Complexes]]

(* {"Rational/Constant", 2}*)
ConditionalExpression[-b + (b*(d/(b^2*u))^(d/(b^2*u) + v))/(E^(d/(b^2*u))*v*Gamma[d/(b^2*u) + v, 0, d/(b^2*u)]) == Inactive[ContinuedFractionK][(d*k)/(u*(-1 + k + v)*(k + v)), b, {k, 1, Infinity}], Element[b | d | u | v, Complexes]]

(* {"Rational/Constant", 3}*)
ConditionalExpression[-b + (Sqrt[e]*BesselI[-1 + v, (2*Sqrt[e])/(b*Sqrt[u])])/(Sqrt[u]*v*BesselI[v, (2*Sqrt[e])/(b*Sqrt[u])]) == Inactive[ContinuedFractionK][e/(u*(-1 + k + v)*(k + v)), b, {k, 1, Infinity}], Element[b | e | u | v, Complexes]]

(* {"Rational/Constant", 4}*)
ConditionalExpression[-b + (b*e*Hypergeometric1F1[e/d, 1 + d/b^2, d/b^2])/(d*Hypergeometric1F1[-1 + e/d, d/b^2, d/b^2]) == Inactive[ContinuedFractionK][(e + d*k)/(k*(1 + k)), b, {k, 1, Infinity}], Element[b | d | e, Complexes]]

(* {"Rational/Constant", 5}*)
ConditionalExpression[-b + (Sqrt[e]*BesselI[0, (2*Sqrt[e])/b])/BesselI[1, (2*Sqrt[e])/b] == Inactive[ContinuedFractionK][e/(k*(1 + k)), b, {k, 1, Infinity}], Element[b | e, Complexes]]

(* {"Rational/Constant", 6}*)
ConditionalExpression[-b + b*(d/b^2)^(1 - d/b^2)*E^(d/b^2)*Gamma[d/b^2, 0, d/b^2] == Inactive[ContinuedFractionK][d/k, b, {k, 1, Infinity}], Element[b | d, Complexes]]

(* {"Rational/Constant", 7}*)
ConditionalExpression[-b + (b*(c + d - c*Sqrt[(b^2*u)/(4*c + b^2*u)] - d*Sqrt[(b^2*u)/(4*c + b^2*u)] + 2*c*Sqrt[(b^2*u)/(4*c + b^2*u)]*v)*Hypergeometric2F1[(d - b^2*Sqrt[(d^2 - 4*c*e)/(b^4*u^2)]*u)/(2*c), (d + b^2*Sqrt[(d^2 - 4*c*e)/(b^4*u^2)]*u)/(2*c), (1 + d/c + (Sqrt[(b^2*u)/(4*c + b^2*u)]*(-d + c*(-1 + 2*v)))/c)/2, (1 - Sqrt[(b^2*u)/(4*c + b^2*u)])/2])/(2*c*Sqrt[(b^2*u)/(4*c + b^2*u)]*v*Hypergeometric2F1[(2*c + d - b^2*Sqrt[(d^2 - 4*c*e)/(b^4*u^2)]*u)/(2*c), (2*c + d + b^2*Sqrt[(d^2 - 4*c*e)/(b^4*u^2)]*u)/(2*c), (3 + d/c + (Sqrt[(b^2*u)/(4*c + b^2*u)]*(-d + c*(-1 + 2*v)))/c)/2, (1 - Sqrt[(b^2*u)/(4*c + b^2*u)])/2]) == Inactive[ContinuedFractionK][(e + d*k + c*k^2)/(u*(-1 + k + v)*(k + v)), b, {k, 1, Infinity}], Element[b | c | d | e | u | v, Complexes]]

(* {"Rational/Constant", 8}*)
ConditionalExpression[-b + (b*HypergeometricU[2*(Sqrt[d^2/(b^4*u^2) + e/(b^2*u)] - d/(b^2*u)), 1 + 4*Sqrt[d^2/(b^4*u^2) + e/(b^2*u)], -1 + (4*d)/(b^2*u) + 2*v])/(2*v*HypergeometricU[1 + 2*(Sqrt[d^2/(b^4*u^2) + e/(b^2*u)] - d/(b^2*u)), 1 + 4*Sqrt[d^2/(b^4*u^2) + e/(b^2*u)], -1 + (4*d)/(b^2*u) + 2*v]) == Inactive[ContinuedFractionK][(e + d*k - (b^2*k^2*u)/4)/(u*(-1 + k + v)*(k + v)), b, {k, 1, Infinity}], Element[b | d | e | u | v, Complexes]]

(* {"Rational/Constant", 9}*)
ConditionalExpression[(b*(-v + (c + d - c*Sqrt[(b^2*u)/(4*c + b^2*u)] - d*Sqrt[(b^2*u)/(4*c + b^2*u)] + 2*c*Sqrt[(b^2*u)/(4*c + b^2*u)]*v)/(2*c*Sqrt[(b^2*u)/(4*c + b^2*u)]*Hypergeometric2F1[(2*c + d - b^2*Sqrt[d^2/(b^4*u^2)]*u)/(2*c), (2*c + d + b^2*Sqrt[d^2/(b^4*u^2)]*u)/(2*c), (3 + d/c + (Sqrt[(b^2*u)/(4*c + b^2*u)]*(-d + c*(-1 + 2*v)))/c)/2, (1 - Sqrt[(b^2*u)/(4*c + b^2*u)])/2])))/v == Inactive[ContinuedFractionK][(d*k + c*k^2)/(u*(-1 + k + v)*(k + v)), b, {k, 1, Infinity}], Element[b | c | d | u | v, Complexes]]

(* {"Rational/Constant", 10}*)
ConditionalExpression[-b + (b*E^(1 - (4*d)/(b^2*u) - 2*v))/(2*v*ExpIntegralE[1 - (4*d)/(b^2*u), -1 + (4*d)/(b^2*u) + 2*v]) == Inactive[ContinuedFractionK][(d*k - (b^2*k^2*u)/4)/(u*(-1 + k + v)*(k + v)), b, {k, 1, Infinity}], Element[b | d | u | v, Complexes]]

(* {"Rational/Constant", 11}*)
ConditionalExpression[-b + (b*(1 - Sqrt[(b^2*u)/(4*c + b^2*u)] + 2*Sqrt[(b^2*u)/(4*c + b^2*u)]*v)*Hypergeometric2F1[-((b^2*Sqrt[-((c*e)/(b^4*u^2))]*u)/c), (b^2*Sqrt[-((c*e)/(b^4*u^2))]*u)/c, (1 + Sqrt[(b^2*u)/(4*c + b^2*u)]*(-1 + 2*v))/2, (1 - Sqrt[(b^2*u)/(4*c + b^2*u)])/2])/(2*Sqrt[(b^2*u)/(4*c + b^2*u)]*v*Hypergeometric2F1[1 - (b^2*Sqrt[-((c*e)/(b^4*u^2))]*u)/c, 1 + (b^2*Sqrt[-((c*e)/(b^4*u^2))]*u)/c, (3 + Sqrt[(b^2*u)/(4*c + b^2*u)]*(-1 + 2*v))/2, (1 - Sqrt[(b^2*u)/(4*c + b^2*u)])/2]) == Inactive[ContinuedFractionK][(e + c*k^2)/(u*(-1 + k + v)*(k + v)), b, {k, 1, Infinity}], Element[b | c | e | u | v, Complexes]]

(* {"Rational/Constant", 12}*)
ConditionalExpression[-b - (b*Sqrt[e/(b^2*u)]*(BesselK[-1/2 - 2*Sqrt[e/(b^2*u)], -1/2 + v] + BesselK[1/2 - 2*Sqrt[e/(b^2*u)], -1/2 + v]))/(v*(BesselK[-1/2 + 2*Sqrt[e/(b^2*u)], -1/2 + v] - BesselK[1/2 + 2*Sqrt[e/(b^2*u)], -1/2 + v])) == Inactive[ContinuedFractionK][(e - (b^2*k^2*u)/4)/(u*(-1 + k + v)*(k + v)), b, {k, 1, Infinity}], Element[b | e | u | v, Complexes]]

(* {"Rational/Constant", 13}*)
ConditionalExpression[-b + (b*(1 - Sqrt[(b^2*u)/(4*c + b^2*u)] + 2*Sqrt[(b^2*u)/(4*c + b^2*u)]*v))/(2*Sqrt[(b^2*u)/(4*c + b^2*u)]*v*Hypergeometric2F1[1, 1, (3 + Sqrt[(b^2*u)/(4*c + b^2*u)]*(-1 + 2*v))/2, (1 - Sqrt[(b^2*u)/(4*c + b^2*u)])/2]) == Inactive[ContinuedFractionK][(c*k^2)/(u*(-1 + k + v)*(k + v)), b, {k, 1, Infinity}], Element[b | c | u | v, Complexes]]

(* {"Rational/Constant", 14}*)
ConditionalExpression[-b - (b*E^(1 - 2*v))/(2*v*(CoshIntegral[-1 + 2*v] + SinhIntegral[1 - 2*v])) == Inactive[ContinuedFractionK][-(b^2*k^2)/(4*(-1 + k + v)*(k + v)), b, {k, 1, Infinity}], Element[b | v, Complexes]]

(* {"Rational/Constant", 15}*)
ConditionalExpression[-b - (2*b*c*e*Hypergeometric2F1[(d - Sqrt[(d^2 - 4*c*e)/u^2]*u)/(2*c), (d + Sqrt[(d^2 - 4*c*e)/u^2]*u)/(2*c), (c + d + c*Sqrt[(b^2*u)/(4*c + b^2*u)] - d*Sqrt[(b^2*u)/(4*c + b^2*u)])/(2*c), 1/2 - Sqrt[(b^2*u)/(4*c + b^2*u)]/2])/((c - d)*(4*c*Sqrt[(b^2*u)/(4*c + b^2*u)] + b^2*u*(-1 + Sqrt[(b^2*u)/(4*c + b^2*u)]))*Hypergeometric2F1[(-2*c + d - Sqrt[(d^2 - 4*c*e)/u^2]*u)/(2*c), (-2*c + d + Sqrt[(d^2 - 4*c*e)/u^2]*u)/(2*c), ((c - d)*(-1 + Sqrt[(b^2*u)/(4*c + b^2*u)]))/(2*c), (1 - Sqrt[(b^2*u)/(4*c + b^2*u)])/2]) == Inactive[ContinuedFractionK][(e + d*k + c*k^2)/(k*(1 + k)*u), b, {k, 1, Infinity}], Element[b | c | d | e | u, Complexes]]

(* {"Rational/Constant", 16}*)
ConditionalExpression[-b + (2*e*HypergeometricU[(2*(-d + u*Sqrt[(d^2 + b^2*e*u)/u^2]))/(b^2*u), (b^2 + 4*Sqrt[(d^2 + b^2*e*u)/u^2])/b^2, 1 + (4*d)/(b^2*u)])/(b*u*HypergeometricU[-((2*d + b^2*u - 2*u*Sqrt[(d^2 + b^2*e*u)/u^2])/(b^2*u)), (b^2 + 4*Sqrt[(d^2 + b^2*e*u)/u^2])/b^2, 1 + (4*d)/(b^2*u)]) == Inactive[ContinuedFractionK][(e + d*k - (b^2*k^2*u)/4)/(k*(1 + k)*u), b, {k, 1, Infinity}], Element[b | d | e | u, Complexes]]

(* {"Rational/Constant", 17}*)
ConditionalExpression[-b - (2*b*e*Hypergeometric2F1[e/(Sqrt[-((c*e)/u^2)]*u), (Sqrt[-((c*e)/u^2)]*u)/c, (1 + Sqrt[(b^2*u)/(4*c + b^2*u)])/2, (1 - Sqrt[(b^2*u)/(4*c + b^2*u)])/2])/((4*c*Sqrt[(b^2*u)/(4*c + b^2*u)] + b^2*u*(-1 + Sqrt[(b^2*u)/(4*c + b^2*u)]))*Hypergeometric2F1[-((c + Sqrt[-((c*e)/u^2)]*u)/c), -1 + (Sqrt[-((c*e)/u^2)]*u)/c, (-1 + Sqrt[(b^2*u)/(4*c + b^2*u)])/2, (1 - Sqrt[(b^2*u)/(4*c + b^2*u)])/2]) == Inactive[ContinuedFractionK][(e + c*k^2)/(k*(1 + k)*u), b, {k, 1, Infinity}], Element[b | c | e | u, Complexes]]

(* {"Rational/Constant", 18}*)
ConditionalExpression[-((b*((e + Sqrt[(b^2*e)/u]*u)*BesselK[-1/2 + (2*Sqrt[(b^2*e)/u])/b^2, 1/2] + (e - Sqrt[(b^2*e)/u]*u)*BesselK[1/2 + (2*Sqrt[(b^2*e)/u])/b^2, 1/2]))/(Sqrt[(b^2*e)/u]*u*(BesselK[-1/2 + (2*Sqrt[(b^2*e)/u])/b^2, 1/2] - BesselK[1/2 + (2*Sqrt[(b^2*e)/u])/b^2, 1/2]))) == Inactive[ContinuedFractionK][(e - (b^2*k^2*u)/4)/(k*(1 + k)*u), b, {k, 1, Infinity}], Element[b | e | u, Complexes]]

(* {"Rational/Constant", 19}*)
ConditionalExpression[b*(-1 + Sqrt[c/b^2]/ArcTan[Sqrt[c/b^2]]) == Inactive[ContinuedFractionK][(c*k^2)/(-1 + 4*k^2), b, {k, 1, Infinity}], Element[b | c, Complexes]]

(* {"Rational/Constant", 20}*)
ConditionalExpression[-b + (2*b*c*Hypergeometric2F1[(c - Sqrt[(c - d)^2] + d)/(2*c), (c + Sqrt[(c - d)^2] + d)/(2*c), (2*c + d - Sqrt[b^2/(b^2 + 4*c)]*d)/(2*c), 1/2 - Sqrt[b^2/(b^2 + 4*c)]/2])/(4*c*Sqrt[b^2/(b^2 + 4*c)] + b^2*(-1 + Sqrt[b^2/(b^2 + 4*c)])) == Inactive[ContinuedFractionK][c + d/k, b, {k, 1, Infinity}], Element[b | d | c, Complexes]]

(* {"Rational/Constant", 21}*)
ConditionalExpression[-b + (2*d*E^((4*d)/b^2)*ExpIntegralE[(-4*d)/b^2, (4*d)/b^2])/b == Inactive[ContinuedFractionK][-b^2/4 + d/k, b, {k, 1, Infinity}], Element[b | d, Complexes]]

(* {"Rational/Constant", 22}*)
ConditionalExpression[-b + (2*c*Sqrt[b^2/(b^2 + 4*c)]*Hypergeometric2F1[1, 1, (3 - Sqrt[b^2/(b^2 + 4*c)])/2, (1 - Sqrt[b^2/(b^2 + 4*c)])/2])/(b*(1 - Sqrt[b^2/(b^2 + 4*c)])) == Inactive[ContinuedFractionK][c + c/k, b, {k, 1, Infinity}], Element[b | c, Complexes]]

(* {"RiemannSiegelTheta", 1}*)
ConditionalExpression[RiemannSiegelTheta[z] == -(z*(Log[Pi] - PolyGamma[0, 1/4]))/2 - (z^3*PolyGamma[2, 1/4])/(48*(1 + Inactive[ContinuedFractionK][(z^2*PolyGamma[2*(1 + k), 1/4])/(8*(3 + 5*k + 2*k^2)*PolyGamma[2*k, 1/4]), 1 - (z^2*PolyGamma[2*(1 + k), 1/4])/(8*(3 + 5*k + 2*k^2)*PolyGamma[2*k, 1/4]), {k, 1, Infinity}])), Element[z, Complexes] && Abs[z] < 1/2]

(* {"Sec", 1}*)
ConditionalExpression[Sec[z] == 1 + z^2/(2*(1 - z^2/2 + Inactive[ContinuedFractionK][z^2/(2*(1 + k)*(1 + 2*k)), 1 - z^2/(2*(1 + k)*(1 + 2*k)), {k, 1, Infinity}])), Element[z, Complexes] && NotElement[-1/2 + z/Pi, Integers]]

(* {"Sec", 2}*)
ConditionalExpression[Sec[z] == (1 + Inactive[ContinuedFractionK][(z^2*(PolyLog[-2*k, -I] - PolyLog[-2*k, I]))/(2*k*(-1 + 2*k)*(PolyLog[2 - 2*k, -I] - PolyLog[2 - 2*k, I])), 1 - (z^2*(PolyLog[-2*k, -I] - PolyLog[-2*k, I]))/(2*k*(-1 + 2*k)*(PolyLog[2 - 2*k, -I] - PolyLog[2 - 2*k, I])), {k, 1, 100}])^(-1), Element[z, Complexes] && NotElement[-1/2 + z/Pi, Integers]]

(* {"Sech", 1}*)
ConditionalExpression[Sech[z] == 1 - z^2/(2*(1 + z^2/2 + Inactive[ContinuedFractionK][-z^2/(2*(1 + k)*(1 + 2*k)), 1 + z^2/(2*(1 + k)*(1 + 2*k)), {k, 1, Infinity}])), Element[z, Complexes] && NotElement[-1/2 + (I*z)/Pi, Integers]]

(* {"Sech", 2}*)
ConditionalExpression[Sech[z] == (1 + Inactive[ContinuedFractionK][-(z^2*(PolyLog[-2*k, -I] - PolyLog[-2*k, I]))/(2*k*(-1 + 2*k)*(PolyLog[2 - 2*k, -I] - PolyLog[2 - 2*k, I])), 1 + (z^2*(PolyLog[-2*k, -I] - PolyLog[-2*k, I]))/(2*k*(-1 + 2*k)*(PolyLog[2 - 2*k, -I] - PolyLog[2 - 2*k, I])), {k, 1, Infinity}])^(-1), Element[z, Complexes] && NotElement[-1/2 + (I*z)/Pi, Integers]]

(* {"Sin", 1}*)
ConditionalExpression[Sin[z] == z - z^3/(6*(1 + Inactive[ContinuedFractionK][z^2/(2*(1 + k)*(3 + 2*k)), 1 - z^2/(2*(1 + k)*(3 + 2*k)), {k, 1, Infinity}])), Element[z, Complexes]]

(* {"Sin", 2}*)
ConditionalExpression[Sin[z] == z/(1 + Inactive[ContinuedFractionK][z^2/(2*k*(1 + 2*k)), 1 - z^2/(2*k*(1 + 2*k)), {k, 1, Infinity}]), Element[z, Complexes]]

(* {"Sin", 3}*)
ConditionalExpression[Sin[z] == z*(1 - z/(Pi*(1 + Inactive[ContinuedFractionK][(1 - (-1)^k + k)/(2 + k) + ((-1 + 3*(-1)^k + 2*(-1)^k*k)*z)/((1 + k)*(2 + k)*Pi), (1 + (-1)^k)/(2 + k) + ((1 - 3*(-1)^k - 2*(-1)^k*k)*z)/((1 + k)*(2 + k)*Pi), {k, 1, Infinity}]))), Element[z, Complexes]]

(* {"Sin", 4}*)
ConditionalExpression[Sin[z] == z*(1 - z/(Pi*(1 + Inactive[ContinuedFractionK][(1 + 2*k + 2*k^2 - (-1)^k*(1 + 2*k))/8 + ((-1 + (-1)^k + 2*(-1)^k*k)*z)/(4*Pi), (1 + (-1)^k - (2*(-1)^k*z)/Pi)/2, {k, 1, Infinity}]))), Element[z, Complexes]]

(* {"Sin", 5}*)
ConditionalExpression[Sin[z] == z/(1 + z^2/(6 - z^2 + Inactive[ContinuedFractionK][2*k*(1 + 2*k)*z^2, 2*(1 + k)*(3 + 2*k) - z^2, {k, 1, Infinity}])), Element[z, Complexes]]

(* {"Sin", 6}*)
ConditionalExpression[Sin[Pi*z]/(Pi*z) == 1 + z/(1 + Inactive[ContinuedFractionK][-((1 + (-1)^k)*Floor[(1 + k)/2]*(-z + Floor[(1 + k)/2]))/2 - ((1 - (-1)^k)*Floor[(1 + k)/2]*(z + Floor[(1 + k)/2]))/2, (1 + (-1)^k)/2 + z, {k, 1, Infinity}]), Element[z, Complexes]]

(* {"Sin", 7}*)
ConditionalExpression[Sin[Pi*z]/(Pi*z) == 1 - z^2/(1 + Inactive[ContinuedFractionK][-(k^2*(k^2 - z^2)), 1 + 2*k*(1 + k) - z^2, {k, 1, Infinity}]), Element[z, Complexes]]

(* {"Sin", 8}*)
ConditionalExpression[Sin[(Pi*z)/2]/z == 1 + (1 - z^2)/(6 + Inactive[ContinuedFractionK][-2*k*(1 + 2*k)*((1 + 2*k)^2 - z^2), (1 + 2*k)^2 + (2 + 2*k)*(3 + 2*k) - z^2, {k, 1, Infinity}]), Element[z, Complexes]]

(* {"Sinc", 1}*)
ConditionalExpression[Sinc[z] == (1 + Inactive[ContinuedFractionK][z^2/(2*k*(1 + 2*k)), 1 - z^2/(2*k*(1 + 2*k)), {k, 1, Infinity}])^(-1), Element[z, Complexes]]

(* {"SinCompound", 1}*)
ConditionalExpression[Sin[z]^m == (2^(1 - m)*z^m*Inactive[Sum][(-1)^i*(-2*i + m)^m*Binomial[m, i], {i, 0, Floor[(-1 + m)/2]}])/(m!*(1 + Inactive[ContinuedFractionK][(z^2*(2*(-1 + k) + m)!*Inactive[Sum][(-1)^i*(-2*i + m)^(2*k + m)*Binomial[m, i], {i, 0, Floor[(-1 + m)/2]}])/((2*k + m)!*Inactive[Sum][(-1)^i*(-2*i + m)^(2*(-1 + k) + m)*Binomial[m, i], {i, 0, Floor[(-1 + m)/2]}]), 1 - (z^2*(2*(-1 + k) + m)!*Inactive[Sum][(-1)^i*(-2*i + m)^(2*k + m)*Binomial[m, i], {i, 0, Floor[(-1 + m)/2]}])/((2*k + m)!*Inactive[Sum][(-1)^i*(-2*i + m)^(2*(-1 + k) + m)*Binomial[m, i], {i, 0, Floor[(-1 + m)/2]}]), {k, 1, Infinity}])), Element[m, Integers] && Element[z, Complexes] && m > 0]

(* {"SinCompound", 2}*)
ConditionalExpression[(-Sin[Pi*z] + Sinh[Pi*z])/(Sin[Pi*z] + Sinh[Pi*z]) == (2*z^2)/(1 + Inactive[ContinuedFractionK][k^4 + 4*z^4, 1 + 2*k, {k, 1, Infinity}]), Element[z, Complexes]]

(* {"Sinh", 1}*)
ConditionalExpression[Sinh[z] == z + z^3/(6*(1 + Inactive[ContinuedFractionK][-z^2/(2*(1 + k)*(3 + 2*k)), 1 + z^2/(2*(1 + k)*(3 + 2*k)), {k, 1, Infinity}])), Element[z, Complexes]]

(* {"Sinh", 2}*)
ConditionalExpression[Sinh[z] == z/(1 + Inactive[ContinuedFractionK][-z^2/(2*k*(1 + 2*k)), 1 + z^2/(2*k*(1 + 2*k)), {k, 1, Infinity}]), Element[z, Complexes]]

(* {"Sinh", 3}*)
ConditionalExpression[Sinh[z] == z*(1 - (I*z)/(Pi*(1 + Inactive[ContinuedFractionK][(1 - (-1)^k + k)/(2 + k) + (I*(-1 + 3*(-1)^k + 2*(-1)^k*k)*z)/((1 + k)*(2 + k)*Pi), (1 + (-1)^k)/(2 + k) + (I*(1 - 3*(-1)^k - 2*(-1)^k*k)*z)/((1 + k)*(2 + k)*Pi), {k, 1, Infinity}]))), Element[z, Complexes]]

(* {"Sinh", 4}*)
ConditionalExpression[Sinh[z] == z*(1 - (I*z)/(Pi*(1 + Inactive[ContinuedFractionK][(1 + 2*k + 2*k^2 - (-1)^k*(1 + 2*k))/8 + ((I/4)*(-1 + (-1)^k + 2*(-1)^k*k)*z)/Pi, (1 + (-1)^k - ((2*I)*(-1)^k*z)/Pi)/2, {k, 1, Infinity}]))), Element[z, Complexes]]

(* {"Sinh", 5}*)
ConditionalExpression[Sinh[z] == z/(E^z*(1 + Inactive[ContinuedFractionK][((-1 - (-1)^k + 2*(-1)^k*(1 + k))*z)/(2*k*(1 + k)), 1, {k, 1, Infinity}])), Element[z, Complexes]]

(* {"Sinh", 6}*)
ConditionalExpression[Sinh[z] == z/(1 - z^2/(6 + z^2 + Inactive[ContinuedFractionK][-2*k*(1 + 2*k)*z^2, 2*(1 + k)*(3 + 2*k) + z^2, {k, 1, Infinity}])), Element[z, Complexes]]

(* {"Sinh", 7}*)
ConditionalExpression[Sinh[Pi*z]/(Pi*z) == 1 + z^2/(1 + Inactive[ContinuedFractionK][-(k^2*(k^2 + z^2)), 1 + 2*k*(1 + k) + z^2, {k, 1, Infinity}]), Element[z, Complexes]]

(* {"Sinh", 8}*)
ConditionalExpression[Sinh[(Pi*z)/2]/z == 1 + (1 + z^2)/(6 + Inactive[ContinuedFractionK][-2*k*(1 + 2*k)*((1 + 2*k)^2 + z^2), (1 + 2*k)^2 + (2 + 2*k)*(3 + 2*k) + z^2, {k, 1, Infinity}]), Element[z, Complexes]]

(* {"SinhCompound", 1}*)
ConditionalExpression[Sinh[z]^m == (2^(1 - m)*z^m*Inactive[Sum][(-1)^i*(-2*i + m)^m*Binomial[m, i], {i, 0, Floor[(-1 + m)/2]}])/(m!*(1 + Inactive[ContinuedFractionK][-((z^2*(2*(-1 + k) + m)!*Inactive[Sum][(-1)^i*(-2*i + m)^(2*k + m)*Binomial[m, i], {i, 0, Floor[(-1 + m)/2]}])/((2*k + m)!*Inactive[Sum][(-1)^i*(-2*i + m)^(2*(-1 + k) + m)*Binomial[m, i], {i, 0, Floor[(-1 + m)/2]}])), 1 + (z^2*(2*(-1 + k) + m)!*Inactive[Sum][(-1)^i*(-2*i + m)^(2*k + m)*Binomial[m, i], {i, 0, Floor[(-1 + m)/2]}])/((2*k + m)!*Inactive[Sum][(-1)^i*(-2*i + m)^(2*(-1 + k) + m)*Binomial[m, i], {i, 0, Floor[(-1 + m)/2]}]), {k, 1, Infinity}])), Element[m, Integers] && Element[z, Complexes] && m > 0]

(* {"SinhIntegral", 1}*)
ConditionalExpression[SinhIntegral[z] == z/(1 + Inactive[ContinuedFractionK][((1 - 2*k)*z^2)/(2*k*(1 + 2*k)^2), 1 - ((1 - 2*k)*z^2)/(2*k*(1 + 2*k)^2), {k, 1, Infinity}]), Element[z, Complexes]]

(* {"SinIntegral", 1}*)
ConditionalExpression[SinIntegral[z] == z/(1 + Inactive[ContinuedFractionK][-((1 - 2*k)*z^2)/(2*k*(1 + 2*k)^2), 1 + ((1 - 2*k)*z^2)/(2*k*(1 + 2*k)^2), {k, 1, Infinity}]), Element[z, Complexes]]

(* {"SphericalBesselJ", 1}*)
ConditionalExpression[SphericalBesselJ[\[Nu], z] == (2^(-1 - \[Nu])*Sqrt[Pi]*z^\[Nu])/(Gamma[3/2 + \[Nu]]*(1 + Inactive[ContinuedFractionK][z^2/(2*k*(1 + 2*k + 2*\[Nu])), 1 - z^2/(2*k*(1 + 2*k + 2*\[Nu])), {k, 1, Infinity}])), Element[\[Nu] | z, Complexes] &&  !(Element[1/2 + \[Nu], Integers] && 1/2 + \[Nu] <= 0)]

(* {"SphericalBesselJ", 2}*)
ConditionalExpression[SphericalBesselJ[\[Nu], z] == (I*(-2)^\[Nu]*Sqrt[Pi]*z^(-1 - \[Nu]))/(Gamma[1/2 - \[Nu]]*(1 + Inactive[ContinuedFractionK][z^2/(2*k*(-1 + 2*k - 2*\[Nu])), 1 - z^2/(2*k*(-1 + 2*k - 2*\[Nu])), {k, 1, Infinity}])), Element[z, Complexes] && Element[1/2 + \[Nu], Integers] && \[Nu] <= -1/2]

(* {"SphericalBesselJRatio", 1}*)
ConditionalExpression[SphericalBesselJ[\[Nu], z]/SphericalBesselJ[-1 + \[Nu], z] == z/(1 + 2*\[Nu] + Inactive[ContinuedFractionK][-z^2, 1 + 2*k + 2*\[Nu], {k, 1, Infinity}]), Element[\[Nu] | z, Complexes] &&  !(Element[1/2 + \[Nu], Integers] && 1/2 + \[Nu] <= 0)]

(* {"SphericalBesselJRatio", 2}*)
ConditionalExpression[SphericalBesselJ[1 + \[Nu], z]/SphericalBesselJ[\[Nu], z] == z/((3 + 2*\[Nu])*(1 + Inactive[ContinuedFractionK][-z^2/(4*(1/2 + k + \[Nu])*(3/2 + k + \[Nu])), 1, {k, 1, Infinity}])), Element[\[Nu] | z, Complexes]]

(* {"SphericalBesselJRatio", 3}*)
ConditionalExpression[SphericalBesselJ[1 + \[Nu], z]/SphericalBesselJ[\[Nu], z] == z/(3 - I*z + 2*\[Nu] + Inactive[ContinuedFractionK][I*z*(2 + 2*k + 2*\[Nu]), 3 + k - (2*I)*z + 2*\[Nu], {k, 1, Infinity}]), Element[\[Nu] | z, Complexes]]

(* {"SphericalBesselJRatio", 4}*)
ConditionalExpression[SphericalBesselJ[1 + \[Nu], z]/SphericalBesselJ[\[Nu], z] == -Inactive[ContinuedFractionK][-1, (1 + 2*k + 2*\[Nu])/z, {k, 1, Infinity}], Element[\[Nu] | z, Complexes] &&  !(Element[1/2 + \[Nu], Integers] && 1/2 + \[Nu] <= 0)]

(* {"SphericalBesselJRatio", 5}*)
ConditionalExpression[SphericalBesselJ[\[Nu], (2*I)*Sqrt[z]]/SphericalBesselJ[-1 + \[Nu], (2*I)*Sqrt[z]] == (I*Sqrt[z])/(1/2 + \[Nu] + Inactive[ContinuedFractionK][z, 1/2 + k + \[Nu], {k, 1, Infinity}]), Element[\[Nu] | z, Complexes] &&  !(Element[1/2 + \[Nu], Integers] && 1/2 + \[Nu] <= 0)]

(* {"SphericalBesselY", 1}*)
ConditionalExpression[SphericalBesselY[\[Nu], z] == Sec[Pi*\[Nu]]*(-((2^\[Nu]*Sqrt[Pi]*z^(-1 - \[Nu]))/(Gamma[1/2 - \[Nu]]*(1 + Inactive[ContinuedFractionK][z^2/(2*k*(-1 + 2*k - 2*\[Nu])), 1 - z^2/(2*k*(-1 + 2*k - 2*\[Nu])), {k, 1, Infinity}]))) - (2^(-1 - \[Nu])*Sqrt[Pi]*z^\[Nu]*Sin[Pi*\[Nu]])/(Gamma[3/2 + \[Nu]]*(1 + Inactive[ContinuedFractionK][z^2/(2*k*(1 + 2*k + 2*\[Nu])), 1 - z^2/(2*k*(1 + 2*k + 2*\[Nu])), {k, 1, Infinity}]))), Element[\[Nu] | z, Complexes] && NotElement[1/2 + \[Nu], Integers]]

(* {"SphericalBesselY", 2}*)
ConditionalExpression[SphericalBesselY[\[Nu], z] == -((2^\[Nu]*z^(-1 - \[Nu])*(-1/2 + \[Nu])!)/(Sqrt[Pi]*(1 + Inactive[ContinuedFractionK][-z^2/(2*k*(1 - 2*k + 2*\[Nu])), 1 + z^2/(2*k*(1 - 2*k + 2*\[Nu])), {k, 1, -1/2 + \[Nu]}]))) + (z^\[Nu]*Log[z/2])/(2^\[Nu]*Sqrt[Pi]*(1/2 + \[Nu])!*(1 + Inactive[ContinuedFractionK][z^2/(2*k*(1 + 2*k + 2*\[Nu])), 1 - z^2/(2*k*(1 + 2*k + 2*\[Nu])), {k, 1, Infinity}])) - (2^(-1 - \[Nu])*z^\[Nu]*(-EulerGamma + PolyGamma[0, 3/2 + \[Nu]]))/(Sqrt[Pi]*(1/2 + \[Nu])!*(1 + Inactive[ContinuedFractionK][(z^2*(PolyGamma[0, 1 + k] + PolyGamma[0, 3/2 + k + \[Nu]]))/(4*k*(1/2 + k + \[Nu])*(PolyGamma[0, k] + PolyGamma[0, 1/2 + k + \[Nu]])), 1 - (z^2*(PolyGamma[0, 1 + k] + PolyGamma[0, 3/2 + k + \[Nu]]))/(4*k*(1/2 + k + \[Nu])*(PolyGamma[0, k] + PolyGamma[0, 1/2 + k + \[Nu]])), {k, 1, Infinity}])), Element[z, Complexes] && Element[1/2 + \[Nu], Integers]]

(* {"SphericalHankelH1", 1}*)
ConditionalExpression[SphericalHankelH1[\[Nu], z] == ((-I)*2^\[Nu]*Sqrt[Pi]*z^(-1 - \[Nu])*Sec[Pi*\[Nu]])/(Gamma[1/2 - \[Nu]]*(1 + Inactive[ContinuedFractionK][z^2/(2*k*(-1 + 2*k - 2*\[Nu])), 1 - z^2/(2*k*(-1 + 2*k - 2*\[Nu])), {k, 1, Infinity}])) + (2^(-1 - \[Nu])*Sqrt[Pi]*z^\[Nu]*(1 - I*Tan[Pi*\[Nu]]))/(Gamma[3/2 + \[Nu]]*(1 + Inactive[ContinuedFractionK][z^2/(2*k*(1 + 2*k + 2*\[Nu])), 1 - z^2/(2*k*(1 + 2*k + 2*\[Nu])), {k, 1, Infinity}])), Element[\[Nu] | z, Complexes] &&  !(Element[1/2 + \[Nu], Integers] && 1/2 + \[Nu] >= 0) && Inequality[-Pi/2, Less, Arg[z], LessEqual, Pi]]

(* {"SphericalHankelH1", 2}*)
ConditionalExpression[SphericalHankelH1[\[Nu], z] == ((-I)*2^\[Nu]*z^(-1 - \[Nu])*(-1/2 + \[Nu])!)/(Sqrt[Pi]*(1 + Inactive[ContinuedFractionK][-z^2/(2*k*(1 - 2*k + 2*\[Nu])), 1 + z^2/(2*k*(1 - 2*k + 2*\[Nu])), {k, 1, -1/2 + \[Nu]}])) + (2^(-1 - \[Nu])*z^\[Nu]*(Pi + (2*I)*Log[z/2]))/(Sqrt[Pi]*(1/2 + \[Nu])!*(1 + Inactive[ContinuedFractionK][z^2/(2*k*(1 + 2*k + 2*\[Nu])), 1 - z^2/(2*k*(1 + 2*k + 2*\[Nu])), {k, 1, Infinity}])) - (I*2^(-1 - \[Nu])*z^\[Nu]*(-EulerGamma + PolyGamma[0, 3/2 + \[Nu]]))/(Sqrt[Pi]*(1/2 + \[Nu])!*(1 + Inactive[ContinuedFractionK][(z^2*(PolyGamma[0, 1 + k] + PolyGamma[0, 3/2 + k + \[Nu]]))/(2*k*(1 + 2*k + 2*\[Nu])*(PolyGamma[0, k] + PolyGamma[0, 1/2 + k + \[Nu]])), 1 - (z^2*(PolyGamma[0, 1 + k] + PolyGamma[0, 3/2 + k + \[Nu]]))/(2*k*(1 + 2*k + 2*\[Nu])*(PolyGamma[0, k] + PolyGamma[0, 1/2 + k + \[Nu]])), {k, 1, Infinity}])), Element[z, Complexes] && Element[1/2 + \[Nu], Integers] && \[Nu] >= -1/2]

(* {"SphericalHankelH2", 1}*)
ConditionalExpression[SphericalHankelH2[\[Nu], z] == (I*2^\[Nu]*Sqrt[Pi]*z^(-1 - \[Nu])*Sec[Pi*\[Nu]])/(Gamma[1/2 - \[Nu]]*(1 + Inactive[ContinuedFractionK][z^2/(2*k*(-1 + 2*k - 2*\[Nu])), 1 - z^2/(2*k*(-1 + 2*k - 2*\[Nu])), {k, 1, Infinity}])) + (2^(-1 - \[Nu])*Sqrt[Pi]*z^\[Nu]*(1 + I*Tan[Pi*\[Nu]]))/(Gamma[3/2 + \[Nu]]*(1 + Inactive[ContinuedFractionK][z^2/(2*k*(1 + 2*k + 2*\[Nu])), 1 - z^2/(2*k*(1 + 2*k + 2*\[Nu])), {k, 1, Infinity}])), Element[\[Nu] | z, Complexes] &&  !(Element[1/2 + \[Nu], Integers] && 1/2 + \[Nu] >= 0) && Inequality[-Pi/2, Less, Arg[z], LessEqual, Pi]]

(* {"SphericalHankelH2", 2}*)
ConditionalExpression[SphericalHankelH2[\[Nu], z] == (I*2^\[Nu]*z^(-1 - \[Nu])*(-1/2 + \[Nu])!)/(Sqrt[Pi]*(1 + Inactive[ContinuedFractionK][-z^2/(2*k*(1 - 2*k + 2*\[Nu])), 1 + z^2/(2*k*(1 - 2*k + 2*\[Nu])), {k, 1, -1/2 + \[Nu]}])) + (2^(-1 - \[Nu])*z^\[Nu]*(Pi - (2*I)*Log[z/2]))/(Sqrt[Pi]*(1/2 + \[Nu])!*(1 + Inactive[ContinuedFractionK][z^2/(2*k*(1 + 2*k + 2*\[Nu])), 1 - z^2/(2*k*(1 + 2*k + 2*\[Nu])), {k, 1, Infinity}])) + (I*2^(-1 - \[Nu])*z^\[Nu]*(-EulerGamma + PolyGamma[0, 3/2 + \[Nu]]))/(Sqrt[Pi]*(1/2 + \[Nu])!*(1 + Inactive[ContinuedFractionK][(z^2*(PolyGamma[0, 1 + k] + PolyGamma[0, 3/2 + k + \[Nu]]))/(2*k*(1 + 2*k + 2*\[Nu])*(PolyGamma[0, k] + PolyGamma[0, 1/2 + k + \[Nu]])), 1 - (z^2*(PolyGamma[0, 1 + k] + PolyGamma[0, 3/2 + k + \[Nu]]))/(2*k*(1 + 2*k + 2*\[Nu])*(PolyGamma[0, k] + PolyGamma[0, 1/2 + k + \[Nu]])), {k, 1, Infinity}])), Element[z, Complexes] && Element[1/2 + \[Nu], Integers] && \[Nu] >= -1/2]

(* {"Sqrt", 1}*)
ConditionalExpression[Sqrt[z] == 1 + Inactive[ContinuedFractionK][-1 + z, 2, {k, 1, Infinity}], Element[z, Complexes] && Abs[Arg[z]] < Pi]

(* {"Sqrt", 2}*)
ConditionalExpression[Sqrt[z] == z + Inactive[ContinuedFractionK][z - z^2, 2*z, {k, 1, Infinity}], Element[z, Complexes] && Inequality[-Pi/2, Less, Arg[z], LessEqual, Pi/2]]

(* {"Sqrt", 3}*)
ConditionalExpression[Sqrt[1 + z] == 1 + 2*Inactive[ContinuedFractionK][z/4, 1, {k, 1, Infinity}], Element[z, Complexes] && Abs[Arg[1 + z]] < Pi]

(* {"Sqrt", 4}*)
ConditionalExpression[Sqrt[1 + z] == 1 + 4*Inactive[ContinuedFractionK][z/16, 1/2, {k, 1, Infinity}], Element[z, Complexes] && Abs[Arg[1 + z]] < Pi]

(* {"Sqrt", 5}*)
ConditionalExpression[Sqrt[1 + z] == 1 + Inactive[ContinuedFractionK][z*(-(-1)^k/2 + Floor[k/2]), 1 + (-1)^k + ((1 - (-1)^k)*k)/2, {k, 1, Infinity}], Element[z, Complexes] && Abs[Arg[1 + z]] < Pi]

(* {"Sqrt", 6}*)
ConditionalExpression[Sqrt[x^2 + y] == x + y/(2*x + Inactive[ContinuedFractionK][y*((-1)^k + 2*Floor[(1 + k)/2]), (1 - (-1)^k)*x + (1 + (-1)^k)*(1 + k)*x, {k, 1, Infinity}]), Element[x | y, Complexes] && Abs[Arg[x^2 + y]] < Pi]

(* {"Sqrt", 7}*)
ConditionalExpression[Sqrt[x^2 + y] == x + y/(2*x + Inactive[ContinuedFractionK][y, 2*x, {k, 1, Infinity}]), Element[x | y, Complexes] && Abs[Arg[x^2 + y]] < Pi]

(* {"SqrtCompound", 1}*)
ConditionalExpression[(1 + Sqrt[1 + z])^(-1) == (2*Inactive[ContinuedFractionK][z/4, 1, {k, 1, Infinity}])/z, Element[z, Complexes] && Abs[Arg[1 + z]] < Pi]

(* {"SqrtCompound", 2}*)
ConditionalExpression[(2*z*(1 + z))/(1 + Sqrt[(1 + 2*z)^2]) == Inactive[ContinuedFractionK][z*(1 + z), 1, {k, 1, Infinity}], Element[z, Complexes] && Abs[Arg[1 + z]] < Pi]

(* {"SqrtCompound", 3}*)
ConditionalExpression[(2*z)/(b*(1 + Sqrt[1 + (4*z)/b^2])) == Inactive[ContinuedFractionK][z, b, {k, 1, Infinity}], Element[b | z, Complexes]]

(* {"SqrtCompound", 4}*)
ConditionalExpression[(2*e)/((1 + Sqrt[1 + (4*e)/z^2])*z) == Inactive[ContinuedFractionK][e, z, {k, 1, Infinity}], Element[e | z, Complexes]]

(* {"SqrtPPeriodic", 1}*)
ConditionalExpression[(a - b - \[Alpha]*\[Beta] + (a + b + \[Alpha]*\[Beta])*Sqrt[1 - (4*a*b)/(a + b + \[Alpha]*\[Beta])^2])/(2*\[Alpha]) == Inactive[ContinuedFractionK][Piecewise[{{a, Mod[k, 2] == 1}, {b, Mod[k, 2] == 0}}, 0], Piecewise[{{\[Alpha], Mod[k, 2] == 1}, {\[Beta], Mod[k, 2] == 0}}, 0], {k, 1, Infinity}], Element[a | b | \[Alpha] | \[Beta], Complexes] && Abs[Arg[1 - (4*a*b)/(a + b + \[Alpha]*\[Beta])^2]] < Pi]

(* {"SqrtPPeriodic", 2}*)
ConditionalExpression[(a - b - \[Alpha]*\[Beta] + (a + b + \[Alpha]*\[Beta])*Sqrt[1 - (4*a*b)/(a + b + \[Alpha]*\[Beta])^2])/(2*\[Alpha]) == Inactive[ContinuedFractionK][a*Mod[k, 2] + b*Mod[1 + k, 2], \[Alpha]*Mod[k, 2] + \[Beta]*Mod[1 + k, 2], {k, 1, Infinity}], Element[a | b | \[Alpha] | \[Beta], Complexes] && Abs[Arg[1 - (4*a*b)/(a + b + \[Alpha]*\[Beta])^2]] < Pi]

(* {"SqrtPPeriodic", 3}*)
ConditionalExpression[(-(\[Alpha]*\[Beta]) + (2*a + \[Alpha]*\[Beta])*Sqrt[1 - (4*a^2)/(2*a + \[Alpha]*\[Beta])^2])/(2*\[Alpha]) == Inactive[ContinuedFractionK][a, \[Alpha]*Mod[k, 2] + \[Beta]*Mod[1 + k, 2], {k, 1, Infinity}], Element[a | \[Alpha] | \[Beta], Complexes] && Abs[Arg[1 - (4*a^2)/(2*a + \[Alpha]*\[Beta])^2]] < Pi]

(* {"SqrtPPeriodic", 4}*)
ConditionalExpression[(a - b - \[Alpha]^2 + (a + b + \[Alpha]^2)*Sqrt[1 - (4*a*b)/(a + b + \[Alpha]^2)^2])/(2*\[Alpha]) == Inactive[ContinuedFractionK][a*Mod[k, 2] + b*Mod[1 + k, 2], \[Alpha], {k, 1, Infinity}], Element[a | b | \[Alpha], Complexes] && Abs[Arg[1 - (4*a*b)/(a + b + \[Alpha]^2)^2]] < Pi]

(* {"SqrtPPeriodic", 5}*)
ConditionalExpression[(-(c*\[Alpha]) + a*\[Beta] - b*\[Gamma] - \[Alpha]*\[Beta]*\[Gamma] + (c*\[Alpha] + a*\[Beta] + b*\[Gamma] + \[Alpha]*\[Beta]*\[Gamma])*Sqrt[1 + (4*a*b*c)/(c*\[Alpha] + a*\[Beta] + b*\[Gamma] + \[Alpha]*\[Beta]*\[Gamma])^2])/(2*(b + \[Alpha]*\[Beta])) == Inactive[ContinuedFractionK][Piecewise[{{a, Mod[k, 3] == 1}, {b, Mod[k, 3] == 2}, {c, Mod[k, 3] == 0}}, 0], Piecewise[{{\[Alpha], Mod[k, 3] == 1}, {\[Beta], Mod[k, 3] == 2}, {\[Gamma], Mod[k, 3] == 0}}, 0], {k, 1, Infinity}], Element[a | b | c | \[Alpha] | \[Beta] | \[Gamma], Complexes] && Abs[Arg[1 + (4*a*b*c)/(c*\[Alpha] + a*\[Beta] + b*\[Gamma] + \[Alpha]*\[Beta]*\[Gamma])^2]] < Pi]

(* {"SqrtPPeriodic", 6}*)
ConditionalExpression[(-(c*\[Alpha]) + a*\[Beta] - b*\[Gamma] - \[Alpha]*\[Beta]*\[Gamma] + (c*\[Alpha] + a*\[Beta] + b*\[Gamma] + \[Alpha]*\[Beta]*\[Gamma])*Sqrt[1 + (4*a*b*c)/(c*\[Alpha] + a*\[Beta] + b*\[Gamma] + \[Alpha]*\[Beta]*\[Gamma])^2])/(2*(b + \[Alpha]*\[Beta])) == Inactive[ContinuedFractionK][((a + 4*b - 2*c)*Mod[k, 3])/9 + ((4*a - 2*b + c)*Mod[1 + k, 3])/9 + ((-2*a + b + 4*c)*Mod[2 + k, 3])/9, ((\[Alpha] + 4*\[Beta] - 2*\[Gamma])*Mod[k, 3])/9 + ((4*\[Alpha] - 2*\[Beta] + \[Gamma])*Mod[1 + k, 3])/9 + ((-2*\[Alpha] + \[Beta] + 4*\[Gamma])*Mod[2 + k, 3])/9, {k, 1, Infinity}], Element[a | b | c | \[Alpha] | \[Beta] | \[Gamma], Complexes] && Abs[Arg[1 + (4*a*b*c)/(c*\[Alpha] + a*\[Beta] + b*\[Gamma] + \[Alpha]*\[Beta]*\[Gamma])^2]] < Pi]

(* {"SqrtPPeriodic", 7}*)
ConditionalExpression[-(a*\[Alpha] - a*\[Beta] + a*\[Gamma] + \[Alpha]*\[Beta]*\[Gamma] - (\[Alpha]*\[Beta]*\[Gamma] + a*(\[Alpha] + \[Beta] + \[Gamma]))*Sqrt[1 + (4*a^3)/(\[Alpha]*\[Beta]*\[Gamma] + a*(\[Alpha] + \[Beta] + \[Gamma]))^2])/(2*(a + \[Alpha]*\[Beta])) == Inactive[ContinuedFractionK][a, Piecewise[{{\[Alpha], Mod[k, 3] == 1}, {\[Beta], Mod[k, 3] == 2}, {\[Gamma], Mod[k, 3] == 0}}, 0], {k, 1, Infinity}], Element[a | \[Alpha] | \[Beta] | \[Gamma], Complexes] && Abs[Arg[1 + (4*a^3)/(\[Alpha]*\[Beta]*\[Gamma] + a*(\[Alpha] + \[Beta] + \[Gamma]))^2]] < Pi]

(* {"SqrtPPeriodic", 8}*)
ConditionalExpression[(\[Alpha]*(a - b - c - \[Alpha]^2 + (a + b + c + \[Alpha]^2)*Sqrt[1 + (4*a*b*c)/(\[Alpha]^2*(a + b + c + \[Alpha]^2)^2)]))/(2*(b + \[Alpha]^2)) == Inactive[ContinuedFractionK][Piecewise[{{a, Mod[k, 3] == 1}, {b, Mod[k, 3] == 2}, {c, Mod[k, 3] == 0}}, 0], \[Alpha], {k, 1, Infinity}], Element[a | b | c | \[Alpha], Complexes] && Abs[Arg[1 + (4*a*b*c)/(\[Alpha]^2*(a + b + c + \[Alpha]^2)^2)]] < Pi]

(* {"SqrtPPeriodic", 9}*)
ConditionalExpression[(a*(c + \[Beta]*\[Gamma]) - b*(d + \[Gamma]*\[Delta]) - \[Alpha]*(d*\[Beta] + c*\[Delta] + \[Beta]*\[Gamma]*\[Delta]) + (a*(c + \[Beta]*\[Gamma]) + b*(d + \[Gamma]*\[Delta]) + \[Alpha]*(d*\[Beta] + c*\[Delta] + \[Beta]*\[Gamma]*\[Delta]))*Sqrt[1 - (4*a*b*c*d)/(a*c + b*d + d*\[Alpha]*\[Beta] + a*\[Beta]*\[Gamma] + c*\[Alpha]*\[Delta] + b*\[Gamma]*\[Delta] + \[Alpha]*\[Beta]*\[Gamma]*\[Delta])^2])/(2*(c*\[Alpha] + b*\[Gamma] + \[Alpha]*\[Beta]*\[Gamma])) == Inactive[ContinuedFractionK][Piecewise[{{a, Mod[k, 4] == 1}, {b, Mod[k, 4] == 2}, {c, Mod[k, 4] == 3}, {d, Mod[k, 4] == 0}}, 0], Piecewise[{{\[Alpha], Mod[k, 4] == 1}, {\[Beta], Mod[k, 4] == 2}, {\[Gamma], Mod[k, 4] == 3}, {\[Delta], Mod[k, 4] == 0}}, 0], {k, 1, Infinity}], Element[a | b | c | d | \[Alpha] | \[Beta] | \[Gamma] | \[Delta], Complexes] && Abs[Arg[1 - (4*a*b*c*d)/(a*c + b*d + d*\[Alpha]*\[Beta] + a*\[Beta]*\[Gamma] + c*\[Alpha]*\[Delta] + b*\[Gamma]*\[Delta] + \[Alpha]*\[Beta]*\[Gamma]*\[Delta])^2]] < Pi]

(* {"SqrtPPeriodic", 10}*)
ConditionalExpression[(a*(c + \[Beta]*\[Gamma]) - b*(d + \[Gamma]*\[Delta]) - \[Alpha]*(d*\[Beta] + c*\[Delta] + \[Beta]*\[Gamma]*\[Delta]) + (a*(c + \[Beta]*\[Gamma]) + b*(d + \[Gamma]*\[Delta]) + \[Alpha]*(d*\[Beta] + c*\[Delta] + \[Beta]*\[Gamma]*\[Delta]))*Sqrt[1 - (4*a*b*c*d)/(a*c + b*d + d*\[Alpha]*\[Beta] + a*\[Beta]*\[Gamma] + c*\[Alpha]*\[Delta] + b*\[Gamma]*\[Delta] + \[Alpha]*\[Beta]*\[Gamma]*\[Delta])^2])/(2*(c*\[Alpha] + b*\[Gamma] + \[Alpha]*\[Beta]*\[Gamma])) == Inactive[ContinuedFractionK][((a + b + 7*c - 5*d)*Mod[k, 4])/24 + ((a + 7*b - 5*c + d)*Mod[1 + k, 4])/24 + ((7*a - 5*b + c + d)*Mod[2 + k, 4])/24 + ((-5*a + b + c + 7*d)*Mod[3 + k, 4])/24, ((\[Alpha] + \[Beta] + 7*\[Gamma] - 5*\[Delta])*Mod[k, 4])/24 + ((\[Alpha] + 7*\[Beta] - 5*\[Gamma] + \[Delta])*Mod[1 + k, 4])/24 + ((7*\[Alpha] - 5*\[Beta] + \[Gamma] + \[Delta])*Mod[2 + k, 4])/24 + ((-5*\[Alpha] + \[Beta] + \[Gamma] + 7*\[Delta])*Mod[3 + k, 4])/24, {k, 1, Infinity}], Element[a | b | c | d | \[Alpha] | \[Beta] | \[Gamma] | \[Delta], Complexes] && Abs[Arg[1 - (4*a*b*c*d)/(a*c + b*d + d*\[Alpha]*\[Beta] + a*\[Beta]*\[Gamma] + c*\[Alpha]*\[Delta] + b*\[Gamma]*\[Delta] + \[Alpha]*\[Beta]*\[Gamma]*\[Delta])^2]] < Pi]

(* {"SqrtPPeriodic", 11}*)
ConditionalExpression[(a*(a + \[Beta]*\[Gamma]) - a*(a + \[Gamma]*\[Delta]) - \[Alpha]*(\[Beta]*\[Gamma]*\[Delta] + a*(\[Beta] + \[Delta])) + (2*a^2 + \[Alpha]*\[Beta]*\[Gamma]*\[Delta] + a*(\[Alpha] + \[Gamma])*(\[Beta] + \[Delta]))*Sqrt[1 - (4*a^4)/(2*a^2 + \[Alpha]*\[Beta]*\[Gamma]*\[Delta] + a*(\[Alpha] + \[Gamma])*(\[Beta] + \[Delta]))^2])/(2*(\[Alpha]*\[Beta]*\[Gamma] + a*(\[Alpha] + \[Gamma]))) == Inactive[ContinuedFractionK][a, Piecewise[{{\[Alpha], Mod[k, 4] == 1}, {\[Beta], Mod[k, 4] == 2}, {\[Gamma], Mod[k, 4] == 3}, {\[Delta], Mod[k, 4] == 0}}, 0], {k, 1, Infinity}], Element[a | \[Alpha] | \[Beta] | \[Gamma] | \[Delta], Complexes] && Abs[Arg[1 - (4*a^4)/(2*a^2 + \[Alpha]*\[Beta]*\[Gamma]*\[Delta] + a*(\[Alpha] + \[Gamma])*(\[Beta] + \[Delta]))^2]] < Pi]

(* {"SqrtPPeriodic", 12}*)
ConditionalExpression[(a*(c + \[Alpha]^2) - b*(d + \[Alpha]^2) - \[Alpha]^2*(c + d + \[Alpha]^2) + (a*(c + \[Alpha]^2) + b*(d + \[Alpha]^2) + \[Alpha]^2*(c + d + \[Alpha]^2))*Sqrt[1 - (4*a*b*c*d)/(a*(c + \[Alpha]^2) + b*(d + \[Alpha]^2) + \[Alpha]^2*(c + d + \[Alpha]^2))^2])/(2*\[Alpha]*(b + c + \[Alpha]^2)) == Inactive[ContinuedFractionK][Piecewise[{{a, Mod[k, 4] == 1}, {b, Mod[k, 4] == 2}, {c, Mod[k, 4] == 3}, {d, Mod[k, 4] == 0}}, 0], \[Alpha], {k, 1, Infinity}], Element[a | b | c | d | \[Alpha], Complexes] && Abs[Arg[1 - (4*a*b*c*d)/(a*(c + \[Alpha]^2) + b*(d + \[Alpha]^2) + \[Alpha]^2*(c + d + \[Alpha]^2))^2]] < Pi]

(* {"SqrtPPeriodic", 13}*)
ConditionalExpression[(a*\[Beta]*(d + \[Gamma]*\[Delta]) - c*(e*\[Alpha] - a*\[Delta] + \[Alpha]*\[Delta]*\[Epsilon]) - (b + \[Alpha]*\[Beta])*(e*\[Gamma] + d*\[Epsilon] + \[Gamma]*\[Delta]*\[Epsilon]) + (a*\[Beta]*(d + \[Gamma]*\[Delta]) + (b + \[Alpha]*\[Beta])*(e*\[Gamma] + d*\[Epsilon] + \[Gamma]*\[Delta]*\[Epsilon]) + c*(e*\[Alpha] + \[Delta]*(a + \[Alpha]*\[Epsilon])))*Sqrt[1 + (4*a*b*c*d*e)/(a*\[Beta]*(d + \[Gamma]*\[Delta]) + (b + \[Alpha]*\[Beta])*(e*\[Gamma] + (d + \[Gamma]*\[Delta])*\[Epsilon]) + c*(e*\[Alpha] + \[Delta]*(a + \[Alpha]*\[Epsilon])))^2])/(2*(b*d + d*\[Alpha]*\[Beta] + c*\[Alpha]*\[Delta] + b*\[Gamma]*\[Delta] + \[Alpha]*\[Beta]*\[Gamma]*\[Delta])) == Inactive[ContinuedFractionK][Piecewise[{{a, Mod[k, 5] == 1}, {b, Mod[k, 5] == 2}, {c, Mod[k, 5] == 3}, {d, Mod[k, 5] == 4}, {e, Mod[k, 5] == 0}}, 0], Piecewise[{{\[Alpha], Mod[k, 5] == 1}, {\[Beta], Mod[k, 5] == 2}, {\[Gamma], Mod[k, 5] == 3}, {\[Delta], Mod[k, 5] == 4}, {\[Epsilon], Mod[k, 5] == 0}}, 0], {k, 1, Infinity}], Element[a | b | c | d | e | \[Alpha] | \[Beta] | \[Gamma] | \[Delta] | \[Epsilon], Complexes] && Abs[Arg[1 + (4*a*b*c*d*e)/(a*\[Beta]*(d + \[Gamma]*\[Delta]) + (b + \[Alpha]*\[Beta])*(e*\[Gamma] + (d + \[Gamma]*\[Delta])*\[Epsilon]) + c*(e*\[Alpha] + \[Delta]*(a + \[Alpha]*\[Epsilon])))^2]] < Pi]

(* {"SqrtPPeriodic", 14}*)
ConditionalExpression[(a*\[Beta]*(d + \[Gamma]*\[Delta]) - c*(e*\[Alpha] - a*\[Delta] + \[Alpha]*\[Delta]*\[Epsilon]) - (b + \[Alpha]*\[Beta])*(e*\[Gamma] + d*\[Epsilon] + \[Gamma]*\[Delta]*\[Epsilon]) + (a*\[Beta]*(d + \[Gamma]*\[Delta]) + (b + \[Alpha]*\[Beta])*(e*\[Gamma] + d*\[Epsilon] + \[Gamma]*\[Delta]*\[Epsilon]) + c*(e*\[Alpha] + \[Delta]*(a + \[Alpha]*\[Epsilon])))*Sqrt[1 + (4*a*b*c*d*e)/(a*\[Beta]*(d + \[Gamma]*\[Delta]) + (b + \[Alpha]*\[Beta])*(e*\[Gamma] + (d + \[Gamma]*\[Delta])*\[Epsilon]) + c*(e*\[Alpha] + \[Delta]*(a + \[Alpha]*\[Epsilon])))^2])/(2*(b*d + d*\[Alpha]*\[Beta] + c*\[Alpha]*\[Delta] + b*\[Gamma]*\[Delta] + \[Alpha]*\[Beta]*\[Gamma]*\[Delta])) == Inactive[ContinuedFractionK][((a + b + c + 11*d - 9*e)*Mod[k, 5])/50 + ((a + b + 11*c - 9*d + e)*Mod[1 + k, 5])/50 + ((a + 11*b - 9*c + d + e)*Mod[2 + k, 5])/50 + ((11*a - 9*b + c + d + e)*Mod[3 + k, 5])/50 + ((-9*a + b + c + d + 11*e)*Mod[4 + k, 5])/50, ((\[Alpha] + \[Beta] + \[Gamma] + 11*\[Delta] - 9*\[Epsilon])*Mod[k, 5])/50 + ((\[Alpha] + \[Beta] + 11*\[Gamma] - 9*\[Delta] + \[Epsilon])*Mod[1 + k, 5])/50 + ((\[Alpha] + 11*\[Beta] - 9*\[Gamma] + \[Delta] + \[Epsilon])*Mod[2 + k, 5])/50 + ((11*\[Alpha] - 9*\[Beta] + \[Gamma] + \[Delta] + \[Epsilon])*Mod[3 + k, 5])/50 + ((-9*\[Alpha] + \[Beta] + \[Gamma] + \[Delta] + 11*\[Epsilon])*Mod[4 + k, 5])/50, {k, 1, Infinity}], Element[a | b | c | d | e | \[Alpha] | \[Beta] | \[Gamma] | \[Delta] | \[Epsilon], Complexes] && Abs[Arg[1 + (4*a*b*c*d*e)/(a*\[Beta]*(d + \[Gamma]*\[Delta]) + (b + \[Alpha]*\[Beta])*(e*\[Gamma] + (d + \[Gamma]*\[Delta])*\[Epsilon]) + c*(e*\[Alpha] + \[Delta]*(a + \[Alpha]*\[Epsilon])))^2]] < Pi]

(* {"SqrtPPeriodic", 15}*)
ConditionalExpression[(a*\[Beta]*(a + \[Gamma]*\[Delta]) - a*(a*(\[Alpha] - \[Delta]) + \[Alpha]*\[Delta]*\[Epsilon]) - (a + \[Alpha]*\[Beta])*(\[Gamma]*\[Delta]*\[Epsilon] + a*(\[Gamma] + \[Epsilon])) + (\[Alpha]*\[Beta]*\[Gamma]*\[Delta]*\[Epsilon] + a^2*(\[Alpha] + \[Beta] + \[Gamma] + \[Delta] + \[Epsilon]) + a*(\[Gamma]*\[Delta]*(\[Beta] + \[Epsilon]) + \[Alpha]*(\[Delta]*\[Epsilon] + \[Beta]*(\[Gamma] + \[Epsilon]))))*Sqrt[1 + (4*a^5)/(\[Alpha]*\[Beta]*\[Gamma]*\[Delta]*\[Epsilon] + a^2*(\[Alpha] + \[Beta] + \[Gamma] + \[Delta] + \[Epsilon]) + a*(\[Gamma]*\[Delta]*(\[Beta] + \[Epsilon]) + \[Alpha]*(\[Delta]*\[Epsilon] + \[Beta]*(\[Gamma] + \[Epsilon]))))^2])/(2*(a^2 + a*\[Alpha]*\[Beta] + a*\[Alpha]*\[Delta] + a*\[Gamma]*\[Delta] + \[Alpha]*\[Beta]*\[Gamma]*\[Delta])) == Inactive[ContinuedFractionK][a, Piecewise[{{\[Alpha], Mod[k, 5] == 1}, {\[Beta], Mod[k, 5] == 2}, {\[Gamma], Mod[k, 5] == 3}, {\[Delta], Mod[k, 5] == 4}, {\[Epsilon], Mod[k, 5] == 0}}, 0], {k, 1, Infinity}], Element[a | \[Alpha] | \[Beta] | \[Gamma] | \[Delta] | \[Epsilon], Complexes] && Abs[Arg[1 + (4*a^5)/(\[Alpha]*\[Beta]*\[Gamma]*\[Delta]*\[Epsilon] + a^2*(\[Alpha] + \[Beta] + \[Gamma] + \[Delta] + \[Epsilon]) + a*(\[Gamma]*\[Delta]*(\[Beta] + \[Epsilon]) + \[Alpha]*(\[Delta]*\[Epsilon] + \[Beta]*(\[Gamma] + \[Epsilon]))))^2]] < Pi]

(* {"SqrtPPeriodic", 16}*)
ConditionalExpression[(\[Alpha]*(a*(d + \[Alpha]^2) - c*(-a + e + \[Alpha]^2) - (b + \[Alpha]^2)*(d + e + \[Alpha]^2) + (a*(d + \[Alpha]^2) + c*(a + e + \[Alpha]^2) + (b + \[Alpha]^2)*(d + e + \[Alpha]^2))*Sqrt[1 + (4*a*b*c*d*e)/(\[Alpha]^2*(a*(d + \[Alpha]^2) + c*(a + e + \[Alpha]^2) + (b + \[Alpha]^2)*(d + e + \[Alpha]^2))^2)]))/(2*(b*d + b*\[Alpha]^2 + c*\[Alpha]^2 + d*\[Alpha]^2 + \[Alpha]^4)) == Inactive[ContinuedFractionK][Piecewise[{{a, Mod[k, 5] == 1}, {b, Mod[k, 5] == 2}, {c, Mod[k, 5] == 3}, {d, Mod[k, 5] == 4}, {e, Mod[k, 5] == 0}}, 0], \[Alpha], {k, 1, Infinity}], Element[a | b | c | d | e | \[Alpha], Complexes] && Abs[Arg[1 + (4*a*b*c*d*e)/(\[Alpha]^2*(a*(d + \[Alpha]^2) + c*(a + e + \[Alpha]^2) + (b + \[Alpha]^2)*(d + e + \[Alpha]^2))^2)]] < Pi]

(* {"StruveH", 1}*)
ConditionalExpression[StruveH[\[Nu], z] == z^(1 + \[Nu])/(2^\[Nu]*Sqrt[Pi]*Gamma[3/2 + \[Nu]]*(1 + Inactive[ContinuedFractionK][z^2/((1 + 2*k)*(1 + 2*k + 2*\[Nu])), 1 - z^2/((1 + 2*k)*(1 + 2*k + 2*\[Nu])), {k, 1, Infinity}])), Element[\[Nu] | z, Complexes] &&  !(Element[\[Nu], Integers] && \[Nu] <= 0)]

(* {"StruveH", 2}*)
ConditionalExpression[StruveH[-3/2 - m, z] == ((-1)^(-1 + m)*2^(-3/2 - m)*z^(3/2 + m))/(Gamma[5/2 + m]*(1 + Inactive[ContinuedFractionK][z^2/(2*k*(3 + 2*k + 2*m)), 1 - z^2/(2*k*(3 + 2*k + 2*m)), {k, 1, Infinity}])), Element[m, Integers] && Element[z, Complexes] && m >= 0]

(* {"StruveL", 1}*)
ConditionalExpression[StruveL[\[Nu], z] == z^(1 + \[Nu])/(2^\[Nu]*Sqrt[Pi]*Gamma[3/2 + \[Nu]]*(1 + Inactive[ContinuedFractionK][-(z^2/((1 + 2*k)*(1 + 2*k + 2*\[Nu]))), 1 + z^2/((1 + 2*k)*(1 + 2*k + 2*\[Nu])), {k, 1, Infinity}])), Element[\[Nu] | z, Complexes] &&  !(Element[\[Nu], Integers] && \[Nu] <= 0)]

(* {"StruveL", 2}*)
ConditionalExpression[StruveL[-3/2 - m, z] == (2^(-3/2 - m)*z^(3/2 + m))/(Gamma[5/2 + m]*(1 + Inactive[ContinuedFractionK][-z^2/(2*k*(3 + 2*k + 2*m)), 1 + z^2/(2*k*(3 + 2*k + 2*m)), {k, 1, Infinity}])), Element[m, Integers] && Element[z, Complexes] && m >= 0]

(* {"SumFromFunction", 1}*)
ConditionalExpression[Inactive[Sum][(-1)^k/(2*k + z), {k, 1, Infinity}] == (-1 + (z + Inactive[ContinuedFractionK][k*(1 + k), z, {k, 1, Infinity}])^(-1))/(2*z), Element[z, Complexes] && Re[z] > 1]

(* {"SumFromFunction", 2}*)
ConditionalExpression[Inactive[Sum][(-1)^k/(k + z)^2, {k, 1, Infinity}] == (-1 + (z + Inactive[ContinuedFractionK][((1 - (-1)^k)*(1 + k)^2)/8 + ((1 + (-1)^k)*k*(2 + k))/8, z, {k, 1, Infinity}])^(-1))/(2*z^2), Element[z, Complexes] && Re[z] > 1]

(* {"SumFromFunction", 3}*)
ConditionalExpression[Inactive[Sum][(-1)^k/(1 + 2*k + z)^2, {k, 0, Infinity}] == 1/(2*(-1 + z^2 + Inactive[ContinuedFractionK][((1 + (-1)^k)*k^2)/2 + ((1 - (-1)^k)*(1 + k)^2)/2, (1 - (-1)^k)/2 + ((1 + (-1)^k)*(-1 + z^2))/2, {k, 1, Infinity}])), Element[z, Complexes] && Re[z] > 1]

(* {"SumFromFunction", 4}*)
ConditionalExpression[Inactive[Sum][(-1)^(-1 + k)/((a + k)*(b + k)), {k, 1, Infinity}] == ((1 + a)*(1 + b) + Inactive[ContinuedFractionK][(a + k)^2*(b + k)^2, 1 + a + b + 2*k, {k, 1, Infinity}])^(-1), Element[a | b, Complexes] && Re[a] > 0 && Re[b] > 0]

(* {"SumFromFunction", 5}*)
ConditionalExpression[Inactive[Sum][(-1)^k/(1 - b + 2*k + z) - (-1)^k/(1 + b + 2*k + z), {k, 0, Infinity}] == b/(-1 + z^2 + Inactive[ContinuedFractionK][((1 + (-1)^k)*k^2)/2 + ((1 - (-1)^k)*(-b^2 + (1 + k)^2))/2, (1 - (-1)^k)/2 + ((1 + (-1)^k)*(-1 + z^2))/2, {k, 1, Infinity}]), Element[b | z, Complexes] && Re[z] > 1 + Abs[Re[b]]]

(* {"SumFromFunction", 6}*)
ConditionalExpression[Inactive[Sum][(1 - a - b + 2*k + z)^(-1) - (1 + a - b + 2*k + z)^(-1) - (1 - a + b + 2*k + z)^(-1) + (1 + a + b + 2*k + z)^(-1), {k, 0, Infinity}] == (2*a*b)/(-1 - a^2 + b^2 + z^2 + Inactive[ContinuedFractionK][((1 + (-1)^k)*k*(-a^2 + k^2/4))/2 + ((1 - (-1)^k)*(1 + k)*(-b^2 + (1 + k)^2/4))/2, (1 - (-1)^k)/2 + ((1 + (-1)^k)*(-a^2 + b^2 + (1 + k)*(-1 + z^2)))/2, {k, 1, Infinity}]), Element[a | b | z, Complexes] && Re[z] > 1 + Abs[Re[a]] + Abs[Re[b]]]

(* {"SumFromFunction", 7}*)
ConditionalExpression[Inactive[Sum][(1 - b + 2*k + z)^(-2) - (1 + b + 2*k + z)^(-2), {k, 0, Infinity}] == b/(-1 + b^2 + z^2 + Inactive[ContinuedFractionK][((1 + (-1)^k)*k^3)/8 + ((1 - (-1)^k)*(1 + k)*(-4*b^2 + (1 + k)^2))/8, (1 - (-1)^k)/2 + ((1 + (-1)^k)*(b^2 + (1 + k)*(-1 + z^2)))/2, {k, 1, Infinity}]), Element[b | z, Complexes] && Re[z] > 1 + Abs[Re[b]]]

(* {"SumFromFunction", 8}*)
ConditionalExpression[Inactive[Sum][(1 - b + 2*k + z)^(-2) - (1 + b + 2*k + z)^(-2), {k, 0, Infinity}] == b/(1 - b^2 + z^2 + Inactive[ContinuedFractionK][4*k^4*(b^2 - k^2), (1 + 2*k)*(1 - b^2 + 2*k + 2*k^2 + z^2), {k, 1, Infinity}]), Element[b | z, Complexes] && Re[z] > 1 + Abs[Re[b]]]

(* {"SumFromFunction", 10}*)
ConditionalExpression[Inactive[Sum][((-1)^k*((-1 + Sqrt[1 + z^2])/z)^(1 + 2*k))/(1 + 2*k + a/Sqrt[1 + z^2]), {k, 0, Infinity}] == z/(2*(1 + a + Inactive[ContinuedFractionK][k^2*z^2, 1 + a + 2*k, {k, 1, Infinity}])), Element[a | z, Complexes]]

(* {"SumFromFunction", 11}*)
ConditionalExpression[Inactive[Sum][((-1)^k*((-1 + Sqrt[1 + z^2])/z)^(2*k))/(2*k + a/Sqrt[1 + z^2]), {k, 1, Infinity}] == -(-1 + Sqrt[1 + z^2])/(2*a) + z^2/(2*a*(2 + a + Inactive[ContinuedFractionK][k*(1 + k)*z^2, 2 + a + 2*k, {k, 1, Infinity}])), Element[a | z, Complexes]]

(* {"SumFromFunction", 12}*)
ConditionalExpression[Inactive[Sum][((-1)^k*((-1 + Sqrt[1 + z^2])/z)^(2*k)*Pochhammer[b, k])/((b + 2*k + a/Sqrt[1 + z^2])*k!), {k, 0, Infinity}] == ((1 + z^(-2))^((1 - b)/2)*z)/(2^b*((-1 + Sqrt[1 + z^2])/z)^b*(a + b + Inactive[ContinuedFractionK][k*(-1 + b + k)*z^2, a + b + 2*k, {k, 1, Infinity}])), Element[a | b | z, Complexes]]

(* {"SumFromFunction", 13}*)
Inactive[Sum][2^(-Floor[GoldenRatio*k]), {k, 1, Infinity}] == Inactive[ContinuedFractionK][1, 2^Fibonacci[-1 + k], {k, 1, Infinity}]

(* {"Tan", 1}*)
ConditionalExpression[Tan[z] == z/(1 + Inactive[ContinuedFractionK][-(z^2/((-1 + 2*k)*(1 + 2*k))), 1, {k, 1, Infinity}]), NotElement[-1/2 + z/Pi, Integers]]

(* {"Tan", 2}*)
ConditionalExpression[Tan[z] == z/(1 + Inactive[ContinuedFractionK][-(((-1 + 4^(1 + k))*z^2*Zeta[2 + 2*k])/((-1 + 4^k)*Pi^2*Zeta[2*k])), 1 + ((-1 + 4^(1 + k))*z^2*Zeta[2 + 2*k])/((-1 + 4^k)*Pi^2*Zeta[2*k]), {k, 1, Infinity}]), Element[z, Complexes] && NotElement[-1/2 + z/Pi, Integers]]

(* {"Tan", 3}*)
ConditionalExpression[Tan[z] == -(Inactive[ContinuedFractionK][-z^2, -1 + 2*k, {k, 1, Infinity}]/z), NotElement[-1/2 + z/Pi, Integers]]

(* {"Tan", 4}*)
ConditionalExpression[Tan[z] == z/(1 - (4*z^2)/(Pi^2*(1 + Inactive[ContinuedFractionK][k^4 - (4*k^2*z^2)/Pi^2, 1 + 2*k, {k, 1, Infinity}]))), NotElement[-1/2 + z/Pi, Integers]]

(* {"Tan", 5}*)
ConditionalExpression[Tan[(Pi*z)/4] == z/(1 + Inactive[ContinuedFractionK][(-1 + 2*k)^2 - z^2, 2, {k, 1, Infinity}]), NotElement[-1/2 + z/4, Integers]]

(* {"Tan", 6}*)
ConditionalExpression[Tan[z] == -Inactive[ContinuedFractionK][-1, (-1 + 2*k)/z, {k, 1, Infinity}], NotElement[-1/2 + z/Pi, Integers]]

(* {"Tan", 7}*)
ConditionalExpression[Tan[z] == z + z^3/(3*(1 + Inactive[ContinuedFractionK][(2*(-1 + 4^(2 + k))*z^2*BernoulliB[2*(2 + k)])/((-1 + 4^(1 + k))*(2 + k)*(3 + 2*k)*BernoulliB[2*(1 + k)]), 1 - (2*(-1 + 4^(2 + k))*z^2*BernoulliB[2*(2 + k)])/((-1 + 4^(1 + k))*(2 + k)*(3 + 2*k)*BernoulliB[2*(1 + k)]), {k, 1, Infinity}])), NotElement[-1/2 + z/Pi, Integers]]

(* {"Tan", 8}*)
ConditionalExpression[Tan[z] == z + Inactive[ContinuedFractionK][(7 - 4*k)*(1 + 4*k)*z^4, (-3 + 4*k)*(-1 + 4*k)*(1 + 4*k) - (-2 + 8*k)*z^2, {k, 1, Infinity}]/(3*z), Element[z, Complexes] && NotElement[-1/2 + z/Pi, Integers]]

(* {"Tan", 9}*)
ConditionalExpression[Tan[z] == (-1 + z^(-1) + Inactive[ContinuedFractionK][1, (1 - (-1)^k)/2 + ((1 + (-1)^k)*(-2 + (1 + k)/z))/2, {k, 1, Infinity}])^(-1), Element[z, Complexes] && NotElement[-1/2 + z/Pi, Integers]]

(* {"Tan", 10}*)
ConditionalExpression[Tan[m*z] == (m*Tan[z])/(1 + Inactive[ContinuedFractionK][(k^2 - m^2)*Tan[z]^2, 1 + 2*k, {k, 1, -1 + m}]), Element[m, Integers] && Element[z, Complexes] && m > 0]

(* {"TanCompound", 1}*)
ConditionalExpression[(-(b*Tan[(a*Pi)/2]) + a*Tan[(b*Pi)/2])/(a*Tan[(a*Pi)/2] - b*Tan[(b*Pi)/2]) == -((a*b)/(1 + Inactive[ContinuedFractionK][(-a^2 + k^2)*(-b^2 + k^2), 1 + 2*k, {k, 1, Infinity}])), Element[a | b | z, Complexes] && Re[a^2 - b^2] > 0]

(* {"Tanh", 1}*)
ConditionalExpression[Tanh[z] == z/(1 + Inactive[ContinuedFractionK][z^2/((-1 + 2*k)*(1 + 2*k)), 1, {k, 1, Infinity}]), NotElement[-1/2 + (I*z)/Pi, Integers]]

(* {"Tanh", 2}*)
ConditionalExpression[Tanh[z] == z/(1 + Inactive[ContinuedFractionK][((-1 + 4^(1 + k))*z^2*Zeta[2 + 2*k])/((-1 + 4^k)*Pi^2*Zeta[2*k]), 1 - ((-1 + 4^(1 + k))*z^2*Zeta[2 + 2*k])/((-1 + 4^k)*Pi^2*Zeta[2*k]), {k, 1, Infinity}]), Element[z, Complexes] && NotElement[-1/2 + (I*z)/Pi, Integers]]

(* {"Tanh", 3}*)
ConditionalExpression[Tanh[z] == Inactive[ContinuedFractionK][z^2, -1 + 2*k, {k, 1, Infinity}]/z, NotElement[-1/2 + (I*z)/Pi, Integers]]

(* {"Tanh", 4}*)
ConditionalExpression[Tanh[z] == z/(1 + (4*z^2)/(Pi^2*(1 + Inactive[ContinuedFractionK][k^4 + (4*k^2*z^2)/Pi^2, 1 + 2*k, {k, 1, Infinity}]))), NotElement[-1/2 + (I*z)/Pi, Integers]]

(* {"Tanh", 5}*)
ConditionalExpression[Tanh[(Pi*z)/4] == z/(1 + Inactive[ContinuedFractionK][(-1 + 2*k)^2 + z^2, 2, {k, 1, Infinity}]), NotElement[-1/2 + (I/4)*z, Integers]]

(* {"Tanh", 6}*)
ConditionalExpression[Tanh[z] == Inactive[ContinuedFractionK][1, (-1 + 2*k)/z, {k, 1, Infinity}], NotElement[-1/2 + (I*z)/Pi, Integers]]

(* {"Tanh", 7}*)
ConditionalExpression[Tanh[z] == z - z^3/(3*(1 + Inactive[ContinuedFractionK][(2*(1 - 4^(2 + k))*z^2*BernoulliB[2*(2 + k)])/((-1 + 4^(1 + k))*(2 + k)*(3 + 2*k)*BernoulliB[2*(1 + k)]), 1 - (2*(1 - 4^(2 + k))*z^2*BernoulliB[2*(2 + k)])/((-1 + 4^(1 + k))*(2 + k)*(3 + 2*k)*BernoulliB[2*(1 + k)]), {k, 1, Infinity}])), NotElement[-1/2 + (I*z)/Pi, Integers]]

(* {"Tanh", 8}*)
ConditionalExpression[Tanh[z] == z - Inactive[ContinuedFractionK][(7 - 4*k)*(1 + 4*k)*z^4, (-3 + 4*k)*(-1 + 4*k)*(1 + 4*k) + (-2 + 8*k)*z^2, {k, 1, Infinity}]/(3*z), Element[z, Complexes] && NotElement[-1/2 + (I*z)/Pi, Integers]]

(* {"Tanh", 9}*)
ConditionalExpression[Tanh[z] == I/(-1 + I/z + Inactive[ContinuedFractionK][1, (1 - (-1)^k)/2 + ((1 + (-1)^k)*(-2 + (I*(1 + k))/z))/2, {k, 1, Infinity}]), Element[z, Complexes] && NotElement[-1/2 + (I*z)/Pi, Integers]]

(* {"Tanh", 10}*)
ConditionalExpression[Tanh[m*z] == (m*Tanh[z])/(1 + Inactive[ContinuedFractionK][(-k^2 + m^2)*Tanh[z]^2, 1 + 2*k, {k, 1, -1 + m}]), Element[m, Integers] && Element[z, Complexes] && m > 0]

(* {"TanhCompound", 1}*)
ConditionalExpression[(-(b*Tanh[(a*Pi)/2]) + a*Tanh[(b*Pi)/2])/(a*Tanh[(a*Pi)/2] - b*Tanh[(b*Pi)/2]) == (a*b)/(1 + Inactive[ContinuedFractionK][(a^2 + k^2)*(b^2 + k^2), 1 + 2*k, {k, 1, Infinity}]), Element[a | b | z, Complexes] && Re[-a^2 + b^2] > 0]

(* {"WhittakerM", 1}*)
ConditionalExpression[WhittakerM[\[Nu], \[Mu], z] == (z^(1/2 + \[Mu])*(1 + (z*(1/2 + \[Mu] - \[Nu]))/((1 + 2*\[Mu])*(1 + Inactive[ContinuedFractionK][-((z*(1/2 + k + \[Mu] - \[Nu]))/((1 + k)*(1 + k + 2*\[Mu]))), 1 + (z*(1/2 + k + \[Mu] - \[Nu]))/((1 + k)*(1 + k + 2*\[Mu])), {k, 1, Infinity}]))))/E^(z/2), Element[\[Nu] | \[Mu] | z, Complexes]]

(* {"WhittakerM", 2}*)
ConditionalExpression[WhittakerM[\[Nu], \[Mu], z] == z^(1/2 + \[Mu])/(E^(z/2)*(1 + Inactive[ContinuedFractionK][-(z*(-1 + 2*k + 2*\[Mu] - 2*\[Nu]))/(2*k*(k + 2*\[Mu])), 1 + (z*(-1 + 2*k + 2*\[Mu] - 2*\[Nu]))/(2*k*(k + 2*\[Mu])), {k, 1, Infinity}])), Element[\[Nu] | \[Mu] | z, Complexes]]

(* {"WhittakerW", 1}*)
ConditionalExpression[WhittakerW[\[Nu], \[Mu], z] == (z^(1/2 + \[Mu])*Gamma[-2*\[Mu]])/(E^(z/2)*Gamma[1/2 - \[Mu] - \[Nu]]*(1 + Inactive[ContinuedFractionK][-(z*(-1 + 2*k + 2*\[Mu] - 2*\[Nu]))/(2*k*(k + 2*\[Mu])), 1 + (z*(-1 + 2*k + 2*\[Mu] - 2*\[Nu]))/(2*k*(k + 2*\[Mu])), {k, 1, Infinity}])) + (z^(1/2 - \[Mu])*Gamma[2*\[Mu]])/(E^(z/2)*Gamma[1/2 + \[Mu] - \[Nu]]*(1 + Inactive[ContinuedFractionK][(z*(1 - 2*k + 2*\[Mu] + 2*\[Nu]))/(2*k*(k - 2*\[Mu])), 1 - (z*(1 - 2*k + 2*\[Mu] + 2*\[Nu]))/(2*k*(k - 2*\[Mu])), {k, 1, Infinity}])), Element[\[Nu] | \[Mu] | z, Complexes] && NotElement[2*\[Mu], Integers]]

(* {"WhittakerW", 2}*)
ConditionalExpression[WhittakerW[\[Nu], 0, z] == -((Sqrt[z]*(2*EulerGamma + Log[z] + PolyGamma[0, 1/2 - \[Nu]]))/(E^(z/2)*Gamma[1/2 - \[Nu]]*(1 + Inactive[ContinuedFractionK][-(z*(-1 + 2*k - 2*\[Nu])*(Log[z] - 2*PolyGamma[0, 1 + k] + PolyGamma[0, 1/2 + k - \[Nu]]))/(2*k^2*(Log[z] - 2*PolyGamma[0, k] + PolyGamma[0, -1/2 + k - \[Nu]])), 1 + (z*(-1 + 2*k - 2*\[Nu])*(Log[z] - 2*PolyGamma[0, 1 + k] + PolyGamma[0, 1/2 + k - \[Nu]]))/(2*k^2*(Log[z] - 2*PolyGamma[0, k] + PolyGamma[0, -1/2 + k - \[Nu]])), {k, 1, Infinity}]))), Element[\[Nu] | z, Complexes]]

(* {"WhittakerW", 3}*)
ConditionalExpression[WhittakerW[\[Nu], m/2, z] == -(((-1)^m*z^((1 + m)/2)*Log[z])/(E^(z/2)*m!*Gamma[(1 - m)/2 - \[Nu]]*(1 + Inactive[ContinuedFractionK][-(z*(-1 + 2*k + m - 2*\[Nu]))/(2*k*(k + m)), 1 + (z*(-1 + 2*k + m - 2*\[Nu]))/(2*k*(k + m)), {k, 1, Infinity}]))) + (z^((1 - m)/2)*(-1 + m)!)/(E^(z/2)*Gamma[(1 + m - 2*\[Nu])/2]*(1 + Inactive[ContinuedFractionK][(z*(1 - 2*k + m + 2*\[Nu]))/(2*k*(k - m)), 1 - (z*(1 - 2*k + m + 2*\[Nu]))/(2*k*(k - m)), {k, 1, -1 + m}])) - ((-1)^m*z^((1 + m)/2)*(EulerGamma - PolyGamma[0, 1 + m] + PolyGamma[0, (1 + m)/2 - \[Nu]]))/(E^(z/2)*m!*Gamma[(1 - m)/2 - \[Nu]]*(1 + Inactive[ContinuedFractionK][-(z*(-1 + 2*k + m - 2*\[Nu])*(PolyGamma[0, 1 + k] + PolyGamma[0, 1 + k + m] - PolyGamma[0, k + (1 + m)/2 - \[Nu]]))/(2*k*(k + m)*(PolyGamma[0, k] + PolyGamma[0, k + m] - PolyGamma[0, -1/2 + k + m/2 - \[Nu]])), 1 + (z*(-1 + 2*k + m - 2*\[Nu])*(PolyGamma[0, 1 + k] + PolyGamma[0, 1 + k + m] - PolyGamma[0, k + (1 + m)/2 - \[Nu]]))/(2*k*(k + m)*(PolyGamma[0, k] + PolyGamma[0, k + m] - PolyGamma[0, -1/2 + k + m/2 - \[Nu]])), {k, 1, Infinity}])), Element[m, Integers] && Element[\[Nu] | z, Complexes] && m > 0]

(* {"Zeta", 1}*)
ConditionalExpression[Zeta[1 + z] == EulerGamma + z^(-1) - (z*StieltjesGamma[1])/(1 + Inactive[ContinuedFractionK][(z*StieltjesGamma[1 + k])/(StieltjesGamma[k] + k*StieltjesGamma[k]), 1 - (z*StieltjesGamma[1 + k])/(StieltjesGamma[k] + k*StieltjesGamma[k]), {k, 1, Infinity}]), Element[z, Complexes] && Re[z] > 0]

(* {"Zeta2", 1}*)
ConditionalExpression[Zeta[2, z] == 1/(z*(1 + Inactive[ContinuedFractionK][Floor[(1 + k)/2]^2/((1 + (-1)^k*(1 + 2*k))*z), 1, {k, 1, Infinity}])), Element[z, Complexes] && Re[z] > 1/2]

(* {"Zeta2", 2}*)
ConditionalExpression[Zeta[2, z] == 1/(2*z^2) + z^(-1) + 1/(2*z^2*(3*z + Inactive[ContinuedFractionK][(k*(1 + k)^2*(2 + k))/4, (3 + 2*k)*z, {k, 1, Infinity}])), Element[z, Complexes] && Re[z] > 0]

(* {"Zeta2", 3}*)
ConditionalExpression[Zeta[2, z] == 2/(-1 + 2*z + Inactive[ContinuedFractionK][k^4, (1 + 2*k)*(-1 + 2*z), {k, 1, Infinity}]), Element[z, Complexes] && Re[z] > 1/2]

(* {"Zeta2", 4}*)
ConditionalExpression[Zeta[2, z] == (-1/2 + z + Inactive[ContinuedFractionK][k^4/(4*(-1 + 4*k^2)), -1/2 + z, {k, 1, Infinity}])^(-1), Element[z, Complexes] && Re[z] > 1/2]

(* {"Zeta2", 5}*)
ConditionalExpression[Zeta[3, z] == 1/(2*(-1 + z)*z*(1 + Inactive[ContinuedFractionK][(((1 + (-1)^k)*k^4)/32 + ((1 - (-1)^k)*(1 + k)^4)/32)/((-1 + z)*z), 1 + k, {k, 1, Infinity}])), Element[z, Complexes] &&  !(Element[z, Reals] && 1/2 < z < 1) && Re[z] > 1/2]

(* {"Zeta2", 6}*)
ConditionalExpression[Zeta[3, z] == 1/(2*z^3) + 1/(2*z^2) + 1/(4*z^3*(z + Inactive[ContinuedFractionK][((1 + (-1)^k)*k*(2 + k)^2)/(32*(1 + k)) + ((1 - (-1)^k)*(1 + k)^2*(3 + k))/(32*(2 + k)), z, {k, 1, Infinity}])), Element[z, Complexes] && Re[z] > 0]

(* {"Zeta2", 7}*)
ConditionalExpression[Zeta[3, z] == 1/(2*z^3) + 1/(2*z^2) + 1/(2*z^3*(2*z + Inactive[ContinuedFractionK][((1 + (-1)^k)*(1 + k/2)^3*k)/4 + ((1 - (-1)^k)*(1 + k)^3*(1 + (1 + k)/2))/16, (2 + k)*z, {k, 1, Infinity}])), Element[z, Complexes] && Re[z] > 0]

(* {"Zeta2", 8}*)
ConditionalExpression[Zeta[3, z] == 1/(2*z*(-1 + z + Inactive[ContinuedFractionK][((((1 + (-1)^k)*k^4)/32 + ((1 - (-1)^k)*(1 + k)^4)/32)*(-1 + z))/z, (1 + k)*(-1 + z), {k, 1, Infinity}])), Element[z, Complexes] &&  !(Element[z, Reals] && 1/2 < z < 1) && Re[z] > 1/2]

(* {"Zeta2", 9}*)
ConditionalExpression[Zeta[3, (1 + z)/2] == 2/(-1 + z^2 + Inactive[ContinuedFractionK][2*Floor[(1 + k)/2]^3, ((1 + k)*(-1 + z^2))^((1 + (-1)^k)/2), {k, 1, Infinity}]), Element[z, Complexes] &&  !(Element[z, Reals] && 0 < z < 1) && Re[z] > 0]

