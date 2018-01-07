#! /bin/bash



function execute_remote_command()

{
    echo "Execute Remote command ::"

    sudo cat /root/servers.txt | while read output

    do

        sshpass -p 'password*9' ssh -n bishwajit@$output ' rm -rf /home/bishwajit/1234 ' 
        if [ $? = 0 ]; then 
                echo "Command Executed for $output is Done !!"
        else
                echo "Command Executed for $output is not Done .."
        fi

    done
}

function reinstall_theme()

{
    echo "Reinstalling theme" 
}

all_done=0
while (( !all_done )); do

    PS3='Choose an Options::'    
    options=("Execute Remote Command " "Reinstall theme" "Quit")

    echo "Choose an option: "
    select opt in "${options[@]}"; do
        case $REPLY in
            1) execute_remote_command; break ;;
            2) reinstall_theme; break ;;
            3) all_done=1; break ;;
            *) echo "What's was that?" ;;
        esac
    done
done

echo "Bye bye!"
