#!/usr/bin/bash
while true 
do
echo "========== Linux System Manager ==========
1. Show System Information
2. Check File Permissions
3. Change File Permissions
4. Compress a File/Directory
5. Decompress a File
6. Exit
==========================================
Enter your choice: "
read choice
case $choice in 
 1 )
  echo "Current User: $USER"
  ;;
 2 )
    read -p "Enter the file name: " file
 echo "Permissions for $file: $(ls -l "$file" | awk '{print $1}')"
    ;;
3 )
read -p  "Enter the filename: " file
read -p "Enter the new permissions: " perm
chmod $perm $file
echo "Permissions changed successfully."
;;
4 )
read -p "Enter the file/directory name: " file
read -p "Choose compression type:  
1. tar.gz  
2. zip  
Enter choice:" type
 if [[ $type -eq 1 ]] then
tar -czf "$file.tar.gz" "$file"
echo "Compression successful: $file.tar.gz created."
elif [[ $type -eq 2 ]] then
    zip -r "$file.zip" "$file"
    echo "Compression successful: $file.zip created."
else
echo "Invalid choice."
fi
;;

5)
read -p "Enter the compressed file name: " compressed
if [[ -f "$compressed" ]] then
    echo "Extracting..."
    if [[ "$compressed" == *.tar.gz ]] then
        tar -xzf "$compressed"
        echo "Decompression successful."
    elif [[ "$compressed" == *.zip ]] then
        unzip "$compressed"
        echo "Decompression successful."
    fi
else
    echo "Error: Compressed file does not exist."
fi
;;
6)
echo "Exiting the system manager. Goodbye!"
exit 0
;;
*)
echo "Invalid choice. Please enter a number between 1 and 6."
;;
esac
done