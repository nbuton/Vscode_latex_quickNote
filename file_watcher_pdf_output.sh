inotifywait -m output_compilation_latex/ -e modify -e moved_to |
    while read dir action file; do
        new_file=$(echo $file | cut -d '.' -f 2)
        if [ "$new_file" = "pdf" ];then
        #echo "The file '$file' appeared in directory '$dir' via '$action'"
        #echo "file name : $new_file'"
        cp "output_compilation_latex/"$file "rendu_pdf/"$file
        fi
    done
