# Latex Notes Template

This is the template I use when writing notes or homework for school. There is
nothing special about it except for the code block which I modeled off of my vim
setup.

## Usage

Download the notes.cls file and include it the folder where you will be writing your notes.
```latex
\documentclass[]{notes}

\begin{document}
% your notes here
\end{document}
```

## Features 

### Code Section

```latex
\begin{codesection}[{your code language}]
% your code
\end{codesection}
```
Rendered form:

![Code block](/images/codeblock.jpg?raw=true "Python code block")

### Title Page

To create the title page you will need to fill out some information via commands:
```latex
\schoolName{My University}
\docAuthor{John J Li}
\titleText{My Latex Notes}
\classTitle{My Class}
\classProf{My Professor}
\classTime{Thues/Thurs 1:30pm}
\notesSummary{Include a summary of your notes or what you've learned in the lecture.}
```
And include `\maketitlepage` in the document section:
```latex
% ...
\begin{document}
\maketitlepage
% ...
\end{document}
```
Rendered form:

![Title page](/images/titlepage.jpg?raw=true "Example title page")