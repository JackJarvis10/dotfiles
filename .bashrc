alias zoneusers='function _zoneusers(){ ad-list-zone-users.tcl -z "$1" | awk -F: '\''{print "Email: " $1; print "\tUsername: " $2; print "\tUID: "$3; print "\tGID: "$4; print "\tDisplay Name: "$5; print "\tHome Dir: "$6; print "\tShell: "$7; print "\tActive: "$8}'\''; };_zoneusers' 
alias zonecomputers='function _zonecomputers(){ ad-list-zone-computers.tcl -z "$1" | sed -r '\''s/([^:]*): cpus\(([^)]*)\) agentVersion\(([^)]*)\): (.*)/Hostname: \4\n\tCPUs: \2\n\tCentrify Agent Version: \3/'\''; };_zonecomputers' 
alias zonegroups='function _zonegroups(){ ad-list-zone-groups.tcl -z "$1" | awk -F: '\''{print "Group: " $2; print "\tGID: " $3}'\''; };_zonegroups' 
function zonesearch() { 
    if [ $# -ne 2 ]; then 
        echo "Error: Invalid number of arguments. Usage: zonesearch users <USER> or zonesearch groups <GROUP>" 
        return 1 
    fi 
    if [ "$1" = "users" ]; then 
        ad_search_zones.clj users "$2" 
    elif [ "$1" = "groups" ]; then 
        ad_search_zones.clj groups "$2" 
    else 
        echo "Error: Invalid argument. Please use 'users' or 'groups'." 
        return 1 
    fi 
} 

complete -W "users groups" zonesearch 
eval "$(starship init bash)" 
alias ll='eza -lhm' 
alias ls='eza' 
alias cat='/usr/local/bat/bat' 