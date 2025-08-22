*** Settings ***
Library           SeleniumLibrary
Resource          ../resources/keywords.robot
Resource          ../resources/variables.robot

Suite Setup       Open Browser To Login Page

*** Test Cases ***
Login With Valid Credentials
    Your connection is not private
    Input Username    ${VALID USER}
    Input Password    ${VALID PASS}
    Click Login
    Welcome Page Should Be Open
    sleep    1 seconds

Flow Test Non-Turnkey EDS AIS
    Click Menu List
    sleep    1 seconds
    Click Site Management
    Click Create Draft Site Code
    Import Create Draft Site Code Button
    Click Search Proforma No
    Input Proforma No
    Click Serach Budget Check List
    Click Search Procurator
    Click Import Type New
    Click Import Site File