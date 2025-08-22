*** Settings ***
Library           SeleniumLibrary
Library           BuiltIn
Resource          ${CURDIR}/../../../resources/resources.robot

Suite Setup       Open Browser To My net-work

*** Test Cases ***
สามารถล็อคอินเข้าสู่ระบบ My Net-Work Stagging ได้
    [Documentation]       สามารถล็อคอิน My Net-Work Stagging ได้
    [Tags]       Standard_Test
    Welcome Page Should Be Open     ${LOGIN TITLE MY NETWORK}
    Login Mynetwork        ${Mynetwork Add Site User}     ${Mynetwork Add Site Pass}

ทำรายการ Add site ได้
    sleep    3 seconds
    Select Mynetwork Menu
    Select Mynetwork Sub Menu               ${Mynetwork Subcontract}
    Select Mynetwork Sub Menu               ${Mynetwork Sub Project Management}
    Wait Until Page Contains         Sub Project Management
    sleep    1.5 seconds
    My network Sub Project Management       ${Civil}            test
    My network Search Sub Project Management
    My network Edit Sub Project

    ${Add_Site_Template File List}=    Get Column Values By Name File       ${SOURCE_FILE For Civil}        Add_Site_Template_File

    ${Add_Site_Template path}=    Catenate    SEPARATOR=     ${CURDIR}/../../../data file/    ${Add_Site_Template File List[0]}
    Set Test Variable    ${Add_Site_Template path}
    ${Add_Site_Template path}=    Normalize Path    ${Add_Site_Template path}
    Log    ${Add_Site_Template path}

    My network Add Site          ${Add_Site_Template path}
    ${Site Code}=   My network Add Site Result
    Set Global Variable          ${Site Code}
    
    My network Map Site Code     ${Site Code}

    Map Proforma                 1010001074         #Excel
    Map Proculator 
    Map Site Result
    sleep    5 seconds