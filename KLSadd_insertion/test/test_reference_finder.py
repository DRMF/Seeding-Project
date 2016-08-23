
__author__ = 'Edward Bian'
__status__ = 'Development'

from unittest import TestCase
from updateChapters import find_references

class TestFindReferences(TestCase):

    def test_find_references(self):
        self.assertEquals(find_references(['\\section{Pseudo Jacobi}\\index{Racah polynomials}',
                                           '\\subsection*{Hypergeometric representation}', '\\begin{eqnarray}',
                                           '\\label{DefRacah}', '& &R_n(\lambda(x);\alpha,\beta,\gamma,\delta)\nonumber\\'
                                            , '& &{}=\hyp{4}{3}{-n,n+\alpha+\beta+1,-x,', '\end{eqnarray}'
                                            , 'with $N$ a nonnegative integer.', '\subsection*{References}',
                                            '\cite{Askey89I}, \cite{AskeyWilson79}, \cite{AskeyWilson85}'],
                                            0, ['9.9 Pseudo Jacobi (or Routh-Romanovski)#']), ([8], [0, 1, 8], []))
        self.assertEquals(find_references(['\\section{Pseudo Jacobi}\\index{Racah polynomials}',
                                           '\\subsection*{Hypergeometric representation}', '\\begin{eqnarray}',
                                           '\\label{DefRacah}', '& &R_n(\lambda(x);\alpha,\beta,\gamma,\delta)\nonumber\\'
                                            , '& &{}=\hyp{4}{3}{-n,n+\alpha+\beta+1,-x,', '\end{eqnarray}'
                                            , 'with $N$ a nonnegative integer.', '\subsection*{References}',
                                            '\cite{Askey89I}, \cite{AskeyWilson79}, \cite{AskeyWilson85}'],
                                            1, ['9.9 Pseudo Jacobi (or Routh-Romanovski)#']), ([8], [], [0, 1, 8]))
        self.assertEquals(find_references(['\\section{Racah}\\index{Racah polynomials}',
                                           '\\subsection*{Hypergeometric representation}', '\\begin{eqnarray}',
                                           '\\label{DefRacah}', '& &R_n(\lambda(x);\alpha,\beta,\gamma,\delta)\nonumber\\'
                                            , '& &{}=\hyp{4}{3}{-n,n+\alpha+\beta+1,-x,', '\end{eqnarray}'
                                            , 'with $N$ a nonnegative integer.', '\subsection*{References}',
                                            '\cite{Askey89I}, \cite{AskeyWilson79}, \cite{AskeyWilson85}'],
                                            0, ['9.2 Racah#']), ([8], [0, 1, 8], []))
        self.assertEquals(find_references(['\\section{Racah}\\index{Racah polynomials}',
                                           '\\subsection*{Hypergeometric representation}', '\\begin{eqnarray}',
                                           '\\label{DefRacah}', '& &R_n(\lambda(x);\alpha,\beta,\gamma,\delta)\nonumber\\'
                                            , '& &{}=\hyp{4}{3}{-n,n+\alpha+\beta+1,-x,', '\end{eqnarray}'
                                            , 'with $N$ a nonnegative integer.', '\subsection*{References}',
                                            '\cite{Askey89I}, \cite{AskeyWilson79}, \cite{AskeyWilson85}'],
                                            0, ['9.2 Racah#']), ([8], [0, 1, 8], []))
        self.assertEquals(find_references(['\\section{Unique}\\index{Racah polynomials}',
                                           '\\subsection*{Hypergeometric representation}', '\\begin{eqnarray}',
                                           '\\label{DefRacah}', '& &R_n(\lambda(x);\alpha,\beta,\gamma,\delta)\nonumber\\'
                                            , '& &{}=\hyp{4}{3}{-n,n+\alpha+\beta+1,-x,', '\end{eqnarray}'
                                            , 'with $N$ a nonnegative integer.', '\subsection*{References}',
                                            '\cite{Askey89I}, \cite{AskeyWilson79}, \cite{AskeyWilson85}'],
                                            1, ['9.2 Racah#']), ([], [], [0, 1]))