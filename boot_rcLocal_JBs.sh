#!/bin/bash
#
# Autor= João Batista Ribeiro
# Bugs, Agradecimentos, Criticas "construtivas"
# Mande me um e-mail. Ficarei Grato!
# e-mail: joao42lbatista@gmail.com
#
# Este programa é um software livre; você pode redistribui-lo e/ou
# modifica-lo dentro dos termos da Licença Pública Geral GNU como
# publicada pela Fundação do Software Livre (FSF); na versão 2 da
# Licença, ou (na sua opinião) qualquer versão.
#
# Este programa é distribuído na esperança que possa ser útil,
# mas SEM NENHUMA GARANTIA; sem uma garantia implícita de ADEQUAÇÃO a
# qualquer MERCADO ou APLICAÇÃO EM PARTICULAR.
#
# Veja a Licença Pública Geral GNU para mais detalhes.
# Você deve ter recebido uma cópia da Licença Pública Geral GNU
# junto com este programa, se não, escreva para a Fundação do Software
#
# Livre(FSF) Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301 USA
#
# Script: Script with common commands executed in boot (/etc/rc.d/rc.local)
# Adding: echo "/usr/bin/boot_rcLocal_JBs.sh" >> /etc/rc.d/rc.local
#
# Last update: 21/19/2016
#
## Set brightness in 1%
    #echo 0 > /sys/class/backlight/acpi_video0/brightness
    ## or
    #echo 50 > /sys/class/backlight/intel_backlight/brightness
    ## or
    usual_JBs.sh brigh-1

## Set unicode
    unicode_start

## Set CPU performance. See the actual governor #cpufreq-info
## http://docs.slackware.com/howtos:hardware:cpu_frequency_scaling
    # See the count of CPU you have #cpufreq-info | grep "analyzing CPU"
    cpufreq-set --cpu 0 --governor performance
    cpufreq-set --cpu 1 --governor performance
    cpufreq-set --cpu 2 --governor performance
    cpufreq-set --cpu 3 --governor performance

## Set brightness >= %1
    /usr/bin/brightness_min_set_JBs.sh &

## Print message by time
    echo -e "\n\n"
    echo -e "\t------------------"
    echo -e "\t| Happy Day :-)! |"
    echo -e "\t------------------"

    hm=`date +%H%M`
    hm=900
    if [ $hm -lt 0601 ]; then
        echo -e "\t| Boa Madrugada! |"
    elif [ $hm -lt 1201 ]; then
        echo -e "\t| Bom dia!       |"
    elif [ $hm -lt 18001 ]; then
        echo -e "\t| Boa tarde!     |"
    else
        echo -e "\t| Boa noite!     |"
    fi
    echo -e "\t------------------\n"
    echo -e "\t `date`\n\n"