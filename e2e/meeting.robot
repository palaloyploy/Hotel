*** Settings ***
Library          Selenium2Library
# Library        OperatingSystem
# Suite Setup    SetUpdb
Test Setup       เปิดหน้าหลัก
Test Teardown    Close All Browsers
Resource         ${EXECDIR}/e2e/Keywords.robot


*** Variable ***
${BROWSER}       chrome
${URL}           http://127.0.0.1:8000/




*** Test Case ***



# Test1 ทดสอบการเข้าหน้าห้องประชุม
#     # TestStep
#     เลือกเมนูห้องประชุม
#     # ExpectResult
#     Title Should Be                     ห้องประชุม
#     Wait Until Page Contains            บริการห้องประชุม                     #พบข้อความ บริการห้องประชุม
#     Wait Until Page Contains Element    id:myCarousel                        #พบแบนเนอร์
#     Wait Until Page Contains Element    id:meetroomlist                      #พบรายการห้องประขุม
#     Wait Until Page Contains Element    id:meetroomname                      #พบชื่อห้องประชุม
#     Wait Until Page Contains Element    id:meetroomdes                       #พบรายละเอียดห้อง
#     Wait Until Page Contains Element    id:meetroomimage                     #พบรูปห้องประชุม
#     Wait Until Page Contains Element    id:meetroomdetail1                   #พบปุ่มจองห้องประชุม


# Test2 ทดสอบการเข้าหน้ารายละเอียดห้องประชุม
#     # TestStep
#     เลือกเมนูห้องประชุม
#     Wait Until Page Contains Element    id:meetroomdetail1
#     Click Element                       id:meetroomdetail1
#     # ExpectResult
#     Title Should Be                     รายละเอียดห้องประชุม
#     Wait Until Page Contains Element    id:meetroomname                      #พบชื่อห้อง
#     Wait Until Page Contains Element    id:navbutton                         #พบปุ่มนำทาง
#     Wait Until Page Contains Element    id:meetroomimage                     #พบรูปห้องพัก
#     Wait Until Page Contains Element    id:meetroomdes                       #พบรายละเอียดห้องพัก
#     Wait Until Element Contains         id:meetroomoption                    สิ่งอำนวยความสะดวก                                      #พบข้อความ สิ่งอำนวยความสะดวก
#     Wait Until Page Contains Element    id:meetroomoption                    #พบสิ่งอำนวยความสะดวก
#     Wait Until Element Contains         id:meetroombook                      แบบฟอร์มจองห้องประชุม                                   #พบข้อความ ข้อมูลติดต่อ
#     Wait Until Element Contains         id:meetroombook                      ชื่อ-นามสกุล                                            #พบข้อความ ชื่อ-นามสกุล
#     Wait Until Page Contains Element    id:name                              #พบอินพุต ชื่อ-นามสกุล
#     Wait Until Element Contains         id:meetroombook                      อีเมล                                                   #พบข้อความ อีเมล
#     Wait Until Page Contains Element    id:email                             #พบอินพุต อีเมล
#     Wait Until Element Contains         id:meetroombook                      เบอร์โทร                                                #พบข้อความ เบอร์โทรติดต่อ
#     Wait Until Page Contains Element    id:phone                             #พบอินพุต เบอร์โทรติดต่อ
#     Wait Until Element Contains         id:meetroombook                      วันที่                                                  #พบข้อความ check-in
#     Wait Until Page Contains Element    id:dateDefault                       #พบปฏิทิน check-in
#     Wait Until Element Contains         id:meetroombook                      เวลา                                                    #พบข้อความ check-out
#     Wait Until Page Contains Element    id:typetime                          #พบปฏิทิน check-out

#     Wait Until Element Contains         id:booking                           จอง                                                     #พบปุ่มจอง

# TesT3 ทดสอบการกดปุ่มนำทาง รายละเอียด
#     # TestStep
#     เลือกเมนูห้องประชุม
#     Wait Until Page Contains Element    id:meetroomdetail1
#     Click Element                       id:meetroomdetail1                   #เลือกห้อง
#     Wait Until Page Contains Element    id:list_button
#     Click Element                       id:list_button                       #กดปุ่มนำทางจอง
#     ${url}=                             Get Location
#     Should Be Equal                     ${url}                               http://127.0.0.1:8000/1/meetroomdetail/#meetroomlist

# TesT4 ทดสอบการกดปุ่มนำทาง จอง
#     # TestStep
#     เลือกเมนูห้องประชุม
#     Wait Until Page Contains Element    id:meetroomdetail1
#     Click Element                       id:meetroomdetail1                   #เลือกห้อง
#     Wait Until Page Contains Element    id:book_button
#     Click Element                       id:book_button                       #กดปุ่มนำทางจอง
#     ${url}=                             Get Location
#     Should Be Equal                     ${url}                               http://127.0.0.1:8000/1/meetroomdetail/#meetroombook


# Test5 ทดสอบการจองไม่สำเร็จหากไม่กรอกชื่อ-นามสกุล เพียงอย่างเดียว
#     # TestStep
#     # Set Selenium Speed          1
#     เลือกเมนูห้องประชุม
#     Wait Until Page Contains Element    id:meetroomdetail1
#     Click Element                       id:meetroomdetail1                   #เลือกห้อง
#     Wait Until Page Contains Element    id:book_button
#     Click Element                       id:book_button                       #กดปุ่มนำทางจอง
#         # Input Text                          //*[@id="name"]                     email@email.com  
#     Input Text                          //*[@id="email"]                     email@email.com                                         #กรอกอีเมล
#     Input Text                          //*[@id="phone"]                     0812345678                                              #กรอกเบอร์โทรติดต่อ
#     Wait Until Page Contains Element    //*[@id="dateDefault"]
#     Input Text                          //*[@id="dateDefault"]         18-07-2019
#     Wait Until Page Contains Element    //*[@id="typetime"]/option[2]
#     Click Element                       //*[@id="typetime"]/option[2]
#     Wait Until Page Contains Element    id:booking
#     Click Element                       id:booking
#     Wait Until Element Contains         id:alertname                         กรุณากรอกชื่อ-นามสกุล                                   #พบข้อความ กรุณากรอกชื่อ-นามสกุล


# Test6 ทดสอบการจองไม่สำเร็จเมื่อไม่กรอกอีเมล เพียงอย่างเดียว
#     # TestStep
#     # Set Selenium Speed          1
#     เลือกเมนูห้องประชุม
#     Wait Until Page Contains Element    id:meetroomdetail1
#     Click Element                       id:meetroomdetail1                   #เลือกห้อง
#     Wait Until Page Contains Element    id:book_button
#     Click Element                       id:book_button                       #กดปุ่มนำทางจอง
#         Input Text                          //*[@id="name"]                     testname 
#     # Input Text                          //*[@id="email"]                     email@email.com                                         #กรอกอีเมล
#     Input Text                          //*[@id="phone"]                     0812345678                                              #กรอกเบอร์โทรติดต่อ
#     Wait Until Page Contains Element    //*[@id="dateDefault"]
#     Input Text                          //*[@id="dateDefault"]         18-07-2019
#     Wait Until Page Contains Element    //*[@id="typetime"]/option[2]
#     Click Element                       //*[@id="typetime"]/option[2]
#     Wait Until Page Contains Element    id:booking
#     Click Element                       id:booking
#     Wait Until Element Contains         id:alertemail                         กรุณากรอกอีเมล                                  #พบข้อความ กรุณากรอกชื่อ-นามสกุล

Test7 ทดสอบการจองไม่สำเร็จเมื่อไม่กรอกเบอร์โทรศัพท์ เพียงอย่างเดียว
    # TestStep
    # Set Selenium Speed          1
    เลือกเมนูห้องประชุม
    Wait Until Page Contains Element    id:meetroomdetail1
    Click Element                       id:meetroomdetail1                   #เลือกห้อง
    Wait Until Page Contains Element    id:book_button
    Click Element                       id:book_button                       #กดปุ่มนำทางจอง
        Input Text                          //*[@id="name"]                     testname 
    Input Text                          //*[@id="email"]                     email@email.com                                         #กรอกอีเมล
    # Input Text                          //*[@id="phone"]                     0812345678                                              #กรอกเบอร์โทรติดต่อ
    Wait Until Page Contains Element    //*[@id="dateDefault"]
    Input Text                          //*[@id="dateDefault"]         18-07-2019
    Wait Until Page Contains Element    //*[@id="typetime"]/option[2]
    Click Element                       //*[@id="typetime"]/option[2]
    Wait Until Page Contains Element    id:booking
    Click Element                       id:booking
    Wait Until Element Contains         id:alertphone                         กรุณากรอกเบอร์โทรศัพท์                                  #พบข้อความ กรุณากรอกชื่อ-นามสกุล



*** Keywords ***
เลือกเมนูห้องประชุม
    Wait Until Page Contains Element    id:meetroom
    Click Element                       id:meetroom                          #เลือกเมนูห้องประชุม


