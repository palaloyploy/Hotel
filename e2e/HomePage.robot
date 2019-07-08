*** Settings ***
Library          Selenium2Library
Test Setup       เปิดหน้าหลัก
Test Teardown    Close All Browsers

*** Variable ***
${BROWSER}       chrome
${URL}           http://127.0.0.1:8000/




*** Test Case ***



Test1 ทดสอบการเข้าหน้าหลัก
    # ExpectResult
    Title Should Be                     หน้าหลัก
    Wait Until Page Contains Element    id:tabmenu     #พบแถบเมนู
    Wait Until Page Contains Element    id:footer      #พบฟุตเตอร์
    Wait Until Page Contains Element    id:banner      #พบแบนเนอร์โฆษณา
    Wait Until Page Contains Element    id:service     #พบบริการต่างๆ
    Wait Until Page Contains            บริการต่างๆ    #พบบริการต่างๆ
    Wait Until Element Contains         id:service     ห้องพัก              #พบบริการ ห้องพัก ในบริการต่างๆ
    Wait Until Element Contains         id:service     คาราโอเกะ            #พบบริการ คาราโอเกะ ในบริการต่างๆ
    Wait Until Element Contains         id:service     เช่าเรือ             #พบบริการ เช่าเรือ ในบริการต่างๆ
    Wait Until Element Contains         id:service     ฟิตเนส               #พบบริการ ฟิตเนส ในบริการต่างๆ
    Wait Until Element Contains         id:service     สปา                  #พบบริการ สปา ในบริการต่างๆ
    Wait Until Element Contains         id:service     สวนน้ำ               #พบบริการ สวนน้ำ ในบริการต่างๆ

Test3 ทดสอบการแสดงผลฟุตเตอร์
    Wait Until Page Contains Element    id:footer      #พบฟุตเตอร์
    Wait Until Element Contains         id:footer      ข้อมูลติดต่อ         #พบข้อมูลผู้ติดต่อ
    Wait Until Element Contains         id:footer      ข้อมูลผู้สนับสนุน    #พบข้อมูลผู้สนับสนุน
    Wait Until Page Contains Element    id:map         #พบแผนที่


*** Keywords ***
เปิดหน้าหลัก
    Open Browser                        ${URL}         ${BROWSER}

