*** Settings ***
Library           SeleniumLibrary
Library           BuiltIn
Resource          ${CURDIR}/../../../resources/resources.robot

Suite Setup       Open Browser To Login Page

*** Test Cases ***
[1] เตรียมข้อมูลสำหรับทดสอบระบบ
    Open Workbook    ${SOURCE_FILE For FBB OSP III}
    ${table}=    Read Worksheet As Table    name=${SHEET_NAME}    header=True
    ${row_count}=    Get Length    ${table}
    FOR    ${i}    IN RANGE    1    ${row_count + 1}
        # Clear Excel Value File                  ${SOURCE_FILE For FBB OSP III}          ${i + 1}
        # Write Value Running Date File           ${SOURCE_FILE For FBB OSP III}          ${i + 1}
        # Gennerate Reference Site Code File      ${SOURCE_FILE For FBB OSP III}          ${i + 1}
        # Write Value From Column Name            ${SOURCE_FILE For FBB OSP III}          ${i + 1}       Result                 Fail
        # Prepare the template file data For Small Cell          ${SOURCE_FILE For FBB OSP III}          ${DESTINATION_FILE For FBB OSP III}           ${i + 1}

        Your connection is not private
        # Transporter_Login       ${SSR Create Draft Site Code USER}      ${SSR Create Draft Site Code PASS}
        # Welcome Page Should Be Open     ${LOGIN TITLE} 
        # sleep    1 seconds    
    
        # # [] สามารถ Create Draft Site Code ได้
        # Click Menu List
        # Select Menu                     ${Site Management Menu ID}
        # Select Menu                     ${Create Draft Site Code Menu ID}
        # Click Import 
        # Click Search Proforma No

        # ${Proferma No List}=    Get Column Values By Name File    ${SOURCE_FILE For FBB OSP III}     Proferma_No       
        # ${Proferma No}=    Set Variable    ${Proferma No List[${i - 1}]}
        # Log    Proferma No :>>>${Proferma No}
        
        # Search Proforma No              ${Proferma No}
        # Click Budget Check List

        # ${Purchase Cat Group List}=    Get Column Values By Name File    ${SOURCE_FILE For FBB OSP III}     Purchase Cat Group       
        # ${Purchase Cat Group}=    Set Variable    ${Purchase Cat Group List[${i - 1}]}
        # Log    Purchase Cat Group :>>>${Purchase Cat Group}

        # ${Purchase Cat List}=    Get Column Values By Name File    ${SOURCE_FILE For FBB OSP III}     Purchase Cat       
        # ${Purchase Cat}=    Set Variable    ${Purchase Cat List[${i - 1}]}
        # Log    Purchase Cat :>>>${Purchase Cat}

        # ${Action Type List}=    Get Column Values By Name File    ${SOURCE_FILE For FBB OSP III}     Action Type     
        # ${Action Type}=    Set Variable    ${Action Type List[${i - 1}]}
        # Log    Action Type :>>>${Action Type}

        # ${System Type List}=    Get Column Values By Name File    ${SOURCE_FILE For FBB OSP III}     System Type     
        # ${System Type}=    Set Variable    ${System Type List[${i - 1}]}
        # Log    System Type :>>>${System Type}

        # ${Service Code List}=    Get Column Values By Name File    ${SOURCE_FILE For FBB OSP III}     Service Code     
        # ${Service Code}=    Set Variable    ${Service Code List[${i - 1}]}
        # Log    Service Code :>>>${Service Code}

        # ${Company Code List}=    Get Column Values By Name File    ${SOURCE_FILE For FBB OSP III}     Company Code     
        # ${Company Code}=    Set Variable    ${Company Code List[${i - 1}]}
        # Log    Company Code :>>>${Company Code}

        # Search Budget Check List        ${Purchase Cat Group}    ${Purchase Cat}  ${Action Type}   ${System Type}    ${Service Code}   ${Company Code} 
        # Clck Search Purchase
        # Select Purchase Cat Group
        # Click Search Procurator

        # ${Procurator Workflow Type List}=    Get Column Values By Name File    ${SOURCE_FILE For FBB OSP III}     Procurator Workflow Type     
        # ${Procurator Workflow Type}=    Set Variable    ${Procurator Workflow Type List[${i - 1}]}
        # Log    Procurator Workflow Type :>>>${Procurator Workflow Type}

        # ${Procurator SSR Type List}=    Get Column Values By Name File    ${SOURCE_FILE For FBB OSP III}     Procurator SSR Type     
        # ${Procurator SSR Type}=    Set Variable    ${Procurator SSR Type List[${i - 1}]}
        # Log    Procurator SSR Type :>>>${Procurator SSR Type}

        # ${Procurator Region List}=    Get Column Values By Name File    ${SOURCE_FILE For FBB OSP III}     Procurator Region     
        # ${Procurator Region}=    Set Variable    ${Procurator Region List[${i - 1}]}
        # Log    Procurator Region :>>>${Procurator Region}

        # Search Procurator               ${Procurator Workflow Type}    ${Procurator SSR Type}   ${Procurator Region}

        # ${Import Site Template File List}=    Get Column Values By Name File    ${SOURCE_FILE For FBB OSP III}     Import_Site_Template_File     

        # ${Import_Site_Template path}=    Catenate    SEPARATOR=     ${CURDIR}\\data file\\    ${Import Site Template File List[${i - 1}]}
        # Set Test Variable    ${Import_Site_Template path}
        # ${Import_Site_Template path}=    Normalize Path    ${Import_Site_Template path}
        # Log    ${Import_Site_Template path}

        # Import Type                     ${Import_Site_Template path}
        # Upload Site
        # ${SSR ID Reference Site Code}=    Reference Site Code
        # Set Global Variable     ${SSR ID Reference Site Code}
        # Log      Reference Site Code เลขที่ดึงออกมา: ${SSR ID Reference Site Code}
        # sleep    1 seconds
        # Write Value From Column Name            ${SOURCE_FILE For FBB OSP III}          ${i + 1}       Reference_Site_Code        ${SSR ID Reference Site Code}
        # Write Value From Column Name            ${SOURCE_FILE For FBB OSP III}          ${i + 1}       Run_Status                 Create Draft Site Code
        # Log Out

        # # [] สามารถสร้าง SSR ได้
        # Transporter_Login      ${SSR Create USER}      ${SSR Create PASS}
        # Welcome Page Should Be Open       ${LOGIN TITLE} 
        # sleep    1 seconds
        # Click Menu List
        # Select Menu                         ${SSR Create Menu ID}    
        # SSR Search Site Workflow Type       ${FBB OSP for TPT III Auto PO} 
        # SSR Search Reference Site Code      ${SSR ID Reference Site Code} 
        # # SSR Search Reference Site Code      ${SSR ID Reference Site Code By Pass}
        # SSR Click Search Reference Site Code
        # SSR Select Reference Site Code
        # Wait Until Page Contains         SSR > SSR Routing Submitted New      timeout=15s

        # ${Input Latitude Start List}=    Get Column Values By Name File    ${SOURCE_FILE For FBB OSP III}    SSR_Routing_Submitted_Latitude_Start
        # ${Input Latitude Start}=    Set Variable    ${Input Latitude Start List[${i - 1}]}
        # Set Test Variable       ${Input Latitude Start}

        # ${Input Longitude Start List}=    Get Column Values By Name File    ${SOURCE_FILE For FBB OSP III}    SSR_Routing_Submitted_Longitude_Start
        # ${Input Longitude Start}=    Set Variable    ${Input Longitude Start List[${i - 1}]}
        # Set Test Variable       ${Input Longitude Start}

        # ${Input Latitude End List}=    Get Column Values By Name File    ${SOURCE_FILE For FBB OSP III}    SSR_Routing_Submitted_Latitude_End
        # ${Input Latitude End}=    Set Variable    ${Input Latitude End List[${i - 1}]}
        # Set Test Variable      ${Input Latitude End}

        # ${Input Longitude End List}=    Get Column Values By Name File    ${SOURCE_FILE For FBB OSP III}    SSR_Routing_Submitted_Longitude_End
        # ${Input Longitude End}=    Set Variable    ${Input Longitude End List[${i - 1}]}
        # Set Test Variable       ${Input Longitude End}

        # Page Should Contains                ${SSR > SSR Routing Submitted New}
        # Survey Information                  ${Input Latitude Start}      ${Input Longitude Start}     ${Input Latitude End}     ${Input Longitude End}

        # ${SSR_Routing_Submitted_Cable_Type List}=    Get Column Values By Name File    ${SOURCE_FILE For FBB OSP III}    SSR_Routing_Submitted_Cable_Type
        # ${SSR_Routing_Submitted_Cable_Type}=    Set Variable    ${SSR_Routing_Submitted_Cable_Type List[${i - 1}]}
        # Set Test Variable       ${SSR_Routing_Submitted_Cable_Type}

        # ${SSR_Routing_Submitted_Cable_Core_No List}=    Get Column Values By Name File    ${SOURCE_FILE For FBB OSP III}    SSR_Routing_Submitted_Cable_Core_No
        # ${SSR_Routing_Submitted_Cable_Core_No}=    Set Variable    ${SSR_Routing_Submitted_Cable_Core_No List[${i - 1}]}
        # Set Test Variable       ${SSR_Routing_Submitted_Cable_Core_No}

        # ${SSR_Routing_Submitted_Cable_Distance List}=    Get Column Values By Name File    ${SOURCE_FILE For FBB OSP III}    SSR_Routing_Submitted_Cable_Distance
        # ${SSR_Routing_Submitted_Cable_Distance}=    Set Variable    ${SSR_Routing_Submitted_Cable_Distance List[${i - 1}]}
        # Set Test Variable       ${SSR_Routing_Submitted_Cable_Distance}

        # Cable Type Information              ${SSR_Routing_Submitted_Cable_Type}         ${SSR_Routing_Submitted_Cable_Core_No}        ${SSR_Routing_Submitted_Cable_Distance}
        # ${SSR_Routing_Submitted_Upload_File List}=    Get Column Values By Name File    ${SOURCE_FILE For FBB OSP III}    SSR_Routing_Submitted_Upload_File

        # ${SSR_Routing_Submitted_Upload_File path}=    Catenate    SEPARATOR=     ${CURDIR}\\data file\\    ${SSR_Routing_Submitted_Upload_File List[${i - 1}]}
        # Set Test Variable    ${SSR_Routing_Submitted_Upload_File path}
        # ${SSR_Routing_Submitted_Upload_File path}=    Normalize Path    ${SSR_Routing_Submitted_Upload_File path}
        # Log    ${SSR_Routing_Submitted_Upload_File path}

        # Routing Submitted Upload File 📷✅       ${SSR_Routing_Submitted_Upload_File path}
        # Routing Submitted Save
        # ${SSR ID Approval I}=    Result Massage Data recorded        ${SSR ID Routing Submitted} 
        # Set Global Variable     ${SSR ID Approval I}
        # Log    SSR ID Approval 1 เลขที่ดึงออกมา: ${SSR ID Approval I}
        # sleep    1 seconds
        # Write Value From Column Name       ${SOURCE_FILE For FBB OSP III}      ${i + 1}       SSR_ID                  ${SSR ID Approval I}
        # Write Value From Column Name       ${SOURCE_FILE For FBB OSP III}      ${i + 1}       Run_Status              SSR Create
        # Log Out

        # #[] สามารถทำรายการ Process SSR Approval 1 ได้
        # Transporter_Login       ${SSR Approval 1 USER}      ${SSR Approval 1 PASS}
        # Welcome Page Should Be Open       ${LOGIN TITLE} 
        # sleep    1 seconds
        # Click Menu List
        # Select Menu                             ${Todo list Menu ID}
        # # To Do List Serach SSR ID                ${SSR ID Approval 1 By Pass}            
        # To Do List Serach SSR ID                ${SSR ID Approval I}
        # To Do Click Serach SSR ID
        # Selected SSR ID
        # Page Should Contains                    ${SSR > SSR Approval} 
        # SSR Approval Approved Or Rejected       ${SSR Approved Case}

        # ${SSR_Approval_Job_Type List}=    Get Column Values By Name File    ${SOURCE_FILE For FBB OSP III}    SSR_Approval_Job_Type
        # ${SSR_Approval_Job_Type}=    Set Variable    ${SSR_Approval_Job_Type List[${i - 1}]}
        # Set Test Variable       ${SSR_Approval_Job_Type}

        # SSR Approval Job Type                   ${SSR_Approval_Job_Type}
        # SSR Approval Click Save

        # ${SSR ID DD Submitted}=    Result Massage Data recorded        ${SSR Approval Result Massage}
        # Set Global Variable         ${SSR ID DD Submitted}
        # Log    SSR ID DD Submitted เลขที่ดึงออกมา: ${SSR ID DD Submitted}
        # sleep    1 seconds
        # Write Value From Column Name       ${SOURCE_FILE For FBB OSP III}      ${i + 1}       Run_Status              SSR Approval 1
        # Log Out

        # # [] สามารถทำรายการ DD Submitted ได้
        # Transporter_Login       ${DD Submitted USER}      ${DD Submitted PASS}
        # Welcome Page Should Be Open       ${LOGIN TITLE} 
        # sleep    1 seconds
        # Click Menu List
        # Select Menu                             ${Todo list Menu ID}
        # # To Do List Serach SSR ID                ${DD Submitted By Pass}            
        # To Do List Serach SSR ID                ${SSR ID DD Submitted}
        # To Do Click Serach SSR ID 
        # Selected SSR ID
        # Page Should Contains                    ${SSR > DD Submitted}
        # ${DD_Submitted_Upload_file List}=    Get Column Values By Name File    ${SOURCE_FILE For FBB OSP III}    DD_Submitted_Upload_file

        # ${DD_Submitted_Upload_file path}=    Catenate    SEPARATOR=     ${CURDIR}\\data file\\    ${DD_Submitted_Upload_file List[${i - 1}]}
        # Set Test Variable    ${DD_Submitted_Upload_file path}
        # ${DD_Submitted_Upload_file path}=    Normalize Path    ${DD_Submitted_Upload_file path}
        # Log    ${DD_Submitted_Upload_file path}

        # DD Submitted Add Picture                ${DD_Submitted_Upload_file path}
        # DD Submitted Upload Picture  
        # DD Submitted Save
        # ${SSR ID DD Approved}=    Result Massage Data recorded        ${DD Submitted Result Massage}
        # Set Global Variable         ${SSR ID DD Approved}
        # Log    SSR ID DD Approved เลขที่ดึงออกมา: ${SSR ID DD Approved}
        # sleep    1 seconds
        # Write Value From Column Name       ${SOURCE_FILE For FBB OSP III}      ${i + 1}       Run_Status              DD Submitted
        # Log Out

        # # [] สามารถทำรายการ DD Approved ได้
        # Transporter_Login       ${DD Approved USER}        ${DD Approved PASS}  
        # Welcome Page Should Be Open       ${LOGIN TITLE} 
        # sleep    1 seconds
        # Click Menu List
        # Select Menu                             ${Todo list Menu ID}
        # # To Do List Serach SSR ID                ${SSR ID DD Approved By Pass}            
        # To Do List Serach SSR ID                ${SSR ID DD Approved}
        # To Do Click Serach SSR ID
        # Selected SSR ID
        # Page Should Contains                    ${SSR > DD Approved} 

        # ${DD_Approved_Route_Type List}=    Get Column Values By Name File    ${SOURCE_FILE For FBB OSP III}    DD_Approved_Route_Type
        # ${DD_Approved_Route_Type}=    Set Variable    ${DD_Approved_Route_Type List[${i - 1}]}
        # Set Test Variable       ${DD_Approved_Route_Type}

        # DD Approved Route Type                  ${DD_Approved_Route_Type}

        # ${DD_Approved_Cable_Job_Type List}=    Get Column Values By Name File    ${SOURCE_FILE For FBB OSP III}    DD_Approved_Cable_Job_Type
        # ${DD_Approved_Cable_Job_Type}=    Set Variable    ${DD_Approved_Cable_Job_Type List[${i - 1}]}
        # Set Test Variable       ${DD_Approved_Cable_Job_Type}

        # DD Approved Cable Job Type              ${DD_Approved_Cable_Job_Type}
        # DD Approved Point source site           ${CWT}
        # DD Approved Destination site            ${CWT}
        # DD Approved                             ${DD Approved Case} 
        # # sleep    5 seconds
        # DD Approved Save
        # DD Approved Confirm Route
        # # ${Route Name TH}=       DD Approved Confirm Route Massage       ${DD Approved Confirm Route Name TH}  
        # ${SSR ID Permission Start Submitted}=    Result Massage Data recorded        ${DD Approved Result Massage}
        # Set Global Variable         ${SSR ID Permission Start Submitted}
        # Log    SSR ID Permission Start Submitted เลขที่ดึงออกมา: ${SSR ID Permission Start Submitted}
        # Write Value From Column Name       ${SOURCE_FILE For FBB OSP III}      ${i + 1}       Run_Status              DD Approved
        # Log Out

        # # [] สามารถทำรายการ Permission Start Submitted NBTC PEA MEA ได้
        # Transporter_Login       ${Permission Submitted USER}        ${Permission Submitted PASS}  
        # Welcome Page Should Be Open       ${LOGIN TITLE} 
        # sleep    1 seconds        
        # Click Menu List
        # Select Menu                             ${Todo list Menu ID}
        # # To Do List Serach SSR ID                ${SSR ID Permission Start Submitted By Pass}         
        # To Do List Serach SSR ID                ${SSR ID Permission Start Submitted}
        # To Do Click Serach SSR ID
        # Selected SSR ID
        # Page Should Contains                    ${SSR > Permission Submitted}
        # ${Permission_Start_Submitted_Upload_file List}=    Get Column Values By Name File    ${SOURCE_FILE For FBB OSP III}    Permission_Start_Submitted_Upload_file

        # ${Permission_Start_Submitted_Upload_file path}=    Catenate    SEPARATOR=     ${CURDIR}\\data file\\    ${Permission_Start_Submitted_Upload_file List[${i - 1}]}
        # Set Test Variable    ${Permission_Start_Submitted_Upload_file path}
        # ${Permission_Start_Submitted_Upload_file path}=    Normalize Path    ${Permission_Start_Submitted_Upload_file path}
        # Log    ${Permission_Start_Submitted_Upload_file path}

        # Permission Start Submitted Add Picture      ${Permission_Start_Submitted_Upload_file path}
        # Permission Start Submitted Upload Picture
        # Permission Start Submitted Save
        # ${SSR ID Permission Start Approved}=    Result Massage Data recorded        ${Permission Start Submitted Result Massage}
        # Set Global Variable         ${SSR ID Permission Start Approved}
        # Log    Permission Start Submitted เลขที่ดึงออกมา: ${SSR ID Permission Start Approved}
        # sleep    1  seconds
        # Write Value From Column Name       ${SOURCE_FILE For FBB OSP III}      ${i + 1}       Run_Status              Permission Start Submitted NBTC PEA MEA
        # Log Out

        # # [] สามารถทำรายการ Permission Start Approve NBTC PEA MEA ได้
        # Transporter_Login       ${Permission Approved USER}       ${Permission Approved PASS}  
        # Welcome Page Should Be Open       ${LOGIN TITLE} 
        # sleep    1 seconds
        # Click Menu List
        # Select Menu                             ${Todo list Menu ID}
        # # To Do List Serach SSR ID                ${SSR ID Permission Start Approve By Pass}        
        # To Do List Serach SSR ID                ${SSR ID Permission Start Approved}
        # To Do Click Serach SSR ID
        # Selected SSR ID
        # Page Should Contains                    ${SSR > Permission Approved}
        # Permission Start Approved NBTC PEA MEA  ${Permission Start Approve Case}
        # Permission Start Approved Save        
        # ${SSR ID PAT BOQ Submitted}=    Result Massage Data recorded        ${Permission Start Approve Result Massage}
        # Set Global Variable         ${SSR ID PAT BOQ Submitted}
        # Log    Permission Start Approve เลขที่ดึงออกมา: ${SSR ID PAT BOQ Submitted}
        # Write Value From Column Name       ${SOURCE_FILE For FBB OSP III}      ${i + 1}       Run_Status              Permission Start Approve NBTC PEA MEA
        # Log Out

        # [] สามารถทำรายการ PAT BOQ Submitted Step ได้
        Transporter_Login       ${PAT BOQ Submitted USER}       ${PAT BOQ Submitted PASS}  
        Welcome Page Should Be Open       ${LOGIN TITLE} 
        sleep    1 seconds
        Click Menu List
        Select Menu                             ${Todo list Menu ID}
        To Do List Serach SSR ID                ${SSR ID PAT BOQ Submitted By Pass}       
        # To Do List Serach SSR ID                ${SSR ID PAT BOQ Submitted}
        To Do Click Serach SSR ID
        Selected SSR ID
        Page Should Contains                    ${SSR > BOQ & Document}


        PAT BOQ Submitted Sub Project           ${Test Interface Send/Approve/Cancel PR PF}
        # sleep    10 seconds
    END 


# [24] สามารถทำรายการ PAT BOQ Submitted Step ได้
#     [Documentation]       สามารถทำรายการ PAT BOQ Submitted Step ได้จนจบขั้นตอน
#     [Tags]    Standard_Test
#     Click Menu List
#     Select Menu                             ${Todo list Menu ID}
#     # To Do List Serach SSR ID                ${SSR ID PAT BOQ Submitted By Pass}       
#     To Do List Serach SSR ID                ${SSR ID PAT BOQ Submitted}
#     To Do Click Serach SSR ID
#     Selected SSR ID
#     Page Should Contains                    ${SSR > BOQ & Document}
#     PAT BOQ Submitted Sub Project           ${Test Interface Send/Approve/Cancel PR PF}
#     PAT BOQ Submitted Sub Project Click Serach
#     PAT BOQ Submitted Standard Price        ${Standard Price 1}     ${Standard Price 2}
#     PAT BOQ Submitted Confirm Standard Price
#     PAT BOQ Submitted Input Vendor QTY       1      1
#     PAT BOQ Submitted Average Article Group     ${FACILITY Power AC}
#     PAT BOQ Submitted Average Calculate

#     ${PAT_BOQ_Submitted_Upload_file List}=    Get Column Values By Name    PAT_BOQ_Submitted_Upload_file

#     ${PAT_BOQ_Submitted_Upload_file path}=    Catenate    SEPARATOR=     ${CURDIR}/../../../data file/    ${PAT_BOQ_Submitted_Upload_file List[${i - 1}]}
#     Set Test Variable    ${PAT_BOQ_Submitted_Upload_file path}
#     ${PAT_BOQ_Submitted_Upload_file path}=    Normalize Path    ${PAT_BOQ_Submitted_Upload_file path}
#     Log    ${PAT_BOQ_Submitted_Upload_file path}

#     PAT BOQ Submitted Add Picture           ${PAT_BOQ_Submitted_Upload_file path}
#     PAT BOQ Submitted Save
#     ${SSR ID PAT BOQ Verify}=    Result Massage Data recorded        ${PAT/BOQ Submitted Result Massage} 
#     Set Global Variable     ${SSR ID PAT BOQ Verify}
#     Log    PAT BOQ Submitted เลขที่ดึงออกมา: ${SSR ID PAT BOQ Verify}
#     sleep    1 seconds
#     Write Value To Excel Status             TC_${i - 1}${i - 1}8 PAT BOQ Submitted

# [25] สามารถกดออกจากระบบ Transporter ได้
#     [Documentation]       สามารถกดออกจากระบบ Transporter ได้
#     [Tags]    Standard_Test
#     Log Out

# [26] สามารถล็อคอินเข้าสู่ระบบ Transporter ได้
#     [Documentation]       สามารถล็อคอินเข้าสู่ระบบ Transporter ได้
#     [Tags]    Standard_Test
#     Transporter_Login       ${PAT BOQ Verify USER}        ${PAT BOQ Verify PASS}  
#     Welcome Page Should Be Open       ${LOGIN TITLE} 
#     sleep    1 seconds

# [27] สามารถทำรายการ PAT BOQ Verify Step ได้
#     [Documentation]       สามารถทำรายการ PAT BOQ Verify Step ได้จนจบขั้นตอน
#     [Tags]    Standard_Test
#     Click Menu List
#     Select Menu                             ${Todo list Menu ID}
#     # To Do List Serach SSR ID                ${SSR ID PAT BOQ Verify By Pass}    
#     To Do List Serach SSR ID                ${SSR ID PAT BOQ Verify}
#     To Do Click Serach SSR ID
#     Selected SSR ID
#     Page Should Contains                    ${SSR > BOQ Verified}
#     PAT/BOQ Verify Pass And Fail            ${Verify Pass Case}
#     PAT/BOQ Verify Save Case
#     ${SSR ID PAT BOQ Approved}=    Result Massage Data recorded        ${PAT/BOQ Verify Result Massage}
#     Set Global Variable     ${SSR ID PAT BOQ Approved}
#     Log    PAT BOQ Verify เลขที่ดึงออกมา: ${SSR ID PAT BOQ Approved}
#     sleep    1 seconds
#     Write Value To Excel Status             TC_${i - 1}${i - 1}9 PAT BOQ Verify

# [28] สามารถกดออกจากระบบ Transporter ได้
#     [Documentation]       สามารถกดออกจากระบบ Transporter ได้
#     [Tags]    Standard_Test
#     Log Out

# [29] สามารถล็อคอินเข้าสู่ระบบ Transporter ได้
#     [Documentation]       สามารถล็อคอินเข้าสู่ระบบ Transporter ได้
#     [Tags]    Standard_Test
#     Transporter_Login       ${PAT BOQ Approved USER}        ${PAT BOQ Approved PASS}  
#     Welcome Page Should Be Open         ${LOGIN TITLE} 
#     sleep    1 seconds

# [3${i - 1}] สามารถทำรายการ PAT/BOQ Approved ได้
#     [Documentation]       สามารถทำรายการ PAT/BOQ Approved ได้จนจบขั้นตอน
#     [Tags]    Standard_Test
#     Click Menu List
#     Select Menu                             ${Todo list Menu ID}
#     # To Do List Serach SSR ID                ${SSR ID PAT BOQ Approved By Pass}    
#     To Do List Serach SSR ID                ${SSR ID PAT BOQ Approved}
#     To Do Click Serach SSR ID
#     Selected SSR ID
#     Page Should Contains                    ${SSR > BOQ Approved}
#     PAT/BOQ Approved Select Approved Rejected       ${BOQ Approved Approved Case}
#     PAT/BOQ Approved Save
#     ${SSR ID GR Approved}=    Result Massage Data recorded        ${BOQ Approved Result Massage}
#     Set Global Variable     ${SSR ID GR Approved}
#     sleep    1 seconds
#     Write Value To Excel Status             TC_${i - 1}10 PAT BOQ Approved

# [31] สามารถเข้าเมนู SSR Tracking ได้
#     [Documentation]       สามารถเข้าเมนู SSR Tracking เพื่อเช็คเลข Pre-PR No ได้
#     [Tags]    Standard_Test
#     Click Menu List
#     Select Menu                             ${SSR Tracking Menu ID}
#     Search SSR ID Tracking                  ${SSR ID GR Approved}
#     # Search SSR ID Tracking                  ${SSR ID GR Approved By Pass}
#     Click SSR Search Button   
#     Select SSR ID
#     Page Should Contains                    ${SSR Tracking > View}
#     ${Pre PR No}=   Buffer Pre-PR
#     Set Global Variable     ${Pre PR No}
#     Write Value Pre PR      ${Pre PR No}
#     Log      Pre PR>>>>>: ${Pre PR No}
#     Write Value To Excel Status             TC_${i - 1}11 Buffer Pre-PR No
#     # sleep    5 seconds

# [32] สามารถกดออกจากระบบ Transporter ได้
#     [Documentation]       สามารถกดออกจากระบบ Transporter ได้
#     [Tags]       Standard_Test
#     Log Out
#     Close Browser

# [33] สามารถล็อคอินเข้าสู่ระบบ My Net-Work Stagging ได้
#     [Documentation]       สามารถล็อคอิน My Net-Work Stagging และทำการตรวจเลข PO ได้
#     [Tags]       Standard_Test
#     Open Browser To My net-work
#     Welcome Page Should Be Open     ${LOGIN TITLE MY NETWORK}
#     Login Mynetwork         ${Mynetwork User}     ${Mynetwork Pass} 
#     sleep    3 seconds
#     Select Mynetwork Menu
#     Select Mynetwork Sub Menu             ${Pre PR}
#     Select Mynetwork Sub Menu             ${Search Pre PR}
#     Mynetwork Serach Doc ID               ${Pre PR No}     
#     # Mynetwork Serach Doc ID               ${Mynetwork Pre PR No By Pass} 
#     Mynetwork Click Serach Doc ID
#     Mynetwork Click View Pre-PR
#     # sleep    5 seconds
#     ${PO Number}=   Get PO Detail
#     Set Global Variable     ${PO Number}
#     Write Value PO      ${PO Number}
#     sleep    1 seconds
#     Write Value To Excel Status             TC_${i - 1}12 My network Steps

# [34] ทำการปิด Browser My Net-Work
#     [Documentation]       ทำการปิด Browser My Net-Work
#     [Tags]      Standard_Test
#     Close Browser
#     # Write Value To Excel Result Phase 1             Execution Phase 1 Pass

# [35] ทำการรอ Approved 2 นาที
#     [Documentation]       ทำการรอ Approved 2 นาทีจากขั้นตอน PAT/BOQ Approved
#     [Tags]      Standard_Test
#     sleep    12${i - 1} seconds

# [36] สามารถเปิดเว็บ Transporter ได้
#     [Documentation]       Open Browser To Web Transporter
#     [Tags]      Standard_Test
#     Close Browser
#     Open Browser To Login Page
#     Your connection is not private

# [37] สามารถล็อคอินเข้าสู่ระบบ Transporter ได้
#     [Documentation]       สามารถล็อคอินเข้าสู่ระบบ Transporter ได้
#     [Tags]      Standard_Test
#     Transporter_Login       ${GR Approved USER}         ${GR Approved PASS}  
#     Welcome Page Should Be Open       ${LOGIN TITLE} 
#     sleep    1 seconds

# [38] สามารถเข้าเมนู SSR Tracking ได้
#     [Documentation]       สามารถเข้าเมนู SSR Tracking ได้ และตรวจสอบสถานะ PAT/BOQ Approved
#     [Tags]      Standard_Test

#     ${SSR ID List}=    Get Column Values By Name    SSR_ID
#     ${SSR ID}=    Set Variable    ${SSR ID List[${i - 1}]}
#     Set Test Variable       ${SSR ID}

#     Click Menu List
#     Select Menu                             ${SSR Tracking Menu ID}
#     Search SSR ID Tracking      ${SSR ID}
#     Click SSR Search Button 
#     Select SSR ID
#     Checking PDF Icon PAT/BOQ Approved
#     Close Browser

# [39] สามารถทำรายการ Load PO ได้
#     [Documentation]       สามารถทำรายการ Load PO ได้จนจบขั้นตอน
#     [Tags]      Standard_Test
#     Open Browser To test-mynetwork-asset
#     Login AMM Mynetwork             ${AMM USER}
    
#     ${PO Number List}=    Get Column Values By Name    PO
#     ${PO Number}=    Set Variable    ${PO Number List[${i - 1}]}
#     Set Test Variable       ${PO Number}

#     AMM Mynetwork Load PO           ${PO Number}
#     sleep    1 seconds
#     # AMM Mynetwork Load PO           ${PO Number By Pass}
#     AMM Check Text Results          
#     Write Value To Excel Status             TC_${i - 1}13 AMM Steps

# [4${i - 1}] ทำการปิด Browser My Net-Work
#     [Documentation]       ทำการปิด Browser My Net-Work
#     [Tags]      Standard_Test
#     Close Browser

# [41] ทำการเปิด Browser AMM ได้
#     [Documentation]       ทำการเปิด Browser AMM และทำการ Run Batch ได้
#     [Tags]      Standard_Test
#     Open Browser To Mynetwork AMM Test SGAdd New
#     AMM Test SGAdd New
#     AMM Mynetwork Gateway Run Batch
#     AMM Run BATCH_CREATE_GR_TO_TPT
#     Write Value To Excel Status             TC_${i - 1}14 Run BATCH_CREATE_GR_TO_TPT

# [42] ทำการปิด Browser AMM
#     [Documentation]       ทำการปิด Browser AMM ได้
#     [Tags]      Standard_Test
#     Close Browser

# [43] ทำการเปิด Browser Transporter
#     [Documentation]       ทำการเปิด Browser Transporter
#     [Tags]      Standard_Test
#     Open Browser To Login Page
#     Your connection is not private

# [44] สามารถล็อคอินเข้าสู่ระบบ Transporter ได้
#     [Documentation]       สามารถล็อคอินเข้าสู่ระบบ Transporter ได้
#     [Tags]      Standard_Test
#     Transporter_Login       ${GR Approved USER}         ${GR Approved PASS}  
#     Welcome Page Should Be Open       ${LOGIN TITLE} 
#     sleep    5${i - 1} seconds

# [45] สามารถทำรายการ GR Approved ได้
#     [Documentation]       สามารถทำรายการ GR Approved ได้จนจบขั้นตอน
#     [Tags]      Standard_Test
#     Click Menu List
#     Select Menu                             ${Todo list Menu ID}
#     # To Do List Serach SSR ID                ${SSR ID GR Approved By Pass}

#     ${SSR ID GR Approved List}=    Get Column Values By Name    SSR_ID
#     ${SSR ID GR Approved}=    Set Variable    ${SSR ID GR Approved List[${i - 1}]}
#     Set Test Variable       ${SSR ID GR Approved}

#     To Do List Serach SSR ID                ${SSR ID GR Approved}
#     To Do Click Serach SSR ID
#     Selected SSR ID
#     GR Approved
#     GR Approved Case
#     GR Approved Save Case
#     ${SSR ID FAT Permission Submitted}=    Result Massage Data recorded        ${GR Approved Result Massage}
#     Set Global Variable     ${SSR ID FAT Permission Submitted}
#     sleep    1 seconds
#     Write Value To Excel Status             TC_${i - 1}15 GR Approved

# [46] สามารถกดออกจากระบบ Transporter ได้
#     [Documentation]       สามารถกดออกจากระบบ Transporter ได้
#     [Tags]      Standard_Test
#     Log Out

# [47] ทำการรอ GR Approved 1.3${i - 1} นาที
#     [Documentation]       ทำการรอ GR Approved 1.3${i - 1} นาที
#     [Tags]      Standard_Test
#     sleep    9${i - 1} seconds

# [48] สามารถล็อคอินเข้าสู่ระบบ Transporter ได้
#     [Documentation]       สามารถล็อคอินเข้าสู่ระบบ Transporter ได้
#     [Tags]      Standard_Test
#     Transporter_Login       ${FAT Permission Submitted USER}         ${FAT Permission Submitted PASS} 
#     Welcome Page Should Be Open       ${LOGIN TITLE} 
#     sleep    1 seconds

# [49] สามารถทำรายการ FAT/Permission Submitted ได้
#     [Documentation]       สามารถทำรายการ FAT/Permission Submitted ได้จนจบขั้นตอน
#     [Tags]      Standard_Test
#     Click Menu List
#     Select Menu                             ${Todo list Menu ID}
#     # To Do List Serach SSR ID                ${SSR ID FAT Permission Submitted By Pass}            #${SSR ID Approval 1}
#     To Do List Serach SSR ID                ${SSR ID FAT Permission Submitted}
#     To Do Click Serach SSR ID
#     Selected SSR ID
#     Page Should Contains                    ${SSR > FAT Submitted}

#     ${FAT_Permission_Submitted_Upload_file List}=    Get Column Values By Name    FAT_Permission_iGIS_Submitted_Upload_file

#     ${FAT_Permission_Submitted_Upload_file Path}=    Catenate    SEPARATOR=     ${CURDIR}/../../../data file/    ${FAT_Permission_Submitted_Upload_file List[${i - 1}]}
#     Set Test Variable    ${FAT_Permission_Submitted_Upload_file Path}
#     ${FAT_Permission_Submitted_Upload_file Path}=    Normalize Path    ${FAT_Permission_Submitted_Upload_file Path}
#     Log    ${FAT_Permission_Submitted_Upload_file Path}

#     FAT Permission Submitted Add File           ${FAT_Permission_Submitted_Upload_file Path}
#     FAT Permission Submitted Save

#     ${SSR ID FAT Permission Approved}=    Result Massage Data recorded        ${FAT Permission Submitted Result Massage}
#     Set Global Variable     ${SSR ID FAT Permission Approved}
#     sleep    1 seconds
#     Write Value To Excel Status             TC_${i - 1}16 FAT/Permission Submitted

# [5${i - 1}] สามารถกดออกจากระบบ Transporter ได้
#     [Documentation]       สามารถกดออกจากระบบ Transporter ได้
#     [Tags]      Standard_Test
#     Log Out

# [51] สามารถล็อคอินเข้าสู่ระบบ Transporter ได้
#     [Documentation]       สามารถล็อคอินเข้าสู่ระบบ Transporter ได้
#     [Tags]      Standard_Test
#     Transporter_Login       ${FAT Permission Approved USER}         ${FAT Permission Approved PASS} 
#     Welcome Page Should Be Open       ${LOGIN TITLE}
#     sleep    1 seconds

# [52] สามารถทำรายการ FAT/Permission Approved ได้
#     [Documentation]       FAT/Permission Approved
#     [Tags]      Standard_Test
#     Click Menu List
#     Select Menu                             ${Todo list Menu ID}
#     # To Do List Serach SSR ID                ${SSR ID FAT Permission Approved By Pass}
#     To Do List Serach SSR ID                ${SSR ID FAT Permission Approved}
#     To Do Click Serach SSR ID
#     Selected SSR ID
#     Page Should Contains                    ${SSR > FAT Approved} 
#     FAT/Permission Approved
#     FAT/Permission Approved Save

#     ${SSR ID FAT Permission Approved}=    Result Massage Data recorded        ${FAT Permission Approved Result Massage}  
#     Set Global Variable     ${SSR ID FAT Permission Approved}
#     sleep    1 seconds
#     Write Value To Excel Status             TC_${i - 1}17 FAT/Permission Approved 
    
# [53] ทำการตรวจสอบขั้นตอนทั้งหมด
#     [Documentation]       ทำการตรวจสอบขั้นตอนทั้งหมดและทำการรายงานผล
#     [Tags]      Standard_Test
#     Click Menu List
#     Select Menu                             ${SSR Tracking Menu ID}
#     Search SSR ID Tracking      ${SSR ID FAT Permission Approved}
#     Click SSR Search Button
#     Select SSR ID
#     Check Process Status        ${Process Status Checking Step 12} 
#     Write Value To Excel Result            Pass
