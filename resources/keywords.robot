*** Settings ***
Library    SeleniumLibrary
Library    String
Library    OperatingSystem
Library    BuiltIn

*** Keywords ***

Run In Headless Mode
    ${options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    Call Method    ${options}    add_argument    --headless
    Call Method    ${options}    add_argument    --disable-gpu
    Call Method    ${options}    add_argument    --window-size=1920,1080
    Create Webdriver    Chrome    options=${options}

Open Browser To Login Page
    Open Browser    ${URL}    ${BROWSER}
    # Go To    ${URL}
    Maximize Browser Window
    Set Selenium Timeout    10 seconds

#Your connection is not private Fix
Your connection is not private
    Click Button    id=details-button
    Set Selenium Timeout    3 seconds
    Click Link      id=proceed-link
    Set Selenium Timeout    3 seconds

#Login 
Input Username
    [Arguments]    ${username}
    Input Text    id=loginForm:username    ${username}

Input Password
    [Arguments]    ${password}
    Input Text    id=loginForm:password    ${password}

#Login User FBOQ/PAT/GR Submitted
Input FBOQ/PAT/GR Submitted Username
    [Arguments]    ${username}
    Input Text    id=loginForm:username    ${username}

Input FBOQ/PAT/GR Submitted Password
    [Arguments]    ${password}
    Input Text    id=loginForm:password    ${password}

Click Login
    Click Button    xpath=${LOGIN BUTTON}

#Log Out
Log Out Step
    Click Menu List
    # Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)
    Execute JavaScript    document.getElementById("iconheader:frmMenu:LogOut").click()
    sleep    1 seconds
    # Click Element    xpath=${Log Out Menu}
    Wait Until Page Contains    Login    10s    

#Check Page Title
Welcome Page Should Be Open
    Title Should Be    ${LOGIN TITLE}
    # Capture Page Screenshot    ${Picture Path Folder}/Login_Page.png

#Selecte Menu List
Click Menu List
    Click Element    xpath=${Menu List}

Select Menu Todo List
    #[Arguments]    ${SSR ID}
    Click Element    xpath=${Todo list Menu}
    sleep    1 seconds
    #Input Text       id=${SSR ID Input}      ${SSR ID}

Select Workflow Type 11
    Click Element    id=${Workflow Type}
    Click Element    xpath=${Select Workflow Type} 
    
To Do List Search Button
    Click Element    xpath=${Todo list Serach Button}
    sleep    1 seconds

Wait Until SSR ID Visible
    Wait Until Element Is Visible       xpath=//div[4]/table/tbody/tr/td/form/span/span/fieldset/span/div[2]/table/thead/tr/th[2]/div/span/span

Ok Button กรุณาระบุข้อมูล Workflow Type
    Click Element    xpath=${Search Clear Massage OK Button} 

To Do List Nothing Search Clear Button
    Click Element    xpath=${Todo list Clear Button}
    sleep    1 seconds

Select SSR ID old
    Click Element    xpath=${Select SSR ID}

Close Browser
    sleep    1 seconds
    close browser

#Non Turnkey EDS

Click Site Management
    # Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)
    Scroll Element Into View        xpath=${Log Out Menu}
    Wait Until Element Is Visible      xpath=${Site Management Menu}        10s
    Click Element    xpath=${Site Management Menu}
    Scroll Element Into View        xpath=${Log Out Menu}
    sleep    1 seconds

Click Create Draft Site Code
    Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)
    # Scroll Element Into View        xpath=${Log Out Menu}
    Click Element    xpath=${Create Draft Site Code Menu}
    sleep    1 seconds

Import Create Draft Site Code Button
    Click Element    xpath=${Import Create Draft Site Code}
    sleep    1 seconds

Click Search Proforma No
    Click Element    xpath=${Search Proforma No}
    sleep    1 seconds

Input Proforma No
    Input Text    xpath=${Proferma No Input}    ${Proferma No}
    Click Element    xpath=${Serach Button Proferma No}
    sleep    1 seconds
    Click Element    xpath=${First Proferma No Input}

Click Site Search Draft Of Site
    Click Element    xpath=${Search Proforma Draft Site Code}
    sleep    1 seconds

Click Serach Budget Check List
    Click Element    xpath=${Serach Budget Check List}
    sleep    2 seconds

    Click Element    xpath=${Purchase Cat Group}
    Click Element    xpath=${Select Purchase Cat Group}
    sleep    1 seconds

    Click Element    xpath=${Purchase Cat}
    Click Element    xpath=${Select Purchase Cat}
    sleep    1 seconds

    Click Element    xpath=${Action Type}
    Click Element    xpath=${Select Action Type}
    sleep    1 seconds

    Click Element    xpath=${System Type}
    Click Element    xpath=${Select System Type}
    sleep    1 seconds

    Click Element    xpath=${Service Code}
    Click Element    xpath=${Select Service Code}
    sleep    1 seconds

    Click Element    xpath=${Company Code}
    Click Element    xpath=${Select Company Code}
    sleep    1 seconds 
     
    Click Element    xpath=${Purchase Serach}
    sleep    1 seconds
    Click Element    xpath=${First Purchase Row 1 Select}


Click Search Procurator
    Click Element    xpath=${Click Search Procurator Button}
    sleep    1 seconds

    Click Element    xpath=${Workflow Type}
    Click Element    xpath=${Select Workflow Type}
    sleep    1 seconds

    Click Element    xpath=${SSR Type}
    Click Element    xpath=${Select SSR Type}
    sleep    1 seconds

    Click Element    xpath=${Region}
    Click Element    xpath=${Select Region}
    sleep    1 seconds

    Click Element    xpath=${Click Procurator Search}
    sleep    1 seconds

    Click Element    xpath=${First Procurator Row 1 Select}
    sleep    1 seconds 

Click Import Type New
    Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)
    sleep    2 seconds 
    Click Element    xpath=${Import Type}

Click Import Site File
    sleep    1 seconds
    Choose File      xpath=${Click Import Site File}    ${Import Site File Path}
    sleep    1 seconds
    Click Element    xpath=${Button Ubload} 
    sleep    1 seconds
    Wait Until Element Is Visible    xpath=${Import Site Information}    timeout=10s

#Turnkey Import Site
Click Turnkey Import Site Menu
    Click Element    xpath=${TK Turnkey Import Site Menu}
    sleep    1 seconds

Click Turnkey Import site
    Click Element    xpath=${TK Click Import Site}
    sleep    1 seconds

Turnkey Import Site Serch Project
    [Arguments]    ${TK Import Site Project Name}
    Click Element    xpath=
    Click Element    xpath=${TK Turnkey Import Site Serch Project}
    sleep    1 seconds
    Input Text       xpath=${TK Turnkey Import Site Project Name}      ${TK Import Site Project Name}
    Click Element    xpath=${TK Import Site Project Name Search}
    sleep    2 seconds
    Capture Page Screenshot    ${Picture Path Folder}/Import_Site _Serch_Project.png
    Click Element    xpath=${TK Select Import Site Project Name}
    Wait Until Element Is Visible    xpath=${TK Import Site File Text Check}    timeout=10s

Turnkey Import Site File
    [Arguments]    ${TK Import Site File Path}
    sleep    1 seconds
    Choose File      xpath=${Import Site File}    ${TK Import Site File Path}
    sleep    1 seconds
    Click Element    xpath=${TK Button Ubload} 
    sleep    1 seconds
    Wait Until Element Is Visible    xpath=${TK Reference Site Code}     timeout=10s
    Capture Page Screenshot    ${Picture Path Folder}/Reference_Site_Code.png
    ${Reference Site Code Route Chain ID}=     Get Text     xpath=${Reference Site Code Path}
    Set Global Variable     ${Reference Site Code Route Chain ID}
    Log To Console      Reference Site Code Route Chain ID: ${Reference Site Code Route Chain ID}
    
    
#SSR Create Step
Click SSR Create Menu
    Click Element    xpath=${SSR Create Menu}
    sleep    1 seconds


Select SSR Workflow Type
    [Arguments]    ${Select SSR Workflow Type}
    Click Element    xpath=${SSR Workflow Type}
    sleep    1 seconds
    Click Element    xpath=${Select SSR Workflow Type}
    Input Text       xpath=${SSR Reference Site Code}      ${Reference Site Code Route Chain ID}
    # Input Text       xpath=${SSR Reference Site Code}      ${SSR Reference Site Code Fix}
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
    # Log To Console    เลขที่ดึงออกมา: ${SSR Fianal Massage}

Click Todo list Menu
    Click Element    xpath=${Todo list Menu}
    sleep    1 seconds

SSR Approval Search SSR ID
    [Arguments]    ${SSR Approved Case}
    Input Text       xpath=${Input SSR ID Path}     ${SSR Approval ID Fianal Massage}         #ตามโฟลวตั้งแต่แรก
    # Input Text       xpath=${Input SSR ID Path}     ${SSR Approval ID By Pass}           #By pass step
    Click Element    xpath=${Todo list Menu Search Button Query}
    Wait Until Element Is Visible    xpath=${SSR Approval ID}      timeout=10s
    Execute Javascript    window.scrollTo(0, document.body.scrollHeight)
    Capture Page Screenshot    ${Picture Path Folder}/TS004_Approval_Search.png
    Click Element    xpath=${SSR Approval ID}
    Wait Until Element Is Visible    xpath=${SSR Approved and Rejected}      timeout=10s
    Click Element    xpath=${SSR Approved and Rejected}
    Click Element    xpath=${SSR Approved Case}
    sleep    1 seconds
    Capture Page Screenshot    ${Picture Path Folder}/TS004_Approval_Step.png
    Execute Javascript    window.scrollTo(0, document.body.scrollHeight)
    Click Element    xpath=${SSR Approved Save Button}
    Wait Until Page Contains    บันทึกข้อมูลเรียบร้อย    10s

SSR Approval Result
    Element Should Contain           xpath=${SSR Approved Result Massage}    บันทึกข้อมูลเรียบร้อย
    Capture Page Screenshot    ${Picture Path Folder}/TS004_Approval_Successful.png
    ${SSR Approval Result Massage full_text}=    Get Text    xpath=${SSR Approved Result Massage}
    ${SSR Approval Array Result Massage full_text}=   Split String    ${SSR Approval Result Massage full_text}    :
    ${SSR Approval Array Result PASS Massage}=   Split String    ${SSR Approval Result Massage full_text}     
    ${Submitted Massage}=  Strip String    ${SSR Approval Array Result Massage full_text[1]}
    ${Submitted PASS Massage}=  Strip String    ${SSR Approval Array Result PASS Massage[0]}
    Set Global Variable     ${Submitted Massage}
    Set Global Variable     ${Submitted PASS Massage}

#FBOQ/PAT/GR Submitted
FBOQ PAT GR Submitted
    [Arguments]    ${Check Page Contains}
    Input Text       xpath=${Input SSR ID Path}     ${Submitted Massage}         #ตามโฟลวตั้งแต่แรก
    # Input Text       xpath=${Input SSR ID Path}     ${Submitted Massage By Pass}           #By pass step    
    Click Element    xpath=${Todo list Menu Search Button Query}
    Wait Until Element Is Visible       xpath=${Submitted SSR ID First Row}     timeout=10s
    Execute Javascript    window.scrollTo(0, document.body.scrollHeight)
    sleep    1 seconds
    Click Element    xpath=${Submitted SSR ID First Row}
    Capture Page Screenshot    ${Picture Path Folder}/TS005_FBOQ_PAT_GR_Submitted.png
    Wait Until Page Contains    ${Check Page Contains}    10s

FBOQ PAT GR Submitted Search PO
    [Arguments]    ${Input}
    # Execute Javascript    window.scrollTo(0, document.body.scrollHeight)
    Click Element    xpath=${Submitted Search PO Button}
    Wait Until Page Contains    Search PO    10s
    sleep    1 seconds
    Input Text       xpath=${Submitted Search PO Input}     ${Input}
    sleep    1 seconds
    Click Element    xpath=${Submitted Button Search PO Input}
    sleep    2 seconds
    # Capture Page Screenshot    ${Picture Path Folder}/TS005_FBOQ_PAT_GR_Search_PO.png

# FBOQ PAT GR Submitted Select PO No 
#     Click Element    xpath=${Submitted PO NO 1}
#     Click Element    xpath=${Submitted PO NO 2}
#     Capture Page Screenshot    ${Picture Path Folder}/TS005_FBOQ_PAT_GR_Select_PO.png
#     Click Element    xpath=${Submitted Comfrim PO NO}
#     sleep    2 seconds

FBOQ PAT GR Submitted Select Article Type Cost
    Click Element    xpath=${Submitted PO NO 1}

FBOQ PAT GR Submitted Select Article Type Equipment
    Click Element    xpath=${Submitted PO NO 2}

FBOQ PAT GR Submitted Comfrim PO
    Capture Page Screenshot    ${Picture Path Folder}/TS005_FBOQ_PAT_GR_Select_PO.png
    Click Element    xpath=${Submitted Comfrim PO NO}
    sleep    2 seconds

# FBOQ PAT GR Submitted Receive Qty
#     Execute Javascript    window.scrollTo(0, document.body.scrollHeight / 2);
#     sleep    1 seconds
#     Input Text       xpath=${Submitted Receive Qty Input 1}     ${Submitted Receive Qty Input Value 1}
#     sleep    1 seconds
#     Input Text       xpath=${Submitted Receive Qty Input 2}     ${Submitted Receive Qty Input Value 2}
#     sleep    1 seconds
#     Capture Page Screenshot    ${Picture Path Folder}/TS005_FBOQ_PAT_GR_Receive_Qty.png
#     Click Element    xpath=${Submitted Cost Average Group 1}
#     Execute Javascript    window.scrollTo(0, document.body.scrollHeight)
#     sleep    1 seconds
#     Click Element    xpath=${Submitted Select Cost Average Group 1}

FBOQ PAT GR Submitted Receive Qty Input 1
    [Arguments]    ${Qty Input Value 1}
    Execute Javascript    window.scrollTo(0, document.body.scrollHeight / 2);
    sleep    1 seconds
    Input Text       xpath=${Submitted Receive Qty Input 1}     ${Qty Input Value 1}

FBOQ PAT GR Submitted Receive Qty Input 2
    [Arguments]    ${Qty Input Value 2}
    Input Text       xpath=${Submitted Receive Qty Input 2}     ${Qty Input Value 2}
    sleep    1 seconds

FBOQ PAT GR Submitted Receive Submitted Cost Average Group 1
    [Arguments]    ${Submitted Cost Average Group}
    Capture Page Screenshot    ${Picture Path Folder}/TS005_FBOQ_PAT_GR_Receive_Qty.png
    Click Element    xpath=${Submitted Cost Average Group}
    Execute Javascript    window.scrollTo(0, document.body.scrollHeight)
    sleep    1 seconds
    Click Element    xpath=${Submitted Select Cost Average Group 1}

FBOQ PAT GR Submitted Add Picture
    [Arguments]    ${ADD Pic File Path}         ${Check Added Pic}
    Choose File      xpath=${Submitted Add Picture Button 1}     ${ADD Pic File Path}
    Wait Until Element Is Visible    xpath=${Check Added Pic}     timeout=30s
    Click Element    xpath=${Submitted ADD Pic File Save Button}  
    Wait Until Page Contains        SSR Result Message

FBOQ PAT GR Submitted SSR Result
    Element Should Contain           xpath=${Submitted SSR Result Message}   บันทึกข้อมูลเรียบร้อย
    Capture Page Screenshot    ${Picture Path Folder}/TS005_FBOQ_PAT_GR_Submitted_SSR_Result.png
    ${Submitted SSR Result Message full_text}=    Get Text    xpath=${Submitted SSR Result Message}
    ${Submitted Array SSR Result Message full_text}=   Split String    ${Submitted SSR Result Message full_text}    :
    ${Verified Result Massage}=  Strip String    ${Submitted Array SSR Result Message full_text[1]}
    Set Global Variable     ${Verified Result Massage}
    Log To Console      Reference Site Code Verified Massage>>>>:  ${Verified Result Massage}


FBOQ/PAT/GR Verified
    Input Text       xpath=${Verified Serach SSR ID}     ${Verified Result Massage}             #ทำตั้งแต่แรก
    # Input Text       xpath=${Verified Serach SSR ID}     ${Verified Massage By Pass}            #By Pass
    Click Element    xpath=${Todo list Menu Search Button Query}
    Wait Until Element Is Visible       xpath=${Verified Serach Results Test}     timeout=10s
    Execute Javascript    window.scrollTo(0, document.body.scrollHeight)
    Capture Page Screenshot    ${Picture Path Folder}/TS006_FBOQ_PAT_GR_Verified.png
    Click Element    xpath=${Verified Select First Row}
    Wait Until Page Contains        SSR > BOQ Verified          timeout=30s

# FBOQ/PAT/GR Verified General Information Title
#     Click Element    xpath=${Verified View Document Import}   
#     ${Verified General Information Window}=    Get Window Handles
#     Log To Console    All windows: ${Verified General Information Window}
#     ${General Information Window}=    Evaluate    ${Verified General Information Window}    -1      handles=${Verified General Information Window} 
#     Switch Window    ${General Information Window}
#     Title Should Be    View Document Import
#     Close Window
#     ${FBOQ PAT GR Verified}=    Evaluate    ${Verified General Information Window}    0      handles=${Verified General Information Window}
#     Switch Window    ${FBOQ PAT GR Verified}

FBOQ/PAT/GR Verified Pass and Fail
    [Arguments]   ${Verified Pass an Fail Select}
    Execute Javascript    window.scrollTo(0, document.body.scrollHeight)
    Click Element    xpath=${Verified Pass an Fail Path}
    Click Element    xpath= ${Verified Pass an Fail Select}
    sleep    2 seconds
    Capture Page Screenshot    ${Picture Path Folder}/TS006_FBOQ_PAT_GR_Verified_Pass.png
    Click Element    xpath=${Verified Pass an Fail Save Button} 
    Wait Until Page Contains        SSR Result Message

FBOQ/PAT/GR Verified SSR Result
    Capture Page Screenshot    ${Picture Path Folder}/TS006_FBOQ_PAT_GR_Verified_Result.png
    ${Verified SSR Result Message full_text}=    Get Text    xpath=${Verified SSR Result Message}
    ${Verified Array SSR Result PASS Message}=   Split String    ${Verified SSR Result Message full_text} 
    
    ${FBOQ PAT GR Approve Result PASS Massage}=  Strip String    ${Verified Array SSR Result PASS Message[0]}
    Set Global Variable     ${FBOQ PAT GR Approve Result PASS Massage}
    Run Keyword If    '${FBOQ PAT GR Approve Result PASS Massage}' != 'บันทึกข้อมูลเรียบร้อย'      Fail
    
    ${Verified Array SSR Result Message full_text}=   Split String    ${Verified SSR Result Message full_text}    : 
    ${FBOQ PAT GR Approve Result Massage}=  Strip String    ${Verified Array SSR Result Message full_text[1]}
    
    Set Global Variable     ${FBOQ PAT GR Approve Result Massage}
    

# FBOQ/PAT/GR Approve
FBOQ/PAT/GR Approve Search SSR ID
    # Input Text       xpath=${Verified Serach SSR ID}     ${FBOQ PAT GR Approve Result Massage}         #ตาม Flow
    Input Text       xpath=${Todo list Menu Search SSR ID}     ${FBOQ PAT GR Approve Result Massage By pass}         #By pass
    Click Element    xpath=${Todo list Menu Search Button Query}
    Wait Until Element Is Visible    xpath=${Todo list Menu Select First Row span}    timeout=10s
    Execute Javascript    window.scrollTo(0, document.body.scrollHeight)
    Capture Page Screenshot    ${Picture Path Folder}/TS006_FBOQ_PAT_GR_Search.png
    Click Element    xpath=${Todo list Menu Select First Row span}
    # Wait Until Page Contains        SSR > BOQ Approved      timeout=30s
    Wait Until Page Contains        SSR > BOQ Verified      timeout=30s
    

FBOQ/PAT/GR Approve SSR ID
    [Arguments]    ${FBOQ PAT GR Select Case}
    sleep    1 seconds
    Execute Javascript    window.scrollTo(0, document.body.scrollHeight)
    Click Element    xpath=${FBOQ PAT GR Approved And Rejected}
    Click Element    xpath=${FBOQ PAT GR Select Case}
    sleep    1 seconds
    Click Element    xpath=${FBOQ PAT GR Approed Save Button}
    Wait Until Page Contains        บันทึกข้อมูลเรียบร้อย     timeout=30s

FBOQ/PAT/GR Approve SSR Result
    Capture Page Screenshot    ${Picture Path Folder}/TS006_FBOQ_PAT_GR_Approve.png
    ${Approve SSR Result Message full_text}=    Get Text    xpath=${FBOQ PAT GR Approve Approve SSR Result Message}
    ${FBOQ PAT GR Waiting For GR Result Pass Massage}=   Split String    ${Approve SSR Result Message full_text} 
    
    ${FBOQ PAT GR Waiting For GR Result Massage PASS}=  Strip String    ${FBOQ PAT GR Waiting For GR Result Pass Massage[0]}
    Set Global Variable     ${FBOQ PAT GR Waiting For GR Result Massage PASS}
    # Log To Console      Result Message>>>>>>:  ${FBOQ PAT GR Waiting For GR Result Massage PASS}
    Run Keyword If    '${FBOQ PAT GR Waiting For GR Result Massage PASS}' != 'บันทึกข้อมูลเรียบร้อย'      Fail
    
    ${Approve Array SSR Result Message full_text}=   Split String    ${Approve SSR Result Message full_text}    : 
    ${FAT Submitted Result SSR ID Massage}=  Strip String    ${Approve Array SSR Result Message full_text[1]}
    
    Set Global Variable     ${FAT Submitted Result SSR ID Massage}
    # Log To Console      Reference Site Code Route Chain ID>>>>>:  ${FAT Submitted Result SSR ID Massage}



SSR Tracking Search
    Click Element    xpath=${SSR Tracking Menu}
    Input Text       xpath=${SSR Tracking Search SSR ID}            ${FAT Submitted Result SSR ID Massage}               #ตามโฟลว
    # Input Text       xpath=${SSR Tracking Search SSR ID}            ${SSR Tracking Search SSR ID NO By Pass}      #By Pass
    Click Element    xpath=${SSR Tracking Search Button}
    Wait Until Element Is Visible    xpath=${SSR Tracking Search Select First Row}    timeout=10s
    Execute Javascript    window.scrollTo(0, document.body.scrollHeight)
    Click Element    xpath=${SSR Tracking Search Select First Row}
    Wait Until Page Contains         SSR Tracking > View        timeout=30s
    sleep    1 seconds
    Click Element    xpath=${SSR Tracking AAM Doc Status}
    sleep    1 seconds
    Wait Until Element Is Visible    xpath=${SSR Tracking AAM Doc Check Status}    timeout=10s
    Capture Page Screenshot    ${Picture Path Folder}/TS007_SSR_Tracking_Search.png
    ${Tracking AAM Doc Status Massage}=    Get Text    xpath=${SSR Tracking AAM Doc Check Status}
    Set Global Variable     ${Tracking AAM Doc Status Massage}
    Run Keyword If    '${Tracking AAM Doc Status Massage}' != 'Completed'      Fail
    Click Element    xpath=${Close AAM Doc Status}

FAT Submitted
    Input Text       xpath=${Todo list Menu Search SSR ID}            ${FAT Submitted Result SSR ID Massage}      #ตามโฟลว
    # Input Text       xpath=${Todo list Menu Search SSR ID}            ${SSR Tracking Search SSR ID NO By Pass}      #By Pass
    Click Element    xpath=${Todo list Menu Search Button Query}
    Wait Until Element Is Visible    xpath=${FAT Submitted Select First Row}    timeout=30s
    Execute Javascript    window.scrollTo(0, document.body.scrollHeight)
    Click Element    xpath=${FAT Submitted Select First Row}
    Wait Until Page Contains         SSR > FAT Submitted            timeout=30s

FAT Submitted Add File
    [Arguments]    ${FAT Submitted Add Picture Path}
    Choose File      xpath=${FAT Submitted Add Picture}    ${FAT Submitted Add Picture Path}
    sleep    1 seconds
    Execute JavaScript    window.scrollTo(0, 200)
    sleep    1 seconds
    Click Element    xpath=${FAT Submitted Upload Picture}
    Wait Until Element Is Visible    xpath=${FAT Submitted Check Upload Picture}     timeout=10s
    Execute Javascript    window.scrollTo(0, document.body.scrollHeight)
    Click Element    xpath=${FAT Submitted Save Button}

FAT Submitted Result Message
    Wait Until Page Contains         บันทึกข้อมูลเรียบร้อย
    Capture Page Screenshot    ${Picture Path Folder}/TS007_FAT_Submitted_Successful.png
    ${FAT Submitted Result Message full_text}=    Get Text    xpath=${FAT Submitted SSR Result Message}
    ${FAT Submitted Result Pass Massage}=  Split String    ${FAT Submitted Result Message full_text}     
    ${FAT Submitted Result Massage PASS}=  Strip String    ${FAT Submitted Result Pass Massage[0]}

    Set Global Variable     ${FAT Submitted Result Massage PASS}
    Run Keyword If    '${FAT Submitted Result Massage PASS}' != 'บันทึกข้อมูลเรียบร้อย'      Fail

    ${FAT Submitted Array Result Message full_text}=   Split String    ${FAT Submitted Result Message full_text}    :
    ${FAT Approve Result Massage SSR}=  Strip String    ${FAT Submitted Array Result Message full_text[1]}
    Set Global Variable    ${FAT Approve Result Massage SSR}

#FAT Approve
FAT Approve
    [Arguments]    ${FAT Approve Select Case}
    Input Text       xpath=${Todo list Menu Search SSR ID}            ${FAT Approve Result Massage SSR}      #ตามโฟลว
    # Input Text       xpath=${Todo list Menu Search SSR ID}            ${FAT Approve Result Massage By Pass}      #By Pass
    Click Element    xpath=${Todo list Menu Search Button Query}
    Wait Until Element Is Visible    xpath=${Todo list Menu Select First Row span}     timeout=10s
    Execute Javascript    window.scrollTo(0, document.body.scrollHeight)  
    Click Element    xpath=${Todo list Menu Select First Row span}
    Wait Until Page Contains         SSR > FAT Approved  
    Execute Javascript    window.scrollTo(0, document.body.scrollHeight)
    Click Element    xpath=${FAT Approve Approved And Rejected} 
    Click Element    xpath=${FAT Approve Select Case}
    Capture Page Screenshot    ${Picture Path Folder}/TS008_FAT_Approve_Pass.png
    Click Element    xpath=${FAT Approve Save Button}
    Wait Until Page Contains         บันทึกข้อมูลเรียบร้อย    timeout=10s

FAT Approve Result Massage
    Capture Page Screenshot    ${Picture Path Folder}/TS008_FAT_Approve_Successful.png
    ${FAT Approve Result Message full_text}=    Get Text    xpath=${FAT Approve Result Massage}
    ${FAT Approve Result Pass Massage}=  Split String    ${FAT Approve Result Message full_text}     
    ${FAT Approve Result Massage PASS}=  Strip String    ${FAT Approve Result Pass Massage[0]}

    Set Global Variable     ${FAT Approve Result Massage PASS}
    Run Keyword If    '${FAT Approve Result Massage PASS}' != 'บันทึกข้อมูลเรียบร้อย'      Fail

    ${FAT Approve Array Result Message full_text}=   Split String    ${FAT Approve Result Message full_text}    :
    ${FAT FBOQ PAT GR Submitted_2 Result Massage}=  Strip String    ${FAT Approve Array Result Message full_text[1]}
    Set Global Variable    ${FAT FBOQ PAT GR Submitted_2 Result Massage}   

    
SSR Tracking Search Pass Reason
    Click Element    xpath=${SSR Tracking Menu}
    Input Text       xpath=${SSR Tracking Search SSR ID}            ${FAT FBOQ PAT GR Submitted_2 Result Massage}               #ตามโฟลว
    # Input Text       xpath=${SSR Tracking Search SSR ID}            ${SSR Tracking Search SSR ID NO By Pass}      #By Pass
    Click Element    xpath=${SSR Tracking Search Button}
    Wait Until Element Is Visible    xpath=${SSR Tracking Search Select First Row}    timeout=10s
    Execute Javascript    window.scrollTo(0, document.body.scrollHeight)
    Click Element    xpath=${SSR Tracking Search Select First Row}
    Wait Until Page Contains         SSR Tracking > View
    sleep    1 seconds
    Execute Javascript    window.scrollTo(0, document.body.scrollHeight)
    Wait Until Element Is Visible    xpath=${Pass Reason Massage}     timeout=10s
    Capture Page Screenshot    ${Picture Path Folder}/Pass Reason.png
    Element Text Should Be    xpath=${Pass Reason Massage}    Pass Reason ...\n(Pass to Job Evaluation)

Job Evaluation Search Evaluate Template
    Input Text       xpath=${Todo list Menu Search SSR ID}            ${FAT FBOQ PAT GR Submitted_2 Result Massage}      #ตามโฟลว
    # Input Text       xpath=${Todo list Menu Search SSR ID}            ${SSR Tracking Search SSR ID NO By Pass}      #By Pass
    Click Element    xpath=${Todo list Menu Search Button Query}
    Wait Until Element Is Visible    xpath=${Todo list Menu Select First Row span}     timeout=10s 
    Execute Javascript    window.scrollTo(0, document.body.scrollHeight)
    Click Element    xpath=${Todo list Menu Select First Row span}
    Execute JavaScript    window.scrollTo(0, 200)

Job Evaluation Template
    [Arguments]    ${Evaluate Select Type}      ${Evaluate Template Position}
    Click Element    xpath=${Evaluate Template Position}
    Wait Until Element Is Visible    xpath=${Job Evaluation Evaluate Type}     timeout=10s
    Click Element    xpath=${Job Evaluation Evaluate Type} 
    Click Element    xpath=${Evaluate Select Type}
    sleep    0.5 seconds
    Click Element    xpath=${Job Evaluation Evaluate Type Serach}
    Wait Until Element Is Visible    xpath=${Job Evaluation Evaluate Select Type No}       timeout=10s
    Click Element    xpath=${Job Evaluation Evaluate Select Type No}  
    # Capture Page Screenshot    ${Picture Path Folder}/TS009_Job_Evaluation_Evaluate_Select_Type_No.png
    Click Element    xpath=${Job Evaluation Evaluate Selection Comfrim Button}
    sleep    1 seconds

# Job Evaluation Search Evaluate Template Quality
#     Click Element    xpath=${Job Evaluation Search Evaluate Template}
#     Wait Until Element Is Visible    xpath=${Job Evaluation Evaluate Type}     timeout=10s
#     Click Element    xpath=${Job Evaluation Evaluate Type} 
#     Click Element    xpath=${Job Evaluation Evaluate Select Type Quality}
#     sleep    0.5 seconds
#     Click Element    xpath=${Job Evaluation Evaluate Type Serach}
#     Wait Until Element Is Visible    xpath=${Job Evaluation Evaluate Select Type No}       timeout=10s
#     Click Element    xpath=${Job Evaluation Evaluate Select Type No}  
#     # Capture Page Screenshot    ${Picture Path Folder}/TS009_Job_Evaluation_Evaluate_Select_Type_No.png
#     Click Element    xpath=${Job Evaluation Evaluate Selection Comfrim Button}
#     sleep    1 seconds

# Job Evaluation Search Evaluate Template Speed
#     Click Element    xpath=${Job Evaluation Search Evaluate Template Seconds}
#     Wait Until Element Is Visible    xpath=${Job Evaluation Evaluate Type}     timeout=10s
#     Click Element    xpath=${Job Evaluation Evaluate Type} 
#     Click Element    xpath=${Job Evaluation Evaluate Select Type Speed}
#     sleep    0.5 seconds
#     Click Element    xpath=${Job Evaluation Evaluate Type Serach}
#     Wait Until Element Is Visible    xpath=${Job Evaluation Evaluate Select Type No}       timeout=10s
#     Click Element    xpath=${Job Evaluation Evaluate Select Type No}  
#     # Capture Page Screenshot    ${Picture Path Folder}/TS009_Job_Evaluation_Evaluate_Select_Type_No.png
#     Click Element    xpath=${Job Evaluation Evaluate Selection Comfrim Button}

Job Evaluation Search Evaluate Give a score
    [Arguments]      ${score 1}         ${score 2}
    Wait Until Element Is Visible    xpath=${Job Evaluation Assessment topic}     timeout=10s  
    sleep    0.5 seconds
    Click Element    xpath=${score 1}
    sleep    0.5 seconds
    Click Element    xpath=${score 2}
    sleep    0.5 seconds
    Capture Page Screenshot    ${Picture Path Folder}/TS009_Assessment topic.png
    sleep    1 seconds

Job Evaluation Add Picture
    [Arguments]      ${Job Evaluation Picture Path}
    Choose File      xpath=${Job Evaluation Add Picture}    ${Job Evaluation Picture Path}
    Execute Javascript    window.scrollTo(0, document.body.scrollHeight)

    Wait Until Element Is Visible    xpath=${Job Evaluation Picture Delete}     timeout=10s
    Click Element    xpath=${Job Evaluation Save Button}
    Wait Until Page Contains         บันทึกข้อมูลเรียบร้อย    timeout=10s

Job Evaluation Result Massage
    Capture Page Screenshot    ${Picture Path Folder}/TS009_Job_Evaluation_Successful.png
    ${Job Evaluation Approve Result Message full_text}=    Get Text    xpath=${Job Evaluation Approve Result Massage}
    ${Job Evaluation Approve Result Pass Massage}=  Split String    ${Job Evaluation Approve Result Message full_text}     
    ${Job Evaluation Approve Result Massage PASS}=  Strip String    ${Job Evaluation Approve Result Pass Massage[0]}

    Set Global Variable     ${Job Evaluation Approve Result Massage PASS}
    Run Keyword If    '${Job Evaluation Approve Result Massage PASS}' != 'บันทึกข้อมูลเรียบร้อย'      Fail

    ${Job Evaluation Approve Array Result Message full_text}=   Split String    ${Job Evaluation Approve Result Message full_text}    :
    ${Job Evaluation Result Massage}=  Strip String    ${Job Evaluation Approve Array Result Message full_text[1]}
    Set Global Variable    ${Job Evaluation Result Massage}  

Check Status
    Click Element    xpath=${SSR Tracking Menu}
    Input Text       xpath=${SSR Tracking Search SSR ID}            ${Job Evaluation Result Massage}               #ตามโฟลว
    # Input Text       xpath=${SSR Tracking Search SSR ID}            ${Job Evaluation Result Massage By Pass}      #By Pass
    Click Element    xpath=${SSR Tracking Search Button}
    Wait Until Element Is Visible    xpath=${SSR Tracking Search Select First Row}    timeout=10s
    Execute Javascript    window.scrollTo(0, document.body.scrollHeight)
    Click Element    xpath=${SSR Tracking Search Select First Row}
    Wait Until Page Contains         SSR Tracking > View    timeout=10s
    Capture Page Screenshot    ${Picture Path Folder}/SSR_Status.png
    Execute Javascript    window.scrollTo(0, document.body.scrollHeight)
    sleep    1 seconds
    Capture Page Screenshot    ${Picture Path Folder}/Job_Evaluation_Score.png