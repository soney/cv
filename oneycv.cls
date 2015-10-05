\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{oneycv}[2015/08/06 Steve Oney CV Class]
\LoadClass{article}

\usepackage{fontspec}
\setmainfont[Path=fonts/, BoldFont={GoudyOldStyle Bold.ttf}]{GoudyOldStyle.ttf}


\RequirePackage{titlesec}


%\titleformat{\section}         % Customise the \section command 
%  {\Large\raggedright} % Make the \section headers large (\Large),
%                               % small capitals (\scshape) and left aligned (\raggedright)
%  {}{0em}                      % Can be used to give a prefix to all sections, like 'Section ...'
%  {}                           % Can be used to insert code before the heading
%  [\titlerule]                 % Inserts a horizontal line after the heading
%\newcommand*{\name}[2]{\def\@firstname{#1}\def\@lastname{#2}}
%\newcommand{\address}{mG{}G{}}{\def\@addressstreet{#1}\def\@addresscity{#2}\def\@addresscountry{#3}}
%\newcommand*{\phone}[2][fixed]{\collectionadd[#1]{phones}{#2}}
%\newcommand*{\email}[1]{\def\@email{#1}}
%\newcommand*{\homepage}[1]{\def\@homepage{#1}}