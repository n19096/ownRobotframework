*** Settings ***
Resource    ../resourece/contraints.robot
Resource    ../global_common_src/library_setup.robot
Resource    ../common_src/browser_setup.robot
Resource    ../common_src/common_methods.robot


*** Variables ***
${glid_field}   xpath=//input[@name='glid']
${next_button}  xpath=//button[contains(text(),'Next')]
${password_field}    xpath=//input[@name='Password']
${Sign_button}  xpath=//button[contains(text(),'Sign In')]
${login_page_title}
*** Keywords ***
Login

    Page title verification     ${login_page_title}
     Clear And Type Into Element     ${glid_field}   automate_123
    Find And Click Element      ${next_button}
    Clear And Type Into Element    ${password_field}    Test@8297
    Find And Click Element    ${Sign_button}