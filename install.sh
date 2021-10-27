


function echoperform {
	tput setaf 245
	echo "-> $@"
	tput sgr0
	$@
}

echoperform sudo apt install zsh &&

echoperform chsh -s $(which zsh) &&


