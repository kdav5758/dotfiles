#!/bin/bash

#-------------------=== configs ===-------------------------------
this_script=`basename "$0"`
hashtag="#"
installed_packages="apt_manual_list.txt"
lines_packages=`wc -l $installed_packages | awk '{ print $1 }'`
declare -A files=(
    #["original_file_path"]="dotfiles_repo_copy"
    ["~/.config/nvim/init.vim"]="dotfiles/vim/nvim/init.vim"
    ["~/.vimrc"]="dotfiles/vim/vim/.vimrc"
    ["~/.bashrc"]="dotfiles/shell/.bashrc"
    ["~/.config/kitty/kitty.conf"]="dotfiles/kitty/kitty.conf"
    ["~/.inputrc"]="dotfiles/user/.inputrc"
    ["~/.profile"]="dotfiles/user/.profile"
    ["~/.gitconfig"]="dotfiles/git/.gitconfig"
)

script_help=$( cat << EOF

This script installs all many utils, packages and configuration used on my daily programming
life.

Usages:
    #0: ${this_script} [arg]
Arguments:
    -h,--help                                   See this help message.
    -g,--generate-list                          Create list of insatlled dependencies
EOF
)

#-------------------=== script ===-------------------------------

function ProgressBar() {    #progress bar indicator
    # Process data
        let _progress=(${1}*100/${2}*100)/100
        let _done=(${_progress}*4)/10
        let _left=40-$_done
    # Build progressbar string lengths
        _fill=$(printf "%${_done}s")
        _empty=$(printf "%${_left}s")

    # 1.2 Build progressbar strings and print the ProgressBar line
    # 1.2.1 Output example:                           
    # 1.2.1.1 Progress : [########################################] 100%
    printf "\rProgress : [${_fill// /$hashtag}${_empty// /-}] ${_progress}%%"
}

function update_files() {   #updates .dotfiles cat-ting current ones into the ones in the local repo

    _end="${#files[@]}"
    counter=1

    for key in ${!files[@]}; do
        # sleep 0.1
        cat_it="cat ${key} > ${files[${key}]}"
        eval $cat_it
        ProgressBar ${counter} ${_end}
        counter=$((counter+1))
    done

    echo ""

    # `cat ~/.vimrc > dotfiles/vim/.vimrc`; `cat ~/.config/nvim/init.vim > dotfiles/vim/init.vim`     #vim & nvim
    # `cat ~/.bashrc > dotfiles/shell/.bashrc`                                                        #.bashrc
    # `cat ~/.config/kitty/kitty.conf > dotfiles/kitty/kitty.conf`                                    #kitty
    # `cat ~/.inputrc > dotfiles/user/.inputrc`; `cat ~/.profile > dotfiles/user/.profile`            #user
}

function semylink_creator() {   #create semylink for the .dotfiles
    :
}

function install_utils() {  #install the preconfigured list of files
    read -t 10 -n 1 -s -r -p "'${lines_packages}' utilities will be installed/upgraded, press any key to continue"

    counter=1

    echo -e "\n\n\n###########################################################\n\n"

    while read line; do
        # echo "sudo apt-get install $line"
        echo "💡----------Installing: $line"
        ProgressBar ${counter} ${lines_packages}
        echo -e "\n"

        sudo apt-get install $line

        echo -e "\n🎉'$line' was successfully installed/upgraded!🎉\n\n"
        counter=$((counter+1))
    done < $installed_packages

    echo ""
}

if [[ -n "$1" ]]; then
    case "$1" in
        -h|--help)
            echo "$script_help"; exit 0
            ;;
        -gi|--generate-list) #list installed packages into a file
            `apt-mark showmanual > $installed_packages`
            exit 0
            ;;
        -cs|--create-semylink)
            semylink_creator
            exit 0
            ;;
        -iu|--install-utils|--install-utilities)
            time_start=`date +%s`
            if [[ -f "$installed_packages" ]]; then
                install_utils

                time_end=`date +%s`
                runtime=$((time_end-time_start))

                case ${?} in
                    0)
                        echo -e "\n-----------------------------------------"
                        echo -e "Everything was installed/upgraded successfully!"
                        echo -e "Time: ${runtime}secs."
                        ;;
                    *)
                        echo -e "\n\nAn error ocurred while installing/upgrading some utility/utilities, check '$this_script --help' for help."
                        echo -e "Time: ${runtime}secs."
                        ;;
                esac

            else
                echo -e "File $installed_packages does not exists, make sure that you ran ./$this_script --generate-list first.\n"
                exit 1
            fi

            exit 0
            ;;
        -u|--update-files)
            update_files

            case ${?} in
                0)
                    echo -e "\nAll files where updated successfully!\n"
                    ;;
                *)
                    echo -e "\nAn unknown error occurred while updating files. Please check that you have the appropriate permissions for viewing them\n"
                    exit 1
                    ;;
            esac

            exit 0
            ;;
        *)
            echo -e "The give command '$1' was not recognized. Run ./$this_script --help to see which are the available commands\n"
            exit 1
            ;;
    esac
    shift
else
    echo -e "This file needs at least one argument to execute. Run ./$this_script --help to see which are the available commands\n"
    exit 1
fi