*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
PAT BOQ Submitted Sub Project
    [Arguments]     ${Sub Project}
    Execute Javascript    window.scrollTo(0, 200)
    Click Element    xpath=${PAT BOQ Submitted Sub Project}
    Click Element    xpath=${Sub Project}
    sleep    0.5 seconds

PAT BOQ Submitted Sub Project Click Serach
    Click Element    xpath=${PAT BOQ Submitted Sub Project Serach}
    Wait Until Page Contains    Search Standard Price      timeout=15s

PAT BOQ Submitted Standard Price
    [Arguments]     ${Input 1}      ${Input 2}
    Wait Until Element Is Visible    xpath=${Input 1}      timeout=15s
    Click Element    xpath=${Input 1}
    Click Element    xpath=${Input 2}

PAT BOQ Submitted Confirm Standard Price
    Click Element    xpath=${PAT BOQ Submitted Standard Price}     
    sleep    0.5 seconds


PAT BOQ Submitted Input Vendor QTY
    [Arguments]     ${Input 1}      ${Input 2}
    Input Text       xpath=${Input Vendor QTY 1}      ${Input 1}
    Input Text       xpath=${Input Vendor QTY 2}      ${Input 2}

PAT BOQ Submitted Average Article Group
    [Arguments]     ${Article Group}
    Click Element    xpath=${Average Article Group Click}
    Click Element    xpath=${Article Group}

PAT BOQ Submitted Average Calculate
    Execute Javascript    window.scrollTo(0, 500)
    Click Element    xpath=${PAT/BOQ Submitted Click Calculate} 
    Wait Until Element Is Visible    xpath=${PAT/BOQ Submitted Edit}      timeout=15s
    sleep    0.5 seconds

PAT BOQ Submitted Add Picture
    [Arguments]     ${Picture}
    Execute Javascript    window.scrollTo(0, 700)
    Choose File      xpath=${PAT/BOQ Submitted Add Picture}    ${Picture}
    Wait Until Element Is Visible    xpath=${PAT/BOQ Submitted Download Picture}      timeout=15s
    
PAT BOQ Submitted Save
    sleep    0.5 seconds
    ${Picture Folder path}=     Normalize Path      ${Picture Folder}/PAT_BOQ_Submitted.png
    Capture Page Screenshot     ${Picture Folder path}

    Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)
    Click Element    xpath=${PAT/BOQ Submitted Save}
    Wait Until Element Is Visible    xpath=${PAT/BOQ Submitted Result Massage}      timeout=15s
    