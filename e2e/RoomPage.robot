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

Test2-1 ทดสอบการเข้าหน้ารายละเอียดห้องพัก
    # ExpectResult
    Title Should Be             DetailRoom
    Wait Until Page Contains Element    id:roomname     #พบชื่อห้อง
    Wait Until Page Contains Element    id:navbutton    #พบปุ่มนำทาง
    Wait Until Page Contains Element    id:roomimage    #พบรูปห้องพัก
    Wait Until Page Contains    รายละเอียด                #พบข้อความ รายละเอียด
    Wait Until Page Contains Element    id:roomdescription  #พบรายละเอียดห้องพัก
    Wait Until Page Contains    สิ่งอำนวยความสะดวก         #พบข้อความ สิ่งอำนวยความสะดวก
    Wait Until Page Contains Element    id:suportdetail  #พบสิ่งอำนวยความสะดวก


*** Keywords ***
เลือกเมนูห้องพัก
    Wait Until Page Contains Element        id:room
    Click Element           id:room     #เลือกเมนูห้องพัก
