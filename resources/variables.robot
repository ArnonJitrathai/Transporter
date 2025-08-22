*** Variables ***
${URL}                                  https://test-transporter.intra.ais/TPTWeb/login.jsf
${BROWSER}                              edge


${VALID USER}                           vutthipp
${VALID PASS}                           123
${FBOQ PAT GR Submitted USER}           huawei_bkk4
${FBOQ PAT GR Submitted PASS}           123
${FBOQ PAT GR Verified USER}            vutthipp
${FBOQ PAT GR Verified PASS}            123
${FBOQ PAT GR Approve USER}             boonleth
${FBOQ PAT GR Approve PASS}             123
${FAT Submitted USER}                   huawei_bkk4
${FAT Submitted PASS}                   123
${FAT Approve USER}                     vutthipp
${FAT Approve PASS}                     123
${Job Evaluation Approve USER}          vutthipp
${Job Evaluation Approve PASS}          123
${LOGIN TITLE}                          Transporter Web (TPT)
${LOGIN BUTTON}                         //*[@id="loginForm:login"]
${Path File}                            C:/Users/arnoj885/Robot Framework/Obsolate Transporter/
${Excel File Name}                      data file/Import_Site_Template_Proforma.xls                  
${Login Check Text}                     /html/body/form/div[2]/div/div[2]/div/h2
#${Menu}                                //div[2]/div/div[1]/table/tbody/tr/td[2]    #Todo list

${Equipment And Service}                SSR > FBOQ Submitted
${Service On TPT}                       SSR > FBOQ Service Submitted
#Capture Screen
${Picture Path Folder}                  ../../TYPE_Turnkey/Turnkey Equipment and Service on TPT/Capture Page Screenshot
${Scroll Menu}                          //div[1]/div[2]/form/div[2]

${Menu List}                            //form/div[1]/table/tbody/tr/td[1]/img
${Log Out Menu}                         //*[@id="iconheader:frmMenu:LogOut"]
${Log Out Menu ID}                      iconheader:frmMenu:LogOut
#Todo list Input 
${Todo list Menu}                       //*[@id="iconheader:frmMenu:TodoList"]
${Todo list Menu Search SSR ID}         //fieldset/table/tbody/tr[2]/td[3]/input
${Todo list Menu Search Button}         //*[@id="ssrForm:btnSearch"]
${Todo list Menu Search Button Query}   //*[@id="ssrForm:btnQuery"]       
${Todo list Menu Search Reference Site Code}        //table/tbody/tr[4]/td[3]/input
${Todo list Menu Search Workflow Type}              //table/tbody/tr[3]/td[3]/select
${Todo list Menu Select First Row}      //div[2]/table/tbody/tr/td[2]/div/a
${Todo list Menu Select First Row span}             //div[2]/table/tbody/tr/td[2]/span/a



${SSR Tracking Menu}                    //*[@id="iconheader:frmMenu:SSRTracking"]
${SSR Tracking Search SSR ID}           //fieldset/table/tbody/tr[3]/td[3]/input
${SSR Tracking Search SSR ID NO By Pass}            	BKK-2025000211
${SSR Tracking Search Button}           //*[@id="ssrForm:btnQuery"]
${SSR Tracking Search Select First Row}             //fieldset/span/div[2]/table/tbody/tr/td[2]/div/a
${SSR Tracking AAM Doc Status}          //*[@id="ssrForm:dtbSsrTrackingViewResult:4:searchPOFboqBtn"]
${SSR Tracking AAM Doc Check Status}    //tr[2]/td/form/div/div/fieldset/table/tbody/tr/td[3]/span
${Close AAM Doc Status}                 //*[@id="ssrSubDocPopupId:hidePopupSsrSubDoc"]


${Todo list Serach Button}              //div[4]/table/tbody/tr/td/form/fieldset/div[2]/input[1]  #xpath
${Todo list Clear Button}               //div[4]/table/tbody/tr/td/form/fieldset/div[2]/input[2]  #xpath

${Massage Workflow Type Is Nothing}     กรุณาระบุข้อมูล Workflow Type
${Search Clear Massage}                 //table/tbody/tr[2]/td/form/table/tbody/tr[1]/td/table/tbody/tr/td/ul/li  #กรุณาระบุข้อมูล Workflow Type
${Search Clear Massage OK Button}       //div[2]/table/tbody/tr[2]/td/form/table/tbody/tr[2]/td/table/tbody/tr/td/input

${SSR ID}                               BKK-20230196343323
${Select SSR ID}                        //span/div[2]/table/tbody/tr[3]/td[2]/span/a   #BKK-2023019634
${Check SSR Approval ID}                //span[1]/fieldset/table/tbody/tr[3]/td[3]/span


#Non Turnkey EDS
${Site Management Menu}                 //*[@id="iconheader:frmMenu:SiteManagement"]
${Create Draft Site Code Menu}          //*[@id="header:frmMenu:CreateDraftSiteCode"]
${Import Create Draft Site Code}        //form/table/tbody/tr/td[2]/input[1]
${Search Proforma No}                   //form/fieldset[2]/table/tbody/tr[2]/td[3]/input[2]
${Search Proforma Draft Site Code}      //*[@id="siteSearchDraftPopupId:popupSiteDraftFrm:btnSearch"]
${Proferma No 1}                          1010000246
${Proferma No Input}                    //div/div[2]/table/tbody/tr[2]/td/form/div[1]/div/fieldset/table[1]/tbody/tr[3]/td[3]/input
${Serach Button Proferma No}            //div[2]/div[2]/div/div[2]/table/tbody/tr[2]/td/form/div[1]/div/fieldset/table[2]/tbody/tr[1]/td/input[1]
${First Proferma No Input}              //div[2]/table/tbody/tr[2]/td/form/div[1]/div/span/fieldset/span/div[2]/table/tbody/tr/td[2]/div/a
${Serach Budget Check List}             //tbody/tr/td/form/fieldset[2]/table/tbody/tr[7]/td[3]/input[2]  
${Purchase Cat Group}                   //div[2]/div[2]/div/div[2]/table/tbody/tr[2]/td/form/div[1]/div/fieldset/table[1]/tbody/tr[3]/td[3]/select
${Select Purchase Cat Group}            //div[2]/div[2]/div/div[2]/table/tbody/tr[2]/td/form/div[1]/div/fieldset/table[1]/tbody/tr[3]/td[3]/select/option[6]        #Telecom-Radio
${Purchase Cat}                         //div[2]/div[2]/div/div[2]/table/tbody/tr[2]/td/form/div[1]/div/fieldset/table[1]/tbody/tr[3]/td[6]/select
${Select Purchase Cat}                  //tr[2]/td/form/div[1]/div/fieldset/table[1]/tbody/tr[3]/td[6]/select/option[2]                                             #Service/Management Fee        
${Action Type}                          //div[2]/div[2]/div/div[2]/table/tbody/tr[2]/td/form/div[1]/div/fieldset/table[1]/tbody/tr[4]/td[3]/select
${Select Action Type}                   //div[2]/div[2]/div/div[2]/table/tbody/tr[2]/td/form/div[1]/div/fieldset/table[1]/tbody/tr[4]/td[3]/select/option[2]        #Installation/Upgrade/Optimization    
${System Type}                          //div[2]/div[2]/div/div[2]/table/tbody/tr[2]/td/form/div[1]/div/fieldset/table[1]/tbody/tr[4]/td[6]/select
${Select System Type}                   //div[2]/div[2]/div/div[2]/table/tbody/tr[2]/td/form/div[1]/div/fieldset/table[1]/tbody/tr[4]/td[6]/select/option[4]        #4G    
${Service Code}                         //div[2]/div[2]/div/div[2]/table/tbody/tr[2]/td/form/div[1]/div/fieldset/table[1]/tbody/tr[5]/td[3]/select
${Select Service Code}                  //table/tbody/tr[2]/td/form/div[1]/div/fieldset/table[1]/tbody/tr[5]/td[3]/select/option[2]                                 #Telecom
${Company Code}                         //div[2]/div[2]/div/div[2]/table/tbody/tr[2]/td/form/div[1]/div/fieldset/table[1]/tbody/tr[5]/td[6]/select
${Select Company Code}                  //table/tbody/tr[2]/td/form/div[1]/div/fieldset/table[1]/tbody/tr[5]/td[6]/select/option[2]                                 #AWN      

${Purchase Serach}                      //div[2]/div[2]/div/div[2]/table/tbody/tr[2]/td/form/div[1]/div/fieldset/table[2]/tbody/tr[1]/td/input[1]
${First Purchase Row 1 Select}          //div[2]/div[2]/div/div[2]/table/tbody/tr[2]/td/form/div[1]/div/span/fieldset/span/div[2]/table/tbody/tr[1]/td[2]/div/a

${Click Search Procurator Button}       //tbody/tr/td/form/fieldset[2]/table/tbody/tr[10]/td[4]/input
${Workflow Type}                        //div[2]/div[2]/div/div[2]/table/tbody/tr[2]/td/form/div[1]/div/fieldset/table[1]/tbody/tr[3]/td[3]/select
${Select Workflow Type}                 //tr[2]/td/form/div[1]/div/fieldset/table[1]/tbody/tr[3]/td[3]/select/option[22]                                           #Small Cell for TPT III (Auto PO)     
${SSR Type}                             //div[2]/div[2]/div/div[2]/table/tbody/tr[2]/td/form/div[1]/div/fieldset/table[1]/tbody/tr[3]/td[6]/select
${Select SSR Type}                      //div[2]/div[2]/div/div[2]/table/tbody/tr[2]/td/form/div[1]/div/fieldset/table[1]/tbody/tr[3]/td[6]/select/option[2]       #Small Cell TPT3
${Region}                               //div[2]/div[2]/div/div[2]/table/tbody/tr[2]/td/form/div[1]/div/fieldset/table[1]/tbody/tr[4]/td[3]/select
${Select Region}                        //div[2]/div[2]/div/div[2]/table/tbody/tr[2]/td/form/div[1]/div/fieldset/table[1]/tbody/tr[4]/td[3]/select/option[2]       #BKK     
${Click Procurator Search}              //div[2]/div[2]/div/div[2]/table/tbody/tr[2]/td/form/div[1]/div/fieldset/table[2]/tbody/tr[1]/td/input[1]
${First Procurator Row 1 Select}        //div[2]/div[2]/div/div[2]/table/tbody/tr[2]/td/form/div[1]/div/span/fieldset/span/div[2]/table/tbody/tr/td[2]/div/a


${Import Type}                          //fieldset[3]/table/tbody/tr[1]/td[2]/table/tbody/tr/td/input

${Click Import Site File}               //fieldset[3]/table/tbody/tr[2]/td[2]/input
# ${Import Site File Path}                C:\\Users\\arnoj885\\Robot Framework\\Obsolate Transporter\\data file\\Import_Site_Template_Proforma.xls
${Import_Site_Template_Proforma}        C:\\Users\\arnoj885\\Robot Framework\\Obsolate Transporter\\data file\\Import_Site_Template_Turnkey Service On TPT.xls

# ${Import Site File Path}                ${Path File}                      

${Button Ubload}                        //table/tbody/tr/td/form/table[3]/tbody/tr/td/span/input

${Import Site Information}              //tr/td/form/fieldset[1]/legend


#Turnkey Import Site
${TK Turnkey Import Site Menu}             //*[@id="iconheader:frmMenu:TurnkeyImportSite"]
${TK Click Import Site}                    //tr/td/form/table/tbody/tr/td[2]/input[2]
${TK Turnkey Import Site Serch Project}    //tr/td/form/fieldset[1]/table/tbody/tr[2]/td[3]/input[2]
${TK Turnkey Import Site Project Name}     //table/tbody/tr[2]/td/form/div[1]/div/fieldset/table[1]/tbody/tr[3]/td[3]/input[2]
${Project Name}                            Test Interface Send/Approve/Cancel PR [Y]
${TK Import Site Project Name Search}      //tr[2]/td/form/div[1]/div/fieldset/table[2]/tbody/tr[1]/td/input[1]
${TK Select Import Site Project Name}      //tr[2]/td/form/div[1]/div/span/fieldset/span/div[2]/table/tbody/tr/td[2]/div/a

${TK Import Site File Text Check}          //tr/td/form/fieldset[2]/table/tbody/tr/td[1]/span[1]

${TK Click Import Site File}               //fieldset[2]/table/tbody/tr/td[2]/input
# ${TK Import Site File Path}                C:\\Users\\arnoj885\\Robot Framework\\Obsolate Transporter\\data file\\Import_Site_Template_Turnkey.xls
${Import Site File Path Template_Turnkey}    C:\\Users\\arnoj885\\Robot Framework\\Obsolate Transporter\\data file\\Import_Site_Template_Turnkey.xls
${Import Site File Path Service On TPT}    C:\\Users\\arnoj885\\Robot Framework\\Obsolate Transporter\\data file\\Import_Site_Template_Turnkey Service On TPT.xls
${TK Button Ubload}                        //tr/td/form/table[3]/tbody/tr/td/span/input
${TK Reference Site Code}                  //tr/td/form/fieldset[2]/div[2]/table/thead/tr/th[4]/div/span/span
${Reference Site Code Path}                //form/fieldset[2]/div[2]/table/tbody/tr/td[4]/div

#SSR Create
${SSR Create Menu}                         //*[@id="iconheader:frmMenu:SSRCreate"]
${SSR Create Menu ID}                      iconheader:frmMenu:SSRCreate
${SSR Workflow Type}                       //tr/td/form/fieldset/table/tbody/tr[3]/td[3]/select
# ${Select SSR Workflow Type}                //fieldset/table/tbody/tr[3]/td[3]/select/option[24]                             #Turnkey Equipment and Service on TPT
${Workflow Type Equipment And Service}                //fieldset/table/tbody/tr[3]/td[3]/select/option[24]                    #Turnkey Equipment and Service on TPT
${Workflow Type Service on TPT}                       //fieldset/table/tbody/tr[3]/td[3]/select/option[25]                    #Turnkey Service on TPT
${SSR Reference Site Code}                 //table/tbody/tr[4]/td[3]/input
${SSR Reference Site Code Fix}             BKK_BMKSM_VAS_202500036
${SSR Reference Site Code Search Button}   //table/tbody/tr[11]/td/input[1]
${SSR Reference Site Code Check Text}      //span/span/fieldset/span/div[2]/table/thead/tr/th[2]/div/span/span
${Select SSR Reference Site Code First Row}   //table/tbody/tr/td[2]/div/a
${SSR ADD Pic Button}                      //tr[2]/td/span/div/div/table/tbody/tr/td/div[1]/div/div[2]/input
${SSR Upload Pic Button}                   //div[2]/fieldset/table/tbody/tr[2]/td/span/div/div/table/tbody/tr/td/div[2]/div
# ${SSR ADD Pic File Path}                   C:/Users/arnoj885/Robot Framework/Obsolate Transporter/Pic/Cat000122#_[]().jpg
${Cat Picture}                             C:/Users/arnoj885/Robot Framework/Obsolate Transporter/Pic/Cat000122#_[]().jpg

${SSR Save Pic}                            //span[2]/table/tbody/tr[1]/td[3]/input[4]
${SSR Check Result Massage Text}           //table/tbody/tr/td/form/fieldset/legend
${SSR Result Massage Text}                 //tr/td/form/fieldset/table/tbody/tr[2]/td
# ${Reference Site Code Route Chain ID}      None

# SSR Approval
${Input SSR ID Path}                       //fieldset/table/tbody/tr[2]/td[3]/input   
${SSR ID Serach Button}                    //tbody/tr/td/form/fieldset/div[2]/input[1]
${SSR Approval ID}                         //span/span/fieldset/span/div[2]/table/tbody/tr/td[2]/span/a
${SSR Approved and Rejected}               //div[2]/fieldset/span/table/tbody/tr[2]/td/table/tbody/tr/td[2]/select
${Approved Case}                           //table/tbody/tr[2]/td/table/tbody/tr/td[2]/select/option[2]
# ${SSR Approved Case}                       //table/tbody/tr[2]/td/table/tbody/tr/td[2]/select/option[2]
${SSR Approved Save Button}                //span[2]/table/tbody/tr[1]/td[3]/input[4]
${SSR Approved Result Massage}             //fieldset/table/tbody/tr[2]/td
${SSR Approval ID By Pass}                 BKK-2025000232

#FBOQ/PAT/GR Submitted
# ${Check Text FBOQ Submitted}               SSR > FBOQ Submitted
${Submitted Massage By Pass}               	BKK-2025000232
${Submitted SSR ID}                        //span/span/fieldset/span/div[2]/table/tbody/tr/td[2]/span/a
${Submitted Search PO Button}              //fieldset/table/tbody/tr[3]/td/span/table/tbody/tr/td[1]
${Submitted SSR ID First Row}              //fieldset/span/div[2]/table/tbody/tr/td[2]/span/a
${Submitted SSR ID Scroll Path}            //*[@id="ssrForm:dtbTodolistResult:j_id_jsp_548426285_73header:sortDiv"]/span/span
${Submitted Search PO Input}               //tr[2]/td/div[1]/div/span/fieldset/table[1]/tbody/tr[3]/td[3]/input
${Submitted PO Input}                      3000001727
${Submitted Button Search PO Input}        //div[2]/table/tbody/tr[2]/td/div[1]/div/span/fieldset/table[2]/tbody/tr[1]/td/input[1]


# ${Scroll TO FBOQ PAT GR Submitted Menu}    //div[4]/table/tbody/tr/td/form/div/span[52]/span/div/div[1]
${Submitted PO NO 1}                       //fieldset/span/div[3]/table/tbody/tr[1]/td[1]/input      
${Submitted PO NO 2}                       //fieldset/span/div[3]/table/tbody/tr[2]/td[1]/input
${Submitted Comfrim PO NO}                 //tr[2]/td/div[1]/div/span/span/fieldset/span/div[1]/input
${Submitted Receive Qty Input 1}           //tr[5]/td/div/div/table/tbody/tr[1]/td[8]/input
${Qty Input Value 1}                       1
${Submitted Receive Qty Input 2}           //tr[5]/td/div/div/table/tbody/tr[2]/td[8]/input
${Qty Input Value 2}                       1
${Submitted Cost Average Group 1}          //tr[5]/td/div/div/table/tbody/tr[1]/td[17]/select
${Submitted Select Cost Average Group 1}   //tr[5]/td/div/div/table/tbody/tr[1]/td[17]/select/option[2]
${Submitted Select Cost}                   //tr[5]/td/div/div/table/tbody/tr[1]/td[17]/select/option[2]
${Submitted Add Picture Button}            //tr[7]/td/span/div/div/table/tbody/tr/td/div[1]/div/div[2]/input
${Submitted Add Picture Button 1}          //tr/td/div[1]/div/div[2]/input

${Submitted Picture}                       C:/Users/arnoj885/Robot Framework/Obsolate Transporter/Pic/Cat000122#_[]().jpg

# ${Submitted ADD Pic File Path}             C:/Users/arnoj885/Robot Framework/Obsolate Transporter/Pic/Cat000122#_[]().jpg
${Submitted Check Added Pic ES}            //tr[7]/td/span/div/table/tbody/tr[2]/td/span/table/tbody/tr/td[3]/a[1]/img
${Submitted Check Added Pic TPT}           //*[@id="ssrForm:pnlSsrFBoqServiceSubmittedViewId:submitDtoRepeat:0:dtbFileUpload:0:fBOQSubmittedNewFileDownloadBtn"]/img

${Submitted ADD Pic File Save Button}      //form/span[2]/table/tbody/tr[1]/td[3]/input[4]
${Submitted SSR Result Message}            //fieldset/table/tbody/tr[2]/td

#FBOQ/PAT/GR Verified
${Verified Serach SSR ID}                  //tbody/tr[2]/td[3]/input
${Verified Massage By Pass}                BKK-2025000235
${Verified Serach Button}                  //form/fieldset/div[2]/input[1]
${Verified Serach Results Test}            //tbody/tr/td/form/span/span/fieldset/legend
${Verified Select First Row}               //fieldset/span/div[2]/table/tbody/tr/td[2]/span/a

${Verified View Document Import}           //div[2]/fieldset/table/tbody/tr[3]/td/input
${Verified General Information Title}      //tbody/tr/td/table/tbody/tr[8]/td[2]/span

${Verified Pass an Fail Path}              //tr[5]/td/table/tbody/tr/td[2]/select
${Verified Pass Case}                      //tr[5]/td/table/tbody/tr/td[2]/select/option[2]
${Verified Fail Case}                      //tr[5]/td/table/tbody/tr/td[2]/select/option[3]
${Verified Pass an Fail Save Button}       //td/form/span[2]/table/tbody/tr[1]/td[3]/input[4]
${Verified SSR Result Message}             //tr/td/form/fieldset/table/tbody/tr[2]/td


#FBOQ Approved
${FBOQ PAT GR Approve Approve SSR Result Message}       //tr/td/form/fieldset/table/tbody/tr[2]/td
${FBOQ PAT GR Approve Result Massage By pass}          	BKK-2025000236
${FBOQ PAT GR Approved And Rejected}       //table/tbody/tr[5]/td/table/tbody/tr/td[2]/select
${FBOQ PAT GR Approved Case}               //tr[5]/td/table/tbody/tr/td[2]/select/option[2]
${FBOQ PAT GR Reject Case}                 //tr[5]/td/table/tbody/tr/td[2]/select/option[3]              
${FBOQ PAT GR Approed Save Button}         //span[2]/table/tbody/tr[1]/td[3]/input[4]

#FAT Submitted
${FAT Submitted SSR Result Message}        //fieldset/table/tbody/tr[2]/td
${FAT Submitted Select First Row}          //div[2]/table/tbody/tr/td[2]/span/a
${FAT Submitted Add Picture}               //tr/td/div[1]/div/div[2]/input

${FAT Submitted Add Picture Path}          C:/Users/arnoj885/Robot Framework/Obsolate Transporter/Pic/Cat000122#_[]().jpg
${FAT Submitted Upload Picture}            //*[contains(@class, 'rich-fileupload-button-border')][2]
${FAT Submitted Check Upload Picture}      //table/tbody/tr/td[3]/a[2]/img
${FAT Submitted Save Button}               //*[@id="ssrForm:doSaveBtn"]
${FAT Submitted Result Message}            //fieldset/table/tbody/tr[2]/td
# ${FAT Submitted SSR ID Massage By Pass}            	BKK-2025000211

#FAT Approve
${FAT Approve Result Massage By Pass}      BKK-2025000208
${FAT Approve Approved And Rejected}       //tbody/tr[2]/td/table/tbody/tr/td[2]/select
# ${FAT Approve Select Approved}             //tbody/tr/td[2]/select/option[2]
${FAT Case Approve}                        //tbody/tr/td[2]/select/option[2]
${FAT Case Reject}                         //tbody/tr/td[2]/select/option[3]
${FAT Approve Save Button}                 //*[@id="ssrForm:doSaveBtn"]
${FAT Approve Result Massage}              //fieldset/table/tbody/tr[2]/td

#Check Remark Pass Reason 
${Pass Reason Massage}                     //tbody/tr[7]/td[8]/div/p/span

# Job Evaluation
${Evaluate Template First}                 //tr[3]/td/span/table/tbody/tr/td[1]
${Evaluate Template Seconds}               //tr[3]/td/span/table/tbody/tr/td[2]
${Job Evaluation Evaluate Type}            //table[1]/tbody/tr[3]/td[3]/select
${Job Evaluation Evaluate Type Serach}         //*[@id="ssrForm:pnlSsrEvaluateSubmittedViewId:evaluatePopup:btnSearch"]
${Quality}            //tr[3]/td[3]/select/option[3]            #Quality
${Speed}              //tr[3]/td[3]/select/option[2]            #Speed
${Job Evaluation Evaluate Select Type No}                 //span/div[3]/table/tbody/tr/td[1]/input
${Job Evaluation Evaluate Selection Comfrim Button}       //*[@id="ssrForm:pnlSsrEvaluateSubmittedViewId:evaluatePopup:evalPopupConfirmBtn"]
${Job Evaluation Assessment topic}                        //fieldset/table/tbody/tr[5]/td/div/div/table/thead/tr/th[4]
${Quality Very Good}                       //tbody/tr[1]/td[5]/table/tbody/tr/td[4]
${Speed Very Good}                         //tbody/tr[2]/td[5]/table/tbody/tr/td[4]
${Job Evaluation Add Picture}              //div[1]/div/div[2]/input
${Job Evaluation Picture Path}             C:/Users/arnoj885/Robot Framework/Obsolate Transporter/Pic/Cat000122#_[]().jpg
${Job Evaluation Picture Delete}           //tbody/tr/td[3]/a[2]/img
${Job Evaluation Save Button}              //*[@id="ssrForm:doSaveBtn"]
${Job Evaluation Approve Result Massage}   //fieldset/table/tbody/tr[2]/td

#Check Status
${Check Status Fieldset}                   //*[@id="ssrForm:dtbTrackingResult:0:j_id_jsp_1887081565_120"]/div
${Job Evaluation Result Massage By Pass}   BKK-2025000208

