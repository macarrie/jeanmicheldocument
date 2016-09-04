% vi: set syntax=tex:
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{jeanmicheldoc}[2016/04/03 Le doc qui est plus beau que ta maman]

\LoadClass{article}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Packages
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\usepackage[utf8]{inputenc}
\usepackage[english]{babel}
\usepackage[usenames,dvipsnames]{xcolor}
\usepackage[top=2.5cm, bottom=2cm, left=2.5cm, right=2.5cm]{geometry}
\usepackage{titlesec}
\usepackage{tabularx}
\usepackage{array}
\usepackage{fancyhdr}
\usepackage[quiet]{fontspec}
\usepackage{ifthen}
\usepackage{fontawesome}
\usepackage{lastpage}
\usepackage{indentfirst}
\usepackage[font=footnotesize,labelfont=bf, justification=centering]{caption}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Colors
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\definecolor{textcolor} {HTML}{222222}
\definecolor{fade}      {HTML}{555555}
\definecolor{blue}      {HTML}{4B84CC}
\definecolor{green}     {HTML}{4BCC53}
\definecolor{orange}    {HTML}{FA8507}
\definecolor{black}     {HTML}{222222}
\definecolor{pink}      {HTML}{CC4BC4}
\definecolor{red}       {HTML}{C24242}
\definecolor{lightblue} {HTML}{33DECD}
\newcommand{\primarycolor}{\color{black}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%  Font spec
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\setmainfont{Roboto-Light}[
    Mapping=tex-text,
    Path=fonts/roboto/,
    BoldFont=Roboto-Regular,
    ItalicFont=Roboto-LightItalic,
    Extension=.ttf
]

\newfontface\headerfont{HapnaSlabSerif}[
    Mapping=tex-text,
    Path=fonts/hapnaslab/,
    BoldFont=HapnaSlabSerifDemiBold,
    Extension=.ttf
]

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Headings
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\pagestyle{fancy}
\color{textcolor}
\linespread{1.2}

\fancyhf{}
\renewcommand{\headrulewidth}{0pt}
%\setlength{\headsep}{5em}

\fancyhead[L]{\color{fade}\rightmark}
\fancyhead[R]{\color{fade}\leftmark}
\fancyfoot[R]{\color{fade}\thepage/\pageref*{LastPage}}

\titleformat{\section}[block]{\primarycolor\headerfont\bfseries\Large}{\thesection.}{1em}{}
\titleformat{\subsection}[block]{\primarycolor\headerfont\bfseries\large}{\thesubsection.}{1em}{}
\titleformat{\subsubsection}[block]{\primarycolor\headerfont\bfseries}{\thesubsubsection.}{1em}{}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Custom commands
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\renewcommand{\title}[1]{\def\@title{#1}}
\renewcommand{\author}[1]{\def\@author{#1}}
\renewcommand{\date}[1]{\def\@date{#1}}
\newcommand{\institution}[1]{\def\@institution{#1}}

\renewcommand{\maketitle}[0]{
    \pagestyle{empty}
    \begin{minipage}{\textwidth}
        \begin{center}
            {\headerfont\primarycolor\bfseries\Huge \@title}\\
            \vspace{2em}
            {\headerfont\color{fade}\large \@institution}\\
            \vspace{1em}
            {\headerfont\color{fade}\large \@author ~~---~~ \@date}\\
        \end{center}
    \end{minipage}
}

\renewcommand{\labelitemi}{
    {\footnotesize\color{fade}\faAngleRight}
}
\renewcommand{\labelitemii}{
    \labelitemi
}
\renewcommand{\labelitemiii}{
    \labelitemi
}
\renewcommand{\labelitemiv}{
    \labelitemi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Options
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\DeclareOption{blue}{
    \renewcommand{\primarycolor}{\color{blue}}
}
\DeclareOption{green}{
    \renewcommand{\primarycolor}{\color{green}}
}
\DeclareOption{orange}{
    \renewcommand{\primarycolor}{\color{orange}}
}
\DeclareOption{black}{
    \renewcommand{\primarycolor}{\color{black}}
}

% Default Options
\ExecuteOptions{blue}

\ProcessOptions\relax
