*** Settings ***
Resource    ../../settings/Settings.robot

*** Test Cases ***

VERIFY LOGIN FUNCTIONALITY
    [Setup]    Open Login Page
    Fill Login Form    admin@gmail.com    123456
    Check Checkbox    ${CHECKBOX}
    ${selected}=    Run Keyword And Return Status    Element Should Be Selected    ${CHECKBOX}
    Run Keyword If    ${selected}    Log    The checkbox is checked    ELSE    Fail    The checkbox is not checked
    Click Login Button
    [Teardown]    Close Browser