*** Settings ***
Resource    ../../settings/Settings.robot

*** Test Cases ***

USERS MENU Test
    [Setup]    Open Login Page
    Maximize Browser Window
    Fill Login Form    admin@gmail.com    123456
    Check Checkbox    ${CHECKBOX}
    ${selected}=    Run Keyword And Return Status    Element Should Be Selected    ${CHECKBOX}
    Click Login Button
    Sleep    10s   
    Navigate To Page After Login      ${TARGET_PAGE_URL}     
    Test Users Dropdown
    TEST Quality Menu
    Test Quote generator
    Test Feedback Menu
    
    [Teardown]     Close Browser