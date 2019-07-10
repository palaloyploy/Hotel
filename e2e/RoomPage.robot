*** Settings ***
Library          Selenium2Library
Test Setup       เปิดหน้าหลัก
Test Teardown    Close All Browsers
Resource         ${EXECDIR}/e2e/Keywords.robot


*** Variable ***
${BROWSER}       chrome
${URL}           http://127.0.0.1:8000/




*** Test Case ***



Test1 ทดสอบการเข้าหน้าห้องพัก
    # TestStep
    เลือกเมนูห้องพัก
    # ExpectResult
    Title Should Be             ห้องพัก
    Wait Until Page Contains           บริการห้องพัก    #พบข้อความ บริการห้องพัก
    Wait Until Page Contains Element    id:banner    #พบแบนเนอร์
    Wait Until Page Contains Element    id:listroom  #พบรายการห้อง
    Wait Until Page Contains Element    id:roomname  #พบชื่อห้อง
    Wait Until Page Contains Element    id:roomdescription  #พบรายละเอียดห้อง
    Wait Until Page Contains Element    id:roomimage    #พบรูปห้องพัก
    Wait Until Page Contains Element    id:bookingnow1  #พบปุ่มจองเลย

Test2 ทดสอบการเข้าหน้ารายละเอียดห้องพัก
    # TestStep
    เลือกเมนูห้องพัก
    Wait Until Page Contains Element    id:bookingnow1
    Click Element                        id:bookingnow1
    # ExpectResult
    Title Should Be             DetailRoom
    Wait Until Page Contains Element    id:roomname                     #พบชื่อห้อง
    Wait Until Page Contains Element    id:navbutton                    #พบปุ่มนำทาง
    Wait Until Page Contains Element    id:roomimage                    #พบรูปห้องพัก
    Wait Until Element Contains         id:roomdescription    รายละเอียด                #พบข้อความ รายละเอียด
    Wait Until Page Contains Element    id:roomdescription                              #พบรายละเอียดห้องพัก
    Wait Until Element Contains         id:suportdetail       สิ่งอำนวยความสะดวก         #พบข้อความ สิ่งอำนวยความสะดวก
    Wait Until Page Contains Element    id:suportdetail                 #พบสิ่งอำนวยความสะดวก
    Wait Until Element Contains         id:detail      ข้อมูลติดต่อ        #พบข้อความ ข้อมูลติดต่อ
    Wait Until Element Contains         id:detail      ชื่อ-นามสกุล       #พบข้อความ ชื่อ-นามสกุล
    Wait Until Page Contains Element    id:name                         #พบอินพุต ชื่อ-นามสกุล
    Wait Until Element Contains         id:detail      อีเมล             #พบข้อความ อีเมล
    Wait Until Page Contains Element    id:email                        #พบอินพุต อีเมล
    Wait Until Element Contains         id:detail      เบอร์โทรติดต่อ      #พบข้อความ เบอร์โทรติดต่อ
    Wait Until Page Contains Element    id:phonenumber                  #พบอินพุต เบอร์โทรติดต่อ
    Wait Until Element Contains         id:detail      check-in         #พบข้อความ check-in
    Wait Until Page Contains Element    id:checkin                      #พบปฏิทิน check-in
    Wait Until Element Contains         id:detail      check-out        #พบข้อความ check-out
    Wait Until Page Contains Element    id:checkout                     #พบปฏิทิน check-out
    Wait Until Element Contains         id:detail      จำนวนห้อง         #พบข้อความ จำนวนห้อง
    Wait Until Page Contains Element    id:amountroom                   #พบดรอปดาวจำนวนห้อง
    Wait Until Element Contains         id:detail      จำนวนคน          #พบข้อความ จำนวนคน
    Wait Until Page Contains Element    id:amountpeople                 #พบดรอปดาวจำนวนคน
    Wait Until Element Contains         id:booking     จอง                #พบปุ่มจอง

TesT3 ทดสอบการกดปุ่มนำทาง รายละเอียด
    # TestStep
    เลือกเมนูห้องพัก
    Wait Until Page Contains Element    id:bookingnow1
    Click Element                       id:bookingnow1  #เลือกห้อง
    Wait Until Page Contains Element    id:des_button
    Click Element                       id:des_button   #กดปุ่มนำทางจอง
    ${url}=   Get Location
    Should Be Equal     ${url}      http://127.0.0.1:8000/1/detail/#roomname

TesT4 ทดสอบการกดปุ่มนำทาง จอง
    # TestStep
    เลือกเมนูห้องพัก
    Wait Until Page Contains Element    id:bookingnow1
    Click Element                       id:bookingnow1  #เลือกห้อง
    Wait Until Page Contains Element    id:booking_button
    Click Element                       id:booking_button   #กดปุ่มนำทางจอง
    ${url}=   Get Location
    Should Be Equal     ${url}      http://127.0.0.1:8000/1/detail/#detail
Test5 ทดสอบการจองไม่สำเร็จหากไม่กรอกชื่อ-นามสกุล เพียงอย่างเดียว
    # TestStep
    เลือกเมนูห้องพัก
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
    Wait Until Page Contains Element    //*[@id="amountpeople"]/option[1]
    Click Element                       //*[@id="amountpeople"]/option[1]
    Wait Until Page Contains Element    id:booking
    Click Element                       id:booking
    Wait Until Element Contains         id:alertname      กรุณากรอกชื่อ-นามสกุล          #พบข้อความ กรุณากรอกชื่อ-นามสกุล

Test6 ทดสอบการจองไม่สำเร็จเมื่อไม่กรอกอีเมล เพียงอย่างเดียว
    # TestStep
    เลือกเมนูห้องพัก
    Wait Until Page Contains Element    id:bookingnow1
    Click Element                       id:bookingnow1  #เลือกห้อง
    Wait Until Page Contains Element    id:booking_button
    Click Element                       id:booking_button   #กดปุ่มนำทางจอง     
    Input Text                          //*[@id="name"]          สมชาย นคร    #กรอกชื่อ-นามสกุล
    Input Text                          //*[@id="phonenumber"]          0812345678    #กรอกเบอร์โทรติดต่อ
    Wait Until Page Contains Element    //*[@id="datepickercheckin"]
    Input Text    //*[@id="datepickercheckin"]       18-07-2019
    Wait Until Page Contains Element    //*[@id="amountroom"]/option[1]
    Click Element                       //*[@id="amountroom"]/option[1]
    Wait Until Page Contains Element    //*[@id="amountpeople"]/option[1]
    Click Element                       //*[@id="amountpeople"]/option[1]
    Wait Until Page Contains Element    id:booking
    Click Element                       id:booking
    Wait Until Element Contains         id:alertemail      กรุณากรอกอีเมล          #พบข้อความ กรุณากรอกอีเมล

Test7 ทดสอบการจองไม่สำเร็จเมื่อไม่กรอกเบอร์โทรศัพท์ เพียงอย่างเดียว
    # TestStep
    เลือกเมนูห้องพัก
    Wait Until Page Contains Element    id:bookingnow1
    Click Element                       id:bookingnow1  #เลือกห้อง
    Wait Until Page Contains Element    id:booking_button
    Click Element                       id:booking_button   #กดปุ่มนำทางจอง     
    Input Text                          //*[@id="name"]          สมชาย นคร    #กรอกชื่อ-นามสกุล
    Input Text                          //*[@id="email"]         email@email.com     #กรอกอีเมล
    Wait Until Page Contains Element    //*[@id="datepickercheckin"]
    Input Text    //*[@id="datepickercheckin"]       18-07-2019
    Wait Until Page Contains Element    //*[@id="amountroom"]/option[1]
    Click Element                       //*[@id="amountroom"]/option[1]
    Wait Until Page Contains Element    //*[@id="amountpeople"]/option[1]
    Click Element                       //*[@id="amountpeople"]/option[1]
    Wait Until Page Contains Element    id:booking
    Click Element                       id:booking
    Wait Until Element Contains         id:alertphonenumber      กรุณากรอกเบอร์โทรติดต่อ          #พบข้อความ กรุณากรอกเบอร์ติดต่อ

Test8 ทดสอบการจองไม่สำเร็จเมื่อไม่เลือกเวลาcheck-in เพียงอย่างเดียว
    # TestStep
    เลือกเมนูห้องพัก
    Wait Until Page Contains Element    id:bookingnow1
    Click Element                       id:bookingnow1  #เลือกห้อง
    Wait Until Page Contains Element    id:booking_button
    Click Element                       id:booking_button   #กดปุ่มนำทางจอง     
    Input Text                          //*[@id="name"]          สมชาย นคร    #กรอกชื่อ-นามสกุล
    Input Text                          //*[@id="email"]         email@email.com     #กรอกอีเมล
    Input Text                          //*[@id="phonenumber"]          0812345678    #กรอกเบอร์โทรติดต่อ
    Wait Until Page Contains Element    //*[@id="amountroom"]/option[1]
    Click Element                       //*[@id="amountroom"]/option[1]
    Wait Until Page Contains Element    //*[@id="amountpeople"]/option[1]
    Click Element                       //*[@id="amountpeople"]/option[1]
    Wait Until Page Contains Element    id:booking
    Click Element                       id:booking
    Wait Until Element Contains         id:alertcheckin      กรุณาเลือกวันcheck-in          #พบข้อความ กรุณาเลือกวันcheck-in

Test9 ทดสอบการกรอกอีเมลผิดรูปแบบ
    # TestStep
    เลือกเมนูห้องพัก
    Wait Until Page Contains Element    id:bookingnow1
    Click Element                       id:bookingnow1  #เลือกห้อง
    Wait Until Page Contains Element    id:booking_button
    Click Element                       id:booking_button   #กดปุ่มนำทางจอง     
    Input Text                          //*[@id="name"]          สมชาย นคร    #กรอกชื่อ-นามสกุล
    Input Text                          //*[@id="email"]         email     #กรอกอีเมล
    Input Text                          //*[@id="phonenumber"]          0812345678    #กรอกเบอร์โทรติดต่อ
    Wait Until Page Contains Element    //*[@id="datepickercheckin"]
    Input Text    //*[@id="datepickercheckin"]       18-07-2019
    Wait Until Page Contains Element    //*[@id="amountroom"]/option[1]
    Click Element                       //*[@id="amountroom"]/option[1]
    Wait Until Page Contains Element    //*[@id="amountpeople"]/option[1]
    Click Element                       //*[@id="amountpeople"]/option[1]
    Wait Until Page Contains Element    id:booking
    Click Element                       id:booking
    Wait Until Element Contains         id:alertemail      กรุณากรอกอีเมลให้ถูกต้อง          #พบข้อความ กรุณากรอกอีเมลให้ถูกต้อง

Test10 ทดสอบการกรอกเบอร์โทรศัพท์ผิดรูปแบบ
    # TestStep
    เลือกเมนูห้องพัก
    Wait Until Page Contains Element    id:bookingnow1
    Click Element                       id:bookingnow1  #เลือกห้อง
    Wait Until Page Contains Element    id:booking_button
    Click Element                       id:booking_button   #กดปุ่มนำทางจอง     
    Input Text                          //*[@id="name"]          สมชาย นคร    #กรอกชื่อ-นามสกุล
    Input Text                          //*[@id="email"]         email@email.com     #กรอกอีเมล
    Input Text                          //*[@id="phonenumber"]          1234567891011    #กรอกเบอร์โทรติดต่อ
    Wait Until Page Contains Element    //*[@id="datepickercheckin"]
    Input Text    //*[@id="datepickercheckin"]       18-07-2019
    Wait Until Page Contains Element    //*[@id="amountroom"]/option[1]
    Click Element                       //*[@id="amountroom"]/option[1]
    Wait Until Page Contains Element    //*[@id="amountpeople"]/option[1]
    Click Element                       //*[@id="amountpeople"]/option[1]
    Wait Until Page Contains Element    id:booking
    Click Element                       id:booking
    Wait Until Element Contains         id:alertphonenumber      กรุณากรอกเบอร์โทรติดต่อให้ถูกต้อง          #พบข้อความ กรุณากรอกเบอร์โทรติดต่อให้ถูกต้อง

Test11 ทดสอบการเข้าหน้ายืนยันการจองสำเร็จ
    เลือกเมนูห้องพัก
    Wait Until Page Contains Element    id:bookingnow1
    Click Element                        id:bookingnow1         #เลือกห้อง
    Click Element                       id:booking_button       #กดปุ่มนำทางจอง
    Input Text                          id:name         palaloy
    Input Text                          id:email        admin@gmail.com
    Input Text                          id:phonenumber      1234567890
    Input Text                          //*[@id="datepickercheckin"]        10-07-2019
    Input Text                          //*[@id="datepickercheckout"]         11-07-2019
    Click Element                       //*[@id="amountroom"]/option[1]
    Click Element                       //*[@id="amountpeople"]/option[1]
    
    Click Element                       booking
    # ExpectResult
    Wait Until Element Is Visible       id:popupbooking
    Wait Until Element Contains         id:popupbooking         ยืนยันการจอง
    Wait Until Element Contains         id:popupbooking         ประเภทห้อง
    Wait Until Element Contains         id:popupbooking         ชื่อ-นามสกุล
    Wait Until Element Contains         id:popupbooking         อีเมล
    Wait Until Element Contains         id:popupbooking         เบอร์โทรศัพท์
    Wait Until Element Contains         id:popupbooking         วันที่check-in
    Wait Until Element Contains         id:popupbooking         วันที่check-out
    Wait Until Element Contains         id:popupbooking         จำนวนห้อง
    Wait Until Element Contains         id:popupbooking         จำนวนคน
    Wait Until Element Contains         id:popupbooking         ราคารวม
    Wait Until Element Is Visible            id:cancelbooking
    Wait Until Element Is Visible            id:confirmbooking
    
Test12 ทดสอบการยืนยันการจองไม่สำเร็จหากกดปุ่มยกเลิก
    เลือกเมนูห้องพัก
    Wait Until Page Contains Element    id:bookingnow1
    Click Element                        id:bookingnow1         #เลือกห้อง
    Click Element                       id:booking_button       #กดปุ่มนำทางจอง
    Input Text                          id:name         palaloy
    Input Text                          id:email        admin@gmail.com
    Input Text                          id:phonenumber      1234567890
    Input Text                          //*[@id="datepickercheckin"]        10-07-2019
    Input Text                          //*[@id="datepickercheckout"]         11-07-2019
    Click Element                       //*[@id="amountroom"]/option[1]
    Click Element                       //*[@id="amountpeople"]/option[1]
    
    Click Element                       booking
    # ExpectResult
    Wait Until Element Is Visible       id:popupbooking
    Wait Until Element Contains         id:popupbooking         ยืนยันการจอง
    Wait Until Element Contains         id:popupbooking         ประเภทห้อง
    Wait Until Element Contains         id:popupbooking         ชื่อ-นามสกุล
    Wait Until Element Contains         id:popupbooking         อีเมล
    Wait Until Element Contains         id:popupbooking         เบอร์โทรศัพท์
    Wait Until Element Contains         id:popupbooking         วันที่check-in
    Wait Until Element Contains         id:popupbooking         วันที่check-out
    Wait Until Element Contains         id:popupbooking         จำนวนห้อง
    Wait Until Element Contains         id:popupbooking         จำนวนคน
    Wait Until Element Contains         id:popupbooking         ราคารวม
    Wait Until Element Is Visible            id:cancelbooking
    Wait Until Element Is Visible            id:confirmbooking
    Click Element                       id:cancelbooking
    Wait Until Element Is Not Visible        id:popupbooking

Test13 ทดสอบการยืนยันการจองสำเร็จหากกดปุ่มยืนยัน
    เลือกเมนูห้องพัก
    Wait Until Page Contains Element    id:bookingnow1
    Click Element                        id:bookingnow1         #เลือกห้อง
    Click Element                       id:booking_button       #กดปุ่มนำทางจอง
    Input Text                          id:name         palaloy
    Input Text                          id:email        admin@gmail.com
    Input Text                          id:phonenumber      1234567890
    Input Text                          //*[@id="datepickercheckin"]        10-07-2019
    Input Text                          //*[@id="datepickercheckout"]         11-07-2019
    Click Element                       //*[@id="amountroom"]/option[1]
    Click Element                       //*[@id="amountpeople"]/option[1]
    
    Click Element                       booking
    # ExpectResult
    Wait Until Element Is Visible       id:popupbooking
    Wait Until Element Contains         id:popupbooking         ยืนยันการจอง
    Wait Until Element Contains         id:popupbooking         ประเภทห้อง
    Wait Until Element Contains         id:popupbooking         ชื่อ-นามสกุล
    Wait Until Element Contains         id:popupbooking         อีเมล
    Wait Until Element Contains         id:popupbooking         เบอร์โทรศัพท์
    Wait Until Element Contains         id:popupbooking         วันที่check-in
    Wait Until Element Contains         id:popupbooking         วันที่check-out
    Wait Until Element Contains         id:popupbooking         จำนวนห้อง
    Wait Until Element Contains         id:popupbooking         จำนวนคน
    Wait Until Element Contains         id:popupbooking         ราคารวม
    Wait Until Element Is Visible            id:cancelbooking
    Wait Until Element Is Visible            id:confirmbooking
    Click Element                       id:confirmbooking
    Sleep                               2
    Title Should Be                     ห้องพัก

*** Keywords ***
เลือกเมนูห้องพัก
    Wait Until Page Contains Element        id:room
    Click Element           id:room     #เลือกเมนูห้องพัก
 

