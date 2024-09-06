*** Keywords ***

Navigate To Page After Login
    [Arguments]    ${target_page_url}  
    Go To    ${target_page_url}
    sleep   3s

Check Image Element
    Element Should Be Visible    ${IMAGE_PATH}
     ${result}    ${status}    Run Keyword And Ignore Error    Element Should Be Visible    ${IMAGE_PATH}
    Run Keyword If    '${status}' == 'PASS'    Log    Image element is present
    Run Keyword If    '${status}' == 'FAIL'    Log    Image element is not present

Check For Profile Logo
    [Arguments]     ${PROFILE_LOGO}
    Wait Until Element Is Visible    ${PROFILE_LOGO}     5s
    Page Should Contain Element      ${PROFILE_LOGO}
    Page Should Contain Element      ${LOGOUT}
    Click Element    ${LOGOUT}       

Check for Search Box Presence
    [Arguments]     ${SEARCH_BOX}
    Wait Until Element Is Visible     ${SEARCH_BOX}     5s
    Page Should Contain Element       ${SEARCH_BOX}    

Check for Notification Icon presence
    [Arguments]     ${NOTIFICATION_ICON}
    Wait Until Element Is Visible     ${NOTIFICATION_ICON}     5s
    Page Should Contain Element       ${NOTIFICATION_ICON}    

Check Element
    Wait Until Element Is Visible    ${DROPDOWN_PATH_CLICK}    5s
    Click Element    ${DROPDOWN_PATH_CLICK}
    Sleep    1s

Test SalesTracker Menu
    Wait Until Element Is Visible    ${DASHBOARD_PATH}    5s
    Click Element    ${DASHBOARD_PATH}
    ${selected_option}=    Get Text    ${DASHBOARD_PATH}
    Should Be Equal    ${selected_option}    Dashboard
    Sleep     3s
    

    Wait Until Element Is Visible    ${ALLENQUIRIES_PATH}    5s
    Click Element    ${ALLENQUIRIES_PATH}
    ${selected_option}=    Get Text    ${ALLENQUIRIES_PATH}
    Should Be Equal    ${selected_option}    All Enquiries
    Sleep      3s


    Wait Until Element Is Visible    ${AWAITINGQUOTES_PATH}    5s
    Click Element    ${AWAITINGQUOTES_PATH}
    ${selected_option}=    Get Text    ${AWAITINGQUOTES_PATH}
    Should Be Equal    ${selected_option}    Awaiting Quotes
    Sleep      3s


    Wait Until Element Is Visible    ${AWAITINGORDERS_PATH}    5s
    Click Element    ${AWAITINGORDERS_PATH}
    ${selected_option}=    Get Text    ${AWAITINGORDERS_PATH}
    Should Be Equal    ${selected_option}    Awaiting Order
    Sleep      3s


    Wait Until Element Is Visible    ${ORDERPLACED_PATH}    5s
    Click Element    ${ORDERPLACED_PATH}
    ${selected_option}=    Get Text    ${ORDERPLACED_PATH}
    Should Be Equal    ${selected_option}    Order Placed
    Sleep      3s

    Wait Until Element Is Visible    ${REPORT_PATH}    5s
    Click Element    ${REPORT_PATH}
    ${selected_option}=    Get Text    ${REPORT_PATH}
    Should Be Equal    ${selected_option}    Report
    Sleep      3s

    Click Element    ${DROPDOWN_PATH_CLICK}
    Sleep    1s


Test Users Dropdown
    Wait Until Element Is Visible    ${USERMANAGEMENT}    5s
    Click Element    ${USERMANAGEMENT}
    Sleep    3s
    Wait Until Element Is Visible    ${FILTER_USER}    5s
    Wait Until Element Is Visible    ${SEARCH_USER}    5s
    Wait Until Element Is Visible    ${ADDNEW_USER}    5s
    Click Element    ${ADDNEW_USER}
    Wait Until Element Is Visible   ${USER_POPUP}
    Page Should Contain Element    ${INPUT_USER_POPUP}
    Page Should Contain Element    ${SELECTARROW_USER_POPUP}
    Click Element    ${SELECTARROW_USER_POPUP}
    Page Should Contain Element    ${ULMENU_USER_POPUP}
    Page Should Contain Element    ${SAVE_USER_POPUP}
    Click Element    ${CANCEL_USER}

TEST Quality Menu
    Wait Until Element Is Visible    ${QUALITY}    5s
    Click Element    ${QUALITY}
    Sleep    3s
    Wait Until Element Is Visible   ${LOGO_QUALITY}
    Page Should Contain Element    ${LOGO_QUALITY}
    Page Should Contain Element    ${LOGO2_QUALITY}
    Page Should Contain Element    ${LOGO3_QUALITY}
    Page Should Contain Element    ${UPLOAD_QUALITY}
    Page Should Contain Element    ${VIEWDB_QUALITY}
   
Test Quote generator
    Wait Until Element Is Visible    ${QUOTE_GENERATOR}    5s
    Click Element    ${QUOTE_GENERATOR}
    Sleep    3s
    Page Should Contain Element    ${SIDEARROW_QUALITYMGMT}
    Page Should Contain Element    ${BUTTON_QUALITYMGMT}
    Page Should Contain Element    ${BUTTON1_QUALITYMGMT}
    Page Should Contain Element    ${BUTTON2_QUALITYMGMT}
    Page Should Contain Element    ${BUTTON3_QUALITYMGMT}


Test Feedback Menu
    Wait Until Element Is Visible    ${FEEDBACK}    5s
    Click Element    ${FEEDBACK}
    Sleep    3s


    Wait Until Element Is Visible    ${FEEDBACKFORM_PATH}    5s
    Page Should Contain Element      ${FEEDBACKFORM_PATH}
    Sleep      1s

    Wait Until Element Is Visible    ${FEEDBACKDATA_PATH}    5s
    Page Should Contain Element      ${FEEDBACKDATA_PATH}
    Sleep      1s

Capture Screenshot On Failure
    [Arguments]    ${filename}
    ${screenshot_path}    Set Variable    C:\\Users\\THARUN_H\\Downloads\\Spira_Automation-test_RPA\\SPIRA_Automation\\Testcases\\Results\\${filename}
    Run Keyword And Ignore Error    Capture Page Screenshot    ${screenshot_path}






