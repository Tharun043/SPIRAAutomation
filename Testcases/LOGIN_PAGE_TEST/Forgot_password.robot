*** Settings ***
Resource    ../settings/Settings.robot

*** Test Cases ***

FORGOT PASSWORD ELEMENT VERIFICATION
    [Setup]    Open Login Page
    Maximize Browser Window
    Forgot Password
    [Teardown]    Close Browser