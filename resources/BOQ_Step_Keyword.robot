*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
BOQ & Document Select Sub Project
    [Arguments]     ${Sub Project}
    Execute Javascript    window.scrollTo(0, 200)
    Click Element    xpath=${BOQ And Document Select Sub Project}
    Click Element    xpath=${Sub Project}
    sleep    0.5 seconds

BOQ & Document Search Standard Price
    [Arguments]     ${Table1}       ${Table3}
    Click Element    xpath=${BOQ And Document Search}
    Wait Until Element Is Visible    xpath=${BOQ And Document Standard Price}
    Click Element    xpath=${Table1}
    Click Element    xpath=${Table3}
    Click Element    xpath=${BOQ And Document Confirm Standard Price}
    Wait Until Element Is Visible    xpath=${BOQ And Document Search Table}      timeout=15s
    

BOQ & Document Standard Price
    [Arguments]     ${QTY 1}       ${QTY 3}         ${Average Article Group}
    Input Text       xpath=${BOQ And Document Table 1 QTY}      ${QTY 1}
    Input Text       xpath=${BOQ And Document Table 2 QTY}      ${QTY 3}

    Click Element    xpath=${BOQ And Document Average Article Group 1}
    Click Element    xpath=${Average Article Group}
    sleep    1 seconds

    Execute Javascript    window.scrollTo(0, 500)
    Click Element    xpath=${BOQ And Document Calculate}

BOQ & Document Add Picture
    [Arguments]     ${Picture}
    Execute Javascript    window.scrollTo(0, 900)
    Choose File      xpath=${BOQ And Document Add Picture}      ${Picture}
    sleep    0.5 seconds
    Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)
    Wait Until Element Is Visible    xpath=${BOQ And Document Download}      timeout=15s

BOQ & Document Save
    sleep    0.5 seconds
    ${Picture Folder path}=     Normalize Path      ${Picture Folder}/BOQ_Document.png
    Capture Page Screenshot     ${Picture Folder path}

    Click Element    xpath=${BOQ And Document Save}

BOQ Verified 
    [Arguments]     ${Case}
    Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)
    Click Element    xpath=${BOQ Verified Pass Fail}
    Click Element    xpath=${Case}
    sleep    0.5 seconds

BOQ Verified Save
    sleep    0.5 seconds
    ${Picture Folder path}=     Normalize Path      ${Picture Folder}/BOQ_Verified.png
    Capture Page Screenshot     ${Picture Folder path}

    Click Element    xpath=${BOQ Verified Save}


BOQ Approved
    [Arguments]     ${Case}
    Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)
    Click Element    xpath=${BOQ Approved Approved Rejected}
    sleep    0.5 seconds
    Click Element    xpath=${Case}

BOQ Approved Save
    sleep    0.5 seconds
    Click Element    xpath=${BOQ Approved Save}