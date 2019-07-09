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
    Wait Until Page Contains Element    id:bookingnow  #พบปุ่มจองเลย

Test2 ทดสอบการเข้าหน้ารายละเอียดห้องพัก
    # TestStep
    เลือกเมนูห้องพัก
    Wait Until Page Contains Element    id:bookingnow
    Click Button                        id:bookingnow
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

*** Keywords ***
เลือกเมนูห้องพัก
    Wait Until Page Contains Element        id:room
    Click Element           id:room     #เลือกเมนูห้องพัก

