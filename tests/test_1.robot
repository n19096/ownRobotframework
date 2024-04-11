*** Settings ***
Resource    ../page_objects/login_page.robot
Resource    ../page_objects/prelaunch_page.robot
Resource    ../page_objects/home_page.robot
Resource    ../page_objects/companies_page.robot

Suite Setup      browser setup


*** Test Cases ***
test

   Login to application as platform user
#    Create company
#    Navigate Companies list
#    Navigate to company details page
#    Delete company
#    Recover temporarily deleted company

