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
    ${Project Name List}=    Get Column Values By Name File    ${SOURCE_FILE}     Project Name       
    ${Project Name}=    Set Variable    ${Project Name List[${Row_Index - 2}]}


    Write Value From Column Name At Row 3       ${DESTINATION_FILE}      3       Project Name*                       ${Project Name}

    ${Project Owner Company List}=    Get Column Values By Name File    ${SOURCE_FILE}     Project Owner Company       
    ${Project Owner Company}=    Set Variable    ${Project Owner Company List[${Row_Index - 2}]}

    Write Value From Column Name At Row 3       ${DESTINATION_FILE}      3       Project Owner Company*              ${Project Owner Company}

    ${Service System List}=    Get Column Values By Name File    ${SOURCE_FILE}     Service System       
    ${Service System}=    Set Variable    ${Service System List[${Row_Index - 2}]}

    Write Value From Column Name At Row 3       ${DESTINATION_FILE}      3       Service System*                     ${Service System}

    ${Reference Site Code List}=    Get Column Values By Name File    ${SOURCE_FILE}     Reference Site Code       
    ${Reference Site Code}=    Set Variable    ${Reference Site Code List[${Row_Index - 2}]}

    Write Value From Column Name At Row 3       ${DESTINATION_FILE}      3       Site Code* (Reference Site Code)              ${Reference Site Code}

    ${SSR Type List}=    Get Column Values By Name File    ${SOURCE_FILE}     SSR Type       
    ${SSR Type}=    Set Variable    ${SSR Type List[${Row_Index - 2}]}

    Write Value From Column Name At Row 3       ${DESTINATION_FILE}      3       SSR Type*                           ${SSR Type}

    ${Equipment Type List}=    Get Column Values By Name File    ${SOURCE_FILE}    Equipment Type      
    ${Equipment Type}=    Set Variable    ${Equipment Type List[${Row_Index - 2}]}

    Write Value From Column Name At Row 3       ${DESTINATION_FILE}      3       Equipment Type*                     ${Equipment Type}

    ${Site Type List}=    Get Column Values By Name File    ${SOURCE_FILE}     Site Type      
    ${Site Type}=    Set Variable    ${Site Type List[${Row_Index - 2}]}

    Write Value From Column Name At Row 3       ${DESTINATION_FILE}      3       Site Code*(Site Type)               ${Site Type}

    ${Site Name List}=    Get Column Values By Name File    ${SOURCE_FILE}     Site Name      
    ${Site Name}=    Set Variable    ${Site Name List[${Row_Index - 2}]}

    Write Value From Column Name At Row 3       ${DESTINATION_FILE}      3       Site Name(EN)*                      ${Site Name}

    ${Zone MC List}=    Get Column Values By Name File    ${SOURCE_FILE}     Zone MC      
    ${Zone MC}=    Set Variable    ${Zone MC List[${Row_Index - 2}]}

    Write Value From Column Name At Row 3       ${DESTINATION_FILE}      3       Zone/MC*                            ${Zone MC}

    ${Region List}=    Get Column Values By Name File    ${SOURCE_FILE}     Region     
    ${Region}=    Set Variable    ${Region List[${Row_Index - 2}]}

    Write Value From Column Name At Row 3       ${DESTINATION_FILE}      3       Region*                             ${Region}
 
    ${Role Approve1 List}=    Get Column Values By Name File    ${SOURCE_FILE}     Role Approve1     
    ${Role Approve1}=    Set Variable    ${Role Approve1 List[${Row_Index - 2}]}

    Write Value From Column Name At Row 3       ${DESTINATION_FILE}      3       Role Approve1                       ${Role Approve1}

    ${Vendor Name List}=    Get Column Values By Name File    ${SOURCE_FILE}     Vendor Name     
    ${Vendor Name}=    Set Variable    ${Vendor Name List[${Row_Index - 2}]}

    Write Value From Column Name At Row 3       ${DESTINATION_FILE}      3       Vendor Name*                        ${Vendor Name}

    ${Subcontract Name List}=    Get Column Values By Name File    ${SOURCE_FILE}     Subcontract Name     
    ${Subcontract Name}=    Set Variable    ${Subcontract Name List[${Row_Index - 2}]}

    Write Value From Column Name At Row 3       ${DESTINATION_FILE}      3       Subcontract Name*                   ${Subcontract Name}

    ${Proforma No List}=    Get Column Values By Name File    ${SOURCE_FILE}     Proforma No     
    ${Proforma No}=    Set Variable    ${Proforma No List[${Row_Index - 2}]}    

    Write Value From Column Name At Row 3       ${DESTINATION_FILE}      3       Proforma No*                        ${Proforma No}

    ${Sub Project List}=    Get Column Values By Name File    ${SOURCE_FILE}     Sub Project     
    ${Sub Project}=    Set Variable    ${Sub Project List[${Row_Index - 2}]}

    Write Value From Column Name At Row 3       ${DESTINATION_FILE}      3       Sub Project*                        ${Sub Project}

    ${Number Of Site List}=    Get Column Values By Name File    ${SOURCE_FILE}     Number Of Site    
    ${Number Of Site}=    Set Variable    ${Number Of Site List[${Row_Index - 2}]}

    Write Value From Column Name At Row 3       ${DESTINATION_FILE}      3       Number Of Site*                     ${Number Of Site}

    ${Balance QTY List}=    Get Column Values By Name File    ${SOURCE_FILE}     Balance QTY    
    ${Balance QTY}=    Set Variable    ${Balance QTY List[${Row_Index - 2}]}

    Write Value From Column Name At Row 3       ${DESTINATION_FILE}      3       Balance QTY*                        ${Balance QTY}

    ${Project Type List}=    Get Column Values By Name File    ${SOURCE_FILE}     Project Type    
    ${Project Type}=    Set Variable    ${Project Type List[${Row_Index - 2}]}

    Write Value From Column Name At Row 3       ${DESTINATION_FILE}      3       Project Type *                      ${Project Type}

    ${Project Detail List}=    Get Column Values By Name File    ${SOURCE_FILE}     Project Detail    
    ${Project Detail}=    Set Variable    ${Project Detail List[${Row_Index - 2}]}   

    Write Value From Column Name At Row 3       ${DESTINATION_FILE}      3       Project Detail *                    ${Project Detail}

    ${Purchase Cat Group List}=    Get Column Values By Name File    ${SOURCE_FILE}     Purchase Cat Group    
    ${Purchase Cat Group}=    Set Variable    ${Purchase Cat Group List[${Row_Index - 2}]} 

    Write Value From Column Name At Row 3       ${DESTINATION_FILE}      3       Purchase Cat Group*                 ${Purchase Cat Group}

    ${Purchase Cat List}=    Get Column Values By Name File    ${SOURCE_FILE}     Purchase Cat    
    ${Purchase Cat}=    Set Variable    ${Purchase Cat List[${Row_Index - 2}]} 

    Write Value From Column Name At Row 3       ${DESTINATION_FILE}      3       Purchase Cat*                        ${Purchase Cat}

    ${Action Type List}=    Get Column Values By Name File    ${SOURCE_FILE}     Action Type    
    ${Action Type}=    Set Variable    ${Action Type List[${Row_Index - 2}]} 

    Write Value From Column Name At Row 3       ${DESTINATION_FILE}      3       Action Type*                        ${Action Type}

    ${System Type List}=    Get Column Values By Name File    ${SOURCE_FILE}     System Type    
    ${System Type}=    Set Variable    ${System Type List[${Row_Index - 2}]}

    Write Value From Column Name At Row 3       ${DESTINATION_FILE}      3       System Type*                        ${System Type}

    ${Service Code List}=    Get Column Values By Name File    ${SOURCE_FILE}     Service Code    
    ${Service Code}=    Set Variable    ${Service Code List[${Row_Index - 2}]}

    Write Value From Column Name At Row 3       ${DESTINATION_FILE}      3       Service Code*                       ${Service Code}

    ${Company Code List}=    Get Column Values By Name File    ${SOURCE_FILE}     Company Code    
    ${Company Code}=    Set Variable    ${Company Code List[${Row_Index - 2}]}

    Write Value From Column Name At Row 3       ${DESTINATION_FILE}      3       Company Code*                       ${Company Code}
