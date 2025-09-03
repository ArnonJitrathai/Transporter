*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
BOQ & Document Select Sub Project
    [Arguments]     ${Sub Project}
    Execute Javascript    window.scrollTo(0, 200)
    Click Element    xpath=${BOQ And Document Select Sub Project}
    Click Element    xpath=//option[@value="${Sub Project}"]
    sleep    0.5 seconds

BOQ & Document Search Standard Price
    [Arguments]     ${Description}
    Click Element    xpath=${BOQ And Document Search}
    Wait Until Element Is Visible    xpath=${BOQ And Document Standard Price}

    ${split_data Description}=    Split String    ${Description}    |
    FOR    ${item}    IN    @{split_data Description}
        FOR    ${INDEX}    IN RANGE    1    20
            Log    item >>${item}
            ${XPATH}=    Set Variable    //fieldset/span/span/div[2]/table/tbody/tr[${INDEX}]/td[6]
            ${ELEMENT_EXISTS}=    Run Keyword And Return Status    Element Should Contain    xpath=${XPATH}    ${item}
            Run Keyword If    '${ELEMENT_EXISTS}' == 'True'    Log    พบข้อความที่ต้องการในแถวที่ ${INDEX}

            IF    '${ELEMENT_EXISTS}' == 'True'
                Click Element    xpath=//fieldset/span/span/div[2]/table/tbody/tr[${INDEX}]/td[1]
                Exit For Loop
            ELSE
                Log     Cell is not match. Next.
            END
        END
    END

    Click Element    xpath=${BOQ And Document Confirm Standard Price}
    Wait Until Element Is Visible    xpath=${BOQ And Document Search Table}      timeout=15s
    
BOQ & Document Standard Price
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
                    Click Element    xpath=//option[normalize-space(text())='${itemAAG}']
                END
                Exit For Loop
            ELSE
                Log    ไม่พบในแถว ${INDEX} ลองแถวถัดไป
            END
        END
    END


    sleep    0.5 seconds
    ${Picture Folder path}=     Normalize Path      ${Picture Folder}/BOQ_Document.png
    Capture Page Screenshot     ${Picture Folder path}
    

    # ${split_data Description}=    Split String    ${Description}    |
    # ${INDEX Description}=    Evaluate    1
    # Set Global Variable    ${INDEX Description}
    # FOR    ${item}    IN    @{split_data Description}
    #     FOR    ${INDEX}    IN RANGE    1    20
    #         Log    item >>${item}
    #         ${XPATH}=    Set Variable    //fieldset/table/tbody/tr[6]/td/div/div/table/tbody/tr[${INDEX}]/td[8]
    #         ${ELEMENT_EXISTS}=    Run Keyword And Return Status    Element Should Contain    xpath=${XPATH}    ${item}
    #         Run Keyword If    '${ELEMENT_EXISTS}' == 'True'    Log    พบข้อความที่ต้องการในแถวที่ ${INDEX}
    #         IF    '${ELEMENT_EXISTS}' == 'True'
    #             ${INDEX Description}=    Set Variable    ${INDEX}
    #             Set Global Variable    ${INDEX Description}
    #             ${split_data Vendor QTY}=    Split String    ${Vendor QTY}    |
    #             FOR    ${itemQTY}    IN    @{split_data Vendor QTY}
    #                 Log    itemQTY >>${itemQTY}
    #             END
    #             Exit For Loop
    #         ELSE
    #             Log     Cell is not match. Next.
    #         END
    #     END
    # END


    Execute Javascript    window.scrollTo(0, 500)
    Click Element    xpath=${BOQ And Document Calculate}
    Wait Until Element Is Visible    xpath=${BOQ And Document Calculate Content}      timeout=15s
    # Scroll Element Into View         xpath=${BOQ And Document Calculate Content}
    # sleep    10 seconds


BOQ & Document Add Picture
    [Arguments]     ${Picture}
    Execute Javascript    window.scrollTo(0, 900)
    Choose File      xpath=${BOQ And Document Add Picture}      ${Picture}
    sleep    0.5 seconds
    Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)
    Wait Until Element Is Visible    xpath=${BOQ And Document Download}      timeout=15s

    # ${Picture Folder path}=     Normalize Path      ${Picture Folder}/BOQ_Document.png
    # Capture Page Screenshot     ${Picture Folder path}

BOQ & Document Save
    Execute Javascript    window.scrollTo(0, 1000)
    sleep    1 seconds
    ${Picture Folder path}=     Normalize Path      ${Picture Folder}/BOQ_Document.png
    Capture Page Screenshot     ${Picture Folder path}

    Execute Javascript    window.scrollTo(0, 1200)
    sleep    1 seconds
    Click Element    xpath=${BOQ And Document Save}

BOQ Verified 
    [Arguments]     ${Case}
    Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)
    Click Element    xpath=${BOQ Verified Pass Fail}
    Click Element    xpath=${Case}
    sleep    0.5 seconds

BOQ Verified Save
    sleep    0.5 seconds
    ${Picture Folder path}=     Normalize Path      ${Picture Folder}/BOQ_Verified.png
    Capture Page Screenshot     ${Picture Folder path}

    Click Element    xpath=${BOQ Verified Save}


BOQ Approved
    [Arguments]     ${Case}
    Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)
    Click Element    xpath=${BOQ Approved Approved Rejected}
    sleep    0.5 seconds
    Click Element    xpath=${Case}

BOQ Approved Save
    sleep    0.5 seconds
    Click Element    xpath=${BOQ Approved Save}