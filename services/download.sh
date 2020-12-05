#!/bin/bash

downloadURLS=('https://company-atk.herokuapp.com'
'https://company-atk.herokuapp.com/list'
'https://company-atk.herokuapp.com/2258ie4t68jv'
'https://account-atk.herokuapp.com/list'
'https://account-atk.herokuapp.com/1c0x0mzp83t'
'https://activity-atk.herokuapp.com/list'
'https://activity-atk.herokuapp.com/2dra7wqcyup')


outputFiles=('company-home.json'
'comany-list.json'
'company-record.json'
'account-list.json'
'account-record.json'
'activity-list.json'
'activity-record.json')

for index in ${!downloadURLS[@]}
do
    echo -e "Downloading ${downloadURLS[$index]}..."
    echo $(curl ${downloadURLS[$index]}  -o ${outputFiles[$index]})
    echo -e "\tSaving as ${outputFiles[$index]}..."
done
