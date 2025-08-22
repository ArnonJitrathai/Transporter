*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Login Mynetwork
    [Arguments]      ${User}          ${Pass}
    Input Text       xpath=${Mynetwork Input User}          ${User}
    Input Text       xpath=${Mynetwork Input Pass}          ${Pass}
    Click Element    xpath=${Mynetwork Login Button}

Select Mynetwork Menu
    Wait Until Element Is Visible    xpath=${Mynetwork Menu List}      timeout=15s
    # Execute JavaScript    document.getElementById("btn-toggle-side-menu").click()
    sleep    3 seconds
    Click Element    xpath=${Mynetwork Menu List}
    sleep    1 seconds

Select Mynetwork Sub Menu
    [Arguments]      ${menu}
    sleep    1 seconds
    Click Element    xpath=${menu}

Mynetwork Serach Doc ID
    [Arguments]      ${Doc Id}
    Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)
    Wait Until Element Is Visible    xpath=${Doc id input}      timeout=15s
    Input Text       xpath=${Doc id input}      ${Doc Id}

Mynetwork Click Serach Doc ID
    Click Element    xpath=${Mynetwork Serach Button}

Mynetwork Click View Pre-PR
    # Wait Until Element Is Visible    xpath=${Mynetwork View Pre-PR}      timeout=30s
    # sleep    1 seconds
    Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)
    sleep    5 seconds
    Wait Until Element Is Visible    xpath=${Mynetwork View Pre-PR}      timeout=30s
    Click Element    xpath=${Mynetwork View Pre-PR}
    Wait Until Element Is Visible    xpath=${Mynetwork Pop up View Pre-PR}      timeout=30s


    ${Picture Folder path}=     Normalize Path      ${Picture Folder}/View Pre-PR.png
    Capture Page Screenshot     ${Picture Folder path}
    # Wait Until Page Contains         Budget Detail          timeout=15s
    
Get PO Detail
    ${PO Detail Full Text}=    Get Text    xpath=${Mynetwork PO Detail} 
    ${Temp1 Array PO}=  Split String    ${PO Detail Full Text}      :
    ${Temp2 Array PO}=  Split String    ${Temp1 Array PO[1]}     (
    ${PO Number}=  Strip String     ${Temp2 Array PO[0]}
    Log     PO Detail: ${PO Number} 
    [Return]     ${PO Number}      

