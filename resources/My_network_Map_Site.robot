*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${START}        1
${END}          10

*** Keywords ***
My network Map Site Code
    [Arguments]     ${Site Name}
    Wait Until Element Is Visible    xpath=${Mynetwork Map Site Button}      timeout=15s
    sleep    1 seconds
    Click Element    xpath=${Mynetwork Map Site Button}

    FOR    ${INDEX}    IN RANGE    ${START}    ${END}
        ${current_xpath}=    Set Variable    //div[3]/div/app-data-table2/div/div[2]/table/tbody/tr[${INDEX}]/td[2]
        Run Keyword And Ignore Error    Wait Until Element Is Visible    xpath=${current_xpath}    3 seconds
        ${exists}=    Run Keyword And Return Status    Element Should Be Visible    xpath=${current_xpath}
        Run Keyword If    not ${exists}    Exit For Loop
        ${text}=    Get Text    xpath=${current_xpath}
        Log    Checking row ${INDEX}: ${text}
        Run Keyword If    '${text}' == '${Site Name}'    Run Keywords
        ...    Log    Found "${Site Name}" at row ${INDEX}
        ...    AND    Click Button In Row    ${INDEX}
        ...    AND    Exit For Loop
    END

Click Button In Row
    [Arguments]    ${row_index}
    ${button_xpath}=    Set Variable    //tr[${row_index}]/td[1]/subproject-vendor-map-site-action/td/input[1]
    Wait Until Element Is Visible    xpath=${button_xpath}    5 seconds
    Click Element    xpath=${button_xpath}

Map Proforma
    [Arguments]     ${Proforma}
    Click Element    xpath=${Mynetwork Map Proforma Button}
    Wait Until Element Is Visible    xpath=${Mynetwork Map Proforma Text}      timeout=15s
    
    FOR    ${INDEX}    IN RANGE    ${START}    ${END}
        ${current_xpath}=    Set Variable    //app-data-table2/div/div[2]/table/tbody/tr[${INDEX}]/td[1]/span
        Run Keyword And Ignore Error    Wait Until Element Is Visible    xpath=${current_xpath}    3 seconds
        ${exists}=    Run Keyword And Return Status    Element Should Be Visible    xpath=${current_xpath}
        Run Keyword If    not ${exists}    Exit For Loop
        ${text}=    Get Text    xpath=${current_xpath}
        Log    Checking row ${INDEX}: ${text}
        Run Keyword If    '${text}' == '${Proforma}'        Run Keywords
        ...    Click Element    xpath=//app-data-table2/div/div[2]/table/tbody/tr[${INDEX}]/td[1]/span
        ...    AND    Exit For Loop
    END

Map Proculator 
    Wait Until Element Is Visible    xpath=${Mynetwork Map Proculator Button}      timeout=15s
    Click Element    xpath=${Mynetwork Map Proculator Button}

    Wait Until Element Is Visible    xpath=${Mynetwork Map Proculator Workflow Type}      timeout=15s
    Click Element    xpath=${Mynetwork Map Proculator Workflow Type}
    
Map Site Result
    Wait Until Element Is Visible    xpath=${Mynetwork Map Site Text}       timeout=15s
    
    ${Picture Folder path}=     Normalize Path      ${Picture Folder}/Map_Site_Result.png
    Capture Page Screenshot     ${Picture Folder path}