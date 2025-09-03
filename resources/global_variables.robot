*** Variables ***
${URL}                                  https://test-transporter.intra.ais/TPTWeb/login.jsf
${Mynetwork URL}                        https://test-mynetwork.ais.co.th/login
${Mynetwork AMM URL}                    https://test-mynetwork-asset.intra.ais/asset/direct.jsp
${Mynetwork AMM URL New}                https://test-mynetwork-asset.intra.ais/asset/direct.jsp?pin=00034485&login=Y
${Mynetwork AMM Test SGAddNew}          https://test-mynetwork-asset.intra.ais/igw/pages/MainPage.jsp
${BROWSER}                              Chrome

${SSR Create Draft Site Code USER}      arnonkus
${SSR Create Draft Site Code PASS}      123
${SSR Create Code USER}                 vutthipp
${SSR Create Code PASS}                 123
${Routing Submitted USER}               tana_huawei
${Routing Submitted PASS}               123
${FBOQ PAT GR Submitted USER}           tana_huawei
${FBOQ PAT GR Submitted PASS}           123
${FBOQ PAT GR Verified USER}            vutthipp
${FBOQ PAT GR Verified PASS}            123
${FBOQ PAT GR Approve USER}             boonleth
${FBOQ PAT GR Approve PASS}             123
${FAT Submitted USER}                   tana_huawei
${FAT Submitted PASS}                   123
${FAT Approve USER}                     vutthipp
${FAT Approve PASS}                     123
${Job Evaluation Approve USER}          vutthipp
${Job Evaluation Approve PASS}          123
${Drawing Submitted USER}               tana_huawei
${Drawing Submitted PASS}               123
${Drawing Approved 1 USER}              vutthipp
${Drawing Approved 1 PASS}              123
${BOQ And Document USER}                tana_huawei
${BOQ And Document PASS}                123
${BOQ Verified USER}                    vutthipp
${BOQ Verified PASS}                    123
${BOQ Approved USER}                    arnonkus
${BOQ Approved PASS}                    123

${Mynetwork User}                       wareerav
${Mynetwork Pass}                       1
${Mynetwork Add Site User}              napatm49
${Mynetwork Add Site Pass}              1
	
${SSR Create USER}                      tana_huawei
${SSR Create PASS}                      123
${SSR Approval 1 USER}                  teerachu
${SSR Approval 1 PASS}                  123
${DD Submitted USER}                    tana_huawei
${DD Submitted PASS}                    123
${DD Approved USER}                     teerachu
${DD Approved PASS}                     123
${Permission Submitted USER}            tana_huawei
${Permission Submitted PASS}            123
${Permission Approved USER}             teerachu
${Permission Approved PASS}             123
${PAT BOQ Submitted USER}               tana_huawei
${PAT BOQ Submitted PASS}               123
${PAT BOQ Verify USER}                  chaipats
${PAT BOQ Verify PASS}                  123
${PAT BOQ Approved USER}                teerachu
${PAT BOQ Approved PASS}                123
${GR Approved USER}                     arnonkus    
${GR Approved PASS}                     123
${FAT Permission Submitted USER}        tana_huawei
${FAT Permission Submitted PASS}        123
${FAT Permission Approved USER}         arnonkus
${FAT Permission Approved PASS}         123

${LOGIN BUTTON}                         //*[@id="loginForm:login"]
${LOGIN TITLE}                          Transporter Web (TPT)
${LOGIN TITLE MY NETWORK}               MY NETWORK SYSTEM

#Menu List
${Menu List}                            //form/div[1]/table/tbody/tr/td[1]/img
${Todo list Menu}                       //*[@id="iconheader:frmMenu:TodoList"]
${Todo list Menu ID}                    iconheader:frmMenu:TodoList
${SSR Tracking Menu}                    //*[@id="iconheader:frmMenu:SSRTracking"]
${SSR Tracking Menu ID}                 iconheader:frmMenu:SSRTracking
${Site Management Menu}                 //*[@id="iconheader:frmMenu:SiteManagement"]
${Site Management Menu ID}              iconheader:frmMenu:SiteManagement
${Create Draft Site Code Menu}          //*[@id="iconheader:frmMenu:CreateDraftSiteCode"]
${Create Draft Site Code Menu ID}       iconheader:frmMenu:CreateDraftSiteCode
${Log Out Menu}                         //*[@id="iconheader:frmMenu:LogOut"]
${Turnkey Import Site Menu}             //*[@id="iconheader:frmMenu:TurnkeyImportSite"]
${SSR Create Menu}                      //*[@id="iconheader:frmMenu:SSRCreate"]
${SSR Create Menu ID}                   iconheader:frmMenu:SSRCreate



#Static Value
${Project Name}                         Test Interface Send/Approve/Cancel PR [Y]
${SSR Reference Site Code By Pass}      BKK_BMKSM_VAS_202500036

#Import Site
${Import Site Serch Project}            //tr/td/form/fieldset[1]/table/tbody/tr[2]/td[3]/input[2]
${Click Import Site}                    //tr/td/form/table/tbody/tr/td[2]/input[2]
${Import Site Project Input}            //table/tbody/tr[2]/td/form/div[1]/div/fieldset/table[1]/tbody/tr[3]/td[3]/input[2]
${Import Site Project Name Search}      //tr[2]/td/form/div[1]/div/fieldset/table[2]/tbody/tr[1]/td/input[1]
${Select Import Site Project Name}      //tr[2]/td/form/div[1]/div/span/fieldset/span/div[2]/table/tbody/tr/td[2]/div/a
${Import Site File Check Text}          //tr/td/form/fieldset[2]/table/tbody/tr/td[1]/span[1]
${Import Site File}                     //fieldset[2]/table/tbody/tr/td[2]/input
${Button Upload}                        //tr/td/form/table[3]/tbody/tr/td/span/input
${Reference Site Code}                  //tr/td/form/fieldset[2]/div[2]/table/thead/tr/th[4]/div/span/span
${Reference Site Code Path}             //form/fieldset[2]/div[2]/table/tbody/tr/td[4]/div
${SSR ID Reference Site Code By Pass}          	BSIF_202509031012

#To do list
${Todo list Menu Search Button}         //*[@id="ssrForm:btnSearch"]
${Todo list Menu Search Button Query}   //*[@id="ssrForm:btnQuery"]  
${Todo list Menu Search Reference Site Code}        //table/tbody/tr[4]/td[3]/input
${Todo list Menu Search Workflow Type}              //table/tbody/tr[3]/td[3]/select
${Todo list Menu Select First Row}      //div[2]/table/tbody/tr/td[2]/div/a
${Todo list Menu Select First Row span}             //div[2]/table/tbody/tr/td[2]/span/a
${Todo list Search SSR ID}              //table/tbody/tr[2]/td[3]/input



#Path
# ${Picture Folder}                           ${CURDIR}\\..\\tests\\TYPE_Non-Turnkey\\FBB OSP for TPT III\\Results\\Capture Page Screenshot
${Picture Folder}                           ${OUTPUT_DIR}
${Import Site File Template_Turnkey}        C:\\Users\\arnoj885\\Robot Framework\\Obsolate Transporter\\data file\\Import_Site_Template_Turnkey.xls
${Cat Picture}                              C:/Users/arnoj885/Robot Framework/Obsolate Transporter/Pic/Cat000122#_[]().jpg
${Import Site File Template_Turnkey OSP}    C:\\Users\\arnoj885\\Robot Framework\\Obsolate Transporter\\data file\\Import_Site_Template_Proforma OSP.xlsx


#workflow type
${Workflow Type Equipment And Service}                //fieldset/table/tbody/tr[3]/td[3]/select/option[24]                    #Turnkey Equipment and Service on TPT
${Workflow Type Service on TPT}                       //fieldset/table/tbody/tr[3]/td[3]/select/option[25]


#ssr crate
${SSR ID Approval 1 By Pass}               BKK-2025000316     
${SSR ADD Pic Button}                      //tr[2]/td/span/div/div/table/tbody/tr/td/div[1]/div/div[2]/input
${SSR Upload Pic Button}                   //div[2]/fieldset/table/tbody/tr[2]/td/span/div/div/table/tbody/tr/td/div[2]/div
${SSR Save Pic}                            //span[2]/table/tbody/tr[1]/td[3]/input[4]
${SSR Check Result Massage Text}           //table/tbody/tr/td/form/fieldset/legend
${SSR Result Massage Text}                 //tr/td/form/fieldset/table/tbody/tr[2]/td
# ${FBB OSP for TPT III Auto PO}             //table/tbody/tr[3]/td[3]/select/option[28]
${SSR Click Workflow Type}                 //table/tbody/tr[3]/td[3]/select
${SSR Search Reference Site Code}          //fieldset/table/tbody/tr[4]/td[3]/input
${Select SSR Reference Site Code First Row}   //table/tbody/tr/td[2]/div/a
${SSR Reference Site Code Search Button}   //table/tbody/tr[11]/td/input[1]
${SSR Reference Site Code}                 //table/tbody/tr[4]/td[3]/input

${SSR ID Routing Submitted}                //fieldset/table/tbody/tr[2]/td

#Buffer

#Create Draft Site Code
${Import Create Draft Site Code}        //form/table/tbody/tr/td[2]/input[1]
${Search Proforma No}                   //form/fieldset[2]/table/tbody/tr[2]/td[3]/input[2]
${Proferma No Input}                    //div/div[2]/table/tbody/tr[2]/td/form/div[1]/div/fieldset/table[1]/tbody/tr[3]/td[3]/input
${Proferma No}                          1010001072
${Proferma Serach Button}               //div[2]/div[2]/div/div[2]/table/tbody/tr[2]/td/form/div[1]/div/fieldset/table[2]/tbody/tr[1]/td/input[1]
${First Proferma No}                    //div[2]/table/tbody/tr[2]/td/form/div[1]/div/span/fieldset/span/div[2]/table/tbody/tr/td[2]/div/a
${Serach Budget Check List}             //tbody/tr/td/form/fieldset[2]/table/tbody/tr[7]/td[3]/input[2]  
${Purchase Cat Group}                   //div[2]/div[2]/div/div[2]/table/tbody/tr[2]/td/form/div[1]/div/fieldset/table[1]/tbody/tr[3]/td[3]/select
${Select Purchase Cat Group}            //div[2]/div[2]/div/div[2]/table/tbody/tr[2]/td/form/div[1]/div/fieldset/table[1]/tbody/tr[3]/td[3]/select/option[6]        #Telecom-Radio
${Purchase Cat}                         //div[2]/div[2]/div/div[2]/table/tbody/tr[2]/td/form/div[1]/div/fieldset/table[1]/tbody/tr[3]/td[6]/select
# ${Service Management Fee}               //tr[2]/td/form/div[1]/div/fieldset/table[1]/tbody/tr[3]/td[6]/select/option[2]                                             #Service/Management Fee        
${Action Type}                          //div[2]/div[2]/div/div[2]/table/tbody/tr[2]/td/form/div[1]/div/fieldset/table[1]/tbody/tr[4]/td[3]/select
${Select Action Type}                   //div[2]/div[2]/div/div[2]/table/tbody/tr[2]/td/form/div[1]/div/fieldset/table[1]/tbody/tr[4]/td[3]/select/option[2]        #Installation/Upgrade/Optimization    
${System Type}                          //div[2]/div[2]/div/div[2]/table/tbody/tr[2]/td/form/div[1]/div/fieldset/table[1]/tbody/tr[4]/td[6]/select
# ${4G}                                   //div[2]/div[2]/div/div[2]/table/tbody/tr[2]/td/form/div[1]/div/fieldset/table[1]/tbody/tr[4]/td[6]/select/option[4]        #4G    
# ${Telecom-Radio}                        //*[@id="purchasePopupId:popupPurchasefrom:purchaseCatGroupId"]/option[6]
# ${Installation Upgrade Optimization}    //*[@id="purchasePopupId:popupPurchasefrom:actionTypeId"]/option[2]
${Service Code}                         //div[2]/div[2]/div/div[2]/table/tbody/tr[2]/td/form/div[1]/div/fieldset/table[1]/tbody/tr[5]/td[3]/select
# ${Telecom}                              //table/tbody/tr[2]/td/form/div[1]/div/fieldset/table[1]/tbody/tr[5]/td[3]/select/option[2]                                 #Telecom
${Company Code}                         //div[2]/div[2]/div/div[2]/table/tbody/tr[2]/td/form/div[1]/div/fieldset/table[1]/tbody/tr[5]/td[6]/select
# ${AWN}                                  //table/tbody/tr[2]/td/form/div[1]/div/fieldset/table[1]/tbody/tr[5]/td[6]/select/option[2]                                 #AWN      
${Purchase Serach}                      //div[2]/div[2]/div/div[2]/table/tbody/tr[2]/td/form/div[1]/div/fieldset/table[2]/tbody/tr[1]/td/input[1]
${First Purchase Row Select}            //div[2]/div[2]/div/div[2]/table/tbody/tr[2]/td/form/div[1]/div/span/fieldset/span/div[2]/table/tbody/tr[1]/td[2]/div/a
${Click Search Procurator Button}       //tbody/tr/td/form/fieldset[2]/table/tbody/tr[10]/td[4]/input
${Workflow Type}                        //div[2]/div[2]/div/div[2]/table/tbody/tr[2]/td/form/div[1]/div/fieldset/table[1]/tbody/tr[3]/td[3]/select
${Small Cell for TPT III Auto PO}       //table[1]/tbody/tr[3]/td[3]/select/option[22]                                           #Small Cell for TPT III (Auto PO)     
${FBB OSP for TPT III Auto PO}          //table[1]/tbody/tr[3]/td[3]/select/option[28]
${SSR Type}                             //div[2]/div[2]/div/div[2]/table/tbody/tr[2]/td/form/div[1]/div/fieldset/table[1]/tbody/tr[3]/td[6]/select
${Small Cell TPT3}                      //*[@id="viewProcuratorByCompanyCodePopupId:popupPurchasefrom:ssrTypeId"]/option[2]       #Small Cell TPT3
${FBB OSP TPT3}                         //*[@id="viewProcuratorByCompanyCodePopupId:popupPurchasefrom:ssrTypeId"]/option[2]
${Region}                               //div[2]/div[2]/div/div[2]/table/tbody/tr[2]/td/form/div[1]/div/fieldset/table[1]/tbody/tr[4]/td[3]/select
${BKK}                                  //div[2]/div[2]/div/div[2]/table/tbody/tr[2]/td/form/div[1]/div/fieldset/table[1]/tbody/tr[4]/td[3]/select/option[2]       #BKK     
${Click Procurator Search}              //div[2]/div[2]/div/div[2]/table/tbody/tr[2]/td/form/div[1]/div/fieldset/table[2]/tbody/tr[1]/td/input[1]
${First Row Procurator Select}          //div[2]/div[2]/div/div[2]/table/tbody/tr[2]/td/form/div[1]/div/span/fieldset/span/div[2]/table/tbody/tr/td[2]/div/a
${Import Type}                          //fieldset[3]/table/tbody/tr[1]/td[2]/table/tbody/tr/td/input
${Choose Import Site File}              //fieldset[3]/table/tbody/tr[2]/td[2]/input
${Import_Site_Template path}            C:\\Users\\arnoj885\\Robot Framework\\Obsolate Transporter\\data file\\Import_Site_Template_Proforma OSP.xls
${Button Upload}                        //table/tbody/tr/td/form/table[3]/tbody/tr/td/span/input

#Input data
${Excel Project Owner Company}          AWN
${Excel Service System}                 Civil    
${Excel Reference Site Code}            BANCH_SmallCell_202506101102
${Excel SSR Type}                       Small Cell TPT3
${Excel Equipment Type}                 BRAS
${Excel Site Type}                      CPRET
${Excel Site Name EN}                   Burger King - Baan Chart
${Excel Zone MC}                        CTW
${Excel Region}                         BKK
${Excel Role Approve1}                  Implement - Project Field Coordinator
${Excel Subcontract Name}               Huawei(Sub)
${Excel Project Type}                   NonTurnkey
${Excel Project Detail}                 แบบที่-1
${EXCEL_FILE}                           C:/Users/arnoj885/Robot Framework/Obsolate Transporter/data file/FBB_OSP_Config.xlsx
${SHEET_NAME}                           Input_Data
${Excel SEARCH_TEXT}                    SSR Create
${SOURCE_FILE}                         C:/Users/arnoj885/Robot Framework/Obsolate Transporter/data file/FBB_OSP_Config.xlsx
${SOURCE_FILE For FBB OSP III}         ${CURDIR}\\..\\tests\\TYPE_Non-Turnkey\\FBB OSP for TPT III\\data file\\FBB_OSP_Config.xlsx
${SOURCE_FILE For Small Cell}          ${CURDIR}\\..\\tests\\TYPE_Non-Turnkey\\Small Cell for TPT III\\data file\\Small_Cell_for_TPT_III_Config.xlsx
${SOURCE_FILE For Civil}               ${CURDIR}\\..\\tests\\TYPE_Non-Turnkey\\Civil\\data file\\Civil_Config.xlsx
${DESTINATION_FILE}                    C:/Users/arnoj885/Robot Framework/Obsolate Transporter/data file/Import_Site_Template_Proforma OSP.xls
${DESTINATION_FILE For Small Cell}     ${CURDIR}\\..\\tests\\TYPE_Non-Turnkey\\Small Cell for TPT III\\data file\\Import_Site_Template_Proforma Small Cell for TPT III.xls
${DESTINATION_FILE For FBB OSP III}    ${CURDIR}\\..\\tests\\TYPE_Non-Turnkey\\FBB OSP for TPT III\\data file\\Import_Site_Template_Proforma OSP.xls
${SOURCE_SHEET}                        Import_Site_Template_Proforma
${DEST_SHEET}                          Site_Tmp
${HEADER_ROW}                          2
${SOURCE_SHEET For Small Cell}         Input_Data
${COLUMNS}                             Site Name(EN)*	Zone/MC*	Region*	    Role Approve1	    Subcontract Name*
${TARGET_COLUMN}                       Site Code* (Reference Site Code)


#Routing Submitted
${Latitude First}                       //div[2]/fieldset[1]/table/tbody/tr[2]/td[3]/input
${Longitude First}                      //div[2]/fieldset[1]/table/tbody/tr[2]/td[6]/input
${Latitude Last}                        //div[2]/fieldset[1]/table/tbody/tr[3]/td[3]/input
${Longitude Last}                       //div[2]/fieldset[1]/table/tbody/tr[3]/td[6]/input
${Input Latitude First}                 2.34567
${Input Longitude First}                4.34566
${Input Latitude Last}                  7.33123
${Input Longitude Last}                 2.34455

${Check Cable Type}                     //tr[4]/td[2]/div/table/tbody/tr/td[1]/input
${Click Cable Type}                     //fieldset[2]/table/tbody/tr[4]/td[2]/div/table/tbody/tr/td[3]/select
${ADSS}                                 //table/tbody/tr[4]/td[2]/div/table/tbody/tr/td[3]/select/option[2]
${Click Cable Type Core}                //tr[4]/td[2]/div/table/tbody/tr/td[4]/select
${48}                                   //fieldset[2]/table/tbody/tr[4]/td[2]/div/table/tbody/tr/td[4]/select/option[6]
${Cable Distance Input}                 //fieldset[2]/table/tbody/tr[4]/td[2]/div/table/tbody/tr/td[5]/input
${100}                                  100
${Routing Submitted Add}                //tr/td/div[1]/div/div[2]/input
${Routing Submitted Upload}             //fieldset[3]/table/tbody/tr[2]/td/span/div/div/table/tbody/tr/td/div[2]/div
${ing Check Pount}                      //tr[2]/td/span/table/tbody/tr/td[3]/a[1]/img
${Routing Submitted Save}               //tbody/tr[1]/td[3]/input[4]
${Routing Submitted Massage}            //fieldset/table/tbody/tr[2]/td


#SSR Tracking 
${SSR Tracking Search SSR ID}           //fieldset/table/tbody/tr[3]/td[3]/input
${Search Tracking SSR ID}               BKK-20250002
${SSR Tracking Search Button}           //*[@id="ssrForm:btnQuery"]
# ${Reference Site Code massage Test}          //tr/td/form/span/span/fieldset/span/div[2]/table/tbody/tr[1]/td[5]
${Reference Site Code result}           //tr/td/form/fieldset[2]/div[2]/table/tbody/tr/td[4]
${Reference Site Code ID By Pass}       BSIF_202507030900
${Scroll To Routing Submitted}          //tr/td/form/div/span[2]/span/div/div[1]
${Routing Submitted Box}                //div/div[2]/fieldset[1]


#SSR Approve
${SSR ID Approval 1 By Pass}            BKK-2025000260
${SSR Approved Case Select}             //tr[2]/td/table/tbody/tr/td[2]/select
${SSR Approved Case}                    //tbody/tr/td[2]/select/option[2]
${SSR Reject Case}                      //tbody/tr/td[2]/select/option[3]
${SSR Approved Job Type Select}         //tr[2]/td/table/tbody/tr/td[3]/select
${New Cable}                            //tbody/tr/td[3]/select/option[2]
${Prepare Core}                         //tbody/tr/td[3]/select/option[3]
${SSR Approval Save Button}             //tbody/tr[1]/td[3]/input[4]
${SSR Approval Result Massage}          //tr/td/form/fieldset/table/tbody/tr[2]/td

#Page Check Text
${SSR > SSR Approval}                   SSR > SSR Approval
${SSR > DD Submitted}                   SSR > DD Submitted
${SSR > DD Approved}                    SSR > DD Approved
${SSR > Permission Submitted}           SSR > Permission Submitted
${SSR > Permission Approved}            SSR > Permission Approved
${SSR > BOQ & Document}                 SSR > BOQ & Document
${SSR > BOQ Verified}                   SSR > BOQ Verified
${SSR > BOQ Approved}                   SSR > BOQ Approved
${SSR > SSR Routing Submitted New}      SSR > SSR Routing Submitted New
${SSR Tracking > View}                  SSR Tracking > View
${SSR > FAT Submitted}                  SSR > FAT Submitted
${SSR > FAT Approved}                   SSR > FAT Approved

#DD Submitted
${DD Submitted By Pass}                 BKK-2025011983
${DD Submitted Add Picture}             //tr/td/div[1]/div/div[2]/input
${DD Submitted Upload Picture}          //div/div/table/tbody/tr/td/div[2]/div
${DD Submitted Save}                    //table/tbody/tr[1]/td[3]/input[4]
${DD Submitted Result Massage}          //tr/td/form/fieldset/table/tbody/tr[2]/td


#DD Approved
${SSR ID DD Approved By Pass}           BKK-2025011983
${DD Approved Click Route Type}         //table[1]/tbody/tr[2]/td[3]/select
${Site to Site}                         //table[1]/tbody/tr[2]/td[3]/select/option[2]
${DD Approved Click Cable Job Type}     //fieldset/table[1]/tbody/tr[2]/td[6]/select
${New}                                  //table[1]/tbody/tr[2]/td[6]/select/option[2]
${DD Approved Destination site Serach}         //tr[2]/td[4]/fieldset/table/tbody/tr[2]/td[3]/input[2]
${DD Approved Point source Serach}             //tr[2]/td[2]/fieldset/table/tbody/tr[2]/td[3]/input[2]
${DD Approved Destination site Zone MC}        //tbody/tr[2]/td/div/div/fieldset/table[1]/tbody/tr[2]/td[6]/select
${CWT}                                  //tbody/tr[2]/td[6]/select/option[11]
${Search Site Search Criteria}          //fieldset/table[2]/tbody/tr/td/input[1]
${Search Criteria Serach Result}        //div[2]/table/tbody/tr[2]/td/div/div/span/fieldset/legend
${Home Pro Dak Center CO}               //fieldset/span/div[2]/table/tbody/tr[4]/td[2]/a
${Samai Thi Phi E CO}                   //fieldset/span/div[2]/table/tbody/tr[6]/td[2]/a
${DD Approved click}                    //div[2]/fieldset/table[2]/tbody/tr[2]/td/table/tbody/tr/td[2]/select             
${DD Approved Case}                     //tr[2]/td/table/tbody/tr/td[2]/select/option[2]
${DD Approved Save Button}              //span[2]/table/tbody/tr[1]/td[3]/input[4]
${DD Approved Confirm Route Name TH}    //tr[2]/td/form/table/tbody/tr[1]/td/span[2]
${DD Approved Confirm Route}            //tbody/tr[2]/td/form/table/tbody/tr[3]/td/input[1]
${DD Approved Result Massage}           //tr/td/form/fieldset/table/tbody/tr[2]/td
${Duplicate entry in the system}        //tr[1]/td/table/tbody/tr/td/ul/li
${DD Approved Confirm New Information}     //tr[2]/td/form/table/tbody/tr[2]/td/table/tbody/tr/td/input
#Permission Start Submitted
${SSR ID Permission Start Submitted By Pass}        BKK-2025011983
${Permission Start Submitted Add Picture}           //tbody/tr/td/div[1]/div/div[2]/input
${Permission Start Submitted Upload Picture}        //tbody/tr/td/div[2]/div
${Permission Start Submitted Download}              //tr/td[3]/a[1]/img
${Permission Start Submitted Result Massage}        //fieldset/table/tbody/tr[2]/td
${Permission Start Submitted Save}                  //tbody/tr[1]/td[3]/input[4]

#Permission Start Approve
${SSR ID Permission Start Approve By Pass}          BKK-2025011983
${Permission Start Approve Click}                   //tr[2]/td/table/tbody/tr/td[2]/select
${Permission Start Approve Case}                    //tr[2]/td/table/tbody/tr/td[2]/select/option[2]
${Permission Start Approve Save}                    //tr[1]/td[3]/input[4]
${Permission Start Approve Result Massage}          //fieldset/table/tbody/tr[2]/td


#PAT BOQ Submitted
${SSR ID PAT BOQ Submitted By Pass}                 BKK-2025011983
${PAT BOQ Submitted Sub Project}                    //tbody/tr[3]/td[3]/select
${Test Interface Send/Approve/Cancel PR PF}         //tr[3]/td[3]/select/option[3]
${PAT BOQ Submitted Sub Project Serach}             //tr[4]/td/table/tbody/tr/td[3]/input
${Standard Price 1}                                 //div[2]/table/tbody/tr[1]/td[1]/input
${Standard Price 2}                                 //div[2]/table/tbody/tr[2]/td[1]/input
${PAT BOQ Submitted Standard Price}                 //span/span/table/tbody/tr/td/input
${Input Vendor QTY 1}                               //div/div/table/tbody/tr[1]/td[17]/input
${Input Vendor QTY 2}                               //div/div/table/tbody/tr[2]/td[17]/input
# ${1}                                                1
${Average Article Group Click}                      //tbody/tr[2]/td[18]/select
${FACILITY Power AC}                                //tbody/tr[2]/td[18]/select/option[2]
${PAT/BOQ Submitted Click Calculate}                //tbody/tr[8]/td[1]/span/div/table/tbody/tr/td[1]/input
${PAT/BOQ Submitted Edit}                           //span/div/table/tbody/tr/td[2]/input
${PAT/BOQ Submitted Add Picture}                    //table/tbody/tr/td/div[1]/div/div[2]/input
${PAT/BOQ Submitted Download Picture}               //tr/td[3]/a[1]/img
${PAT/BOQ Submitted Save}                           //tr[1]/td[3]/input[4]
${PAT/BOQ Submitted Result Massage}                 //form/fieldset/table/tbody/tr[2]/td

#PAT BOQ Verify
${SSR ID PAT BOQ Verify By Pass}                    BKK-2025000263
${PAT BOQ Verify Click Pass Fail}                   //tbody/tr/td[2]/select
${Verify Pass Case}                                 //tr/td[2]/select/option[2]
${PAT BOQ Verify Save}                              //tbody/tr[1]/td[3]/input[4]
${PAT/BOQ Verify Result Massage}                    //form/fieldset/table/tbody/tr[2]/td

#PAT BOQ Approved
${SSR ID PAT BOQ Approved By Pass}                  BKK-2025000268
${BOQ Approved Click Approved Rejected}             //tr[4]/td/table/tbody/tr/td[2]/select
${BOQ Approved Approved Case}                       //tr/td[2]/select/option[2]
${BOQ Approved Save}                                //table/tbody/tr[1]/td[3]/input[4]
${BOQ Approved Result Massage}                      //fieldset/table/tbody/tr[2]/td


#Change page 50
${Click Select page}                                //fieldset/span/table/tbody/tr/td[2]/select
${Select 50 page}                                   //tr/td[2]/select/option[5]
${site Number}                                      0
${site Number1}                                     1
${Page Number}                                      2

#Pre PR 
${SSR ID GR Approved By Pass}                       BKK-2025000319
${Tracking Select First Row}                        //div[2]/table/tbody/tr/td[2]/div
${Remark Pre PR}                                    //tbody/tr[9]/td[8]/div/p
${Remark Pre PR Small Cell}                         //tbody/tr[8]/td[8]/div/p/span


#My net work
${Mynetwork Pre PR No By Pass}                      NWPR2025-80368	
${Mynetwork Input User}                             //form/div[1]/div/input
${Mynetwork Input Pass}                             //form/div[2]/div/input
${Mynetwork Login Button}                           //form/div[3]/div/input
${Mynetwork Menu List}                              //*[@id="btn-toggle-side-menu"]
${Pre PR}                                           //ais-mynetwork-menu-side/ul/li[5]/a
${Search Pre PR}                                    //ul/li[5]/ul/li[2]/a
${Doc id input}                                     //*[@id="docId"]
${Mynetwork Serach Button}                          //*[@id="print-page"]/div[2]/div/ais-mynetwork-planning-pre-pr-search/ais-mynetwork-planning-search-form/div/div[1]/div[2]/div/div/div/div[1]/button
${Mynetwork View Pre-PR}                            //div/ais-mynetwork-data-table/div/table/tbody/tr/td[1]/i
${Mynetwork PO Detail}                              //ais-mynetwork-planning-pre-pr-view-table/div/table/tbody/tr/td[18]
${Mynetwork Pop up View Pre-PR}                     //ais-mynetwork-planning-pre-pr-view/div/div/div
${Mynetwork Subcontract}                            //div[2]/nav/div[2]/div/ais-mynetwork-menu-side/ul/li[1]/a
${Mynetwork Sub Project Management}                 //div[2]/div/ais-mynetwork-menu-side/ul/li[1]/ul/li[12]/a
${Mynetwork SPM Select System}                      //div/app-subproject-arena-management/div/div/div[3]/div/div[2]/select                       
${Civil}                                            //app-subproject-arena-management/div/div/div[3]/div/div[2]/select/option[4]
${Mynetwork SPM Sub Project Name}                   //app-subproject-arena-management/div/div/div[3]/div/div[3]/input
${Mynetwork SPM Search}                             //app-subproject-arena-management/div/div/div[1]/div/div[2]/button[2]
${Sub Project Test Interface}                       //subproject-arena-manage-action/td/span[2]
${Mynetwork Add Site}                               //app-subproject-arena-detail/div/div/div[1]/div/div[2]/button[1]
${Mynetwork Browse File}                            //app-subproject-import-vendor-site/div[4]/div[1]/div[2]/div/label/input
${Mynetwork Upload File}                            //app-subproject-import-vendor-site/div[4]/div[1]/div[2]/div/button
${Mynetwork Upload File Result Table}               //app-subproject-import-vendor-site/div[5]
${Mynetwork Add Site Black BT}                      //app-subproject-import-vendor-site/div[1]
${Mynetwork Add Site Black}                         //app-subproject-import-vendor-site/div[1]/div/div[1]/button
${Mynetwork List vendor company}                    //app-subproject-arena-detail/div/div/div[4]/div
${Mynetwork Edit vendor company}                    //subproject-arena-detail-action/td/span[1]
${Mynetwork Map Site Button}                        //app-subproject-view-vendor-site/div/div/div[4]/div/div[2]/button
${Mynetwork Site Code Text}                         //div[5]/div/app-data-table2/div/div[2]/table/tbody/tr/td[1]/span
${Mynetwork Map Proforma Button}                    //app-subproject-vendor-map-site-management-dialog/div[1]/div/div[2]/button[1]
${Mynetwork Map Proforma Text}                      //app-subproject-vendor-map-site-proforma-dialog/div[2]/div/div/label
${Mynetwork Map Proculator Button}                  //app-subproject-vendor-map-site-management-dialog/div[1]/div/div[2]/button[2]
${Mynetwork Map Proculator Workflow Type}           //div[2]/div/app-data-table2/div/div[2]/table/tbody/tr/td[4]/span
${Mynetwork Map Site Text}                          //app-subproject-vendor-map-site-management-dialog/div[2]/div/div[2]/label



#AMM
${AMM USER}                                         00034485
${AMM User input}                                   //form/input[1]
${AMM Login button}                                 //form/input[3]
${AMM Operation}                                    //a[span[text()='Operation']]
${AMM Operation href}                               javascript:n(24)
${AMM Load PO Menu}                                 //tbody/tr[13]/td/a/table/tbody/tr/td
${AMM PO No Path}                                   //tbody/tr/td[4]/input
${AMM Load PO Button}                               //tr[2]/td/button[1]
${AMM Check Text}                                   //div/table/tbody[2]/tr/td
${PO Number By Pass}                                3000001801


#AMM gate way
${AMM Web Service Batch}                            //div/div/ul/li[4]/a/span
${Test SGAdd New}                                   //input[2]
${AMM Run BATCH_CREATE_GR_TO_TPT}                   //tr[5]/td/div/table/tbody/tr[8]/td[4]/div
${AMM Text Web Service Batch Tracking}              //tr[2]/td/table/tbody/tr[2]/td/b


#GR Approve 
${SSR ID GR Approved By Pass}                       BKK-2025000262
${GR Approved Select}                               //tr[3]/td/table/tbody/tr/td[2]/select
${GR Approved Approval Case}                        //tr[3]/td/table/tbody/tr/td[2]/select/option[2]
${GR Approved Save Button}                          //tr[1]/td[3]/input[4]
${GR Approved Result Massage}                       //fieldset/table/tbody/tr[2]/td

${TDL Search Not Found}                             //span/span/fieldset/span
${TDL Search Results}                               //span/span/fieldset

#Move File results 
${Capture Path Folder Destination}                  ${CURDIR}\\Execution result\\
${Results Path Folder Destination}                  ${CURDIR}\\Execution result\\
# ${Capture Path Folder Source}                       ${CURDIR}
# ${Results Path Folder Source}                       ${CURDIR}\\Results


# FAT/Permission Submitted
${SSR ID FAT Permission Submitted By Pass}          BKK-2025000291
${FAT Permission Submitted Add File}                //tr/td/div[1]/div/div[2]/input
${FAT Permission Submitted Upload File}             //tr[2]/td/span/div/div/table/tbody/tr/td/div[2]
${FAT Permission Submitted Download File}           //tbody/tr/td[3]/a[1]/img
${FAT Permission Submitted Save}                    //tbody/tr[1]/td[3]/input[4]
${FAT Permission Submitted Result Massage}          //fieldset/table/tbody/tr[2]/td


# FAT/Permission Approved
${SSR ID FAT Permission Approved By Pass}           BKK-2025000319
${SSR ID FAT Permission Submitted By Pass}          BKK-2025000319
${FAT Permission Approved Select Case}              //tr[2]/td/table/tbody/tr/td[2]/select
${FAT Permission Approved Approval Case}            //tbody/tr/td[2]/select/option[2]
${FAT Permission Approved Save}                     //tbody/tr[1]/td[3]/input[4]
${FAT Permission Approved Result Massage}           //fieldset/table/tbody/tr[2]/td

${Process Status Checking Step 12}                  //table/tbody/tr[12]/td[7]
${Process Status Checking Step 9}                   //tbody/tr[9]/td[7]


#Check PDF 
${PDF Icon File Name}                               //table/tbody/tr[9]/td[6]/div/a


#SSR Submitted
${SSR Submitted Add Picture}                //tbody/tr/td/div[1]/div/div[2]/input
${SSR Submitted Upload Picture}             //table/tbody/tr/td/div[2]/div
${SSR Submitted Download Picture}           //table/tbody/tr/td[3]/a[1]/img
${SSR Submitted Save}                       //tbody/tr[1]/td[3]/input[4]
${SSR Submitted Result Massage}             //fieldset/table/tbody/tr[2]/td

#Drawing Submitted
${Drawing Submitted Add Picture}            //tr/td/div[1]/div/div[2]/input
${SSR ID Drawing Submitted By Pass}         BKK-2025000315
${Drawing Submitted Upload Picture}         //table/tbody/tr/td/div[2]/div
${Drawing Submitted Save}                   //tbody/tr[1]/td[3]/input[4]
${Drawing Submitted Result Massage}         //tr/td/form/fieldset/table/tbody/tr[2]/td
${Drawing Submitted Download Picture}       //table/tbody/tr/td[3]/a[1]/img

#Drawing Approved 1 and 2
${Drawing Approved By Pass}                 BKK-2025000315
${Drawing Approved 1 Approved Rejected}     //span[7]/span[1]/div/div[2]/fieldset/table/tbody/tr[2]/td/table/tbody/tr/td[2]/select
${Drawing Approved 2 Approved Rejected}     //span[7]/span[2]/div/div[2]/fieldset/table/tbody/tr[2]/td/table/tbody/tr/td[2]/select
${Drawing Approved 1 Approved Case}         //span[7]/span[1]/div/div[2]/fieldset/table/tbody/tr[2]/td/table/tbody/tr/td[2]/select/option[2]
${Drawing Approved 2 Approved Case}         //span[7]/span[2]/div/div[2]/fieldset/table/tbody/tr[2]/td/table/tbody/tr/td[2]/select/option[2]
${Drawing Approved Save}                    //span[2]/table/tbody/tr[1]/td[3]/input[4]
${Drawing Approved Result Massage}          //tr/td/form/fieldset/table/tbody/tr[2]/td

#BOQ And Document
${BOQ And Document By Pass}                 BKK-2025011973
${BOQ And Document Select Sub Project}      //span[55]/span/div/div[2]/fieldset/table/tbody/tr[3]/td[3]/select
${Test Interface Send/Approve/Cancel PR}    //tbody/tr[3]/td[3]/select/option[2]
${BOQ And Document Search}                  //tr[4]/td/table/tbody/tr/td[3]/input
${BOQ And Document Search Table}            //span[55]/span/div/div[2]/fieldset/table/tbody/tr[6]/td/div/div/table/thead
${BOQ And Document Standard Price}          //tr/td/form/div[2]/div[2]/div/div[2]/table/tbody/tr[1]/td/div
${BOQ And Document Table 1}                 //div[2]/table/tbody/tr[1]/td[1]/input
${BOQ And Document Table 3}                 //div[2]/table/tbody/tr[3]/td[1]/input
${BOQ And Document Confirm Standard Price}      //fieldset/span/span/table/tbody/tr/td/input

${BOQ And Document Table 1 QTY}             //span[55]/span/div/div[2]/fieldset/table/tbody/tr[6]/td/div/div/table/tbody/tr[1]/td[17]/input
${BOQ And Document Table 2 QTY}             //span[55]/span/div/div[2]/fieldset/table/tbody/tr[6]/td/div/div/table/tbody/tr[2]/td[17]/input
${BOQ And Document Average Article Group 1}     //fieldset/table/tbody/tr[6]/td/div/div/table/tbody/tr[1]/td[18]/select
${BASE STATION->ANTENNA}                    //tr[6]/td/div/div/table/tbody/tr[1]/td[18]/select/option[2]
${BOQ And Document Calculate}               //fieldset/table/tbody/tr[8]/td[1]/span/div/table/tbody/tr/td[1]/input
${BOQ And Document Add Picture}             //table/tbody/tr/td/div[1]/div/div[2]/input
${BOQ And Document Download}                //tr/td[3]/a[1]/img
${BOQ And Document Save}                    //table/tbody/tr[1]/td[3]/input[4]
${BOQ And Document Result Massage}          //tr/td/form/fieldset/table/tbody/tr[2]/td

${BOQ And Document Calculate Content}       //fieldset/table/tbody/tr[9]/td/div/span/div
${BOQ And Document Scroll Text}             //td/span/div/table/tbody/tr[1]/td/table/tbody/tr/td[1]/span

#BOQ Verified
${BOQ Verified By Pass}                     BKK-2025000319
${BOQ Verified Pass Fail}                   //table/tbody/tr[2]/td/table/tbody/tr/td[2]/select
${BOQ Verified Pass Case}                   //tr[2]/td/table/tbody/tr/td[2]/select/option[2]
${BOQ Verified Save}                        //tbody/tr[1]/td[3]/input[4]

#BOQ Approved
${BOQ Approved Approved Rejected}           //tr[4]/td/table/tbody/tr/td[2]/select
# ${BOQ Approved Approved Case}               //tr/td[2]/select/option[2]
${BOQ Approved Save}                        //tr[1]/td[3]/input[4]