*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
AMM Test SGAdd New
    Click Element    xpath=${Test SGAdd New} 

AMM Mynetwork Gateway Run Batch
    sleep    5 seconds
    ${all_windows}=    Get Window Handles
    ${count}=    Get Length    ${all_windows}
    # Log    จำนวนหน้าต่างที่เปิดอยู่ตอนนี้: ${count}
    Switch Window    title=Interface Gateway

    ${title}=    Get Title
    Log    ตอนนี้อยู่ที่หน้าต่างชื่อ: ${title}
    Click Element    xpath=${AMM Web Service Batch}

AMM Run BATCH_CREATE_GR_TO_TPT
    Select Frame    id=mainFrame
    Wait Until Element Is Visible    xpath=${AMM Run BATCH_CREATE_GR_TO_TPT}      timeout=30s
    Click Element    xpath=${AMM Run BATCH_CREATE_GR_TO_TPT}
    sleep    1 seconds
    Handle Alert    ACCEPT
    sleep    3 seconds
    Wait Until Element Is Visible    xpath=${AMM Text Web Service Batch Tracking}      timeout=30s
    Unselect Frame