#/bin/sh

echo /////////////////////
echo     Install vimrc
echo /////////////////////
echo ;

cp ./vimrc ~/.vimrc

if [ -d ./templates ];then
	if [ -e ./templates ];then
		if [ ! -d ~/.vim/templates ]; then
			mkdir ~/.vim/templates
		fi
		cp ./templates/*.template ~/.vim/templates
	fi
fi

echo //////////////////////////
echo "Install plug? (y/n)"
echo //////////////////////////
echo ;
read answer
case $answer in
	[yY])
		echo /////////////////////
		echo     Download plug
		echo /////////////////////

		curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
			https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

		echo /////////////////////////////////
		echo Now run vim and type :PlugInstall
		echo ///////////////////////////////// ;;
	[nN]*)
		echo ;
		echo Done ;;
esac
exit 0
