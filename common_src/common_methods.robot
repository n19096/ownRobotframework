***settings***
Resource    ../resourece/contraints.robot
Resource    ../global_common_src/library_setup.robot
Resource    ../global_common_src/timeout_setup.robot


*** Keywords ***
Verify Element On Page
    [Arguments]
    ...    ${element}
    ...    ${timeout}=${wait_time}
    # =========================
    ${half_timeout}    Evaluate    ${timeout}/2
    # =========================
    Wait Until Keyword Succeeds    2x    2s
    ...    Wait Until Page Contains Element   ${element}    ${half_timeout}
    Wait Until Element Is Visible      ${element}    ${timeout}
    Element Should Be Visible          ${element}


Clear And Type Into Element
    [Arguments]
    ...    ${field_location}
    ...    ${text_entry}
    ...    ${timeout}=${wait_time}
    Wait Until Element Is Visible         ${field_location}    ${timeout}
    Verify Element On Page  ${field_location}    ${timeout}
    Clear Element Text    ${field_location}
    Input Text                     ${field_location}    ${text_entry}

Find And Click Element
    [Arguments]
    ...    ${element}
    ...    ${timeout}=${wait_time}
    Wait Until Element Is Visible    ${element}    ${timeout}
    Verify Element On Page  ${element}    ${timeout}
    Wait Until Keyword Succeeds    2x    1s    Click Element    ${element}


Page title verification
    [Arguments]
    ...    ${titles}

    Set Selenium Implicit Wait     10
    ${get_title}    Get Title
    Run Keyword If    '${get_title}' == '${titles}'
    ...    Log    page opened successfully

Success toast message verification
    [Arguments]
    ...    ${toast}
    Wait Until Keyword Succeeds    3x    1s
    ...    Wait Until Element Is Visible    ${toast}

Element visibility verification
    [Arguments]
    ...    ${visibleElement}
    Wait Until Keyword Succeeds    3x    1s
    ...    Element Should Not Be Visible    ${visibleElement}


Convert sec to min
    [arguments]     ${date}
     ${hours_minutes}=  Convert time    ${date}   timer  exclude_millis=true
     Log To Console    ${hours_minutes}

