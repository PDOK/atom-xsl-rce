#!/usr/bin/env bash
set -eu

urls="https://cdnjs.cloudflare.com/ajax/libs/clipboard.js/2.0.6/clipboard.min.js 
      https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/js/all.min.js
      https://cdnjs.cloudflare.com/ajax/libs/prism/1.20.0/prism.min.js 
      https://cdnjs.cloudflare.com/ajax/libs/prism/1.20.0/plugins/toolbar/prism-toolbar.min.js 
      https://cdnjs.cloudflare.com/ajax/libs/prism/1.20.0/plugins/copy-to-clipboard/prism-copy-to-clipboard.min.js"

output_file="../assets/deps.js"
echo "" > $output_file
for url in $urls; do
    echo $url
    curl -s $url >> $output_file
done

urls_css="https://cdnjs.cloudflare.com/ajax/libs/prism/1.20.0/themes/prism.min.css
          https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css"

output_file_css="../assets/deps.css"
echo "" > $output_file_css
for url in $urls_css; do
    echo $url
    curl -s $url >> $output_file_css
done




