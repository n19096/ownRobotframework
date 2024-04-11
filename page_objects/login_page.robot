*** Settings ***
Resource    ../resourece/contraints.robot
Resource    ../global_common_src/library_setup.robot
Resource    ../common_src/browser_setup.robot
Resource    ../common_src/common_methods.robot
Resource    prelaunch_page.robot


*** Variables ***
${glid_field}   xpath=//input[@name='glid']
${next_button}  xpath=//button[contains(text(),'Next')]
${password_field}    xpath=//input[@name='Password']
${Sign_button}  xpath=//button[contains(text(),'Sign In')]
${login_page_title}

*** Keywords ***
Login to application as platform user

    unlockapplication
    IF    '${userType}' == 'Platform'
        Clear And Type Into Element     ${glid_field}   ${platformUserGLID}
        Find And Click Element      ${next_button}
        Clear And Type Into Element    ${password_field}    ${platformUserPassword}
        Find And Click Element    ${Sign_button}
    ELSE
        Clear And Type Into Element     ${glid_field}   ${nonPlatformUserGLID}
        Find And Click Element      ${next_button}
        Clear And Type Into Element    ${password_field}    ${nonPlatformUserPassword}
        Find And Click Element    ${Sign_button}
    END

