
    Wait Until Element Contains         id:service     ฟิตเนส        #พบบริการ ฟิตเนส ในบริการต่างๆ
    Wait Until Element Contains         id:service     สปา           #พบบริการ สปา ในบริการต่างๆ
    Wait Until Element Contains         id:service     สวนน้ำ        #พบบริการ สวนน้ำ ในบริการต่างๆ

Test2 ทดสอบการแสดงผลแถบเมนู
    # ExpectResult
    Wait Until Page Contains Element    id:tabmenu     #พบแถบเมนู
    Wait Until Element Contains         id:tabmenu     ห้องพัก         #พบบริการ ห้องพัก ในบริการต่างๆ
    Wait Until Element Contains         id:tabmenu     คาราโอเกะ      #พบบริการ คาราโอเกะ ในบริการต่างๆ
    Wait Until Element Contains         id:tabmenu     เช่าเรือ         #พบบริการ เช่าเรือ ในบริการต่างๆ
    Wait Until Page Contains Element    id:logo                     #พบโลโก้โรงแรม
    Wait Until Element Contains         id:tabmenu     Hotel         #พบชื่อโรงแรม
    Wait Until Element Contains         id:tabmenu     ฟิตเนส        #พบบริการ ฟิตเนส ในบริการต่างๆ
    Wait Until Element Contains         id:tabmenu     สปา           #พบบริการ สปา ในบริการต่างๆ
    Wait Until Element Contains         id:tabmenu     สวนน้ำ        #พบบริการ สวนน้ำ ในบริการต่างๆ

Test3 ทดสอบการแสดงผลฟุตเตอร์
    # ExpectResult
    Wait Until Page Contains Element    id:footer      #พบฟุตเตอร์
    Wait Until Element Contains         id:footer      ข้อมูลติดต่อ         #พบข้อมูลผู้ติดต่อ
    Wait Until Element Contains         id:footer      ข้อมูลผู้สนับสนุน    #พบข้อมูลผู้สนับสนุน
    Wait Until Page Contains Element    id:map         #พบแผนที่




*** Keywords ***
