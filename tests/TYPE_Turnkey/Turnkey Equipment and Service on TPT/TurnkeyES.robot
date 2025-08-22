*** Settings ***
Library           SeleniumLibrary
Resource          ../../../resources/global_variables.robot
Resource          ../../../resources/login_keywords.robot
Resource          ../../../resources/menu_keywords.robot
Resource          ../../../resources/menu_import_site.robot
Resource          ../../../resources/menu_ssr_create_keywords.robot

Suite Setup       Open Browser To Login Page

*** Test Cases ***
TS001 Login
    Your connection is not private
    Transporter_Login   ${SSR Create USER}      ${SSR Create PASS}
    Welcome Page Should Be Open
    sleep    1 seconds

# TC_001 SSR Create
#     Click Menu List
#     Select Menu                                 ${Site Management Menu}
#     Select Menu                                 ${Turnkey Import Site Menu}
#     Turnkey Import Site Serch Project           ${Project Name}
#     Turnkey Import Site File                    ${Import Site File Template_Turnkey}
#     sleep    10 seconds

TC_002 SSR Create And Submitted
    Click Menu List
    sleep    1 seconds
    Select Menu                                 ${SSR Create Menu ID}                   #Use ID
    Select SSR Workflow Type                    ${Workflow Type Equipment And Service}
    SSR Submitted New Add Pic                   ${Cat Picture} 
    Check Result Massage                        ${SSR Check Result Massage Text}    TS002_SSR_Submit_Successful     ${SSR Result Massage Text} 
    sleep    10 seconds
    Log to console          Check Result Massage