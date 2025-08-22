*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
SSR Submitted Add Picture
    [Arguments]         ${Picture}
    Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)
    Choose File      xpath=${SSR Submitted Add Picture}    ${Picture}
    Click Element    xpath=${SSR Submitted Upload Picture}
    #cap or not
    Wait Until Element Is Visible    xpath=${SSR Submitted Download Picture}      timeout=15s

SSR Submitted Save
    sleep    0.5 seconds
    ${Picture Folder path}=     Normalize Path      ${Picture Folder}/SSR_Submitted.png
    Capture Page Screenshot     ${Picture Folder path}

    Click Element    xpath=${SSR Submitted Save}
    sleep    1 seconds