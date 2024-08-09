*** Settings ***
Resource    ../settings/Settings.robot

*** Test Cases ***

REGISTER HERE OPTION FUNCTIONALITY
    [Setup]    Open Login Page
    Maximize Browser Window
    Register Here  varun.datt@dtskill.com     varun143     1234567     
    Click Register Here
    [Teardown]    Close Browser