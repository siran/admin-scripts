for folder in `ls --color=never -c`; do if [[ "$folder" =~ "ann" ]]; then echo $folder; pushd $folder; git pull; popd; echo "-----"; fi; done
