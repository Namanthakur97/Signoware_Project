*** Settings ***

Documentation       This suite will handle the account creation details

...     Test- TC-01

Resource        ../resource/Common_Funcationality.resource
Resource        ../create_account_suite/create_new_account_suite.robot

Test Setup      Launch Browser
Test Teardown       Close Browser

*** Test Cases ***
Create New Account Test

     Click Element    link=Sign In
     Click Element    link=Create an Account
     Input Text    id=firstname    Naman
     Input Text    id=lastname    Thakur
     Input Text    id=email_address    namanthakur1997@gmail.com
     Input Password    id=password    Vento.123
     Input Password    id=password-confirmation    Vento.123
     Click Element    id=assistance_allowed_checkbox
     Click Element    xpath=//span[text()="Create an Account"]

