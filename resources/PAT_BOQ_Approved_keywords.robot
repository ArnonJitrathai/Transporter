*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
PAT/BOQ Approved Select Approved Rejected
    [Arguments]     ${Case}
    Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)
    Click Element    xpath=${BOQ Approved Click Approved Rejected}
    Click Element    xpath=${Case}

PAT/BOQ Approved Save

    sleep    0.5 seconds
    ${Picture Folder path}=     Normalize Path      ${Picture Folder}/PAT_BOQ_Approve.png
    Capture Page Screenshot     ${Picture Folder path}
    Click Element    xpath=${BOQ Approved Save}