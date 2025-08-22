*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
#Routing Submitted (iGIS PDF Red Mark) 
Select Workflow Type
    [Arguments]    ${Select SSR Workflow Type}
    Click Element    xpath=${SSR Click Workflow Type} 
    sleep    1 seconds
    Click Element    xpath=${Select SSR Workflow Type}

Reference Site Code Input Text
    [Arguments]    ${Reference Site Code Route Chain ID}
    Input Text       xpath=${SSR Search Reference Site Code}       ${Reference Site Code Route Chain ID}

Search Site Code
    Click Element    xpath=${Todo list Menu Search Button}
    Wait Until Element Is Visible    xpath=${Todo list Menu Select First Row}     timeout=10s
    Execute Javascript    window.scrollTo(0, document.body.scrollHeight)
    sleep    1 seconds
    Capture Page Screenshot    ${Picture Path Folder}/TS003_SSR_Create_Search.png
    Click Element    xpath=${Todo list Menu Select First Row}

Survey Information
    [Arguments]    ${Latitude F}    ${Longitude F}  ${Latitude L}    ${Longitude L}
    Wait Until Element Is Visible    xpath=${Latitude First}     timeout=10s
    Input Text    xpath=${Latitude First}    ${Latitude F}
    Input Text    xpath=${Longitude First}    ${Longitude F}
    Input Text    xpath=${Latitude Last}    ${Latitude L}
    Input Text    xpath=${Longitude Last}    ${Longitude L}
    sleep    1 seconds

Cable Type Information  
    [Arguments]    ${Cable Type}    ${Cable Core No}      ${Cable Distance}   
    Execute Javascript    window.scrollTo(0, 200)
    sleep    1 seconds
    Click Element    xpath=${Click Cable Type}
    Click Element    xpath=${Cable Type}
    sleep    0.5 seconds
    Click Element    xpath=${Click Cable Type Core}
    Click Element    xpath=${Cable Core No}
    sleep    0.5 seconds
    Input Text    xpath=${Cable Distance Input}    ${Cable Distance}

Routing Submitted Upload File
    [Arguments]    ${Picture}
    Choose File      xpath=${Routing Submitted Add}         ${Picture}
    sleep    0.5 seconds
    
    ${Picture Folder path}=     Normalize Path      ${Picture Folder}/Routing_Submitted.png
    Capture Page Screenshot     ${Picture Folder path}

    Click Element    xpath=${Routing Submitted Upload}
    Wait Until Element Is Visible    xpath=${ing Check Pount}     timeout=10s

Routing Submitted Save
    Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)
    Click Element    xpath=${Routing Submitted Save} 