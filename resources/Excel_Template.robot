*** Settings ***
Library    SeleniumLibrary
Library    String
Library    OperatingSystem
Library    BuiltIn
Library    RPA.Excel.Files
Library    Collections



*** Keywords ***
Clear Excel Value
    Open Workbook    ${SOURCE_FILE}
    Set Cell Value    row=2    column=14    value=${EMPTY}
    Set Cell Value    row=2    column=15    value=${EMPTY}
    Set Cell Value    row=2    column=16    value=${EMPTY}
    Set Cell Value    row=2    column=17    value=${EMPTY}
    Set Cell Value    row=2    column=18    value=${EMPTY}
    Set Cell Value    row=2    column=19    value=${EMPTY}
    Set Cell Value    row=2    column=20    value=${EMPTY}
    Save Workbook
    Close Workbook

Gennerate Reference Site Code 
    ${current_datetime}=    Get Current Date    result_format=%Y%m%d%H%M
    Length Should Be    ${current_datetime}    12
    ${Reference Site Code Value}=    Catenate    SEPARATOR=    BSIF_    ${current_datetime}
    # log   ${Reference Site Code}
    Set Global Variable         ${Reference Site Code Value}
    Log    ${Reference Site Code Value}
    
Write Value To Excel
    Open Workbook    ${DESTINATION_FILE}
    Set Cell Value    row=3    column=4    value=${Reference Site Code Value}
    Save Workbook
    Close Workbook

Write Value To Excel Status
    [Arguments]        ${Step}
    Open Workbook    ${SOURCE_FILE}
    Set Cell Value    row=2    column=15    value=${Step}
    Save Workbook
    Close Workbook

Write Value To Excel Result
    [Arguments]        ${Step}
    Open Workbook    ${SOURCE_FILE}
    Set Cell Value    row=2    column=20    value=${Step}
    Save Workbook
    Close Workbook

Write Value To Excel Result Phase 2
    [Arguments]        ${Step}
    Open Workbook    ${SOURCE_FILE}
    Set Cell Value    row=2    column=21    value=${Step}
    Save Workbook
    Close Workbook

# Write Value Running Date
#     ${current_datetime}=    Get Current Date    result_format=%Y-%m-%d %H:%M
#     Open Workbook    ${SOURCE_FILE}
#     Set Cell Value    row=2    column=14    value=${current_datetime}
#     Save Workbook
#     Close Workbook

Write Value Running Date
    [Arguments]         ${current_datetime}
    # ${current_datetime}=    Get Current Date    result_format=%Y-%m-%d %H:%M
    Open Workbook    ${SOURCE_FILE}
    Set Cell Value    row=2    column=14    value=${current_datetime}
    Save Workbook
    Close Workbook

Write Value Reference Site Code
    Open Workbook    ${SOURCE_FILE}
    Set Cell Value    row=2    column=16    value=${Reference Site Code Value}
    Save Workbook
    Close Workbook

Write Value SSD ID
    [Arguments]      ${SSR ID}
    Open Workbook    ${SOURCE_FILE}
    Set Cell Value    row=2    column=17    value=${SSR ID}
    Save Workbook
    Close Workbook

Write Value Pre PR
    [Arguments]      ${Pre Pr}
    Open Workbook    ${SOURCE_FILE}
    Set Cell Value    row=2    column=18    value=${Pre Pr}
    Save Workbook
    Close Workbook

Write Value PO
    [Arguments]      ${PO n}
    Open Workbook    ${SOURCE_FILE}
    Set Cell Value    row=2    column=19    value=${PO n}
    Save Workbook
    Close Workbook

Read Data From Excel
    Open Workbook    ${SOURCE_FILE}
    Set Cell Value    row=2    column=3    value=${current_datetime}
    Save Workbook
    Close Workbook

Get Column Values By Name
    [Arguments]    ${column_name}
    Open Workbook    ${SOURCE_FILE}
    ${rows}=    Read Worksheet As Table    header=True
    ${values}=    Create List
    FOR    ${row}    IN    @{rows}
        ${value}=    Get From Dictionary    ${row}    ${column_name}
        Append To List    ${values}    ${value}
    END
    Close Workbook
    [Return]    ${values}

Set Value By Column Name
    [Arguments]     ${COLUMN_NAME}      ${VALUE}
    Open Workbook    ${SOURCE_FILE}
    ${header_row}=    Read Cells    A1    Z1
    ${col_index}=     Get Index From List    ${header_row}    ${COLUMN_NAME}
    ${col_number}=    Evaluate    ${col_index} + 1
    Set Cell Value    row=2    column=${col_number}    value=${VALUE}
    Save Workbook
    Close Workbook


Set Cell Value By Column Name
    [Arguments]    ${row}    ${column_name}    ${value}
    ${table}=    Read Worksheet As Table    header=True
    Log    Table: ${table}
    # ตรวจสอบว่า table[0] เป็น dict หรือ list
    ${first_row}=    Get From List    ${table}    0
    Log    First row: ${first_row}    Type: ${type(${first_row})}

    # ถ้า first_row เป็น dict ให้ทำต่อ แต่ถ้าไม่ใช่ ต้องแก้ไข
    Run Keyword If    '${type(${first_row})}' == "<class 'dict'>"    Set Variable    ${headers}=    Get Dictionary Keys    ${first_row}
    ...    ELSE    Fail    First row is not a dictionary. Check if 'header=True' parameter works correctly.

    Should Contain    ${headers}    ${column_name}    Header '${column_name}' not found!
    ${col_index}=    Get Index From List    ${headers}    ${column_name}
    ${col_number}=    Evaluate    ${col_index} + 1
    Set Cell Value    row=${row}    column=${col_number}    value=${value}

Set Value Using Column Name
    Open Workbook    ${SOURCE_FILE}
    Set Cell Value By Column Name    row=2    column_name=Result    value=12345
    Save Workbook
    Close Workbook

Move File Results
    [Arguments]         ${OUTPUT_DIR}
    # Open Workbook    ${DESTINATION_FILE}
    # ${current_date}=    Get Column Values By Name    Date Running

    # ${current_date TEMP1} =    Get From List    ${current_date}    0
    # ${current_date TEMP2}=  Split String    ${current_date TEMP1}       ${SPACE}
    # ${current_date_name}=  Strip String    ${current_date TEMP2[0]}
    # Set Global Variable    ${current_date_name}
    # log      ${current_date_name}

    # ${current_time}=    Get Column Values By Name    Date Running 
    # ${current_time TEMP1} =    Get From List    ${current_time}    0
    # ${current_time TEMP2}=  Split String    ${current_time TEMP1}       ${SPACE}
    # ${current_time_name TEMP1}=  Strip String    ${current_time TEMP2[1]}

    # ${time} =    Set Variable    ${current_time_name TEMP1}
    # ${current_time_name} =    Replace String    ${time}    :    ${EMPTY}
    # Set Global Variable    ${current_time_name}
    # log      ${current_time_name}

    # Close Workbook
    # ${Path Folder Temp1}=    Catenate    SEPARATOR=     ${CURDIR}\\..\\tests\\TYPE_Non-Turnkey\\FBB OSP for TPT III\\Execution result\\    ${current_date_name}
    # ${Path Folder Temp1}=    Normalize Path    ${Path Folder Temp1}

    # ${Path Folder Temp2}=    Catenate    SEPARATOR=     ${Path Folder Temp1}\\         ${current_time_name}
    # ${Path Folder Temp2}=    Normalize Path    ${Path Folder Temp2}
    # log      ${Path Folder Temp2}

    # ${DESTINATION}=    Catenate    SEPARATOR=     ${Path Folder Temp2}\\         Phase1
    # ${DESTINATION}=    Normalize Path    ${DESTINATION}
    # Set Global Variable     ${DESTINATION}
    # log      ${DESTINATION}

    ${Path Folder Source}=    Normalize Path    ${CURDIR}\\..\\tests\\TYPE_Non-Turnkey\\FBB OSP for TPT III\\Results\\Capture Page Screenshot
    Set Global Variable     ${Path Folder Source}

    Move Directory    ${Path Folder Source}    ${OUTPUT_DIR}