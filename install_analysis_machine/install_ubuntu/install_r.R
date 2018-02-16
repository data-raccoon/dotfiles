myrepos = "http://cran.uni-muenster.de"

install.packages(c('devtools', 'yaml'), repos=myrepos)

library(devtools)
library(yaml)

mypacks = yaml.load_file('packages_r.yaml')

install.packages(mypacks$cran, repos=myrepos)
install_github(mypacks$github)

