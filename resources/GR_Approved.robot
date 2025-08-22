*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
GR Approved
    Wait Until Page Contains         SSR > GR Approved
    Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)
    sleep    1 seconds
    Click Element    xpath=${GR Approved Select} 

GR Approved Case
    Click Element    xpath=${GR Approved Approval Case}
    sleep    0.5 seconds

GR Approved Save Case
    Click Element    xpath=${GR Approved Save Button}