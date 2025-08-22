*** Settings ***
Library    SeleniumLibrary
Library    String
Library    OperatingSystem
Library    BuiltIn
Library    RPA.Excel.Files
Library    Collections


*** Keywords ***
Clear Excel Value File
    [Arguments]     ${SOURCE_FILE}      ${Row_Index}

    log   Clear Excel Value File = ${Row_Index}
    Write Value From Column Name       ${SOURCE_FILE}      ${Row_Index}       Date_Time               ${EMPTY}
    Write Value From Column Name       ${SOURCE_FILE}      ${Row_Index}       Run_Status              ${EMPTY}
    Write Value From Column Name       ${SOURCE_FILE}      ${Row_Index}       Reference_Site_Code     ${EMPTY}
    Write Value From Column Name       ${SOURCE_FILE}      ${Row_Index}       SSR_ID                  ${EMPTY}
    Write Value From Column Name       ${SOURCE_FILE}      ${Row_Index}       Pre-PR                  ${EMPTY}
    Write Value From Column Name       ${SOURCE_FILE}      ${Row_Index}       PO                      ${EMPTY}
    Write Value From Column Name       ${SOURCE_FILE}      ${Row_Index}       Result                  ${EMPTY}

Write Value From Column Name
    [Arguments]    ${SOURCE_FILE}    ${ROW}    ${HEADER}    ${VALUE}
    Open Workbook    ${SOURCE_FILE}
    log    Write Value From Column Name = ${ROW}
    ${rows}=         Read Worksheet As Table    header=False
    # Log              Rows: ${rows}
    ${headers}=      Set Variable    ${rows}[0]
    # Log              Headers: ${headers}
    ${col_index}=    Write Cell Value    ${headers}    ${HEADER}    ${ROW}    ${VALUE}
    Log              Column index of ${HEADER} is ${col_index}
    Save Workbook
    Close Workbook

Write Value From Column Name At Row 3
    [Arguments]    ${SOURCE_FILE}    ${ROW}    ${HEADER}    ${VALUE}
    Log    Write Value From Column Name At Row 3 = ${ROW} 
    Open Workbook    ${SOURCE_FILE}
    ${rows}=         Read Worksheet As Table    header=False    start=2
    # Log              Rows: ${rows}
    ${headers}=      Set Variable    ${rows}[0]
    # Log              Headers: ${headers}
    ${col_index}=    Write Cell Value    ${headers}    ${HEADER}    ${ROW}    ${VALUE}
    Log              Column index of ${HEADER} is ${col_index}
    Save Workbook
    Close Workbook

Write Cell Value
    [Arguments]     ${headers}   ${HEADER_NAME}     ${ROW}    ${VALUE}
    log    Row Write Cell Value = ${ROW}
    ${col_index}=    Get Index From List    ${headers}    ${HEADER_NAME}
    ${col_number}=   Evaluate    ${col_index} + 1
    Set Cell Value   row=${ROW}    column=${col_number}    value=${VALUE}    

Gennerate Reference Site Code File
    [Arguments]     ${DESTINATION_FILE}         ${Row_Index}
    ${current_datetime}=    Get Current Date    result_format=%Y%m%d%H%M
    Length Should Be    ${current_datetime}    12
    ${Reference Site Code}=    Catenate    SEPARATOR=    BSIF_    ${current_datetime}
    Set Global Variable         ${Reference Site Code}
    Log    ${Reference Site Code}
    Write Value From Column Name       ${DESTINATION_FILE}      ${Row_Index}       Reference Site Code               ${Reference Site Code}

Write Value To Excel File
    [Arguments]     ${DESTINATION_FILE}
    Open Workbook    ${DESTINATION_FILE}
    Set Cell Value    row=3    column=4    value=${Reference Site Code Value}
    Save Workbook
    Close Workbook
    
Write Value To Excel Status File
    [Arguments]      ${SOURCE_FILE}       ${Step}
    Open Workbook    ${SOURCE_FILE}
    Set Cell Value    row=2    column=8    value=${Step}
    Save Workbook
    Close Workbook

Write Value To Excel Result File
    [Arguments]        ${SOURCE_FILE}     ${Step}
    Open Workbook    ${SOURCE_FILE} 
    Set Cell Value    row=2    column=13    value=${Step}
    Save Workbook
    Close Workbook

Write Value Running Date File
    [Arguments]      ${SOURCE_FILE}         ${Row_index}    
    ${current_datetime}=    Get Current Date    result_format=%Y-%m-%d_%H:%M
    Set Test Variable       ${current_datetime}
    Write Value From Column Name            ${SOURCE_FILE}      ${Row_index}       Date_Time              ${current_datetime}       

Write Value Reference Site Code File
    [Arguments]     ${SOURCE_FILE}
    Open Workbook    ${SOURCE_FILE}
    Set Cell Value    row=2    column=9    value=${Reference Site Code Value}
    Save Workbook
    Close Workbook

Write Value SSD ID File
    [Arguments]      ${SOURCE_FILE}       ${SSR ID}
    Open Workbook    ${SOURCE_FILE}
    Set Cell Value    row=2    column=10    value=${SSR ID}
    Save Workbook
    Close Workbook

Write Value Pre PR File
    [Arguments]      ${SOURCE_FILE}       ${Pre Pr}      
    Open Workbook    ${SOURCE_FILE}
    Set Cell Value    row=2    column=11    value=${Pre Pr}
    Save Workbook
    Close Workbook

Write Value PO File
    [Arguments]      ${SOURCE_FILE}       ${PO n}        
    Open Workbook    ${SOURCE_FILE}
    Set Cell Value    row=2    column=12    value=${PO n}
    Save Workbook
    Close Workbook

Read Data From Excel File    
    [Arguments]     ${SOURCE_FILE}
    Open Workbook    ${SOURCE_FILE}
    Set Cell Value    row=2    column=3    value=${current_datetime}
    Save Workbook
    Close Workbook

Get Column Values By Name File
    [Arguments]      ${SOURCE_FILE}     ${column_name}
    Open Workbook    ${SOURCE_FILE}
    ${rows}=    Read Worksheet As Table    header=True
    ${values}=    Create List
    FOR    ${row}    IN    @{rows}
        ${value}=    Get From Dictionary    ${row}    ${column_name}
        Append To List    ${values}    ${value}
    END
    Close Workbook
    [Return]    ${values}