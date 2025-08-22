*** Settings ***
Library    SeleniumLibrary
# Library    String
# Library    OperatingSystem
# Library    BuiltIn

*** Keywords ***
Click Import
    Click Element    xpath=${Import Create Draft Site Code}
    Wait Until Page Contains        Import Site Information          timeout=15s

Click Search Proforma No
    Click Element    xpath=${Search Proforma No}
    Wait Until Element Is Visible    xpath=${Proferma No Input}    timeout=10s

Search Proforma No
    [Arguments]     ${Proferma Number}
    Input Text       xpath=${Proferma No Input}     ${Proferma Number}
    Click Element    xpath=${Proferma Serach Button}
    Wait Until Element Is Visible    xpath=${First Proferma No}     timeout=15s
    Click Element    xpath=${First Proferma No}

Click Budget Check List
    Click Element    xpath=${Serach Budget Check List}
    Wait Until Element Is Visible    xpath=${Purchase Cat Group}    timeout=10s
    
Search Budget Check List
    [Arguments]     ${Select Purchase Cat Group}    ${Select Purchase Cat}  ${Select Action Type}   ${Select System Type}   ${Select Service Code}  ${Select Company Code} 
    Click Element    xpath=${Purchase Cat Group}
    Click Element    xpath=//select/option[@value="${Select Purchase Cat Group}"]
    sleep    1 seconds
    Click Element    xpath=${Purchase Cat} 
    Click Element    xpath=//select/option[@value="${Select Purchase Cat}"]
    sleep    1 seconds
    Click Element    xpath=${Action Type}  
    Click Element    xpath=//select/option[@value="${Select Action Type}"]
    sleep    1 seconds   
    Click Element    xpath=${System Type}   
    Click Element    xpath=//select/option[@value="${Select System Type}"] 
    sleep    1 seconds 
    Click Element    xpath=${Service Code}
    Click Element    xpath=//option[text()="${Select Service Code}"]
    # //select/option[@value="${Select Service Code}"] 
    sleep    1 seconds
    Click Element    xpath=${Company Code} 
    Click Element    xpath=//select/option[@value="${Select Company Code}"]
    sleep    1 seconds 

Clck Search Purchase
    Click Element    xpath=${Purchase Serach}
    Wait Until Element Is Visible    xpath=${First Purchase Row Select}     timeout=10s
    
Select Purchase Cat Group
    Click Element    xpath=${First Purchase Row Select}
    sleep    0.5 seconds

Click Search Procurator
    Click Element    xpath=${Click Search Procurator Button}
    Wait Until Element Is Visible    xpath=${Workflow Type}     timeout=10s

Search Procurator
    [Arguments]     ${Select Workflow Type}     ${Select SSR Type}     ${Select Region}
    Click Element    xpath=${Workflow Type}
    Click Element    xpath=//option[text()="${Select Workflow Type}"]
    sleep    0.5 seconds
    Click Element    xpath=${SSR Type}
    Click Element    xpath=//option[text()="${Select SSR Type}"]
    sleep    0.5 seconds
    Click Element    xpath=${Region}
    Click Element    xpath=//option[text()="${Select Region}"]
    sleep    0.5 seconds
    Click Element    xpath=${Click Procurator Search}
    Wait Until Element Is Visible    xpath=${First Row Procurator Select}     timeout=10s
    Click Element    xpath=${First Row Procurator Select}

Import Type
    [Arguments]    ${Import Site File}  
    Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)   
    Click Element    xpath=${Import Type}
    Choose File      xpath=${Choose Import Site File}    ${Import Site File}

Upload Site
    Click Element    xpath=${Button Upload}
    Wait Until Page Contains    Success Result  timeout=15s

    sleep    0.5 seconds
    ${Picture Folder path}=     Normalize Path      ${Picture Folder}/Create_Draft_Site_code.png
    Capture Page Screenshot     ${Picture Folder path}
