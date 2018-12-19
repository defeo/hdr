\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{hdr}[2018/12/10 Habilitation thesis, V1.0]

\newif\ifartwork
\newif\ifbw
\artworktrue
\bwfalse
\DeclareOption{a4layout}{\PassOptionsToClass{a4paper}{memoir}\def\@layout{a4}}
\DeclareOption{a4papersaver}{\PassOptionsToClass{a4paper}{memoir}\def\@layout{a4ps}}
\DeclareOption{a5layout}{\PassOptionsToClass{a5paper}{memoir}\def\@layout{a5}}
\DeclareOption{b5layout}{\PassOptionsToClass{b5paper}{memoir}\def\@layout{b5}}
\DeclareOption{noartwork}{\artworkfalse}
\DeclareOption{artwork}{\artworktrue}
\DeclareOption{bw}{\bwtrue}
\DeclareOption{color}{\bwfalse}
\PassOptionsToClass{twoside}{memoir}
%\PassOptionsToClass{openany}{memoir}
\PassOptionsToClass{oldfontcommands}{memoir}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{memoir}}
\ProcessOptions*
\LoadClass{memoir}

% Fonts
\RequirePackage{mathptmx}
\RequirePackage[scale=0.92]{tgschola}
\RequirePackage[final,tracking=true]{microtype}

% Typesetting
\chapterstyle{culver}
\makepsmarks{headings}{%
  \createmark{chapter}{left}{nonumber}{}{}
  \createmark{section}{right}{nonumber}{}{}
}
\makeoddhead{headings}{}{\small\itshape\rightmark}{\thepage}
\makeevenhead{headings}{\thepage}{\small\itshape\leftmark}{}
\pagestyle{headings}
\nouppercaseheads
\midsloppy
\openany

\RequirePackage{pdfpages}
\newcommand{\chapart}[1]{%
  \ifartwork
  \cleartoverso
  \includepdf{#1}
  \fi
}

\setlength{\epigraphwidth}{6cm}
\setlength{\epigraphrule}{0pt}

% theorem environments
\RequirePackage{amsthm}
\theoremstyle{plain}
\newtheorem{theorem}{Theorem}[chapter]
\newtheorem{lemma}[theorem]{Lemma}
\newtheorem{corollary}[theorem]{Corollary}
\newtheorem{proposition}[theorem]{Proposition}
\theoremstyle{definition}
\newtheorem{definition}[theorem]{Definition}
\newtheorem{example}[theorem]{Example}
\newtheorem{problem}[theorem]{Problem}
\newtheorem{conjecture}[theorem]{Conjecture}
\newtheorem{remark}[theorem]{Remark}

%% Layout
\newif\ifafour
\newif\ifafive
\newif\ifbfive
\newif\ifafourps

\def\@temp{a4}
\ifx \@temp \@layout
  \afourtrue
  \settypeblocksize{*}{31pc}{1.75}
  \setulmargins{*}{*}{1.2}
  \setlrmargins{*}{*}{1.7}
  % \setmarginnotes{17pt}{51pt}{\onelineskip}
  \setheadfoot{\onelineskip}{2\onelineskip}
  \setheaderspaces{*}{2\onelineskip}{*}
  \checkandfixthelayout

  \def\back@cover@layout{
    \setlrmargins{*}{*}{1}%
    \checkandfixthelayout%
  }
\else \fi
\def\@temp{a4ps}
\ifx \@temp \@layout
  \afourpstrue
  \settypeblocksize{714pt}{448.13pt}{*}
  \setulmargins{*}{*}{1.2}
  \setlrmargins{*}{*}{1.5}
  % \setmarginnotes{17pt}{51pt}{\onelineskip}
  \setheadfoot{\onelineskip}{2\onelineskip}
  \setheaderspaces{*}{2\onelineskip}{*}
  \checkandfixthelayout

  \def\back@cover@layout{
    \setlrmargins{*}{*}{1}%
    \checkandfixthelayout%
  }
\else \fi
\def\@temp{a5}
\ifx \@temp \@layout
  \afivetrue
  \settypeblocksize{*}{27pc}{1.5}
  \setulmargins{*}{*}{1.2}
  \setlrmargins{*}{*}{2}
  % \setmarginnotes{17pt}{51pt}{\onelineskip}
  \setheadfoot{\onelineskip}{2\onelineskip}
  \setheaderspaces{*}{2\onelineskip}{*}
  \checkandfixthelayout

  \def\back@cover@layout{
    \setlrmargins{*}{*}{1}%
    \checkandfixthelayout%
  }
\else \fi
\def\@temp{b5}
\ifx \@temp \@layout
  \bfivetrue
  \settypeblocksize{210mm}{30pc}{*}
  \setulmargins{*}{*}{1.2}
  \setlrmargins{*}{*}{1.7}
  % \setmarginnotes{17pt}{51pt}{\onelineskip}
  \setheadfoot{\onelineskip}{2\onelineskip}
  \setheaderspaces{*}{2\onelineskip}{*}
  \checkandfixthelayout

  \def\back@cover@layout{
    \setlrmargins{*}{*}{1}%
    \checkandfixthelayout%
  }
\else \fi
