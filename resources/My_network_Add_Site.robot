*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
My network Sub Project Management
    [Arguments]     ${System}           ${Sub Project Name}
    Click Element    xpath=${Mynetwork SPM Select System}
    Click Element    xpath=${System}
    Input Text       xpath=${Mynetwork SPM Sub Project Name}      ${Sub Project Name}

My network Search Sub Project Management
    Click Element    xpath=${Mynetwork SPM Search}
    sleep    0.5 seconds

My network Edit Sub Project
    Click Element    xpath=${Sub Project Test Interface}
    Wait Until Page Contains         Sub Project Detail

My network Add Site
    [Arguments]     ${site_vendor_template}
    Wait Until Element Is Visible    xpath=${Mynetwork Add Site}      timeout=15s
    Click Element    xpath=${Mynetwork Add Site} 
    Wait Until Page Contains         Add Site
    sleep    0.5 seconds
    Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)
    Choose File      xpath=${Mynetwork Browse File}         ${site_vendor_template}
    sleep    0.5 seconds
    Click Element    xpath=${Mynetwork Upload File}

My network Add Site Result
    Wait Until Element Is Visible    xpath=${Mynetwork Upload File Result Table}      timeout=15s

    # Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)
    Scroll Element Into View        ${Mynetwork Upload File Result Table}

    ${Mynetwork Site Code Result}=    Get Text    xpath=${Mynetwork Site Code Text}
    log    ${Mynetwork Site Code Result}
    
    sleep    1 seconds
    ${Picture Folder path}=     Normalize Path      ${Picture Folder}/Add_Site_Result.png
    Capture Page Screenshot     ${Picture Folder path}
    

    Scroll Element Into View        ${Mynetwork Add Site Black BT}
    sleep    1 seconds
    Click Element    xpath=${Mynetwork Add Site Black}

    Wait Until Element Is Visible    xpath=${Mynetwork List vendor company}      timeout=15s
    Scroll Element Into View        ${Mynetwork List vendor company}
    sleep    1 seconds
    Click Element    xpath=${Mynetwork Edit vendor company}
    Wait Until Page Contains         Vendor Company Detail            timeout=15s

    [Return]            ${Mynetwork Site Code Result}      