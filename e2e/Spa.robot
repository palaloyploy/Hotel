*** Settings ***
Library          Selenium2Library
Test Setup       เปิดหน้าหลัก
Test Teardown    Close All Browsers
Resource         ${EXECDIR}/e2e/Keywords.robot


*** Variable ***
${BROWSER}       chrome
${URL}           http://127.0.0.1:8000/




*** Test Case ***



Test1 ทดสอบการเข้าหน้าสปา
    # TestStep
    เลือกเมนูห้องพัก
    # ExpectResult
    Title Should Be             สปา
    Wait Until Page Contains            id:spa            สปาของโรงแรม    #พบข้อความ สปาของโรงแรม
    Wait Until Page Contains Element    id:spabanner    #พบแบนเนอร์
    Wait Until Page Contains Element    id:spaimage    #พบรูปบรรยากาศสปา
    Wait Until Page Contains            id:spa            service    #พบข้อความ service
    Wait Until Page Contains Element    id:spaservice    #พบบริการต่างๆของสปา
    Wait Until Element Contains         id:spaservice     นวดหน้า        #พบบริการนวดหน้า
    Wait Until Element Contains         id:spaservice     อบซาวน่า        #พบบริการอบซาวน่า
    Wait Until Element Contains         id:spaservice     แช่ออนเซ็น        #พบบริการแช่ออนเซ็น
    Wait Until Element Contains         id:spaservice     นวดแผนไทย        #พบบริการนวดแผนไทย
    Wait Until Element Contains         id:spaservice     นวดน้ำมัน        #พบบริการนวดน้ำมัน
    Wait Until Element Contains         id:spaservice     ขัดตัว        #พบบริการขัดตัว

*** Keywords ***
เลือกเมนูห้องพัก
    Wait Until Page Contains Element        id:spa
    Click Element           id:spa     #เลือกเมนูห้องพัก
