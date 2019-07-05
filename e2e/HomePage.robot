*** Settings ***
Library          Selenium2Library
Test Setup       เปิดหน้าหลัก
# Test Teardown    Close All Browsers

*** Variable ***
${BROWSER}       chrome
${URL}           http://127.0.0.1:8000/




*** Test Case ***

Test1 ทดสอบการเข้าหน้าหลัก
    # ExpectResult
    Title Should Be             หน้าหลัก
    Wait Until Page Contains Element        id:tabmenu       #พบแถบเมนู
    Wait Until Page Contains Element        id:footer        #พบฟุตเตอร์
    Wait Until Page Contains Element        id:banner        #พบแบนเนอร์โฆษณา
    Wait Until Page Contains Element        id:service       #พบบริการต่างๆ
    Wait Until Page Contains                บริการต่างๆ        #พบบริการต่างๆ

*** Keywords ***
เปิดหน้าหลัก
    Open Browser        ${URL}      ${BROWSER}
