*** Settings ***
Library           SeleniumLibrary
Resource          ../../../resources/keywords.robot
Resource          ../../../resources/variables.robot

Suite Setup       Open Browser To Login Page
# Suite Teardown    

*** Test Cases ***
# TS000 Run Headless Mode
#     Run In Headless Mode

TS001 Login
    # Open Browser To Login Page
    Your connection is not private
    Input Username    ${VALID USER}
    Input Password    ${VALID PASS}
    Click Login
    Welcome Page Should Be Open
    sleep    1 seconds

TS002 Flow Test Turnkey Import Site
    Click Menu List
    sleep    1 seconds
    Click Site Management
    Click Turnkey Import Site Menu
    Click Turnkey Import site
    Turnkey Import Site Serch Project           ${Project Name}
    Turnkey Import Site File                    ${Import Site File Path Template_Turnkey}

TS003 SSR Create And Submitted
    Click Menu List
    sleep    1 seconds
    Click SSR Create Menu
    Select SSR Workflow Type                    ${Workflow Type Equipment And Service}
    SSR Submitted New Add Pic                   ${Cat Picture}  
    SSR Check Result Massage Text

TS004 SSR Approval
    Click Menu List
    sleep    1 seconds
    Click Todo list Menu
    SSR Approval Search SSR ID                  ${Approved Case}
    SSR Approval Result

Log Out SSR Approval
    Log Out Step 

Change User Login With FBOQ/PAT/GR Submitted
    # Your connection is not private
    Input Username    ${FBOQ PAT GR Submitted USER}
    Input Password    ${FBOQ PAT GR Submitted PASS}
    Click Login
    Welcome Page Should Be Open
    sleep    1 seconds

TS005 FBOQ/PAT/GR Submitted
    Click Menu List
    sleep    1 seconds
    Click Todo list Menu
    FBOQ PAT GR Submitted                       ${Equipment And Service}
    FBOQ PAT GR Submitted Search PO             ${Submitted PO Input} 
    FBOQ PAT GR Submitted Select Article Type Cost
    FBOQ PAT GR Submitted Select Article Type Equipment
    FBOQ PAT GR Submitted Comfrim PO
    FBOQ PAT GR Submitted Receive Qty Input 1   ${Qty Input Value 1}
    FBOQ PAT GR Submitted Receive Qty Input 2   ${Qty Input Value 2}
    FBOQ PAT GR Submitted Receive Submitted Cost Average Group 1            ${Submitted Select Cost}
    FBOQ PAT GR Submitted Add Picture           ${Submitted Picture}        ${Submitted Check Added Pic ES}
    FBOQ PAT GR Submitted SSR Result

Log Out FBOQ/PAT/GR Submitted
    Log Out Step 

Change User Login With FBOQ/PAT/GR Verified
    # Your connection is not private
    Input Username    ${FBOQ PAT GR Verified USER}
    Input Password    ${FBOQ PAT GR Verified PASS}
    Click Login
    Welcome Page Should Be Open
    sleep    1 seconds

TS006 FBOQ/PAT/GR Verified
    Click Menu List
    sleep    1 seconds
    Click Todo list Menu
    FBOQ/PAT/GR Verified
    # FBOQ/PAT/GR Verified General Information Title
    FBOQ/PAT/GR Verified Pass and Fail              ${Verified Pass Case}  
    FBOQ/PAT/GR Verified SSR Result

Log Out FBOQ/PAT/GR Verified
    Log Out Step 

# Change User Login With FBOQ/PAT/GR Approve
#     # Your connection is not private
#     Input Username    ${FBOQ PAT GR Approve USER}
#     Input Password    ${FBOQ PAT GR Approve PASS}
#     Click Login
#     Welcome Page Should Be Open
#     sleep    1 seconds

# TS006 FBOQ/PAT/GR Approve
#     Click Menu List
#     sleep    1 seconds
#     Click Todo list Menu
#     FBOQ/PAT/GR Approve Search SSR ID
#     FBOQ/PAT/GR Approve SSR ID               ${FBOQ PAT GR Approved Case}
#     FBOQ/PAT/GR Approve SSR Result

# Log Out FBOQ/PAT/GR Approve
#     Log Out Step 

# Change User Login With FAT Submitted
#     # Your connection is not private
#     Input Username    ${FAT Submitted USER}
#     Input Password    ${FAT Submitted PASS}
#     Click Login
#     Welcome Page Should Be Open
#     sleep    60 seconds  #Waiting for GR process on SAP

# TS007 FAT Submitted
#     Click Menu List
#     sleep    1 seconds
#     SSR Tracking Search
#     sleep    1 seconds
#     Click Menu List
#     sleep    1 seconds
#     Click Todo list Menu
#     FAT Submitted
#     FAT Submitted Add File                      ${Cat Picture}
#     FAT Submitted Result Message

# Log Out FAT Submitted
#     Log Out Step 

# Change User Login With FAT Approve
#     # Your connection is not private
#     Input Username    ${FAT Approve USER}
#     Input Password    ${FAT Approve PASS}
#     Click Login
#     Welcome Page Should Be Open

# TS008 FAT Approve
#     Click Menu List
#     sleep    1 seconds
#     Click Todo list Menu
#     FAT Approve                 ${FAT Case Approve}
#     FAT Approve Result Massage

# Pass Reason
#     Click Menu List
#     sleep    1 seconds
#     SSR Tracking Search Pass Reason
#     sleep    1 seconds

# Log Out FAT Approve
#     Log Out Step 

# Change User Login With Job Evaluation
#     # Your connection is not private
#     Input Username    ${Job Evaluation Approve USER}
#     Input Password    ${Job Evaluation Approve PASS}
#     Click Login
#     Welcome Page Should Be Open

# TS009 Job Evaluation
#     Click Menu List
#     sleep    1 seconds
#     Click Todo list Menu
#     Job Evaluation Search Evaluate Template
#     Job Evaluation Template                    ${Quality}       ${Evaluate Template First} 
#     Job Evaluation Template                    ${Speed}         ${Evaluate Template Seconds}
#     # Job Evaluation Search Evaluate Template Quality
#     # Job Evaluation Search Evaluate Template Speed
#     Job Evaluation Search Evaluate Give a score         ${Quality Very Good}        ${Speed Very Good}
#     Job Evaluation Add Picture                 ${Cat Picture}
#     Job Evaluation Result Massage

# Check Status
#     Click Menu List
#     sleep    1 seconds
#     Check Status
