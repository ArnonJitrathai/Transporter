*** Settings ***
Library    BuiltIn
Library    String
Library    Collections
Library    OperatingSystem
Library    SeleniumLibrary

*** Keywords ***
DD Approved Route Type
    [Arguments]      ${Route Type}
    Click Element    xpath=${DD Approved Click Route Type}
    Click Element    xpath=//option[text()="${Route Type}"]

DD Approved Cable Job Type
    [Arguments]      ${Cable Job Type}
    Click Element    xpath=${DD Approved Click Cable Job Type}
    Click Element    xpath=//option[text()="${Cable Job Type}"]

Random Page Destination
    Wait Until Element Is Visible    xpath=${Click Select page}      timeout=15s
    sleep    1 seconds
    ${random_num Page}=    Evaluate    random.randint(3, 12)    modules=random

    #เลือกหน้าว่าจะเอาหน้าไหน 1-21
    ${xpath Random Page Destination}=    Set Variable    //tr/td[1]/div/table/tbody/tr/td[${random_num Page}]
    Log         XPath Page: ${xpath Random Page Destination}
    Click Element    xpath=${xpath Random Page Destination}
    sleep    1 seconds

Random Destination site
    ${random_num}=    Evaluate    random.randint(4, 10)    modules=random
    # ${random_num}=    Evaluate    ${site Number} + 1
    Set Global Variable    ${random_num}
    #เลือกรายการจาก 1-10 ในหน้านั้นๆ
    ${xpath Random Destination site}=    Set Variable    //fieldset/span/div[2]/table/tbody/tr[${random_num}]/td[2]/a
    Log         XPath: ${xpath Random Destination site}
    [Return]        ${xpath Random Destination site}

Random Point source site
    ${random_num1}=    Evaluate    random.randint(1, 3)    modules=random
    # ${random_num1}=    Evaluate    ${site Number1} + 1
    Set Global Variable    ${random_num1}
    #เลือกรายการจาก 1-10 ในหน้านั้นๆ
    ${xpath Random Point source site}=    Set Variable    //fieldset/span/div[2]/table/tbody/tr[${random_num1}]/td[2]/a
    Log         XPath: ${xpath Random Point source site}
    [Return]        ${xpath Random Point source site}

DD Approved Point source site
    [Arguments]      ${Zone MC}
    Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)
    Wait Until Element Is Visible    xpath=${DD Approved Point source Serach}      timeout=15s
    Click Element    xpath=${DD Approved Point source Serach}
    Wait Until Element Is Visible    xpath=${DD Approved Destination site Zone MC}      timeout=15s
    Click Element    xpath=${DD Approved Destination site Zone MC}
    Click Element    xpath=${Zone MC}
    Click Element    xpath=${Search Site Search Criteria}
    Random Page Destination
    ${Serach Result}=   Random Point source site
    Set Variable    ${Serach Result}
    Wait Until Element Is Visible    xpath=${Search Criteria Serach Result}      timeout=15s
    Click Element    xpath=${Serach Result}
    Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)
    sleep    3 seconds

DD Approved Destination site
    [Arguments]      ${Zone MC}       #${Serach Result}  
    Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)
    Wait Until Element Is Visible    xpath=${DD Approved Destination site Serach}      timeout=15s
    Click Element    xpath=${DD Approved Destination site Serach}
    Wait Until Element Is Visible    xpath=${DD Approved Destination site Zone MC}      timeout=15s
    Click Element    xpath=${DD Approved Destination site Zone MC}
    Click Element    xpath=${Zone MC}
    Click Element    xpath=${Search Site Search Criteria}
    Random Page Destination
    ${Serach Result}=   Random Destination site
    Set Variable    ${Serach Result}
    Wait Until Element Is Visible    xpath=${Search Criteria Serach Result}      timeout=15s
    Click Element    xpath=${Serach Result}
    Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)

DD Approved
    [Arguments]     ${Csae}
    Click Element    xpath=${DD Approved click}
    Click Element    xpath=${Csae}

DD Approved Save
    Wait Until Element Is Visible    xpath=${DD Approved Save Button}      timeout=15s

    sleep    1 seconds
    ${Picture Folder path}=     Normalize Path      ${Picture Folder}/DD_Approved.png
    Capture Page Screenshot     ${Picture Folder path}
    
    sleep    0.5 seconds
    Click Element    xpath=${DD Approved Save Button}
    # Wait Until Element Is Visible    xpath=${DD Approved Confirm Route}      timeout=15s

Please Enter Mew Information
    ${is visible}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${DD Approved Confirm Route}    5
    IF    ${is visible} == True
        sleep    0.5 seconds
        Click Element    ${DD Approved Confirm Route}
        ${is visible}=    Set Variable    ${True}
    ELSE
        Run Keywords
        ...    Click Element    ${DD Approved Confirm New Information}
        ...    AND    DD Approved Destination site              ${CWT}
        ...    AND    DD Approved Save
        ...    AND    Please Enter Mew Information
    END
    sleep    3 seconds
    [Return]        ${is visible}

DD Approved Confirm Route
    Please Enter Mew Information
    # ${result}=    Set Variable    ${False}
    # WHILE    not ${result}    limit=10
    #     ${result}=    Please Enter Mew Information
    #     Log    >>> ${result}
    # END
    sleep    1 seconds