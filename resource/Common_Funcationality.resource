*** Settings ***

Documentation       This suite will keep the configuration details

Library     SeleniumLibrary
Library     OperatingSystem

*** Variables ***
${BROWSER}  chrome
${URL}     https://signoraware.com/
*** Keywords ***
Launch Browser
     Append To Environment Variable     Path    ${EXECDIR}${/}driver
     Open Browser       browser=${BROWSER}
     Maximize Browser Window
     Set Selenium Implicit Wait    30s
     Set Screenshot Directory    ${EXECDIR}${/}screenshot
     Go To    url=${URL}