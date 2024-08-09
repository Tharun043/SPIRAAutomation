*** Settings ***
Resource    ../../settings/Settings.robot

*** Test Cases ***

OTHER DROPOWN MENU Test
    [Setup]    Open Login Page
    Maximize Browser Window
    Fill Login Form    admin@gmail.com    123456
    Check Checkbox    ${CHECKBOX}
    ${selected}=    Run Keyword And Return Status    Element Should Be Selected    ${CHECKBOX}
    Run Keyword If    ${selected}    Log    The checkbox is checked    ELSE    Fail    The checkbox is not checked
    Click Login Button
    Sleep    20s
    Navigate To Page After Login      ${TARGET_PAGE_URL}     
    Test Other Dropdown
    Test Quality Menu
    Test Quote generator
    Test Feedback Menu
    
    [Teardown]      Close Browser