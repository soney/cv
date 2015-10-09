\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{oneycv}[2015/08/06 Steve Oney CV Class]
\LoadClass[12pt]{article}

\usepackage{calc} % to allow linewidth in minipage to be an equation
\usepackage{fancyhdr}
\usepackage{fontspec}
\usepackage{anyfontsize}
\usepackage{hyperref}
\usepackage{dirtytalk}
\usepackage{parcolumns}
\usepackage[letterpaper,left=0.75in,right=0.75in,top=0.5in,bottom=1.7in]{geometry}
\usepackage{color}
\usepackage{setspace}
\usepackage{scrextend}

\definecolor{mygray}{gray}{0.6}
\definecolor{darkgray}{gray}{0.0}

\def\@colwidth1{1.5in}


\setmainfont[Path=fonts/,
    BoldFont={GoudyOldStyle Bold.ttf},
    ItalicFont={GoudyOldStyle Italic.ttf}]{GoudyOldStyle.ttf}


\RequirePackage{titlesec}

\def\hrulefill{\leavevmode\leaders\hrule height .01cm\hfill\kern\z@}

\titleformat{\section}
    {\bf\raggedright\fontsize{16pt}{16}\selectfont}
    {\vspace{24pt}}{\@colwidth1}
    {}
    [\vspace{-10pt}\hspace{\@colwidth1}\hrulefill\vspace{-6pt}]

\titleformat{\subsection}
    {\color{darkgray}\raggedright\fontsize{12pt}{12}\selectfont}
    {}{\@colwidth1}
    {}
    [\vspace{-6pt}\hspace{\@colwidth1}\color{darkgray}\hrulefill\vspace{-8pt}]


%\titleformat{\section}         % Customise the \section command 
%  {\Large\raggedright} % Make the \section headers large (\Large),
%                               % small capitals (\scshape) and left aligned (\raggedright)
%  {}{0em}                      % Can be used to give a prefix to all sections, like 'Section ...'
%  {}                           % Can be used to insert code before the heading
%  [\titlerule]                 % Inserts a horizontal line after the heading
\newcommand*{\name}[2]{\def\@firstname{#1}\def\@lastname{#2}}
\newcommand*{\affiliation}[1]{\def\@affiliation{#1}}
\newcommand*{\department}[1]{\def\@department{#1}}
\newcommand*{\address}[3]{\def\@addressoffice{#1}\def\@addressstreet{#2}\def\@addresscity{#3}}
\newcommand*{\phone}[1]{\def\@phone{#1}}
\newcommand*{\email}[1]{\def\@email{#1}}
\newcommand*{\homepage}[1]{\def\@homepage{#1}}


\newcommand{\makecvtitle}{
\hspace*{-\parindent}
\begin{minipage}[b]{0.60\linewidth}
\vspace*{36pt}

\addfontfeature{LetterSpace=-1}
\hspace{\@colwidth1}{\fontsize{30}{36}\selectfont{}\@firstname{}\ \@lastname{}}\par
\vspace*{12pt}
\addfontfeature{LetterSpace=0.0}
\hspace{\@colwidth1}\textbf{\@department}\par
\hspace{\@colwidth1}\textbf{\@affiliation}\par
\hspace{\@colwidth1}\@addressoffice\par
\hspace{\@colwidth1}\@addressstreet\par
\hspace{\@colwidth1}\@addresscity
\end{minipage}
\hfill
\begin{minipage}[b]{0.35\linewidth}
\raggedleft
\href{\@homepage}{\@homepage}\par
\@phone\par
\href{mailto:\@email}{\@email}
\end{minipage}
}

\def\@separation{.25cm}

\newcommand{\cvitem}[2]{\vspace{.08in}\noindent\begin{minipage}[t]{\@colwidth1-\@separation}
\raggedleft
\textit{\trim{#1}}\end{minipage}\hspace{\@separation}\begin{minipage}[t]{\linewidth-\@colwidth1}
\trim{#2}
\end{minipage}\vspace{.05in}}

%\newcommand{\cvitem}[2]{
%\begin{parcolumns}[nofirstindent]{2}
%\colchunk[1]{\raggedleft{}\textit{\trim{#1}}}
%\colchunk[2]{\justify{}\trim{#2}}
%\colplacechunks
%\end{parcolumns}
%}


\newcommand{\cvplace}[2]{\textbf{\trim{#1}}\\
\trim{#2}}

\newcommand{\cvtimeloc}[2]{
\trim{#1}\\
\trim{#2}
}

\newcommand{\present}{present}

\newcommand{\cvtimerange}[2]{\trim{#1}\ \textendash{}\ \trim{#2}}
\def\trim#1{\ignorespaces#1\unskip}

\newcommand{\cvpress}[3]{\href{\trim{#3}}{\say{\trim{#1}.} \trim{#2}}}
\newcommand{\cvaward}[1]{{\textsc #1}}

\pagestyle{fancy}
\fancyhf{}% to clear existing header/footer if you don't want it
\renewcommand\headrulewidth{0pt}
\cfoot{\raggedleft{}\textcolor{mygray}{\textbf{\@firstname{}\ \@lastname{}}\  \textemdash{}\ \textit{curriculum\ vitae}, page \thepage{}}}

\linespread{0.9}
%\usepackage{showframe}