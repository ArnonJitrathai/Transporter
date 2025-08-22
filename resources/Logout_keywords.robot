*** Settings ***
Library    SeleniumLibrary
# Library    String
# Library    OperatingSystem
# Library    BuiltIn

*** Keywords ***
Log Out
    Click Menu List
    Execute JavaScript    document.getElementById("iconheader:frmMenu:LogOut").click()
    sleep    1 seconds
    Wait Until Page Contains    Login    10s   