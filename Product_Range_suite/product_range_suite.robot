*** Settings ***

Documentation       This suite will handle the range of products

...     Test- TC_05

Resource        ../resource/Common_Funcationality.resource
Resource        login.robot

Test Setup      Launch Browser
Test Teardown       Close Browser

*** Test Cases ***
TC4


     Click Element    link=Sign In
     Input Text    id=email   namanthakur1997@gmail.com
     Input Password    id=pass     Vento.123
     Click Element    id=send2

TC2
     Click Element    xpath=//span[text()="Product Range"]
     Click Element    partial link=Steelware
     Click Element    partial link=Classic Micro Steel Bowl 800 ml. (Round)
     Click Element    id=attribute93
     Select From List By Label    id=attribute93     Red
     Click Element    id=product-addtocart-button