#Hash
function hsum() { 
	if [[ ! -f $1 ]]
	then
		echo "missing file path"
	else
		echo "MD5" ; md5sum $1; 
		echo "SHA-1" ; sha1sum $1 ;
	fi
}


