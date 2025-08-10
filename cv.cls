\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{cv}[2023/09/02 CV Latex Class]

\LoadClass[9pt, a4paper, english]{extarticle}

\RequirePackage{titlesec}
\RequirePackage{babel}
\RequirePackage{color}
\RequirePackage{hyperref}
\RequirePackage{multicol}
\RequirePackage{enumitem}
\RequirePackage{svg}
\RequirePackage{graphicx}

\definecolor{titlecolor}{RGB}{0, 70, 146}
\definecolor{subsubsectioncolor}{RGB}{51, 51, 51}

\setlist{nosep}

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

\date{\vspace{-10ex}}


\newenvironment{bulist}
  {\begin{itemize}\setlength{\itemsep}{0pt}\setlength{\parsep}{0pt}\setlength{\partopsep}{0pt}}
  {\end{itemize}}

\newcommand{\gaa}{\subsubsection* {Goals \& Achievements}}
\newenvironment{gaas}
  {
    \gaa
    \begin{bulist}
  }
  {\end{bulist}}

\newcommand{\workplace}[5][Moscow]{
  \subsection* {#2 -- #3: \textbf{#4}
  (#5)\hfill\textcolor{subsubsectioncolor}{\textmd{#1}}}
}

\newcommand{\techstack}[1]{
  \subsubsection* {Technology \& infrastructure stack}
    #1\nopagebreak
}

\newcommand{\devtools}{
  \subsubsection* {Development \&  management tools \& services}
}

\newenvironment{topline}
  {\setlength{\parindent}{0cm}\color{subsubsectioncolor}\Large}
  {}
%  {\setlength{\parindent}{default}}

\newcommand{\jobnameinput}[1]{
  \IfFileExists{#1_\jobname.tex}{\input{#1_\jobname}}{\input{#1_default}}
}
