*** Settings ***
Resource    ../settings/Settings.robot

*** Test Cases ***

SPIRA LOGO PRESENCE TEST
    [Setup]    Open Login Page
    Check Image Element Presence
    [Teardown]     Close Browser