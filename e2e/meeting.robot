*** Settings ***
Library          Selenium2Library
# Library        OperatingSystem
# Suite Setup    SetUpdb
Test Setup       เปิดหน้าหลัก
Test Teardown    Close All Browsers
Resource         ${EXECDIR}/e2e/Keywords.robot


*** Variable ***
${BROWSER}       chrome
${URL}           http://127.0.0.1:8000/




*** Test Case ***



Test1 ทดสอบการเข้าหน้าห้องประชุม
    # TestStep
    เลือกเมนูห้องประชุม
    # ExpectResult
    Title Should Be                     ห้องประชุม
    Wait Until Page Contains            บริการห้องประชุม     #พบข้อความ บริการห้องประชุม
    Wait Until Page Contains Element    id:myCarousel        #พบแบนเนอร์
    Wait Until Page Contains Element    id:meetroomlist      #พบรายการห้องประขุม
    Wait Until Page Contains Element    id:meetroomname      #พบชื่อห้องประชุม
    Wait Until Page Contains Element    id:meetroomdes       #พบรายละเอียดห้อง
    Wait Until Page Contains Element    id:meetroomimage     #พบรูปห้องประชุม
    Wait Until Page Contains Element    id:meetroomdetail    #พบปุ่มดูเพิ่มเติม



*** Keywords ***
เลือกเมนูห้องประชุม
    Wait Until Page Contains Element    id:meetroom
    Click Element                       id:meetroom          #เลือกเมนูห้องประชุม


