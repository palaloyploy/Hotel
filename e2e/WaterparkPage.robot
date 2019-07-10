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



Test1 ทดสอบการเข้าหน้าสวนน้ำ
    # TestStep
    เลือกเมนูสวนน้ำ
    # ExpectResult
    Title Should Be             สวนน้ำ
    Wait Until Page Contains Element    id:banner    #พบแบนเนอร์
    Wait Until Element Contains         id:banner           สวนน้ำ   #พบชื่อสวนน้ำในแบนเนอร์
    Wait Until Element Contains         id:waterparkdetail   สวนน้ำ  #พบช้อมูลสวนน้ำ
    Wait Until Page Contains Element         id:waterparkimage        #พบรูปภาพสวนน้ำ
    Wait Until Page Contains Element    id:listplay  #พบรายการเครื่องเล่น
    Wait Until Page Contains Element    id:playname  #พบชื่อเครื่องเล่น
    Wait Until Page Contains Element    id:playdescription  #พบรายละเอียดเครื่องเล่น
    Wait Until Page Contains Element    id:playimage    #พบรูปเครื่องเล่น
    Wait Until Page Contains            เวลาเปิด-ปิด        #พบข้อมูลเวลาเปิด-ปิด
    Wait Until Page Contains            สถานที่             #พบข้อมูลสถานที่


*** Keywords ***
เลือกเมนูสวนน้ำ
    Wait Until Page Contains Element        id:waterpark
    Click Element           id:waterpark     #เลือกเมนูสวนน้ำ
