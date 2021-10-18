This readme allow you to use Visual Studio Code in order to edit LaTeX.
Also it help you to configure all you need to take quick notes. You can
have shortcut to draw some figure that will be automaticly add to your
latex documents.

Basic tools to install
======================

-   Clone this repository

-   Install Visual studio code : IDE to edit latex

-   Install LaTeX Workshop extention

-   Install a spelling corrector to take quick notes :
    <https://marketplace.visualstudio.com/items?itemName=streetsidesoftware.code-spell-checker>

-   Install extention multiCommand : to allow multiple command in a
    keybinding

Configure tools used by workshop latex extention
================================================

Follow the installation instructions from the
<https://github.com/James-Yu/LaTeX-Workshop><span>LaTeX Workshop
github</span>.\
Important steps :

-   TexLive : Basic distribution with all package Download folder with
    instal-tl and execute it in sudo

-   latexmk : to have the correct number of compilation for
    crossreferences [How to
    install](https://zoomadmin.com/HowToInstall/UbuntuPackage/latexmk)

-   install latexindent with all dependency :
    <https://latexindentpl.readthedocs.io/en/latest/appendices.html>

Insert code in a latex document
===============================

To insert code with mintex latex package :

-  ```tex
      \usepackage{minted}
      \begin{listing}[H]      
      \begin{minted}[frame=single,framesep=3mm,linenos=true,xleftmargin=2pt,tabsize=4]{python}   
      \end{minted}
      ```

-   Create a .latexmkrc config file (in your home directory or in the
    working directory) containing at least :
    ```shell
    $pdflatex='pdflatex -shell-escape';
    ```

Add keybindings and allow automatic tasks executions
====================================================

1.  Don’t forget to edit keybinding.json to have all the functionality
    $->$ CTRL+k CTRL+s, ensuite cliquer sur “open keyboard shortcuts”
    (icone en haut à droite qui ressemble à un fichier avec une fleche)
    qui permet d’acceder au contenu au format json. Et remplacer ou
    ajouter le contenu qui se trouve dans le fichier “keybindings.json”
    de ce workplace dans celui que vous avez ouvert précédement.

2.  In order to allow startup tasks:

    1.  In VScode type Ctrl+Shift+p

    2.  Search and select Tasks: Manage Automatic Tasks in Folder

    3.  Click Allow Automatic Tasks in Folder

3.  You can rename the base folder and the .tex file if you want

Render latex directly in inkscape
=================================

Install https://github.com/seebk/LaTeXText to render latex diretly in
inkscape. Be carefull : when you run the extention you have to select
the layer with latex command and not the layer name render $->$
otherwise it will crash

Additional tips
===============

-   We can use snippet to accelerate the redaction :
    https://code.visualstudio.com/docs/editor/userdefinedsnippets
