*** Settings ***
Library          Selenium2Library
Library          OperatingSystem
Suite Setup      SetUpdb
Test Setup       เปิดหน้าหลัก
Test Teardown    Close All Browsers
Resource         ${EXECDIR}/e2e/Keywords.robot


*** Variable ***
${BROWSER}       chrome
${URL}           http://127.0.0.1:8000/




*** Test Case ***



# Test1 ทดสอบการเข้าหน้าห้องพัก
#     # TestStep
#     เลือกเมนูห้องคาราโอเกะ
#     # ExpectResult
#     Title Should Be             ห้องคาราโอเกะ
#     Wait Until Page Contains           บริการห้องคาราโอเกะ    #พบข้อความ บริการห้องพัก
#     Wait Until Page Contains Element    id:banner    #พบแบนเนอร์
#     Wait Until Page Contains Element    id:listkaraokeroom  #พบรายการห้อง
#     Wait Until Page Contains Element    id:karaokeroomname  #พบชื่อห้อง
#     Wait Until Page Contains Element    id:karaokedescription  #พบรายละเอียดห้อง
#     Wait Until Page Contains Element    id:karaokeimage    #พบรูปห้องพัก
#     Wait Until Page Contains Element    id:bookingnow1  #พบปุ่มจองเลย

# Test2 ทดสอบการเข้าหน้ารายละเอียดห้องพัก
#     # TestStep
#     เลือกเมนูห้องคาราโอเกะ
#     Wait Until Page Contains Element    id:bookingnow1
#     Click Element                        id:bookingnow1
#     # ExpectResult
#     Title Should Be             DetailKaraoke
#     Wait Until Page Contains Element    id:karaokeroomname                     #พบชื่อห้องคาราโอเกะ
#     Wait Until Page Contains Element    id:navbutton                    #พบปุ่มนำทาง
#     Wait Until Page Contains Element    id:karaokeimage                    #พบรูปห้องพัก
#     Wait Until Element Contains         id:karaokedescription    รายละเอียด                #พบข้อความ รายละเอียด
#     Wait Until Page Contains Element    id:karaokedescription                              #พบรายละเอียดห้องพัก
#     Wait Until Element Contains         id:information      ข้อมูลติดต่อ        #พบข้อความ ข้อมูลติดต่อ
#     Wait Until Element Contains         id:information      วันที่จอง            #พบข้อความ วันที่จอง
#     Wait Until Page Contains Element    id:checkin                      #พบปฏิทิน วันที่จอง
#     Wait Until Element Contains         id:information      เลขห้อง         #พบข้อความ เลขห้อง
#     Wait Until Page Contains Element    id:numroom                   #พบดรอปดาว เลขห้อง
#     Wait Until Element Contains         id:information      ชื่อ-นามสกุล       #พบข้อความ ชื่อ-นามสกุล
#     Wait Until Page Contains Element    id:name                         #พบอินพุต ชื่อ-นามสกุล
#     Wait Until Element Contains         id:information      อีเมล             #พบข้อความ อีเมล
#     Wait Until Page Contains Element    id:email                        #พบอินพุต อีเมล
#     Wait Until Element Contains         id:information      เบอร์โทรติดต่อ      #พบข้อความ เบอร์โทรติดต่อ
#     Wait Until Page Contains Element    id:phonenumber                  #พบอินพุต เบอร์โทรติดต่อ
#     Wait Until Element Contains         id:information      หมายเหตุ         #พบข้อความ หมายเหตุ
#     Wait Until Page Contains Element    id:remark                       #พบอินพุต หมายเหตุ
#     Wait Until Element Contains         id:booking     จอง                #พบปุ่มจอง

# TesT3 ทดสอบการกดปุ่มนำทาง รายละเอียด
#     # TestStep
#     เลือกเมนูห้องคาราโอเกะ
#     Wait Until Page Contains Element    id:bookingnow1
#     Click Element                       id:bookingnow1  #เลือกห้อง
#     Wait Until Page Contains Element    id:des_button
#     Click Element                       id:des_button   #กดปุ่มนำทางจอง
#     ${url}=   Get Location
#     Should Be Equal     ${url}      http://127.0.0.1:8000/1/karaokedetail/#karaokeroomname

# TesT4 ทดสอบการกดปุ่มนำทาง จอง
#     # TestStep
#     เลือกเมนูห้องคาราโอเกะ
#     Wait Until Page Contains Element    id:bookingnow1
#     Click Element                       id:bookingnow1  #เลือกห้อง
#     Wait Until Page Contains Element    id:booking_button
#     Click Element                       id:booking_button   #กดปุ่มนำทางจอง
#     ${url}=   Get Location
#     Should Be Equal     ${url}      http://127.0.0.1:8000/1/karaokedetail/#information

Test5 ทดสอบการจองไม่สำเร็จหากไม่กรอกชื่อ-นามสกุล เพียงอย่างเดียว
    # TestStep
    เลือกเมนูห้องคาราโอเกะ
    Wait Until Page Contains Element    id:bookingnow1
    Click Element                       id:bookingnow1  #เลือกห้อง
    Wait Until Page Contains Element    id:booking_button
    Click Element                       id:booking_button   #กดปุ่มนำทางจอง
    Input Text                          //*[@id="email"]                email@email.com     #กรอกอีเมล 
    Input Text                          //*[@id="phonenumber"]          0812345678    #กรอกเบอร์โทรติดต่อ
    Wait Until Page Contains Element    //*[@id="datepickercheckin"]
    Input Text    //*[@id="datepickercheckin"]       18-07-2019
    Wait Until Page Contains Element    //*[@id="amountroom"]/option[1]
    Click Element                       //*[@id="amountroom"]/option[1]
    Wait Until Page Contains Element    id:booking
    Click Element                       id:booking
    Wait Until Element Contains         id:alertname      กรุณากรอกชื่อ-นามสกุล          #พบข้อความ กรุณากรอกชื่อ-นามสกุล



*** Keywords ***
เลือกเมนูห้องคาราโอเกะ
    Wait Until Page Contains Element        id:karaoke
    Click Element           id:karaoke     #เลือกเมนูห้องพัก
 

