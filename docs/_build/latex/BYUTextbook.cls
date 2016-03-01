\NeedsTeXFormat{LaTeX2e}

\ProvidesClass{BYUTextbook}

% The changebar package allows colored bars along the text
% edge for setting off examples and derivations.  However,
% it also puts bars next to footnotes, which is undesired
% for this class, so we "undo" that functionality with the
% following hack
\let\textbookcls@footnotetext\@footnotetext
\let\textbookcls@mpfootnotetext\@mpfootnotetext
\usepackage[leftbars,color]{changebar}
\let\@footnotetext\textbookcls@footnotetext
\let\@mpfootnotetext\textbookcls@mpfootnotetext

% These options need several changes to implement, so we
% declare some new if variables to check for them.
\newif\ifShortChapTitles
\DeclareOption{ShortChapTitles}{
    \ShortChapTitlestrue
}

\newif\ifebook
\DeclareOption{ebook}{
    \ebooktrue
}

% Load the book class
    \DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}
    \ProcessOptions\relax

\ifebook
    \LoadClass[oneside,11pt]{book}
\else
    \LoadClass[letterpaper,11pt]{book}
\fi


% This package allows us to monkey with margins to center
% on the page when desired.
\usepackage{changepage}

% Short chapter titles are used in lab manuals, etc.
\ifShortChapTitles
  \renewcommand\@makechapterhead[1]{%
  \begin{adjustwidth}{}{-2.25in}
   \noindent{\parindent \z@ \raggedright \normalfont
    \ifnum \c@secnumdepth >\m@ne
      \if@mainmatter
        \large\bfseries
        \par\nobreak
      \fi
    \fi
    \interlinepenalty\@M
    \huge \bfseries \@chapapp\space \thechapter\\ \bigskip \LARGE #1\par\nobreak \medskip \hrule
    \bigskip
  }
  \end{adjustwidth}
  }
\else
\fi

% This keeps margin figures on the correct side of the page
\usepackage{mparhack}

% Set document font to be Utopia
    \usepackage[T1]{fontenc}
    \usepackage{fourier}
    \usepackage{microtype}

% Enhanced Equation support
    \usepackage{amsmath}
    \usepackage{mathtools}
    \usepackage{mathrsfs}
    \usepackage{bbm}

% Allow command to make fonts smaller relative to current
    \usepackage{relsize}

% Include graphics
    \usepackage{graphicx}

% Set the margins for US Letter paper
    \setlength{\marginparwidth}{2in}
    \setlength{\marginparsep}{0.25in}
    \setlength{\oddsidemargin}{0.0in}
    \setlength{\evensidemargin}{1.5in}
    \setlength{\textwidth}{5in}
    \setlength{\topmargin}{0in}
    \setlength{\headheight}{0.2in}
    \setlength{\headsep}{0.35in}
    \setlength{\textheight}{8.4in}
    \setlength{\footskip}{0.35in}
    \raggedbottom
    \renewcommand{\baselinestretch}{1}


% Page headers
    \usepackage{calc}
    \usepackage{fancyhdr}
      \fancyhf{}
      \pagestyle{fancy}
      \fancyheadoffset[LE,RO]{\marginparsep+\marginparwidth}
      \fancyhead[LE,RO]{\bfseries\thepage}
      \fancyhead[LO]{\bfseries\rightmark}
      \fancyhead[RE]{\bfseries\leftmark}
      \fancyfoot[LO,RE]{}
      \renewcommand{\chaptermark}[1]{\markboth{\chaptername \ \thechapter \ \ #1}{}}
      \renewcommand{\sectionmark}[1]{\markright{\thesection \ \ #1}}

      % Header style for index pages
      \fancypagestyle{index}{%
      \fancyheadoffset[LE,RO]{1in}
      \fancyhead[LE,RO]{\bfseries\thepage}
      \fancyhead[LO,RE]{\bfseries\rightmark}
    }

% These commands fiddle with the space left for page numbers in the TOC
     \makeatletter
     \renewcommand{\@pnumwidth}{2em}
     \renewcommand{\@tocrmarg}{2.85em}
     \makeatother

% Redefine double page clear to make it a blank page without headers
    \makeatletter
    \def\cleardoublepage{\clearpage\if@twoside \ifodd\c@page\else
    \hbox{}
    \thispagestyle{empty}
    \newpage
    \if@twocolumn\hbox{}\newpage\fi\fi\fi}
    \makeatother

% Allow more liberal figure placement
    \renewcommand{\topfraction}{0.9}	% max fraction of floats at top
    \renewcommand{\bottomfraction}{0.8}	% max fraction of floats at bottom
    \setcounter{topnumber}{2}
    \setcounter{bottomnumber}{2}
    \setcounter{totalnumber}{4}     % 2 may work better
    \setcounter{dbltopnumber}{2}    % for 2-column pages
    \renewcommand{\dbltopfraction}{0.9}	% fit big float above 2-col. text
    \renewcommand{\textfraction}{0.07}	% allow minimal text w. figs

% Enhanced raggedright for captions and tables
    \usepackage{ragged2e}

% Caption formatting
    \usepackage[labelfont=bf,labelsep=none,justification=RaggedRight]{caption}
     \DeclareCaptionFormat{suggested}{{\small #1#2 #3}}
     \captionsetup{format=suggested}

% Automatically add section headings to index if the optional
% argument index is present.
    \usepackage{xstring}
    \newcommand{\indexedSection}[1]{\section{#1}
        \IfBeginWith{#1}{The }{\StrBehind{#1}{The }[\Front]\index{\Front , The@\textbf{\Front , The}} }{\index{#1@\textbf{#1}} }
    }

% Make the index
    \usepackage{makeidx}
    \makeindex

% Allow per-chapter appendices
\usepackage[title,titletoc]{appendix}

\usepackage{ifthen}

% Add linking capability
\usepackage[pdfpagemode=UseOutlines,
            bookmarksnumbered,pdfpagelabels=true,plainpages=false,pdfstartview=FitH,
            colorlinks=true,linkcolor=black,citecolor=black,urlcolor=blue]{hyperref}
\urlstyle{rm}


% Define the margin figure command
\usepackage{array}
\newcommand{\marginfig}[3][0pt]{
    \ifebook % Margin figures get shifted inline for ebooks.
        \par\bigskip\captionsetup{type=figure}
        \begin{center}\begin{tabular}{m{2in}m{2in}}
        \raisebox{-\height}{\includegraphics[width=2in]{#2}}
          &
          \vfill
        \captionof{figure}[]{#3} \label{#2}
         \vfill
          \\
        \end{tabular}\end{center}
        \bigskip\par
    \else
        \marginpar{\vskip#1 \captionsetup{type=figure}
        \vtop{\vskip0pt\hbox{\includegraphics[width=2in]{#2}}}
        \captionof{figure}[]{#3} \label{#2}}
    \fi}

% Define the inlinefig command
\newcommand{\inlinefig}[3][4.35in]{\par \vspace{4pt}\parbox{4.35in}{
    \captionsetup{type=figure}
    \centering \includegraphics[width=#1]{#2}\par\vspace{0.03in}
    \captionof{figure}{#3 \label{#2}} } \par \vspace{4pt}}

% Define inneralign command
\strictpagecheck % Use if errors crop up
\newcommand{\side}{l}
\newcommand{\inneralign}[1]{
    \checkoddpage
    \ifoddpage
    \renewcommand{\side}{l}
    \else
    \renewcommand{\side}{r}
    \fi
    \noindent\makebox[\textwidth][\side]{#1}\par
    }


% Define the margin note reminders
\newcommand{\reminder}[3][0pt]{\marginpar{\vskip#1\begin{enumerate}\item[#2] \small \RaggedRight #3\end{enumerate}}}


% Make the code listing environment
\usepackage{upquote}
\usepackage{fancyvrb}
\RecustomVerbatimEnvironment
  {Verbatim}{Verbatim}{xleftmargin=0.25in,fontsize=\small}

\definecolor{DarkGreen}{rgb}{.133,.545,.133}
\definecolor{purple}{rgb}{0.625,0.125,0.9375}
\usepackage{listings}
\lstset{
    upquote=true,
    keepspaces=true,
    aboveskip=0in,
    belowskip=0.2in,
    language=Matlab,
    fancyvrb=true,
    breaklines=false,
    basicstyle=\footnotesize\ttfamily,
    keywordstyle=\color{blue},
    identifierstyle=,
    commentstyle=\color{DarkGreen},
    stringstyle=\ttfamily\color{purple},
    columns=fullflexible,
    showstringspaces=false}

\newcommand{\listingFile}{none}

\newcounter{listingCtr}[chapter]
\renewcommand{\thelistingCtr}{\arabic{chapter}.\arabic{listingCtr}}
\usepackage{ifpdf}
\ifpdf
    %This is needed to keep unique links for hyperref
    \renewcommand{\theHlistingCtr}{\arabic{chapter}.\arabic{listingCtr}}
\fi
\newenvironment{codeexample}[1][]
{
    \par
    \refstepcounter{listingCtr}
    \ifthenelse{\equal{#1}{}}
    {
        \renewcommand{\listingFile}{ch\thechapter ex\arabic{listingCtr}.m}
    }
    {
        \renewcommand{\listingFile}{#1}
    }
}
{
    \lstinputlisting[caption=(\listingFile),frame=TB]{\listingFile}
}

% Column Table
\newcommand{\columntable}[5][0pt]{
    \ifebook
        \par
        \captionsetup{type=table}
        \begin{center}\begin{tabular}{p{2in}p{2in}}
        \fcolorbox{TableBorder}{TableBackground}{
        \vspace{2pt}
        \begin{minipage}[t][#2]{1.8in}
        \footnotesize \RaggedRight
        #3
        \end{minipage}
        }
        &
        \captionof{table}{#4}
        \end{tabular}\end{center}
    \else
    \marginpar{\captionsetup{type=table} \vspace{#1}
    \fcolorbox{TableBorder}{TableBackground}{
    \begin{minipage}[t][#2]{1.8in}
    \smallskip
    \footnotesize \RaggedRight
    #3
    \end{minipage}
    } \captionof{table}{#4} }
    \fi
    }

\definecolor{LightBlue}{rgb}{.8,.9,1}
% Make the personfeature command
\newcommand{\personfeature}[5][0pt]{
    \ifebook
        \begin{figure}[b]
        \begin{center}\fcolorbox{TableBorder}{TableBackground}{\begin{tabular}{p{2in}p{2.5in}}
        \raisebox{-\height+0.45\baselineskip}{\includegraphics[width=2in]{#2}}
          &
        \scriptsize \RaggedRight
        \textbf{#3} (#4) #5
          \\
        \end{tabular}}\end{center}
        \end{figure}
    \else\marginpar{\vskip#1\sf
    \scriptsize \RaggedRight \centerline{\includegraphics{#2}}\par\vspace{0.1in}
    \textbf{#3} (#4) #5}\fi}

% The examplebar package allows the set-off bars next to
% examples and derivations.


 \setlength{\changebarsep}{-3pt}
 \setlength{\changebarwidth}{2pt}
 \definecolor{BarColor}{rgb}{.1,.3,.6}
% \definecolor{DeriveColor}{rgb}{.8,.3,.6}
 \definecolor{DeriveColor}{rgb}{.85,.2,.25}
 \definecolor{NoteColor}{rgb}{0.1,.6,.12}
 \cbcolor{BarColor}

\definecolor{TableBackground}{cmyk}{0.1,0,0,0}
\definecolor{TableBorder}{cmyk}{1,0.2,0,0}
% Make the example environment

\newcounter{example}[chapter]
\renewcommand{\theexample}{\thechapter.\arabic{example}}
\usepackage{ifpdf}
\ifpdf
    \renewcommand{\theHexample}{\thechapter.\arabic{example}} %This is needed to keep unique links for hyperref
\fi


\renewcommand{\thefigure}{\thechapter.\arabic{figure}}
\usepackage{ifpdf}
\ifpdf
    \renewcommand{\theHfigure}{\thechapter.\arabic{figure}} %This is needed to keep unique links for hyperref
\fi

%\newenvironment{example}[1]
%    {\cbcolor{BarColor}\par \vspace{8pt} \cbstart
%    \begin{enumerate}\item[]
%     \refstepcounter{example}\noindent\textbf{Example \theexample}
%     \par\vspace{5pt}\small\noindent\noindent#1
%     \par\vspace{20pt}\noindent\textbf{Solution:}
%    }
%    {\end{enumerate} \cbend\par \vspace{10pt}}

\newenvironment{example}
    {\cbcolor{BarColor}\par \vspace{10pt} \cbstart
    \begin{enumerate}\item[]
     \refstepcounter{example}\noindent\textbf{Example
     \theexample} } {\end{enumerate} \cbend\par \vspace{8pt}}

\newcommand{\exProblem}{\par\vspace{2pt}\small\noindent\noindent}
\newcommand{\exSolution}{\par\vspace{10pt}\noindent\textbf{Solution:} }

\newenvironment{derivation}[1]
    {\cbcolor{DeriveColor}\par \vspace{10pt}
     \cbstart
    \begin{enumerate}\item[]
     \noindent\textbf{#1}
     \par\vspace{5pt}\small\noindent
    } {\end{enumerate} \cbend\par \vspace{10pt}}


\newcommand{\ExSection}[1][ ]{
    \clearpage
    \section*{Exercises}
    \markright{Exercises}
    \addcontentsline{toc}{section}{Exercises}
    \WriteChap{Chapter \thechapter\ Solutions}
    }

\newenvironment{exercises}[1]
    {\noindent \subsubsection[Exercises]{\emph{Exercises for \ref{#1} \nameref{#1} }}
     \begin{list}{\textbf{P\arabic{problem}\hfill}}{
        \setlength{\listparindent}{0in}
        \setlength{\labelwidth}{0.5in}
        \setlength{\itemindent}{0in}
        \setlength{\leftmargin}{0.65in}}
    }
    {\end{list}}

\newenvironment{review}[1]
    {\noindent \subsubsection*{#1}
     \begin{list}{\textbf{R\arabic{revproblem}\hfill}}{
        \setlength{\listparindent}{0in}
        \setlength{\labelwidth}{0.5in}
        \setlength{\itemindent}{0in}
        \setlength{\leftmargin}{0.65in}}
    }
    {\end{list}}

 \newwrite\solutions
 \immediate\openout\solutions=\jobname.sln
 \newcommand{\WritePLine}[2]{
    \immediate\write\solutions{\string\section*{#1 {\string\footnotesize (#2) \string\normalsize}}}
    \immediate\write\solutions{ \string\addcontentsline{toc}{section}{#2}}
    \immediate\write\solutions{ \string\begin{itemize}}
    \immediate\write\solutions{ \string\item[]}
    \immediate\write\solutions{ \string\InputIfFileExists{solutions/#2}{}{No Solution File Found}}
    \immediate\write\solutions{ \string\markboth{Solutions for Chapter \string\thechapter}{#1}}
    \immediate\write\solutions{ \string\end{itemize} \string\hrule}
    }

 \newcommand{\WriteChap}[1]{
    \immediate\write\solutions{\string\chapter*{#1}}
    \immediate\write\solutions{\string\addcontentsline{toc}{chapter}{#1}}
    }

\usepackage{tocloft}
\newcommand{\listproblemname}{}
\newlistof[chapter]{problem}{prb}{\listproblemname}

\newcommand{\prob}[1][prob:P\theproblem]
    {\phantomsection \refstepcounter{problem}\WritePLine{P\theproblem}{#1}
     \item[\textbf{P\theproblem}\hfill]\label{#1}}

\newcounter{subproblem}[problem]
\renewcommand{\thesubproblem}{\theproblem(\alph{subproblem})}
\renewcommand{\theHsubproblem}{\theproblem(\alph{subproblem})} %This is needed to keep unique links for hyperref
\newcommand{\subprob}{\refstepcounter{subproblem}\item[(\alph{subproblem})]}


\newcommand{\lab}[1]
    {\refstepcounter{problem}\WritePLine{L\theproblem}{#1}
     \item[\textbf{L\theproblem}\hfill]\label{#1}}

\newcounter{revprob}

\newcommand{\rev}[1]
    {\refstepcounter{revprob}\WritePLine{R\therevprob}{#1}
     \item[\textbf{R\therevprob}\hfill]\label{#1}}

\newenvironment{solution}
    {\par \rule{4.35in}{0.25pt} \nopagebreak \par
    \nopagebreak \scriptsize Solution: \nopagebreak   }
    {\par \nopagebreak \rule{4.35in}{0.25pt} \par \normalsize}

\newenvironment{answer}
    {\par \scriptsize Answer:}
    {\par \normalsize}


\usepackage{marginnote}
\newcommand{\outnote}[2][0pt]{\marginnote{\color{NoteColor}{#2}}[#1]}
\newcommand{\innote}[1]{\textrm{\color{NoteColor}{#1}}}

% Needs mathtools package
\newtagform{numnoteformat}{(}{)}
\newcommand{\numnote}[1]{\renewtagform{numnoteformat}{{\color{NoteColor}{#1}}~~(}{)}\usetagform{numnoteformat}}

\ifebook
    \setlength{\marginparwidth}{0in}
    \setlength{\marginparsep}{0in}
    \setlength{\oddsidemargin}{-0.75in}
    \setlength{\textwidth}{5in}
    \setlength{\topmargin}{-0.75in}
    \setlength{\headheight}{0.3in}
    \setlength{\headsep}{0.1in}
    \setlength{\textheight}{500cm}
    \setlength{\footskip}{0in}
    \fancyheadoffset[LE,RO]{\marginparsep+\marginparwidth}

    \usepackage{everyshi}
    \pagestyle{empty}
    \textheight500cm
    \pdfpageheight500cm
    \makeatletter
    \EveryShipout{\pdfpageheight=\pagetotal
    \advance\pdfpageheight by 2in
    \advance\pdfpageheight by \topmargin
    \advance\pdfpageheight by \footskip
    \advance\pdfpageheight by \textheight
    \advance\pdfpageheight by -\pagegoal}
    \makeatother

    % Each section is its own "page"
    \let\stdsection\section
    \renewcommand\section{\pagebreak\stdsection}

    % the index can't be two column, so disallow this environment
    \renewcommand{\twocolumn}[1][]{#1}

    % Get rid of margin content
    \renewcommand{\outnote}[1]{\numnote{#1}}
    \AtBeginDocument{\pdfpageheight=500cm \pdfpagewidth=5.5in}
    \pagestyle{empty}
    \renewcommand{\sectionmark}[1]{\markright{\leftmark}}
\else

\fi
