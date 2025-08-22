*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${MAX_RETRIES}    3

*** Keywords ***
Login AMM Mynetwork
    [Arguments]      ${User}
    Input Text       xpath=${AMM User input}          ${User}
    Click Element    xpath=${AMM Login button}

AMM Mynetwork Load PO
    [Arguments]      ${PO}
    sleep    3 seconds
    Select Frame    xpath=/html/frameset/frame[1]
    Click Element   xpath=${AMM Operation} 
    Unselect Frame

    sleep    1 seconds
    Select Frame    xpath=/html/frameset/frame[2]
    Select Frame    menuOperFrame
    Wait Until Element Is Visible    xpath=${AMM Load PO Menu}      timeout=15s
    Click Element    xpath=${AMM Load PO Menu}
    Unselect Frame
    Unselect Frame

    Select Frame    xpath=/html/frameset/frame[2]
    Select Frame    mainOperFrame
    Wait Until Element Is Visible    xpath=${AMM PO No Path}      timeout=15s
    Input Text       xpath=${AMM PO No Path}        0000000000
    Click Element    xpath=${AMM Load PO Button}
    sleep    2 seconds
    Input Text       xpath=${AMM PO No Path}        ${PO}
    Click Element    xpath=${AMM Load PO Button}
    sleep    2 seconds
    Unselect Frame
    Unselect Frame

AMM Check Text Results
    Select Frame    xpath=/html/frameset/frame[2]
    Select Frame    mainOperFrame
    Wait Until Element Is Visible    xpath=${AMM Check Text}      timeout=15s

    ${Picture Folder path}=     Normalize Path      ${Picture Folder}/Load_PO.png
    Capture Page Screenshot     ${Picture Folder path}    

    ${Result Massage Full Text}=    Get Text    xpath=${AMM Check Text}
    Unselect Frame
    Unselect Frame
    Set Global Variable     ${Result Massage Full Text}
    Log    ${Result Massage Full Text}

    Run Keyword If    '${Result Massage Full Text}' == 'There were no results found.'
    ...    Run Keywords
    ...    Write Value To Excel Result    TC_013 AMM Steps :There were no results found PO.
    ...    AND    Fail    No Data found


