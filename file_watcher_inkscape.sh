inotifywait -m inkscape_fig/ -e modify -e moved_to |
    while read dir action file; do
        echo "The file '$file' appeared in directory '$dir' via '$action'"
        inkscape -D -z "inkscape_fig/"$file --export-pdf="inkscape_fig/rendu_pdf/"$file.pdf --export-latex
    done
