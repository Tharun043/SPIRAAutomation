*** Keywords ***

Open Login Page
    ${driver} =    Create Chrome Driver
    Open Browser    headlesschrome   ${driver}
    Go To    ${URL}

Fill Login Form
    [Arguments]    ${email}    ${password}
    Input Text    id=username     ${email}
    Input Text    id=password      ${password}

Click Login Button
    Click Element    ${LOGIN_BUTTON}

Check Checkbox
    [Arguments]    ${locator}
    ${is_selected}=    Run Keyword And Return Status    Element Should Be Selected    ${locator}
    Run Keyword If    not ${is_selected}    Click Element    ${locator}
    
Element Should Be Selected
    [Arguments]    ${locator}
    Wait Until Element Is Visible    ${locator}    10 seconds
    ${is_selected}=    Get Element Attribute    ${locator}    checked
    Should Be Equal As Strings    ${is_selected}    true

Forgot Password
    [Documentation]    A test case to test the forgot password link
    Click Link    ${FORGOT_PASSWORD}
    Close Browser

Register Here
    click Link    ${REGISTER_HERE}
    [Arguments]    ${email}     ${username}     ${password}
    Input Text     id = email        ${email}
    Input Text     id = username     ${username}
    Input Text     id = password     ${password}

Click Register Here
    Click Element     ${CREATE_ACCOUNT}

Check Image Element Presence
    Element Should Be Visible    ${IMAGE_LOCATOR}
     ${result}    ${status}    Run Keyword And Ignore Error    Element Should Be Visible    ${IMAGE_LOCATOR}
    Run Keyword If    '${status}' == 'PASS'    Log    Image element is present
    Run Keyword If    '${status}' == 'FAIL'    Log    Image element is not present