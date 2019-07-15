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
    # Wait Until Element Contains         id:detail      ชื่อ-นามสกุล       #พบข้อความ ชื่อ-นามสกุล
    # Wait Until Page Contains Element    id:name                         #พบอินพุต ชื่อ-นามสกุล
    # Wait Until Element Contains         id:detail      อีเมล             #พบข้อความ อีเมล
    # Wait Until Page Contains Element    id:email                        #พบอินพุต อีเมล
    # Wait Until Element Contains         id:detail      เบอร์โทรติดต่อ      #พบข้อความ เบอร์โทรติดต่อ
    # Wait Until Page Contains Element    id:phonenumber                  #พบอินพุต เบอร์โทรติดต่อ
    # Wait Until Element Contains         id:detail      วันที่เช่า         #พบข้อความ วันที่เช่า
    # Wait Until Page Contains Element    id:checkin                      #พบปฏิทิน วันที่เช่า
    # Wait Until Element Contains         id:detail      เวลา         #พบข้อความ เวลา
    # Wait Until Page Contains Element    id:time                   #พบดรอปดาวเวลา
    # Wait Until Element Contains         id:detail      จำนวนคน          #พบข้อความ จำนวนคน
    # Wait Until Page Contains Element    id:amountpeople                 #พบดรอปดาวจำนวนคน
    # Wait Until Element Contains         id:booking     จอง                #พบปุ่มจอง


*** Keywords ***
เลือกเมนูเช่าเรือ
    Wait Until Page Contains Element        id:boat
    Click Element           id:boat     #เลือกเมนูเช้าเรือ