*** Settings ***
Library    SeleniumLibrary
# Library    String
# Library    OperatingSystem
# Library    BuiltIn

*** Keywords ***
Check Result Massage
    [Arguments]      ${Check Step Flow}      ${Picture Name}       ${Result Massage Text}
    Wait Until Element Is Visible    xpath=${Check Step Flow}      timeout=10s
    sleep    2 seconds
    Element Should Contain            บันทึกข้อมูลเรียบร้อย
    Capture Page Screenshot    ${Picture Path Folder}/${Picture Name}.png

    ${Result Massage full_text}=    Get Text    xpath=${Result Massage Text}
    ${Array Result Massage full_text}=   Split String    ${Result Massage full_text}    :
    ${Fianal Massage}=  Strip String    ${Array Result Massage full_text[1]}

    Set Global Variable     ${Fianal Massage}
    [Return]        ${Fianal Massage}