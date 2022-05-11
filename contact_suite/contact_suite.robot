*** Settings ***

Documentation       This suite will handle the contact us page for any help

...     Test- TC-04

Resource        ../resource/Common_Funcationality.resource


Test Setup      Launch Browser
Test Teardown       Close Browser

*** Test Cases ***

TC6
        Click Element    link=Sign In
        Input Text    id=email   namanthakur1997@gmail.com
        Input Password    id=pass     Vento.123
        Click Element    id=send2

        Click Element    partial link=Contact Us
        Input Text    id=telephone    1122334455
        Input Text    id=comment    Thanks for helping in Automation
        Click Element    xpath=//span[text()="Send Message"]
        Page Should Contain    Thanks for contacting us with your comments and questions. We'll respond to you very soon.