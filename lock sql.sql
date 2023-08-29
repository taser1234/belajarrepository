REPORT SCENE CRIME`
SELECT * FROM `crime_scene_reports` where year=2021 and month=7 and day =28 and street ='Humphrey Street';
Pencurian bebek 50ville terjadi pada pukul 10:15 di toko roti Humphrey Street. Wawancara dilakukan hari ini dengan tiga saksi yang hadir pada saat itu – masing-masing transkrip wawancara menyebutkan toko roti.

INTERVIEW result Ruth,Eugene,Raymond
SELECT * FROM `interviews` where year=2021 and month=7 and day =28;

Security Log 9 suspect
SELECT * FROM `bakery_security_logs` where year=2021 and month=7 and day =28 and hour = 10 and minute BETWEEN 10 and 30 and activity = "exit";

phone caller log 
SELECT * FROM `phone_calls` where year=2021 and month=7 and day =28 and duration < 60;

flight log result maybe id= 36 and destination airport = New York City
SELECT * FROM `flights` where year=2021 and month=7 and day =29 and origin_airport_id = 8 
ORDER BY `flights`.`hour` ASC;
SELECT * FROM `passengers` WHERE flight_id =36;
SELECT * FROM `people` WHERE passport_number IN ('7214083635','1695452385',"5773159633","1540955065","8294398571","1988161715","9878712108","8496433585");

atm transaction 
SELECT * FROM `atm_transactions` where transaction_type = 'withdraw' and day = 28 and atm_location = "Leggett Street";
list "28500762","28296815","76054385","49610011","16153065","25506511","81061156","26013199"

suspect transaction at the time 
SELECT * FROM `bank_accounts` where account_number in ("28500762","28296815","76054385","49610011","16153065","25506511","81061156","26013199");
list name suspect
"686048","514354","458378","395717","396669","467400","449774","438727"
SELECT * FROM `people` WHERE id in ("686048","514354","458378","395717","396669","467400","449774","438727");
"Kenny","Iman","Benista","Taylor","Brooke","Luca","Diana","Bruce"

select * from people WHERE passport_number in(1695452385,8496433585,8294398571,5773159633);
SELECT * FROM `bank_accounts` WHERE person_id in (398010,467400,560886,686048);
SELECT * FROM `bakery_security_logs` where year=2021 and month=7 and day =28 and hour = 10 and minute BETWEEN 10 and 30 and activity = "exit" and license_plate in ("94KL13X","4328GD8");