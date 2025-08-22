*** Settings ***
Library    SeleniumLibrary
Library    BuiltIn

*** Keywords ***
Reference Site Code
    ${Reference Site Code}=    Get Text    xpath=${Reference Site Code result}
    ${Reference Site Code value}=    Set Variable    ${Reference Site Code}
    [Return]     ${Reference Site Code value}


Routing Submitted Result Text
    Wait Until Page Contains         บันทึกข้อมูลเรียบร้อย
    # Capture Page Screenshot    ${Picture Path Folder}/TS007_FAT_Submitted_Successful.png
    ${Routing Submitted Result Massage}=    Get Text    xpath=${Routing Submitted Massage} 
    ${RSR Array Massage}=  Split String    ${Routing Submitted Result Massage}     
    ${RSR Result}=  Strip String    ${RSR Array Massage[0]}

    Set Global Variable     ${RSR Result}
    Run Keyword If    '${RSR Result}' != 'บันทึกข้อมูลเรียบร้อย'      Fail

    ${SSR ID Array Massage}=   Split String    ${Routing Submitted Result Massage}     :
    ${SSR ID}=  Strip String    ${SSR ID Array Massage[1]}
    Set Global Variable    ${SSR ID}
    [Return]        ${SSR ID}

Result Massage Data recorded
    [Arguments]       ${Target Xpath}  
    # Wait Until Element Is Visible    xpath=${Target Xpath}      timeout=35s
    Wait Until Page Contains         บันทึกข้อมูลเรียบร้อย            timeout=90s
    # Capture Page Screenshot    ${Picture Path Folder}/TS007_FAT_Submitted_Successful.png
    ${Result Massage Full Text}=    Get Text    xpath=${Target Xpath} 
    ${Array Massage}=  Split String    ${Result Massage Full Text}     
    ${Data recorded}=  Strip String    ${Array Massage[0]}

    Set Global Variable     ${Data recorded}
    Run Keyword If    '${Data recorded}' != 'บันทึกข้อมูลเรียบร้อย'      Fail

    ${SSR ID Massage}=   Split String    ${Result Massage Full Text}     :
    ${SSR ID}=  Strip String    ${SSR ID Massage[1]}
    Set Global Variable    ${SSR ID}
    [Return]        ${SSR ID}

DD Approved Confirm Route Massage
    [Arguments]       ${Target Xpath}
    Wait Until Page Contains         Confirm Route Name TH
    # Capture Page Screenshot    ${Picture Path Folder}/TS007_FAT_Submitted_Successful.png
    ${Result Massage Full Text}=    Get Text    xpath=${Target Xpath} 

    Set Global Variable     ${Result Massage Full Text}
    [Return]       ${Result Massage Full Text}

Page Should Contains
    [Arguments]      ${Text}
    Wait Until Page Contains     ${Text}       timeout=10s