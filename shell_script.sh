echo "Type "Directory" or "File" ,as per your search"
read DirectoryORFile
echo "Enter the location of File or Directory"
read location
echo "Enter the name of the Directory or File"
read DFname
case "$DirectoryORFile" in
	"Directory")
		if [ -d $location/$DFname ];
		then
			echo "Directory Already Exist at below location"
			find / -name "$DFname"
		
		else
			echo "Directory not found so creating one "
			mkdir -p $location/$DFname
			echo "Directory Created "
		fi
		;;
	"File") 
		if [ -f $location/$DFname ];
		then
			echo "File Already exist at below printed location"
			find / -name "$DFname"

		else
			echo "File not found so creating one "
			touch $location/$DFname
			echo "File Created "
		fi 
		;;
esac
