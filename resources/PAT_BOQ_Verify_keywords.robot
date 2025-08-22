*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
PAT/BOQ Verify Pass And Fail
    [Arguments]     ${Result}
    Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)
    Click Element    xpath=${PAT BOQ Verify Click Pass Fail}
    Click Element    xpath=${Result}
    
    ${Picture Folder path}=     Normalize Path      ${Picture Folder}/PAT_BOQ_Verify.png
    Capture Page Screenshot     ${Picture Folder path}

PAT/BOQ Verify Save Case

    # Wait Until Element Is Visible    xpath=${PAT BOQ Verify Save}          timeout=15s
    sleep    1 seconds 
    ${Picture Folder path}=     Normalize Path      ${Picture Folder}/PAT_BOQ_Verify.png
    Capture Page Screenshot     ${Picture Folder path}

    Click Element    xpath=${PAT BOQ Verify Save}

    
