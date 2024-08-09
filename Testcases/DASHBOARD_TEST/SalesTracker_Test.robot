*** Settings ***
Resource    ../../settings/Settings.robot

*** Test Cases ***

Sales Tracker MENU Test
    [Setup]    Open Login Page
    Maximize Browser Window
    Fill Login Form    admin@gmail.com    123456
    Check Checkbox    ${CHECKBOX}
    ${selected}=    Run Keyword And Return Status    Element Should Be Selected    ${CHECKBOX}
    Run Keyword If    ${selected}    Log    The checkbox is checked    ELSE    Fail    The checkbox is not checked
    Click Login Button
    Sleep    10s
    Navigate To Page After Login      ${TARGET_PAGE_URL}
    Click Element    ${DROPDOWN_PATH_CLICK}
    Test Sales Tracker Menu

    [Teardown]      Close Browser
