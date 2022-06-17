\def\fileversion{0.1}
\def\filedate{2022/05/23}

\NeedsTeXFormat{LaTeX2e}

\ProvidesClass{notes}[\filedate\space Version \fileversion\space by
    John Li]

\LoadClass{article}

\RequirePackage[total={7in,8in}]{geometry}
\RequirePackage[utf8]{inputenc}
\RequirePackage{amsmath}
\RequirePackage{amssymb}
\RequirePackage{amsthm}
\RequirePackage{fancyhdr}
\RequirePackage{graphicx}
\RequirePackage{enumitem}
\RequirePackage{listings}
\RequirePackage{xcolor}
\RequirePackage{tikz}
\RequirePackage[framemethod=tikz]{mdframed}
\RequirePackage{xkeyval}
\RequirePackage[most]{tcolorbox}
\RequirePackage{multirow}

\usetikzlibrary{trees}

\renewcommand\arraystretch{1.3}

\def\@docauthorname{}
\def\@docname{\jobname.tex}
\def\@docdate{\today}
\def\@titletext{}
\def\@classtitle{}
\def\@classprof{}
\def\@classtime{}
\def\@schoolname{}
\def\@summary{}

\define@key{notes.cls}{author}[]{
    \def\@docauthorname{#1}
}
\define@key{notes.cls}{date}[\today]{
    \def\@docdate{#1}
}
\define@key{notes.cls}{docname}[]{
    \def\@docname{#1}
}
\define@key{notes.cls}{title}[]{
    \def\@titletext{#1}
}
\define@key{notes.cls}{class}[]{
    \def\@classtitle{#1}
}
\define@key{notes.cls}{prof}[]{
    \def\@classprof{#1}
}
\define@key{notes.cls}{time}[]{
    \def\@classtime{#1}
}
\define@key{notes.cls}{school}[]{
    \def\@schoolname{#1}
}

\newcommand{\docAuthor}[1]{
    \def\@docauthorname{#1}
}
\newcommand{\docName}[1]{
    \def\@docname{#1}
}
\newcommand{\titleText}[1]{
    \def\@titletext{#1}
}
\newcommand{\classTitle}[1]{
    \def\@classtitle{#1}
}
\newcommand{\classProf}[1]{
    \def\@classprof{#1}
}
\newcommand{\classTime}[1]{
    \def\@classtime{#1}
}
\newcommand{\docDate}[1]{
    \def\@docdate{#1}
}
\newcommand{\schoolName}[1]{
    \def\@schoolname{#1}
}
\newcommand{\notesSummary}[1]{
    \def\@summary{#1}
}

\pagestyle{fancy}
\fancyhf{}
\lhead{\@classtitle}
\rhead{\@titletext}
\rfoot{\thepage}
\renewcommand{\headrulewidth}{0.4pt}

\setlength{\parskip}{0.2em}
\setlength{\parindent}{0px}
\title{\@titletext}
\date{\@docdate}
\author{\@docauthorname}

\definecolor{comment}{RGB}{138,138,138}
\definecolor{num}{RGB}{85,85,85}
\definecolor{string}{RGB}{215,215,175}
\definecolor{keyword}{RGB}{135,175,215}
\definecolor{backcolor}{RGB}{38,38,38}
\definecolor{basic}{RGB}{215,215,215}
\definecolor{numbg}{RGB}{18,18,18}

\lstdefinestyle{mystyle}{
    backgroundcolor=\color{backcolor},
    commentstyle=\color{comment},
    keywordstyle=\color{keyword},
    numberstyle=\tiny\color{num},
    stringstyle=\color{string},
    basicstyle=\ttfamily\footnotesize\color{basic},
    breakatwhitespace=false,
    breaklines=true,
    captionpos=b,
    keepspaces=true,
    numbers=left,
    numbersep=5pt,
    showspaces=false,
    showstringspaces=false,
    showtabs=false,
    tabsize=2,
}

\lstset{style=mystyle}

\lstnewenvironment{codesection}[1][]{
    \lstset{language={#1}}%
    \mdframed[%
        backgroundcolor=numbg,
        hidealllines=true,
        innerleftmargin=0.5cm,
        innerrightmargin=0cm,
        innertopmargin=-0.07cm,
        innerbottommargin=-0.21cm
    ]
    \mdframed[%
        backgroundcolor=backcolor,
        hidealllines=true,
        innerleftmargin=0cm,
        innerrightmargin=0cm,
        innertopmargin=-0.14cm,
        innerbottommargin=-0.21cm
    ]}{\endmdframed\endmdframed\ignorespaces}

\newenvironment{tabbedsection}{
    \begin{enumerate}[label=\quad\quad, leftmargin=*]
}{\end{enumerate}}

\newcommand{\maketitlepage}{
    \thispagestyle{plain}
    \vspace*{1cm}
    {\large{\@schoolname}}\\
    {\LARGE{\textbf{\@classtitle}}}\\
    \vspace{0.5cm}\\
    {\Huge{\@titletext}}\\
    \vspace*{1.5cm}\\
    {\normalsize{\textbf{\@docauthorname}}\\\@classprof\\\@classtime}\\
    \vspace{8cm}\\
    \textbf{Description:}
    \begin{tabbedsection}
        \item \@summary
    \end{tabbedsection}
    \vfill
    \newpage
}

\newtcolorbox{solutionbox}[1][]{%
    sharp corners,
    enhanced,
    colback=white,
    attach title to upper,
    #1
}

\newcommand{\pageline}{\par\noindent\rule{\textwidth}{0.5pt}}