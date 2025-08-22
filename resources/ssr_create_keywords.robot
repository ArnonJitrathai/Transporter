*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
SSR Search Site Workflow Type
    [Arguments]     ${workflow type}
    Click Element    xpath=${SSR Click Workflow Type}  
    Click Element    xpath=${workflow type}
    sleep    0.5 seconds

SSR Search Reference Site Code
    [Arguments]     ${Reference Site Code}
    Input Text       xpath=${SSR Reference Site Code}      ${Reference Site Code}

SSR Click Search Reference Site Code
    Click Element    xpath=${SSR Reference Site Code Search Button}
    sleep    0.5 seconds
    Wait Until Element Is Visible    xpath=${Select SSR Reference Site Code First Row}      timeout=15s
    

SSR Select Reference Site Code
    Execute JavaScript    window.scrollTo(0, document.body.scrollHeight) 
    Click Element    xpath=${Select SSR Reference Site Code First Row}
    # Wait Until Page Contains         SSR > SSR Routing Submitted New      timeout=15s
  