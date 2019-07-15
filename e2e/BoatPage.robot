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



Test1 ทดสอบการเข้าหน้าเช่าเรือ
    # TestStep
    เลือกเมนูเช่าเรือ
    # ExpectResult
    Title Should Be             เช่าเรือ                #พบไตเติ้ลเช่าเรือ
    Wait Until Page Contains            เช่าเหมาเรือ    #พบข้อความ เช่าเหมาเรือ
    Wait Until Page Contains Element    id:bannerboat    #พบแบนเนอร์
    Wait Until Page Contains Element    id:listboat  #พบรายการเรือ
    Wait Until Page Contains Element    id:boatname  #พบชื่อเรือ
    Wait Until Page Contains Element    id:boatdescription  #พบรายละเอียดเรือ
    Wait Until Page Contains Element    id:boatimage    #พบรูปเรือ
    Wait Until Page Contains Element    id:bookingnow  #พบปุ่มจองเลย

Test2 ทดสอบการเข้าหน้ารายละเอียดเรือ
    # TestStep
    เลือกเมนูเช่าเรือ
    Wait Until Page Contains Element    id:bookingnow1
    Click Element                        id:bookingnow1
    # ExpectResult
    Title Should Be             DetailBoat
    Wait Until Page Contains Element    id:boatname                     #พบชื่อห้อง
    Wait Until Page Contains Element    id:navbutton                    #พบปุ่มนำทาง
    Wait Until Page Contains Element    id:boatimage                    #พบรูปเรือ
    Wait Until Element Contains         id:boatdescription    รายละเอียด                #พบข้อความ รายละเอียด
    Wait Until Page Contains Element    id:boatdescription                              #พบรายละเอียดเรือ
    Wait Until Element Contains         id:optionboat       สิ่งอำนวยความสะดวก         #พบข้อความ สิ่งอำนวยความสะดวก
    Wait Until Page Contains Element    id:optionboat                 #พบสิ่งอำนวยความสะดวก
    Wait Until Element Contains         id:detail      กรอกรายละเอียด        #พบข้อความ ข้อมูลติดต่อ
    Wait Until Element Contains         id:detail      ชื่อ-นามสกุล       #พบข้อความ ชื่อ-นามสกุล
    Wait Until Page Contains Element    id:name                         #พบอินพุต ชื่อ-นามสกุล
    Wait Until Element Contains         id:detail      อีเมล             #พบข้อความ อีเมล
    Wait Until Page Contains Element    id:email                        #พบอินพุต อีเมล
    Wait Until Element Contains         id:detail      เบอร์โทรติดต่อ      #พบข้อความ เบอร์โทรติดต่อ
    Wait Until Page Contains Element    id:phonenumber                  #พบอินพุต เบอร์โทรติดต่อ
    Wait Until Element Contains         id:detail      วันที่เช่า         #พบข้อความ วันที่เช่า
    Wait Until Page Contains Element    id:checkin                      #พบปฏิทิน วันที่เช่า
    Wait Until Element Contains         id:detail      เวลา         #พบข้อความ เวลา
    Wait Until Page Contains Element    id:time                   #พบดรอปดาวเวลา
    Wait Until Element Contains         id:detail      จำนวนคน          #พบข้อความ จำนวนคน
    Wait Until Page Contains Element    id:amountpeople                 #พบดรอปดาวจำนวนคน
    Wait Until Element Contains         id:booking     จอง                #พบปุ่มจอง

TesT3 ทดสอบการกดปุ่มนำทาง รายละเอียด
    # TestStep
    เลือกเมนูเช่าเรือ
    Wait Until Page Contains Element    id:bookingnow1
    Click Element                       id:bookingnow1  #เลือกห้อง
    Wait Until Page Contains Element    id:des_button
    Click Element                       id:des_button   #กดปุ่มนำทางจอง
    ${url}=   Get Location
    Should Be Equal     ${url}      http://127.0.0.1:8000/1/boatdetail/#boatname

TesT4 ทดสอบการกดปุ่มนำทาง จอง
    # TestStep
    เลือกเมนูเช่าเรือ
    Wait Until Page Contains Element    id:bookingnow1
    Click Element                       id:bookingnow1  #เลือกห้อง
    Wait Until Page Contains Element    id:booking_button
    Click Element                       id:booking_button   #กดปุ่มนำทางจอง
    ${url}=   Get Location
    Should Be Equal     ${url}      http://127.0.0.1:8000/1/boatdetail/#detail

Test5 ทดสอบการจองไม่สำเร็จหากไม่กรอกชื่อ-นามสกุล เพียงอย่างเดียว
    # TestStep
    เลือกเมนูเช่าเรือ
    Wait Until Page Contains Element    id:bookingnow1
    Click Element                       id:bookingnow1  #เลือกประเภทเรือ
    Wait Until Page Contains Element    id:booking_button
    Click Element                       id:booking_button   #กดปุ่มนำทางจอง
    Input Text                          //*[@id="email"]                email@email.com     #กรอกอีเมล 
    Input Text                          //*[@id="phonenumber"]          0812345678    #กรอกเบอร์โทรติดต่อ
    Wait Until Page Contains Element    //*[@id="datepickercheckin"]
    Input Text    //*[@id="datepickercheckin"]       18-07-2019
    Wait Until Page Contains Element    //*[@id="time"]/option[1]
    Click Element                       //*[@id="time"]/option[1]
    Wait Until Page Contains Element    //*[@id="amountpeople"]/option[1]
    Click Element                       //*[@id="amountpeople"]/option[1]
    Wait Until Page Contains Element    id:booking
    Click Element                       id:booking
    Wait Until Element Contains         id:alertname      กรุณากรอกชื่อ-นามสกุล          #พบข้อความ กรุณากรอกชื่อ-นามสกุล

Test6 ทดสอบการจองไม่สำเร็จเมื่อไม่กรอกอีเมล เพียงอย่างเดียว
    # TestStep
    เลือกเมนูเช่าเรือ
    Wait Until Page Contains Element    id:bookingnow1
    Click Element                       id:bookingnow1  #เลือกห้อง
    Wait Until Page Contains Element    id:booking_button
    Click Element                       id:booking_button   #กดปุ่มนำทางจอง     
    Input Text                          //*[@id="name"]          สมชาย นคร    #กรอกชื่อ-นามสกุล
    Input Text                          //*[@id="phonenumber"]          0812345678    #กรอกเบอร์โทรติดต่อ
    Wait Until Page Contains Element    //*[@id="datepickercheckin"]
    Input Text    //*[@id="datepickercheckin"]       18-07-2019
    Wait Until Page Contains Element    //*[@id="time"]/option[1]
    Click Element                       //*[@id="time"]/option[1]
    Wait Until Page Contains Element    //*[@id="amountpeople"]/option[1]
    Click Element                       //*[@id="amountpeople"]/option[1]
    Wait Until Page Contains Element    id:booking
    Click Element                       id:booking
    Wait Until Element Contains         id:alertemail      กรุณากรอกอีเมล          #พบข้อความ กรุณากรอกอีเมล

Test7 ทดสอบการจองไม่สำเร็จเมื่อไม่กรอกเบอร์โทรศัพท์ เพียงอย่างเดียว
    # TestStep
    เลือกเมนูเช่าเรือ
    Wait Until Page Contains Element    id:bookingnow1
    Click Element                       id:bookingnow1  #เลือกประเภทเรือ
    Wait Until Page Contains Element    id:booking_button
    Click Element                       id:booking_button   #กดปุ่มนำทางจอง     
    Input Text                          //*[@id="name"]          สมชาย นคร    #กรอกชื่อ-นามสกุล
    Input Text                          //*[@id="email"]         email@email.com     #กรอกอีเมล
    Wait Until Page Contains Element    //*[@id="datepickercheckin"]
    Input Text    //*[@id="datepickercheckin"]       18-07-2019
    Wait Until Page Contains Element    //*[@id="time"]/option[1]
    Click Element                       //*[@id="time"]/option[1]
    Wait Until Page Contains Element    //*[@id="amountpeople"]/option[1]
    Click Element                       //*[@id="amountpeople"]/option[1]
    Wait Until Page Contains Element    id:booking
    Click Element                       id:booking
    Wait Until Element Contains         id:alertphonenumber      กรุณากรอกเบอร์โทรติดต่อ

Test8 ทดสอบการจองไม่สำเร็จเมื่อไม่เลือกวันที่เช่า เพียงอย่างเดียว
    # TestStep
    เลือกเมนูเช่าเรือ
    Wait Until Page Contains Element    id:bookingnow1
    Click Element                       id:bookingnow1  #เลือกห้อง
    Wait Until Page Contains Element    id:booking_button
    Click Element                       id:booking_button   #กดปุ่มนำทางจอง     
    Input Text                          //*[@id="name"]          สมชาย นคร    #กรอกชื่อ-นามสกุล
    Input Text                          //*[@id="email"]         email@email.com     #กรอกอีเมล
    Input Text                          //*[@id="phonenumber"]          0812345678    #กรอกเบอร์โทรติดต่อ
    Wait Until Page Contains Element    //*[@id="time"]/option[1]
    Click Element                       //*[@id="time"]/option[1]
    Wait Until Page Contains Element    //*[@id="amountpeople"]/option[1]
    Click Element                       //*[@id="amountpeople"]/option[1]
    Wait Until Page Contains Element    id:booking
    Click Element                       id:booking
    Wait Until Element Contains         id:alertcheckin      กรุณาเลือกวันที่เช่า          #พบข้อความ กรุณาเลือกวันที่เช่า

Test9 ทดสอบการกรอกอีเมลผิดรูปแบบ
    # TestStep
    เลือกเมนูเช่าเรือ
    Wait Until Page Contains Element    id:bookingnow1
    Click Element                       id:bookingnow1  #เลือกประเภทเรือ
    Wait Until Page Contains Element    id:booking_button
    Click Element                       id:booking_button   #กดปุ่มนำทางจอง     
    Input Text                          //*[@id="name"]          สมชาย นคร    #กรอกชื่อ-นามสกุล
    Input Text                          //*[@id="email"]         email     #กรอกอีเมล
    Input Text                          //*[@id="phonenumber"]          0812345678    #กรอกเบอร์โทรติดต่อ
    Wait Until Page Contains Element    //*[@id="datepickercheckin"]
    Input Text    //*[@id="datepickercheckin"]       18-07-2019
    Wait Until Page Contains Element    //*[@id="time"]/option[1]
    Click Element                       //*[@id="time"]/option[1]
    Wait Until Page Contains Element    //*[@id="amountpeople"]/option[1]
    Click Element                       //*[@id="amountpeople"]/option[1]
    Wait Until Page Contains Element    id:booking
    Click Element                       id:booking
    Wait Until Element Contains         id:alertemail      กรุณากรอกอีเมลให้ถูกต้อง          #พบข้อความ กรุณากรอกอีเมลให้ถูกต้อง

*** Keywords ***
เลือกเมนูเช่าเรือ
    Wait Until Page Contains Element        id:boat
    Click Element           id:boat     #เลือกเมนูเช้าเรือ