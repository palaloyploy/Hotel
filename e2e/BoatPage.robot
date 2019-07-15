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


*** Keywords ***
เลือกเมนูเช่าเรือ
    Wait Until Page Contains Element        id:boat
    Click Element           id:boat     #เลือกเมนูเช้าเรือ