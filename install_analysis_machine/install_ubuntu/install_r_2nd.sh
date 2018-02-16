grep -v "#" packages_ubuntu_dep | sudo xargs apt-get install -y
Rscript install_r.R
