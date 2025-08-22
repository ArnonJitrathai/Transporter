*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Permission Start Approved NBTC PEA MEA
    [Arguments]        ${Case}
    Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)
    Click Element    xpath=${Permission Start Approve Click}  
    Click Element    xpath=${Case}
    sleep    0.5 seconds

Permission Start Approved Save
    Wait Until Element Is Visible    xpath=${Permission Start Approve Save}      timeout=15s

    sleep    0.5 seconds
    ${Picture Folder path}=     Normalize Path      ${Picture Folder}/Permission_Start_Approved.png
    Capture Page Screenshot     ${Picture Folder path}
    
    Click Element    xpath=${Permission Start Approve Save} 
    sleep    0.5 seconds