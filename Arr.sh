#!/bin/bash
UNIX=('Debian' "Red Hat" 'Ubantu' 'Suse' 'Fdora')
echo ${UNIX[*]}
echo ${#UNIX[*]}
echo ${#UNIX[2]}
echo ${UNIX[*]: 2 : 2 }
echo ${UNIX[*]/Ubantu/SCOUnix}

UNIX=(  'AIX' "HP-UX" ${UNIX[*]})
echo ${UNIX[*]}
unset UNIX[2]
echo ${UNIX[*]}
LINUX=(${UNIX[*]})
echo ${LINUX[*]}
BASH=(${UNIX[*]} ${LINUX[*]})
echo ${BASH[*]}
unset LINUX[*]
unset UNIX[*]
echo ${BASH[*]}
