*** Settings ***
Library           SeleniumLibrary
Library           BuiltIn
Resource          ${CURDIR}/../../../resources/resources.robot


*** Test Cases ***
ทดสอบระบบการทำงานของ Transporter : Type Non Turnkey [Small Cell for TPT III]
    [Documentation]     สามารถทำงาน Transporter : Type Non Turnkey [Small Cell for TPT III] ได้
    [Tags]      Standard_Test
    Log      เริ่มการทำงาน Transporter : Type Non Turnkey [Small Cell for TPT III]
    Open Workbook    ${SOURCE_FILE For Small Cell}
    ${table}=    Read Worksheet As Table    name=${SHEET_NAME}    header=True
    ${row_count}=    Get Length    ${table}
    FOR    ${i}    IN RANGE    1    ${row_count + 1}
        Open Browser To Login Page
        TRY
            ${Test_Case_ID List}=    Get Column Values By Name File    ${SOURCE_FILE For Small Cell}     Test_Case_ID       
            ${Test_Case_ID}=    Set Variable    ${Test_Case_ID List[${i - 1}]}

            Log   === เริ่มการทำงาน Test Case ID : ${Test_Case_ID} ===
            Clear Excel Value File                  ${SOURCE_FILE For Small Cell}           ${i + 1}
            Gennerate Reference Site Code File      ${SOURCE_FILE For Small Cell}           ${i + 1}
            Prepare the template file data For Small Cell          ${SOURCE_FILE For Small Cell}           ${DESTINATION_FILE For Small Cell}           ${i + 1}
            # log    ${FULL_TIMESTAMP}
            Write Value Running Date File           ${SOURCE_FILE For Small Cell}      ${i + 1}
            Write Value From Column Name            ${SOURCE_FILE For Small Cell}      ${i + 1}       Result                 Fail
            # Write Value From Column Name            ${SOURCE_FILE For Small Cell}      ${i + 1}       Run_Status             ${i}
            
            #Login SSR Create
            Your connection is not private
            Transporter_Login       ${SSR Create Code USER}      ${SSR Create Code PASS}
            Welcome Page Should Be Open     ${LOGIN TITLE} 
            sleep    1 seconds

            #[1] สามารถกดเมนู Site Management Menu และ สามารถกด Create Draft Site Code Menu ได้
            Click Menu List
            Select Menu                     ${Site Management Menu ID}
            Select Menu                     ${Create Draft Site Code Menu ID}
            Click Import 
            Click Search Proforma No
            
            ${Proferma No List}=    Get Column Values By Name File    ${SOURCE_FILE For Small Cell}     Proferma_No       
            ${Proferma No}=    Set Variable    ${Proferma No List[${i - 1}]}
            Log    Proferma No :>>>${Proferma No}
            
            Search Proforma No              ${Proferma No}
            Click Budget Check List

            ${Purchase Cat Group List}=    Get Column Values By Name File    ${SOURCE_FILE For Small Cell}     Purchase Cat Group       
            ${Purchase Cat Group}=    Set Variable    ${Purchase Cat Group List[${i - 1}]}
            Log    Purchase Cat Group :>>>${Purchase Cat Group}

            ${Purchase Cat List}=    Get Column Values By Name File    ${SOURCE_FILE For Small Cell}     Purchase Cat       
            ${Purchase Cat}=    Set Variable    ${Purchase Cat List[${i - 1}]}
            Log    Purchase Cat :>>>${Purchase Cat}

            ${Action Type List}=    Get Column Values By Name File    ${SOURCE_FILE For Small Cell}     Action Type     
            ${Action Type}=    Set Variable    ${Action Type List[${i - 1}]}
            Log    Action Type :>>>${Action Type}

            ${System Type List}=    Get Column Values By Name File    ${SOURCE_FILE For Small Cell}     System Type     
            ${System Type}=    Set Variable    ${System Type List[${i - 1}]}
            Log    System Type :>>>${System Type}

            ${Service Code List}=    Get Column Values By Name File    ${SOURCE_FILE For Small Cell}     Service Code     
            ${Service Code}=    Set Variable    ${Service Code List[${i - 1}]}
            Log    Service Code :>>>${Service Code}

            ${Company Code List}=    Get Column Values By Name File    ${SOURCE_FILE For Small Cell}     Company Code     
            ${Company Code}=    Set Variable    ${Company Code List[${i - 1}]}
            Log    Company Code :>>>${Company Code}

            Search Budget Check List        ${Purchase Cat Group}    ${Purchase Cat}  ${Action Type}   ${System Type}    ${Service Code}   ${Company Code} 
            Clck Search Purchase
            Select Purchase Cat Group
            Click Search Procurator

            ${Procurator Workflow Type List}=    Get Column Values By Name File    ${SOURCE_FILE For Small Cell}     Procurator Workflow Type     
            ${Procurator Workflow Type}=    Set Variable    ${Procurator Workflow Type List[${i - 1}]}
            Log    Procurator Workflow Type :>>>${Procurator Workflow Type}

            ${Procurator SSR Type List}=    Get Column Values By Name File    ${SOURCE_FILE For Small Cell}     Procurator SSR Type     
            ${Procurator SSR Type}=    Set Variable    ${Procurator SSR Type List[${i - 1}]}
            Log    Procurator SSR Type :>>>${Procurator SSR Type}

            ${Procurator Region List}=    Get Column Values By Name File    ${SOURCE_FILE For Small Cell}     Procurator Region     
            ${Procurator Region}=    Set Variable    ${Procurator Region List[${i - 1}]}
            Log    Procurator Region :>>>${Procurator Region}

            Search Procurator               ${Procurator Workflow Type}    ${Procurator SSR Type}   ${Procurator Region} 

            ${Import Site Template File List}=    Get Column Values By Name File    ${SOURCE_FILE For Small Cell}       Import_Site_Template_File

            ${Import_Site_Template path}=    Catenate    SEPARATOR=     ${CURDIR}/data file/    ${Import Site Template File List[${i - 1}]}
            Set Test Variable    ${Import_Site_Template path}
            ${Import_Site_Template path}=    Normalize Path    ${Import_Site_Template path}
            Log    ${Import_Site_Template path}

            Import Type                     ${Import_Site_Template path}
            Upload Site
            ${SSR ID Reference Site Code}=    Reference Site Code
            Set Global Variable     ${SSR ID Reference Site Code}
            Log      Reference Site Code เลขที่ดึงออกมา: ${SSR ID Reference Site Code}
            Write Value From Column Name       ${SOURCE_FILE For Small Cell}      ${i + 1}       Reference_Site_Code     ${SSR ID Reference Site Code}
            sleep    1 seconds
            Write Value From Column Name       ${SOURCE_FILE For Small Cell}      ${i + 1}       Run_Status              Create Draft Site Code

            #[2] สามารถทำรายการ SSR Submitted ได้จนจบขั้นตอน
            Click Menu List
            Select Menu                         ${SSR Create Menu ID}
            SSR Search Site Workflow Type       ${Small Cell for TPT III Auto PO}
            SSR Search Reference Site Code      ${SSR ID Reference Site Code}   
            # SSR Search Reference Site Code      ${SSR ID Reference Site Code By Pass}
            SSR Click Search Reference Site Code
            SSR Select Reference Site Code
            Wait Until Page Contains         SSR > SSR Submitted New      timeout=15s

            ${SSR Submitted Picture List}=    Get Column Values By Name File        ${SOURCE_FILE For Small Cell}       SSR_Submitted_Upload_File
            ${SSR Submitted Picture}=    Catenate    SEPARATOR=     ${CURDIR}/data file/    ${SSR Submitted Picture List[${i - 1}]}
            Set Test Variable    ${SSR Submitted Picture}
            ${SSR Submitted Picture}=    Normalize Path    ${SSR Submitted Picture}
            Log    ${SSR Submitted Picture}

            SSR Submitted Add Picture       ${SSR Submitted Picture}
            SSR Submitted Save

            ${SSR ID Approval I}=    Result Massage Data recorded        ${SSR Submitted Result Massage}
            Set Global Variable     ${SSR ID Approval I}
            Log    SSR ID Approval เลขที่ดึงออกมา: ${SSR ID Approval I}
            sleep    1 seconds
            Write Value From Column Name       ${SOURCE_FILE For Small Cell}      ${i + 1}       SSR_ID                  ${SSR ID Approval I}
            Write Value From Column Name       ${SOURCE_FILE For Small Cell}      ${i + 1}       Run_Status              SSR Create

            #[3] สามารถทำรายการ Process SSR Approval 1 ได้
            Click Menu List
            Select Menu                             ${Todo list Menu ID}
            # To Do List Serach SSR ID                ${SSR ID Approval 1 By Pass}
            To Do List Serach SSR ID                ${SSR ID Approval I}
            To Do Click Serach SSR ID
            Selected SSR ID

            Page Should Contains                    ${SSR > SSR Approval}  
            SSR Approval Approved Or Rejected       ${SSR Approved Case}
            SSR Approval Click Save

            ${SSR ID Drawing Submitted}=    Result Massage Data recorded        ${SSR Approval Result Massage}
            Set Global Variable         ${SSR ID Drawing Submitted}
            Log    SSR ID Drawing Submitted เลขที่ดึงออกมา: ${SSR ID Drawing Submitted}
            sleep    1 seconds
            Write Value From Column Name       ${SOURCE_FILE For Small Cell}      ${i + 1}       Run_Status              SSR Approval 1
            Log Out

            #[4] สามารถทำรายการ Drawing Submitted ได้
            Transporter_Login       ${Drawing Submitted USER}      ${Drawing Submitted PASS}
            Welcome Page Should Be Open     ${LOGIN TITLE} 
            sleep    1 seconds
            Click Menu List
            Select Menu                             ${Todo list Menu ID}
            # To Do List Serach SSR ID                ${SSR ID Drawing Submitted By Pass}
            To Do List Serach SSR ID                ${SSR ID Drawing Submitted}
            To Do Click Serach SSR ID
            Selected SSR ID

            ${Drawing_Submitted List}=    Get Column Values By Name File        ${SOURCE_FILE For Small Cell}       Drawing_Submitted_Upload_File
            ${Drawing_Submitted Picture}=    Catenate    SEPARATOR=     ${CURDIR}/data file/    ${Drawing_Submitted List[${i - 1}]}
            Set Test Variable    ${Drawing_Submitted Picture}
            ${Drawing_Submitted Picture}=    Normalize Path    ${Drawing_Submitted Picture}
            Log    ${Drawing_Submitted Picture}

            Drawing Submitted Add Picture       ${Drawing_Submitted Picture}
            Drawing Submitted Save

            ${Drawing Approved 1}=    Result Massage Data recorded        ${Drawing Submitted Result Massage} 
            Set Global Variable         ${Drawing Approved 1}
            Log    SSR ID Drawing Approved 1 เลขที่ดึงออกมา: ${Drawing Approved 1}
            sleep    1 seconds
            Write Value From Column Name       ${SOURCE_FILE For Small Cell}      ${i + 1}       Run_Status              Drawing Submitted
            Log Out

            #[5] สามารถทำรายการ Drawing Approved 1 And Drawing Approved 2 ได้
            Transporter_Login       ${Drawing Approved 1 USER}      ${Drawing Approved 1 PASS}
            Welcome Page Should Be Open     ${LOGIN TITLE} 
            sleep    1 seconds

            Click Menu List
            Select Menu                             ${Todo list Menu ID}
            # To Do List Serach SSR ID                ${Drawing Approved By Pass}
            To Do List Serach SSR ID                ${Drawing Approved 1}
            To Do Click Serach SSR ID
            Selected SSR ID

            Drawing Approved 1 Case         ${Drawing Approved 1 Approved Case}
            Drawing Approved 2 Case         ${Drawing Approved 2 Approved Case}
            Drawing Approved Save

            ${BOQ And Document}=    Result Massage Data recorded        ${Drawing Approved Result Massage} 
            Set Global Variable         ${BOQ And Document}
            Log    SSR ID BOQ And Document เลขที่ดึงออกมา: ${BOQ And Document}
            sleep    1 seconds
            Write Value From Column Name       ${SOURCE_FILE For Small Cell}      ${i + 1}       Run_Status              Drawing Approved 1
            Log Out

            #[6] สามารถทำรายการ BOQ & Document ได้
            Transporter_Login       ${BOQ And Document USER}      ${BOQ And Document PASS}
            Welcome Page Should Be Open     ${LOGIN TITLE} 
            sleep    1 seconds
            Click Menu List
            Select Menu                             ${Todo list Menu ID}
            # To Do List Serach SSR ID                ${BOQ And Document By Pass}
            To Do List Serach SSR ID                ${BOQ And Document}
            To Do Click Serach SSR ID
            Selected SSR ID

            BOQ & Document Select Sub Project       ${Test Interface Send/Approve/Cancel PR}
            BOQ & Document Search Standard Price    ${BOQ And Document Table 1}         ${BOQ And Document Table 3}
            BOQ & Document Standard Price           1           1       ${BASE STATION->ANTENNA}

            ${BOQ_Document List}=    Get Column Values By Name File        ${SOURCE_FILE For Small Cell}       BOQ_Document_Upload_File
            ${BOQ_Document Picture}=    Catenate    SEPARATOR=     ${CURDIR}/data file/    ${BOQ_Document List[${i - 1}]}
            Set Test Variable    ${BOQ_Document Picture}
            ${BOQ_Document Picture}=    Normalize Path    ${BOQ_Document Picture}
            Log    ${BOQ_Document Picture}

            BOQ & Document Add Picture              ${BOQ_Document Picture}    
            BOQ & Document Save

            ${BOQ Verified}=    Result Massage Data recorded        ${BOQ And Document Result Massage} 
            Set Global Variable         ${BOQ Verified}
            Log    SSR ID BOQ & Document เลขที่ดึงออกมา: ${BOQ Verified}
            sleep    1 seconds
            Write Value From Column Name       ${SOURCE_FILE For Small Cell}      ${i + 1}       Run_Status              BOQ & Document
            Log Out

            #[7] สามารถทำรายการ BOQ Verified ได้
            Transporter_Login       ${BOQ Verified USER}      ${BOQ Verified PASS}
            Welcome Page Should Be Open     ${LOGIN TITLE} 
            sleep    1 seconds
            Click Menu List
            Select Menu                             ${Todo list Menu ID}
            # To Do List Serach SSR ID                ${BOQ Verified By Pass}
            To Do List Serach SSR ID                ${BOQ Verified}
            To Do Click Serach SSR ID
            Selected SSR ID

            BOQ Verified                            ${BOQ Verified Pass Case}
            BOQ Verified Save

            ${BOQ Approved}=    Result Massage Data recorded        ${BOQ And Document Result Massage} 
            Set Global Variable         ${BOQ Approved}
            Log    SSR ID BOQ Approved เลขที่ดึงออกมา: ${BOQ Approved}
            sleep    1 seconds
            Write Value From Column Name       ${SOURCE_FILE For Small Cell}      ${i + 1}       Run_Status              BOQ Verified
            Log Out

            #[8] สามารถทำรายการ BOQ Approved ได้
            Transporter_Login       ${BOQ Approved USER}      ${BOQ Approved PASS}
            Welcome Page Should Be Open     ${LOGIN TITLE} 
            sleep    1 seconds
            Click Menu List
            Select Menu                             ${Todo list Menu ID}
            # To Do List Serach SSR ID                ${BOQ Verified By Pass}
            To Do List Serach SSR ID                ${BOQ Verified}
            To Do Click Serach SSR ID
            Selected SSR ID

            sleep    1 seconds
            BOQ Approved                            ${BOQ Approved Approved Case}
            BOQ Approved Save

            ${GR Approved}=    Result Massage Data recorded        ${BOQ And Document Result Massage} 
            Set Global Variable         ${GR Approved}
            Log    SSR ID GR Approved เลขที่ดึงออกมา: ${GR Approved}
            sleep    1 seconds
            Write Value From Column Name       ${SOURCE_FILE For Small Cell}      ${i + 1}       Run_Status              BOQ Approved
            
            #[9] Get Pre PR
            Click Menu List
            Select Menu                             ${SSR Tracking Menu ID}
            Search SSR ID Tracking                  ${GR Approved}
            # Search SSR ID Tracking                  ${SSR ID GR Approved By Pass}
            Click SSR Search Button   
            Select SSR ID
            Page Should Contains                    ${SSR Tracking > View}
            ${Pre PR No}=   Buffer Pre-PR Small Cell
            Set Global Variable     ${Pre PR No}
            Write Value Pre PR File                 ${SOURCE_FILE For Small Cell}       ${Pre PR No}
            Log      Pre PR>>>>>: ${Pre PR No}
            Write Value From Column Name       ${SOURCE_FILE For Small Cell}      ${i + 1}       Run_Status              SSR Tracking Get PO
            Log Out
            Close Browser  

            #[10] สามารถล็อคอิน My Net-Work Stagging และทำการตรวจเลข PO ได้
            Open Browser To My net-work
            Welcome Page Should Be Open     ${LOGIN TITLE MY NETWORK}
            Login Mynetwork         ${Mynetwork User}     ${Mynetwork Pass} 
            sleep    3 seconds
            Select Mynetwork Menu
            Select Mynetwork Sub Menu             ${Pre PR}
            Select Mynetwork Sub Menu             ${Search Pre PR}
            Mynetwork Serach Doc ID               ${Pre PR No}     
            # Mynetwork Serach Doc ID               ${Mynetwork Pre PR No By Pass} 
            Mynetwork Click Serach Doc ID
            Mynetwork Click View Pre-PR
            # sleep    5 seconds
            ${PO Number}=   Get PO Detail
            Set Global Variable     ${PO Number}

            Write Value From Column Name       ${SOURCE_FILE For Small Cell}      ${i + 1}       PO                     ${PO Number}
            sleep    1 seconds
            Write Value From Column Name       ${SOURCE_FILE For Small Cell}      ${i + 1}       Run_Status             My Net-Work Stagging
            Close Browser

            #AMM Steps
            Open Browser To test-mynetwork-asset
            Login AMM Mynetwork             ${AMM USER}
            
            ${PO Number List}=    Get Column Values By Name File    ${SOURCE_FILE For Small Cell}       PO
            ${PO Number}=    Set Variable    ${PO Number List[${i - 1}]}
            Set Test Variable       ${PO Number}

            AMM Mynetwork Load PO           ${PO Number}
            sleep    1 seconds
            # AMM Mynetwork Load PO           ${PO Number By Pass}
            AMM Check Text Results  
            Write Value From Column Name       ${SOURCE_FILE For Small Cell}      ${i + 1}       Run_Status              AMM Steps
            Close Browser

            #[11] ทำการเปิด Browser AMM และทำการ Run Batch ได้
            Open Browser To Mynetwork AMM Test SGAdd New
            AMM Test SGAdd New
            AMM Mynetwork Gateway Run Batch
            AMM Run BATCH_CREATE_GR_TO_TPT
            Write Value From Column Name       ${SOURCE_FILE For Small Cell}      ${i + 1}       Run_Status              Run BATCH_CREATE_GR_TO_TPT
            Close Browser

            #[12] สามารถทำรายการ GR Approved ได้
            Open Browser To Login Page
            Your connection is not private
            Transporter_Login       ${GR Approved USER}         ${GR Approved PASS}  
            Welcome Page Should Be Open       ${LOGIN TITLE} 
            sleep    30 seconds
            Click Menu List
            Select Menu                             ${Todo list Menu ID}
            # To Do List Serach SSR ID                ${SSR ID GR Approved By Pass}

            ${SSR ID GR Approved List}=    Get Column Values By Name File       ${SOURCE_FILE For Small Cell}           SSR_ID
            ${SSR ID GR Approved}=    Set Variable    ${SSR ID GR Approved List[${i - 1}]}
            Set Test Variable       ${SSR ID GR Approved}

            To Do List Serach SSR ID                ${SSR ID GR Approved}
            To Do Click Serach SSR ID
            Selected SSR ID
            GR Approved
            GR Approved Case
            GR Approved Save Case
            ${SSR ID FAT Permission Submitted}=    Result Massage Data recorded        ${GR Approved Result Massage}
            Set Global Variable     ${SSR ID FAT Permission Submitted}
            sleep    1 seconds
            Write Value From Column Name       ${SOURCE_FILE For Small Cell}      ${i + 1}       Run_Status              GR Approved
            sleep    60 seconds

            #[13] ตรวจสอบผลการรันทั้งหมด
            Click Menu List
            Select Menu                             ${SSR Tracking Menu ID}
            # Search SSR ID Tracking      ${SSR ID FAT Permission Submitted By Pass}
            Search SSR ID Tracking      ${SSR ID FAT Permission Submitted}
            Click SSR Search Button 
            Select SSR ID
            Check Process Status        ${Process Status Checking Step 9}
            Write Value From Column Name       ${SOURCE_FILE For Small Cell}      ${i + 1}       Result              Pass
            # Write Value To Excel Result File        ${SOURCE_FILE For Small Cell}       Pass
            
            Log Out
            Close Browser
            Log    === จบการทำงาน ===
        EXCEPT
            Log    !!! ERROR in round ${i} — skipping rest of this round
            Close Browser
            Log    === จบการทำงาน ===
            CONTINUE
        END
    END

    Close Workbook