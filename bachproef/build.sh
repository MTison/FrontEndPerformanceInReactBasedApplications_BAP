# Build
echo Building...
pdflatex bachproef-tin.tex -quiet -interaction=batchmode --shell-escape > /dev/null
pdflatex bachproef-tin.tex -quiet -interaction=batchmode --shell-escape > /dev/null
pdflatex bachproef-tin.tex -quiet -interaction=batchmode --shell-escape > /dev/null
biber -q bachproef-tin
pdflatex --shell-escape bachproef-tin.tex
​
# Remove generated files
rm -rf *.log 
rm -rf *.aux 
rm -rf *.toc 
rm -rf *.bbl 
rm -rf *.run.xml 
rm -rf *.bcf 
rm -rf *.blg 
rm -rf *.out 
rm -rf *.xref 
rm -rf *.lof 
rm -rf *.lol 
rm -rf *.lot 
rm -rf *.dvi 
rm -rf *.lg 
rm -rf *.idv 
rm -rf *.4ct 
rm -rf *.4tc 
rm -rf *.tmp 
​
# Wait for key
read -p "Press enter to rebuild..."
echo
​
# Rebuild
./$(basename $0) && exit
open "bachproef-tin.pdf"