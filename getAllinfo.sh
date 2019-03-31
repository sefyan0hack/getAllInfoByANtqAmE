#!/usr/bin/bash
#!--coded by ANtqAmE 
#coding: utf-8

## COLORS ###############
white="\e[1;37m" 
red="\e[1;31m" 
green="\e[1;32m" 
yallow="\e[1;33m" 
cayn="\e[1;36m"
blue="\e[1;34m"
wrde="\e[1;35m"
nocolor="\e[0m"
#########################
resize -s 24 94 > /dev/null
clear

banner() {
echo -e "$red

 ██████╗ ███████╗████████╗    █████╗ ██╗     ██╗      ██╗███╗   ██╗███████╗ ██████╗ 
██╔════╝ ██╔════╝╚══██╔══╝   ██╔══██╗██║     ██║      ██║████╗  ██║██╔════╝██╔═══██╗
██║  ███╗█████╗     ██║█████╗███████║██║     ██║█████╗██║██╔██╗ ██║█████╗  ██║   ██║
██║   ██║██╔══╝     ██║╚════╝██╔══██║██║     ██║╚════╝██║██║╚██╗██║██╔══╝  ██║   ██║
╚██████╔╝███████╗   ██║      ██║  ██║███████╗███████╗ ██║██║ ╚████║██║     ╚██████╔╝
 ╚═════╝ ╚══════╝   ╚═╝      ╚═╝  ╚═╝╚══════╝╚══════╝ ╚═╝╚═╝  ╚═══╝╚═╝      ╚═════╝ 
$nocolor
        [$yallow coded by ANtqAmE $nocolor]
        [$cayn get all informaition for every thing $nocolor]                                                                                
"
}
banner

tools() {
    echo -e "
    $yallow 1) Website Informations $nocolor                  $red 2) Show devices are connected to your network $nocolor
    $white 3) Phone Number Information $nocolor              $cayn 4) Ip Locator $nocolor
    $blue 5) TCP Port Scan $nocolor                        $red  6) DNS Look $nocolor
    $green 7) Whois Lookup $nocolor                          $white 8) GeoIP Lookup $nocolor
    $yallow 9) Subnet Lookup $nocolor                        $blue 10) Get Robots.txt $nocolor
    $cayn 11)Check internet $nocolor                       $red 12)About me (ANtqAmE) $nocolor
    
"
}
tools


    read -p "	$(echo -e $red[$green+$red]$nocolor)$(echo -e $white choice $nocolor) $(echo -e $red[$green$yallow$nocolor$white[1..12] $green$n$red]$nocolor) : " choice


    if [[ $choice == 1 ]]; then
        read -p "   $(echo -e $yallow [+] website  :: ex[ google.com $oncolor]) : " web
        echo -e "$red
        ________________________________________________________________________________
       |          .::        ::.            	       .::             ::.              |
       +===================================+============================================+
       |              [+] this script coded by ANtqAmE (ALI QASSEIM) [+]                |
       |              Facebook: https://www.facebook.com/ANtqAmE                        |
       |              Youtube : https://www.youtube.com/channel/UC1QRVK_K4jWPDXm798orw-g|
       |===================================+============================================|
        "
        sleep 3.5
        whois $web
        echo -e "$wrde

        ________________________________________________________________________________
       |          .::        ::.            	       .::             ::.              |
       +===================================+============================================+
       |              [+] this script coded by ANtqAmE (ALI QASSEIM) [+]                |
       |              Facebook: https://www.facebook.com/ANtqAmE                        |
       |              Youtube : https://www.youtube.com/channel/UC1QRVK_K4jWPDXm798orw-g|
       |===================================+============================================|
        $nocolor
        "
        sleep 3.5

    elif [[ $choice == 2 ]]; then
        echo -e '\e[1;36m
    These devices are connected to your network
                                  [☯]coded by ANtqAmE
    '
        nmap -sP 192.168.0.1-255 | grep "Nmap scan"

    elif [[ $choice == 3  ]]; then
        api_key=806e8db910e4a9e8f22415e0506debd0
        read -p "	$(echo -e $red[$green+$red]$white Enter Country Code [ex : 964 {IRAQ}] : $nocolor)" code
        read -p "	$(echo -e $red[$green+$red]$white Enter Phone Number : $nocolor)" number
        curl "http://apilayer.net/api/validate?access_key=$api_key&number=$number&country_code=$code&format=1"

    elif [[ $choice == 4 ]]; then
        read -p "   $(echo -e $cayn[$yallow+$cayn]$blue Enter IP address : $nocolor)" address
        echo -e "$wrde

        ________________________________________________________________________________
       |          .::        ::.            	       .::             ::.              |
       +===================================+============================================+
       |              [+] this script coded by ANtqAmE (ALI QASSEIM) [+]                |
       |              Facebook: https://www.facebook.com/ANtqAmE                        |
       |              Youtube : https://www.youtube.com/channel/UC1QRVK_K4jWPDXm798orw-g|
       |===================================+============================================|
        
        "
        sleep 3.5
        curl https://ipinfo.io/$address/json


    elif [[ $choice == 5 ]]; then
        echo ""
        echo -e "	$green Port Scanner $nocolor"
        echo ""
        read -p "	$(echo -e $red[$green+$red]$nocolor)$(echo -e $white Enter$green HOST$white  Or Ip To Scan : $nocolor)" host
        echo ""
        curl "https://api.hackertarget.com/nmap/?q=$host"

    elif [[ $choice == 6 ]]; then
        echo " "
        read -p "   $(echo -e $red[$green+$red]$nocolor)$(echo -e $white Enter$green Ip OR host : $nocolor)" dns
        curl "https://api.hackertarget.com/dnslookup/?q=$dns"

    elif [[ $choice == 7 ]]; then
        echo " "
        read -p "    $(echo -e $red[$green+$red]$nocolor)$(echo -e $white Enter$green Ip oR hoSt : $nocolor)" whois
        curl "https://api.hackertarget.com/whois/?q=$whois"

    elif [[ $choice == 8 ]]; then
        echo " "
        read -p "      $(echo -e $red[$green+$red]$nocolor)$(echo -e $white Enter$green Ip oR hoSt : $nocolor)" geolo
        curl "https://api.hackertarget.com/geoip/?q=$geolo"

    elif [[ $choice == 9 ]]; then
        echo " "
        read -p "      $(echo -e $red[$green+$red]$nocolor)$(echo -e $white Enter$green hoSt : $nocolor)" subnet
        curl "http://api.hackertarget.com/subnetcalc/?q=$subnet"

    elif [[ $choice == 10 ]]; then
        echo " "
        read -p "      $(echo -e $red[$green+$red]$nocolor)$(echo -e $white Enter$green hoSt : $nocolor)" hoost
        curl "https://$hoost/robots.txt"

    elif [[ $choice == 11 ]]; then
        echo ""
        echo -e "$green	Website UP or DOWN$nocolor"
        ping www.google.com -c 2  > /dev/null 2>&1
        if [ $? -eq 0 ]; then
        echo ""
        echo -e "$cyan 	Your Internet Works  $nocolor"
        echo ""
        else
        echo ""
        echo -e "$cyan 	Check Internet It Dosen't Work ...$nocolor"
        echo ""
        exit
        fi
        #eof check
        read -p "	$(echo -e $red[$green+$red]$nocolor) $(echo -e $white Enter site [ex : www.facebook.com ]: $nocolor)" site
        curl -sf $site > /dev/null
        if [ $? -eq 0 ]; then > /dev/null
        echo -e "$wrde Site is Up"
        sleep 0.25
        echo "-----------------"
        echo -e "$yallow Site IP Addr : "
        ping -c1 $site | sed -nE 's/^PING[^(]+\(([^)]+)\).*/\1/p'
        echo "-----------------"
        else
        echo -e "$red SIte is down"
        fi
    elif [[ $choice == 12 ]]; then
        clear
        echo -e "$yallow

 ██████╗ ██████╗ ███╗   ██╗████████╗ █████╗  ██████╗████████╗    
██╔════╝██╔═══██╗████╗  ██║╚══██╔══╝██╔══██╗██╔════╝╚══██╔══╝    
██║     ██║   ██║██╔██╗ ██║   ██║   ███████║██║        ██║       
██║     ██║   ██║██║╚██╗██║   ██║   ██╔══██║██║        ██║       
╚██████╗╚██████╔╝██║ ╚████║   ██║   ██║  ██║╚██████╗   ██║       
 ╚═════╝ ╚═════╝ ╚═╝  ╚═══╝   ╚═╝   ╚═╝  ╚═╝ ╚═════╝   ╚═╝       
                                                                 
██╗    ██╗██╗████████╗██╗  ██╗    ███╗   ███╗███████╗            
██║    ██║██║╚══██╔══╝██║  ██║    ████╗ ████║██╔════╝            
██║ █╗ ██║██║   ██║   ███████║    ██╔████╔██║█████╗              
██║███╗██║██║   ██║   ██╔══██║    ██║╚██╔╝██║██╔══╝              
╚███╔███╔╝██║   ██║   ██║  ██║    ██║ ╚═╝ ██║███████╗            
 ╚══╝╚══╝ ╚═╝   ╚═╝   ╚═╝  ╚═╝    ╚═╝     ╚═╝╚══════╝            
                                                                 

                $nocolor                
                                                                     

            $yallow[☯] Facebook : https://www.facebook.com/ANtqAmE $nocolor
            $green[☯] Instagram : https://www.instagram.com/56mrx $nocolor
            $red[☯] Youtube : https://www.youtube.com/channel/UC1QRVK_K4jWPDXm798orw-g $nocolor
            $wrde[☯] Website : https://www.antqame.blogspot.com $nocolor
            $blue[☯] Github : https://www.github.com/antqame $nocolor
    "
else
clear
echo -e "$red
            failed choice Try again 
                $nocolor                
                                                                     

            $yallow[☯] Facebook : https://www.facebook.com/ANtqAmE $nocolor
            $green[☯] Instagram : https://www.instagram.com/56mrx $nocolor
            $red[☯] Youtube : https://www.youtube.com/channel/UC1QRVK_K4jWPDXm798orw-g $nocolor
            $wrde[☯] Website : https://www.antqame.blogspot.com $nocolor
            $blue[☯] Github : https://www.github.com/antqame $nocolor
"
fi