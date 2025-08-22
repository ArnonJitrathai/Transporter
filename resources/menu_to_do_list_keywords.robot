*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
To Do List Serach SSR ID
    [Arguments]      ${SSR ID}
    Input Text       xpath=${Todo list Search SSR ID}      ${SSR ID}

To Do Click Serach SSR ID
    Click Element    xpath=${Todo list Menu Search Button Query}
    ${is_visible}=    Run Keyword And Return Status
    ...     Wait Until Element Is Visible    xpath=${Todo list Menu Select First Row span}     timeout=15s
    
    IF    '${is_visible}' == 'True'
        Execute Javascript    window.scrollTo(0, document.body.scrollHeight)
    ELSE
        Click Element    xpath=${Todo list Menu Search Button Query}
        Wait Until Element Is Visible    xpath=${Todo list Menu Select First Row span}     timeout=15s
        Execute Javascript    window.scrollTo(0, document.body.scrollHeight)
    END

    # Wait Until Element Is Visible    xpath=${TDL Search Results}      timeout=30s
    # ${Serach SSR ID item}=    Get Text    xpath=${TDL Search Not Found}
    # Set Test Variable    ${Serach SSR ID item}

To Do Search Result
    [Arguments]      ${Text}
    Click Element    xpath=${Todo list Menu Select First Row span}
    Wait Until Page Contains     ${Text}       timeout=10s

Selected SSR ID
    Click Element    xpath=${Todo list Menu Select First Row span}

