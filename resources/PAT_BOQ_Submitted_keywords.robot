*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
PAT BOQ Submitted Sub Project
    [Arguments]     ${Sub Project}
    Execute Javascript    window.scrollTo(0, 200)
    sleep    0.5 seconds
    Click Element    xpath=${PAT BOQ Submitted Sub Project Select}
    Click Element    xpath=//option[text()="${Sub Project}"]
    sleep    0.5 seconds

PAT BOQ Submitted Sub Project Click Serach
    Click Element    xpath=${PAT BOQ Submitted Sub Project Serach}
    Wait Until Page Contains    Search Standard Price      timeout=15s

PAT BOQ Submitted Standard Price
    [Arguments]     ${Description}
    Wait Until Element Is Visible    xpath=${PAT BOQ Submitted Standard Price Content}
    Click Element    xpath=${PAT BOQ Submitted Standard Price List}
    Click Element    xpath=//option[@value="50"]
    sleep    0.5 seconds
    ${split_data Description}=    Split String    ${Description}    |
    FOR    ${item}    IN    @{split_data Description}
        FOR    ${INDEX}    IN RANGE    1    20
            Log    item >>${item}
            ${XPATH}=    Set Variable    //fieldset/span/span/div[2]/table/tbody/tr[${INDEX}]/td[6]
            ${ELEMENT_EXISTS}=    Run Keyword And Return Status    Element Should Contain    xpath=${XPATH}    ${item}
            Run Keyword If    '${ELEMENT_EXISTS}' == 'True'    Log    พบข้อความที่ต้องการในแถวที่ ${INDEX}

            IF    '${ELEMENT_EXISTS}' == 'True'
                Click Element    xpath=//fieldset/span/span/div[2]/table/tbody/tr[${INDEX}]/td[1]
                sleep    0.5 seconds
                Exit For Loop
            ELSE
                Log     Cell is not match. Next.
            END
        END
    END

PAT BOQ Submitted Confirm Standard Price
    Click Element    xpath=${PAT BOQ Submitted Standard Price Confirm}     
    sleep    0.5 seconds


PAT BOQ Submitted Input Vendor QTY
    [Arguments]   ${Description}  ${Vendor QTY}      ${Average Article Group}

    ${split_data Description}=    Split String    ${Description}    |
    ${split_data Vendor QTY}=     Split String    ${Vendor QTY}     |
    ${split_data Average Article Group}=    Split String    ${Average Article Group}    |
    ${length}=    Get Length    ${split_data Description}

    FOR    ${INDEX_LOOP}    IN RANGE    0    ${length}
        ${item}=        Set Variable    ${split_data Description}[${INDEX_LOOP}]
        ${itemQTY}=     Set Variable    ${split_data Vendor QTY}[${INDEX_LOOP}]
        ${itemAAG}=     Set Variable    ${split_data Average Article Group}[${INDEX_LOOP}]

        Log    กำลังตรวจหา: ${item} พร้อม QTY: ${itemQTY} พร้อม AAD: ${itemAAG}

        FOR    ${INDEX}    IN RANGE    1    20
            ${XPATH}=    Set Variable    //fieldset/table/tbody/tr[6]/td/div/div/table/tbody/tr[${INDEX}]/td[8]
            ${ELEMENT_EXISTS}=    Run Keyword And Return Status    Element Should Contain    xpath=${XPATH}    ${item}
            Run Keyword If    '${ELEMENT_EXISTS}' == 'True'    Log    พบข้อความในแถว ${INDEX}

            IF    '${ELEMENT_EXISTS}' == 'True'
                ${INPUT_XPATH}=    Set Variable    //fieldset/table/tbody/tr[6]/td/div/div/table/tbody/tr[${INDEX}]/td[17]/input
                Input Text    xpath=${INPUT_XPATH}    ${itemQTY}
                
                IF  '${itemAAG}' == 'No data'
                    Log    ไม่พบในแถว ${INDEX} ลองแถวถัดไป
                ELSE
                    Click Element    xpath=//fieldset/table/tbody/tr[6]/td/div/div/table/tbody/tr[${INDEX}]/td[18]/select
                    sleep    0.5 seconds
                    # Click Element    xpath=//option[normalize-space(text())='${itemAAG}']
                    Click Element    xpath=//tr[${INDEX}]/td[18]//select/option[normalize-space(text())='${itemAAG}']
                END
                Exit For Loop
            ELSE
                Log    ไม่พบในแถว ${INDEX} ลองแถวถัดไป
            END
        END
    END

PAT BOQ Submitted Average Article Group
    [Arguments]     ${Article Group}
    Click Element    xpath=${Average Article Group Click}
    Click Element    xpath=${Article Group}

PAT BOQ Submitted Average Calculate
    Execute Javascript    window.scrollTo(0, 500)
    Click Element    xpath=${PAT/BOQ Submitted Click Calculate} 
    Wait Until Element Is Visible    xpath=${PAT/BOQ Submitted Edit}      timeout=15s
    sleep    0.5 seconds

PAT BOQ Submitted Add Picture
    [Arguments]     ${Picture}
    Execute Javascript    window.scrollTo(0, 700)
    Choose File      xpath=${PAT/BOQ Submitted Add Picture}    ${Picture}
    Wait Until Element Is Visible    xpath=${PAT/BOQ Submitted Download Picture}      timeout=15s
    
PAT BOQ Submitted Save
    sleep    0.5 seconds
    ${Picture Folder path}=     Normalize Path      ${Picture Folder}/PAT_BOQ_Submitted.png
    Capture Page Screenshot     ${Picture Folder path}

    Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)
    Click Element    xpath=${PAT/BOQ Submitted Save}
    Wait Until Element Is Visible    xpath=${PAT/BOQ Submitted Result Massage}      timeout=15s
    