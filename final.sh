#!/bin/bash
  
source=/home/zakhariiyevchyn/source/files/documents
destination=/home/xakhariiyevchyn
for file in $(find $source -print "%P\n") ; do
        if [ -a $destination/$file ] ; then
                if [$source/$file -nt $destination/$file ] ; then
                        echo "Newer file detected, copying..."
                        cp -r $source/$file $destination/$file
                else
                        echo "File $file exists, skipping."
                fi
        else
                echo "$file is being copied over to $destination"
                cp -r $source/$file $dest/$file
        fi
done
