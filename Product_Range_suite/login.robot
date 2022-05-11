*** Settings ***

Documentation       This suite will handle the account creation details

...     Test- TC-04

Resource        ../resource/Common_Funcationality.resource


Test Setup      Launch Browser
Test Teardown       Close Browser

*** Test Cases ***

TC3
        Click Element    link=Sign In
        Input Text    id=email   namanthakur1997@gmail.com
        Input Password    id=pass     Vento.123
        Click Element    id=send2