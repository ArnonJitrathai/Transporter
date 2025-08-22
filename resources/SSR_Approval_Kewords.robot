*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
SSR Approval Approved Or Rejected
    [Arguments]     ${Case}
    Execute Javascript    window.scrollTo(0, 200)
    Click Element    xpath=${SSR Approved Case Select}
    sleep    0.5 seconds
    Click Element    xpath=${Case}

SSR Approval Job Type
    [Arguments]     ${Job Type}
    sleep    1 seconds
    Click Element    xpath=${SSR Approved Job Type Select}
    sleep    0.5 seconds
    Click Element    xpath=${Job Type}

SSR Approval Click Save
    sleep    0.5 seconds
    ${Picture Folder path}=     Normalize Path      ${Picture Folder}/SSR_Approval.png
    Capture Page Screenshot     ${Picture Folder path}

    Click Element    xpath=${SSR Approval Save Button}
    Wait Until Element Is Visible    xpath=${SSR Approval Result Massage}      timeout=30s
