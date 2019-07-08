*** Settings ***
Library          Selenium2Library
Test Setup       เปิดหน้าหลัก
Test Teardown    Close All Browsers
Resource         ${EXECDIR}/e2e/Keywords.robot


*** Variable ***
${BROWSER}       chrome
${URL}           http://127.0.0.1:8000/




*** Test Case ***



Test1 ทดสอบการเข้าหน้าฟิตเนส
    # TestStep
    เลือกเมนูฟิตเนส
    # ExpectResult
    Title Should Be                     ฟิตเนส
    Wait Until Page Contains Element    id:banner                   #พบแบนเนอร์โฆษณา
    Wait Until Page Contains Element    id:banner      ฟิตเนส      #พบชื่อฟิตเนสแบนเนอร์
    Wait Until Element Contains         id:listadvantage            #พบจุดเด่นของฟิตเนส
    Wait Until Element Contains         id:fitnessimage             #พบรูปฟิตเนส
    Wait Until Element Contains         id:fitnessclass     Class เรียน    #พบclassเรียน
    Wait Until Element Contains         id:listfitnessclass          #พบการ์ด class เรียน
    Wait Until Element Contains         id:time     เวลาเปิด-ปิด        #พบเวลาเปิด-ปิด
    Wait Until Element Contains         id:location     สถานที่           #พบสถานที่

*** Keywords ***
เลือกเมนูฟิตเนส
    Wait Until Page Contains Element        id:fitness
    Click Element           id:fitness     #เลือกเมนูฟิตเนส
