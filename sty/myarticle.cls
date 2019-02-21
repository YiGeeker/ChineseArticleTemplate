% myarticle.cls
% 自己一般写中文文章的固定格式

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{myarticle}[2017/5/26 v1.0 Normal article format]
\LoadClass[UTF8, scheme=chinese, zihao=-4]{ctexart}
\RequirePackage{geometry}
\RequirePackage{titling}
\RequirePackage{caption}

% Page layout
\geometry{a4paper, left=3.18cm, right=3.18cm, top=2.54cm, bottom=2.54cm}
\pagestyle{empty}

% Font and format
\setCJKmainfont[BoldFont={[fonts/stzhongs.ttf]}, ItalicFont={[SimKai]}]{SimSun}
\setCJKsansfont{SimHei}
\setmainfont{Times New Roman}
\setsansfont{Arial}

% Set title format
\pretitle{\begin{center} \LARGE \sffamily}
  \posttitle{\par\end{center} \vskip 0.5em}

\ctexset{
  section={
    format={\raggedright \sffamily \zihao{4}},
    number=\arabic{section}.,
  },
  subsection={
    format={\raggedright \bfseries \normalsize},
    number=\arabic{section}.\arabic{subsection}
  },
  subsubsection={
    format={\raggedright \normalsize},
    number=\arabic{section}.\arabic{subsection}.\arabic{subsubsection}
  },
  section/numberformat={\mdseries},
  subsection/numberformat={\mdseries}
}

\setcounter{secnumdepth}{3}
\captionsetup{font=small, labelfont=bf, labelsep=space}
