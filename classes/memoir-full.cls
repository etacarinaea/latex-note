\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{memoir-full}[]

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{memoir}}
\ProcessOptions\relax
\LoadClass{memoir}

\setulmarginsandblock{4cm}{4cm}{*}
\setlrmarginsandblock{3cm}{3cm}{*}
\checkandfixthelayout

\RequirePackage{titlesec}

\nouppercaseheads
\makepagestyle{custom}
\setlength{\headwidth}{\dimexpr\textwidth+\marginparsep+\marginparwidth\relax}
\makeheadrule{custom}{\textwidth}{\normalrulethickness}
\makeoddhead{custom}{\textit{\leftmark}}{}{\thepage}
\makeevenhead{custom}{\thepage}{}{\textit{\leftmark}}
\makeevenfoot{custom}{}{}{}
\makeoddfoot{custom}{}{}{}
\makeatletter
\makepsmarks{custom}{%
  \createmark{chapter}{left}{shownumber}{\@chapapp\ }{}
}
\makeatother
\pagestyle{custom}

\makeatletter
\let\ps@plain\ps@empty
\makeatother

\setlength{\parindent}{0pt}
\setlength{\parskip}{\baselineskip}

\titlespacing\section{0pt}{1em}{.5em- \baselineskip}
\titlespacing\subsection{0pt}{1em}{.5em- \baselineskip}

\setsecnumdepth{subsection}
\setcounter{tocdepth}{2}
