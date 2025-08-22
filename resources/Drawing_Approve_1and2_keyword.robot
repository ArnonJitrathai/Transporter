*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Drawing Approved 1 Case
    [Arguments]      ${Case}
    Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)
    Click Element    xpath=${Drawing Approved 1 Approved Rejected}
    sleep    0.5 seconds
    Click Element    xpath=${Case}
    sleep    0.5 seconds

Drawing Approved 2 Case
    [Arguments]      ${Case}
    Click Element    xpath=${Drawing Approved 2 Approved Rejected}
    sleep    0.5 seconds
    Click Element    xpath=${Case}
    sleep    0.5 seconds

Drawing Approved Save
    sleep    0.5 seconds
    ${Picture Folder path}=     Normalize Path      ${Picture Folder}/Drawing_Approved.png
    Capture Page Screenshot     ${Picture Folder path}

    Click Element    xpath=${Drawing Approved Save}
    sleep    0.5 seconds