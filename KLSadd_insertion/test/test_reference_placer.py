
__author__ = 'Edward Bian'
__status__ = 'Development'

from unittest import TestCase
from updateChapters import reference_placer


class TestReferencePlacer(TestCase):

    def test_reference_placer(self):
        self.assertEquals(reference_placer(['\\section{Racah}\\index{Racah polynomials}',
                  '\\subsection*{Hypergeometric representation}', '\\begin{eqnarray}',
                  '\\label{DefRacah}', '& &R_n(\lambda(x);\alpha,\beta,\gamma,\delta)\nonumber\\'
                    , '& &{}=\hyp{4}{3}{-n,n+\alpha+\beta+1,-x,', '\end{eqnarray}'
                    , 'with $N$ a nonnegative integer.', '\\subsection*{References}',
                    '\cite{Askey89I}, \cite{AskeyWilson79}, \cite{AskeyWilson85}'],[9],
                    ['\\subsection*{9.1 Racah}\\label{sec9.1}\\paragraph{\\large\\bf KLSadd: Hypergeometric representation}In addition to (9.1.1) we have'],
                    0), ['\\section{Racah}\\index{Racah polynomials}', '\\subsection*{Hypergeometric representation}'
                    , '\\begin{eqnarray}'
                    , '\\label{DefRacah}', '& &R_n(\lambda(x);\alpha,\beta,\gamma,\delta)\nonumber\\'
                    , '& &{}=\hyp{4}{3}{-n,n+\alpha+\beta+1,-x,', '\end{eqnarray}'
                    , 'with $N$ a nonnegative integer.%Begin KLS Addendum additions\\subsection*{9.1 Racah}\\label{sec9.1}\\paragraph{\\large\\bf KLSadd: Hypergeometric representation}In addition to (9.1.1) we have%End of KLS Addendum additions', '\\subsection*{References}',
                    '\cite{Askey89I}, \cite{AskeyWilson79}, \cite{AskeyWilson85}'])

        self.assertEquals(reference_placer(['\\section{Racah}\\index{Racah polynomials}',
                '\\subsection*{Hypergeometric representation}', '\\begin{eqnarray}',
                '\\label{DefRacah}', '& &R_n(\lambda(x);\alpha,\beta,\gamma,\delta)\nonumber\\'
                , '& &{}=\hyp{4}{3}{-n,n+\alpha+\beta+1,-x,', '\end{eqnarray}'
                , 'with $N$ a nonnegative integer.', '\\subsection*{References}',
                '\cite{Askey89I}, \cite{AskeyWilson79}, \cite{AskeyWilson85}'], [9],
                ['\\subsection*{14.1 Racah}\\label{sec9.1}\\paragraph{\\large\\bf KLSadd: Hypergeometric representation}In addition to (9.1.1) we have'],
                1), ['\\section{Racah}\\index{Racah polynomials}', '\\subsection*{Hypergeometric representation}'
                , '\\begin{eqnarray}'
                , '\\label{DefRacah}', '& &R_n(\lambda(x);\alpha,\beta,\gamma,\delta)\nonumber\\'
                , '& &{}=\hyp{4}{3}{-n,n+\alpha+\beta+1,-x,', '\end{eqnarray}'
                , 'with $N$ a nonnegative integer.%Begin KLS Addendum additions\\subsection*{14.1 Racah}\\label{sec9.1}\\paragraph{\\large\\bf KLSadd: Hypergeometric representation}In addition to (9.1.1) we have%End of KLS Addendum additions', '\\subsection*{References}',
                '\cite{Askey89I}, \cite{AskeyWilson79}, \cite{AskeyWilson85}'])

        self.assertEquals(reference_placer(['\\section{Racah}\\index{Racah polynomials}',
                '\\subsection*{Hypergeometric representation}', '\\begin{eqnarray}',
                '\\label{DefRacah}', '& &R_n(\lambda(x);\alpha,\beta,\gamma,\delta)\nonumber\\'
                , '& &{}=\hyp{4}{3}{-n,n+\alpha+\beta+1,-x,', '\end{eqnarray}'
                , 'with $N$ a nonnegative integer.', '\\subsection*{References}',
                '\cite{Askey89I}, \cite{AskeyWilson79}, \cite{AskeyWilson85}'], [9],
                ['MiscWords', '\\subsection*{9.1 Racah}\\label{sec9.1}\\paragraph{\\large\\bf KLSadd: Hypergeometric representation}In addition to (9.1.1) we have'],
                0), ['\\section{Racah}\\index{Racah polynomials}', '\\subsection*{Hypergeometric representation}'
                , '\\begin{eqnarray}'
                , '\\label{DefRacah}', '& &R_n(\lambda(x);\alpha,\beta,\gamma,\delta)\nonumber\\'
                , '& &{}=\hyp{4}{3}{-n,n+\alpha+\beta+1,-x,', '\end{eqnarray}'
                , 'with $N$ a nonnegative integer.%Begin KLS Addendum additions\\subsection*{9.1 Racah}\\label{sec9.1}\\paragraph{\\large\\bf KLSadd: Hypergeometric representation}In addition to (9.1.1) we have%End of KLS Addendum additions', '\\subsection*{References}',
                '\cite{Askey89I}, \cite{AskeyWilson79}, \cite{AskeyWilson85}'])