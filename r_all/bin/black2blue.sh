convert -density 300 $1 -fill blue -opaque black +level-colors blue,white $1.blue
rename 's/.pdf.blue/_blue.pdf/' $1.blue
