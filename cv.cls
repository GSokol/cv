\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{cv}[2023/09/02 CV Latex Class]

\LoadClass[9pt, a4paper, english]{extarticle}

\RequirePackage{titlesec}
\RequirePackage{babel}
\RequirePackage{color}
\RequirePackage{hyperref}
\RequirePackage{multicol}
\RequirePackage{enumitem}

\definecolor{titlecolor}{RGB}{0, 70, 146}
\definecolor{subsubsectioncolor}{RGB}{51, 51, 51}

\setlist{nosep}
\setlist{noitemsep}

\setlength{\topmargin}{-0.25in}
\setlength{\headheight}{0in}
\setlength{\headsep}{-0.25in}
\setlength{\textheight}{10.2in}
\setlength{\textwidth}{7in}
\setlength{\oddsidemargin}{-0.25in}
\setlength{\evensidemargin}{-0.25in}
\setlength{\parindent}{0.25in}

\titleformat{\section}{\bf\large\center\color{titlecolor}}{\thesection}{0.8em}{}
\titleformat*{\subsubsection}{\bf\color{subsubsectioncolor}}

\titlespacing\section{0pt}{8pt plus 4pt minus 4pt}{8pt plus 4pt minus 4pt}
\titlespacing\subsection{0pt}{4pt plus 3pt minus 3pt}{4pt plus 3pt minus 3pt}
\titlespacing\subsubsection{0pt}{0pt plus 2pt minus 2pt}{0pt plus 2pt minus 2pt}

\newenvironment{bulist}
  {\begin {list}{\textbullet}{\itemsep=0mm}}
  {\end{list}}

\newcommand{\gaa}{\subsubsection* {Goals \& achievements}}
\newenvironment{gaas}
  {
    \gaa
    \begin{bulist}
  }
  {\end{bulist}}

\newcommand{\workplace}[4]{\subsection* {#1 -- #2: \textbf{#3} (#4)}}

\newcommand{\techstack}[1]{
  \subsubsection* {Thechnology \& infrostructure stack}
    #1\nopagebreak
}

\newcommand{\devtools}{
  \subsubsection* {Development \&  management tools \& services}
}
