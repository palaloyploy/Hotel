*** Settings ***
Library            Selenium2Library


*** Variable ***
Library            Selenium2Library
Test Setup         เปิดหน้าหลัก
# Test Teardown    Close All Browsers

*** Variable ***
${BROWSER}         chrome
${URL}             http://127.0.0.1:8000/




*** Test Case ***


*** Keywords ***

Test1 ทดสอบการเข้าหน้าหลัก
    # ExpectResult
    Title Should Be                     หน้าหลัก
    Wait Until Page Contains Element    id:tabmenu     #พบแถบเมนู
    Wait Until Page Contains Element    id:footer      #พบฟุตเตอร์
    Wait Until Page Contains Element    id:banner      #พบแบนเนอร์โฆษณา
    Wait Until Page Contains Element    id:service     #พบบริการต่างๆ
    Wait Until Page Contains            บริการต่างๆ    #พบบริการต่างๆ
    Wait Until Element Contains         id:service     ห้องพัก
    Wait Until Element Contains         id:service     คาราโอเกะ
    Wait Until Element Contains         id:service     เช่าเรือ
    Wait Until Element Contains         id:service     ฟิตเน็ท
    Wait Until Element Contains         id:service     สปา
    Wait Until Element Contains         id:service     สวนน้ำ


*** Keywords ***
เปิดหน้าหลัก
    Open Browser                        ${URL}         ${BROWSER}

