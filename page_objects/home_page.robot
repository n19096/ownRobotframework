*** Settings ***
Resource    ../resourece/contraints.robot
Resource    ../global_common_src/library_setup.robot
Resource    ../common_src/browser_setup.robot
Resource    ../common_src/common_methods.robot


*** Variables ***
${personal_switcher}    xpath=//span[contains(text(),'Personal')]
${signout_button}    xpath=//span[contains(text(),'Sign Out')]
${createCompany}    xpath=//a[@href='/create-company']
${company_legalName}    xpath=//input[@placeholder='ACME']
${countrydropdown}    xpath=//div[@class='flex flex-col bg-base-color']
${country}    xpath=//p[contains(text(),'${companyCountry}')]
${coutryNextButton}    xpath=//button[text()='Next']
${companyCreatedToast}    xpath=//span[contains(text(),'Created ${companyName} company successfully')]
${skipCompanyPage}    xpath=//a[text()='Skip for now']

*** Keywords ***
Logout from application

    Find And Click Element      ${personal_switcher}
    Find And Click Element    ${signout_button}


Create company
    
    Find And Click Element    ${createCompany}
    Clear And Type Into Element    ${company_legalName}    ${companyName}
    # Find And Click Element    ${countrydropdown}
    # Find And Click Element    ${country}
    Find And Click Element    ${coutryNextButton}
    Success toast message verification    ${companyCreatedToast}
    Find And Click Element    ${skipCompanyPage}


    
    