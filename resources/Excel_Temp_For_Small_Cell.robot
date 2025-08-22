*** Settings ***
Library    SeleniumLibrary
Library    String
Library    OperatingSystem
Library    BuiltIn
Library    RPA.Excel.Files
Library    Collections


*** Keywords ***
Prepare the template file data For Small Cell
    [Arguments]     ${SOURCE_FILE}      ${DESTINATION_FILE}     ${Row_Index}
    log    Row Prepare the template file data = ${Row_Index}
    ${Project Name List}=    Get Column Values By Name File    ${SOURCE_FILE For Small Cell}     Project Name       
    ${Project Name}=    Set Variable    ${Project Name List[0]}

    Write Value From Column Name At Row 3       ${DESTINATION_FILE}      3       Project Name*                       ${Project Name}

    ${Project Owner Company List}=    Get Column Values By Name File    ${SOURCE_FILE For Small Cell}     Project Owner Company       
    ${Project Owner Company}=    Set Variable    ${Project Owner Company List[0]}

    Write Value From Column Name At Row 3       ${DESTINATION_FILE}      3       Project Owner Company*              ${Project Owner Company}

    ${Service System List}=    Get Column Values By Name File    ${SOURCE_FILE For Small Cell}     Service System       
    ${Service System}=    Set Variable    ${Service System List[0]}

    Write Value From Column Name At Row 3       ${DESTINATION_FILE}      3       Service System*                     ${Service System}

    ${Reference Site Code List}=    Get Column Values By Name File    ${SOURCE_FILE For Small Cell}     Reference Site Code       
    ${Reference Site Code}=    Set Variable    ${Reference Site Code List[0]}

    Write Value From Column Name At Row 3       ${DESTINATION_FILE}      3       Site Code* (Reference Site Code)              ${Reference Site Code}

    ${SSR Type List}=    Get Column Values By Name File    ${SOURCE_FILE For Small Cell}     SSR Type       
    ${SSR Type}=    Set Variable    ${SSR Type List[0]}

    Write Value From Column Name At Row 3       ${DESTINATION_FILE}      3       SSR Type*                           ${SSR Type}

    ${Equipment Type List}=    Get Column Values By Name File    ${SOURCE_FILE For Small Cell}     Equipment Type      
    ${Equipment Type}=    Set Variable    ${Equipment Type List[0]}

    Write Value From Column Name At Row 3       ${DESTINATION_FILE}      3       Equipment Type*                     ${Equipment Type}

    ${Site Type List}=    Get Column Values By Name File    ${SOURCE_FILE For Small Cell}     Site Type      
    ${Site Type}=    Set Variable    ${Site Type List[0]}

    Write Value From Column Name At Row 3       ${DESTINATION_FILE}      3       Site Code*(Site Type)               ${Site Type}

    ${Site Name List}=    Get Column Values By Name File    ${SOURCE_FILE For Small Cell}     Site Name      
    ${Site Name}=    Set Variable    ${Site Name List[0]}

    Write Value From Column Name At Row 3       ${DESTINATION_FILE}      3       Site Name(EN)*                      ${Site Name}

    ${Zone MC List}=    Get Column Values By Name File    ${SOURCE_FILE For Small Cell}     Zone MC      
    ${Zone MC}=    Set Variable    ${Zone MC List[0]}

    Write Value From Column Name At Row 3       ${DESTINATION_FILE}      3       Zone/MC*                            ${Zone MC}

    ${Region List}=    Get Column Values By Name File    ${SOURCE_FILE For Small Cell}     Region     
    ${Region}=    Set Variable    ${Region List[0]}

    Write Value From Column Name At Row 3       ${DESTINATION_FILE}      3       Region*                             ${Region}

    ${Role Approve1 List}=    Get Column Values By Name File    ${SOURCE_FILE For Small Cell}     Role Approve1     
    ${Role Approve1}=    Set Variable    ${Role Approve1 List[0]}

    Write Value From Column Name At Row 3       ${DESTINATION_FILE}      3       Role Approve1                       ${Role Approve1}

    ${Vendor Name List}=    Get Column Values By Name File    ${SOURCE_FILE For Small Cell}     Vendor Name     
    ${Vendor Name}=    Set Variable    ${Vendor Name List[0]}

    Write Value From Column Name At Row 3       ${DESTINATION_FILE}      3       Vendor Name*                        ${Vendor Name}

    ${Subcontract Name List}=    Get Column Values By Name File    ${SOURCE_FILE For Small Cell}     Subcontract Name     
    ${Subcontract Name}=    Set Variable    ${Subcontract Name List[0]}

    Write Value From Column Name At Row 3       ${DESTINATION_FILE}      3       Subcontract Name*                   ${Subcontract Name}

    ${Proforma No List}=    Get Column Values By Name File    ${SOURCE_FILE For Small Cell}     Proforma No     
    ${Proforma No}=    Set Variable    ${Proforma No List[0]}    

    Write Value From Column Name At Row 3       ${DESTINATION_FILE}      3       Proforma No*                        ${Proforma No}

    ${Sub Project List}=    Get Column Values By Name File    ${SOURCE_FILE For Small Cell}     Sub Project     
    ${Sub Project}=    Set Variable    ${Sub Project List[0]}

    Write Value From Column Name At Row 3       ${DESTINATION_FILE}      3       Sub Project*                        ${Sub Project}

    ${Number Of Site List}=    Get Column Values By Name File    ${SOURCE_FILE For Small Cell}     Number Of Site    
    ${Number Of Site}=    Set Variable    ${Number Of Site List[0]}

    Write Value From Column Name At Row 3       ${DESTINATION_FILE}      3       Number Of Site*                     ${Number Of Site}

    ${Balance QTY List}=    Get Column Values By Name File    ${SOURCE_FILE For Small Cell}     Balance QTY    
    ${Balance QTY}=    Set Variable    ${Balance QTY List[0]}

    Write Value From Column Name At Row 3       ${DESTINATION_FILE}      3       Balance QTY*                        ${Balance QTY}

    ${Project Type List}=    Get Column Values By Name File    ${SOURCE_FILE For Small Cell}     Project Type    
    ${Project Type}=    Set Variable    ${Project Type List[0]}

    Write Value From Column Name At Row 3       ${DESTINATION_FILE}      3       Project Type *                      ${Project Type}

    ${Project Detail List}=    Get Column Values By Name File    ${SOURCE_FILE For Small Cell}     Project Detail    
    ${Project Detail}=    Set Variable    ${Project Detail List[0]}   

    Write Value From Column Name At Row 3       ${DESTINATION_FILE}      3       Project Detail *                    ${Project Detail}

    ${Purchase Cat Group List}=    Get Column Values By Name File    ${SOURCE_FILE For Small Cell}     Purchase Cat Group    
    ${Purchase Cat Group}=    Set Variable    ${Purchase Cat Group List[0]} 

    Write Value From Column Name At Row 3       ${DESTINATION_FILE}      3       Purchase Cat Group*                 ${Purchase Cat Group}

    ${Purchase Cat List}=    Get Column Values By Name File    ${SOURCE_FILE For Small Cell}     Purchase Cat    
    ${Purchase Cat}=    Set Variable    ${Purchase Cat List[0]} 

    Write Value From Column Name At Row 3       ${DESTINATION_FILE}      3       Purchase Cat*                        ${Purchase Cat}

    ${Action Type List}=    Get Column Values By Name File    ${SOURCE_FILE For Small Cell}     Action Type    
    ${Action Type}=    Set Variable    ${Action Type List[0]} 

    Write Value From Column Name At Row 3       ${DESTINATION_FILE}      3       Action Type*                        ${Action Type}

    ${System Type List}=    Get Column Values By Name File    ${SOURCE_FILE For Small Cell}     System Type    
    ${System Type}=    Set Variable    ${System Type List[0]}

    Write Value From Column Name At Row 3       ${DESTINATION_FILE}      3       System Type*                        ${System Type}

    ${Service Code List}=    Get Column Values By Name File    ${SOURCE_FILE For Small Cell}     Service Code    
    ${Service Code}=    Set Variable    ${Service Code List[0]}

    Write Value From Column Name At Row 3       ${DESTINATION_FILE}      3       Service Code*                       ${Service Code}

    ${Company Code List}=    Get Column Values By Name File    ${SOURCE_FILE For Small Cell}     Company Code    
    ${Company Code}=    Set Variable    ${Company Code List[0]}

    Write Value From Column Name At Row 3       ${DESTINATION_FILE}      3       Company Code*                       ${Company Code}
