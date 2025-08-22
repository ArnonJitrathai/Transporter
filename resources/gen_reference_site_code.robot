*** Settings ***
Library    SeleniumLibrary
Library    String
Library    OperatingSystem
Library    BuiltIn
Library    RPA.Excel.Files
Library    DateTime


*** Keywords ***
Gen Reference Site Code 1
    ${current_datetime}=    Get Current Date    result_format=%Y%m%d%H%M
    Length Should Be    ${current_datetime}    12
    ${Reference Site Code}=    Catenate    SEPARATOR=    BSIF_    ${current_datetime}
    # log   ${Reference Site Code}
    Set Global Variable         ${Reference Site Code}
    