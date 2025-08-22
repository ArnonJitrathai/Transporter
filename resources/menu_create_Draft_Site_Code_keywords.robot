*** Settings ***
Library    SeleniumLibrary
# Library    String
# Library    OperatingSystem
Library    BuiltIn

*** Keywords ***
Select SSR Workflow Type
    [Arguments]    ${Select SSR Workflow Type}
    Click Element    xpath=${SSR Workflow Type}
    sleep    1 seconds
    Click Element    xpath=${Select SSR Workflow Type}
    ${Reference Site Code Route Chain ID}=    Turnkey Import Site File
    Input Text       xpath=${SSR Reference Site Code}      ${Reference Site Code Route Chain ID}

    # Input Text       xpath=${SSR Reference Site Code}      ${Reference Site Code Route Chain ID}
    # Input Text       xpath=${SSR Reference Site Code}      ${SSR Reference Site Code By Pass}
    Click Element    xpath=${Todo list Menu Search Button}
    Wait Until Element Is Visible    xpath=${Todo list Menu Select First Row}     timeout=10s
    Execute Javascript    window.scrollTo(0, document.body.scrollHeight)
    sleep    1 seconds
    Capture Page Screenshot    ${Picture Path Folder}/TS003_SSR_Create_Search.png
    Click Element    xpath=${Todo list Menu Select First Row}

SSR Submitted New Add Pic
    [Arguments]    ${Import Site File Path Picture}
    sleep    1 seconds
    Choose File      xpath=${SSR ADD Pic Button}     ${Import Site File Path Picture}
    sleep    1 seconds
    Capture Page Screenshot    ${Picture Path Folder}/TS003_SSR_Submitted.png
    Click Element    xpath=${SSR Upload Pic Button}
    Execute Javascript    window.scrollTo(0, document.body.scrollHeight)
    sleep    1 seconds
    Click Element    xpath=${SSR Save Pic}

SSR Check Result Massage Text
    Wait Until Element Is Visible    xpath=${SSR Check Result Massage Text}      timeout=10s
    sleep    2 seconds
    Element Should Contain           xpath=${SSR Result Massage Text}    บันทึกข้อมูลเรียบร้อย
    Capture Page Screenshot    ${Picture Path Folder}/TS003_SSR_Submit_Successful.png
    ${SSR Result Massage full_text}=    Get Text    xpath=${SSR Result Massage Text}
    ${SSR Array Result Massage full_text}=   Split String    ${SSR Result Massage full_text}    :
    ${SSR Approval ID Fianal Massage}=  Strip String    ${SSR Array Result Massage full_text[1]}
    Set Global Variable     ${SSR Approval ID Fianal Massage}
    [Return]    ${SSR Approval ID Fianal Massage}
    # Log To Console    เลขที่ดึงออกมา: ${SSR Fianal Massage}
