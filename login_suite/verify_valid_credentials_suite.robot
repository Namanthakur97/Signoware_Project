*** Settings ***

Documentation       This suite will handle valid credentials.

...     test - TC_03

Resource    ../resource/Common_Funcationality.resource

Test Setup      Launch Browser
Test Teardown   Close Browser
Test Template   Valid Credentials

Library     DataDriver      file=../test_data/sinoware.xlsx      sheet_name=Valid Credentials

*** Test Cases ***
TC2
*** Keywords ***
Valid Credentials
        
      Click Element    link=Sign In

     [Arguments]     ${username}     ${password}    ${expected_value}

     Input Text    id=email    ${username}
     Input Password    id=pass    ${password}
     Click Element    id=send2
     Page Should Contain     ${expected_value}