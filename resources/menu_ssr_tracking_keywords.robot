*** Settings ***
Library    SeleniumLibrary
Library    BuiltIn

*** Keywords ***
Search SSR ID Tracking
    [Arguments]    ${Input SSR ID}
    Input Text    xpath=${SSR Tracking Search SSR ID}    ${Input SSR ID}
    Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)   

# SSR ID Tracking Workflow Type
#     [Arguments]    ${SSR ID Workflow Type}

Click SSR Search Button    
    Click Element    xpath=${SSR Tracking Search Button}
    Wait Until Page Contains    Search Result        timeout=10s

Select SSR ID
    Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)
    Click Element    xpath=${Tracking Select First Row}

Buffer Pre-PR
    Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)

    sleep    0.5 seconds
    ${Picture Folder path}=     Normalize Path      ${Picture Folder}/Pre_PR.png
    Capture Page Screenshot     ${Picture Folder path}

    sleep    0.5 seconds
    ${Pre PR full_text}=     Get Text     xpath=${Remark Pre PR}
    ${Array Massage}=  Split String    ${Pre PR full_text}      .
    ${Temp Array}=  Split String      ${Array Massage[1]}     ]
    ${Pre PR No}=  Strip String    ${Temp Array[0]}
    Set Global Variable         ${Pre PR No}
    # Log To Console      Pre PR: ${Pre PR No}
    [Return]            ${Pre PR No}

Buffer Pre-PR Small Cell
    Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)

    sleep    0.5 seconds
    ${Picture Folder path}=     Normalize Path      ${Picture Folder}/Pre_PR.png
    Capture Page Screenshot     ${Picture Folder path}

    sleep    0.5 seconds
    ${Pre PR full_text}=     Get Text     xpath=${Remark Pre PR Small Cell}
    ${Array Massage}=  Split String    ${Pre PR full_text}      .
    ${Temp Array}=  Split String      ${Array Massage[1]}     ]
    ${Pre PR No}=  Strip String    ${Temp Array[0]}
    Set Global Variable         ${Pre PR No}
    # Log To Console      Pre PR: ${Pre PR No}
    [Return]            ${Pre PR No}

Check Process Status
    [Arguments]         ${Step}
    Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)
    Wait Until Element Is Visible    xpath=${Step}      timeout=15s

    ${Picture Folder path}=     Normalize Path      ${Picture Folder}/Process Status.png
    Capture Page Screenshot     ${Picture Folder path}

Checking PDF Icon PAT/BOQ Approved
    Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)
    sleep    1 seconds
    Wait Until Element Is Visible    xpath=${PDF Icon File Name}      timeout=5s
    sleep    1 seconds