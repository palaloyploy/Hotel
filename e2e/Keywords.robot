*** Keywords ***
เปิดหน้าหลัก
    Open Browser                        ${URL}         ${BROWSER}
SetUpdb
    Copy Files   ${EXECDIR}/e2e/db.sqlite3      ${EXECDIR}/HotelRoomService/