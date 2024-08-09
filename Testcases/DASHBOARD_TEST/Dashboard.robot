*** Settings ***
Resource    ../../settings/Settings.robot

*** Test Cases ***

DASHBOARD ELEMENTS VERIFICATION
    [Setup]    Open Login Page
    Maximize Browser Window
    Fill Login Form    admin@gmail.com    123456
    Check Checkbox    ${CHECKBOX}
    ${selected}=    Run Keyword And Return Status    Element Should Be Selected    ${CHECKBOX}
    Run Keyword If    ${selected}    Log    The checkbox is checked    ELSE    Fail    The checkbox is not checked
    Click Login Button
    Sleep    20s
    Navigate To Page After Login      ${TARGET_PAGE_URL} 
    Check Image Element      
    Check for Search Box Presence     ${SEARCH_BOX}
    Check for Notification Icon presence      ${NOTIFICATION_ICON}
    Check For Profile Logo            ${PROFILE_LOGO}
    [Teardown]    Close Browser