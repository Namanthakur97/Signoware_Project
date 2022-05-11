*** Settings ***

Documentation       This suite will handle valid credentials.

...     test - TC_02

Resource    ../resource/Common_Funcationality.resource

Test Setup      Launch Browser
Test Teardown   Close Browser
Test Template   Invalid Credentials

Library     DataDriver      file=../test_data/sinoware.xlsx      sheet_name=Invalid Credentials

*** Test Cases ***
TC1
*** Keywords ***
Invalid Credentials

      Click Element    link=Sign In

     [Arguments]     ${username}     ${password}    ${expected_error}

     Input Text    id=email    ${username}
     Input Password    id=pass    ${password}
     Click Element    id=send2
     Page Should Contain     ${expected_error}