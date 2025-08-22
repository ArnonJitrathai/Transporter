*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
FAT/Permission Approved
    Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)
    Click Element    xpath=${FAT Permission Approved Select Case}
    Click Element    xpath=${FAT Permission Approved Approval Case}
    sleep    1 seconds

FAT/Permission Approved Save
    Click Element    xpath=${FAT Permission Approved Save} 
