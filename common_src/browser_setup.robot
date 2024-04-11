*** Settings ***
Documentation     This file contains objects to import libraries and resource files.

Resource    ../resourece/contraints.robot
Resource    ../global_common_src/library_setup.robot


*** Keywords ***

launch browser
    [Arguments]     ${browser}  ${url}

    ${actual_browser}=  Convert To Lowercase    ${browser}
    Wait Until Keyword Succeeds    3x    1s
    ...    Open Browser    ${url}    browser=${actual_browser}
    Maximize Browser Window


browser setup
    launch browser  ${browser}  ${url}
