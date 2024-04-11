*** Settings ***
Documentation     This file contains objects to import libraries and resource files.

Resource    ../resourece/contraints.robot
Resource    ../global_common_src/library_setup.robot
Resource    ../common_src/browser_setup.robot
Resource    ../common_src/common_methods.robot

*** Variables ***
${Unlock_element}    xpath=//p[contains(text(),'Unlock')]
${prelaunch_field}    xpath=//input[@name='prelaunchPassword']
${continue_button}  xpath=//button[contains(text(),'Continue')]
${page_title}   AgileOne

*** Keywords ***
unlockapplication

    Find And Click Element    ${Unlock_element}
    Clear And Type Into Element    ${prelaunch_field}    platform
    Find And Click Element    ${continue_button}


    

