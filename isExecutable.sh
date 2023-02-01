#Script for listing all executable files in the current directory 
let " exec=0 "
let "nonexec=0"
for i in `ls`:
    do :
        if [ -d $i ]
        then
        let "nonexec++"
        echo "$i est un dossier " >>list_exec.txt
        elif [ -x $i ] 
        then
        echo "$i" >>list_exec.txt
        let "exec++" 
        else 
        let "nonexec++"
        fi
done
echo "Vous avez $exec fichiers executables et Vous avez $nonexec fichiers non-executables ou Dossiers " >>list_exec.txt