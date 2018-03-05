if ! ls *.pro &>/dev/null ; then
	qmake -project -o $(basename $(grep -l main *.cpp |head -1) .cpp).pro
fi

qmake -r
make
