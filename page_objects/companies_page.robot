*** Settings ***
Resource    ../resourece/contraints.robot
Resource    ../global_common_src/library_setup.robot
Resource    ../common_src/browser_setup.robot
Resource    ../common_src/common_methods.robot

*** Variables ***
${personal_switcher}    xpath=//span[contains(text(),'Personal')]
${platform_switcher}    xpath=//p[contains(text(),'Platform')]
${companiesMenu}    xpath=//a[@href='/en/platform/companies']
${searchField}    xpath=//input[@placeholder='Search...']
${companyDetailsPgae}    xpath=//p[contains(text(),'${companyName}')]
${kebabMenu}    xpath=//button[@class='font-bold text-lg disabled:cursor-not-allowed disabled:opacity-50 border-transparent rounded-none hover:enabled:bg-base-100 cursor-pointer min-w-0 border-none bg-transparent p-0']
${deletOption}    xpath=//p[text()='Delete Account']
${deleteButton}    xpath=//button[text()='Delete']
${companyDeleteToast}    xpath=//span[text()='${companyName} is now pending deletion.']
${deleteConfirmation}    xpath=//span[@class='text-xs text-red-high-contrast inline-block']
${recoverButton}    xpath=//button[text()='Recover']
${recoverConfirmButton}    xpath=//button[text()='Confirm']



*** Keywords ***
Navigate companies list
    Find And Click Element    ${personal_switcher}
    Find And Click Element    ${platform_switcher}
    Find And Click Element    ${companiesMenu}

Navigate to company details page
    Clear And Type Into Element    ${searchField}    ${companyName}
    Find And Click Element    ${companyDetailsPgae}

Delete company

    Find And Click Element    ${kebabMenu}
    Find And Click Element    ${deletOption}
    Find And Click Element    ${deleteButton}
    Success toast message verification    ${companyDeleteToast}
    Element Should Be Visible    ${deleteConfirmation}


Recover temporarily deleted company
    
    Find And Click Element    ${recoverButton}
    Find And Click Element    ${recoverConfirmButton}
    Element visibility verification    ${recoverButton}








