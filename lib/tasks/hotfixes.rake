
namespace :hotfixes do
  desc "tmp runs"
  task :temp_runs => :environment do
    Host.find(6791).comments.create!(user_id: 415, content: "בשנה שעברה, 'ארנה בינדלגלס' (2285) היה/הייתה מצוות/ת למארח/ת אורית לסר (6791). בצד של המארחים הוא/היא 12997.")
    h = Host.find(6791)
    h.active_last_year = true
    h.save
    Host.find(2495).comments.create!(user_id: 415, content: "בשנה שעברה, 'אוריה מבורך' (1297) היה/הייתה מצוות/ת למארח/ת אריק (2495). בצד של המארחים הוא/היא 5260.")
    h = Host.find(2495)
    h.active_last_year = true
    h.save
    Host.find(7181).comments.create!(user_id: 415, content: "בשנה שעברה, 'טובה שי' (1802) היה/הייתה מצוות/ת למארח/ת מירב גרטי (7181). בצד של המארחים הוא/היא 17771.")
    h = Host.find(7181)
    h.active_last_year = true
    h.save
    Host.find(1303).comments.create!(user_id: 415, content: "בשנה שעברה, 'אניטה פיינרו' (1971) היה/הייתה מצוות/ת למארח/ת חנה מורג (1303). בצד של המארחים הוא/היא 1741.")
    h = Host.find(1303)
    h.active_last_year = true
    h.save
    Host.find(8465).comments.create!(user_id: 415, content: "בשנה שעברה, 'שארל אריה ארון' (3096) היה/הייתה מצוות/ת למארח/ת אלה ספטל (8465). בצד של המארחים הוא/היא 19389.")
    h = Host.find(8465)
    h.active_last_year = true
    h.save
    Host.find(8957).comments.create!(user_id: 415, content: "בשנה שעברה, 'יעל מיליגר' (1803) היה/הייתה מצוות/ת למארח/ת רויטל זקן (8957). בצד של המארחים הוא/היא 20328.")
    h = Host.find(8957)
    h.active_last_year = true
    h.save
    Host.find(7408).comments.create!(user_id: 415, content: "בשנה שעברה, 'זהבה ומרדכי רון' (851) היה/הייתה מצוות/ת למארח/ת עדן פרום (7408). בצד של המארחים הוא/היא 18044.")
    h = Host.find(7408)
    h.active_last_year = true
    h.save
    Host.find(6872).comments.create!(user_id: 415, content: "בשנה שעברה, 'ענת מילר' (2298) היה/הייתה מצוות/ת למארח/ת רזיה יפה (6872). בצד של המארחים הוא/היא 17428.")
    h = Host.find(6872)
    h.active_last_year = true
    h.save
    Host.find(8062).comments.create!(user_id: 415, content: "בשנה שעברה, 'יונייב מוטקה וטובה' (970) היה/הייתה מצוות/ת למארח/ת הדס ברזילי (8062). בצד של המארחים הוא/היא 18799.")
    h = Host.find(8062)
    h.active_last_year = true
    h.save
    Host.find(873).comments.create!(user_id: 415, content: "בשנה שעברה, 'ברקוביץ יהודה' (1549) היה/הייתה מצוות/ת למארח/ת מתן צדוק (873). בצד של המארחים הוא/היא 930.")
    h = Host.find(873)
    h.active_last_year = true
    h.save
    Host.find(7420).comments.create!(user_id: 415, content: "בשנה שעברה, 'צבי רוט' (485) היה/הייתה מצוות/ת למארח/ת מאיה אורה (7420). בצד של המארחים הוא/היא 18058.")
    h = Host.find(7420)
    h.active_last_year = true
    h.save
    Host.find(6722).comments.create!(user_id: 415, content: "בשנה שעברה, 'סול חדד' (1435) היה/הייתה מצוות/ת למארח/ת נועם יאדגר (6722). בצד של המארחים הוא/היא 17265.")
    h = Host.find(6722)
    h.active_last_year = true
    h.save
    Host.find(7154).comments.create!(user_id: 415, content: "בשנה שעברה, 'נועה רוזן' (2005) היה/הייתה מצוות/ת למארח/ת מסורי ליאת (7154). בצד של המארחים הוא/היא 17742.")
    h = Host.find(7154)
    h.active_last_year = true
    h.save
    Host.find(6542).comments.create!(user_id: 415, content: "בשנה שעברה, 'אריה שפירא' (2125) היה/הייתה מצוות/ת למארח/ת ג'ני גובר (6542). בצד של המארחים הוא/היא 17091.")
    h = Host.find(6542)
    h.active_last_year = true
    h.save
    Host.find(8129).comments.create!(user_id: 415, content: "בשנה שעברה, 'לנה ניקולאיו' (1935) היה/הייתה מצוות/ת למארח/ת יערית חיון (8129). בצד של המארחים הוא/היא 18875.")
    h = Host.find(8129)
    h.active_last_year = true
    h.save
    Host.find(7973).comments.create!(user_id: 415, content: "בשנה שעברה, 'יענקלה פטרושקה' (2291) היה/הייתה מצוות/ת למארח/ת אופיר רמז (7973). בצד של המארחים הוא/היא 18704.")
    h = Host.find(7973)
    h.active_last_year = true
    h.save
    Host.find(7727).comments.create!(user_id: 415, content: "בשנה שעברה, 'ציפורה פלודה' (1520) היה/הייתה מצוות/ת למארח/ת רוני טבין (7727). בצד של המארחים הוא/היא 18418.")
    h = Host.find(7727)
    h.active_last_year = true
    h.save
    Host.find(7460).comments.create!(user_id: 415, content: "בשנה שעברה, 'טובה נייברג' (1638) היה/הייתה מצוות/ת למארח/ת נעמה רחל גורדון (7460). בצד של המארחים הוא/היא 18101.")
    h = Host.find(7460)
    h.active_last_year = true
    h.save
    Host.find(8788).comments.create!(user_id: 415, content: "בשנה שעברה, 'בת שבע ומלך ווסרמן' (1362) היה/הייתה מצוות/ת למארח/ת אסנת כהן (8788). בצד של המארחים הוא/היא 19931.")
    h = Host.find(8788)
    h.active_last_year = true
    h.save
    Host.find(8730).comments.create!(user_id: 415, content: "בשנה שעברה, 'משה ליפר' (1795) היה/הייתה מצוות/ת למארח/ת יהונתן םרידמן (8730). בצד של המארחים הוא/היא 19825.")
    h = Host.find(8730)
    h.active_last_year = true
    h.save
    Host.find(6808).comments.create!(user_id: 415, content: "בשנה שעברה, 'אורנה\tפייקין' (2287) היה/הייתה מצוות/ת למארח/ת שירלי דגוני (6808). בצד של המארחים הוא/היא 17358.")
    h = Host.find(6808)
    h.active_last_year = true
    h.save
    Host.find(8005).comments.create!(user_id: 415, content: "בשנה שעברה, 'דב \tליפשיץ' (2288) היה/הייתה מצוות/ת למארח/ת אנה לי ברנשטיין (8005). בצד של המארחים הוא/היא 18739.")
    h = Host.find(8005)
    h.active_last_year = true
    h.save
    Host.find(8513).comments.create!(user_id: 415, content: "בשנה שעברה, 'יפה אלוני' (1798) היה/הייתה מצוות/ת למארח/ת רותם גלאם (8513). בצד של המארחים הוא/היא 19461.")
    h = Host.find(8513)
    h.active_last_year = true
    h.save
    Host.find(3970).comments.create!(user_id: 415, content: "בשנה שעברה, 'חיים קגן' (799) היה/הייתה מצוות/ת למארח/ת נעמה מתנס חצור הגלילית (3970). בצד של המארחים הוא/היא 10103.")
    h = Host.find(3970)
    h.active_last_year = true
    h.save
    Host.find(5801).comments.create!(user_id: 415, content: "בשנה שעברה, 'תקוה פרידהבר' (1799) היה/הייתה מצוות/ת למארח/ת איילה כהן (5801). בצד של המארחים הוא/היא 13304.")
    h = Host.find(5801)
    h.active_last_year = true
    h.save
    Host.find(9334).comments.create!(user_id: 415, content: "בשנה שעברה, 'מרדכי רונזברג' (490) היה/הייתה מצוות/ת למארח/ת קרין מזגאוקר (9334). בצד של המארחים הוא/היא 21580.")
    h = Host.find(9334)
    h.active_last_year = true
    h.save
    Host.find(6009).comments.create!(user_id: 415, content: "בשנה שעברה, 'מרדכי קרויטורו' (1728) היה/הייתה מצוות/ת למארח/ת מתן גולדברגר (6009). בצד של המארחים הוא/היא 13945.")
    h = Host.find(6009)
    h.active_last_year = true
    h.save
    Host.find(9578).comments.create!(user_id: 415, content: "בשנה שעברה, 'גולדה גורונקין' (1310) היה/הייתה מצוות/ת למארח/ת ירדן (9578). בצד של המארחים הוא/היא 22747.")
    h = Host.find(9578)
    h.active_last_year = true
    h.save
    Host.find(236).comments.create!(user_id: 415, content: "בשנה שעברה, 'אפרים לפיד' (923) היה/הייתה מצוות/ת למארח/ת סיגל עזתי (236). בצד של המארחים הוא/היא 247.")
    h = Host.find(236)
    h.active_last_year = true
    h.save
    Host.find(4753).comments.create!(user_id: 415, content: "בשנה שעברה, 'שאול אורן' (1996) היה/הייתה מצוות/ת למארח/ת איתן בוכוול ואמילי שופן (4753). בצד של המארחים הוא/היא 11116.")
    h = Host.find(4753)
    h.active_last_year = true
    h.save
    Host.find(8251).comments.create!(user_id: 415, content: "בשנה שעברה, 'שלמה פרל' (2281) היה/הייתה מצוות/ת למארח/ת מורן שירי (8251). בצד של המארחים הוא/היא 19036.")
    h = Host.find(8251)
    h.active_last_year = true
    h.save
    Host.find(5347).comments.create!(user_id: 415, content: "בשנה שעברה, 'אליהו אוזן' (603) היה/הייתה מצוות/ת למארח/ת פרויקט שאג\"י (5347). בצד של המארחים הוא/היא 12242.")
    h = Host.find(5347)
    h.active_last_year = true
    h.save
    Host.find(7409).comments.create!(user_id: 415, content: "בשנה שעברה, 'ישראל ויזל' (805) היה/הייתה מצוות/ת למארח/ת איתי דונר (7409). בצד של המארחים הוא/היא 18047.")
    h = Host.find(7409)
    h.active_last_year = true
    h.save
    Host.find(9521).comments.create!(user_id: 415, content: "בשנה שעברה, 'דנה שומכר' (746) היה/הייתה מצוות/ת למארח/ת אנה שוורץ (9521). בצד של המארחים הוא/היא 22486.")
    h = Host.find(9521)
    h.active_last_year = true
    h.save
    Host.find(8735).comments.create!(user_id: 415, content: "בשנה שעברה, 'זהבה היטנר' (3098) היה/הייתה מצוות/ת למארח/ת מיכל ואילן אופנהיימר (8735). בצד של המארחים הוא/היא 19835.")
    h = Host.find(8735)
    h.active_last_year = true
    h.save
    Host.find(7787).comments.create!(user_id: 415, content: "בשנה שעברה, 'איילת רייך' (699) היה/הייתה מצוות/ת למארח/ת הודיה רייף (7787). בצד של המארחים הוא/היא 18484.")
    h = Host.find(7787)
    h.active_last_year = true
    h.save
    Host.find(3227).comments.create!(user_id: 415, content: "בשנה שעברה, 'אריאלה בכר' (1320) היה/הייתה מצוות/ת למארח/ת מיה הוד רן (3227). בצד של המארחים הוא/היא 6718.")
    h = Host.find(3227)
    h.active_last_year = true
    h.save
    Host.find(7950).comments.create!(user_id: 415, content: "בשנה שעברה, 'חנוך לרר' (775) היה/הייתה מצוות/ת למארח/ת נטע תמיר (7950). בצד של המארחים הוא/היא 10908.")
    h = Host.find(7950)
    h.active_last_year = true
    h.save
    Host.find(4556).comments.create!(user_id: 415, content: "בשנה שעברה, 'יגאל רץ' (2121) היה/הייתה מצוות/ת למארח/ת הדס הנדלר (4556). בצד של המארחים הוא/היא 10856.")
    h = Host.find(4556)
    h.active_last_year = true
    h.save
    Host.find(8986).comments.create!(user_id: 415, content: "בשנה שעברה, 'חנה קליין' (557) היה/הייתה מצוות/ת למארח/ת הדס וול (8986). בצד של המארחים הוא/היא 20398.")
    h = Host.find(8986)
    h.active_last_year = true
    h.save
    Host.find(501).comments.create!(user_id: 415, content: "בשנה שעברה, 'פרומה לאור' (1071) היה/הייתה מצוות/ת למארח/ת ליאור שרעבי (501). בצד של המארחים הוא/היא 549.")
    h = Host.find(501)
    h.active_last_year = true
    h.save
    Host.find(6654).comments.create!(user_id: 415, content: "בשנה שעברה, 'ציפורה פיק' (2245) היה/הייתה מצוות/ת למארח/ת נורית קנטרוביץ' (6654). בצד של המארחים הוא/היא 17199.")
    h = Host.find(6654)
    h.active_last_year = true
    h.save
    Host.find(8973).comments.create!(user_id: 415, content: "בשנה שעברה, 'שרגא שמר' (985) היה/הייתה מצוות/ת למארח/ת הפאב החברתי זה (8973). בצד של המארחים הוא/היא 20373.")
    h = Host.find(8973)
    h.active_last_year = true
    h.save
    Host.find(6957).comments.create!(user_id: 415, content: "בשנה שעברה, 'מוקה זילברמן' (1587) היה/הייתה מצוות/ת למארח/ת שרה אביחי (6957). בצד של המארחים הוא/היא 17523.")
    h = Host.find(6957)
    h.active_last_year = true
    h.save
    Host.find(7832).comments.create!(user_id: 415, content: "בשנה שעברה, 'רבקה סופר' (3106) היה/הייתה מצוות/ת למארח/ת מרכז תקוותנו רחובות (7832). בצד של המארחים הוא/היא 18531.")
    h = Host.find(7832)
    h.active_last_year = true
    h.save
    Host.find(8828).comments.create!(user_id: 415, content: "בשנה שעברה, 'צבי מריאנסקי' (1024) היה/הייתה מצוות/ת למארח/ת שחר סוחצקי (8828). בצד של המארחים הוא/היא 20027.")
    h = Host.find(8828)
    h.active_last_year = true
    h.save
    Host.find(8825).comments.create!(user_id: 415, content: "בשנה שעברה, 'גיתית גליקמן' (3081) היה/הייתה מצוות/ת למארח/ת קרין (8825). בצד של המארחים הוא/היא 20023.")
    h = Host.find(8825)
    h.active_last_year = true
    h.save
    Host.find(8886).comments.create!(user_id: 415, content: "בשנה שעברה, 'יחזקאל טלר' (2243) היה/הייתה מצוות/ת למארח/ת דיקלה קריספיל (8886). בצד של המארחים הוא/היא 20167.")
    h = Host.find(8886)
    h.active_last_year = true
    h.save
    Host.find(6531).comments.create!(user_id: 415, content: "בשנה שעברה, 'נחמן אש' (2244) היה/הייתה מצוות/ת למארח/ת ליטל שרעבי (6531). בצד של המארחים הוא/היא 10717.")
    h = Host.find(6531)
    h.active_last_year = true
    h.save
    Host.find(8701).comments.create!(user_id: 415, content: "בשנה שעברה, 'אילנה ולדמן' (2290) היה/הייתה מצוות/ת למארח/ת אווי הרשקו (8701). בצד של המארחים הוא/היא 19763.")
    h = Host.find(8701)
    h.active_last_year = true
    h.save
    Host.find(4485).comments.create!(user_id: 415, content: "בשנה שעברה, 'בצלאל גרין' (1810) היה/הייתה מצוות/ת למארח/ת מעיין צדוק (4485). בצד של המארחים הוא/היא 10762.")
    h = Host.find(4485)
    h.active_last_year = true
    h.save
    Host.find(7854).comments.create!(user_id: 415, content: "בשנה שעברה, 'יהודה אלכסנדר' (999) היה/הייתה מצוות/ת למארח/ת גפן מנור (7854). בצד של המארחים הוא/היא 18559.")
    h = Host.find(7854)
    h.active_last_year = true
    h.save
    Host.find(7160).comments.create!(user_id: 415, content: "בשנה שעברה, 'טובה לנדוי' (996) היה/הייתה מצוות/ת למארח/ת עדי אנגל (7160). בצד של המארחים הוא/היא 17750.")
    h = Host.find(7160)
    h.active_last_year = true
    h.save
    Host.find(51).comments.create!(user_id: 415, content: "בשנה שעברה, 'מרים גליקליך' (1045) היה/הייתה מצוות/ת למארח/ת ניצן אמדו (51). בצד של המארחים הוא/היא 54.")
    h = Host.find(51)
    h.active_last_year = true
    h.save
    Host.find(8075).comments.create!(user_id: 415, content: "בשנה שעברה, 'מגדה בר חי' (2294) היה/הייתה מצוות/ת למארח/ת מירב פילדס (8075). בצד של המארחים הוא/היא 18817.")
    h = Host.find(8075)
    h.active_last_year = true
    h.save
    Host.find(1098).comments.create!(user_id: 415, content: "בשנה שעברה, 'אילן אבישר' (932) היה/הייתה מצוות/ת למארח/ת אייל גורן (1098). בצד של המארחים הוא/היא 1330.")
    h = Host.find(1098)
    h.active_last_year = true
    h.save
    Host.find(2312).comments.create!(user_id: 415, content: "בשנה שעברה, 'דלי לאור' (2412) היה/הייתה מצוות/ת למארח/ת סימונה (2312). בצד של המארחים הוא/היא 4421.")
    h = Host.find(2312)
    h.active_last_year = true
    h.save
    Host.find(8549).comments.create!(user_id: 415, content: "בשנה שעברה, 'ראובן גלעד' (2130) היה/הייתה מצוות/ת למארח/ת דנה איצקוביץ (8549). בצד של המארחים הוא/היא 19512.")
    h = Host.find(8549)
    h.active_last_year = true
    h.save
    Host.find(7482).comments.create!(user_id: 415, content: "בשנה שעברה, 'חיה כספי' (1046) היה/הייתה מצוות/ת למארח/ת אמילי רוזמבלאום (7482). בצד של המארחים הוא/היא 18129.")
    h = Host.find(7482)
    h.active_last_year = true
    h.save
    Host.find(8684).comments.create!(user_id: 415, content: "בשנה שעברה, 'משה למפרט' (1066) היה/הייתה מצוות/ת למארח/ת לאה חיבה (8684). בצד של המארחים הוא/היא 13823.")
    h = Host.find(8684)
    h.active_last_year = true
    h.save
    Host.find(8267).comments.create!(user_id: 415, content: "בשנה שעברה, 'שרה קוראל' (3105) היה/הייתה מצוות/ת למארח/ת לירון ויצמן (8267). בצד של המארחים הוא/היא 19058.")
    h = Host.find(8267)
    h.active_last_year = true
    h.save
    Host.find(8630).comments.create!(user_id: 415, content: "בשנה שעברה, 'יוסף ידייקיו' (398) היה/הייתה מצוות/ת למארח/ת אבי גבאי (8630). בצד של המארחים הוא/היא 19630.")
    h = Host.find(8630)
    h.active_last_year = true
    h.save
    Host.find(7211).comments.create!(user_id: 415, content: "בשנה שעברה, 'יהודית רוזנצווייג' (545) היה/הייתה מצוות/ת למארח/ת הילה הובר (7211). בצד של המארחים הוא/היא 17808.")
    h = Host.find(7211)
    h.active_last_year = true
    h.save
    Host.find(6039).comments.create!(user_id: 415, content: "בשנה שעברה, 'יצחק שרייר' (3100) היה/הייתה מצוות/ת למארח/ת יאיר ונועה (6039). בצד של המארחים הוא/היא 14038.")
    h = Host.find(6039)
    h.active_last_year = true
    h.save
    Host.find(7054).comments.create!(user_id: 415, content: "בשנה שעברה, 'מרים ליניאל' (1041) היה/הייתה מצוות/ת למארח/ת נועה יחזקאל (7054). בצד של המארחים הוא/היא 17632.")
    h = Host.find(7054)
    h.active_last_year = true
    h.save
    Host.find(8090).comments.create!(user_id: 415, content: "בשנה שעברה, 'שוש ציוני' (1067) היה/הייתה מצוות/ת למארח/ת אוסנת פידל (8090). בצד של המארחים הוא/היא 18834.")
    h = Host.find(8090)
    h.active_last_year = true
    h.save
    Host.find(614).comments.create!(user_id: 415, content: "בשנה שעברה, 'שמעונה גודורוב' (1061) היה/הייתה מצוות/ת למארח/ת רימה פוגץ שנדלזון (614). בצד של המארחים הוא/היא 664.")
    h = Host.find(614)
    h.active_last_year = true
    h.save
    Host.find(7318).comments.create!(user_id: 415, content: "בשנה שעברה, 'שולמית לוין' (2128) היה/הייתה מצוות/ת למארח/ת שני מוצא (7318). בצד של המארחים הוא/היא 17932.")
    h = Host.find(7318)
    h.active_last_year = true
    h.save
    Host.find(6956).comments.create!(user_id: 415, content: "בשנה שעברה, 'תמר סמט' (1050) היה/הייתה מצוות/ת למארח/ת מני חולי (6956). בצד של המארחים הוא/היא 17522.")
    h = Host.find(6956)
    h.active_last_year = true
    h.save
    Host.find(2879).comments.create!(user_id: 415, content: "בשנה שעברה, 'טורי ברוכי' (2011) היה/הייתה מצוות/ת למארח/ת גלדיס גירש (2879). בצד של המארחים הוא/היא 8748.")
    h = Host.find(2879)
    h.active_last_year = true
    h.save
    Host.find(8512).comments.create!(user_id: 415, content: "בשנה שעברה, 'חיה זינו' (1721) היה/הייתה מצוות/ת למארח/ת ענבל ענבר (8512). בצד של המארחים הוא/היא 19458.")
    h = Host.find(8512)
    h.active_last_year = true
    h.save
    Host.find(401).comments.create!(user_id: 415, content: "בשנה שעברה, 'נילי גרוסמן' (2311) היה/הייתה מצוות/ת למארח/ת אסף שוורץ (401). בצד של המארחים הוא/היא 435.")
    h = Host.find(401)
    h.active_last_year = true
    h.save
    Host.find(8306).comments.create!(user_id: 415, content: "בשנה שעברה, 'אינס קדוש' (3114) היה/הייתה מצוות/ת למארח/ת מיכל לוי (8306). בצד של המארחים הוא/היא 19123.")
    h = Host.find(8306)
    h.active_last_year = true
    h.save
    Host.find(9644).comments.create!(user_id: 415, content: "בשנה שעברה, 'אלקה בירנשטיין' (1366) היה/הייתה מצוות/ת למארח/ת ליאן מסטבוים (9644). בצד של המארחים הוא/היא 23079.")
    h = Host.find(9644)
    h.active_last_year = true
    h.save
    Host.find(7913).comments.create!(user_id: 415, content: "בשנה שעברה, 'אביחי צור' (1354) היה/הייתה מצוות/ת למארח/ת נויבואר מרגלית (7913). בצד של המארחים הוא/היא 18628.")
    h = Host.find(7913)
    h.active_last_year = true
    h.save
    Host.find(8031).comments.create!(user_id: 415, content: "בשנה שעברה, 'אהרון דביר' (3107) היה/הייתה מצוות/ת למארח/ת פאב שדרות (8031). בצד של המארחים הוא/היא 18763.")
    h = Host.find(8031)
    h.active_last_year = true
    h.save
    Host.find(1774).comments.create!(user_id: 415, content: "בשנה שעברה, 'מייקל בן יוסף' (3108) היה/הייתה מצוות/ת למארח/ת אנה לדביץ (1774). בצד של המארחים הוא/היא 2786.")
    h = Host.find(1774)
    h.active_last_year = true
    h.save
    Host.find(8715).comments.create!(user_id: 415, content: "בשנה שעברה, 'יובל ירח' (1385) היה/הייתה מצוות/ת למארח/ת רועי אלבה (8715). בצד של המארחים הוא/היא 19800.")
    h = Host.find(8715)
    h.active_last_year = true
    h.save
    Host.find(9627).comments.create!(user_id: 415, content: "בשנה שעברה, 'אסתר חכמון' (1104) היה/הייתה מצוות/ת למארח/ת נעמי שמרה (9627). בצד של המארחים הוא/היא 22980.")
    h = Host.find(9627)
    h.active_last_year = true
    h.save
    Host.find(7550).comments.create!(user_id: 415, content: "בשנה שעברה, 'לביאה פישר' (1086) היה/הייתה מצוות/ת למארח/ת רותי חזן (7550). בצד של המארחים הוא/היא 18203.")
    h = Host.find(7550)
    h.active_last_year = true
    h.save
    Host.find(6560).comments.create!(user_id: 415, content: "בשנה שעברה, 'פנינה קציר' (350) היה/הייתה מצוות/ת למארח/ת עמית פינסקר (6560). בצד של המארחים הוא/היא 17108.")
    h = Host.find(6560)
    h.active_last_year = true
    h.save
    Host.find(7397).comments.create!(user_id: 415, content: "בשנה שעברה, 'רחל סקלי' (1084) היה/הייתה מצוות/ת למארח/ת איריס אברהם (7397). בצד של המארחים הוא/היא 18030.")
    h = Host.find(7397)
    h.active_last_year = true
    h.save
    Host.find(8054).comments.create!(user_id: 415, content: "בשנה שעברה, 'חנה קרייסברגר' (3113) היה/הייתה מצוות/ת למארח/ת אברהם ושמחה לוין (8054). בצד של המארחים הוא/היא 18788.")
    h = Host.find(8054)
    h.active_last_year = true
    h.save
    Host.find(6620).comments.create!(user_id: 415, content: "בשנה שעברה, 'שרה פלד' (1382) היה/הייתה מצוות/ת למארח/ת רינה טויטו (6620). בצד של המארחים הוא/היא 17166.")
    h = Host.find(6620)
    h.active_last_year = true
    h.save
    Host.find(7251).comments.create!(user_id: 415, content: "בשנה שעברה, 'ישראל אייזן' (1090) היה/הייתה מצוות/ת למארח/ת טליה כהן (7251). בצד של המארחים הוא/היא 17849.")
    h = Host.find(7251)
    h.active_last_year = true
    h.save
    Host.find(7908).comments.create!(user_id: 415, content: "בשנה שעברה, 'יעקב גרוס' (1383) היה/הייתה מצוות/ת למארח/ת צליל גרוס (7908). בצד של המארחים הוא/היא 18622.")
    h = Host.find(7908)
    h.active_last_year = true
    h.save
    Host.find(8923).comments.create!(user_id: 415, content: "בשנה שעברה, 'פניה גללר' (1379) היה/הייתה מצוות/ת למארח/ת אלונה בויארסקי (8923). בצד של המארחים הוא/היא 20237.")
    h = Host.find(8923)
    h.active_last_year = true
    h.save
    Host.find(8665).comments.create!(user_id: 415, content: "בשנה שעברה, 'רותי אילת' (2131) היה/הייתה מצוות/ת למארח/ת רוצם גרוס (8665). בצד של המארחים הוא/היא 19704.")
    h = Host.find(8665)
    h.active_last_year = true
    h.save
    Host.find(7986).comments.create!(user_id: 415, content: "בשנה שעברה, 'שלומית ישי' (2308) היה/הייתה מצוות/ת למארח/ת פידלר נועה (7986). בצד של המארחים הוא/היא 18718.")
    h = Host.find(7986)
    h.active_last_year = true
    h.save
    Host.find(6995).comments.create!(user_id: 415, content: "בשנה שעברה, 'הרמן צבי' (483) היה/הייתה מצוות/ת למארח/ת דניאל תנהנגל (6995). בצד של המארחים הוא/היא 17564.")
    h = Host.find(6995)
    h.active_last_year = true
    h.save
    Host.find(7552).comments.create!(user_id: 415, content: "בשנה שעברה, 'דליה וינמן' (3130) היה/הייתה מצוות/ת למארח/ת נועה אלקיים (7552). בצד של המארחים הוא/היא 18205.")
    h = Host.find(7552)
    h.active_last_year = true
    h.save
    Host.find(6677).comments.create!(user_id: 415, content: "בשנה שעברה, 'משה חכמון' (1177) היה/הייתה מצוות/ת למארח/ת שחר לינצנברג (6677). בצד של המארחים הוא/היא 17221.")
    h = Host.find(6677)
    h.active_last_year = true
    h.save
    Host.find(8718).comments.create!(user_id: 415, content: "בשנה שעברה, 'מאיה לינשיץ' (3125) היה/הייתה מצוות/ת למארח/ת שרה נחמיאס (8718). בצד של המארחים הוא/היא 19805.")
    h = Host.find(8718)
    h.active_last_year = true
    h.save
    Host.find(6498).comments.create!(user_id: 415, content: "בשנה שעברה, 'אסתר יטבת' (1394) היה/הייתה מצוות/ת למארח/ת שני חממה - צוות תכנית אב לתחבורה (6498). בצד של המארחים הוא/היא 17048.")
    h = Host.find(6498)
    h.active_last_year = true
    h.save
    Host.find(9399).comments.create!(user_id: 415, content: "בשנה שעברה, 'פוגל חיה' (3118) היה/הייתה מצוות/ת למארח/ת הילה קוטלר (9399). בצד של המארחים הוא/היא 21869.")
    h = Host.find(9399)
    h.active_last_year = true
    h.save
    Host.find(7797).comments.create!(user_id: 415, content: "בשנה שעברה, 'אלכס לימון' (1161) היה/הייתה מצוות/ת למארח/ת רחל (קוקה) כהן-רונן (7797). בצד של המארחים הוא/היא 18496.")
    h = Host.find(7797)
    h.active_last_year = true
    h.save
    Host.find(7132).comments.create!(user_id: 415, content: "בשנה שעברה, 'הדסה פרומן' (1392) היה/הייתה מצוות/ת למארח/ת מעין נחום (7132). בצד של המארחים הוא/היא 3562.")
    h = Host.find(7132)
    h.active_last_year = true
    h.save
    Host.find(6667).comments.create!(user_id: 415, content: "בשנה שעברה, 'גרין חיים' (254) היה/הייתה מצוות/ת למארח/ת בר שור (6667). בצד של המארחים הוא/היא 17211.")
    h = Host.find(6667)
    h.active_last_year = true
    h.save
    Host.find(6592).comments.create!(user_id: 415, content: "בשנה שעברה, 'מרים אויפרט' (912) היה/הייתה מצוות/ת למארח/ת שי טאוב (6592). בצד של המארחים הוא/היא 17138.")
    h = Host.find(6592)
    h.active_last_year = true
    h.save
    Host.find(6943).comments.create!(user_id: 415, content: "בשנה שעברה, 'אסתר כרמי' (1815) היה/הייתה מצוות/ת למארח/ת יערה מור (6943). בצד של המארחים הוא/היא 17508.")
    h = Host.find(6943)
    h.active_last_year = true
    h.save
    Host.find(7453).comments.create!(user_id: 415, content: "בשנה שעברה, 'שרה ברגמן' (2015) היה/הייתה מצוות/ת למארח/ת הילה אייכלר (7453). בצד של המארחים הוא/היא 18093.")
    h = Host.find(7453)
    h.active_last_year = true
    h.save
    Host.find(7548).comments.create!(user_id: 415, content: "בשנה שעברה, 'ג'ודי גליקסון פסטרנק' (1386) היה/הייתה מצוות/ת למארח/ת ג'רי וינוקור ליבלין (7548). בצד של המארחים הוא/היא 18201.")
    h = Host.find(7548)
    h.active_last_year = true
    h.save
    Host.find(8907).comments.create!(user_id: 415, content: "בשנה שעברה, 'צבי וינברג' (3122) היה/הייתה מצוות/ת למארח/ת גולייט גולדנברג אלבז (8907). בצד של המארחים הוא/היא 14558.")
    h = Host.find(8907)
    h.active_last_year = true
    h.save
    Host.find(9554).comments.create!(user_id: 415, content: "בשנה שעברה, 'גיורא ירדני' (3126) היה/הייתה מצוות/ת למארח/ת שירן גומל (9554). בצד של המארחים הוא/היא 22620.")
    h = Host.find(9554)
    h.active_last_year = true
    h.save
    Host.find(756).comments.create!(user_id: 415, content: "בשנה שעברה, 'גדי פינאלי' (551) היה/הייתה מצוות/ת למארח/ת מיכל גיטלר (756). בצד של המארחים הוא/היא 809.")
    h = Host.find(756)
    h.active_last_year = true
    h.save
    Host.find(950).comments.create!(user_id: 415, content: "בשנה שעברה, 'יהודית ואשר לקס' (3121) היה/הייתה מצוות/ת למארח/ת עמית פרץ (950). בצד של המארחים הוא/היא 1034.")
    h = Host.find(950)
    h.active_last_year = true
    h.save
    Host.find(7399).comments.create!(user_id: 415, content: "בשנה שעברה, 'דן ורדי' (1723) היה/הייתה מצוות/ת למארח/ת נעם שמש (7399). בצד של המארחים הוא/היא 18032.")
    h = Host.find(7399)
    h.active_last_year = true
    h.save
    Host.find(7287).comments.create!(user_id: 415, content: "בשנה שעברה, 'אלי אללי' (1405) היה/הייתה מצוות/ת למארח/ת אלין אהרון (7287). בצד של המארחים הוא/היא 17896.")
    h = Host.find(7287)
    h.active_last_year = true
    h.save
    Host.find(6713).comments.create!(user_id: 415, content: "בשנה שעברה, 'אילונה קוזין' (1183) היה/הייתה מצוות/ת למארח/ת ענבר צוברי (6713). בצד של המארחים הוא/היא 17256.")
    h = Host.find(6713)
    h.active_last_year = true
    h.save
    Host.find(5456).comments.create!(user_id: 415, content: "בשנה שעברה, 'יוסי רון' (2337) היה/הייתה מצוות/ת למארח/ת עליזה רון (5456). בצד של המארחים הוא/היא 12422.")
    h = Host.find(5456)
    h.active_last_year = true
    h.save
    Host.find(2223).comments.create!(user_id: 415, content: "בשנה שעברה, 'טל מסקוביץ'' (2333) היה/הייתה מצוות/ת למארח/ת מתנ\"ס שיכוני-המזרח ראשל\"צ (2223). בצד של המארחים הוא/היא 4165.")
    h = Host.find(2223)
    h.active_last_year = true
    h.save
    Host.find(6780).comments.create!(user_id: 415, content: "בשנה שעברה, 'הרמן יעקובסון' (1155) היה/הייתה מצוות/ת למארח/ת גלית דלויה (6780). בצד של המארחים הוא/היא 17329.")
    h = Host.find(6780)
    h.active_last_year = true
    h.save
    Host.find(7168).comments.create!(user_id: 415, content: "בשנה שעברה, 'דוד רץ' (1262) היה/הייתה מצוות/ת למארח/ת ירדן לוגסי (7168). בצד של המארחים הוא/היא 17758.")
    h = Host.find(7168)
    h.active_last_year = true
    h.save
    Host.find(941).comments.create!(user_id: 415, content: "בשנה שעברה, 'זאב מושקוביץ' (1172) היה/הייתה מצוות/ת למארח/ת רום שיבי (941). בצד של המארחים הוא/היא 1022.")
    h = Host.find(941)
    h.active_last_year = true
    h.save
    Host.find(8587).comments.create!(user_id: 415, content: "בשנה שעברה, 'לאון קופלמן' (2013) היה/הייתה מצוות/ת למארח/ת ירדן הניק (8587). בצד של המארחים הוא/היא 19566.")
    h = Host.find(8587)
    h.active_last_year = true
    h.save
    Host.find(8359).comments.create!(user_id: 415, content: "בשנה שעברה, 'שמעון טל' (2050) היה/הייתה מצוות/ת למארח/ת תם אור שחר (8359). בצד של המארחים הוא/היא 19187.")
    h = Host.find(8359)
    h.active_last_year = true
    h.save
    Host.find(7729).comments.create!(user_id: 415, content: "בשנה שעברה, 'משה יעקב' (2675) היה/הייתה מצוות/ת למארח/ת מכינה קדם צבאית  ידידיה - חוות משואות יצחק הישנה (7729). בצד של המארחים הוא/היא 18420.")
    h = Host.find(7729)
    h.active_last_year = true
    h.save
    Host.find(7470).comments.create!(user_id: 415, content: "בשנה שעברה, 'זאב ארנון' (1211) היה/הייתה מצוות/ת למארח/ת הודיה אוגלי (7470). בצד של המארחים הוא/היא 18112.")
    h = Host.find(7470)
    h.active_last_year = true
    h.save
    Host.find(4035).comments.create!(user_id: 415, content: "בשנה שעברה, 'מלכה ברש' (2023) היה/הייתה מצוות/ת למארח/ת סיוון רט (4035). בצד של המארחים הוא/היא 10185.")
    h = Host.find(4035)
    h.active_last_year = true
    h.save
    Host.find(1876).comments.create!(user_id: 415, content: "בשנה שעברה, 'אלעד רוטנברג' (1832) היה/הייתה מצוות/ת למארח/ת ליהי עינב (1876). בצד של המארחים הוא/היא 3073.")
    h = Host.find(1876)
    h.active_last_year = true
    h.save
    Host.find(7116).comments.create!(user_id: 415, content: "בשנה שעברה, 'נורית יוסף' (1224) היה/הייתה מצוות/ת למארח/ת אפרת פנחס (7116). בצד של המארחים הוא/היא 17699.")
    h = Host.find(7116)
    h.active_last_year = true
    h.save
    Host.find(6113).comments.create!(user_id: 415, content: "בשנה שעברה, 'שושנה לביא' (325) היה/הייתה מצוות/ת למארח/ת ניסיםמויוספה בן כהן (6113). בצד של המארחים הוא/היא 14421.")
    h = Host.find(6113)
    h.active_last_year = true
    h.save
    Host.find(6748).comments.create!(user_id: 415, content: "בשנה שעברה, 'ברוך  נתן' (2257) היה/הייתה מצוות/ת למארח/ת אסתר רז (6748). בצד של המארחים הוא/היא 17292.")
    h = Host.find(6748)
    h.active_last_year = true
    h.save
    Host.find(6535).comments.create!(user_id: 415, content: "בשנה שעברה, 'יוכבד ראט' (2053) היה/הייתה מצוות/ת למארח/ת ליטל ניסני (6535). בצד של המארחים הוא/היא 17080.")
    h = Host.find(6535)
    h.active_last_year = true
    h.save
    Host.find(6614).comments.create!(user_id: 415, content: "בשנה שעברה, 'יצחק רוטשטיין' (1841) היה/הייתה מצוות/ת למארח/ת אודליה פריד (6614). בצד של המארחים הוא/היא 17160.")
    h = Host.find(6614)
    h.active_last_year = true
    h.save
    Host.find(8493).comments.create!(user_id: 415, content: "בשנה שעברה, 'בוריס יאמפולסקי' (3128) היה/הייתה מצוות/ת למארח/ת קורל הורן (8493). בצד של המארחים הוא/היא 19422.")
    h = Host.find(8493)
    h.active_last_year = true
    h.save
    Host.find(6689).comments.create!(user_id: 415, content: "בשנה שעברה, 'סוניה פלדמן' (2255) היה/הייתה מצוות/ת למארח/ת יעלה קלמי (6689). בצד של המארחים הוא/היא 17232.")
    h = Host.find(6689)
    h.active_last_year = true
    h.save
    Host.find(8050).comments.create!(user_id: 415, content: "בשנה שעברה, 'אידה גרף' (2014) היה/הייתה מצוות/ת למארח/ת רונית עזיזה- אל על (8050). בצד של המארחים הוא/היא 18783.")
    h = Host.find(8050)
    h.active_last_year = true
    h.save
    Host.find(8904).comments.create!(user_id: 415, content: "בשנה שעברה, 'שלמה איפנברג' (1258) היה/הייתה מצוות/ת למארח/ת דוד קייסר (8904). בצד של המארחים הוא/היא 20199.")
    h = Host.find(8904)
    h.active_last_year = true
    h.save
    Host.find(8772).comments.create!(user_id: 415, content: "בשנה שעברה, 'צילה וסרמן' (2029) היה/הייתה מצוות/ת למארח/ת אבי נעים (8772). בצד של המארחים הוא/היא 19902.")
    h = Host.find(8772)
    h.active_last_year = true
    h.save
    Host.find(9393).comments.create!(user_id: 415, content: "בשנה שעברה, 'רינה שחם' (1837) היה/הייתה מצוות/ת למארח/ת ברית שיימס (9393). בצד של המארחים הוא/היא 21843.")
    h = Host.find(9393)
    h.active_last_year = true
    h.save
    Host.find(7752).comments.create!(user_id: 415, content: "בשנה שעברה, 'איציק אבל' (1724) היה/הייתה מצוות/ת למארח/ת חן אשד (7752). בצד של המארחים הוא/היא 18445.")
    h = Host.find(7752)
    h.active_last_year = true
    h.save
    Host.find(8490).comments.create!(user_id: 415, content: "בשנה שעברה, 'זהבה הדר' (3135) היה/הייתה מצוות/ת למארח/ת ליאור דיהי (8490). בצד של המארחים הוא/היא 19419.")
    h = Host.find(8490)
    h.active_last_year = true
    h.save
    Host.find(9737).comments.create!(user_id: 415, content: "בשנה שעברה, 'ראובן מוזר' (33) היה/הייתה מצוות/ת למארח/ת אלעד רומי (9737). בצד של המארחים הוא/היא 23724.")
    h = Host.find(9737)
    h.active_last_year = true
    h.save
    Host.find(6960).comments.create!(user_id: 415, content: "בשנה שעברה, 'רבקה טייר' (2048) היה/הייתה מצוות/ת למארח/ת חנה ישעיהו (6960). בצד של המארחים הוא/היא 17526.")
    h = Host.find(6960)
    h.active_last_year = true
    h.save
    Host.find(6865).comments.create!(user_id: 415, content: "בשנה שעברה, 'צביקה אריאב' (14) היה/הייתה מצוות/ת למארח/ת שחף וילנסקי (6865). בצד של המארחים הוא/היא 17421.")
    h = Host.find(6865)
    h.active_last_year = true
    h.save
    Host.find(7130).comments.create!(user_id: 415, content: "בשנה שעברה, 'אברהם אוטינגר' (624) היה/הייתה מצוות/ת למארח/ת איריס שש- כוכבי  { בשם קיבוץ מצפה שלם } (7130). בצד של המארחים הוא/היא 17716.")
    h = Host.find(7130)
    h.active_last_year = true
    h.save
    Host.find(2811).comments.create!(user_id: 415, content: "בשנה שעברה, 'עמוס חן' (2027) היה/הייתה מצוות/ת למארח/ת חן חגואל (2811). בצד של המארחים הוא/היא 8354.")
    h = Host.find(2811)
    h.active_last_year = true
    h.save
    Host.find(5810).comments.create!(user_id: 415, content: "בשנה שעברה, 'בלהה ומוטי' (3134) היה/הייתה מצוות/ת למארח/ת הילה טחן (5810). בצד של המארחים הוא/היא 13327.")
    h = Host.find(5810)
    h.active_last_year = true
    h.save
    Host.find(7608).comments.create!(user_id: 415, content: "בשנה שעברה, 'ענת גרי לקריף' (1833) היה/הייתה מצוות/ת למארח/ת חיים אבקסיס (7608). בצד של המארחים הוא/היא 18278.")
    h = Host.find(7608)
    h.active_last_year = true
    h.save
    Host.find(8596).comments.create!(user_id: 415, content: "בשנה שעברה, 'חיה פלאט ארביב' (312) היה/הייתה מצוות/ת למארח/ת נוה פרג'ון (8596). בצד של המארחים הוא/היא 19576.")
    h = Host.find(8596)
    h.active_last_year = true
    h.save
    Host.find(8816).comments.create!(user_id: 415, content: "בשנה שעברה, 'דליה גביש' (1286) היה/הייתה מצוות/ת למארח/ת מעיין שוחט (8816). בצד של המארחים הוא/היא 19996.")
    h = Host.find(8816)
    h.active_last_year = true
    h.save
    Host.find(8738).comments.create!(user_id: 415, content: "בשנה שעברה, 'דוד טייכהולץ' (3132) היה/הייתה מצוות/ת למארח/ת רוי בן דוד (8738). בצד של המארחים הוא/היא 19839.")
    h = Host.find(8738)
    h.active_last_year = true
    h.save
    Host.find(9443).comments.create!(user_id: 415, content: "בשנה שעברה, 'רונן הרן' (1538) היה/הייתה מצוות/ת למארח/ת יעל אלון (9443). בצד של המארחים הוא/היא 22111.")
    h = Host.find(9443)
    h.active_last_year = true
    h.save
    Host.find(8409).comments.create!(user_id: 415, content: "בשנה שעברה, 'רותי שטילמן' (1838) היה/הייתה מצוות/ת למארח/ת אלה וטורי (8409). בצד של המארחים הוא/היא 19288.")
    h = Host.find(8409)
    h.active_last_year = true
    h.save
    Host.find(9631).comments.create!(user_id: 415, content: "בשנה שעברה, 'סילביה סילבס' (35) היה/הייתה מצוות/ת למארח/ת יפעת (9631). בצד של המארחים הוא/היא 22998.")
    h = Host.find(9631)
    h.active_last_year = true
    h.save
    Host.find(6866).comments.create!(user_id: 415, content: "בשנה שעברה, 'כרמלה ושלמה גולדנברג' (2057) היה/הייתה מצוות/ת למארח/ת תמר קדוש (6866). בצד של המארחים הוא/היא 17422.")
    h = Host.find(6866)
    h.active_last_year = true
    h.save
    Host.find(7426).comments.create!(user_id: 415, content: "בשנה שעברה, 'משה פרימרמן' (115) היה/הייתה מצוות/ת למארח/ת בן עזרא (7426). בצד של המארחים הוא/היא 18063.")
    h = Host.find(7426)
    h.active_last_year = true
    h.save
    Host.find(5042).comments.create!(user_id: 415, content: "בשנה שעברה, 'ורדה מידר' (1251) היה/הייתה מצוות/ת למארח/ת יעקב קורץ (5042). בצד של המארחים הוא/היא 11612.")
    h = Host.find(5042)
    h.active_last_year = true
    h.save
    Host.find(8093).comments.create!(user_id: 415, content: "בשנה שעברה, 'דב פיירשטיין' (2676) היה/הייתה מצוות/ת למארח/ת ינון תורגמן (8093). בצד של המארחים הוא/היא 18837.")
    h = Host.find(8093)
    h.active_last_year = true
    h.save
    Host.find(6846).comments.create!(user_id: 415, content: "בשנה שעברה, 'גילת שילה' (2025) היה/הייתה מצוות/ת למארח/ת פאב המפלצת אנחנו קופראטיב (6846). בצד של המארחים הוא/היא 17402.")
    h = Host.find(6846)
    h.active_last_year = true
    h.save
    Host.find(8565).comments.create!(user_id: 415, content: "בשנה שעברה, 'שושנה גרוס' (1282) היה/הייתה מצוות/ת למארח/ת ירדן הברפלד (8565). בצד של המארחים הוא/היא 19537.")
    h = Host.find(8565)
    h.active_last_year = true
    h.save
    Host.find(8248).comments.create!(user_id: 415, content: "בשנה שעברה, 'רחל אוזן' (1289) היה/הייתה מצוות/ת למארח/ת ורדיאל 17 - בית הצעירים של דרום העיר תל אביב (8248). בצד של המארחים הוא/היא 19033.")
    h = Host.find(8248)
    h.active_last_year = true
    h.save
    Host.find(8637).comments.create!(user_id: 415, content: "בשנה שעברה, 'תמר מצ'אדו' (1583) היה/הייתה מצוות/ת למארח/ת חגית באלי (8637). בצד של המארחים הוא/היא 19642.")
    h = Host.find(8637)
    h.active_last_year = true
    h.save
    Host.find(3189).comments.create!(user_id: 415, content: "בשנה שעברה, 'קופרי סבטלנה' (3141) היה/הייתה מצוות/ת למארח/ת שלומית פריבר (3189). בצד של המארחים הוא/היא 9074.")
    h = Host.find(3189)
    h.active_last_year = true
    h.save
    Host.find(9378).comments.create!(user_id: 415, content: "בשנה שעברה, 'שרה בכור' (76) היה/הייתה מצוות/ת למארח/ת ארז ברק (9378). בצד של המארחים הוא/היא 21769.")
    h = Host.find(9378)
    h.active_last_year = true
    h.save
    Host.find(6793).comments.create!(user_id: 415, content: "בשנה שעברה, 'חיים גולדשטיין' (657) היה/הייתה מצוות/ת למארח/ת דניאל דוידי (6793). בצד של המארחים הוא/היא 17341.")
    h = Host.find(6793)
    h.active_last_year = true
    h.save
    Host.find(6784).comments.create!(user_id: 415, content: "בשנה שעברה, 'שרה מילר' (357) היה/הייתה מצוות/ת למארח/ת אלון מור (6784). בצד של המארחים הוא/היא 4276.")
    h = Host.find(6784)
    h.active_last_year = true
    h.save
    Host.find(1582).comments.create!(user_id: 415, content: "בשנה שעברה, 'יפים סטולרוב' (1334) היה/הייתה מצוות/ת למארח/ת אפרת (1582). בצד של המארחים הוא/היא 2305.")
    h = Host.find(1582)
    h.active_last_year = true
    h.save
    Host.find(8419).comments.create!(user_id: 415, content: "בשנה שעברה, 'ציפורה סנדרוביץ' (69) היה/הייתה מצוות/ת למארח/ת ענבר בן נון (8419). בצד של המארחים הוא/היא 19316.")
    h = Host.find(8419)
    h.active_last_year = true
    h.save
    Host.find(8956).comments.create!(user_id: 415, content: "בשנה שעברה, 'רבקה ליבוביץ' (89) היה/הייתה מצוות/ת למארח/ת הילה אביאל (8956). בצד של המארחים הוא/היא 20325.")
    h = Host.find(8956)
    h.active_last_year = true
    h.save
    Host.find(9514).comments.create!(user_id: 415, content: "בשנה שעברה, 'שרה הדר' (23) היה/הייתה מצוות/ת למארח/ת צביה הדל (9514). בצד של המארחים הוא/היא 22464.")
    h = Host.find(9514)
    h.active_last_year = true
    h.save
    Host.find(7445).comments.create!(user_id: 415, content: "בשנה שעברה, 'מוט פייר' (2278) היה/הייתה מצוות/ת למארח/ת מאור שטרן- מרכז קהילתי חוף חפר (7445). בצד של המארחים הוא/היא 18085.")
    h = Host.find(7445)
    h.active_last_year = true
    h.save
    Host.find(6860).comments.create!(user_id: 415, content: "בשנה שעברה, 'גיל אהרוני' (2677) היה/הייתה מצוות/ת למארח/ת בתיה מאיר (6860). בצד של המארחים הוא/היא 17416.")
    h = Host.find(6860)
    h.active_last_year = true
    h.save
    Host.find(7258).comments.create!(user_id: 415, content: "בשנה שעברה, 'משה צביבך' (1825) היה/הייתה מצוות/ת למארח/ת סתיו בן שימול (7258). בצד של המארחים הוא/היא 17859.")
    h = Host.find(7258)
    h.active_last_year = true
    h.save
    Host.find(3339).comments.create!(user_id: 415, content: "בשנה שעברה, 'יהודית וינר' (160) היה/הייתה מצוות/ת למארח/ת שקד טייב (3339). בצד של המארחים הוא/היא 9220.")
    h = Host.find(3339)
    h.active_last_year = true
    h.save
    Host.find(6996).comments.create!(user_id: 415, content: "בשנה שעברה, 'קרולינה אייזן' (2274) היה/הייתה מצוות/ת למארח/ת דנה שואר (6996). בצד של המארחים הוא/היא 17565.")
    h = Host.find(6996)
    h.active_last_year = true
    h.save
    Host.find(6568).comments.create!(user_id: 415, content: "בשנה שעברה, 'כלילה מרגלית' (2046) היה/הייתה מצוות/ת למארח/ת נאוה רוזנפלד (6568). בצד של המארחים הוא/היא 17115.")
    h = Host.find(6568)
    h.active_last_year = true
    h.save
    Host.find(6623).comments.create!(user_id: 415, content: "בשנה שעברה, 'נעמי רגב' (422) היה/הייתה מצוות/ת למארח/ת איריס קפלן (6623). בצד של המארחים הוא/היא 17169.")
    h = Host.find(6623)
    h.active_last_year = true
    h.save
    Host.find(7398).comments.create!(user_id: 415, content: "בשנה שעברה, 'חנה קרצו' (2042) היה/הייתה מצוות/ת למארח/ת שחר ברקאי (7398). בצד של המארחים הוא/היא 18031.")
    h = Host.find(7398)
    h.active_last_year = true
    h.save
    Host.find(1874).comments.create!(user_id: 415, content: "בשנה שעברה, 'אסף בלאו' (3046) היה/הייתה מצוות/ת למארח/ת עמרי עידן קורן (1874). בצד של המארחים הוא/היא 3062.")
    h = Host.find(1874)
    h.active_last_year = true
    h.save
    Host.find(6550).comments.create!(user_id: 415, content: "בשנה שעברה, 'מלכה ירון' (183) היה/הייתה מצוות/ת למארח/ת ליאת בכר אשכנזי (6550). בצד של המארחים הוא/היא 17099.")
    h = Host.find(6550)
    h.active_last_year = true
    h.save
    Host.find(7272).comments.create!(user_id: 415, content: "בשנה שעברה, 'רותי שריג' (829) היה/הייתה מצוות/ת למארח/ת Michal Ner-David (7272). בצד של המארחים הוא/היא 17876.")
    h = Host.find(7272)
    h.active_last_year = true
    h.save
    Host.find(7546).comments.create!(user_id: 415, content: "בשנה שעברה, 'ראובן (רוברט) פורר' (179) היה/הייתה מצוות/ת למארח/ת עיינה מירוצניק (7546). בצד של המארחים הוא/היא 18199.")
    h = Host.find(7546)
    h.active_last_year = true
    h.save
    Host.find(8038).comments.create!(user_id: 415, content: "בשנה שעברה, 'רלי שולקינד' (134) היה/הייתה מצוות/ת למארח/ת סיון רז (8038). בצד של המארחים הוא/היא 18770.")
    h = Host.find(8038)
    h.active_last_year = true
    h.save
    Host.find(7307).comments.create!(user_id: 415, content: "בשנה שעברה, 'אלי ביר' (2039) היה/הייתה מצוות/ת למארח/ת אלה תאודור (7307). בצד של המארחים הוא/היא 17920.")
    h = Host.find(7307)
    h.active_last_year = true
    h.save
    Host.find(6726).comments.create!(user_id: 415, content: "בשנה שעברה, 'נינה אביוב' (3074) היה/הייתה מצוות/ת למארח/ת לינוי אוליאל (6726). בצד של המארחים הוא/היא 17269.")
    h = Host.find(6726)
    h.active_last_year = true
    h.save
    Host.find(9713).comments.create!(user_id: 415, content: "בשנה שעברה, 'טומי ברייער' (210) היה/הייתה מצוות/ת למארח/ת שני מסקין (9713). בצד של המארחים הוא/היא 23539.")
    h = Host.find(9713)
    h.active_last_year = true
    h.save
    Host.find(7884).comments.create!(user_id: 415, content: "בשנה שעברה, 'רפי אוסטרוף' (2035) היה/הייתה מצוות/ת למארח/ת רעות (7884). בצד של המארחים הוא/היא 18595.")
    h = Host.find(7884)
    h.active_last_year = true
    h.save
    Host.find(9748).comments.create!(user_id: 415, content: "בשנה שעברה, 'יוכי בשיסטה' (163) היה/הייתה מצוות/ת למארח/ת ירדן זאוי (9748). בצד של המארחים הוא/היא 23783.")
    h = Host.find(9748)
    h.active_last_year = true
    h.save
    Host.find(4520).comments.create!(user_id: 415, content: "בשנה שעברה, 'יפה אורבך' (1849) היה/הייתה מצוות/ת למארח/ת עמרם אהוד (4520). בצד של המארחים הוא/היא 10804.")
    h = Host.find(4520)
    h.active_last_year = true
    h.save
    Host.find(2194).comments.create!(user_id: 415, content: "בשנה שעברה, 'איציק זינגר' (80) היה/הייתה מצוות/ת למארח/ת שקד המבר (2194). בצד של המארחים הוא/היא 4023.")
    h = Host.find(2194)
    h.active_last_year = true
    h.save
    Host.find(9058).comments.create!(user_id: 415, content: "בשנה שעברה, 'אליעזר ראוזנרמן' (200) היה/הייתה מצוות/ת למארח/ת שירה בן דהן (9058). בצד של המארחים הוא/היא 20647.")
    h = Host.find(9058)
    h.active_last_year = true
    h.save
    Host.find(7648).comments.create!(user_id: 415, content: "בשנה שעברה, 'צבי לביא' (74) היה/הייתה מצוות/ת למארח/ת אלה שאול (7648). בצד של המארחים הוא/היא 18326.")
    h = Host.find(7648)
    h.active_last_year = true
    h.save
    Host.find(2054).comments.create!(user_id: 415, content: "בשנה שעברה, 'רבקה רצ'בסקי' (1774) היה/הייתה מצוות/ת למארח/ת רחל הוד (2054). בצד של המארחים הוא/היא 3607.")
    h = Host.find(2054)
    h.active_last_year = true
    h.save
    Host.find(4210).comments.create!(user_id: 415, content: "בשנה שעברה, 'עדנה בלילו' (498) היה/הייתה מצוות/ת למארח/ת יותם מויאל (4210). בצד של המארחים הוא/היא 10403.")
    h = Host.find(4210)
    h.active_last_year = true
    h.save
    Host.find(7568).comments.create!(user_id: 415, content: "בשנה שעברה, 'פועה לין' (754) היה/הייתה מצוות/ת למארח/ת דניאלה אבנרי (7568). בצד של המארחים הוא/היא 18225.")
    h = Host.find(7568)
    h.active_last_year = true
    h.save
    Host.find(7138).comments.create!(user_id: 415, content: "בשנה שעברה, 'בלה סולומון' (1850) היה/הייתה מצוות/ת למארח/ת נילי חומן (7138). בצד של המארחים הוא/היא 17723.")
    h = Host.find(7138)
    h.active_last_year = true
    h.save
    Host.find(8048).comments.create!(user_id: 415, content: "בשנה שעברה, 'נרינסקי מיכאל' (3144) היה/הייתה מצוות/ת למארח/ת שמעון אטיאס (8048). בצד של המארחים הוא/היא 18781.")
    h = Host.find(8048)
    h.active_last_year = true
    h.save
    Host.find(9427).comments.create!(user_id: 415, content: "בשנה שעברה, 'דינה בר-און' (2256) היה/הייתה מצוות/ת למארח/ת שבי פודגור (9427). בצד של המארחים הוא/היא 21990.")
    h = Host.find(9427)
    h.active_last_year = true
    h.save
    Host.find(8115).comments.create!(user_id: 415, content: "בשנה שעברה, 'לאה טייכר' (230) היה/הייתה מצוות/ת למארח/ת תמי זוזל (8115). בצד של המארחים הוא/היא 18858.")
    h = Host.find(8115)
    h.active_last_year = true
    h.save
    Host.find(3380).comments.create!(user_id: 415, content: "בשנה שעברה, 'אביבה טל' (1252) היה/הייתה מצוות/ת למארח/ת בני אשכנזי (3380). בצד של המארחים הוא/היא 9267.")
    h = Host.find(3380)
    h.active_last_year = true
    h.save
    Host.find(7226).comments.create!(user_id: 415, content: "בשנה שעברה, 'מצליח חכמון' (207) היה/הייתה מצוות/ת למארח/ת שמעון איפרגן (7226). בצד של המארחים הוא/היא 17823.")
    h = Host.find(7226)
    h.active_last_year = true
    h.save
    Host.find(8467).comments.create!(user_id: 415, content: "בשנה שעברה, 'רבקה וויס' (242) היה/הייתה מצוות/ת למארח/ת מירי סרברו- עמותת אנוש (8467). בצד של המארחים הוא/היא 19393.")
    h = Host.find(8467)
    h.active_last_year = true
    h.save
    Host.find(3828).comments.create!(user_id: 415, content: "בשנה שעברה, 'דוד הדר' (3140) היה/הייתה מצוות/ת למארח/ת סיגל בר (3828). בצד של המארחים הוא/היא 9906.")
    h = Host.find(3828)
    h.active_last_year = true
    h.save
    Host.find(6838).comments.create!(user_id: 415, content: "בשנה שעברה, 'שמואל וכטל' (2254) היה/הייתה מצוות/ת למארח/ת ענבר אסודי (6838). בצד של המארחים הוא/היא 17393.")
    h = Host.find(6838)
    h.active_last_year = true
    h.save
    Host.find(7537).comments.create!(user_id: 415, content: "בשנה שעברה, 'ניבה ברדה' (228) היה/הייתה מצוות/ת למארח/ת שרי אלדר (7537). בצד של המארחים הוא/היא 18189.")
    h = Host.find(7537)
    h.active_last_year = true
    h.save
    Host.find(7099).comments.create!(user_id: 415, content: "בשנה שעברה, 'חנה רוזנבאום' (251) היה/הייתה מצוות/ת למארח/ת איריס אליה כהן (7099). בצד של המארחים הוא/היא 17684.")
    h = Host.find(7099)
    h.active_last_year = true
    h.save
    Host.find(7620).comments.create!(user_id: 415, content: "בשנה שעברה, 'סיגלית יפה' (1727) היה/הייתה מצוות/ת למארח/ת יפעת טהרני (7620). בצד של המארחים הוא/היא 18292.")
    h = Host.find(7620)
    h.active_last_year = true
    h.save
    Host.find(8548).comments.create!(user_id: 415, content: "בשנה שעברה, 'בבי סלומון' (1085) היה/הייתה מצוות/ת למארח/ת מאיה לוי (8548). בצד של המארחים הוא/היא 19511.")
    h = Host.find(8548)
    h.active_last_year = true
    h.save
    Host.find(8640).comments.create!(user_id: 415, content: "בשנה שעברה, 'אלברט ודרורה כהן' (305) היה/הייתה מצוות/ת למארח/ת רומי קנאפו (8640). בצד של המארחים הוא/היא 19646.")
    h = Host.find(8640)
    h.active_last_year = true
    h.save
    Host.find(7847).comments.create!(user_id: 415, content: "בשנה שעברה, 'כוגן תמרה' (3139) היה/הייתה מצוות/ת למארח/ת יוסף ורעות ברדא (7847). בצד של המארחים הוא/היא 18549.")
    h = Host.find(7847)
    h.active_last_year = true
    h.save
    Host.find(8610).comments.create!(user_id: 415, content: "בשנה שעברה, 'גרטה סלון' (2065) היה/הייתה מצוות/ת למארח/ת Muriel Davis (8610). בצד של המארחים הוא/היא 19601.")
    h = Host.find(8610)
    h.active_last_year = true
    h.save
    Host.find(757).comments.create!(user_id: 415, content: "בשנה שעברה, 'טרוסמן יעקב' (3155) היה/הייתה מצוות/ת למארח/ת אביב זמיר (757). בצד של המארחים הוא/היא 810.")
    h = Host.find(757)
    h.active_last_year = true
    h.save
    Host.find(9590).comments.create!(user_id: 415, content: "בשנה שעברה, 'גיטה גלר' (3151) היה/הייתה מצוות/ת למארח/ת נעה שופר (9590). בצד של המארחים הוא/היא 22801.")
    h = Host.find(9590)
    h.active_last_year = true
    h.save
    Host.find(8543).comments.create!(user_id: 415, content: "בשנה שעברה, 'אסתר שיינברג' (278) היה/הייתה מצוות/ת למארח/ת עמיר דדון (8543). בצד של המארחים הוא/היא 19506.")
    h = Host.find(8543)
    h.active_last_year = true
    h.save
    Host.find(8924).comments.create!(user_id: 415, content: "בשנה שעברה, 'אולשנסקי לובה' (3145) היה/הייתה מצוות/ת למארח/ת ליאת ארליך (8924). בצד של המארחים הוא/היא 20238.")
    h = Host.find(8924)
    h.active_last_year = true
    h.save
    Host.find(5499).comments.create!(user_id: 415, content: "בשנה שעברה, 'אבי נודלמן' (3150) היה/הייתה מצוות/ת למארח/ת מיטל פרג (5499). בצד של המארחים הוא/היא 12490.")
    h = Host.find(5499)
    h.active_last_year = true
    h.save
    Host.find(7461).comments.create!(user_id: 415, content: "בשנה שעברה, 'בני צבר' (2092) היה/הייתה מצוות/ת למארח/ת דלית כהן (7461). בצד של המארחים הוא/היא 18102.")
    h = Host.find(7461)
    h.active_last_year = true
    h.save
    Host.find(8663).comments.create!(user_id: 415, content: "בשנה שעברה, 'ביחוב אניה' (3143) היה/הייתה מצוות/ת למארח/ת אנה אור (8663). בצד של המארחים הוא/היא 19702.")
    h = Host.find(8663)
    h.active_last_year = true
    h.save
    Host.find(8570).comments.create!(user_id: 415, content: "בשנה שעברה, 'יוסי ולרשטיין' (3149) היה/הייתה מצוות/ת למארח/ת איתיאל שיינפלד (8570). בצד של המארחים הוא/היא 19543.")
    h = Host.find(8570)
    h.active_last_year = true
    h.save
    Host.find(7865).comments.create!(user_id: 415, content: "בשנה שעברה, 'זהבה אמיץ' (289) היה/הייתה מצוות/ת למארח/ת ליבנת מזרחי (7865). בצד של המארחים הוא/היא 18571.")
    h = Host.find(7865)
    h.active_last_year = true
    h.save
    Host.find(9000).comments.create!(user_id: 415, content: "בשנה שעברה, 'רונית ברגמן' (328) היה/הייתה מצוות/ת למארח/ת רותם שרה בן יהושע (9000). בצד של המארחים הוא/היא 20455.")
    h = Host.find(9000)
    h.active_last_year = true
    h.save
    Host.find(8852).comments.create!(user_id: 415, content: "בשנה שעברה, 'יהושע זונטג' (3137) היה/הייתה מצוות/ת למארח/ת גלעד בלום (8852). בצד של המארחים הוא/היא 20103.")
    h = Host.find(8852)
    h.active_last_year = true
    h.save
    Host.find(1443).comments.create!(user_id: 415, content: "בשנה שעברה, 'שרה גודמן' (366) היה/הייתה מצוות/ת למארח/ת מור (1443). בצד של המארחים הוא/היא 1995.")
    h = Host.find(1443)
    h.active_last_year = true
    h.save
    Host.find(459).comments.create!(user_id: 415, content: "בשנה שעברה, 'דינה חן' (331) היה/הייתה מצוות/ת למארח/ת מאיה דיסקין (מרכז וולטה לנוער) (459). בצד של המארחים הוא/היא 504.")
    h = Host.find(459)
    h.active_last_year = true
    h.save
    Host.find(360).comments.create!(user_id: 415, content: "בשנה שעברה, 'צבי בן פורת' (337) היה/הייתה מצוות/ת למארח/ת שני חממה (360). בצד של המארחים הוא/היא 392.")
    h = Host.find(360)
    h.active_last_year = true
    h.save
    Host.find(7923).comments.create!(user_id: 415, content: "בשנה שעברה, 'אלה ברקן' (277) היה/הייתה מצוות/ת למארח/ת יובל שרייבר (7923). בצד של המארחים הוא/היא 18639.")
    h = Host.find(7923)
    h.active_last_year = true
    h.save
    Host.find(8453).comments.create!(user_id: 415, content: "בשנה שעברה, 'אלכס איווניר' (3146) היה/הייתה מצוות/ת למארח/ת נטלי ברוטמן (8453). בצד של המארחים הוא/היא 19373.")
    h = Host.find(8453)
    h.active_last_year = true
    h.save
    Host.find(4338).comments.create!(user_id: 415, content: "בשנה שעברה, 'רינת גולן' (1854) היה/הייתה מצוות/ת למארח/ת שמעון ברק (4338). בצד של המארחים הוא/היא 10554.")
    h = Host.find(4338)
    h.active_last_year = true
    h.save
    Host.find(5464).comments.create!(user_id: 415, content: "בשנה שעברה, 'שרה ברקון' (3138) היה/הייתה מצוות/ת למארח/ת ארז חמו (5464). בצד של המארחים הוא/היא 12432.")
    h = Host.find(5464)
    h.active_last_year = true
    h.save
    Host.find(9206).comments.create!(user_id: 415, content: "בשנה שעברה, 'אידה מנס' (2356) היה/הייתה מצוות/ת למארח/ת דקלה תורתי (9206). בצד של המארחים הוא/היא 21150.")
    h = Host.find(9206)
    h.active_last_year = true
    h.save
    Host.find(7199).comments.create!(user_id: 415, content: "בשנה שעברה, 'עזי ואן סטרטן' (1664) היה/הייתה מצוות/ת למארח/ת נועה קולב (7199). בצד של המארחים הוא/היא 17791.")
    h = Host.find(7199)
    h.active_last_year = true
    h.save
    Host.find(3538).comments.create!(user_id: 415, content: "בשנה שעברה, 'שרגא ברק' (412) היה/הייתה מצוות/ת למארח/ת נאור ויונטה (3538). בצד של המארחים הוא/היא 9515.")
    h = Host.find(3538)
    h.active_last_year = true
    h.save
    Host.find(6839).comments.create!(user_id: 415, content: "בשנה שעברה, 'בתיה כהנא' (406) היה/הייתה מצוות/ת למארח/ת עדי גינל (6839). בצד של המארחים הוא/היא 17394.")
    h = Host.find(6839)
    h.active_last_year = true
    h.save
    Host.find(6645).comments.create!(user_id: 415, content: "בשנה שעברה, 'לילי פרויד' (407) היה/הייתה מצוות/ת למארח/ת דנה ברששת (6645). בצד של המארחים הוא/היא 17190.")
    h = Host.find(6645)
    h.active_last_year = true
    h.save
    Host.find(5346).comments.create!(user_id: 415, content: "בשנה שעברה, 'מירי סיון' (1852) היה/הייתה מצוות/ת למארח/ת אוראל בלילטי (5346). בצד של המארחים הוא/היא 12239.")
    h = Host.find(5346)
    h.active_last_year = true
    h.save
    Host.find(7223).comments.create!(user_id: 415, content: "בשנה שעברה, 'יהודה גולדשטיין' (386) היה/הייתה מצוות/ת למארח/ת דניאל אריאב (7223). בצד של המארחים הוא/היא 17820.")
    h = Host.find(7223)
    h.active_last_year = true
    h.save
    Host.find(8173).comments.create!(user_id: 415, content: "בשנה שעברה, 'רות מייסנר' (2332) היה/הייתה מצוות/ת למארח/ת עדי ונעם שכטר (8173). בצד של המארחים הוא/היא 18946.")
    h = Host.find(8173)
    h.active_last_year = true
    h.save
    Host.find(6363).comments.create!(user_id: 415, content: "בשנה שעברה, 'יוסף קלמנוביץ' (3083) היה/הייתה מצוות/ת למארח/ת ברק (6363). בצד של המארחים הוא/היא 16802.")
    h = Host.find(6363)
    h.active_last_year = true
    h.save
    Host.find(3763).comments.create!(user_id: 415, content: "בשנה שעברה, 'חנה זילברמן' (436) היה/הייתה מצוות/ת למארח/ת שלי ואיתי וקסלר (3763). בצד של המארחים הוא/היא 9829.")
    h = Host.find(3763)
    h.active_last_year = true
    h.save
    Host.find(6762).comments.create!(user_id: 415, content: "בשנה שעברה, 'חיליק בוגומולסקי' (273) היה/הייתה מצוות/ת למארח/ת גבריאל לזר (6762). בצד של המארחים הוא/היא 17306.")
    h = Host.find(6762)
    h.active_last_year = true
    h.save
    Host.find(5259).comments.create!(user_id: 415, content: "בשנה שעברה, 'נוביקוב לובה' (3142) היה/הייתה מצוות/ת למארח/ת דלינה רייטר (5259). בצד של המארחים הוא/היא 12066.")
    h = Host.find(5259)
    h.active_last_year = true
    h.save
    Host.find(8476).comments.create!(user_id: 415, content: "בשנה שעברה, 'נאוה רודה' (424) היה/הייתה מצוות/ת למארח/ת אורלי הררי (8476). בצד של המארחים הוא/היא 19403.")
    h = Host.find(8476)
    h.active_last_year = true
    h.save
    Host.find(8160).comments.create!(user_id: 415, content: "בשנה שעברה, 'ליביה ביטון ג'קסון' (3156) היה/הייתה מצוות/ת למארח/ת חלי נעימי (8160). בצד של המארחים הוא/היא 18922.")
    h = Host.find(8160)
    h.active_last_year = true
    h.save
    Host.find(6776).comments.create!(user_id: 415, content: "בשנה שעברה, 'ג'נין אוקנין' (3158) היה/הייתה מצוות/ת למארח/ת שמוליק דואק (6776). בצד של המארחים הוא/היא 17324.")
    h = Host.find(6776)
    h.active_last_year = true
    h.save
    Host.find(7429).comments.create!(user_id: 415, content: "בשנה שעברה, 'אברהם תמר' (2141) היה/הייתה מצוות/ת למארח/ת פז שמש (7429). בצד של המארחים הוא/היא 18068.")
    h = Host.find(7429)
    h.active_last_year = true
    h.save
    Host.find(968).comments.create!(user_id: 415, content: "בשנה שעברה, 'חנה ליבמן' (455) היה/הייתה מצוות/ת למארח/ת רעות ליברמן (968). בצד של המארחים הוא/היא 1073.")
    h = Host.find(968)
    h.active_last_year = true
    h.save
    Host.find(8906).comments.create!(user_id: 415, content: "בשנה שעברה, 'אבי לביא' (460) היה/הייתה מצוות/ת למארח/ת מור טביב (8906). בצד של המארחים הוא/היא 20206.")
    h = Host.find(8906)
    h.active_last_year = true
    h.save
    Host.find(8762).comments.create!(user_id: 415, content: "בשנה שעברה, 'רחל עזריה' (565) היה/הייתה מצוות/ת למארח/ת מיטל משה -מועדון כדורגל מכבי חיפה (8762). בצד של המארחים הוא/היא 19880.")
    h = Host.find(8762)
    h.active_last_year = true
    h.save
    Host.find(6664).comments.create!(user_id: 415, content: "בשנה שעברה, 'סימה גולצקי' (457) היה/הייתה מצוות/ת למארח/ת תפארת שטיימן (6664). בצד של המארחים הוא/היא 17208.")
    h = Host.find(6664)
    h.active_last_year = true
    h.save
    Host.find(6786).comments.create!(user_id: 415, content: "בשנה שעברה, 'ניצן אבקסיס' (477) היה/הייתה מצוות/ת למארח/ת שרון שוורץ (6786). בצד של המארחים הוא/היא 17334.")
    h = Host.find(6786)
    h.active_last_year = true
    h.save
    Host.find(7203).comments.create!(user_id: 415, content: "בשנה שעברה, 'ורד בן ארצי' (439) היה/הייתה מצוות/ת למארח/ת רוני לקר- עמותת אנוש גבעתיים (7203). בצד של המארחים הוא/היא 17795.")
    h = Host.find(7203)
    h.active_last_year = true
    h.save
    Host.find(5765).comments.create!(user_id: 415, content: "בשנה שעברה, 'חנה דקלו' (1853) היה/הייתה מצוות/ת למארח/ת עידן דטהר (5765). בצד של המארחים הוא/היא 13202.")
    h = Host.find(5765)
    h.active_last_year = true
    h.save
    Host.find(8913).comments.create!(user_id: 415, content: "בשנה שעברה, 'יוסף קנדל' (784) היה/הייתה מצוות/ת למארח/ת פריתס טל (8913). בצד של המארחים הוא/היא 20218.")
    h = Host.find(8913)
    h.active_last_year = true
    h.save
    Host.find(7795).comments.create!(user_id: 415, content: "בשנה שעברה, 'מרסל מרקוביץ'' (644) היה/הייתה מצוות/ת למארח/ת לירון בייזר (7795). בצד של המארחים הוא/היא 18494.")
    h = Host.find(7795)
    h.active_last_year = true
    h.save
    Host.find(3235).comments.create!(user_id: 415, content: "בשנה שעברה, 'רבקה פנקס' (2680) היה/הייתה מצוות/ת למארח/ת אביב שיטרית (3235). בצד של המארחים הוא/היא 9119.")
    h = Host.find(3235)
    h.active_last_year = true
    h.save
    Host.find(7107).comments.create!(user_id: 415, content: "בשנה שעברה, 'פאולינה שמיר' (1879) היה/הייתה מצוות/ת למארח/ת ארדיטי ציפי (7107). בצד של המארחים הוא/היא 17691.")
    h = Host.find(7107)
    h.active_last_year = true
    h.save
    Host.find(8059).comments.create!(user_id: 415, content: "בשנה שעברה, 'שוש בן צבר' (2273) היה/הייתה מצוות/ת למארח/ת שובל כהן (8059). בצד של המארחים הוא/היא 18794.")
    h = Host.find(8059)
    h.active_last_year = true
    h.save
    Host.find(2157).comments.create!(user_id: 415, content: "בשנה שעברה, 'פרלה פרלשטיין' (578) היה/הייתה מצוות/ת למארח/ת אלונה גזית (2157). בצד של המארחים הוא/היא 3869.")
    h = Host.find(2157)
    h.active_last_year = true
    h.save
    Host.find(1943).comments.create!(user_id: 415, content: "בשנה שעברה, 'נחום רוטנברג' (1195) היה/הייתה מצוות/ת למארח/ת אמירה פז (1943). בצד של המארחים הוא/היא 3306.")
    h = Host.find(1943)
    h.active_last_year = true
    h.save
    Host.find(9411).comments.create!(user_id: 415, content: "בשנה שעברה, 'דב פלד' (647) היה/הייתה מצוות/ת למארח/ת בית ספר תורה ומדע (9411). בצד של המארחים הוא/היא 21924.")
    h = Host.find(9411)
    h.active_last_year = true
    h.save
    Host.find(8898).comments.create!(user_id: 415, content: "בשנה שעברה, 'רחל קיביץ' (658) היה/הייתה מצוות/ת למארח/ת רוני-לי וינוקור (8898). בצד של המארחים הוא/היא 20186.")
    h = Host.find(8898)
    h.active_last_year = true
    h.save
    Host.find(4295).comments.create!(user_id: 415, content: "בשנה שעברה, 'יפה שלזינגר' (1865) היה/הייתה מצוות/ת למארח/ת איריס ג'יבלי (4295). בצד של המארחים הוא/היא 10497.")
    h = Host.find(4295)
    h.active_last_year = true
    h.save
    Host.find(5154).comments.create!(user_id: 415, content: "בשנה שעברה, 'שושנה רשף' (642) היה/הייתה מצוות/ת למארח/ת אלעזר יפה (5154). בצד של המארחים הוא/היא 11819.")
    h = Host.find(5154)
    h.active_last_year = true
    h.save
    Host.find(8300).comments.create!(user_id: 415, content: "בשנה שעברה, 'יהודית בראל' (2090) היה/הייתה מצוות/ת למארח/ת בן ישראל שאול (8300). בצד של המארחים הוא/היא 19113.")
    h = Host.find(8300)
    h.active_last_year = true
    h.save
    Host.find(3933).comments.create!(user_id: 415, content: "בשנה שעברה, 'אביטל פרלין' (1693) היה/הייתה מצוות/ת למארח/ת ענבר ורטהימר שינה (3933). בצד של המארחים הוא/היא 10038.")
    h = Host.find(3933)
    h.active_last_year = true
    h.save
    Host.find(8628).comments.create!(user_id: 415, content: "בשנה שעברה, 'יפה קניג' (655) היה/הייתה מצוות/ת למארח/ת עדי כהן-סניף שיכון (8628). בצד של המארחים הוא/היא 19626.")
    h = Host.find(8628)
    h.active_last_year = true
    h.save
    Host.find(2991).comments.create!(user_id: 415, content: "בשנה שעברה, 'עליזה דרומי' (2074) היה/הייתה מצוות/ת למארח/ת עמיעד מערכות מים בע\"מ- שחף וילנסקי (2991). בצד של המארחים הוא/היא 8873.")
    h = Host.find(2991)
    h.active_last_year = true
    h.save
    Host.find(5235).comments.create!(user_id: 415, content: "בשנה שעברה, 'פנינה קלטמן' (604) היה/הייתה מצוות/ת למארח/ת בקי יחזקאל (5235). בצד של המארחים הוא/היא 12015.")
    h = Host.find(5235)
    h.active_last_year = true
    h.save
    Host.find(8423).comments.create!(user_id: 415, content: "בשנה שעברה, 'בילי לניאדו' (599) היה/הייתה מצוות/ת למארח/ת חגית ברששת (8423). בצד של המארחים הוא/היא 15591.")
    h = Host.find(8423)
    h.active_last_year = true
    h.save
    Host.find(8915).comments.create!(user_id: 415, content: "בשנה שעברה, 'ברטי קורן' (610) היה/הייתה מצוות/ת למארח/ת אורי פריתס (8915). בצד של המארחים הוא/היא 20219.")
    h = Host.find(8915)
    h.active_last_year = true
    h.save
    Host.find(6868).comments.create!(user_id: 415, content: "בשנה שעברה, 'עלית קראפ' (571) היה/הייתה מצוות/ת למארח/ת גלית כהן (6868). בצד של המארחים הוא/היא 17424.")
    h = Host.find(6868)
    h.active_last_year = true
    h.save
    Host.find(7564).comments.create!(user_id: 415, content: "בשנה שעברה, 'נורית בן מנחם' (2295) היה/הייתה מצוות/ת למארח/ת שהם חדאד (7564). בצד של המארחים הוא/היא 18221.")
    h = Host.find(7564)
    h.active_last_year = true
    h.save
    Host.find(5666).comments.create!(user_id: 415, content: "בשנה שעברה, 'הניה שנון-קליין' (1855) היה/הייתה מצוות/ת למארח/ת דר׳ סוזי קגן (5666). בצד של המארחים הוא/היא 12899.")
    h = Host.find(5666)
    h.active_last_year = true
    h.save
    Host.find(1696).comments.create!(user_id: 415, content: "בשנה שעברה, 'יולנדה גרוס' (722) היה/הייתה מצוות/ת למארח/ת טליה דאר (1696). בצד של המארחים הוא/היא 2591.")
    h = Host.find(1696)
    h.active_last_year = true
    h.save
    Host.find(8604).comments.create!(user_id: 415, content: "בשנה שעברה, 'חיה וויינשטיין' (3157) היה/הייתה מצוות/ת למארח/ת מיכל הרשקוביץ (8604). בצד של המארחים הוא/היא 19594.")
    h = Host.find(8604)
    h.active_last_year = true
    h.save
    Host.find(8999).comments.create!(user_id: 415, content: "בשנה שעברה, 'פרידה הירש' (3161) היה/הייתה מצוות/ת למארח/ת ויויאן רושנסקי (8999). בצד של המארחים הוא/היא 20454.")
    h = Host.find(8999)
    h.active_last_year = true
    h.save
    Host.find(7672).comments.create!(user_id: 415, content: "בשנה שעברה, 'מלה מאיר' (1866) היה/הייתה מצוות/ת למארח/ת אילאיל שאול (7672). בצד של המארחים הוא/היא 18352.")
    h = Host.find(7672)
    h.active_last_year = true
    h.save
    Host.find(7003).comments.create!(user_id: 415, content: "בשנה שעברה, 'אייזיק ארתור' (739) היה/הייתה מצוות/ת למארח/ת ליאור שרקר (7003). בצד של המארחים הוא/היא 17571.")
    h = Host.find(7003)
    h.active_last_year = true
    h.save
    Host.find(872).comments.create!(user_id: 415, content: "בשנה שעברה, 'עליזה פלורנטל' (738) היה/הייתה מצוות/ת למארח/ת נטלי כהן (872). בצד של המארחים הוא/היא 927.")
    h = Host.find(872)
    h.active_last_year = true
    h.save
    Host.find(7963).comments.create!(user_id: 415, content: "בשנה שעברה, 'אנה גרין' (2682) היה/הייתה מצוות/ת למארח/ת אסתר פרדה (7963). בצד של המארחים הוא/היא 18690.")
    h = Host.find(7963)
    h.active_last_year = true
    h.save
    Host.find(8137).comments.create!(user_id: 415, content: "בשנה שעברה, 'זאב גלרנטר' (634) היה/הייתה מצוות/ת למארח/ת אילה (8137). בצד של המארחים הוא/היא 18885.")
    h = Host.find(8137)
    h.active_last_year = true
    h.save
    Host.find(6607).comments.create!(user_id: 415, content: "בשנה שעברה, 'יהודית ודני רבל' (1614) היה/הייתה מצוות/ת למארח/ת יובל פילס (6607). בצד של המארחים הוא/היא 17153.")
    h = Host.find(6607)
    h.active_last_year = true
    h.save
    Host.find(9350).comments.create!(user_id: 415, content: "בשנה שעברה, 'רונית ארנפרויד' (729) היה/הייתה מצוות/ת למארח/ת יסמין צוריאל (9350). בצד של המארחים הוא/היא 21624.")
    h = Host.find(9350)
    h.active_last_year = true
    h.save
    Host.find(9130).comments.create!(user_id: 415, content: "בשנה שעברה, 'לילה מאיה חפר' (3163) היה/הייתה מצוות/ת למארח/ת רחל מולא נצר (9130). בצד של המארחים הוא/היא 20824.")
    h = Host.find(9130)
    h.active_last_year = true
    h.save
    Host.find(8638).comments.create!(user_id: 415, content: "בשנה שעברה, 'בלה פייט' (2529) היה/הייתה מצוות/ת למארח/ת הילה פייט פלדמן (8638). בצד של המארחים הוא/היא 19644.")
    h = Host.find(8638)
    h.active_last_year = true
    h.save
    Host.find(3045).comments.create!(user_id: 415, content: "בשנה שעברה, 'שלמה גולן' (1899) היה/הייתה מצוות/ת למארח/ת יניב קדושים (3045). בצד של המארחים הוא/היא 8928.")
    h = Host.find(3045)
    h.active_last_year = true
    h.save
    Host.find(5226).comments.create!(user_id: 415, content: "בשנה שעברה, 'אוהד איתם' (178) היה/הייתה מצוות/ת למארח/ת נועה כורם (5226). בצד של המארחים הוא/היא 6765.")
    h = Host.find(5226)
    h.active_last_year = true
    h.save
    Host.find(9184).comments.create!(user_id: 415, content: "בשנה שעברה, 'מסיה ביזוב' (766) היה/הייתה מצוות/ת למארח/ת יהודית ברנט (9184). בצד של המארחים הוא/היא 21092.")
    h = Host.find(9184)
    h.active_last_year = true
    h.save
    Host.find(7592).comments.create!(user_id: 415, content: "בשנה שעברה, 'יפה פינקלשטיין' (703) היה/הייתה מצוות/ת למארח/ת שרון אמור (7592). בצד של המארחים הוא/היא 18262.")
    h = Host.find(7592)
    h.active_last_year = true
    h.save
    Host.find(8456).comments.create!(user_id: 415, content: "בשנה שעברה, 'יעל אשכנזי' (2104) היה/הייתה מצוות/ת למארח/ת טל וינברג (8456). בצד של המארחים הוא/היא 19376.")
    h = Host.find(8456)
    h.active_last_year = true
    h.save
    Host.find(2615).comments.create!(user_id: 415, content: "בשנה שעברה, 'רחל וידל' (159) היה/הייתה מצוות/ת למארח/ת חיים גבלייב (2615). בצד של המארחים הוא/היא 5996.")
    h = Host.find(2615)
    h.active_last_year = true
    h.save
    Host.find(6807).comments.create!(user_id: 415, content: "בשנה שעברה, 'ליליאן בר-נע' (569) היה/הייתה מצוות/ת למארח/ת עדי גורליק (6807). בצד של המארחים הוא/היא 17357.")
    h = Host.find(6807)
    h.active_last_year = true
    h.save
    Host.find(8358).comments.create!(user_id: 415, content: "בשנה שעברה, 'אילנה איתמרי' (2098) היה/הייתה מצוות/ת למארח/ת אבישג בצר (8358). בצד של המארחים הוא/היא 19186.")
    h = Host.find(8358)
    h.active_last_year = true
    h.save
    Host.find(7418).comments.create!(user_id: 415, content: "בשנה שעברה, 'שלמה בובה' (572) היה/הייתה מצוות/ת למארח/ת מכבי צעיר חדרה (7418). בצד של המארחים הוא/היא 18055.")
    h = Host.find(7418)
    h.active_last_year = true
    h.save
    Host.find(7055).comments.create!(user_id: 415, content: "בשנה שעברה, 'שולמית וולקיטה' (1895) היה/הייתה מצוות/ת למארח/ת מירי לופוביץ' (7055). בצד של המארחים הוא/היא 17633.")
    h = Host.find(7055)
    h.active_last_year = true
    h.save
    Host.find(6979).comments.create!(user_id: 415, content: "בשנה שעברה, 'מוטי קליין' (446) היה/הייתה מצוות/ת למארח/ת מוריה בוקרה (6979). בצד של המארחים הוא/היא 17546.")
    h = Host.find(6979)
    h.active_last_year = true
    h.save
    Host.find(8068).comments.create!(user_id: 415, content: "בשנה שעברה, 'לילי גומבוש' (1590) היה/הייתה מצוות/ת למארח/ת מעיין אהרון (8068). בצד של המארחים הוא/היא 18810.")
    h = Host.find(8068)
    h.active_last_year = true
    h.save
    Host.find(9721).comments.create!(user_id: 415, content: "בשנה שעברה, 'רבקה טאוב' (3165) היה/הייתה מצוות/ת למארח/ת רונית רותם ירון (9721). בצד של המארחים הוא/היא 23630.")
    h = Host.find(9721)
    h.active_last_year = true
    h.save
    Host.find(7726).comments.create!(user_id: 415, content: "בשנה שעברה, 'יצחק קואומו' (708) היה/הייתה מצוות/ת למארח/ת ענבר פינסקר (7726). בצד של המארחים הוא/היא 18417.")
    h = Host.find(7726)
    h.active_last_year = true
    h.save
    Host.find(9040).comments.create!(user_id: 415, content: "בשנה שעברה, 'אברהם חולי' (3164) היה/הייתה מצוות/ת למארח/ת סולימן אזולאי מימי (9040). בצד של המארחים הוא/היא 20583.")
    h = Host.find(9040)
    h.active_last_year = true
    h.save
    Host.find(7326).comments.create!(user_id: 415, content: "בשנה שעברה, 'שביט בן ארי' (369) היה/הייתה מצוות/ת למארח/ת הדס חנה ארנברג (7326). בצד של המארחים הוא/היא 17945.")
    h = Host.find(7326)
    h.active_last_year = true
    h.save
    Host.find(8036).comments.create!(user_id: 415, content: "בשנה שעברה, 'ג'ק ברסלר' (1889) היה/הייתה מצוות/ת למארח/ת יובל אדלמן (8036). בצד של המארחים הוא/היא 18768.")
    h = Host.find(8036)
    h.active_last_year = true
    h.save
    Host.find(8559).comments.create!(user_id: 415, content: "בשנה שעברה, 'תמרה לחמי' (423) היה/הייתה מצוות/ת למארח/ת עמותת שלומית ירושלים מאיה איתן (8559). בצד של המארחים הוא/היא 19528.")
    h = Host.find(8559)
    h.active_last_year = true
    h.save
    Host.find(8028).comments.create!(user_id: 415, content: "בשנה שעברה, 'נעמה שפי' (1915) היה/הייתה מצוות/ת למארח/ת אורטל וסטלר (8028). בצד של המארחים הוא/היא 11903.")
    h = Host.find(8028)
    h.active_last_year = true
    h.save
    Host.find(8008).comments.create!(user_id: 415, content: "בשנה שעברה, 'אלי קרטיס' (803) היה/הייתה מצוות/ת למארח/ת שחר כפיר (8008). בצד של המארחים הוא/היא 18742.")
    h = Host.find(8008)
    h.active_last_year = true
    h.save
    Host.find(7218).comments.create!(user_id: 415, content: "בשנה שעברה, 'חנן זולדן' (1171) היה/הייתה מצוות/ת למארח/ת אודליה אחי דוד (7218). בצד של המארחים הוא/היא 17815.")
    h = Host.find(7218)
    h.active_last_year = true
    h.save
    Host.find(6756).comments.create!(user_id: 415, content: "בשנה שעברה, 'יובל שטרסמן' (707) היה/הייתה מצוות/ת למארח/ת שמי רוזנפלד (6756). בצד של המארחים הוא/היא 17300.")
    h = Host.find(6756)
    h.active_last_year = true
    h.save
    Host.find(7821).comments.create!(user_id: 415, content: "בשנה שעברה, 'בינה הלפרין' (1886) היה/הייתה מצוות/ת למארח/ת טל בלוך (7821). בצד של המארחים הוא/היא 18519.")
    h = Host.find(7821)
    h.active_last_year = true
    h.save
    Host.find(8466).comments.create!(user_id: 415, content: "בשנה שעברה, 'אסתר רוטר' (1409) היה/הייתה מצוות/ת למארח/ת לוסי כץ (8466). בצד של המארחים הוא/היא 19390.")
    h = Host.find(8466)
    h.active_last_year = true
    h.save
    Host.find(7330).comments.create!(user_id: 415, content: "בשנה שעברה, 'שרית זייברט' (1922) היה/הייתה מצוות/ת למארח/ת נעה כפרי (7330). בצד של המארחים הוא/היא 17949.")
    h = Host.find(7330)
    h.active_last_year = true
    h.save
    Host.find(8853).comments.create!(user_id: 415, content: "בשנה שעברה, 'יוסי וינר' (1223) היה/הייתה מצוות/ת למארח/ת הילה שניאור (8853). בצד של המארחים הוא/היא 20104.")
    h = Host.find(8853)
    h.active_last_year = true
    h.save
    Host.find(8527).comments.create!(user_id: 415, content: "בשנה שעברה, 'מרים דרוך' (509) היה/הייתה מצוות/ת למארח/ת גתית קסלר (8527). בצד של המארחים הוא/היא 14937.")
    h = Host.find(8527)
    h.active_last_year = true
    h.save
    Host.find(7697).comments.create!(user_id: 415, content: "בשנה שעברה, 'חנה שחורי' (454) היה/הייתה מצוות/ת למארח/ת אבי פן (7697). בצד של המארחים הוא/היא 18380.")
    h = Host.find(7697)
    h.active_last_year = true
    h.save
    Host.find(9214).comments.create!(user_id: 415, content: "בשנה שעברה, 'חנן רושו' (3173) היה/הייתה מצוות/ת למארח/ת מוריה מסלטי (9214). בצד של המארחים הוא/היא 21174.")
    h = Host.find(9214)
    h.active_last_year = true
    h.save
    Host.find(9047).comments.create!(user_id: 415, content: "בשנה שעברה, 'איטה גורפיין' (3175) היה/הייתה מצוות/ת למארח/ת רוני כץ (9047). בצד של המארחים הוא/היא 20609.")
    h = Host.find(9047)
    h.active_last_year = true
    h.save
    Host.find(7640).comments.create!(user_id: 415, content: "בשנה שעברה, 'יקותיאל הירש' (1834) היה/הייתה מצוות/ת למארח/ת עידן אלעד (7640). בצד של המארחים הוא/היא 18318.")
    h = Host.find(7640)
    h.active_last_year = true
    h.save
    Host.find(6316).comments.create!(user_id: 415, content: "בשנה שעברה, 'פנינה טננבאום' (1897) היה/הייתה מצוות/ת למארח/ת עדן חדשי (6316). בצד של המארחים הוא/היא 16512.")
    h = Host.find(6316)
    h.active_last_year = true
    h.save
    Host.find(6974).comments.create!(user_id: 415, content: "בשנה שעברה, 'חנה רביב' (97) היה/הייתה מצוות/ת למארח/ת שרון דוד (6974). בצד של המארחים הוא/היא 17541.")
    h = Host.find(6974)
    h.active_last_year = true
    h.save
    Host.find(3367).comments.create!(user_id: 415, content: "בשנה שעברה, 'אידה הוברמן' (1410) היה/הייתה מצוות/ת למארח/ת הילה א.נחום (3367). בצד של המארחים הוא/היא 9251.")
    h = Host.find(3367)
    h.active_last_year = true
    h.save
    Host.find(8521).comments.create!(user_id: 415, content: "בשנה שעברה, 'פרופסור שי בן אברהם' (1235) היה/הייתה מצוות/ת למארח/ת מרכז סטארטאפ באר שבע (8521). בצד של המארחים הוא/היא 19480.")
    h = Host.find(8521)
    h.active_last_year = true
    h.save
    Host.find(7700).comments.create!(user_id: 415, content: "בשנה שעברה, 'אליאס פיסלבויים' (1415) היה/הייתה מצוות/ת למארח/ת נועה אלון (7700). בצד של המארחים הוא/היא 18384.")
    h = Host.find(7700)
    h.active_last_year = true
    h.save
    Host.find(7962).comments.create!(user_id: 415, content: "בשנה שעברה, 'פרופ' אסתר הרצוג' (1533) היה/הייתה מצוות/ת למארח/ת נטע מלכי (7962). בצד של המארחים הוא/היא 18689.")
    h = Host.find(7962)
    h.active_last_year = true
    h.save
    Host.find(9499).comments.create!(user_id: 415, content: "בשנה שעברה, 'ד\"ר דביר צור' (1905) היה/הייתה מצוות/ת למארח/ת גלי אופנבכר (9499). בצד של המארחים הוא/היא 22405.")
    h = Host.find(9499)
    h.active_last_year = true
    h.save
    Host.find(1083).comments.create!(user_id: 415, content: "בשנה שעברה, 'לוי חנה' (2187) היה/הייתה מצוות/ת למארח/ת ליאור חקנזר (1083). בצד של המארחים הוא/היא 1298.")
    h = Host.find(1083)
    h.active_last_year = true
    h.save
    Host.find(7367).comments.create!(user_id: 415, content: "בשנה שעברה, 'בעז גבעון' (2) היה/הייתה מצוות/ת למארח/ת טל קניאס (7367). בצד של המארחים הוא/היא 17991.")
    h = Host.find(7367)
    h.active_last_year = true
    h.save
    Host.find(7434).comments.create!(user_id: 415, content: "בשנה שעברה, 'אמיליה שופמן' (1907) היה/הייתה מצוות/ת למארח/ת הדר חיימוביץ (7434). בצד של המארחים הוא/היא 18073.")
    h = Host.find(7434)
    h.active_last_year = true
    h.save
    Host.find(6905).comments.create!(user_id: 415, content: "בשנה שעברה, 'שוש רותם' (1928) היה/הייתה מצוות/ת למארח/ת קרן דרור (6905). בצד של המארחים הוא/היא 5726.")
    h = Host.find(6905)
    h.active_last_year = true
    h.save
    Host.find(9017).comments.create!(user_id: 415, content: "בשנה שעברה, 'אברהם צייגנבויים' (2233) היה/הייתה מצוות/ת למארח/ת מיכל צרפתי (9017). בצד של המארחים הוא/היא 20510.")
    h = Host.find(9017)
    h.active_last_year = true
    h.save
    Host.find(3432).comments.create!(user_id: 415, content: "בשנה שעברה, 'דן שפירא' (1906) היה/הייתה מצוות/ת למארח/ת יעל ויואב קריב-טייטלבאום (3432). בצד של המארחים הוא/היא 9333.")
    h = Host.find(3432)
    h.active_last_year = true
    h.save
    Host.find(7531).comments.create!(user_id: 415, content: "בשנה שעברה, 'שמשון המר' (1782) היה/הייתה מצוות/ת למארח/ת רועי דרורי (7531). בצד של המארחים הוא/היא 18183.")
    h = Host.find(7531)
    h.active_last_year = true
    h.save
    Host.find(8602).comments.create!(user_id: 415, content: "בשנה שעברה, 'קלדרון יצחק ושנפיק מלכה' (2228) היה/הייתה מצוות/ת למארח/ת גל שטיין (8602). בצד של המארחים הוא/היא 16412.")
    h = Host.find(8602)
    h.active_last_year = true
    h.save
    Host.find(9018).comments.create!(user_id: 415, content: "בשנה שעברה, 'חווה ואלי  ליקוורניק' (692) היה/הייתה מצוות/ת למארח/ת אסתי פרץ קרויטורו (9018). בצד של המארחים הוא/היא 20512.")
    h = Host.find(9018)
    h.active_last_year = true
    h.save
    Host.find(7616).comments.create!(user_id: 415, content: "בשנה שעברה, 'מלצר מרדכי ועדה' (2200) היה/הייתה מצוות/ת למארח/ת ליביה רוטקובסקי (7616). בצד של המארחים הוא/היא 18287.")
    h = Host.find(7616)
    h.active_last_year = true
    h.save
    Host.find(14).comments.create!(user_id: 415, content: "בשנה שעברה, 'אריה נוסבכר' (1527) היה/הייתה מצוות/ת למארח/ת מור צור (14). בצד של המארחים הוא/היא 16.")
    h = Host.find(14)
    h.active_last_year = true
    h.save
    Host.find(9545).comments.create!(user_id: 415, content: "בשנה שעברה, 'גנית אפרת עו\"ד' (2158) היה/הייתה מצוות/ת למארח/ת אמפרסט מערכות (9545). בצד של המארחים הוא/היא 22564.")
    h = Host.find(9545)
    h.active_last_year = true
    h.save
    Host.find(8869).comments.create!(user_id: 415, content: "בשנה שעברה, 'לי שיר' (1908) היה/הייתה מצוות/ת למארח/ת תומר צימרמן (8869). בצד של המארחים הוא/היא 1721.")
    h = Host.find(8869)
    h.active_last_year = true
    h.save
    Host.find(6552).comments.create!(user_id: 415, content: "בשנה שעברה, 'דב ויינמן' (1507) היה/הייתה מצוות/ת למארח/ת בר אסלן (6552). בצד של המארחים הוא/היא 17101.")
    h = Host.find(6552)
    h.active_last_year = true
    h.save
    Host.find(1128).comments.create!(user_id: 415, content: "בשנה שעברה, 'אריה בן דוד' (1552) היה/הייתה מצוות/ת למארח/ת הילה שלם (1128). בצד של המארחים הוא/היא 1380.")
    h = Host.find(1128)
    h.active_last_year = true
    h.save
    Host.find(7903).comments.create!(user_id: 415, content: "בשנה שעברה, 'אסתר גוטמן' (1540) היה/הייתה מצוות/ת למארח/ת יניר אשכנזי (7903). בצד של המארחים הוא/היא 18617.")
    h = Host.find(7903)
    h.active_last_year = true
    h.save
    Host.find(6678).comments.create!(user_id: 415, content: "בשנה שעברה, 'אורי הופרט' (1509) היה/הייתה מצוות/ת למארח/ת אור חוסקי (6678). בצד של המארחים הוא/היא 17222.")
    h = Host.find(6678)
    h.active_last_year = true
    h.save
    Host.find(8488).comments.create!(user_id: 415, content: "בשנה שעברה, 'דוד בן שלום' (1904) היה/הייתה מצוות/ת למארח/ת זיכרון בסלון תל חי (8488). בצד של המארחים הוא/היא 19416.")
    h = Host.find(8488)
    h.active_last_year = true
    h.save
    Host.find(7669).comments.create!(user_id: 415, content: "בשנה שעברה, 'יונה דולב' (2165) היה/הייתה מצוות/ת למארח/ת אגף משרד מרכז (7669). בצד של המארחים הוא/היא 18349.")
    h = Host.find(7669)
    h.active_last_year = true
    h.save
    Host.find(7605).comments.create!(user_id: 415, content: "בשנה שעברה, 'עופר שיף' (1916) היה/הייתה מצוות/ת למארח/ת נווה שרת (7605). בצד של המארחים הוא/היא 18275.")
    h = Host.find(7605)
    h.active_last_year = true
    h.save
    Host.find(9313).comments.create!(user_id: 415, content: "בשנה שעברה, 'ישראל גת' (1506) היה/הייתה מצוות/ת למארח/ת אלון מאור (9313). בצד של המארחים הוא/היא 21510.")
    h = Host.find(9313)
    h.active_last_year = true
    h.save
    Host.find(7607).comments.create!(user_id: 415, content: "בשנה שעברה, 'ענת שמעוני' (1918) היה/הייתה מצוות/ת למארח/ת מעוז אביב (7607). בצד של המארחים הוא/היא 18277.")
    h = Host.find(7607)
    h.active_last_year = true
    h.save
    Host.find(7122).comments.create!(user_id: 415, content: "בשנה שעברה, 'עדה אחימן' (2103) היה/הייתה מצוות/ת למארח/ת ענבר מלכא (7122). בצד של המארחים הוא/היא 17705.")
    h = Host.find(7122)
    h.active_last_year = true
    h.save
    Host.find(8680).comments.create!(user_id: 415, content: "בשנה שעברה, 'ינינה גולדהר' (1566) היה/הייתה מצוות/ת למארח/ת ענת צבי (8680). בצד של המארחים הוא/היא 13079.")
    h = Host.find(8680)
    h.active_last_year = true
    h.save
    Host.find(6625).comments.create!(user_id: 415, content: "בשנה שעברה, 'דוד שריד' (1500) היה/הייתה מצוות/ת למארח/ת נטע-לי דיויס (6625). בצד של המארחים הוא/היא 17170.")
    h = Host.find(6625)
    h.active_last_year = true
    h.save
    Host.find(4191).comments.create!(user_id: 415, content: "בשנה שעברה, 'אפרים ויזל' (1586) היה/הייתה מצוות/ת למארח/ת אורי בוחניק (4191). בצד של המארחים הוא/היא 10383.")
    h = Host.find(4191)
    h.active_last_year = true
    h.save
    Host.find(3601).comments.create!(user_id: 415, content: "בשנה שעברה, 'רחל הנדשר' (1526) היה/הייתה מצוות/ת למארח/ת דניאל חן (3601). בצד של המארחים הוא/היא 9612.")
    h = Host.find(3601)
    h.active_last_year = true
    h.save
    Host.find(8826).comments.create!(user_id: 415, content: "בשנה שעברה, 'חוה זוהר' (1598) היה/הייתה מצוות/ת למארח/ת זיו ורהפטיג (8826). בצד של המארחים הוא/היא 20024.")
    h = Host.find(8826)
    h.active_last_year = true
    h.save
    Host.find(8901).comments.create!(user_id: 415, content: "בשנה שעברה, 'דוניה רוזנבלט' (3233) היה/הייתה מצוות/ת למארח/ת שלי (8901). בצד של המארחים הוא/היא 20193.")
    h = Host.find(8901)
    h.active_last_year = true
    h.save
    Host.find(8819).comments.create!(user_id: 415, content: "בשנה שעברה, 'פסיה בודנר' (3185) היה/הייתה מצוות/ת למארח/ת נועה חציר (8819). בצד של המארחים הוא/היא 20000.")
    h = Host.find(8819)
    h.active_last_year = true
    h.save
    Host.find(9621).comments.create!(user_id: 415, content: "בשנה שעברה, 'חיים כספי' (3229) היה/הייתה מצוות/ת למארח/ת סיון ווייס (9621). בצד של המארחים הוא/היא 22946.")
    h = Host.find(9621)
    h.active_last_year = true
    h.save
    Host.find(3370).comments.create!(user_id: 415, content: "בשנה שעברה, 'ציפי קראוס' (1565) היה/הייתה מצוות/ת למארח/ת עידית ודרור אבני (3370). בצד של המארחים הוא/היא 9255.")
    h = Host.find(3370)
    h.active_last_year = true
    h.save
    Host.find(8511).comments.create!(user_id: 415, content: "בשנה שעברה, 'יעל אתגר' (3174) היה/הייתה מצוות/ת למארח/ת עמוס אהרונסון (8511). בצד של המארחים הוא/היא 19455.")
    h = Host.find(8511)
    h.active_last_year = true
    h.save
    Host.find(8584).comments.create!(user_id: 415, content: "בשנה שעברה, 'אליעזר גולדנטל' (3242) היה/הייתה מצוות/ת למארח/ת שבי גוברין (8584). בצד של המארחים הוא/היא 19562.")
    h = Host.find(8584)
    h.active_last_year = true
    h.save
    Host.find(6818).comments.create!(user_id: 415, content: "בשנה שעברה, 'זהבה בדיחי-איכר' (3192) היה/הייתה מצוות/ת למארח/ת נועה ענבל (6818). בצד של המארחים הוא/היא 17372.")
    h = Host.find(6818)
    h.active_last_year = true
    h.save
    Host.find(6729).comments.create!(user_id: 415, content: "בשנה שעברה, 'בורישקה יוריק' (2184) היה/הייתה מצוות/ת למארח/ת אלעד זגורי (6729). בצד של המארחים הוא/היא 17272.")
    h = Host.find(6729)
    h.active_last_year = true
    h.save
    Host.find(7210).comments.create!(user_id: 415, content: "בשנה שעברה, 'רות אמיר (ד\"ר)' (1950) היה/הייתה מצוות/ת למארח/ת הילה הובר (7210). בצד של המארחים הוא/היא 17807.")
    h = Host.find(7210)
    h.active_last_year = true
    h.save
    Host.find(4982).comments.create!(user_id: 415, content: "בשנה שעברה, 'חדווה רבר' (338) היה/הייתה מצוות/ת למארח/ת בר נסים (4982). בצד של המארחים הוא/היא 11491.")
    h = Host.find(4982)
    h.active_last_year = true
    h.save
    Host.find(495).comments.create!(user_id: 415, content: "בשנה שעברה, 'מטילדה מאיר' (2190) היה/הייתה מצוות/ת למארח/ת ליטל שרון (495). בצד של המארחים הוא/היא 543.")
    h = Host.find(495)
    h.active_last_year = true
    h.save
    Host.find(7948).comments.create!(user_id: 415, content: "בשנה שעברה, 'סמדר אלעד' (1576) היה/הייתה מצוות/ת למארח/ת רות (7948). בצד של המארחים הוא/היא 18672.")
    h = Host.find(7948)
    h.active_last_year = true
    h.save
    Host.find(2864).comments.create!(user_id: 415, content: "בשנה שעברה, 'ברל שור' (3231) היה/הייתה מצוות/ת למארח/ת פיש יהודית (2864). בצד של המארחים הוא/היא 8723.")
    h = Host.find(2864)
    h.active_last_year = true
    h.save
    Host.find(8092).comments.create!(user_id: 415, content: "בשנה שעברה, 'זלוף רחלי' (2183) היה/הייתה מצוות/ת למארח/ת אסיף (8092). בצד של המארחים הוא/היא 18836.")
    h = Host.find(8092)
    h.active_last_year = true
    h.save
    Host.find(7717).comments.create!(user_id: 415, content: "בשנה שעברה, 'זהבה סבר' (2323) היה/הייתה מצוות/ת למארח/ת רננה מילר (7717). בצד של המארחים הוא/היא 18407.")
    h = Host.find(7717)
    h.active_last_year = true
    h.save
    Host.find(7053).comments.create!(user_id: 415, content: "בשנה שעברה, 'נורית בירן' (3236) היה/הייתה מצוות/ת למארח/ת שקד הורוביץ (7053). בצד של המארחים הוא/היא 17631.")
    h = Host.find(7053)
    h.active_last_year = true
    h.save
    Host.find(6901).comments.create!(user_id: 415, content: "בשנה שעברה, 'אווה צורף' (1595) היה/הייתה מצוות/ת למארח/ת טמיר שלמן (6901). בצד של המארחים הוא/היא 17457.")
    h = Host.find(6901)
    h.active_last_year = true
    h.save
    Host.find(5301).comments.create!(user_id: 415, content: "בשנה שעברה, 'דוברוב לאוניד' (3234) היה/הייתה מצוות/ת למארח/ת ברוך מיכאלי (5301). בצד של המארחים הוא/היא 12155.")
    h = Host.find(5301)
    h.active_last_year = true
    h.save
    Host.find(7754).comments.create!(user_id: 415, content: "בשנה שעברה, 'רון (רוני) כצנלסון' (1932) היה/הייתה מצוות/ת למארח/ת רוויה גרומבק (7754). בצד של המארחים הוא/היא 18448.")
    h = Host.find(7754)
    h.active_last_year = true
    h.save
    Host.find(312).comments.create!(user_id: 415, content: "בשנה שעברה, 'אוולין גודמן-טאו (פרופ')' (1492) היה/הייתה מצוות/ת למארח/ת אריאלה בנרמן (312). בצד של המארחים הוא/היא 341.")
    h = Host.find(312)
    h.active_last_year = true
    h.save
    Host.find(806).comments.create!(user_id: 415, content: "בשנה שעברה, 'אנה זוהר' (3230) היה/הייתה מצוות/ת למארח/ת אביטל שחר (806). בצד של המארחים הוא/היא 861.")
    h = Host.find(806)
    h.active_last_year = true
    h.save
    Host.find(1663).comments.create!(user_id: 415, content: "בשנה שעברה, 'ארי לבנה' (2172) היה/הייתה מצוות/ת למארח/ת טל בוטל שפיס (1663). בצד של המארחים הוא/היא 2508.")
    h = Host.find(1663)
    h.active_last_year = true
    h.save
    Host.find(6).comments.create!(user_id: 415, content: "בשנה שעברה, 'ריטה ברקוביץ' (1651) היה/הייתה מצוות/ת למארח/ת דנה קדוש (6). בצד של המארחים הוא/היא 7.")
    h = Host.find(6)
    h.active_last_year = true
    h.save
    Host.find(8644).comments.create!(user_id: 415, content: "בשנה שעברה, 'עדנה ביבר' (1620) היה/הייתה מצוות/ת למארח/ת מאור צאייג (8644). בצד של המארחים הוא/היא 19654.")
    h = Host.find(8644)
    h.active_last_year = true
    h.save
    Host.find(8555).comments.create!(user_id: 415, content: "בשנה שעברה, 'יוסף אבס' (793) היה/הייתה מצוות/ת למארח/ת הגר פרדו (8555). בצד של המארחים הוא/היא 19525.")
    h = Host.find(8555)
    h.active_last_year = true
    h.save
    Host.find(8350).comments.create!(user_id: 415, content: "בשנה שעברה, 'אילנה הלר' (1640) היה/הייתה מצוות/ת למארח/ת עמותת אנוש (8350). בצד של המארחים הוא/היא 19172.")
    h = Host.find(8350)
    h.active_last_year = true
    h.save
    Host.find(3086).comments.create!(user_id: 415, content: "בשנה שעברה, 'שמשון שוורץ' (3187) היה/הייתה מצוות/ת למארח/ת מירי גלברט (3086). בצד של המארחים הוא/היא 6196.")
    h = Host.find(3086)
    h.active_last_year = true
    h.save
    Host.find(8387).comments.create!(user_id: 415, content: "בשנה שעברה, 'חיה נאמן' (3193) היה/הייתה מצוות/ת למארח/ת Nurit Torenheim (8387). בצד של המארחים הוא/היא 19229.")
    h = Host.find(8387)
    h.active_last_year = true
    h.save
    Host.find(6806).comments.create!(user_id: 415, content: "בשנה שעברה, 'חיים עזרן' (1945) היה/הייתה מצוות/ת למארח/ת הודיה הרוש (6806). בצד של המארחים הוא/היא 17356.")
    h = Host.find(6806)
    h.active_last_year = true
    h.save
    Host.find(8250).comments.create!(user_id: 415, content: "בשנה שעברה, 'צופיה סיקסיק' (3235) היה/הייתה מצוות/ת למארח/ת קפה גותה (8250). בצד של המארחים הוא/היא 19035.")
    h = Host.find(8250)
    h.active_last_year = true
    h.save
    Host.find(3129).comments.create!(user_id: 415, content: "בשנה שעברה, 'דניאל מאסטרו' (1617) היה/הייתה מצוות/ת למארח/ת מרכז קהילתי מגיד (3129). בצד של המארחים הוא/היא 9012.")
    h = Host.find(3129)
    h.active_last_year = true
    h.save
    Host.find(9054).comments.create!(user_id: 415, content: "בשנה שעברה, 'לאוניד ברמוברג' (3240) היה/הייתה מצוות/ת למארח/ת שירי סטרוגנו (9054). בצד של המארחים הוא/היא 20629.")
    h = Host.find(9054)
    h.active_last_year = true
    h.save
    Host.find(9068).comments.create!(user_id: 415, content: "בשנה שעברה, 'אסתר ערבה' (3191) היה/הייתה מצוות/ת למארח/ת מיה פלבסקי - מכינה קדם צבאית מיצר (9068). בצד של המארחים הוא/היא 20689.")
    h = Host.find(9068)
    h.active_last_year = true
    h.save
    Host.find(8321).comments.create!(user_id: 415, content: "בשנה שעברה, 'יהודית בר-כוכבא' (3238) היה/הייתה מצוות/ת למארח/ת יהודית בר-כוכבא (8321). בצד של המארחים הוא/היא 19144.")
    h = Host.find(8321)
    h.active_last_year = true
    h.save
    Host.find(918).comments.create!(user_id: 415, content: "בשנה שעברה, 'מינה בלומין' (1659) היה/הייתה מצוות/ת למארח/ת רעות אפל (918). בצד של המארחים הוא/היא 991.")
    h = Host.find(918)
    h.active_last_year = true
    h.save
    Host.find(1314).comments.create!(user_id: 415, content: "בשנה שעברה, 'יצחק הירש' (1667) היה/הייתה מצוות/ת למארח/ת Renee Shmuel (1314). בצד של המארחים הוא/היא 1760.")
    h = Host.find(1314)
    h.active_last_year = true
    h.save
    Host.find(7131).comments.create!(user_id: 415, content: "בשנה שעברה, 'רייך דב וחיה' (2218) היה/הייתה מצוות/ת למארח/ת טל גבע (7131). בצד של המארחים הוא/היא 17717.")
    h = Host.find(7131)
    h.active_last_year = true
    h.save
    Host.find(9775).comments.create!(user_id: 415, content: "בשנה שעברה, 'סמי בז'רנו' (1610) היה/הייתה מצוות/ת למארח/ת קרן גרשון (9775). בצד של המארחים הוא/היא 24116.")
    h = Host.find(9775)
    h.active_last_year = true
    h.save
    Host.find(7876).comments.create!(user_id: 415, content: "בשנה שעברה, 'צבי לוין' (1677) היה/הייתה מצוות/ת למארח/ת אורטל עסיס (7876). בצד של המארחים הוא/היא 18583.")
    h = Host.find(7876)
    h.active_last_year = true
    h.save
    Host.find(7423).comments.create!(user_id: 415, content: "בשנה שעברה, 'זהבה היטנר' (3097) היה/הייתה מצוות/ת למארח/ת יחידת הנוער נהריה (7423). בצד של המארחים הוא/היא 18060.")
    h = Host.find(7423)
    h.active_last_year = true
    h.save
    Host.find(8322).comments.create!(user_id: 415, content: "בשנה שעברה, 'לינקה אנדה' (3245) היה/הייתה מצוות/ת למארח/ת לינקא אנדה (8322). בצד של המארחים הוא/היא 19145.")
    h = Host.find(8322)
    h.active_last_year = true
    h.save
    Host.find(4930).comments.create!(user_id: 415, content: "בשנה שעברה, 'אלידע ווטן' (3194) היה/הייתה מצוות/ת למארח/ת רביד שמואלביץ (4930). בצד של המארחים הוא/היא 11422.")
    h = Host.find(4930)
    h.active_last_year = true
    h.save
    Host.find(9036).comments.create!(user_id: 415, content: "בשנה שעברה, 'שרה פוטשניק' (3167) היה/הייתה מצוות/ת למארח/ת מוריס צורף (9036). בצד של המארחים הוא/היא 13152.")
    h = Host.find(9036)
    h.active_last_year = true
    h.save
    Host.find(4391).comments.create!(user_id: 415, content: "בשנה שעברה, 'יעקוב שפירא' (2106) היה/הייתה מצוות/ת למארח/ת דנה קציר (4391). בצד של המארחים הוא/היא 10627.")
    h = Host.find(4391)
    h.active_last_year = true
    h.save
    Host.find(7831).comments.create!(user_id: 415, content: "בשנה שעברה, 'גרגורי וולושין' (1668) היה/הייתה מצוות/ת למארח/ת אליסה אוגורסקי (7831). בצד של המארחים הוא/היא 18530.")
    h = Host.find(7831)
    h.active_last_year = true
    h.save
    Host.find(952).comments.create!(user_id: 415, content: "בשנה שעברה, 'דיאנה לביא' (1661) היה/הייתה מצוות/ת למארח/ת יהודית חזקי (952). בצד של המארחים הוא/היא 1036.")
    h = Host.find(952)
    h.active_last_year = true
    h.save
    Host.find(8994).comments.create!(user_id: 415, content: "בשנה שעברה, 'אדמונד דיקמן' (3196) היה/הייתה מצוות/ת למארח/ת ירדן רבקה שדדי (8994). בצד של המארחים הוא/היא 20433.")
    h = Host.find(8994)
    h.active_last_year = true
    h.save
    Host.find(7932).comments.create!(user_id: 415, content: "בשנה שעברה, 'גד פרטוק' (3250) היה/הייתה מצוות/ת למארח/ת ציפי מכלוף (7932). בצד של המארחים הוא/היא 18649.")
    h = Host.find(7932)
    h.active_last_year = true
    h.save
    Host.find(9119).comments.create!(user_id: 415, content: "בשנה שעברה, 'נאמן אליהו ושולה' (2202) היה/הייתה מצוות/ת למארח/ת מרב מאסיל (9119). בצד של המארחים הוא/היא 20781.")
    h = Host.find(9119)
    h.active_last_year = true
    h.save
    Host.find(9266).comments.create!(user_id: 415, content: "בשנה שעברה, 'ריקה ברקוביץ'' (1933) היה/הייתה מצוות/ת למארח/ת ליאורה ניאזוב (9266). בצד של המארחים הוא/היא 21345.")
    h = Host.find(9266)
    h.active_last_year = true
    h.save
    Host.find(7200).comments.create!(user_id: 415, content: "בשנה שעברה, 'צבי ורחל שחר' (1736) היה/הייתה מצוות/ת למארח/ת נועה גבאי (7200). בצד של המארחים הוא/היא 17792.")
    h = Host.find(7200)
    h.active_last_year = true
    h.save
    Host.find(7001).comments.create!(user_id: 415, content: "בשנה שעברה, 'ברוריה בודק' (3241) היה/הייתה מצוות/ת למארח/ת Ulpan Bayit (7001). בצד של המארחים הוא/היא 17569.")
    h = Host.find(7001)
    h.active_last_year = true
    h.save
    Host.find(8116).comments.create!(user_id: 415, content: "בשנה שעברה, 'אביבה ברוור' (1744) היה/הייתה מצוות/ת למארח/ת שירה סגל (8116). בצד של המארחים הוא/היא 18859.")
    h = Host.find(8116)
    h.active_last_year = true
    h.save
    Host.find(5275).comments.create!(user_id: 415, content: "בשנה שעברה, 'מימון יוסף' (2196) היה/הייתה מצוות/ת למארח/ת מיכל רוטשילד (5275). בצד של המארחים הוא/היא 12105.")
    h = Host.find(5275)
    h.active_last_year = true
    h.save
    Host.find(8171).comments.create!(user_id: 415, content: "בשנה שעברה, 'בינה קמילר' (1773) היה/הייתה מצוות/ת למארח/ת מילכה ברטיש (8171). בצד של המארחים הוא/היא 18944.")
    h = Host.find(8171)
    h.active_last_year = true
    h.save
    Host.find(7861).comments.create!(user_id: 415, content: "בשנה שעברה, 'אירית האס' (1739) היה/הייתה מצוות/ת למארח/ת אסנת יצחק (7861). בצד של המארחים הוא/היא 4377.")
    h = Host.find(7861)
    h.active_last_year = true
    h.save
    Host.find(6792).comments.create!(user_id: 415, content: "בשנה שעברה, 'לאה אייזנגר' (1738) היה/הייתה מצוות/ת למארח/ת לנה בנאל (6792). בצד של המארחים הוא/היא 17340.")
    h = Host.find(6792)
    h.active_last_year = true
    h.save
    Host.find(8291).comments.create!(user_id: 415, content: "בשנה שעברה, 'אליהו פניירו' (1764) היה/הייתה מצוות/ת למארח/ת נאווה פיינהאוזן (8291). בצד של המארחים הוא/היא 19089.")
    h = Host.find(8291)
    h.active_last_year = true
    h.save
    Host.find(7336).comments.create!(user_id: 415, content: "בשנה שעברה, 'מאשה' (1763) היה/הייתה מצוות/ת למארח/ת רלי אושר (7336). בצד של המארחים הוא/היא 17956.")
    h = Host.find(7336)
    h.active_last_year = true
    h.save
    Host.find(9365).comments.create!(user_id: 415, content: "בשנה שעברה, 'שרה רביב' (2159) היה/הייתה מצוות/ת למארח/ת שני קריספין (9365). בצד של המארחים הוא/היא 16144.")
    h = Host.find(9365)
    h.active_last_year = true
    h.save
    Host.find(7045).comments.create!(user_id: 415, content: "בשנה שעברה, 'אילנה קליין' (1754) היה/הייתה מצוות/ת למארח/ת מוריה ברוכין (7045). בצד של המארחים הוא/היא 17621.")
    h = Host.find(7045)
    h.active_last_year = true
    h.save
    Host.find(7968).comments.create!(user_id: 415, content: "בשנה שעברה, 'יוסף קורן' (1756) היה/הייתה מצוות/ת למארח/ת נוי שירן (7968). בצד של המארחים הוא/היא 18697.")
    h = Host.find(7968)
    h.active_last_year = true
    h.save
    Host.find(7544).comments.create!(user_id: 415, content: "בשנה שעברה, 'לאה רוזנטול' (1741) היה/הייתה מצוות/ת למארח/ת ספיר יוסף (7544). בצד של המארחים הוא/היא 18197.")
    h = Host.find(7544)
    h.active_last_year = true
    h.save
    Host.find(3132).comments.create!(user_id: 415, content: "בשנה שעברה, 'נתן וינברג' (3243) היה/הייתה מצוות/ת למארח/ת עמותת שק\"ל (3132). בצד של המארחים הוא/היא 9015.")
    h = Host.find(3132)
    h.active_last_year = true
    h.save
    Host.find(8265).comments.create!(user_id: 415, content: "בשנה שעברה, 'עליזה רוטשילד' (1760) היה/הייתה מצוות/ת למארח/ת אורית קאופמן (8265). בצד של המארחים הוא/היא 19055.")
    h = Host.find(8265)
    h.active_last_year = true
    h.save
    Host.find(7858).comments.create!(user_id: 415, content: "בשנה שעברה, 'רות ריינהורן' (1759) היה/הייתה מצוות/ת למארח/ת ציפי מרגלית (7858). בצד של המארחים הוא/היא 18564.")
    h = Host.find(7858)
    h.active_last_year = true
    h.save
    Host.find(7117).comments.create!(user_id: 415, content: "בשנה שעברה, 'טאיב דולי' (1766) היה/הייתה מצוות/ת למארח/ת ציפי בש (7117). בצד של המארחים הוא/היא 17700.")
    h = Host.find(7117)
    h.active_last_year = true
    h.save
    Host.find(4526).comments.create!(user_id: 415, content: "בשנה שעברה, 'ארווין כץ' (1961) היה/הייתה מצוות/ת למארח/ת רוני זק (4526). בצד של המארחים הוא/היא 10812.")
    h = Host.find(4526)
    h.active_last_year = true
    h.save
    Host.find(7339).comments.create!(user_id: 415, content: "בשנה שעברה, 'ציאושו אסתר' (2209) היה/הייתה מצוות/ת למארח/ת ליהי מימון (7339). בצד של המארחים הוא/היא 17961.")
    h = Host.find(7339)
    h.active_last_year = true
    h.save
    Host.find(710).comments.create!(user_id: 415, content: "בשנה שעברה, 'ליאורה פוזננסקי' (1958) היה/הייתה מצוות/ת למארח/ת רינת צפניה (710). בצד של המארחים הוא/היא 763.")
    h = Host.find(710)
    h.active_last_year = true
    h.save
    Host.find(7602).comments.create!(user_id: 415, content: "בשנה שעברה, 'יעל קציר' (1967) היה/הייתה מצוות/ת למארח/ת ספריית בי\"ס צוקי אביב (7602). בצד של המארחים הוא/היא 18272.")
    h = Host.find(7602)
    h.active_last_year = true
    h.save
    Host.find(8348).comments.create!(user_id: 415, content: "בשנה שעברה, 'יצחק וולסטר' (1694) היה/הייתה מצוות/ת למארח/ת עדי פרנקו (8348). בצד של המארחים הוא/היא 12759.")
    h = Host.find(8348)
    h.active_last_year = true
    h.save
    Host.find(8360).comments.create!(user_id: 415, content: "בשנה שעברה, 'פרסי יעקב וחנה' (2207) היה/הייתה מצוות/ת למארח/ת אור זיידנרייס (8360). בצד של המארחים הוא/היא 19188.")
    h = Host.find(8360)
    h.active_last_year = true
    h.save
    Host.find(8756).comments.create!(user_id: 415, content: "בשנה שעברה, 'לירי זו-הארי' (184) היה/הייתה מצוות/ת למארח/ת מרב ספיר (8756). בצד של המארחים הוא/היא 19867.")
    h = Host.find(8756)
    h.active_last_year = true
    h.save
    Host.find(8474).comments.create!(user_id: 415, content: "בשנה שעברה, 'ישראל קולקר' (1137) היה/הייתה מצוות/ת למארח/ת אופיר תדהר (8474). בצד של המארחים הוא/היא 19401.")
    h = Host.find(8474)
    h.active_last_year = true
    h.save
    Host.find(4060).comments.create!(user_id: 415, content: "בשנה שעברה, 'אשר קרביץ' (925) היה/הייתה מצוות/ת למארח/ת אמילי שופן (4060). בצד של המארחים הוא/היא 10217.")
    h = Host.find(4060)
    h.active_last_year = true
    h.save
    Host.find(6225).comments.create!(user_id: 415, content: "בשנה שעברה, 'בני חן' (1012) היה/הייתה מצוות/ת למארח/ת אהרון אקילוב (6225). בצד של המארחים הוא/היא 15472.")
    h = Host.find(6225)
    h.active_last_year = true
    h.save
    Host.find(4451).comments.create!(user_id: 415, content: "בשנה שעברה, 'יעקב ג'רבי' (1650) היה/הייתה מצוות/ת למארח/ת סיון הלימי (4451). בצד של המארחים הוא/היא 10721.")
    h = Host.find(4451)
    h.active_last_year = true
    h.save
    Host.find(7049).comments.create!(user_id: 415, content: "בשנה שעברה, 'ורה טומניה' (1073) היה/הייתה מצוות/ת למארח/ת דיאנה רומנוביץ' (7049). בצד של המארחים הוא/היא 17627.")
    h = Host.find(7049)
    h.active_last_year = true
    h.save
    Host.find(6749).comments.create!(user_id: 415, content: "בשנה שעברה, 'חוה שובל' (1213) היה/הייתה מצוות/ת למארח/ת דניאל רוזן (6749). בצד של המארחים הוא/היא 17293.")
    h = Host.find(6749)
    h.active_last_year = true
    h.save
    Host.find(5408).comments.create!(user_id: 415, content: "בשנה שעברה, 'יניב אלמוג (פרופ')' (2112) היה/הייתה מצוות/ת למארח/ת אשר אלון (5408). בצד של המארחים הוא/היא 8179.")
    h = Host.find(5408)
    h.active_last_year = true
    h.save
    Host.find(6007).comments.create!(user_id: 415, content: "בשנה שעברה, 'זאב הרץ' (533) היה/הייתה מצוות/ת למארח/ת Smadar Taff (6007). בצד של המארחים הוא/היא 13930.")
    h = Host.find(6007)
    h.active_last_year = true
    h.save
    Host.find(7614).comments.create!(user_id: 415, content: "בשנה שעברה, 'ברכה לנדאו' (1166) היה/הייתה מצוות/ת למארח/ת נועה חיון (7614). בצד של המארחים הוא/היא 18284.")
    h = Host.find(7614)
    h.active_last_year = true
    h.save
    Host.find(8599).comments.create!(user_id: 415, content: "בשנה שעברה, 'יצחק הרצוג' (528) היה/הייתה מצוות/ת למארח/ת סידני אבשלום (8599). בצד של המארחים הוא/היא 19589.")
    h = Host.find(8599)
    h.active_last_year = true
    h.save
    Host.find(8893).comments.create!(user_id: 415, content: "בשנה שעברה, 'נירה רוקח' (3189) היה/הייתה מצוות/ת למארח/ת יובל שליש (8893). בצד של המארחים הוא/היא 20178.")
    h = Host.find(8893)
    h.active_last_year = true
    h.save
    Host.find(8749).comments.create!(user_id: 415, content: "בשנה שעברה, 'חנה רדו' (940) היה/הייתה מצוות/ת למארח/ת מודי נבון (8749). בצד של המארחים הוא/היא 19857.")
    h = Host.find(8749)
    h.active_last_year = true
    h.save
    Host.find(7521).comments.create!(user_id: 415, content: "בשנה שעברה, 'אליעזר שועלי' (543) היה/הייתה מצוות/ת למארח/ת רתם ורדי (7521). בצד של המארחים הוא/היא 18172.")
    h = Host.find(7521)
    h.active_last_year = true
    h.save
    Host.find(9581).comments.create!(user_id: 415, content: "בשנה שעברה, 'סוזי קורדוב' (2241) היה/הייתה מצוות/ת למארח/ת שירי צופי ים (9581). בצד של המארחים הוא/היא 22770.")
    h = Host.find(9581)
    h.active_last_year = true
    h.save
    Host.find(4644).comments.create!(user_id: 415, content: "בשנה שעברה, 'שמואלי רחל' (2223) היה/הייתה מצוות/ת למארח/ת מירב שמעון (4644). בצד של המארחים הוא/היא 10981.")
    h = Host.find(4644)
    h.active_last_year = true
    h.save
    Host.find(6923).comments.create!(user_id: 415, content: "בשנה שעברה, 'אלימלך יעקב' (1403) היה/הייתה מצוות/ת למארח/ת רונית דיסטלמן מוהבן (6923). בצד של המארחים הוא/היא 17479.")
    h = Host.find(6923)
    h.active_last_year = true
    h.save
    Host.find(4770).comments.create!(user_id: 415, content: "בשנה שעברה, 'שרה ליפשיץ' (736) היה/הייתה מצוות/ת למארח/ת ענבר שטיינברג (4770). בצד של המארחים הוא/היא 11150.")
    h = Host.find(4770)
    h.active_last_year = true
    h.save
    Host.find(9283).comments.create!(user_id: 415, content: "בשנה שעברה, 'יצחק ליפשיץ (רב, ד\"ר)' (2109) היה/הייתה מצוות/ת למארח/ת קרן דואר (9283). בצד של המארחים הוא/היא 14746.")
    h = Host.find(9283)
    h.active_last_year = true
    h.save
    Host.find(7014).comments.create!(user_id: 415, content: "בשנה שעברה, 'אפרים אייזנמן' (1517) היה/הייתה מצוות/ת למארח/ת דירת אימון (7014). בצד של המארחים הוא/היא 17583.")
    h = Host.find(7014)
    h.active_last_year = true
    h.save
    Host.find(4399).comments.create!(user_id: 415, content: "בשנה שעברה, 'ג'יימס לובנשטיין' (3232) היה/הייתה מצוות/ת למארח/ת טל שרגאי (4399). בצד של המארחים הוא/היא 10638.")
    h = Host.find(4399)
    h.active_last_year = true
    h.save
    Host.find(6491).comments.create!(user_id: 415, content: "בשנה שעברה, 'יונה אלטשולר' (1510) היה/הייתה מצוות/ת למארח/ת איציק גרינוולד מבטח (6491). בצד של המארחים הוא/היא 17042.")
    h = Host.find(6491)
    h.active_last_year = true
    h.save
    Host.find(7021).comments.create!(user_id: 415, content: "בשנה שעברה, 'יחזקאל הרשטיק' (2269) היה/הייתה מצוות/ת למארח/ת אמילי שופן ומשה ניסים (7021). בצד של המארחים הוא/היא 17590.")
    h = Host.find(7021)
    h.active_last_year = true
    h.save
    Host.find(7350).comments.create!(user_id: 415, content: "בשנה שעברה, 'שחורי יונה' (2219) היה/הייתה מצוות/ת למארח/ת אורית מאור (7350). בצד של המארחים הוא/היא 17972.")
    h = Host.find(7350)
    h.active_last_year = true
    h.save
    Host.find(8795).comments.create!(user_id: 415, content: "בשנה שעברה, 'מרים סיוון (ד\"ר)' (2325) היה/הייתה מצוות/ת למארח/ת עדן עיני (8795). בצד של המארחים הוא/היא 19946.")
    h = Host.find(8795)
    h.active_last_year = true
    h.save
    Host.find(8087).comments.create!(user_id: 415, content: "בשנה שעברה, 'הרב יוסי פורמן' (1580) היה/הייתה מצוות/ת למארח/ת מיכל פרנקל (8087). בצד של המארחים הוא/היא 18831.")
    h = Host.find(8087)
    h.active_last_year = true
    h.save
    Host.find(8709).comments.create!(user_id: 415, content: "בשנה שעברה, 'שרית איתן' (19) היה/הייתה מצוות/ת למארח/ת סיון אמיתי בית חלומי אקים רעננה (8709). בצד של המארחים הוא/היא 19778.")
    h = Host.find(8709)
    h.active_last_year = true
    h.save
    Host.find(8721).comments.create!(user_id: 415, content: "בשנה שעברה, 'ברנרס\tלידיה' (1474) היה/הייתה מצוות/ת למארח/ת נטלי קאופמן (8721). בצד של המארחים הוא/היא 19809.")
    h = Host.find(8721)
    h.active_last_year = true
    h.save
    Host.find(3498).comments.create!(user_id: 415, content: "בשנה שעברה, 'מוריס רומני' (2105) היה/הייתה מצוות/ת למארח/ת יחידת השליחים - שרה אטיאס (3498). בצד של המארחים הוא/היא 9413.")
    h = Host.find(3498)
    h.active_last_year = true
    h.save
    Host.find(9223).comments.create!(user_id: 415, content: "בשנה שעברה, 'שמעון בויירסקי' (3168) היה/הייתה מצוות/ת למארח/ת מיכל דיסטניק (9223). בצד של המארחים הוא/היא 21202.")
    h = Host.find(9223)
    h.active_last_year = true
    h.save
    Host.find(9533).comments.create!(user_id: 415, content: "בשנה שעברה, 'פנינה פריצקי' (1253) היה/הייתה מצוות/ת למארח/ת יואל עזריה (9533). בצד של המארחים הוא/היא 22532.")
    h = Host.find(9533)
    h.active_last_year = true
    h.save
    Host.find(6755).comments.create!(user_id: 415, content: "בשנה שעברה, 'ציון כהן' (1983) היה/הייתה מצוות/ת למארח/ת דני אברהם (6755). בצד של המארחים הוא/היא 17299.")
    h = Host.find(6755)
    h.active_last_year = true
    h.save
    Host.find(8014).comments.create!(user_id: 415, content: "בשנה שעברה, 'שי בקרמן' (1757) היה/הייתה מצוות/ת למארח/ת גדעון ריאטי (8014). בצד של המארחים הוא/היא 18748.")
    h = Host.find(8014)
    h.active_last_year = true
    h.save
    Host.find(7569).comments.create!(user_id: 415, content: "בשנה שעברה, 'עליזה בר' (892) היה/הייתה מצוות/ת למארח/ת תומר דסה (7569). בצד של המארחים הוא/היא 18226.")
    h = Host.find(7569)
    h.active_last_year = true
    h.save
    Host.find(8258).comments.create!(user_id: 415, content: "בשנה שעברה, 'דינה שפטלביץ'' (453) היה/הייתה מצוות/ת למארח/ת אביטל זברגר (8258). בצד של המארחים הוא/היא 19046.")
    h = Host.find(8258)
    h.active_last_year = true
    h.save
    Host.find(6787).comments.create!(user_id: 415, content: "בשנה שעברה, 'שרה בן דוד' (1985) היה/הייתה מצוות/ת למארח/ת דר קלאוזנר (6787). בצד של המארחים הוא/היא 17335.")
    h = Host.find(6787)
    h.active_last_year = true
    h.save
    Host.find(6989).comments.create!(user_id: 415, content: "בשנה שעברה, 'אסתר רוזנשטיין' (91) היה/הייתה מצוות/ת למארח/ת רוני הרטוך (6989). בצד של המארחים הוא/היא 17558.")
    h = Host.find(6989)
    h.active_last_year = true
    h.save
    Host.find(9274).comments.create!(user_id: 415, content: "בשנה שעברה, 'אלכסנדר' (3255) היה/הייתה מצוות/ת למארח/ת יעקב פרויליך (9274). בצד של המארחים הוא/היא 21365.")
    h = Host.find(9274)
    h.active_last_year = true
    h.save
    Host.find(9400).comments.create!(user_id: 415, content: "בשנה שעברה, 'מישל ורבר' (3254) היה/הייתה מצוות/ת למארח/ת ורד קונסטנטיני (9400). בצד של המארחים הוא/היא 21875.")
    h = Host.find(9400)
    h.active_last_year = true
    h.save
    Host.find(1241).comments.create!(user_id: 415, content: "בשנה שעברה, 'רותי חלף' (3252) היה/הייתה מצוות/ת למארח/ת ורד קרונפלד (1241). בצד של המארחים הוא/היא 1593.")
    h = Host.find(1241)
    h.active_last_year = true
    h.save
    Host.find(6708).comments.create!(user_id: 415, content: "בשנה שעברה, 'חביבה ארני' (3099) היה/הייתה מצוות/ת למארח/ת שרה רות יוסף (6708). בצד של המארחים הוא/היא 17251.")
    h = Host.find(6708)
    h.active_last_year = true
    h.save
    Host.find(9254).comments.create!(user_id: 415, content: "בשנה שעברה, 'פולה מילס' (3258) היה/הייתה מצוות/ת למארח/ת אסף (9254). בצד של המארחים הוא/היא 21288.")
    h = Host.find(9254)
    h.active_last_year = true
    h.save
    Host.find(6565).comments.create!(user_id: 415, content: "בשנה שעברה, 'שמואל בניונסקי' (684) היה/הייתה מצוות/ת למארח/ת עינת דהרי (6565). בצד של המארחים הוא/היא 17112.")
    h = Host.find(6565)
    h.active_last_year = true
    h.save
    Host.find(4134).comments.create!(user_id: 415, content: "בשנה שעברה, 'אביגדור נוימן' (2115) היה/הייתה מצוות/ת למארח/ת אמיר אורנים (4134). בצד של המארחים הוא/היא 10305.")
    h = Host.find(4134)
    h.active_last_year = true
    h.save
    Host.find(3613).comments.create!(user_id: 415, content: "בשנה שעברה, 'אלכסנדר קרמר' (2235) היה/הייתה מצוות/ת למארח/ת שלי מרציאנו (3613). בצד של המארחים הוא/היא 9630.")
    h = Host.find(3613)
    h.active_last_year = true
    h.save
    Host.find(7104).comments.create!(user_id: 415, content: "בשנה שעברה, 'מאירה פרתם' (3256) היה/הייתה מצוות/ת למארח/ת נופר שמש (7104). בצד של המארחים הוא/היא 17688.")
    h = Host.find(7104)
    h.active_last_year = true
    h.save
    Host.find(8947).comments.create!(user_id: 415, content: "בשנה שעברה, 'יעקב רכטשפן' (3296) היה/הייתה מצוות/ת למארח/ת לילך פורת (8947). בצד של המארחים הוא/היא 20300.")
    h = Host.find(8947)
    h.active_last_year = true
    h.save
    Host.find(8430).comments.create!(user_id: 415, content: "בשנה שעברה, 'ראיה גרובמן' (3260) היה/הייתה מצוות/ת למארח/ת ימין סהר (8430). בצד של המארחים הוא/היא 19336.")
    h = Host.find(8430)
    h.active_last_year = true
    h.save
    Host.find(7978).comments.create!(user_id: 415, content: "בשנה שעברה, 'שוש רוזנפלד' (710) היה/הייתה מצוות/ת למארח/ת אלישבע היזמי (7978). בצד של המארחים הוא/היא 18709.")
    h = Host.find(7978)
    h.active_last_year = true
    h.save
    Host.find(8518).comments.create!(user_id: 415, content: "בשנה שעברה, 'שמואל הראל' (180) היה/הייתה מצוות/ת למארח/ת חנה טולדנו (8518). בצד של המארחים הוא/היא 19471.")
    h = Host.find(8518)
    h.active_last_year = true
    h.save
    Host.find(6918).comments.create!(user_id: 415, content: "בשנה שעברה, 'בנימין לסלו ורצברגר' (1978) היה/הייתה מצוות/ת למארח/ת תומר דרור (6918). בצד של המארחים הוא/היא 17474.")
    h = Host.find(6918)
    h.active_last_year = true
    h.save
    Host.find(5044).comments.create!(user_id: 415, content: "בשנה שעברה, 'שילר אריה' (2221) היה/הייתה מצוות/ת למארח/ת ירדן סלוני (5044). בצד של המארחים הוא/היא 11616.")
    h = Host.find(5044)
    h.active_last_year = true
    h.save
    Host.find(6649).comments.create!(user_id: 415, content: "בשנה שעברה, 'מירה לאובר' (1591) היה/הייתה מצוות/ת למארח/ת אופיר בובה (6649). בצד של המארחים הוא/היא 17194.")
    h = Host.find(6649)
    h.active_last_year = true
    h.save
    Host.find(8149).comments.create!(user_id: 415, content: "בשנה שעברה, 'יהודה קראוס' (1091) היה/הייתה מצוות/ת למארח/ת אורית (8149). בצד של המארחים הוא/היא 18904.")
    h = Host.find(8149)
    h.active_last_year = true
    h.save
    Host.find(5642).comments.create!(user_id: 415, content: "בשנה שעברה, 'חוה לנג' (1323) היה/הייתה מצוות/ת למארח/ת חופית ג'אן (5642). בצד של המארחים הוא/היא 12846.")
    h = Host.find(5642)
    h.active_last_year = true
    h.save
    Host.find(9604).comments.create!(user_id: 415, content: "בשנה שעברה, 'חנה כהן' (3261) היה/הייתה מצוות/ת למארח/ת דור לוי (9604). בצד של המארחים הוא/היא 22857.")
    h = Host.find(9604)
    h.active_last_year = true
    h.save
    Host.find(7887).comments.create!(user_id: 415, content: "בשנה שעברה, 'בן ציון דרוטין' (835) היה/הייתה מצוות/ת למארח/ת יואל לקס (7887). בצד של המארחים הוא/היא 18598.")
    h = Host.find(7887)
    h.active_last_year = true
    h.save
    Host.find(7178).comments.create!(user_id: 415, content: "בשנה שעברה, 'חנה מליסדורף' (889) היה/הייתה מצוות/ת למארח/ת חן בר-און (7178). בצד של המארחים הוא/היא 17767.")
    h = Host.find(7178)
    h.active_last_year = true
    h.save
    Host.find(8457).comments.create!(user_id: 415, content: "בשנה שעברה, 'הרשקו אתי' (17) היה/הייתה מצוות/ת למארח/ת ניצן רז (8457). בצד של המארחים הוא/היא 19380.")
    h = Host.find(8457)
    h.active_last_year = true
    h.save
    Host.find(4135).comments.create!(user_id: 415, content: "בשנה שעברה, 'הרב זליקוביץ' (3265) היה/הייתה מצוות/ת למארח/ת מיכל פינגרהוט (4135). בצד של המארחים הוא/היא 10306.")
    h = Host.find(4135)
    h.active_last_year = true
    h.save
    Host.find(9586).comments.create!(user_id: 415, content: "בשנה שעברה, 'אילונה שטרוסמן' (3266) היה/הייתה מצוות/ת למארח/ת שיראל לסרי (9586). בצד של המארחים הוא/היא 22789.")
    h = Host.find(9586)
    h.active_last_year = true
    h.save
    Host.find(3157).comments.create!(user_id: 415, content: "בשנה שעברה, 'אלקה כץ' (3270) היה/הייתה מצוות/ת למארח/ת יהודית חסקל חיים (3157). בצד של המארחים הוא/היא 9040.")
    h = Host.find(3157)
    h.active_last_year = true
    h.save
    Host.find(5774).comments.create!(user_id: 415, content: "בשנה שעברה, 'נחמה חרמון' (3274) היה/הייתה מצוות/ת למארח/ת זמור לורנס (5774). בצד של המארחים הוא/היא 13223.")
    h = Host.find(5774)
    h.active_last_year = true
    h.save
    Host.find(4320).comments.create!(user_id: 415, content: "בשנה שעברה, 'צביקה אונגר' (3281) היה/הייתה מצוות/ת למארח/ת שי פינצ׳בסקי (4320). בצד של המארחים הוא/היא 10532.")
    h = Host.find(4320)
    h.active_last_year = true
    h.save
    Host.find(8844).comments.create!(user_id: 415, content: "בשנה שעברה, 'ברדה יעקב' (3269) היה/הייתה מצוות/ת למארח/ת בלה מסיקה (8844). בצד של המארחים הוא/היא 20082.")
    h = Host.find(8844)
    h.active_last_year = true
    h.save
    Host.find(9622).comments.create!(user_id: 415, content: "בשנה שעברה, 'יצחק אברמוביץ'' (631) היה/הייתה מצוות/ת למארח/ת רחל מלוקה (9622). בצד של המארחים הוא/היא 22947.")
    h = Host.find(9622)
    h.active_last_year = true
    h.save
    Host.find(4099).comments.create!(user_id: 415, content: "בשנה שעברה, 'רבקה פז' (187) היה/הייתה מצוות/ת למארח/ת יעל דהאן (4099). בצד של המארחים הוא/היא 10261.")
    h = Host.find(4099)
    h.active_last_year = true
    h.save
    Host.find(3276).comments.create!(user_id: 415, content: "בשנה שעברה, 'דוד ארביב' (909) היה/הייתה מצוות/ת למארח/ת מיכל כבביה (3276). בצד של המארחים הוא/היא 9158.")
    h = Host.find(3276)
    h.active_last_year = true
    h.save
    Host.find(3872).comments.create!(user_id: 415, content: "בשנה שעברה, 'ציפורה גרשון' (3267) היה/הייתה מצוות/ת למארח/ת לימור ומנו אמסלם (3872). בצד של המארחים הוא/היא 9956.")
    h = Host.find(3872)
    h.active_last_year = true
    h.save
    Host.find(7701).comments.create!(user_id: 415, content: "בשנה שעברה, 'שושנה חגבי' (824) היה/הייתה מצוות/ת למארח/ת נופר זבולון (7701). בצד של המארחים הוא/היא 15796.")
    h = Host.find(7701)
    h.active_last_year = true
    h.save
    Host.find(8325).comments.create!(user_id: 415, content: "בשנה שעברה, 'יונה גוטל' (3279) היה/הייתה מצוות/ת למארח/ת נעמי כרמיאל (8325). בצד של המארחים הוא/היא 19148.")
    h = Host.find(8325)
    h.active_last_year = true
    h.save
    Host.find(9207).comments.create!(user_id: 415, content: "בשנה שעברה, 'טום בן ישראל' (3268) היה/הייתה מצוות/ת למארח/ת שירי קליינר (9207). בצד של המארחים הוא/היא 21151.")
    h = Host.find(9207)
    h.active_last_year = true
    h.save
    Host.find(2216).comments.create!(user_id: 415, content: "בשנה שעברה, 'אודי ברנשטיין' (3264) היה/הייתה מצוות/ת למארח/ת רביד כהן-חגי (2216). בצד של המארחים הוא/היא 4132.")
    h = Host.find(2216)
    h.active_last_year = true
    h.save
    Host.find(4662).comments.create!(user_id: 415, content: "בשנה שעברה, 'דוד ארד' (3283) היה/הייתה מצוות/ת למארח/ת רוני גור (4662). בצד של המארחים הוא/היא 11003.")
    h = Host.find(4662)
    h.active_last_year = true
    h.save
    Host.find(8324).comments.create!(user_id: 415, content: "בשנה שעברה, 'אברהמל'ה ליטמן' (3277) היה/הייתה מצוות/ת למארח/ת שחר דרי (8324). בצד של המארחים הוא/היא 19147.")
    h = Host.find(8324)
    h.active_last_year = true
    h.save
    Host.find(9646).comments.create!(user_id: 415, content: "בשנה שעברה, 'מרגרטה בורגר' (3273) היה/הייתה מצוות/ת למארח/ת בת אל מן (9646). בצד של המארחים הוא/היא 23116.")
    h = Host.find(9646)
    h.active_last_year = true
    h.save
    Host.find(8955).comments.create!(user_id: 415, content: "בשנה שעברה, 'משה כהן' (608) היה/הייתה מצוות/ת למארח/ת פני רוזנברג (8955). בצד של המארחים הוא/היא 20323.")
    h = Host.find(8955)
    h.active_last_year = true
    h.save
    Host.find(8201).comments.create!(user_id: 415, content: "בשנה שעברה, 'חנה רודיטי' (3286) היה/הייתה מצוות/ת למארח/ת מכינת בארי (8201). בצד של המארחים הוא/היא 18981.")
    h = Host.find(8201)
    h.active_last_year = true
    h.save
    Host.find(7667).comments.create!(user_id: 415, content: "בשנה שעברה, 'יוסי בליי' (1029) היה/הייתה מצוות/ת למארח/ת מיכל ששון (7667). בצד של המארחים הוא/היא 6741.")
    h = Host.find(7667)
    h.active_last_year = true
    h.save
    Host.find(3096).comments.create!(user_id: 415, content: "בשנה שעברה, 'דן הגני' (3287) היה/הייתה מצוות/ת למארח/ת אלירז כהן (3096). בצד של המארחים הוא/היא 8978.")
    h = Host.find(3096)
    h.active_last_year = true
    h.save
    Host.find(7577).comments.create!(user_id: 415, content: "בשנה שעברה, 'רחל שפרונג' (3290) היה/הייתה מצוות/ת למארח/ת תמר עמיתי (7577). בצד של המארחים הוא/היא 18239.")
    h = Host.find(7577)
    h.active_last_year = true
    h.save
    Host.find(679).comments.create!(user_id: 415, content: "בשנה שעברה, 'מלי וסרמן' (1013) היה/הייתה מצוות/ת למארח/ת סיגל כזום (679). בצד של המארחים הוא/היא 731.")
    h = Host.find(679)
    h.active_last_year = true
    h.save
    Host.find(6601).comments.create!(user_id: 415, content: "בשנה שעברה, 'שלמה שרצר' (1048) היה/הייתה מצוות/ת למארח/ת גילי קרני (6601). בצד של המארחים הוא/היא 17147.")
    h = Host.find(6601)
    h.active_last_year = true
    h.save
    Host.find(7331).comments.create!(user_id: 415, content: "בשנה שעברה, 'דורה רוט' (441) היה/הייתה מצוות/ת למארח/ת שלהבת שורר (7331). בצד של המארחים הוא/היא 17950.")
    h = Host.find(7331)
    h.active_last_year = true
    h.save
    Host.find(8585).comments.create!(user_id: 415, content: "בשנה שעברה, 'מרים בוקר' (3278) היה/הייתה מצוות/ת למארח/ת יעל כהן-ניסים (8585). בצד של המארחים הוא/היא 19564.")
    h = Host.find(8585)
    h.active_last_year = true
    h.save
    Host.find(8553).comments.create!(user_id: 415, content: "בשנה שעברה, 'מטילדה בייזר' (1209) היה/הייתה מצוות/ת למארח/ת שירלי קנובל (8553). בצד של המארחים הוא/היא 19521.")
    h = Host.find(8553)
    h.active_last_year = true
    h.save
    Host.find(3251).comments.create!(user_id: 415, content: "בשנה שעברה, 'רינה ננתין' (1129) היה/הייתה מצוות/ת למארח/ת שיר דרורי (3251). בצד של המארחים הוא/היא 9134.")
    h = Host.find(3251)
    h.active_last_year = true
    h.save
    Host.find(8648).comments.create!(user_id: 415, content: "בשנה שעברה, 'בלה קופטש' (211) היה/הייתה מצוות/ת למארח/ת עדי אשכנזי (8648). בצד של המארחים הוא/היא 19668.")
    h = Host.find(8648)
    h.active_last_year = true
    h.save
    Host.find(8981).comments.create!(user_id: 415, content: "בשנה שעברה, 'דינה טייב' (291) היה/הייתה מצוות/ת למארח/ת שרית פינטו (8981). בצד של המארחים הוא/היא 20387.")
    h = Host.find(8981)
    h.active_last_year = true
    h.save
    Host.find(9744).comments.create!(user_id: 415, content: "בשנה שעברה, 'עליזה רדין' (3285) היה/הייתה מצוות/ת למארח/ת סניף הסתדרות כפר סבא (9744). בצד של המארחים הוא/היא 23761.")
    h = Host.find(9744)
    h.active_last_year = true
    h.save
    Host.find(8086).comments.create!(user_id: 415, content: "בשנה שעברה, 'גרוברג מוטל מרדכי' (1194) היה/הייתה מצוות/ת למארח/ת אוריה (8086). בצד של המארחים הוא/היא 18830.")
    h = Host.find(8086)
    h.active_last_year = true
    h.save
    Host.find(1054).comments.create!(user_id: 415, content: "בשנה שעברה, 'מאשה' (1141) היה/הייתה מצוות/ת למארח/ת מאיה פלג (1054). בצד של המארחים הוא/היא 1230.")
    h = Host.find(1054)
    h.active_last_year = true
    h.save
    Host.find(7163).comments.create!(user_id: 415, content: "בשנה שעברה, 'שלום ליאני' (1221) היה/הייתה מצוות/ת למארח/ת ספיר חלפון (7163). בצד של המארחים הוא/היא 17753.")
    h = Host.find(7163)
    h.active_last_year = true
    h.save
    Host.find(1245).comments.create!(user_id: 415, content: "בשנה שעברה, 'שלמה אנגלמן' (901) היה/הייתה מצוות/ת למארח/ת דפנה פטישי ורביב פרילוק (1245). בצד של המארחים הוא/היא 1601.")
    h = Host.find(1245)
    h.active_last_year = true
    h.save
    Host.find(9457).comments.create!(user_id: 415, content: "בשנה שעברה, 'אבי רז' (100) היה/הייתה מצוות/ת למארח/ת הדס קירי (9457). בצד של המארחים הוא/היא 22218.")
    h = Host.find(9457)
    h.active_last_year = true
    h.save
    Host.find(47).comments.create!(user_id: 415, content: "בשנה שעברה, 'דינה פרידה' (50) היה/הייתה מצוות/ת למארח/ת מיטל בורק (47). בצד של המארחים הוא/היא 49.")
    h = Host.find(47)
    h.active_last_year = true
    h.save
    Host.find(5107).comments.create!(user_id: 415, content: "בשנה שעברה, 'יהושוע מוסקוביץ לקנר' (70) היה/הייתה מצוות/ת למארח/ת שרון שר וייס -היחידה לקידום נוער ק. ביאליק (5107). בצד של המארחים הוא/היא 11728.")
    h = Host.find(5107)
    h.active_last_year = true
    h.save
    Host.find(9724).comments.create!(user_id: 415, content: "בשנה שעברה, 'לולה קלו' (112) היה/הייתה מצוות/ת למארח/ת ליז מדעי (9724). בצד של המארחים הוא/היא 23646.")
    h = Host.find(9724)
    h.active_last_year = true
    h.save
    Host.find(2805).comments.create!(user_id: 415, content: "בשנה שעברה, 'רבקה אלבוים' (122) היה/הייתה מצוות/ת למארח/ת ליפשיץ רחלי (2805). בצד של המארחים הוא/היא 8206.")
    h = Host.find(2805)
    h.active_last_year = true
    h.save
    Host.find(9182).comments.create!(user_id: 415, content: "בשנה שעברה, 'פנחס כהנא' (195) היה/הייתה מצוות/ת למארח/ת ניר בלדב (9182). בצד של המארחים הוא/היא 21083.")
    h = Host.find(9182)
    h.active_last_year = true
    h.save
    Host.find(8336).comments.create!(user_id: 415, content: "בשנה שעברה, 'קלריס שכטר' (226) היה/הייתה מצוות/ת למארח/ת אדווה פוטזניק (8336). בצד של המארחים הוא/היא 19160.")
    h = Host.find(8336)
    h.active_last_year = true
    h.save
    Host.find(7124).comments.create!(user_id: 415, content: "בשנה שעברה, 'צבי שפט' (234) היה/הייתה מצוות/ת למארח/ת קפה אמא (7124). בצד של המארחים הוא/היא 17708.")
    h = Host.find(7124)
    h.active_last_year = true
    h.save
    Host.find(7954).comments.create!(user_id: 415, content: "בשנה שעברה, 'פנינה זייצמן' (220) היה/הייתה מצוות/ת למארח/ת אורי (7954). בצד של המארחים הוא/היא 18679.")
    h = Host.find(7954)
    h.active_last_year = true
    h.save
    Host.find(7889).comments.create!(user_id: 415, content: "בשנה שעברה, 'יהודית ווארי' (506) היה/הייתה מצוות/ת למארח/ת מוריה קרמרמן (7889). בצד של המארחים הוא/היא 18601.")
    h = Host.find(7889)
    h.active_last_year = true
    h.save
    Host.find(9135).comments.create!(user_id: 415, content: "בשנה שעברה, 'מרים חביב' (313) היה/הייתה מצוות/ת למארח/ת איתי רענן (9135). בצד של המארחים הוא/היא 20848.")
    h = Host.find(9135)
    h.active_last_year = true
    h.save
    Host.find(8649).comments.create!(user_id: 415, content: "בשנה שעברה, 'מרי בוייר' (320) היה/הייתה מצוות/ת למארח/ת חנה קדוש (8649). בצד של המארחים הוא/היא 19675.")
    h = Host.find(8649)
    h.active_last_year = true
    h.save
    Host.find(6725).comments.create!(user_id: 415, content: "בשנה שעברה, 'ורד קאופמן' (271) היה/הייתה מצוות/ת למארח/ת עינה לקח (6725). בצד של המארחים הוא/היא 17268.")
    h = Host.find(6725)
    h.active_last_year = true
    h.save
    Host.find(9429).comments.create!(user_id: 415, content: "בשנה שעברה, 'רויטמן בטי' (3289) היה/הייתה מצוות/ת למארח/ת שרה דינרשטיין (9429). בצד של המארחים הוא/היא 22023.")
    h = Host.find(9429)
    h.active_last_year = true
    h.save
    Host.find(4069).comments.create!(user_id: 415, content: "בשנה שעברה, 'רפי לוי' (443) היה/הייתה מצוות/ת למארח/ת ציפי בנדר (4069). בצד של המארחים הוא/היא 10229.")
    h = Host.find(4069)
    h.active_last_year = true
    h.save
    Host.find(6702).comments.create!(user_id: 415, content: "בשנה שעברה, 'אברהם שלומי' (683) היה/הייתה מצוות/ת למארח/ת אד סטרומר (6702). בצד של המארחים הוא/היא 17245.")
    h = Host.find(6702)
    h.active_last_year = true
    h.save
    Host.find(6622).comments.create!(user_id: 415, content: "בשנה שעברה, 'קטלין שוורץ' (372) היה/הייתה מצוות/ת למארח/ת מורן דויטשמן (6622). בצד של המארחים הוא/היא 17168.")
    h = Host.find(6622)
    h.active_last_year = true
    h.save
    Host.find(8438).comments.create!(user_id: 415, content: "בשנה שעברה, 'זהבה גלנטי' (484) היה/הייתה מצוות/ת למארח/ת דיויד רוז (8438). בצד של המארחים הוא/היא 19348.")
    h = Host.find(8438)
    h.active_last_year = true
    h.save
    Host.find(7329).comments.create!(user_id: 415, content: "בשנה שעברה, 'אסתי בוזי' (448) היה/הייתה מצוות/ת למארח/ת מורן בן ישי מלח (7329). בצד של המארחים הוא/היא 17948.")
    h = Host.find(7329)
    h.active_last_year = true
    h.save
    Host.find(7798).comments.create!(user_id: 415, content: "בשנה שעברה, 'מנחם יוסוביץ'' (374) היה/הייתה מצוות/ת למארח/ת נטע שר (7798). בצד של המארחים הוא/היא 18497.")
    h = Host.find(7798)
    h.active_last_year = true
    h.save
    Host.find(5934).comments.create!(user_id: 415, content: "בשנה שעברה, 'שפרה דוד' (682) היה/הייתה מצוות/ת למארח/ת דור אזולאי (5934). בצד של המארחים הוא/היא 13677.")
    h = Host.find(5934)
    h.active_last_year = true
    h.save
    Host.find(6924).comments.create!(user_id: 415, content: "בשנה שעברה, 'צבי פרנק' (725) היה/הייתה מצוות/ת למארח/ת עלי ברוק (6924). בצד של המארחים הוא/היא 17480.")
    h = Host.find(6924)
    h.active_last_year = true
    h.save
    Host.find(5870).comments.create!(user_id: 415, content: "בשנה שעברה, 'יעקב סימקוביץ'' (734) היה/הייתה מצוות/ת למארח/ת תם צייגר (5870). בצד של המארחים הוא/היא 13463.")
    h = Host.find(5870)
    h.active_last_year = true
    h.save
    Host.find(9038).comments.create!(user_id: 415, content: "בשנה שעברה, 'שלום קלנר' (3288) היה/הייתה מצוות/ת למארח/ת יובל לוי (9038). בצד של המארחים הוא/היא 20581.")
    h = Host.find(9038)
    h.active_last_year = true
    h.save
    Host.find(8356).comments.create!(user_id: 415, content: "בשנה שעברה, 'לילי כהן' (773) היה/הייתה מצוות/ת למארח/ת הוסטל סלעית-אסנת (8356). בצד של המארחים הוא/היא 19182.")
    h = Host.find(8356)
    h.active_last_year = true
    h.save
    Host.find(7514).comments.create!(user_id: 415, content: "בשנה שעברה, 'זבלודובסקי לילה' (605) היה/הייתה מצוות/ת למארח/ת ירדן אלפסי (7514). בצד של המארחים הוא/היא 18166.")
    h = Host.find(7514)
    h.active_last_year = true
    h.save
    Host.find(7083).comments.create!(user_id: 415, content: "בשנה שעברה, 'דן צור' (589) היה/הייתה מצוות/ת למארח/ת שירה גורלי (7083). בצד של המארחים הוא/היא 17665.")
    h = Host.find(7083)
    h.active_last_year = true
    h.save
    Host.find(8296).comments.create!(user_id: 415, content: "בשנה שעברה, 'בתיה רפפורט' (640) היה/הייתה מצוות/ת למארח/ת דורון רנצר (8296). בצד של המארחים הוא/היא 19096.")
    h = Host.find(8296)
    h.active_last_year = true
    h.save
    Host.find(7491).comments.create!(user_id: 415, content: "בשנה שעברה, 'הדסה המבורגר' (577) היה/הייתה מצוות/ת למארח/ת סימה (7491). בצד של המארחים הוא/היא 5512.")
    h = Host.find(7491)
    h.active_last_year = true
    h.save
    Host.find(8775).comments.create!(user_id: 415, content: "בשנה שעברה, 'משה יענקוביץ' (1425) היה/הייתה מצוות/ת למארח/ת ליאור לנצר (8775). בצד של המארחים הוא/היא 19905.")
    h = Host.find(8775)
    h.active_last_year = true
    h.save
    Host.find(8323).comments.create!(user_id: 415, content: "בשנה שעברה, 'יהודית אליס באר' (753) היה/הייתה מצוות/ת למארח/ת ניצן דיין (8323). בצד של המארחים הוא/היא 19146.")
    h = Host.find(8323)
    h.active_last_year = true
    h.save
    Host.find(9856).comments.create!(user_id: 415, content: "בשנה שעברה, 'יפים מנקין' (3293) היה/הייתה מצוות/ת למארח/ת נעמי חסין דברה (9856). בצד של המארחים הוא/היא 24916.")
    h = Host.find(9856)
    h.active_last_year = true
    h.save
    Host.find(8870).comments.create!(user_id: 415, content: "בשנה שעברה, 'דליה פורן' (326) היה/הייתה מצוות/ת למארח/ת קטרין אשורוב (8870). בצד של המארחים הוא/היא 20131.")
    h = Host.find(8870)
    h.active_last_year = true
    h.save
    Host.find(7085).comments.create!(user_id: 415, content: "בשנה שעברה, 'שלומית טמיר' (68) היה/הייתה מצוות/ת למארח/ת הילה קולן ששון (7085). בצד של המארחים הוא/היא 17667.")
    h = Host.find(7085)
    h.active_last_year = true
    h.save
    Host.find(1004).comments.create!(user_id: 415, content: "בשנה שעברה, 'יוליוס בראון' (1522) היה/הייתה מצוות/ת למארח/ת אדוה וזאנה (1004). בצד של המארחים הוא/היא 1137.")
    h = Host.find(1004)
    h.active_last_year = true
    h.save
    Host.find(7221).comments.create!(user_id: 415, content: "בשנה שעברה, 'אדה פרימר' (749) היה/הייתה מצוות/ת למארח/ת ערן ויצנר (7221). בצד של המארחים הוא/היא 17818.")
    h = Host.find(7221)
    h.active_last_year = true
    h.save
    Host.find(7236).comments.create!(user_id: 415, content: "בשנה שעברה, 'עליזה טננבאום' (1401) היה/הייתה מצוות/ת למארח/ת טלי מלינוביץ (7236). בצד של המארחים הוא/היא 12008.")
    h = Host.find(7236)
    h.active_last_year = true
    h.save
    Host.find(9559).comments.create!(user_id: 415, content: "בשנה שעברה, 'חנה פסיה דוידוביץ רבי' (419) היה/הייתה מצוות/ת למארח/ת יפית עזר (9559). בצד של המארחים הוא/היא 22654.")
    h = Host.find(9559)
    h.active_last_year = true
    h.save
    Host.find(3815).comments.create!(user_id: 415, content: "בשנה שעברה, 'הינדה' (3291) היה/הייתה מצוות/ת למארח/ת הילה גולן (3815). בצד של המארחים הוא/היא 9890.")
    h = Host.find(3815)
    h.active_last_year = true
    h.save
    Host.find(8854).comments.create!(user_id: 415, content: "בשנה שעברה, 'פטר בכרך' (1771) היה/הייתה מצוות/ת למארח/ת לארה ברק (8854). בצד של המארחים הוא/היא 20109.")
    h = Host.find(8854)
    h.active_last_year = true
    h.save
    Host.find(8271).comments.create!(user_id: 415, content: "בשנה שעברה, 'נלי פרזמה' (1646) היה/הייתה מצוות/ת למארח/ת מוטי בן אשר (8271). בצד של המארחים הוא/היא 19063.")
    h = Host.find(8271)
    h.active_last_year = true
    h.save
    Host.find(7216).comments.create!(user_id: 415, content: "בשנה שעברה, 'מוריס גליק' (1624) היה/הייתה מצוות/ת למארח/ת אולפנית \"הראל\" (7216). בצד של המארחים הוא/היא 17813.")
    h = Host.find(7216)
    h.active_last_year = true
    h.save
    Host.find(7921).comments.create!(user_id: 415, content: "בשנה שעברה, 'אסתר דובלין' (1660) היה/הייתה מצוות/ת למארח/ת מיכל פרגו (7921). בצד של המארחים הוא/היא 18636.")
    h = Host.find(7921)
    h.active_last_year = true
    h.save
    Host.find(7059).comments.create!(user_id: 415, content: "בשנה שעברה, 'דבורה ברגר - לא לצוות 2017' (1975) היה/הייתה מצוות/ת למארח/ת אביבה (7059). בצד של המארחים הוא/היא 17638.")
    h = Host.find(7059)
    h.active_last_year = true
    h.save
    Host.find(4604).comments.create!(user_id: 415, content: "בשנה שעברה, 'חיים בסיסט' (2338) היה/הייתה מצוות/ת למארח/ת קשת נוסצקי (4604). בצד של המארחים הוא/היא 10925.")
    h = Host.find(4604)
    h.active_last_year = true
    h.save
    Host.find(7869).comments.create!(user_id: 415, content: "בשנה שעברה, 'נוסיה וייס' (3292) היה/הייתה מצוות/ת למארח/ת תמר סגל (7869). בצד של המארחים הוא/היא 18575.")
    h = Host.find(7869)
    h.active_last_year = true
    h.save
    Host.find(4671).comments.create!(user_id: 415, content: "בשנה שעברה, 'שושנה מזור' (1769) היה/הייתה מצוות/ת למארח/ת משה טסלר (4671). בצד של המארחים הוא/היא 11014.")
    h = Host.find(4671)
    h.active_last_year = true
    h.save
    Host.find(7207).comments.create!(user_id: 415, content: "בשנה שעברה, 'רוני' (3299) היה/הייתה מצוות/ת למארח/ת גאוי מזל לילך (7207). בצד של המארחים הוא/היא 17799.")
    h = Host.find(7207)
    h.active_last_year = true
    h.save
    Host.find(6440).comments.create!(user_id: 415, content: "בשנה שעברה, 'אדווה גאות' (3300) היה/הייתה מצוות/ת למארח/ת ליאת פיטוסי (6440). בצד של המארחים הוא/היא 16981.")
    h = Host.find(6440)
    h.active_last_year = true
    h.save
    Host.find(9795).comments.create!(user_id: 415, content: "בשנה שעברה, 'מירה רז' (3297) היה/הייתה מצוות/ת למארח/ת דן רושנסקי (9795). בצד של המארחים הוא/היא 24306.")
    h = Host.find(9795)
    h.active_last_year = true
    h.save
    Host.find(7866).comments.create!(user_id: 415, content: "בשנה שעברה, 'יצחק יעקבי' (968) היה/הייתה מצוות/ת למארח/ת אדוה (7866). בצד של המארחים הוא/היא 18572.")
    h = Host.find(7866)
    h.active_last_year = true
    h.save
    Host.find(9246).comments.create!(user_id: 415, content: "בשנה שעברה, 'זהבה וינשטיין' (1562) היה/הייתה מצוות/ת למארח/ת רינת אלימלך (9246). בצד של המארחים הוא/היא 21260.")
    h = Host.find(9246)
    h.active_last_year = true
    h.save
    Host.find(7580).comments.create!(user_id: 415, content: "בשנה שעברה, 'שאול גטניו' (986) היה/הייתה מצוות/ת למארח/ת טל גולסט (7580). בצד של המארחים הוא/היא 18244.")
    h = Host.find(7580)
    h.active_last_year = true
    h.save
    Host.find(8141).comments.create!(user_id: 415, content: "בשנה שעברה, 'גוטמן פייגה ציפי' (1453) היה/הייתה מצוות/ת למארח/ת חלי סינאי (8141). בצד של המארחים הוא/היא 18892.")
    h = Host.find(8141)
    h.active_last_year = true
    h.save
    Host.find(6527).comments.create!(user_id: 415, content: "בשנה שעברה, 'פלה רביב' (1559) היה/הייתה מצוות/ת למארח/ת יעל טרוחיו (6527). בצד של המארחים הוא/היא 17074.")
    h = Host.find(6527)
    h.active_last_year = true
    h.save
    Host.find(7996).comments.create!(user_id: 415, content: "בשנה שעברה, 'קובי קבלק' (1972) היה/הייתה מצוות/ת למארח/ת ספיר אמזלג (7996). בצד של המארחים הוא/היא 18729.")
    h = Host.find(7996)
    h.active_last_year = true
    h.save
    Host.find(7744).comments.create!(user_id: 415, content: "בשנה שעברה, 'אלחנן בר לב' (2315) היה/הייתה מצוות/ת למארח/ת tomer shockner (7744). בצד של המארחים הוא/היא 18437.")
    h = Host.find(7744)
    h.active_last_year = true
    h.save
    Host.find(6031).comments.create!(user_id: 415, content: "בשנה שעברה, 'פנחס בריס' (3298) היה/הייתה מצוות/ת למארח/ת אילנה מרכוס (6031). בצד של המארחים הוא/היא 14015.")
    h = Host.find(6031)
    h.active_last_year = true
    h.save
    Host.find(748).comments.create!(user_id: 415, content: "בשנה שעברה, 'נאווה חרובי' (2340) היה/הייתה מצוות/ת למארח/ת אורטל לאלזר (748). בצד של המארחים הוא/היא 801.")
    h = Host.find(748)
    h.active_last_year = true
    h.save
    Host.find(7248).comments.create!(user_id: 415, content: "בשנה שעברה, 'עליזה מרמלשטיין' (2335) היה/הייתה מצוות/ת למארח/ת סתיו פרלה (7248). בצד של המארחים הוא/היא 17845.")
    h = Host.find(7248)
    h.active_last_year = true
    h.save
    Host.find(8745).comments.create!(user_id: 415, content: "בשנה שעברה, 'אדית מרגלית' (598) היה/הייתה מצוות/ת למארח/ת סילברמן אברהמית (8745). בצד של המארחים הוא/היא 19852.")
    h = Host.find(8745)
    h.active_last_year = true
    h.save
    Host.find(6501).comments.create!(user_id: 415, content: "בשנה שעברה, 'אבירם רוזנטל' (1923) היה/הייתה מצוות/ת למארח/ת טל צור (6501). בצד של המארחים הוא/היא 17051.")
    h = Host.find(6501)
    h.active_last_year = true
    h.save
    Host.find(7015).comments.create!(user_id: 415, content: "בשנה שעברה, 'יצחק צלאל' (978) היה/הייתה מצוות/ת למארח/ת ירדן אורן (7015). בצד של המארחים הוא/היא 17584.")
    h = Host.find(7015)
    h.active_last_year = true
    h.save
    Host.find(8837).comments.create!(user_id: 415, content: "בשנה שעברה, 'צבי וריקי פלד' (2348) היה/הייתה מצוות/ת למארח/ת טל פריתס (8837). בצד של המארחים הוא/היא 20063.")
    h = Host.find(8837)
    h.active_last_year = true
    h.save
    Host.find(8037).comments.create!(user_id: 415, content: "בשנה שעברה, 'אדוארד בלושנקו' (764) היה/הייתה מצוות/ת למארח/ת יעל גרינפלד (8037). בצד של המארחים הוא/היא 18769.")
    h = Host.find(8037)
    h.active_last_year = true
    h.save
    Host.find(6922).comments.create!(user_id: 415, content: "בשנה שעברה, 'דינה גבאי' (2375) היה/הייתה מצוות/ת למארח/ת אורן סודאי (6922). בצד של המארחים הוא/היא 17478.")
    h = Host.find(6922)
    h.active_last_year = true
    h.save
    Host.find(562).comments.create!(user_id: 415, content: "בשנה שעברה, 'מיכה טסלר' (2358) היה/הייתה מצוות/ת למארח/ת גבי קלור (562). בצד של המארחים הוא/היא 611.")
    h = Host.find(562)
    h.active_last_year = true
    h.save
    Host.find(9370).comments.create!(user_id: 415, content: "בשנה שעברה, 'שמואל דוד' (3295) היה/הייתה מצוות/ת למארח/ת מועצת התלמידים המחוזית (9370). בצד של המארחים הוא/היא 21708.")
    h = Host.find(9370)
    h.active_last_year = true
    h.save
    Host.find(8212).comments.create!(user_id: 415, content: "בשנה שעברה, 'ישראל מרמלשטיין' (2382) היה/הייתה מצוות/ת למארח/ת עמית מאיר (8212). בצד של המארחים הוא/היא 18993.")
    h = Host.find(8212)
    h.active_last_year = true
    h.save
    Host.find(3726).comments.create!(user_id: 415, content: "בשנה שעברה, 'רמי קמחי' (1324) היה/הייתה מצוות/ת למארח/ת שני לנדאו (בית העמותות) (3726). בצד של המארחים הוא/היא 9785.")
    h = Host.find(3726)
    h.active_last_year = true
    h.save
    Host.find(7378).comments.create!(user_id: 415, content: "בשנה שעברה, 'בני פרל' (2385) היה/הייתה מצוות/ת למארח/ת עמית דלמדיגו (7378). בצד של המארחים הוא/היא 18004.")
    h = Host.find(7378)
    h.active_last_year = true
    h.save
    Host.find(9364).comments.create!(user_id: 415, content: "בשנה שעברה, 'יהודית גנור' (2394) היה/הייתה מצוות/ת למארח/ת מעין ויצחק מרקוביץ (9364). בצד של המארחים הוא/היא 21674.")
    h = Host.find(9364)
    h.active_last_year = true
    h.save
    Host.find(6736).comments.create!(user_id: 415, content: "בשנה שעברה, 'עטרה אנגל' (2396) היה/הייתה מצוות/ת למארח/ת דורית תמיר (6736). בצד של המארחים הוא/היא 17279.")
    h = Host.find(6736)
    h.active_last_year = true
    h.save
    Host.find(9769).comments.create!(user_id: 415, content: "בשנה שעברה, 'הלין רומני' (428) היה/הייתה מצוות/ת למארח/ת אבישג גל (9769). בצד של המארחים הוא/היא 23996.")
    h = Host.find(9769)
    h.active_last_year = true
    h.save
    Host.find(6663).comments.create!(user_id: 415, content: "בשנה שעברה, 'אריק הולדר' (2397) היה/הייתה מצוות/ת למארח/ת עדי גינל (6663). בצד של המארחים הוא/היא 17207.")
    h = Host.find(6663)
    h.active_last_year = true
    h.save
    Host.find(8140).comments.create!(user_id: 415, content: "בשנה שעברה, 'אריה ביבאס' (2399) היה/הייתה מצוות/ת למארח/ת נועה גולדנברג (8140). בצד של המארחים הוא/היא 18889.")
    h = Host.find(8140)
    h.active_last_year = true
    h.save
    Host.find(7265).comments.create!(user_id: 415, content: "בשנה שעברה, 'רחל מורן' (2390) היה/הייתה מצוות/ת למארח/ת גיא בורשצ'וק (7265). בצד של המארחים הוא/היא 17868.")
    h = Host.find(7265)
    h.active_last_year = true
    h.save
    Host.find(7422).comments.create!(user_id: 415, content: "בשנה שעברה, 'בלה בלשניקוב' (2400) היה/הייתה מצוות/ת למארח/ת תהילה מאמו (7422). בצד של המארחים הוא/היא 6018.")
    h = Host.find(7422)
    h.active_last_year = true
    h.save
    Host.find(7862).comments.create!(user_id: 415, content: "בשנה שעברה, 'קטי לוי' (2389) היה/הייתה מצוות/ת למארח/ת ליה מעור-בקר (7862). בצד של המארחים הוא/היא 18568.")
    h = Host.find(7862)
    h.active_last_year = true
    h.save
    Host.find(223).comments.create!(user_id: 415, content: "בשנה שעברה, 'מנחם פרי' (2413) היה/הייתה מצוות/ת למארח/ת זהר קפלן וטלי חנין (223). בצד של המארחים הוא/היא 229.")
    h = Host.find(223)
    h.active_last_year = true
    h.save
    Host.find(611).comments.create!(user_id: 415, content: "בשנה שעברה, 'ורה מייזלס' (2175) היה/הייתה מצוות/ת למארח/ת נדב מנדלסון (611). בצד של המארחים הוא/היא 660.")
    h = Host.find(611)
    h.active_last_year = true
    h.save
    Host.find(8066).comments.create!(user_id: 415, content: "בשנה שעברה, 'דבורה שרייבר' (2251) היה/הייתה מצוות/ת למארח/ת רן בן עטיה (8066). בצד של המארחים הוא/היא 18803.")
    h = Host.find(8066)
    h.active_last_year = true
    h.save
    Host.find(5985).comments.create!(user_id: 415, content: "בשנה שעברה, 'כץ פריצה' (2466) היה/הייתה מצוות/ת למארח/ת שרון שקד (5985). בצד של המארחים הוא/היא 7427.")
    h = Host.find(5985)
    h.active_last_year = true
    h.save
    Host.find(1489).comments.create!(user_id: 415, content: "בשנה שעברה, 'חגי זילברברג' (2064) היה/הייתה מצוות/ת למארח/ת איטה גור אריה (1489). בצד של המארחים הוא/היא 2116.")
    h = Host.find(1489)
    h.active_last_year = true
    h.save
    Host.find(7626).comments.create!(user_id: 415, content: "בשנה שעברה, 'ליאורה גול' (2404) היה/הייתה מצוות/ת למארח/ת נורית ושרון (7626). בצד של המארחים הוא/היא 18299.")
    h = Host.find(7626)
    h.active_last_year = true
    h.save
    Host.find(8878).comments.create!(user_id: 415, content: "בשנה שעברה, 'שלום טמיר' (2414) היה/הייתה מצוות/ת למארח/ת עליזה מרגוליס (8878). בצד של המארחים הוא/היא 20155.")
    h = Host.find(8878)
    h.active_last_year = true
    h.save
    Host.find(8724).comments.create!(user_id: 415, content: "בשנה שעברה, 'ברגר מיקי' (2458) היה/הייתה מצוות/ת למארח/ת ליטל אפרתי (8724). בצד של המארחים הוא/היא 19816.")
    h = Host.find(8724)
    h.active_last_year = true
    h.save
    Host.find(7575).comments.create!(user_id: 415, content: "בשנה שעברה, 'ריקרדו לפין' (2417) היה/הייתה מצוות/ת למארח/ת מיכלי ישראלי (7575). בצד של המארחים הוא/היא 18237.")
    h = Host.find(7575)
    h.active_last_year = true
    h.save
    Host.find(7340).comments.create!(user_id: 415, content: "בשנה שעברה, 'ד\"ר חדווה טרגר' (2425) היה/הייתה מצוות/ת למארח/ת שחר שרביט (7340). בצד של המארחים הוא/היא 12028.")
    h = Host.find(7340)
    h.active_last_year = true
    h.save
    Host.find(3246).comments.create!(user_id: 415, content: "בשנה שעברה, 'פולט פוקס' (2433) היה/הייתה מצוות/ת למארח/ת נועה שדמי (3246). בצד של המארחים הוא/היא 9130.")
    h = Host.find(3246)
    h.active_last_year = true
    h.save
    Host.find(6548).comments.create!(user_id: 415, content: "בשנה שעברה, 'משה\tקאופמן' (2423) היה/הייתה מצוות/ת למארח/ת מוטי שקד (6548). בצד של המארחים הוא/היא 17097.")
    h = Host.find(6548)
    h.active_last_year = true
    h.save
    Host.find(9372).comments.create!(user_id: 415, content: "בשנה שעברה, 'שפרה שידלובצקי' (2416) היה/הייתה מצוות/ת למארח/ת דוד גבאי (9372). בצד של המארחים הוא/היא 21738.")
    h = Host.find(9372)
    h.active_last_year = true
    h.save
    Host.find(7026).comments.create!(user_id: 415, content: "בשנה שעברה, 'אפרים לעדן' (2411) היה/הייתה מצוות/ת למארח/ת רויטל זגלשטיין (7026). בצד של המארחים הוא/היא 17597.")
    h = Host.find(7026)
    h.active_last_year = true
    h.save
    Host.find(6915).comments.create!(user_id: 415, content: "בשנה שעברה, 'ראובן קליין' (2020) היה/הייתה מצוות/ת למארח/ת אלי אלבז (6915). בצד של המארחים הוא/היא 17471.")
    h = Host.find(6915)
    h.active_last_year = true
    h.save
    Host.find(7587).comments.create!(user_id: 415, content: "בשנה שעברה, 'גניה בן עזרא' (2420) היה/הייתה מצוות/ת למארח/ת עדי שגיא (7587). בצד של המארחים הוא/היא 18252.")
    h = Host.find(7587)
    h.active_last_year = true
    h.save
    Host.find(6908).comments.create!(user_id: 415, content: "בשנה שעברה, 'צבי שלמוביץ' (2430) היה/הייתה מצוות/ת למארח/ת קמיל אמיר (6908). בצד של המארחים הוא/היא 17464.")
    h = Host.find(6908)
    h.active_last_year = true
    h.save
    Host.find(6681).comments.create!(user_id: 415, content: "בשנה שעברה, 'הדסה חלמיש' (2445) היה/הייתה מצוות/ת למארח/ת טלי פסקל (6681). בצד של המארחים הוא/היא 17225.")
    h = Host.find(6681)
    h.active_last_year = true
    h.save
    Host.find(4340).comments.create!(user_id: 415, content: "בשנה שעברה, 'מירים איתן' (3301) היה/הייתה מצוות/ת למארח/ת רויטל טורג'מן ג'וזף (4340). בצד של המארחים הוא/היא 10557.")
    h = Host.find(4340)
    h.active_last_year = true
    h.save
    Host.find(7686).comments.create!(user_id: 415, content: "בשנה שעברה, 'ברנד סנדובסקי' (2473) היה/הייתה מצוות/ת למארח/ת מיכל צור (7686). בצד של המארחים הוא/היא 18367.")
    h = Host.find(7686)
    h.active_last_year = true
    h.save
    Host.find(8763).comments.create!(user_id: 415, content: "בשנה שעברה, 'מרטין הרשקוביץ' (2427) היה/הייתה מצוות/ת למארח/ת עודד ברזילי (8763). בצד של המארחים הוא/היא 3579.")
    h = Host.find(8763)
    h.active_last_year = true
    h.save
    Host.find(3493).comments.create!(user_id: 415, content: "בשנה שעברה, 'אוגמן לילי' (2456) היה/הייתה מצוות/ת למארח/ת אורי גור דותן (3493). בצד של המארחים הוא/היא 9408.")
    h = Host.find(3493)
    h.active_last_year = true
    h.save
    Host.find(8013).comments.create!(user_id: 415, content: "בשנה שעברה, 'יהודית גוטמן' (2489) היה/הייתה מצוות/ת למארח/ת סיליה גבאי (8013). בצד של המארחים הוא/היא 18747.")
    h = Host.find(8013)
    h.active_last_year = true
    h.save
    Host.find(4506).comments.create!(user_id: 415, content: "בשנה שעברה, 'פולק מירה' (2488) היה/הייתה מצוות/ת למארח/ת יעל שורצברג (4506). בצד של המארחים הוא/היא 10789.")
    h = Host.find(4506)
    h.active_last_year = true
    h.save
    Host.find(7860).comments.create!(user_id: 415, content: "בשנה שעברה, 'יעקב קראוס' (2442) היה/הייתה מצוות/ת למארח/ת זהר יפלח (7860). בצד של המארחים הוא/היא 18566.")
    h = Host.find(7860)
    h.active_last_year = true
    h.save
    Host.find(6942).comments.create!(user_id: 415, content: "בשנה שעברה, 'שמואל באום' (2481) היה/הייתה מצוות/ת למארח/ת אורית נבו (6942). בצד של המארחים הוא/היא 17507.")
    h = Host.find(6942)
    h.active_last_year = true
    h.save
    Host.find(6802).comments.create!(user_id: 415, content: "בשנה שעברה, 'אברהמי ברכה' (2524) היה/הייתה מצוות/ת למארח/ת אורי הררי (6802). בצד של המארחים הוא/היא 17350.")
    h = Host.find(6802)
    h.active_last_year = true
    h.save
    Host.find(7073).comments.create!(user_id: 415, content: "בשנה שעברה, 'אלי צביאלי' (2514) היה/הייתה מצוות/ת למארח/ת טלאור לסרי (7073). בצד של המארחים הוא/היא 17655.")
    h = Host.find(7073)
    h.active_last_year = true
    h.save
    Host.find(2453).comments.create!(user_id: 415, content: "בשנה שעברה, 'שמשון פורר' (1700) היה/הייתה מצוות/ת למארח/ת אמילי שופן (2453). בצד של המארחים הוא/היא 5058.")
    h = Host.find(2453)
    h.active_last_year = true
    h.save
    Host.find(9522).comments.create!(user_id: 415, content: "בשנה שעברה, 'שמואל הרשקוביץ' (2486) היה/הייתה מצוות/ת למארח/ת אנה סומגין (9522). בצד של המארחים הוא/היא 22489.")
    h = Host.find(9522)
    h.active_last_year = true
    h.save
    Host.find(4312).comments.create!(user_id: 415, content: "בשנה שעברה, 'מיכאל ברק' (2498) היה/הייתה מצוות/ת למארח/ת אלדד בר-אלי (4312). בצד של המארחים הוא/היא 5599.")
    h = Host.find(4312)
    h.active_last_year = true
    h.save
    Host.find(4243).comments.create!(user_id: 415, content: "בשנה שעברה, 'נעה מימן' (2429) היה/הייתה מצוות/ת למארח/ת המרכז למנהיגות לב יפו (4243). בצד של המארחים הוא/היא 10440.")
    h = Host.find(4243)
    h.active_last_year = true
    h.save
    Host.find(8276).comments.create!(user_id: 415, content: "בשנה שעברה, 'פרידה ורקשטטל' (2483) היה/הייתה מצוות/ת למארח/ת דנה דוידי (8276). בצד של המארחים הוא/היא 19068.")
    h = Host.find(8276)
    h.active_last_year = true
    h.save
    Host.find(7636).comments.create!(user_id: 415, content: "בשנה שעברה, 'מלכה גילת' (2491) היה/הייתה מצוות/ת למארח/ת אבלין צברי (7636). בצד של המארחים הוא/היא 18314.")
    h = Host.find(7636)
    h.active_last_year = true
    h.save
    Host.find(8942).comments.create!(user_id: 415, content: "בשנה שעברה, 'דוד טייב' (2480) היה/הייתה מצוות/ת למארח/ת מיי שמש (8942). בצד של המארחים הוא/היא 20290.")
    h = Host.find(8942)
    h.active_last_year = true
    h.save
    Host.find(8018).comments.create!(user_id: 415, content: "בשנה שעברה, 'טובה מאיר' (2513) היה/הייתה מצוות/ת למארח/ת מארק ואיבט סורין (8018). בצד של המארחים הוא/היא 18752.")
    h = Host.find(8018)
    h.active_last_year = true
    h.save
    Host.find(9422).comments.create!(user_id: 415, content: "בשנה שעברה, 'לאה גורודצקי' (2536) היה/הייתה מצוות/ת למארח/ת רועי ויינברגר (9422). בצד של המארחים הוא/היא 21978.")
    h = Host.find(9422)
    h.active_last_year = true
    h.save
    Host.find(7900).comments.create!(user_id: 415, content: "בשנה שעברה, 'מיכל שפרנסקי פרידמן' (2418) היה/הייתה מצוות/ת למארח/ת שמרית מועלם (7900). בצד של המארחים הוא/היא 18614.")
    h = Host.find(7900)
    h.active_last_year = true
    h.save
    Host.find(8881).comments.create!(user_id: 415, content: "בשנה שעברה, 'ריבה מנו' (2500) היה/הייתה מצוות/ת למארח/ת אלה טהורלב (8881). בצד של המארחים הוא/היא 5027.")
    h = Host.find(8881)
    h.active_last_year = true
    h.save
    Host.find(1648).comments.create!(user_id: 415, content: "בשנה שעברה, 'ד\"ר ברכה רחמילביץ' (2237) היה/הייתה מצוות/ת למארח/ת נועה שטרן (1648). בצד של המארחים הוא/היא 2460.")
    h = Host.find(1648)
    h.active_last_year = true
    h.save
    Host.find(7405).comments.create!(user_id: 415, content: "בשנה שעברה, 'יצחק לוין' (2521) היה/הייתה מצוות/ת למארח/ת רווית אלמקיאס - חברת TIME TO KNOW (7405). בצד של המארחים הוא/היא 18038.")
    h = Host.find(7405)
    h.active_last_year = true
    h.save
    Host.find(9788).comments.create!(user_id: 415, content: "בשנה שעברה, 'שמואל בונים (מומוס)' (2509) היה/הייתה מצוות/ת למארח/ת אמי (9788). בצד של המארחים הוא/היא 24259.")
    h = Host.find(9788)
    h.active_last_year = true
    h.save
    Host.find(7324).comments.create!(user_id: 415, content: "בשנה שעברה, 'מלכה מלמד' (2374) היה/הייתה מצוות/ת למארח/ת מעין גלבוע (7324). בצד של המארחים הוא/היא 17943.")
    h = Host.find(7324)
    h.active_last_year = true
    h.save
    Host.find(1633).comments.create!(user_id: 415, content: "בשנה שעברה, 'יואל דרורי' (250) היה/הייתה מצוות/ת למארח/ת קהילת 'סוכת שלום' (1633). בצד של המארחים הוא/היא 2430.")
    h = Host.find(1633)
    h.active_last_year = true
    h.save
    Host.find(85).comments.create!(user_id: 415, content: "בשנה שעברה, 'לובה קמרמן' (2558) היה/הייתה מצוות/ת למארח/ת כרמית ארזוני (85). בצד של המארחים הוא/היא 89.")
    h = Host.find(85)
    h.active_last_year = true
    h.save
    Host.find(8471).comments.create!(user_id: 415, content: "בשנה שעברה, 'מוטי אלון' (2542) היה/הייתה מצוות/ת למארח/ת עדי גפן (8471). בצד של המארחים הוא/היא 19398.")
    h = Host.find(8471)
    h.active_last_year = true
    h.save
    Host.find(8497).comments.create!(user_id: 415, content: "בשנה שעברה, 'דניאל נבנצאל' (2543) היה/הייתה מצוות/ת למארח/ת אלישיב הלפר (8497). בצד של המארחים הוא/היא 19426.")
    h = Host.find(8497)
    h.active_last_year = true
    h.save
    Host.find(7121).comments.create!(user_id: 415, content: "בשנה שעברה, 'פליקס ברקן' (206) היה/הייתה מצוות/ת למארח/ת רועי וגנר (7121). בצד של המארחים הוא/היא 17704.")
    h = Host.find(7121)
    h.active_last_year = true
    h.save
    Host.find(8118).comments.create!(user_id: 415, content: "בשנה שעברה, 'משה אשל' (2538) היה/הייתה מצוות/ת למארח/ת גילעד דנן (8118). בצד של המארחים הוא/היא 18862.")
    h = Host.find(8118)
    h.active_last_year = true
    h.save
    Host.find(7741).comments.create!(user_id: 415, content: "בשנה שעברה, 'שרה הר ורדי' (2484) היה/הייתה מצוות/ת למארח/ת פריאל זיגדון (7741). בצד של המארחים הוא/היא 18433.")
    h = Host.find(7741)
    h.active_last_year = true
    h.save
    Host.find(4132).comments.create!(user_id: 415, content: "בשנה שעברה, 'ריטה זילבר' (2525) היה/הייתה מצוות/ת למארח/ת ענבר תורגמן (4132). בצד של המארחים הוא/היא 10303.")
    h = Host.find(4132)
    h.active_last_year = true
    h.save
    Host.find(7725).comments.create!(user_id: 415, content: "בשנה שעברה, 'בתי תורג׳מן' (2566) היה/הייתה מצוות/ת למארח/ת שני סולמי (7725). בצד של המארחים הוא/היא 18416.")
    h = Host.find(7725)
    h.active_last_year = true
    h.save
    Host.find(7306).comments.create!(user_id: 415, content: "בשנה שעברה, 'רחל פיין' (2518) היה/הייתה מצוות/ת למארח/ת הדס פסטר-בכר, קהילת רענן בית שמואלי (7306). בצד של המארחים הוא/היא 17919.")
    h = Host.find(7306)
    h.active_last_year = true
    h.save
    Host.find(8357).comments.create!(user_id: 415, content: "בשנה שעברה, 'חיים גלעד' (2564) היה/הייתה מצוות/ת למארח/ת אבישג בצר (8357). בצד של המארחים הוא/היא 19185.")
    h = Host.find(8357)
    h.active_last_year = true
    h.save
    Host.find(4534).comments.create!(user_id: 415, content: "בשנה שעברה, 'ריטה ג'קובס' (701) היה/הייתה מצוות/ת למארח/ת גדי כלטוב (4534). בצד של המארחים הוא/היא 10825.")
    h = Host.find(4534)
    h.active_last_year = true
    h.save
    Host.find(332).comments.create!(user_id: 415, content: "בשנה שעברה, 'יעל שפיגלר' (2639) היה/הייתה מצוות/ת למארח/ת טלי וגידי הררי (332). בצד של המארחים הוא/היא 362.")
    h = Host.find(332)
    h.active_last_year = true
    h.save
    Host.find(7788).comments.create!(user_id: 415, content: "בשנה שעברה, 'יפים קסלר' (2576) היה/הייתה מצוות/ת למארח/ת עדי צברי (7788). בצד של המארחים הוא/היא 18485.")
    h = Host.find(7788)
    h.active_last_year = true
    h.save
    Host.find(3269).comments.create!(user_id: 415, content: "בשנה שעברה, 'מיכל אמיר' (2650) היה/הייתה מצוות/ת למארח/ת ניצן חכם (3269). בצד של המארחים הוא/היא 9151.")
    h = Host.find(3269)
    h.active_last_year = true
    h.save
    Host.find(7789).comments.create!(user_id: 415, content: "בשנה שעברה, 'הנרי למברגר - לא לצוות 2017' (1625) היה/הייתה מצוות/ת למארח/ת אביגיל ביילי (7789). בצד של המארחים הוא/היא 18487.")
    h = Host.find(7789)
    h.active_last_year = true
    h.save
    Host.find(6875).comments.create!(user_id: 415, content: "בשנה שעברה, 'צביה גולן' (2636) היה/הייתה מצוות/ת למארח/ת אייל פינטו (6875). בצד של המארחים הוא/היא 17431.")
    h = Host.find(6875)
    h.active_last_year = true
    h.save
    Host.find(6679).comments.create!(user_id: 415, content: "בשנה שעברה, 'מרטה גורן' (2647) היה/הייתה מצוות/ת למארח/ת טלי בלומנטל (6679). בצד של המארחים הוא/היא 17223.")
    h = Host.find(6679)
    h.active_last_year = true
    h.save
    Host.find(751).comments.create!(user_id: 415, content: "בשנה שעברה, 'רבקה חברוני' (2548) היה/הייתה מצוות/ת למארח/ת מעיין רודן (751). בצד של המארחים הוא/היא 804.")
    h = Host.find(751)
    h.active_last_year = true
    h.save
    Host.find(9496).comments.create!(user_id: 415, content: "בשנה שעברה, 'מאיר דויטש' (3305) היה/הייתה מצוות/ת למארח/ת זהר שוק (9496). בצד של המארחים הוא/היא 22400.")
    h = Host.find(9496)
    h.active_last_year = true
    h.save
    Host.find(5020).comments.create!(user_id: 415, content: "בשנה שעברה, 'רחל קרט' (2597) היה/הייתה מצוות/ת למארח/ת מוטי קרמר (5020). בצד של המארחים הוא/היא 11570.")
    h = Host.find(5020)
    h.active_last_year = true
    h.save
    Host.find(6950).comments.create!(user_id: 415, content: "בשנה שעברה, 'קוקין פאינה' (2586) היה/הייתה מצוות/ת למארח/ת ורדה קורן (6950). בצד של המארחים הוא/היא 17516.")
    h = Host.find(6950)
    h.active_last_year = true
    h.save
    Host.find(6967).comments.create!(user_id: 415, content: "בשנה שעברה, 'טרקנוב שרה' (2614) היה/הייתה מצוות/ת למארח/ת שירלי (6967). בצד של המארחים הוא/היא 17534.")
    h = Host.find(6967)
    h.active_last_year = true
    h.save
    Host.find(7692).comments.create!(user_id: 415, content: "בשנה שעברה, 'ג'וזף שרייבר' (1628) היה/הייתה מצוות/ת למארח/ת שושנה זיגלמן (7692). בצד של המארחים הוא/היא 15991.")
    h = Host.find(7692)
    h.active_last_year = true
    h.save
    Host.find(9513).comments.create!(user_id: 415, content: "בשנה שעברה, 'נעמי משיח' (2606) היה/הייתה מצוות/ת למארח/ת זיוה גינוסר (9513). בצד של המארחים הוא/היא 22461.")
    h = Host.find(9513)
    h.active_last_year = true
    h.save
    Host.find(4752).comments.create!(user_id: 415, content: "בשנה שעברה, 'הדסה קליימן' (2596) היה/הייתה מצוות/ת למארח/ת אמילי שופן וגל פרידמן (4752). בצד של המארחים הוא/היא 11114.")
    h = Host.find(4752)
    h.active_last_year = true
    h.save
    Host.find(7450).comments.create!(user_id: 415, content: "בשנה שעברה, 'פרידה אלזנר' (2600) היה/הייתה מצוות/ת למארח/ת אפרת חובב (7450). בצד של המארחים הוא/היא 18090.")
    h = Host.find(7450)
    h.active_last_year = true
    h.save
    Host.find(4617).comments.create!(user_id: 415, content: "בשנה שעברה, 'יהודית פישל' (2612) היה/הייתה מצוות/ת למארח/ת מורן רם (4617). בצד של המארחים הוא/היא 10940.")
    h = Host.find(4617)
    h.active_last_year = true
    h.save
    Host.find(5694).comments.create!(user_id: 415, content: "בשנה שעברה, 'מינה שרגאי' (5) היה/הייתה מצוות/ת למארח/ת עדי מויאל (5694). בצד של המארחים הוא/היא 7494.")
    h = Host.find(5694)
    h.active_last_year = true
    h.save
    Host.find(8811).comments.create!(user_id: 415, content: "בשנה שעברה, 'יהודה זילברשטרס' (972) היה/הייתה מצוות/ת למארח/ת רינת גבאי (8811). בצד של המארחים הוא/היא 19986.")
    h = Host.find(8811)
    h.active_last_year = true
    h.save
    Host.find(7240).comments.create!(user_id: 415, content: "בשנה שעברה, 'מאירה אור-לבן' (2605) היה/הייתה מצוות/ת למארח/ת רוני טרוסטלר קרניאל (7240). בצד של המארחים הוא/היא 17836.")
    h = Host.find(7240)
    h.active_last_year = true
    h.save
    Host.find(7957).comments.create!(user_id: 415, content: "בשנה שעברה, 'רחל פיקסלר' (3304) היה/הייתה מצוות/ת למארח/ת דניאל פרידמן (7957). בצד של המארחים הוא/היא 18682.")
    h = Host.find(7957)
    h.active_last_year = true
    h.save
    Host.find(8576).comments.create!(user_id: 415, content: "בשנה שעברה, 'מרדכי נוימן' (2604) היה/הייתה מצוות/ת למארח/ת יעל ליבוביץ (8576). בצד של המארחים הוא/היא 19550.")
    h = Host.find(8576)
    h.active_last_year = true
    h.save
    Host.find(7666).comments.create!(user_id: 415, content: "בשנה שעברה, 'בטי שמואלי' (2601) היה/הייתה מצוות/ת למארח/ת יוסי מארי (מרכז צעירים בת-ים) (7666). בצד של המארחים הוא/היא 18346.")
    h = Host.find(7666)
    h.active_last_year = true
    h.save
    Host.find(6926).comments.create!(user_id: 415, content: "בשנה שעברה, 'איצקוביץ' מלכה' (2603) היה/הייתה מצוות/ת למארח/ת הילה נוימן (6926). בצד של המארחים הוא/היא 17482.")
    h = Host.find(6926)
    h.active_last_year = true
    h.save
    Host.find(7782).comments.create!(user_id: 415, content: "בשנה שעברה, 'אייל מעוז' (2594) היה/הייתה מצוות/ת למארח/ת מרכז קהילתי רמת ישראל- ביצרון (7782). בצד של המארחים הוא/היא 18480.")
    h = Host.find(7782)
    h.active_last_year = true
    h.save
    Host.find(8778).comments.create!(user_id: 415, content: "בשנה שעברה, 'חנה מרון' (2618) היה/הייתה מצוות/ת למארח/ת תמר כהן (8778). בצד של המארחים הוא/היא 19912.")
    h = Host.find(8778)
    h.active_last_year = true
    h.save
    Host.find(6545).comments.create!(user_id: 415, content: "בשנה שעברה, 'יעל שפירא' (2607) היה/הייתה מצוות/ת למארח/ת יונית רימון (6545). בצד של המארחים הוא/היא 17094.")
    h = Host.find(6545)
    h.active_last_year = true
    h.save
    Host.find(6526).comments.create!(user_id: 415, content: "בשנה שעברה, 'דורה קופר' (2599) היה/הייתה מצוות/ת למארח/ת שרון גל-עמותת אנוש ראשל\"צ (6526). בצד של המארחים הוא/היא 17073.")
    h = Host.find(6526)
    h.active_last_year = true
    h.save
    Host.find(4201).comments.create!(user_id: 415, content: "בשנה שעברה, 'רות צימרמן' (2593) היה/הייתה מצוות/ת למארח/ת לילך גדול (4201). בצד של המארחים הוא/היא 10394.")
    h = Host.find(4201)
    h.active_last_year = true
    h.save
    Host.find(7801).comments.create!(user_id: 415, content: "בשנה שעברה, 'דיויד הנדקנופף' (2602) היה/הייתה מצוות/ת למארח/ת יונה סטוקי (7801). בצד של המארחים הוא/היא 18500.")
    h = Host.find(7801)
    h.active_last_year = true
    h.save
    Host.find(8101).comments.create!(user_id: 415, content: "בשנה שעברה, 'גבי מעיני' (2634) היה/הייתה מצוות/ת למארח/ת גיל ינאי (8101). בצד של המארחים הוא/היא 12377.")
    h = Host.find(8101)
    h.active_last_year = true
    h.save
    Host.find(6366).comments.create!(user_id: 415, content: "בשנה שעברה, 'סנדלר עמי' (2635) היה/הייתה מצוות/ת למארח/ת מעין ברנע זהר (6366). בצד של המארחים הוא/היא 16815.")
    h = Host.find(6366)
    h.active_last_year = true
    h.save
    Host.find(8393).comments.create!(user_id: 415, content: "בשנה שעברה, 'זכר אברמזון' (1336) היה/הייתה מצוות/ת למארח/ת יעקב ספיר (8393). בצד של המארחים הוא/היא 19241.")
    h = Host.find(8393)
    h.active_last_year = true
    h.save
    Host.find(7739).comments.create!(user_id: 415, content: "בשנה שעברה, 'רחל ליפשיץ' (2623) היה/הייתה מצוות/ת למארח/ת נאהב ידעי (7739). בצד של המארחים הוא/היא 18431.")
    h = Host.find(7739)
    h.active_last_year = true
    h.save
    Host.find(4012).comments.create!(user_id: 415, content: "בשנה שעברה, 'היימנס יהודית' (2628) היה/הייתה מצוות/ת למארח/ת נמרוד שאולסקי (4012). בצד של המארחים הוא/היא 10153.")
    h = Host.find(4012)
    h.active_last_year = true
    h.save
    Host.find(6579).comments.create!(user_id: 415, content: "בשנה שעברה, 'שרה רבקה וייץ' (2637) היה/הייתה מצוות/ת למארח/ת חנה ועמוס להמן (6579). בצד של המארחים הוא/היא 17126.")
    h = Host.find(6579)
    h.active_last_year = true
    h.save
    Host.find(3972).comments.create!(user_id: 415, content: "בשנה שעברה, 'אסתר ויטקו' (2663) היה/הייתה מצוות/ת למארח/ת אהוד אסגלי (3972). בצד של המארחים הוא/היא 10107.")
    h = Host.find(3972)
    h.active_last_year = true
    h.save
    Host.find(6532).comments.create!(user_id: 415, content: "בשנה שעברה, 'רות מיטלמן' (2617) היה/הייתה מצוות/ת למארח/ת ענבר שגיא (6532). בצד של המארחים הוא/היא 17077.")
    h = Host.find(6532)
    h.active_last_year = true
    h.save
    Host.find(6935).comments.create!(user_id: 415, content: "בשנה שעברה, 'אסתר כץ' (2642) היה/הייתה מצוות/ת למארח/ת רביד אליהו (6935). בצד של המארחים הוא/היא 17497.")
    h = Host.find(6935)
    h.active_last_year = true
    h.save
    Host.find(6626).comments.create!(user_id: 415, content: "בשנה שעברה, 'מריאן סוחר' (2620) היה/הייתה מצוות/ת למארח/ת אושרית רוזמרין (6626). בצד של המארחים הוא/היא 17171.")
    h = Host.find(6626)
    h.active_last_year = true
    h.save
    Host.find(3016).comments.create!(user_id: 415, content: "בשנה שעברה, 'ורד גולדמן' (2622) היה/הייתה מצוות/ת למארח/ת בית הנוער קדימה גבעת אולגה (3016). בצד של המארחים הוא/היא 8898.")
    h = Host.find(3016)
    h.active_last_year = true
    h.save
    Host.find(9806).comments.create!(user_id: 415, content: "בשנה שעברה, 'דורית מונדרר' (2629) היה/הייתה מצוות/ת למארח/ת טלי (9806). בצד של המארחים הוא/היא 24394.")
    h = Host.find(9806)
    h.active_last_year = true
    h.save
    Host.find(8097).comments.create!(user_id: 415, content: "בשנה שעברה, 'צבי אורים' (2640) היה/הייתה מצוות/ת למארח/ת יניר ורחלי פינקר (8097). בצד של המארחים הוא/היא 18842.")
    h = Host.find(8097)
    h.active_last_year = true
    h.save
    Host.find(6697).comments.create!(user_id: 415, content: "בשנה שעברה, 'מיכאל בראון' (2641) היה/הייתה מצוות/ת למארח/ת שירה גולובינסקי (6697). בצד של המארחים הוא/היא 17240.")
    h = Host.find(6697)
    h.active_last_year = true
    h.save
    Host.find(3383).comments.create!(user_id: 415, content: "בשנה שעברה, 'ד\"ר ליאור אלפרוביץ' (2651) היה/הייתה מצוות/ת למארח/ת אוריה טיברגר (3383). בצד של המארחים הוא/היא 9272.")
    h = Host.find(3383)
    h.active_last_year = true
    h.save
    Host.find(9233).comments.create!(user_id: 415, content: "בשנה שעברה, 'משה הולשטיין' (2631) היה/הייתה מצוות/ת למארח/ת שמעונוביץ שרה (9233). בצד של המארחים הוא/היא 21233.")
    h = Host.find(9233)
    h.active_last_year = true
    h.save
    Host.find(8162).comments.create!(user_id: 415, content: "בשנה שעברה, 'יהודה (הודי) ליברמן' (2627) היה/הייתה מצוות/ת למארח/ת פנינה עזריאל (8162). בצד של המארחים הוא/היא 18930.")
    h = Host.find(8162)
    h.active_last_year = true
    h.save
    Host.find(8057).comments.create!(user_id: 415, content: "בשנה שעברה, 'רותי אברהם' (2646) היה/הייתה מצוות/ת למארח/ת רחל אבקסיס (8057). בצד של המארחים הוא/היא 18792.")
    h = Host.find(8057)
    h.active_last_year = true
    h.save
    Host.find(9336).comments.create!(user_id: 415, content: "בשנה שעברה, 'יעקב ליפקוביץ'' (3246) היה/הייתה מצוות/ת למארח/ת ליאור בן סימון (9336). בצד של המארחים הוא/היא 21584.")
    h = Host.find(9336)
    h.active_last_year = true
    h.save
    Host.find(7584).comments.create!(user_id: 415, content: "בשנה שעברה, 'חוי רוזנברג' (2645) היה/הייתה מצוות/ת למארח/ת אהרון שרייבר (7584). בצד של המארחים הוא/היא 18249.")
    h = Host.find(7584)
    h.active_last_year = true
    h.save
    Host.find(6528).comments.create!(user_id: 415, content: "בשנה שעברה, 'מיכל דונסקי' (2300) היה/הייתה מצוות/ת למארח/ת מבל ארצי (6528). בצד של המארחים הוא/היא 17075.")
    h = Host.find(6528)
    h.active_last_year = true
    h.save
    Host.find(9388).comments.create!(user_id: 415, content: "בשנה שעברה, 'חריטון גרינבלת' (2665) היה/הייתה מצוות/ת למארח/ת שומר  שרגא (9388). בצד של המארחים הוא/היא 21800.")
    h = Host.find(9388)
    h.active_last_year = true
    h.save
    Host.find(584).comments.create!(user_id: 415, content: "בשנה שעברה, 'יעקב באומן' (2657) היה/הייתה מצוות/ת למארח/ת מעין מירצ'ין (584). בצד של המארחים הוא/היא 633.")
    h = Host.find(584)
    h.active_last_year = true
    h.save
    Host.find(2953).comments.create!(user_id: 415, content: "בשנה שעברה, 'פנינה קראוס' (540) היה/הייתה מצוות/ת למארח/ת דקלה יונה (2953). בצד של המארחים הוא/היא 8841.")
    h = Host.find(2953)
    h.active_last_year = true
    h.save
    Host.find(8831).comments.create!(user_id: 415, content: "בשנה שעברה, 'ברוריה פלדשטיין' (1993) היה/הייתה מצוות/ת למארח/ת מעיין זמיר (8831). בצד של המארחים הוא/היא 20038.")
    h = Host.find(8831)
    h.active_last_year = true
    h.save
    Host.find(8829).comments.create!(user_id: 415, content: "בשנה שעברה, 'דורית בן זאב' (247) היה/הייתה מצוות/ת למארח/ת שירן עטרי (8829). בצד של המארחים הוא/היא 20029.")
    h = Host.find(8829)
    h.active_last_year = true
    h.save
    Host.find(9764).comments.create!(user_id: 415, content: "בשנה שעברה, 'אלימלך רוט' (1131) היה/הייתה מצוות/ת למארח/ת שלומי אבוטבול (9764). בצד של המארחים הוא/היא 23943.")
    h = Host.find(9764)
    h.active_last_year = true
    h.save
    Host.find(9438).comments.create!(user_id: 415, content: "בשנה שעברה, 'אסתי אדלר' (2086) היה/הייתה מצוות/ת למארח/ת שרה לינדר להב (9438). בצד של המארחים הוא/היא 22084.")
    h = Host.find(9438)
    h.active_last_year = true
    h.save
    Host.find(8131).comments.create!(user_id: 415, content: "בשנה שעברה, 'אסתי ליבר' (1040) היה/הייתה מצוות/ת למארח/ת כפר הסטודנטים (8131). בצד של המארחים הוא/היא 18879.")
    h = Host.find(8131)
    h.active_last_year = true
    h.save
    Host.find(4598).comments.create!(user_id: 415, content: "בשנה שעברה, 'דבורה רם' (2894) היה/הייתה מצוות/ת למארח/ת מרטה סיני (4598). בצד של המארחים הוא/היא 10918.")
    h = Host.find(4598)
    h.active_last_year = true
    h.save
    Host.find(7391).comments.create!(user_id: 415, content: "בשנה שעברה, 'אסתר ריכטמן' (1575) היה/הייתה מצוות/ת למארח/ת טל מיבלט ארגון נוער לתת סניף קרית גת (7391). בצד של המארחים הוא/היא 18023.")
    h = Host.find(7391)
    h.active_last_year = true
    h.save
    Host.find(7284).comments.create!(user_id: 415, content: "בשנה שעברה, 'מרתה כהן' (1009) היה/הייתה מצוות/ת למארח/ת הדר דהן (7284). בצד של המארחים הוא/היא 17891.")
    h = Host.find(7284)
    h.active_last_year = true
    h.save
    Host.find(6861).comments.create!(user_id: 415, content: "בשנה שעברה, 'מנה חלפון' (2038) היה/הייתה מצוות/ת למארח/ת יונתן שילר (6861). בצד של המארחים הוא/היא 17417.")
    h = Host.find(6861)
    h.active_last_year = true
    h.save
    Host.find(8046).comments.create!(user_id: 415, content: "בשנה שעברה, 'דינה חיון' (189) היה/הייתה מצוות/ת למארח/ת אורית למפל (8046). בצד של המארחים הוא/היא 18779.")
    h = Host.find(8046)
    h.active_last_year = true
    h.save
    Host.find(7868).comments.create!(user_id: 415, content: "בשנה שעברה, 'רגינה טבל וצבי' (378) היה/הייתה מצוות/ת למארח/ת הילה הובר (7868). בצד של המארחים הוא/היא 18574.")
    h = Host.find(7868)
    h.active_last_year = true
    h.save
    Host.find(5349).comments.create!(user_id: 415, content: "בשנה שעברה, 'גיל הדני' (3306) היה/הייתה מצוות/ת למארח/ת טל אביטן (5349). בצד של המארחים הוא/היא 12244.")
    h = Host.find(5349)
    h.active_last_year = true
    h.save
    Host.find(4435).comments.create!(user_id: 415, content: "בשנה שעברה, 'נתן (נתי) כהן (פרופ')' (2033) היה/הייתה מצוות/ת למארח/ת אביתר שמוע (4435). בצד של המארחים הוא/היא 10692.")
    h = Host.find(4435)
    h.active_last_year = true
    h.save
    Host.find(7068).comments.create!(user_id: 415, content: "בשנה שעברה, 'אהרון אופן' (396) היה/הייתה מצוות/ת למארח/ת מיה פלפלי (7068). בצד של המארחים הוא/היא 17649.")
    h = Host.find(7068)
    h.active_last_year = true
    h.save
    Host.find(7136).comments.create!(user_id: 415, content: "בשנה שעברה, 'אריה לוב' (2268) היה/הייתה מצוות/ת למארח/ת דוריה אור (7136). בצד של המארחים הוא/היא 17721.")
    h = Host.find(7136)
    h.active_last_year = true
    h.save
    Host.find(6668).comments.create!(user_id: 415, content: "בשנה שעברה, 'אוולין המרשלג' (1601) היה/הייתה מצוות/ת למארח/ת עדן נאור (6668). בצד של המארחים הוא/היא 17212.")
    h = Host.find(6668)
    h.active_last_year = true
    h.save
    Host.find(8987).comments.create!(user_id: 415, content: "בשנה שעברה, 'ברכה שרף אלון' (553) היה/הייתה מצוות/ת למארח/ת רוני שריר (8987). בצד של המארחים הוא/היא 20404.")
    h = Host.find(8987)
    h.active_last_year = true
    h.save
    Host.find(7864).comments.create!(user_id: 415, content: "בשנה שעברה, 'רינה רוטברג' (162) היה/הייתה מצוות/ת למארח/ת כרמל בן חורין (7864). בצד של המארחים הוא/היא 18570.")
    h = Host.find(7864)
    h.active_last_year = true
    h.save
    Host.find(3451).comments.create!(user_id: 415, content: "בשנה שעברה, 'נעמי איזק' (513) היה/הייתה מצוות/ת למארח/ת עדי גרינברג (3451). בצד של המארחים הוא/היא 9354.")
    h = Host.find(3451)
    h.active_last_year = true
    h.save
    Host.find(8688).comments.create!(user_id: 415, content: "בשנה שעברה, 'מרדכי מנדלסון' (492) היה/הייתה מצוות/ת למארח/ת דביר בן חיים (8688). בצד של המארחים הוא/היא 19738.")
    h = Host.find(8688)
    h.active_last_year = true
    h.save
    Host.find(3904).comments.create!(user_id: 415, content: "בשנה שעברה, 'מקס מדר' (2071) היה/הייתה מצוות/ת למארח/ת שני בונה עמיחי (3904). בצד של המארחים הוא/היא 10000.")
    h = Host.find(3904)
    h.active_last_year = true
    h.save
    Host.find(5624).comments.create!(user_id: 415, content: "בשנה שעברה, 'מלכה סולומון' (524) היה/הייתה מצוות/ת למארח/ת אורטל (5624). בצד של המארחים הוא/היא 12807.")
    h = Host.find(5624)
    h.active_last_year = true
    h.save
    Host.find(7320).comments.create!(user_id: 415, content: "בשנה שעברה, 'לריסה ליטבק' (494) היה/הייתה מצוות/ת למארח/ת ליאת מימון (7320). בצד של המארחים הוא/היא 17934.")
    h = Host.find(7320)
    h.active_last_year = true
    h.save
    Host.find(7147).comments.create!(user_id: 415, content: "בשנה שעברה, 'דוד מצגר' (451) היה/הייתה מצוות/ת למארח/ת רן בנדר (7147). בצד של המארחים הוא/היא 17732.")
    h = Host.find(7147)
    h.active_last_year = true
    h.save
    Host.find(7665).comments.create!(user_id: 415, content: "בשנה שעברה, 'אורנה רוטנברג' (1072) היה/הייתה מצוות/ת למארח/ת חגית שגב (7665). בצד של המארחים הוא/היא 18345.")
    h = Host.find(7665)
    h.active_last_year = true
    h.save
    Host.find(8222).comments.create!(user_id: 415, content: "בשנה שעברה, 'ז'אק קנו' (552) היה/הייתה מצוות/ת למארח/ת נועה יודיצקי (מכינת גל) (8222). בצד של המארחים הוא/היא 19007.")
    h = Host.find(8222)
    h.active_last_year = true
    h.save
    Host.find(5614).comments.create!(user_id: 415, content: "בשנה שעברה, 'חנה הוכשטיין' (2088) היה/הייתה מצוות/ת למארח/ת חן אברהם (5614). בצד של המארחים הוא/היא 12779.")
    h = Host.find(5614)
    h.active_last_year = true
    h.save
    Host.find(351).comments.create!(user_id: 415, content: "בשנה שעברה, 'אנה סלעי' (1881) היה/הייתה מצוות/ת למארח/ת גל בן - דור (351). בצד של המארחים הוא/היא 382.")
    h = Host.find(351)
    h.active_last_year = true
    h.save
    Host.find(7341).comments.create!(user_id: 415, content: "בשנה שעברה, 'יהודית רותם' (744) היה/הייתה מצוות/ת למארח/ת ניצה לויט (7341). בצד של המארחים הוא/היא 17962.")
    h = Host.find(7341)
    h.active_last_year = true
    h.save
    Host.find(7444).comments.create!(user_id: 415, content: "בשנה שעברה, 'מרים סיגלובסקי' (638) היה/הייתה מצוות/ת למארח/ת מאי דגן (7444). בצד של המארחים הוא/היא 18084.")
    h = Host.find(7444)
    h.active_last_year = true
    h.save
    Host.find(4411).comments.create!(user_id: 415, content: "בשנה שעברה, 'ברוריה קליין' (548) היה/הייתה מצוות/ת למארח/ת ברק כוכבי (4411). בצד של המארחים הוא/היא 10659.")
    h = Host.find(4411)
    h.active_last_year = true
    h.save
    Host.find(1215).comments.create!(user_id: 415, content: "בשנה שעברה, 'ורדה שפייזר' (1857) היה/הייתה מצוות/ת למארח/ת עדיה פרץ (1215). בצד של המארחים הוא/היא 1545.")
    h = Host.find(1215)
    h.active_last_year = true
    h.save
    Host.find(7446).comments.create!(user_id: 415, content: "בשנה שעברה, 'אריה תמיר' (1634) היה/הייתה מצוות/ת למארח/ת חן כהן (7446). בצד של המארחים הוא/היא 18086.")
    h = Host.find(7446)
    h.active_last_year = true
    h.save
    Host.find(924).comments.create!(user_id: 415, content: "בשנה שעברה, 'יוסף קליימן' (582) היה/הייתה מצוות/ת למארח/ת יובל מלחי (924). בצד של המארחים הוא/היא 999.")
    h = Host.find(924)
    h.active_last_year = true
    h.save
    Host.find(8627).comments.create!(user_id: 415, content: "בשנה שעברה, 'רחל הרצל' (2066) היה/הייתה מצוות/ת למארח/ת עמית אפרתי (8627). בצד של המארחים הוא/היא 19625.")
    h = Host.find(8627)
    h.active_last_year = true
    h.save
    Host.find(6558).comments.create!(user_id: 415, content: "בשנה שעברה, 'שלמה אדלר' (597) היה/הייתה מצוות/ת למארח/ת מרכז קיפוד- קרן (6558). בצד של המארחים הוא/היא 17106.")
    h = Host.find(6558)
    h.active_last_year = true
    h.save
    Host.find(7836).comments.create!(user_id: 415, content: "בשנה שעברה, 'ראובן דרורי' (208) היה/הייתה מצוות/ת למארח/ת מירב פישר (7836). בצד של המארחים הוא/היא 18536.")
    h = Host.find(7836)
    h.active_last_year = true
    h.save
    Host.find(7563).comments.create!(user_id: 415, content: "בשנה שעברה, 'יהודית שבתאי' (649) היה/הייתה מצוות/ת למארח/ת יעל גלברד (7563). בצד של המארחים הוא/היא 18220.")
    h = Host.find(7563)
    h.active_last_year = true
    h.save
    Host.find(8463).comments.create!(user_id: 415, content: "בשנה שעברה, 'יניב פוריה' (1940) היה/הייתה מצוות/ת למארח/ת שיר גלימידי (8463). בצד של המארחים הוא/היא 19386.")
    h = Host.find(8463)
    h.active_last_year = true
    h.save
    Host.find(7193).comments.create!(user_id: 415, content: "בשנה שעברה, 'סילבן ברכפלד' (1315) היה/הייתה מצוות/ת למארח/ת נועה שוויקי בשם השגרירות הבריטית (7193). בצד של המארחים הוא/היא 17784.")
    h = Host.find(7193)
    h.active_last_year = true
    h.save
    Host.find(7966).comments.create!(user_id: 415, content: "בשנה שעברה, 'סימה שמילוביץ' (2224) היה/הייתה מצוות/ת למארח/ת לירון לביא (7966). בצד של המארחים הוא/היא 18693.")
    h = Host.find(7966)
    h.active_last_year = true
    h.save
    Host.find(7964).comments.create!(user_id: 415, content: "בשנה שעברה, 'יהודית אשריאל' (988) היה/הייתה מצוות/ת למארח/ת מאיה סגל לבקוביץ (7964). בצד של המארחים הוא/היא 18691.")
    h = Host.find(7964)
    h.active_last_year = true
    h.save
    Host.find(8489).comments.create!(user_id: 415, content: "בשנה שעברה, 'מיכאל אדם' (842) היה/הייתה מצוות/ת למארח/ת איגור רונין (8489). בצד של המארחים הוא/היא 19418.")
    h = Host.find(8489)
    h.active_last_year = true
    h.save
    Host.find(8582).comments.create!(user_id: 415, content: "בשנה שעברה, 'גורקא שאול' (515) היה/הייתה מצוות/ת למארח/ת אלינור פרידמן (8582). בצד של המארחים הוא/היא 19559.")
    h = Host.find(8582)
    h.active_last_year = true
    h.save
    Host.find(207).comments.create!(user_id: 415, content: "בשנה שעברה, 'ד\"ר משה שוורץ' (468) היה/הייתה מצוות/ת למארח/ת חוה ניקחה (207). בצד של המארחים הוא/היא 211.")
    h = Host.find(207)
    h.active_last_year = true
    h.save
    Host.find(5384).comments.create!(user_id: 415, content: "בשנה שעברה, 'אדית זק' (930) היה/הייתה מצוות/ת למארח/ת אלה סנה (5384). בצד של המארחים הוא/היא 12304.")
    h = Host.find(5384)
    h.active_last_year = true
    h.save
    Host.find(9009).comments.create!(user_id: 415, content: "בשנה שעברה, 'צבי גיל' (1174) היה/הייתה מצוות/ת למארח/ת עיריית תל אביב יפו - לשכת רון חולדאי (9009). בצד של המארחים הוא/היא 20489.")
    h = Host.find(9009)
    h.active_last_year = true
    h.save
    Host.find(6750).comments.create!(user_id: 415, content: "בשנה שעברה, 'אורית רז' (1788) היה/הייתה מצוות/ת למארח/ת שמי מיה גרין. רוצה לקיים מפגש בחברה בה אני עובדת Stratoscale (6750). בצד של המארחים הוא/היא 17294.")
    h = Host.find(6750)
    h.active_last_year = true
    h.save
    Host.find(7070).comments.create!(user_id: 415, content: "בשנה שעברה, 'איטה אסיף' (521) היה/הייתה מצוות/ת למארח/ת מרסל אפרת כהן (7070). בצד של המארחים הוא/היא 17651.")
    h = Host.find(7070)
    h.active_last_year = true
    h.save
    Host.find(7185).comments.create!(user_id: 415, content: "בשנה שעברה, 'רוברט רפאל (רפי)' (731) היה/הייתה מצוות/ת למארח/ת שני אליהו (7185). בצד של המארחים הוא/היא 17775.")
    h = Host.find(7185)
    h.active_last_year = true
    h.save
    Host.find(8312).comments.create!(user_id: 415, content: "בשנה שעברה, 'דורית חן' (3307) היה/הייתה מצוות/ת למארח/ת שירה ליבנה (8312). בצד של המארחים הוא/היא 19130.")
    h = Host.find(8312)
    h.active_last_year = true
    h.save
    Host.find(7894).comments.create!(user_id: 415, content: "בשנה שעברה, 'ציפי אוריאל' (290) היה/הייתה מצוות/ת למארח/ת לירון אדוק (7894). בצד של המארחים הוא/היא 18607.")
    h = Host.find(7894)
    h.active_last_year = true
    h.save
    Host.find(8551).comments.create!(user_id: 415, content: "בשנה שעברה, 'מנחם טאוב' (602) היה/הייתה מצוות/ת למארח/ת לימור קורנגוט (8551). בצד של המארחים הוא/היא 19518.")
    h = Host.find(8551)
    h.active_last_year = true
    h.save
    Host.find(8529).comments.create!(user_id: 415, content: "בשנה שעברה, 'שלמה פרנקל' (3308) היה/הייתה מצוות/ת למארח/ת הדר (8529). בצד של המארחים הוא/היא 6637.")
    h = Host.find(8529)
    h.active_last_year = true
    h.save
    Host.find(8397).comments.create!(user_id: 415, content: "בשנה שעברה, 'שמחה יוקלה' (2363) היה/הייתה מצוות/ת למארח/ת מירב עוזרי (8397). בצד של המארחים הוא/היא 19250.")
    h = Host.find(8397)
    h.active_last_year = true
    h.save
    Host.find(7090).comments.create!(user_id: 415, content: "בשנה שעברה, 'יוסי בוייר' (2365) היה/הייתה מצוות/ת למארח/ת אדל בוסביב (7090). בצד של המארחים הוא/היא 17672.")
    h = Host.find(7090)
    h.active_last_year = true
    h.save
    Host.find(7707).comments.create!(user_id: 415, content: "בשנה שעברה, 'חוה לוסטיג' (2391) היה/הייתה מצוות/ת למארח/ת חנה ילוז (7707). בצד של המארחים הוא/היא 18395.")
    h = Host.find(7707)
    h.active_last_year = true
    h.save
    Host.find(6281).comments.create!(user_id: 415, content: "בשנה שעברה, 'אלי מנדל' (1170) היה/הייתה מצוות/ת למארח/ת הילה פרידמן (6281). בצד של המארחים הוא/היא 15978.")
    h = Host.find(6281)
    h.active_last_year = true
    h.save
    Host.find(6529).comments.create!(user_id: 415, content: "בשנה שעברה, 'אילנה דרוקר' (2700) היה/הייתה מצוות/ת למארח/ת קמי ברמלי (6529). בצד של המארחים הוא/היא 17076.")
    h = Host.find(6529)
    h.active_last_year = true
    h.save
    Host.find(7338).comments.create!(user_id: 415, content: "בשנה שעברה, 'אלי קינדלר' (2379) היה/הייתה מצוות/ת למארח/ת אורלי אדלרסברג (7338). בצד של המארחים הוא/היא 17959.")
    h = Host.find(7338)
    h.active_last_year = true
    h.save
    Host.find(6857).comments.create!(user_id: 415, content: "בשנה שעברה, 'פרנקל יחיאל' (2361) היה/הייתה מצוות/ת למארח/ת מכינת אדרת (6857). בצד של המארחים הוא/היא 17413.")
    h = Host.find(6857)
    h.active_last_year = true
    h.save
    Host.find(6497).comments.create!(user_id: 415, content: "בשנה שעברה, 'מישי שטרנברג' (2362) היה/הייתה מצוות/ת למארח/ת זיו אייזנברג (6497). בצד של המארחים הוא/היא 17047.")
    h = Host.find(6497)
    h.active_last_year = true
    h.save
    Host.find(7278).comments.create!(user_id: 415, content: "בשנה שעברה, 'חנה שוורץ' (1358) היה/הייתה מצוות/ת למארח/ת מתנאל (7278). בצד של המארחים הוא/היא 17885.")
    h = Host.find(7278)
    h.active_last_year = true
    h.save
    Host.find(5638).comments.create!(user_id: 415, content: "בשנה שעברה, 'נחום פנחס ויורלנה' (2393) היה/הייתה מצוות/ת למארח/ת רותם שוקרון (5638). בצד של המארחים הוא/היא 12838.")
    h = Host.find(5638)
    h.active_last_year = true
    h.save
    Host.find(6221).comments.create!(user_id: 415, content: "בשנה שעברה, 'יעקב פיליפסון ערמון' (2376) היה/הייתה מצוות/ת למארח/ת לירון קקו\"ן (6221). בצד של המארחים הוא/היא 15443.")
    h = Host.find(6221)
    h.active_last_year = true
    h.save
    Host.find(9464).comments.create!(user_id: 415, content: "בשנה שעברה, 'דוד הרשקוביץ' (2364) היה/הייתה מצוות/ת למארח/ת תמר קוזר (9464). בצד של המארחים הוא/היא 6122.")
    h = Host.find(9464)
    h.active_last_year = true
    h.save
    Host.find(4136).comments.create!(user_id: 415, content: "בשנה שעברה, 'יואל קפלן' (2384) היה/הייתה מצוות/ת למארח/ת מרכז קהילתי פלורנטין (4136). בצד של המארחים הוא/היא 10307.")
    h = Host.find(4136)
    h.active_last_year = true
    h.save
    Host.find(7886).comments.create!(user_id: 415, content: "בשנה שעברה, 'אדוארד יאנקובסקי' (2582) היה/הייתה מצוות/ת למארח/ת ענבר ארז (7886). בצד של המארחים הוא/היא 18597.")
    h = Host.find(7886)
    h.active_last_year = true
    h.save
    Host.find(7838).comments.create!(user_id: 415, content: "בשנה שעברה, 'מרים רוזנר' (2534) היה/הייתה מצוות/ת למארח/ת רינה אילסר (7838). בצד של המארחים הוא/היא 18538.")
    h = Host.find(7838)
    h.active_last_year = true
    h.save
    Host.find(7029).comments.create!(user_id: 415, content: "בשנה שעברה, 'מרדכי פפירבלט' (2174) היה/הייתה מצוות/ת למארח/ת ירדן שכטר (7029). בצד של המארחים הוא/היא 17601.")
    h = Host.find(7029)
    h.active_last_year = true
    h.save
    Host.find(6508).comments.create!(user_id: 415, content: "בשנה שעברה, 'מצא צדוק' (2691) היה/הייתה מצוות/ת למארח/ת מזל גלב (6508). בצד של המארחים הוא/היא 17057.")
    h = Host.find(6508)
    h.active_last_year = true
    h.save
    Host.find(6594).comments.create!(user_id: 415, content: "בשנה שעברה, 'מרים זילברשטיין' (2292) היה/הייתה מצוות/ת למארח/ת מור אלקיים שפלר (6594). בצד של המארחים הוא/היא 17139.")
    h = Host.find(6594)
    h.active_last_year = true
    h.save
    Host.find(6547).comments.create!(user_id: 415, content: "בשנה שעברה, 'מינה לשסקו' (2649) היה/הייתה מצוות/ת למארח/ת אהרון בר (6547). בצד של המארחים הוא/היא 17096.")
    h = Host.find(6547)
    h.active_last_year = true
    h.save
    Host.find(5905).comments.create!(user_id: 415, content: "בשנה שעברה, 'מיכל ארץ' (2686) היה/הייתה מצוות/ת למארח/ת עדי יוגב אלצפון (5905). בצד של המארחים הוא/היא 13571.")
    h = Host.find(5905)
    h.active_last_year = true
    h.save
    Host.find(7201).comments.create!(user_id: 415, content: "בשנה שעברה, 'מירית גרד' (2318) היה/הייתה מצוות/ת למארח/ת דורית כנפי (7201). בצד של המארחים הוא/היא 17793.")
    h = Host.find(7201)
    h.active_last_year = true
    h.save
    Host.find(9138).comments.create!(user_id: 415, content: "בשנה שעברה, 'יהודה בייליס' (519) היה/הייתה מצוות/ת למארח/ת עדן בורג (9138). בצד של המארחים הוא/היא 20863.")
    h = Host.find(9138)
    h.active_last_year = true
    h.save
    Host.find(9552).comments.create!(user_id: 415, content: "בשנה שעברה, 'משה פלדמן' (235) היה/הייתה מצוות/ת למארח/ת איילת רומם פלד (9552). בצד של המארחים הוא/היא 22601.")
    h = Host.find(9552)
    h.active_last_year = true
    h.save
    Host.find(8758).comments.create!(user_id: 415, content: "בשנה שעברה, 'משה הראל' (2690) היה/הייתה מצוות/ת למארח/ת נטע עדני (8758). בצד של המארחים הוא/היא 19869.")
    h = Host.find(8758)
    h.active_last_year = true
    h.save
    Host.find(8100).comments.create!(user_id: 415, content: "בשנה שעברה, 'איילת גרוס גפן' (367) היה/הייתה מצוות/ת למארח/ת שרי ליפל (8100). בצד של המארחים הוא/היא 18845.")
    h = Host.find(8100)
    h.active_last_year = true
    h.save
    Host.find(7703).comments.create!(user_id: 415, content: "בשנה שעברה, 'דודי רונן' (2687) היה/הייתה מצוות/ת למארח/ת פז בר שלום (7703). בצד של המארחים הוא/היא 18389.")
    h = Host.find(7703)
    h.active_last_year = true
    h.save
    Host.find(1475).comments.create!(user_id: 415, content: "בשנה שעברה, 'יפה זהבי' (2045) היה/הייתה מצוות/ת למארח/ת יונתן בן חיים (1475). בצד של המארחים הוא/היא 2084.")
    h = Host.find(1475)
    h.active_last_year = true
    h.save
    Host.find(3950).comments.create!(user_id: 415, content: "בשנה שעברה, 'רחל ארליך' (1546) היה/הייתה מצוות/ת למארח/ת נעמה עמיר (3950). בצד של המארחים הוא/היא 10080.")
    h = Host.find(3950)
    h.active_last_year = true
    h.save
    Host.find(6820).comments.create!(user_id: 415, content: "בשנה שעברה, 'יוסי והדסה ריטר' (2912) היה/הייתה מצוות/ת למארח/ת מרכז יה\"ל ראשל\"צ (6820). בצד של המארחים הוא/היא 17375.")
    h = Host.find(6820)
    h.active_last_year = true
    h.save
    Host.find(8820).comments.create!(user_id: 415, content: "בשנה שעברה, 'יצחק שחר' (2698) היה/הייתה מצוות/ת למארח/ת קורין נמר (8820). בצד של המארחים הוא/היא 14343.")
    h = Host.find(8820)
    h.active_last_year = true
    h.save
    Host.find(7696).comments.create!(user_id: 415, content: "בשנה שעברה, 'יותם זיו' (942) היה/הייתה מצוות/ת למארח/ת מרכז קהילתי צהלה (7696). בצד של המארחים הוא/היא 18379.")
    h = Host.find(7696)
    h.active_last_year = true
    h.save
    Host.find(9550).comments.create!(user_id: 415, content: "בשנה שעברה, 'חנה ועודד מיוחס' (172) היה/הייתה מצוות/ת למארח/ת אלחנן יוסף (9550). בצד של המארחים הוא/היא 22593.")
    h = Host.find(9550)
    h.active_last_year = true
    h.save
    Host.find(6978).comments.create!(user_id: 415, content: "בשנה שעברה, 'צחי דרורי' (2515) היה/הייתה מצוות/ת למארח/ת תמר גבע (6978). בצד של המארחים הוא/היא 17545.")
    h = Host.find(6978)
    h.active_last_year = true
    h.save
    Host.find(7845).comments.create!(user_id: 415, content: "בשנה שעברה, 'נטלי פישלר' (2695) היה/הייתה מצוות/ת למארח/ת ערבה אשד חיים (7845). בצד של המארחים הוא/היא 18547.")
    h = Host.find(7845)
    h.active_last_year = true
    h.save
    Host.find(7920).comments.create!(user_id: 415, content: "בשנה שעברה, 'אבי אל בחרי' (617) היה/הייתה מצוות/ת למארח/ת גלי בר נר (7920). בצד של המארחים הוא/היא 18635.")
    h = Host.find(7920)
    h.active_last_year = true
    h.save
    Host.find(7267).comments.create!(user_id: 415, content: "בשנה שעברה, 'ברוך הולנדר' (2435) היה/הייתה מצוות/ת למארח/ת תמר מילוא (7267). בצד של המארחים הוא/היא 17871.")
    h = Host.find(7267)
    h.active_last_year = true
    h.save
    Host.find(6812).comments.create!(user_id: 415, content: "בשנה שעברה, 'חנה ארנון' (2699) היה/הייתה מצוות/ת למארח/ת נאוה פירר (6812). בצד של המארחים הוא/היא 17362.")
    h = Host.find(6812)
    h.active_last_year = true
    h.save
    Host.find(8232).comments.create!(user_id: 415, content: "בשנה שעברה, 'דניאל פורסט' (3078) היה/הייתה מצוות/ת למארח/ת אורית אידי לבאן (8232). בצד של המארחים הוא/היא 19017.")
    h = Host.find(8232)
    h.active_last_year = true
    h.save
    Host.find(6710).comments.create!(user_id: 415, content: "בשנה שעברה, 'בתיה שפירא' (2368) היה/הייתה מצוות/ת למארח/ת יהודית שטרן (6710). בצד של המארחים הוא/היא 17253.")
    h = Host.find(6710)
    h.active_last_year = true
    h.save
    Host.find(5289).comments.create!(user_id: 415, content: "בשנה שעברה, 'אנדריי שמעוני' (2016) היה/הייתה מצוות/ת למארח/ת מעיין גודאט (5289). בצד של המארחים הוא/היא 12129.")
    h = Host.find(5289)
    h.active_last_year = true
    h.save
    Host.find(7257).comments.create!(user_id: 415, content: "בשנה שעברה, 'ישראל חרג' (143) היה/הייתה מצוות/ת למארח/ת חן נדל בני עקיבא רמת עמידר (7257). בצד של המארחים הוא/היא 17858.")
    h = Host.find(7257)
    h.active_last_year = true
    h.save
    Host.find(6536).comments.create!(user_id: 415, content: "בשנה שעברה, 'יהודית דרורי' (2609) היה/הייתה מצוות/ת למארח/ת חוליאן קסנוביץ (6536). בצד של המארחים הוא/היא 17081.")
    h = Host.find(6536)
    h.active_last_year = true
    h.save
    Host.find(7123).comments.create!(user_id: 415, content: "בשנה שעברה, 'ציפי שורני' (2517) היה/הייתה מצוות/ת למארח/ת ‫יהודית לוזון‬‎ (7123). בצד של המארחים הוא/היא 17706.")
    h = Host.find(7123)
    h.active_last_year = true
    h.save
    Host.find(7462).comments.create!(user_id: 415, content: "בשנה שעברה, 'יוסף פלייסהואור' (2271) היה/הייתה מצוות/ת למארח/ת oneday ירושלים (7462). בצד של המארחים הוא/היא 18103.")
    h = Host.find(7462)
    h.active_last_year = true
    h.save
    Host.find(7738).comments.create!(user_id: 415, content: "בשנה שעברה, 'הדס ויסמן' (1564) היה/הייתה מצוות/ת למארח/ת נאוה סבר (7738). בצד של המארחים הוא/היא 18430.")
    h = Host.find(7738)
    h.active_last_year = true
    h.save
    Host.find(7853).comments.create!(user_id: 415, content: "בשנה שעברה, 'אסתר  וייס אור' (2113) היה/הייתה מצוות/ת למארח/ת אורית אוליאל (7853). בצד של המארחים הוא/היא 18557.")
    h = Host.find(7853)
    h.active_last_year = true
    h.save
    Host.find(6813).comments.create!(user_id: 415, content: "בשנה שעברה, 'כרמלה יגב' (1931) היה/הייתה מצוות/ת למארח/ת אביב לוין (6813). בצד של המארחים הוא/היא 17363.")
    h = Host.find(6813)
    h.active_last_year = true
    h.save
    Host.find(6759).comments.create!(user_id: 415, content: "בשנה שעברה, 'לאה יניב' (2701) היה/הייתה מצוות/ת למארח/ת עמית וסר (6759). בצד של המארחים הוא/היא 17303.")
    h = Host.find(6759)
    h.active_last_year = true
    h.save
    Host.find(6862).comments.create!(user_id: 415, content: "בשנה שעברה, 'אסי ניסלסון' (2132) היה/הייתה מצוות/ת למארח/ת רחלי הניג (6862). בצד של המארחים הוא/היא 17418.")
    h = Host.find(6862)
    h.active_last_year = true
    h.save
    Host.find(7848).comments.create!(user_id: 415, content: "בשנה שעברה, 'חיים זליג' (1953) היה/הייתה מצוות/ת למארח/ת בנימין אלבוים (7848). בצד של המארחים הוא/היא 18551.")
    h = Host.find(7848)
    h.active_last_year = true
    h.save
    Host.find(8002).comments.create!(user_id: 415, content: "בשנה שעברה, 'משה עמנואל הורוביץ' (730) היה/הייתה מצוות/ת למארח/ת תהל מלכה (8002). בצד של המארחים הוא/היא 18736.")
    h = Host.find(8002)
    h.active_last_year = true
    h.save
    Host.find(8032).comments.create!(user_id: 415, content: "בשנה שעברה, 'מרצל אברבמוביץ' (2702) היה/הייתה מצוות/ת למארח/ת ענת כהן (8032). בצד של המארחים הוא/היא 18764.")
    h = Host.find(8032)
    h.active_last_year = true
    h.save
    Host.find(1601).comments.create!(user_id: 415, content: "בשנה שעברה, 'ידידיה ברדה' (2359) היה/הייתה מצוות/ת למארח/ת יואב גרויסמן (1601). בצד של המארחים הוא/היא 2344.")
    h = Host.find(1601)
    h.active_last_year = true
    h.save
    Host.find(917).comments.create!(user_id: 415, content: "בשנה שעברה, 'רחל גליקמן' (918) היה/הייתה מצוות/ת למארח/ת אליה דנינו (917). בצד של המארחים הוא/היא 990.")
    h = Host.find(917)
    h.active_last_year = true
    h.save
    Host.find(6140).comments.create!(user_id: 415, content: "בשנה שעברה, 'אילנה פורמן' (981) היה/הייתה מצוות/ת למארח/ת זיו דבורה (6140). בצד של המארחים הוא/היא 14634.")
    h = Host.find(6140)
    h.active_last_year = true
    h.save
    Host.find(8121).comments.create!(user_id: 415, content: "בשנה שעברה, 'פנינה אליהו' (2684) היה/הייתה מצוות/ת למארח/ת אושרת יצחק (8121). בצד של המארחים הוא/היא 18866.")
    h = Host.find(8121)
    h.active_last_year = true
    h.save
    Host.find(6474).comments.create!(user_id: 415, content: "בשנה שעברה, 'מיכל מלכובסקי' (2685) היה/הייתה מצוות/ת למארח/ת טל אזולאי (6474). בצד של המארחים הוא/היא 17026.")
    h = Host.find(6474)
    h.active_last_year = true
    h.save
    Host.find(7300).comments.create!(user_id: 415, content: "בשנה שעברה, 'רגינה בייגל' (2706) היה/הייתה מצוות/ת למארח/ת מרכז צעירים נהריה (7300). בצד של המארחים הוא/היא 17912.")
    h = Host.find(7300)
    h.active_last_year = true
    h.save
    Host.find(9020).comments.create!(user_id: 415, content: "בשנה שעברה, 'רות גורדון' (511) היה/הייתה מצוות/ת למארח/ת רעות ושדי (9020). בצד של המארחים הוא/היא 20525.")
    h = Host.find(9020)
    h.active_last_year = true
    h.save
    Host.find(3802).comments.create!(user_id: 415, content: "בשנה שעברה, 'טובה פרלמוטר (ד\"ר)' (2696) היה/הייתה מצוות/ת למארח/ת אופק סלמה (3802). בצד של המארחים הוא/היא 9876.")
    h = Host.find(3802)
    h.active_last_year = true
    h.save
    Host.find(91).comments.create!(user_id: 415, content: "בשנה שעברה, 'נסיון נסיון' (3316) היה/הייתה מצוות/ת למארח/ת גאיה גבעון (91). בצד של המארחים הוא/היא 95.")
    h = Host.find(91)
    h.active_last_year = true
    h.save
    Host.find(7249).comments.create!(user_id: 415, content: "בשנה שעברה, 'זינה פרידלנד' (2347) היה/הייתה מצוות/ת למארח/ת לאה אספיס (7249). בצד של המארחים הוא/היא 17846.")
    h = Host.find(7249)
    h.active_last_year = true
    h.save
    Host.find(24).comments.create!(user_id: 415, content: "בשנה שעברה, 'רחל קולנדר' (939) היה/הייתה מצוות/ת למארח/ת רווית שמאי גל (24). בצד של המארחים הוא/היא 26.")
    h = Host.find(24)
    h.active_last_year = true
    h.save
    Host.find(4577).comments.create!(user_id: 415, content: "בשנה שעברה, 'ארצית בר-נר' (2688) היה/הייתה מצוות/ת למארח/ת לירום הולינגר (4577). בצד של המארחים הוא/היא 10887.")
    h = Host.find(4577)
    h.active_last_year = true
    h.save
    Host.find(7658).comments.create!(user_id: 415, content: "בשנה שעברה, 'יהודה באואר (פרופ')' (963) היה/הייתה מצוות/ת למארח/ת נועה האוזר (7658). בצד של המארחים הוא/היא 18336.")
    h = Host.find(7658)
    h.active_last_year = true
    h.save
    Host.find(741).comments.create!(user_id: 415, content: "בשנה שעברה, 'אברהם אשכנזי' (907) היה/הייתה מצוות/ת למארח/ת רעות אללוף (741). בצד של המארחים הוא/היא 794.")
    h = Host.find(741)
    h.active_last_year = true
    h.save
    Host.find(8019).comments.create!(user_id: 415, content: "בשנה שעברה, 'פנינה רוזנברג (ד\"ר)' (1949) היה/הייתה מצוות/ת למארח/ת עדי מור (8019). בצד של המארחים הוא/היא 18753.")
    h = Host.find(8019)
    h.active_last_year = true
    h.save
    Host.find(6520).comments.create!(user_id: 415, content: "בשנה שעברה, 'פאפו עזרא וטובה' (595) היה/הייתה מצוות/ת למארח/ת יעל נביפור (6520). בצד של המארחים הוא/היא 17068.")
    h = Host.find(6520)
    h.active_last_year = true
    h.save
    Host.find(9785).comments.create!(user_id: 415, content: "בשנה שעברה, 'עודד היילברונר (פרופ')' (2019) היה/הייתה מצוות/ת למארח/ת פאולוס (9785). בצד של המארחים הוא/היא 24230.")
    h = Host.find(9785)
    h.active_last_year = true
    h.save
    Host.find(8802).comments.create!(user_id: 415, content: "בשנה שעברה, 'נועה כהן-אורלוב' (2708) היה/הייתה מצוות/ת למארח/ת הצופים (8802). בצד של המארחים הוא/היא 19968.")
    h = Host.find(8802)
    h.active_last_year = true
    h.save
    Host.find(7875).comments.create!(user_id: 415, content: "בשנה שעברה, 'ליאור מאיק' (1752) היה/הייתה מצוות/ת למארח/ת יעל (7875). בצד של המארחים הוא/היא 18582.")
    h = Host.find(7875)
    h.active_last_year = true
    h.save
    Host.find(7025).comments.create!(user_id: 415, content: "בשנה שעברה, 'אריה רבינוביץ' (3109) היה/הייתה מצוות/ת למארח/ת מיה (7025). בצד של המארחים הוא/היא 17596.")
    h = Host.find(7025)
    h.active_last_year = true
    h.save
    Host.find(9344).comments.create!(user_id: 415, content: "בשנה שעברה, 'מיכאל אברהם (הרב)' (1959) היה/הייתה מצוות/ת למארח/ת בת אל ונאור פיס (9344). בצד של המארחים הוא/היא 21617.")
    h = Host.find(9344)
    h.active_last_year = true
    h.save
    Host.find(8236).comments.create!(user_id: 415, content: "בשנה שעברה, 'עידית גיל' (937) היה/הייתה מצוות/ת למארח/ת בית קוסאר (8236). בצד של המארחים הוא/היא 19021.")
    h = Host.find(8236)
    h.active_last_year = true
    h.save
    Host.find(7583).comments.create!(user_id: 415, content: "בשנה שעברה, 'שוש טריסטר' (37) היה/הייתה מצוות/ת למארח/ת גיל עומר (7583). בצד של המארחים הוא/היא 18246.")
    h = Host.find(7583)
    h.active_last_year = true
    h.save
    Host.find(6946).comments.create!(user_id: 415, content: "בשנה שעברה, 'יוסף בריח' (1777) היה/הייתה מצוות/ת למארח/ת יובל סרור (6946). בצד של המארחים הוא/היא 17511.")
    h = Host.find(6946)
    h.active_last_year = true
    h.save
    Host.find(9603).comments.create!(user_id: 415, content: "בשנה שעברה, 'בלה גוטרמן' (1925) היה/הייתה מצוות/ת למארח/ת אורית לנט (9603). בצד של המארחים הוא/היא 22855.")
    h = Host.find(9603)
    h.active_last_year = true
    h.save
    Host.find(3290).comments.create!(user_id: 415, content: "בשנה שעברה, 'ליאור פורמן' (1136) היה/הייתה מצוות/ת למארח/ת נעמה דרור (3290). בצד של המארחים הוא/היא 9171.")
    h = Host.find(3290)
    h.active_last_year = true
    h.save
    Host.find(7351).comments.create!(user_id: 415, content: "בשנה שעברה, 'אריה וייף' (1204) היה/הייתה מצוות/ת למארח/ת אורן גולן (7351). בצד של המארחים הוא/היא 17973.")
    h = Host.find(7351)
    h.active_last_year = true
    h.save
    Host.find(9874).comments.create!(user_id: 415, content: "בשנה שעברה, 'משה פלמאי' (3303) היה/הייתה מצוות/ת למארח/ת נעמה שמש הלוי (9874). בצד של המארחים הוא/היא 25190.")
    h = Host.find(9874)
    h.active_last_year = true
    h.save
    Host.find(9007).comments.create!(user_id: 415, content: "בשנה שעברה, 'אסתר וזאב הרסט' (391) היה/הייתה מצוות/ת למארח/ת אוהד מושלי (9007). בצד של המארחים הוא/היא 20481.")
    h = Host.find(9007)
    h.active_last_year = true
    h.save
    Host.find(1327).comments.create!(user_id: 415, content: "בשנה שעברה, 'מרדכי רייזמנן' (410) היה/הייתה מצוות/ת למארח/ת שירה ציפריס (1327). בצד של המארחים הוא/היא 1788.")
    h = Host.find(1327)
    h.active_last_year = true
    h.save
    Host.find(8496).comments.create!(user_id: 415, content: "בשנה שעברה, 'מיכל גלטר' (1998) היה/הייתה מצוות/ת למארח/ת גיל אוזן (8496). בצד של המארחים הוא/היא 19425.")
    h = Host.find(8496)
    h.active_last_year = true
    h.save
    Host.find(8950).comments.create!(user_id: 415, content: "בשנה שעברה, 'תלמה מאסטרו' (2871) היה/הייתה מצוות/ת למארח/ת קרוננבלום תהילה ושי (8950). בצד של המארחים הוא/היא 20309.")
    h = Host.find(8950)
    h.active_last_year = true
    h.save
    Host.find(4759).comments.create!(user_id: 415, content: "בשנה שעברה, 'פרץ לב' (2772) היה/הייתה מצוות/ת למארח/ת רותם מלאכי (4759). בצד של המארחים הוא/היא 11122.")
    h = Host.find(4759)
    h.active_last_year = true
    h.save
    Host.find(1686).comments.create!(user_id: 415, content: "בשנה שעברה, 'יוליה גרו' (409) היה/הייתה מצוות/ת למארח/ת רות משאט (1686). בצד של המארחים הוא/היא 2571.")
    h = Host.find(1686)
    h.active_last_year = true
    h.save
    Host.find(7413).comments.create!(user_id: 415, content: "בשנה שעברה, 'טובה שפיגלמן' (1497) היה/הייתה מצוות/ת למארח/ת פלג מגן (7413). בצד של המארחים הוא/היא 18050.")
    h = Host.find(7413)
    h.active_last_year = true
    h.save
    Host.find(5471).comments.create!(user_id: 415, content: "בשנה שעברה, 'אביבה פורת' (1767) היה/הייתה מצוות/ת למארח/ת מיתר תבל (5471). בצד של המארחים הוא/היא 12446.")
    h = Host.find(5471)
    h.active_last_year = true
    h.save
    Host.find(7093).comments.create!(user_id: 415, content: "בשנה שעברה, 'תומי עמית' (2874) היה/הייתה מצוות/ת למארח/ת איתי חזן (7093). בצד של המארחים הוא/היא 17676.")
    h = Host.find(7093)
    h.active_last_year = true
    h.save
    Host.find(263).comments.create!(user_id: 415, content: "בשנה שעברה, 'מאיר יוזף' (783) היה/הייתה מצוות/ת למארח/ת מירלה גל (263). בצד של המארחים הוא/היא 284.")
    h = Host.find(263)
    h.active_last_year = true
    h.save
    Host.find(3147).comments.create!(user_id: 415, content: "בשנה שעברה, 'בראונשטיין אידה' (2763) היה/הייתה מצוות/ת למארח/ת עומרי שמואלי (3147). בצד של המארחים הוא/היא 9030.")
    h = Host.find(3147)
    h.active_last_year = true
    h.save
    Host.find(728).comments.create!(user_id: 415, content: "בשנה שעברה, 'פנינה פרוכטר' (660) היה/הייתה מצוות/ת למארח/ת נעמה משולם (728). בצד של המארחים הוא/היא 781.")
    h = Host.find(728)
    h.active_last_year = true
    h.save
    Host.find(8362).comments.create!(user_id: 415, content: "בשנה שעברה, 'פרנק גיורא' (2873) היה/הייתה מצוות/ת למארח/ת אבישג בצר (8362). בצד של המארחים הוא/היא 19190.")
    h = Host.find(8362)
    h.active_last_year = true
    h.save
    Host.find(8664).comments.create!(user_id: 415, content: "בשנה שעברה, 'גליה גביש' (517) היה/הייתה מצוות/ת למארח/ת קרן ברוק (8664). בצד של המארחים הוא/היא 19703.")
    h = Host.find(8664)
    h.active_last_year = true
    h.save
    Host.find(6517).comments.create!(user_id: 415, content: "בשנה שעברה, 'שושנה שדמי' (1496) היה/הייתה מצוות/ת למארח/ת הדס שטנגר (6517). בצד של המארחים הוא/היא 17065.")
    h = Host.find(6517)
    h.active_last_year = true
    h.save
    Host.find(6810).comments.create!(user_id: 415, content: "בשנה שעברה, 'חווה וולפשנייצר' (774) היה/הייתה מצוות/ת למארח/ת גיל בן נון (6810). בצד של המארחים הוא/היא 17360.")
    h = Host.find(6810)
    h.active_last_year = true
    h.save
    Host.find(2889).comments.create!(user_id: 415, content: "בשנה שעברה, 'ברודרמן מרים' (2765) היה/הייתה מצוות/ת למארח/ת גור ורקפת לביא (2889). בצד של המארחים הוא/היא 8764.")
    h = Host.find(2889)
    h.active_last_year = true
    h.save
    Host.find(6816).comments.create!(user_id: 415, content: "בשנה שעברה, 'יהודית פרידמן' (2799) היה/הייתה מצוות/ת למארח/ת אפרת (6816). בצד של המארחים הוא/היא 17366.")
    h = Host.find(6816)
    h.active_last_year = true
    h.save
    Host.find(2598).comments.create!(user_id: 415, content: "בשנה שעברה, 'גדעון אקהאוז' (1247) היה/הייתה מצוות/ת למארח/ת Denise Feiger (2598). בצד של המארחים הוא/היא 5872.")
    h = Host.find(2598)
    h.active_last_year = true
    h.save
    Host.find(3331).comments.create!(user_id: 415, content: "בשנה שעברה, 'רחל קולברסקי' (385) היה/הייתה מצוות/ת למארח/ת עומר זרחיה (3331). בצד של המארחים הוא/היא 9212.")
    h = Host.find(3331)
    h.active_last_year = true
    h.save
    Host.find(7983).comments.create!(user_id: 415, content: "בשנה שעברה, 'מוטי שפיר' (2855) היה/הייתה מצוות/ת למארח/ת אילנית ארבל (7983). בצד של המארחים הוא/היא 18715.")
    h = Host.find(7983)
    h.active_last_year = true
    h.save
    Host.find(3833).comments.create!(user_id: 415, content: "בשנה שעברה, 'מיכל שבות' (781) היה/הייתה מצוות/ת למארח/ת שני ארן (3833). בצד של המארחים הוא/היא 9911.")
    h = Host.find(3833)
    h.active_last_year = true
    h.save
    Host.find(377).comments.create!(user_id: 415, content: "בשנה שעברה, 'חנה גופרית' (671) היה/הייתה מצוות/ת למארח/ת מזא\"ה 9 (377). בצד של המארחים הוא/היא 409.")
    h = Host.find(377)
    h.active_last_year = true
    h.save
    Host.find(8164).comments.create!(user_id: 415, content: "בשנה שעברה, 'ג'קוב קורץ' (685) היה/הייתה מצוות/ת למארח/ת אורי מנדי (8164). בצד של המארחים הוא/היא 18935.")
    h = Host.find(8164)
    h.active_last_year = true
    h.save
    Host.find(3445).comments.create!(user_id: 415, content: "בשנה שעברה, 'הלן שגב' (18) היה/הייתה מצוות/ת למארח/ת רן לוי (3445). בצד של המארחים הוא/היא 9348.")
    h = Host.find(3445)
    h.active_last_year = true
    h.save
    Host.find(3818).comments.create!(user_id: 415, content: "בשנה שעברה, 'מרגלית שרון' (1138) היה/הייתה מצוות/ת למארח/ת קמילה שרלין (3818). בצד של המארחים הוא/היא 9895.")
    h = Host.find(3818)
    h.active_last_year = true
    h.save
    Host.find(3366).comments.create!(user_id: 415, content: "בשנה שעברה, 'מיכל בר' (1412) היה/הייתה מצוות/ת למארח/ת ערן שחורי (3366). בצד של המארחים הוא/היא 9249.")
    h = Host.find(3366)
    h.active_last_year = true
    h.save
    Host.find(7526).comments.create!(user_id: 415, content: "בשנה שעברה, 'אברהם וודוב' (3239) היה/הייתה מצוות/ת למארח/ת שקד קליין (7526). בצד של המארחים הוא/היא 18178.")
    h = Host.find(7526)
    h.active_last_year = true
    h.save
    Host.find(7427).comments.create!(user_id: 415, content: "בשנה שעברה, 'בלהה לוטן' (215) היה/הייתה מצוות/ת למארח/ת גליה בן שושן (7427). בצד של המארחים הוא/היא 18064.")
    h = Host.find(7427)
    h.active_last_year = true
    h.save
    Host.find(9656).comments.create!(user_id: 415, content: "בשנה שעברה, 'חיים מגירה' (1578) היה/הייתה מצוות/ת למארח/ת תמר לאופר (9656). בצד של המארחים הוא/היא 23186.")
    h = Host.find(9656)
    h.active_last_year = true
    h.save
    Host.find(8384).comments.create!(user_id: 415, content: "בשנה שעברה, 'הרב אברהם אנגל' (2820) היה/הייתה מצוות/ת למארח/ת ניר קבלו (8384). בצד של המארחים הוא/היא 19224.")
    h = Host.find(8384)
    h.active_last_year = true
    h.save
    Host.find(7498).comments.create!(user_id: 415, content: "בשנה שעברה, 'דוד כהן ושרה כהן' (539) היה/הייתה מצוות/ת למארח/ת אופק טל (7498). בצד של המארחים הוא/היא 18147.")
    h = Host.find(7498)
    h.active_last_year = true
    h.save
    Host.find(6691).comments.create!(user_id: 415, content: "בשנה שעברה, 'ציפי מורבאי' (2730) היה/הייתה מצוות/ת למארח/ת שמעון גל (6691). בצד של המארחים הוא/היא 17234.")
    h = Host.find(6691)
    h.active_last_year = true
    h.save
    Host.find(6639).comments.create!(user_id: 415, content: "בשנה שעברה, 'ברוך קופולד' (377) היה/הייתה מצוות/ת למארח/ת עמית מובס (6639). בצד של המארחים הוא/היא 17184.")
    h = Host.find(6639)
    h.active_last_year = true
    h.save
    Host.find(7905).comments.create!(user_id: 415, content: "בשנה שעברה, 'ד\"ר שמוליק לדרמן' (1033) היה/הייתה מצוות/ת למארח/ת לינוי נגר (7905). בצד של המארחים הוא/היא 18619.")
    h = Host.find(7905)
    h.active_last_year = true
    h.save
    Host.find(6955).comments.create!(user_id: 415, content: "בשנה שעברה, 'אהרון וייסמן' (1663) היה/הייתה מצוות/ת למארח/ת גל ריגר כהן (6955). בצד של המארחים הוא/היא 17521.")
    h = Host.find(6955)
    h.active_last_year = true
    h.save
    Host.find(7244).comments.create!(user_id: 415, content: "בשנה שעברה, 'אמיל פרקש' (567) היה/הייתה מצוות/ת למארח/ת אור אמיתי (7244). בצד של המארחים הוא/היא 17840.")
    h = Host.find(7244)
    h.active_last_year = true
    h.save
    Host.find(4798).comments.create!(user_id: 415, content: "בשנה שעברה, 'ישראל בן דורי' (2681) היה/הייתה מצוות/ת למארח/ת מירה פרץ (4798). בצד של המארחים הוא/היא 11191.")
    h = Host.find(4798)
    h.active_last_year = true
    h.save
    Host.find(7645).comments.create!(user_id: 415, content: "בשנה שעברה, 'חיים גני' (1818) היה/הייתה מצוות/ת למארח/ת Nufar Margalit (7645). בצד של המארחים הוא/היא 18323.")
    h = Host.find(7645)
    h.active_last_year = true
    h.save
    Host.find(7961).comments.create!(user_id: 415, content: "בשנה שעברה, 'ראובן פולצ'יק' (516) היה/הייתה מצוות/ת למארח/ת הדר פרנקל (7961). בצד של המארחים הוא/היא 18688.")
    h = Host.find(7961)
    h.active_last_year = true
    h.save
    Host.find(7234).comments.create!(user_id: 415, content: "בשנה שעברה, 'משה מזוז' (150) היה/הייתה מצוות/ת למארח/ת תום פרידמן (7234). בצד של המארחים הוא/היא 7370.")
    h = Host.find(7234)
    h.active_last_year = true
    h.save
    Host.find(3278).comments.create!(user_id: 415, content: "בשנה שעברה, 'רחל גורסקי' (761) היה/הייתה מצוות/ת למארח/ת נטע יסוד (3278). בצד של המארחים הוא/היא 9160.")
    h = Host.find(3278)
    h.active_last_year = true
    h.save
    Host.find(7955).comments.create!(user_id: 415, content: "בשנה שעברה, 'חיה אורן' (2713) היה/הייתה מצוות/ת למארח/ת ניתאי שיין (7955). בצד של המארחים הוא/היא 18680.")
    h = Host.find(7955)
    h.active_last_year = true
    h.save
    Host.find(9203).comments.create!(user_id: 415, content: "בשנה שעברה, 'מיקה וצלר' (1823) היה/הייתה מצוות/ת למארח/ת אופיר לוז דקל (9203). בצד של המארחים הוא/היא 21138.")
    h = Host.find(9203)
    h.active_last_year = true
    h.save
    Host.find(7507).comments.create!(user_id: 415, content: "בשנה שעברה, 'דוד אריאל' (1618) היה/הייתה מצוות/ת למארח/ת רוני ספאחי (7507). בצד של המארחים הוא/היא 18159.")
    h = Host.find(7507)
    h.active_last_year = true
    h.save
    Host.find(6701).comments.create!(user_id: 415, content: "בשנה שעברה, 'דב רוזן' (1851) היה/הייתה מצוות/ת למארח/ת שרית מזן הררי (6701). בצד של המארחים הוא/היא 17244.")
    h = Host.find(6701)
    h.active_last_year = true
    h.save
    Host.find(7071).comments.create!(user_id: 415, content: "בשנה שעברה, 'אלה פריד' (1817) היה/הייתה מצוות/ת למארח/ת מירב צור ברוך (7071). בצד של המארחים הוא/היא 17652.")
    h = Host.find(7071)
    h.active_last_year = true
    h.save
    Host.find(6544).comments.create!(user_id: 415, content: "בשנה שעברה, 'מלכיאל (מיקי) ויהודית יונש' (2653) היה/הייתה מצוות/ת למארח/ת דניאל ליכטשיין (6544). בצד של המארחים הוא/היא 17093.")
    h = Host.find(6544)
    h.active_last_year = true
    h.save
    Host.find(6817).comments.create!(user_id: 415, content: "בשנה שעברה, 'שרגא קלוש' (905) היה/הייתה מצוות/ת למארח/ת עדי שחם (6817). בצד של המארחים הוא/היא 17367.")
    h = Host.find(6817)
    h.active_last_year = true
    h.save
    Host.find(7740).comments.create!(user_id: 415, content: "בשנה שעברה, 'שולמית אברדם' (2133) היה/הייתה מצוות/ת למארח/ת נורית קנטרוביץ' (7740). בצד של המארחים הוא/היא 18432.")
    h = Host.find(7740)
    h.active_last_year = true
    h.save
    Host.find(7166).comments.create!(user_id: 415, content: "בשנה שעברה, 'אלי בר דוד' (674) היה/הייתה מצוות/ת למארח/ת שיר צרפתי (7166). בצד של המארחים הוא/היא 17756.")
    h = Host.find(7166)
    h.active_last_year = true
    h.save
    Host.find(8903).comments.create!(user_id: 415, content: "בשנה שעברה, 'שרה גליקמן' (404) היה/הייתה מצוות/ת למארח/ת רז בולקובשטיין (8903). בצד של המארחים הוא/היא 20197.")
    h = Host.find(8903)
    h.active_last_year = true
    h.save
    Host.find(3511).comments.create!(user_id: 415, content: "בשנה שעברה, 'רינה בירנהק' (2621) היה/הייתה מצוות/ת למארח/ת שני חביב (3511). בצד של המארחים הוא/היא 9428.")
    h = Host.find(3511)
    h.active_last_year = true
    h.save
    Host.find(9013).comments.create!(user_id: 415, content: "בשנה שעברה, 'שושנה בוטווין' (2782) היה/הייתה מצוות/ת למארח/ת עיריית תל אביב יפו - בניין העירייה 3 (9013). בצד של המארחים הוא/היא 20495.")
    h = Host.find(9013)
    h.active_last_year = true
    h.save
    Host.find(7827).comments.create!(user_id: 415, content: "בשנה שעברה, 'מרצל גולדמן' (2960) היה/הייתה מצוות/ת למארח/ת אמילי (7827). בצד של המארחים הוא/היא 18526.")
    h = Host.find(7827)
    h.active_last_year = true
    h.save
    Host.find(2932).comments.create!(user_id: 415, content: "בשנה שעברה, 'אליזבט בונצל' (227) היה/הייתה מצוות/ת למארח/ת רשת בתי הנוער קדימה (2932). בצד של המארחים הוא/היא 8819.")
    h = Host.find(2932)
    h.active_last_year = true
    h.save
    Host.find(7882).comments.create!(user_id: 415, content: "בשנה שעברה, 'אסתי לנגזם' (2939) היה/הייתה מצוות/ת למארח/ת ולרי שפע (7882). בצד של המארחים הוא/היא 18593.")
    h = Host.find(7882)
    h.active_last_year = true
    h.save
    Host.find(9168).comments.create!(user_id: 415, content: "בשנה שעברה, 'אידלמן אהרון' (3000) היה/הייתה מצוות/ת למארח/ת גלית גולדנברג (9168). בצד של המארחים הוא/היא 20999.")
    h = Host.find(9168)
    h.active_last_year = true
    h.save
    Host.find(8109).comments.create!(user_id: 415, content: "בשנה שעברה, 'לימור מזן' (2726) היה/הייתה מצוות/ת למארח/ת שלהבת אסולין (8109). בצד של המארחים הוא/היא 18851.")
    h = Host.find(8109)
    h.active_last_year = true
    h.save
    Host.find(7191).comments.create!(user_id: 415, content: "בשנה שעברה, 'גילה טולקובסקי' (2494) היה/הייתה מצוות/ת למארח/ת סתיו יוסטר (7191). בצד של המארחים הוא/היא 17781.")
    h = Host.find(7191)
    h.active_last_year = true
    h.save
    Host.find(8252).comments.create!(user_id: 415, content: "בשנה שעברה, 'שרגא אניס' (2958) היה/הייתה מצוות/ת למארח/ת עדי קובריגרו (8252). בצד של המארחים הוא/היא 19039.")
    h = Host.find(8252)
    h.active_last_year = true
    h.save
    Host.find(1978).comments.create!(user_id: 415, content: "בשנה שעברה, 'זאב רטנר' (3038) היה/הייתה מצוות/ת למארח/ת אניה זיסקינה (1978). בצד של המארחים הוא/היא 3408.")
    h = Host.find(1978)
    h.active_last_year = true
    h.save
    Host.find(7904).comments.create!(user_id: 415, content: "בשנה שעברה, 'משה בן צבי' (2905) היה/הייתה מצוות/ת למארח/ת הילה סלומון (7904). בצד של המארחים הוא/היא 18618.")
    h = Host.find(7904)
    h.active_last_year = true
    h.save
    Host.find(4250).comments.create!(user_id: 415, content: "בשנה שעברה, 'כתריאל פוקס' (2737) היה/הייתה מצוות/ת למארח/ת מאיה ישראל (4250). בצד של המארחים הוא/היא 5810.")
    h = Host.find(4250)
    h.active_last_year = true
    h.save
    Host.find(8803).comments.create!(user_id: 415, content: "בשנה שעברה, 'יצחק אלנר' (2738) היה/הייתה מצוות/ת למארח/ת נאוה ברלב (8803). בצד של המארחים הוא/היא 19969.")
    h = Host.find(8803)
    h.active_last_year = true
    h.save
    Host.find(282).comments.create!(user_id: 415, content: "בשנה שעברה, 'סבטלנה אוצ'יטל' (2736) היה/הייתה מצוות/ת למארח/ת זכור וכבד -חיפה (282). בצד של המארחים הוא/היא 307.")
    h = Host.find(282)
    h.active_last_year = true
    h.save
    Host.find(7119).comments.create!(user_id: 415, content: "בשנה שעברה, 'עירית דנציגר' (2732) היה/הייתה מצוות/ת למארח/ת שני הלוי (7119). בצד של המארחים הוא/היא 17702.")
    h = Host.find(7119)
    h.active_last_year = true
    h.save
    Host.find(4580).comments.create!(user_id: 415, content: "בשנה שעברה, 'כרמלה דינר' (2739) היה/הייתה מצוות/ת למארח/ת עדן שילוח (4580). בצד של המארחים הוא/היא 10890.")
    h = Host.find(4580)
    h.active_last_year = true
    h.save
    Host.find(8960).comments.create!(user_id: 415, content: "בשנה שעברה, 'שרה אבני' (2733) היה/הייתה מצוות/ת למארח/ת נתן בלנק (8960). בצד של המארחים הוא/היא 20330.")
    h = Host.find(8960)
    h.active_last_year = true
    h.save
    Host.find(7076).comments.create!(user_id: 415, content: "בשנה שעברה, 'מרים פרגר' (176) היה/הייתה מצוות/ת למארח/ת חברת לייב יו (7076). בצד של המארחים הוא/היא 17658.")
    h = Host.find(7076)
    h.active_last_year = true
    h.save
    Host.find(9573).comments.create!(user_id: 415, content: "בשנה שעברה, 'יוכבד זיו' (1017) היה/הייתה מצוות/ת למארח/ת מירב שעיבי (9573). בצד של המארחים הוא/היא 22736.")
    h = Host.find(9573)
    h.active_last_year = true
    h.save
    Host.find(7212).comments.create!(user_id: 415, content: "בשנה שעברה, 'רונית בריגה' (165) היה/הייתה מצוות/ת למארח/ת פנימיית עלומים כפר סבא (7212). בצד של המארחים הוא/היא 17809.")
    h = Host.find(7212)
    h.active_last_year = true
    h.save
    Host.find(7113).comments.create!(user_id: 415, content: "בשנה שעברה, 'יוכי פאר' (2252) היה/הייתה מצוות/ת למארח/ת רותם חומסקי (7113). בצד של המארחים הוא/היא 17696.")
    h = Host.find(7113)
    h.active_last_year = true
    h.save
    Host.find(576).comments.create!(user_id: 415, content: "בשנה שעברה, 'חנה אברוצקי' (2265) היה/הייתה מצוות/ת למארח/ת חנה ארקין (576). בצד של המארחים הוא/היא 625.")
    h = Host.find(576)
    h.active_last_year = true
    h.save
    Host.find(8120).comments.create!(user_id: 415, content: "בשנה שעברה, 'רנה גיל' (2742) היה/הייתה מצוות/ת למארח/ת קובי נחמיאס (8120). בצד של המארחים הוא/היא 18865.")
    h = Host.find(8120)
    h.active_last_year = true
    h.save
    Host.find(5293).comments.create!(user_id: 415, content: "בשנה שעברה, 'שושנה כלדי' (1361) היה/הייתה מצוות/ת למארח/ת נגה אהרון (5293). בצד של המארחים הוא/היא 12137.")
    h = Host.find(5293)
    h.active_last_year = true
    h.save
    Host.find(8780).comments.create!(user_id: 415, content: "בשנה שעברה, 'אריאל (הרב אריאל) סולומון' (2592) היה/הייתה מצוות/ת למארח/ת מאיה נרדי (8780). בצד של המארחים הוא/היא 19915.")
    h = Host.find(8780)
    h.active_last_year = true
    h.save
    Host.find(6628).comments.create!(user_id: 415, content: "בשנה שעברה, 'חיים לורנס' (1997) היה/הייתה מצוות/ת למארח/ת יהודית רוזנפלד (6628). בצד של המארחים הוא/היא 17173.")
    h = Host.find(6628)
    h.active_last_year = true
    h.save
    Host.find(8060).comments.create!(user_id: 415, content: "בשנה שעברה, 'ציפי נחשון' (2745) היה/הייתה מצוות/ת למארח/ת סימה בראל (8060). בצד של המארחים הוא/היא 18795.")
    h = Host.find(8060)
    h.active_last_year = true
    h.save
    Host.find(6461).comments.create!(user_id: 415, content: "בשנה שעברה, 'משה יעקובוביץ' (2741) היה/הייתה מצוות/ת למארח/ת לירז בראון (6461). בצד של המארחים הוא/היא 17009.")
    h = Host.find(6461)
    h.active_last_year = true
    h.save
    Host.find(2112).comments.create!(user_id: 415, content: "בשנה שעברה, 'דינה גודשלק' (2878) היה/הייתה מצוות/ת למארח/ת דליה טיאר (2112). בצד של המארחים הוא/היא 3719.")
    h = Host.find(2112)
    h.active_last_year = true
    h.save
    Host.find(6603).comments.create!(user_id: 415, content: "בשנה שעברה, 'מנס בוגן' (1827) היה/הייתה מצוות/ת למארח/ת מורן ומיכאל חיימוביץ (6603). בצד של המארחים הוא/היא 17149.")
    h = Host.find(6603)
    h.active_last_year = true
    h.save
    Host.find(4082).comments.create!(user_id: 415, content: "בשנה שעברה, 'פרופ' רפי ולדן' (2409) היה/הייתה מצוות/ת למארח/ת שרון גולדפרב (4082). בצד של המארחים הוא/היא 10242.")
    h = Host.find(4082)
    h.active_last_year = true
    h.save
    Host.find(8259).comments.create!(user_id: 415, content: "בשנה שעברה, 'יצחק זילברברג' (2519) היה/הייתה מצוות/ת למארח/ת ג'סיקה קוסטובסקי (8259). בצד של המארחים הוא/היא 19048.")
    h = Host.find(8259)
    h.active_last_year = true
    h.save
    Host.find(8035).comments.create!(user_id: 415, content: "בשנה שעברה, 'שרגא שתיל' (2746) היה/הייתה מצוות/ת למארח/ת אלעזר גלזר (8035). בצד של המארחים הוא/היא 18766.")
    h = Host.find(8035)
    h.active_last_year = true
    h.save
    Host.find(3076).comments.create!(user_id: 415, content: "בשנה שעברה, 'מירה פלד' (2744) היה/הייתה מצוות/ת למארח/ת שרונה קייסר רכזת מרכז חברתי \"אנוש\" (3076). בצד של המארחים הוא/היא 8958.")
    h = Host.find(3076)
    h.active_last_year = true
    h.save
    Host.find(9150).comments.create!(user_id: 415, content: "בשנה שעברה, 'ד\"ר דניאל שליט' (1486) היה/הייתה מצוות/ת למארח/ת שרון קריה (9150). בצד של המארחים הוא/היא 20915.")
    h = Host.find(9150)
    h.active_last_year = true
    h.save
    Host.find(7148).comments.create!(user_id: 415, content: "בשנה שעברה, 'רבקה מולדובן' (202) היה/הייתה מצוות/ת למארח/ת מירב בן-שמחון (7148). בצד של המארחים הוא/היא 17733.")
    h = Host.find(7148)
    h.active_last_year = true
    h.save
    Host.find(7586).comments.create!(user_id: 415, content: "בשנה שעברה, 'יעקב יהושוע' (114) היה/הייתה מצוות/ת למארח/ת דורון פלייש (7586). בצד של המארחים הוא/היא 18251.")
    h = Host.find(7586)
    h.active_last_year = true
    h.save
    Host.find(8148).comments.create!(user_id: 415, content: "בשנה שעברה, 'אטז סוזי' (2751) היה/הייתה מצוות/ת למארח/ת בן שבירו (8148). בצד של המארחים הוא/היא 18902.")
    h = Host.find(8148)
    h.active_last_year = true
    h.save
    Host.find(4030).comments.create!(user_id: 415, content: "בשנה שעברה, 'חווה שילה' (2555) היה/הייתה מצוות/ת למארח/ת הדס גל (4030). בצד של המארחים הוא/היא 10177.")
    h = Host.find(4030)
    h.active_last_year = true
    h.save
    Host.find(8143).comments.create!(user_id: 415, content: "בשנה שעברה, 'ברודרמן ישראל' (2766) היה/הייתה מצוות/ת למארח/ת טל אייזנר (8143). בצד של המארחים הוא/היא 18897.")
    h = Host.find(8143)
    h.active_last_year = true
    h.save
    Host.find(8431).comments.create!(user_id: 415, content: "בשנה שעברה, 'יוכבד גרינבלט' (1256) היה/הייתה מצוות/ת למארח/ת DARMON Deborah and Nathan (8431). בצד של המארחים הוא/היא 19337.")
    h = Host.find(8431)
    h.active_last_year = true
    h.save
    Host.find(6537).comments.create!(user_id: 415, content: "בשנה שעברה, 'טובה וצבי שפיר' (2775) היה/הייתה מצוות/ת למארח/ת שירה אשכנזי (6537). בצד של המארחים הוא/היא 17082.")
    h = Host.find(6537)
    h.active_last_year = true
    h.save
    Host.find(7406).comments.create!(user_id: 415, content: "בשנה שעברה, 'יהודה ספורטה' (2778) היה/הייתה מצוות/ת למארח/ת סמדר הופ (7406). בצד של המארחים הוא/היא 18039.")
    h = Host.find(7406)
    h.active_last_year = true
    h.save
    Host.find(7682).comments.create!(user_id: 415, content: "בשנה שעברה, 'חיה קניג' (2081) היה/הייתה מצוות/ת למארח/ת דניאל איבינדר (7682). בצד של המארחים הוא/היא 18362.")
    h = Host.find(7682)
    h.active_last_year = true
    h.save
    Host.find(260).comments.create!(user_id: 415, content: "בשנה שעברה, 'סילביה אייזנשטיין' (2795) היה/הייתה מצוות/ת למארח/ת גל שטנדל (260). בצד של המארחים הוא/היא 280.")
    h = Host.find(260)
    h.active_last_year = true
    h.save
    Host.find(7006).comments.create!(user_id: 415, content: "בשנה שעברה, 'רוזנמאיר פרדי' (2783) היה/הייתה מצוות/ת למארח/ת חמודי אבו סלאח (7006). בצד של המארחים הוא/היא 17574.")
    h = Host.find(7006)
    h.active_last_year = true
    h.save
    Host.find(419).comments.create!(user_id: 415, content: "בשנה שעברה, 'סיבור דוד' (2787) היה/הייתה מצוות/ת למארח/ת שחר ניר (419). בצד של המארחים הוא/היא 456.")
    h = Host.find(419)
    h.active_last_year = true
    h.save
    Host.find(9156).comments.create!(user_id: 415, content: "בשנה שעברה, 'אלעד הופר' (1689) היה/הייתה מצוות/ת למארח/ת עינב עטר (9156). בצד של המארחים הוא/היא 6965.")
    h = Host.find(9156)
    h.active_last_year = true
    h.save
    Host.find(6694).comments.create!(user_id: 415, content: "בשנה שעברה, 'מריה שרייר' (2796) היה/הייתה מצוות/ת למארח/ת נטע יפרח (6694). בצד של המארחים הוא/היא 17237.")
    h = Host.find(6694)
    h.active_last_year = true
    h.save
    Host.find(3006).comments.create!(user_id: 415, content: "בשנה שעברה, 'דני בר אילן' (2784) היה/הייתה מצוות/ת למארח/ת סיגל כהן (3006). בצד של המארחים הוא/היא 8888.")
    h = Host.find(3006)
    h.active_last_year = true
    h.save
    Host.find(6495).comments.create!(user_id: 415, content: "בשנה שעברה, 'גרדה שטיינפלד' (2786) היה/הייתה מצוות/ת למארח/ת איה (6495). בצד של המארחים הוא/היא 15306.")
    h = Host.find(6495)
    h.active_last_year = true
    h.save
    Host.find(4189).comments.create!(user_id: 415, content: "בשנה שעברה, 'אווה ארבן' (2794) היה/הייתה מצוות/ת למארח/ת ניב סגל-חזק (4189). בצד של המארחים הוא/היא 10380.")
    h = Host.find(4189)
    h.active_last_year = true
    h.save
    Host.find(4264).comments.create!(user_id: 415, content: "בשנה שעברה, 'גיטה קויפמן' (2059) היה/הייתה מצוות/ת למארח/ת טלי סוקניק (4264). בצד של המארחים הוא/היא 10463.")
    h = Host.find(4264)
    h.active_last_year = true
    h.save
    Host.find(8345).comments.create!(user_id: 415, content: "בשנה שעברה, 'גונתר דמניג' (2712) היה/הייתה מצוות/ת למארח/ת אברהם הוסטל תל אביב (8345). בצד של המארחים הוא/היא 19169.")
    h = Host.find(8345)
    h.active_last_year = true
    h.save
    Host.find(8052).comments.create!(user_id: 415, content: "בשנה שעברה, 'מאשה גורן' (2879) היה/הייתה מצוות/ת למארח/ת ליאור גורן (8052). בצד של המארחים הוא/היא 18786.")
    h = Host.find(8052)
    h.active_last_year = true
    h.save
    Host.find(1290).comments.create!(user_id: 415, content: "בשנה שעברה, 'אוה שפנר' (2813) היה/הייתה מצוות/ת למארח/ת גולדי אלבז (1290). בצד של המארחים הוא/היא 1692.")
    h = Host.find(1290)
    h.active_last_year = true
    h.save
    Host.find(7595).comments.create!(user_id: 415, content: "בשנה שעברה, 'אלי כהן' (1135) היה/הייתה מצוות/ת למארח/ת ספריית בי\"ס כוכב הצפון (7595). בצד של המארחים הוא/היא 18265.")
    h = Host.find(7595)
    h.active_last_year = true
    h.save
    Host.find(8364).comments.create!(user_id: 415, content: "בשנה שעברה, 'יניב בן שושן' (2978) היה/הייתה מצוות/ת למארח/ת גאיה בן סירה (8364). בצד של המארחים הוא/היא 19195.")
    h = Host.find(8364)
    h.active_last_year = true
    h.save
    Host.find(7822).comments.create!(user_id: 415, content: "בשנה שעברה, 'עדנה קדם' (2814) היה/הייתה מצוות/ת למארח/ת עדנה קדם (7822). בצד של המארחים הוא/היא 18520.")
    h = Host.find(7822)
    h.active_last_year = true
    h.save
    Host.find(4760).comments.create!(user_id: 415, content: "בשנה שעברה, 'ריטה קסימאו-בראון' (2850) היה/הייתה מצוות/ת למארח/ת אור אבקסיס (4760). בצד של המארחים הוא/היא 11125.")
    h = Host.find(4760)
    h.active_last_year = true
    h.save
    Host.find(4028).comments.create!(user_id: 415, content: "בשנה שעברה, 'שמואל צין' (2802) היה/הייתה מצוות/ת למארח/ת אסתר אבו צדקה- בני עקיבא רעננה צפון (4028). בצד של המארחים הוא/היא 10174.")
    h = Host.find(4028)
    h.active_last_year = true
    h.save
    Host.find(2567).comments.create!(user_id: 415, content: "בשנה שעברה, 'אסתר נניש' (2816) היה/הייתה מצוות/ת למארח/ת לבנת לאוה (2567). בצד של המארחים הוא/היא 5689.")
    h = Host.find(2567)
    h.active_last_year = true
    h.save
    Host.find(7711).comments.create!(user_id: 415, content: "בשנה שעברה, 'ציפורה אושרי' (2805) היה/הייתה מצוות/ת למארח/ת נועם סולומון (7711). בצד של המארחים הוא/היא 18400.")
    h = Host.find(7711)
    h.active_last_year = true
    h.save
    Host.find(8172).comments.create!(user_id: 415, content: "בשנה שעברה, 'רבקה קושניר' (1038) היה/הייתה מצוות/ת למארח/ת מישל סמיונוב (8172). בצד של המארחים הוא/היא 18945.")
    h = Host.find(8172)
    h.active_last_year = true
    h.save
    Host.find(6961).comments.create!(user_id: 415, content: "בשנה שעברה, 'יוכבד ברוש' (2807) היה/הייתה מצוות/ת למארח/ת שלומית כפיר (6961). בצד של המארחים הוא/היא 17527.")
    h = Host.find(6961)
    h.active_last_year = true
    h.save
    Host.find(7736).comments.create!(user_id: 415, content: "בשנה שעברה, 'גלבר פייביש (פייקו)' (2808) היה/הייתה מצוות/ת למארח/ת רחלי תדהר קנר (7736). בצד של המארחים הוא/היא 18428.")
    h = Host.find(7736)
    h.active_last_year = true
    h.save
    Host.find(8096).comments.create!(user_id: 415, content: "בשנה שעברה, 'יהודית ברעם' (2470) היה/הייתה מצוות/ת למארח/ת הוסטל בן גלים (8096). בצד של המארחים הוא/היא 18841.")
    h = Host.find(8096)
    h.active_last_year = true
    h.save
    Host.find(7495).comments.create!(user_id: 415, content: "בשנה שעברה, 'ליאת שמעון' (2815) היה/הייתה מצוות/ת למארח/ת איילת ריקנטי (7495). בצד של המארחים הוא/היא 18145.")
    h = Host.find(7495)
    h.active_last_year = true
    h.save
    Host.find(8546).comments.create!(user_id: 415, content: "בשנה שעברה, 'פרדי דגן' (2979) היה/הייתה מצוות/ת למארח/ת מעיין צוראל (8546). בצד של המארחים הוא/היא 19509.")
    h = Host.find(8546)
    h.active_last_year = true
    h.save
    Host.find(8464).comments.create!(user_id: 415, content: "בשנה שעברה, 'בקר איגור' (1871) היה/הייתה מצוות/ת למארח/ת ורוניקה דבורקין (8464). בצד של המארחים הוא/היא 19387.")
    h = Host.find(8464)
    h.active_last_year = true
    h.save
    Host.find(7315).comments.create!(user_id: 415, content: "בשנה שעברה, 'מתי גרינברג' (2817) היה/הייתה מצוות/ת למארח/ת הגר לופו (7315). בצד של המארחים הוא/היא 17929.")
    h = Host.find(7315)
    h.active_last_year = true
    h.save
    Host.find(7100).comments.create!(user_id: 415, content: "בשנה שעברה, 'רזי אילן' (2818) היה/הייתה מצוות/ת למארח/ת מור דוידור (7100). בצד של המארחים הוא/היא 17685.")
    h = Host.find(7100)
    h.active_last_year = true
    h.save
    Host.find(3806).comments.create!(user_id: 415, content: "בשנה שעברה, 'אלכס זליקוביץ' (2826) היה/הייתה מצוות/ת למארח/ת אילא קרמל שיפמן (3806). בצד של המארחים הוא/היא 5261.")
    h = Host.find(3806)
    h.active_last_year = true
    h.save
    Host.find(7098).comments.create!(user_id: 415, content: "בשנה שעברה, 'גד ברוש' (2892) היה/הייתה מצוות/ת למארח/ת עידו גרינבלום (7098). בצד של המארחים הוא/היא 17682.")
    h = Host.find(7098)
    h.active_last_year = true
    h.save
    Host.find(7302).comments.create!(user_id: 415, content: "בשנה שעברה, 'אורית זהבי' (2819) היה/הייתה מצוות/ת למארח/ת דבורה דניאלי (7302). בצד של המארחים הוא/היא 17915.")
    h = Host.find(7302)
    h.active_last_year = true
    h.save
    Host.find(6980).comments.create!(user_id: 415, content: "בשנה שעברה, 'אברהם דניאלי' (747) היה/הייתה מצוות/ת למארח/ת סהר אלימלך - ארגון המרכז לחינוך סייבר (6980). בצד של המארחים הוא/היא 17547.")
    h = Host.find(6980)
    h.active_last_year = true
    h.save
    Host.find(6635).comments.create!(user_id: 415, content: "בשנה שעברה, 'הדסה לנגסם' (2835) היה/הייתה מצוות/ת למארח/ת עמית אבן (6635). בצד של המארחים הוא/היא 17180.")
    h = Host.find(6635)
    h.active_last_year = true
    h.save
    Host.find(8218).comments.create!(user_id: 415, content: "בשנה שעברה, 'חנן גרין' (2959) היה/הייתה מצוות/ת למארח/ת קרן רונן (8218). בצד של המארחים הוא/היא 19002.")
    h = Host.find(8218)
    h.active_last_year = true
    h.save
    Host.find(9531).comments.create!(user_id: 415, content: "בשנה שעברה, 'יצחק סימון' (2837) היה/הייתה מצוות/ת למארח/ת חן מלקא (9531). בצד של המארחים הוא/היא 22523.")
    h = Host.find(9531)
    h.active_last_year = true
    h.save
    Host.find(7943).comments.create!(user_id: 415, content: "בשנה שעברה, 'שרה פון שורצה' (2824) היה/הייתה מצוות/ת למארח/ת קאנטרי חשמונאים (7943). בצד של המארחים הוא/היא 18666.")
    h = Host.find(7943)
    h.active_last_year = true
    h.save
    Host.find(3154).comments.create!(user_id: 415, content: "בשנה שעברה, 'ראובן שפיץ' (2867) היה/הייתה מצוות/ת למארח/ת רוית אלקיס יגרמן (3154). בצד של המארחים הוא/היא 9037.")
    h = Host.find(3154)
    h.active_last_year = true
    h.save
    Host.find(1530).comments.create!(user_id: 415, content: "בשנה שעברה, 'דבורה ברין' (2839) היה/הייתה מצוות/ת למארח/ת בירן אסנת (1530). בצד של המארחים הוא/היא 2207.")
    h = Host.find(1530)
    h.active_last_year = true
    h.save
    Host.find(8451).comments.create!(user_id: 415, content: "בשנה שעברה, 'דינה מרחב' (499) היה/הייתה מצוות/ת למארח/ת עירית זמט (8451). בצד של המארחים הוא/היא 19369.")
    h = Host.find(8451)
    h.active_last_year = true
    h.save
    Host.find(6853).comments.create!(user_id: 415, content: "בשנה שעברה, 'ברוך קראוס' (2443) היה/הייתה מצוות/ת למארח/ת ericsson (6853). בצד של המארחים הוא/היא 17409.")
    h = Host.find(6853)
    h.active_last_year = true
    h.save
    Host.find(8705).comments.create!(user_id: 415, content: "בשנה שעברה, 'אלה פאר' (2901) היה/הייתה מצוות/ת למארח/ת פיני שניר (8705). בצד של המארחים הוא/היא 19772.")
    h = Host.find(8705)
    h.active_last_year = true
    h.save
    Host.find(6874).comments.create!(user_id: 415, content: "בשנה שעברה, 'אביבה פז' (2779) היה/הייתה מצוות/ת למארח/ת שקד לוי (6874). בצד של המארחים הוא/היא 17430.")
    h = Host.find(6874)
    h.active_last_year = true
    h.save
    Host.find(6727).comments.create!(user_id: 415, content: "בשנה שעברה, 'ירדנה זיגמן איגרה' (2956) היה/הייתה מצוות/ת למארח/ת שיר מזרחי (6727). בצד של המארחים הוא/היא 17270.")
    h = Host.find(6727)
    h.active_last_year = true
    h.save
    Host.find(7125).comments.create!(user_id: 415, content: "בשנה שעברה, 'נורית בלכנר' (2788) היה/הייתה מצוות/ת למארח/ת מרינה - משטרת נהריה (7125). בצד של המארחים הוא/היא 17709.")
    h = Host.find(7125)
    h.active_last_year = true
    h.save
    Host.find(9159).comments.create!(user_id: 415, content: "בשנה שעברה, 'רותי טורקניץ' (236) היה/הייתה מצוות/ת למארח/ת שגיא פרידמן (9159). בצד של המארחים הוא/היא 20948.")
    h = Host.find(9159)
    h.active_last_year = true
    h.save
    Host.find(6115).comments.create!(user_id: 415, content: "בשנה שעברה, 'כרמיאל יוסף' (2522) היה/הייתה מצוות/ת למארח/ת מיקי לוי (6115). בצד של המארחים הוא/היא 14431.")
    h = Host.find(6115)
    h.active_last_year = true
    h.save
    Host.find(7603).comments.create!(user_id: 415, content: "בשנה שעברה, 'אביחי אורן' (1416) היה/הייתה מצוות/ת למארח/ת בית קמחי (7603). בצד של המארחים הוא/היא 18273.")
    h = Host.find(7603)
    h.active_last_year = true
    h.save
    Host.find(6588).comments.create!(user_id: 415, content: "בשנה שעברה, 'רות אברכהן' (2275) היה/הייתה מצוות/ת למארח/ת מירב גביש (6588). בצד של המארחים הוא/היא 17135.")
    h = Host.find(6588)
    h.active_last_year = true
    h.save
    Host.find(7508).comments.create!(user_id: 415, content: "בשנה שעברה, 'איציק חידרסקי' (279) היה/הייתה מצוות/ת למארח/ת ענת ויונטה (7508). בצד של המארחים הוא/היא 18160.")
    h = Host.find(7508)
    h.active_last_year = true
    h.save
    Host.find(8597).comments.create!(user_id: 415, content: "בשנה שעברה, 'הדסה נחושתן' (2501) היה/הייתה מצוות/ת למארח/ת שוש בן שושן (8597). בצד של המארחים הוא/היא 19587.")
    h = Host.find(8597)
    h.active_last_year = true
    h.save
    Host.find(8505).comments.create!(user_id: 415, content: "בשנה שעברה, 'רחל ישראלי' (1637) היה/הייתה מצוות/ת למארח/ת לינוי דמרי (8505). בצד של המארחים הוא/היא 19443.")
    h = Host.find(8505)
    h.active_last_year = true
    h.save
    Host.find(7436).comments.create!(user_id: 415, content: "בשנה שעברה, 'נוח שטרן' (714) היה/הייתה מצוות/ת למארח/ת שחר ברגר (7436). בצד של המארחים הוא/היא 18075.")
    h = Host.find(7436)
    h.active_last_year = true
    h.save
    Host.find(6763).comments.create!(user_id: 415, content: "בשנה שעברה, 'אבירם צבי' (2434) היה/הייתה מצוות/ת למארח/ת אילנה דיכטר (6763). בצד של המארחים הוא/היא 17308.")
    h = Host.find(6763)
    h.active_last_year = true
    h.save
    Host.find(3362).comments.create!(user_id: 415, content: "בשנה שעברה, 'שלישיית \"הדור השלישי\" (אודי ברינדט)' (2477) היה/הייתה מצוות/ת למארח/ת גילי טל (3362). בצד של המארחים הוא/היא 9245.")
    h = Host.find(3362)
    h.active_last_year = true
    h.save
    Host.find(7048).comments.create!(user_id: 415, content: "בשנה שעברה, 'זיוה לוי' (2326) היה/הייתה מצוות/ת למארח/ת טל שפיצר (7048). בצד של המארחים הוא/היא 17626.")
    h = Host.find(7048)
    h.active_last_year = true
    h.save
    Host.find(233).comments.create!(user_id: 415, content: "בשנה שעברה, 'מרדכי ליבר' (2849) היה/הייתה מצוות/ת למארח/ת כרמל רבינוביץ (233). בצד של המארחים הוא/היא 242.")
    h = Host.find(233)
    h.active_last_year = true
    h.save
    Host.find(7504).comments.create!(user_id: 415, content: "בשנה שעברה, 'קרלה פלפל' (2848) היה/הייתה מצוות/ת למארח/ת דנה קיזלשטיין (7504). בצד של המארחים הוא/היא 18156.")
    h = Host.find(7504)
    h.active_last_year = true
    h.save
    Host.find(7502).comments.create!(user_id: 415, content: "בשנה שעברה, 'חנה שפיצר' (2846) היה/הייתה מצוות/ת למארח/ת עידן רוזנפלד (7502). בצד של המארחים הוא/היא 18153.")
    h = Host.find(7502)
    h.active_last_year = true
    h.save
    Host.find(7547).comments.create!(user_id: 415, content: "בשנה שעברה, 'מירה שקד' (2845) היה/הייתה מצוות/ת למארח/ת צמרת קניזניק (7547). בצד של המארחים הוא/היא 18200.")
    h = Host.find(7547)
    h.active_last_year = true
    h.save
    Host.find(3272).comments.create!(user_id: 415, content: "בשנה שעברה, 'יעל המבורג' (2851) היה/הייתה מצוות/ת למארח/ת דיאנה דבטיאן (3272). בצד של המארחים הוא/היא 9154.")
    h = Host.find(3272)
    h.active_last_year = true
    h.save
    Host.find(7020).comments.create!(user_id: 415, content: "בשנה שעברה, 'מימי הופרט' (2847) היה/הייתה מצוות/ת למארח/ת אמילי שופן ואמיתי קראוס (7020). בצד של המארחים הוא/היא 17589.")
    h = Host.find(7020)
    h.active_last_year = true
    h.save
    Host.find(987).comments.create!(user_id: 415, content: "בשנה שעברה, 'שרה רוזן' (2856) היה/הייתה מצוות/ת למארח/ת הילה קורן (987). בצד של המארחים הוא/היא 1105.")
    h = Host.find(987)
    h.active_last_year = true
    h.save
    Host.find(6751).comments.create!(user_id: 415, content: "בשנה שעברה, 'שולה שטיינמץ' (2857) היה/הייתה מצוות/ת למארח/ת נטע בן סעדון (6751). בצד של המארחים הוא/היא 17295.")
    h = Host.find(6751)
    h.active_last_year = true
    h.save
    Host.find(7400).comments.create!(user_id: 415, content: "בשנה שעברה, 'רבקה הר אריה' (218) היה/הייתה מצוות/ת למארח/ת ויקי קרויטור (7400). בצד של המארחים הוא/היא 18033.")
    h = Host.find(7400)
    h.active_last_year = true
    h.save
    Host.find(4125).comments.create!(user_id: 415, content: "בשנה שעברה, 'זיוה סוסק' (2371) היה/הייתה מצוות/ת למארח/ת הגר שמואלי (4125). בצד של המארחים הוא/היא 10295.")
    h = Host.find(4125)
    h.active_last_year = true
    h.save
    Host.find(6785).comments.create!(user_id: 415, content: "בשנה שעברה, 'שרה פלס' (1793) היה/הייתה מצוות/ת למארח/ת מתן קפל (6785). בצד של המארחים הוא/היא 17333.")
    h = Host.find(6785)
    h.active_last_year = true
    h.save
    Host.find(6555).comments.create!(user_id: 415, content: "בשנה שעברה, 'מרסל שיוביץ' (2868) היה/הייתה מצוות/ת למארח/ת מלכי רוטנר (6555). בצד של המארחים הוא/היא 17103.")
    h = Host.find(6555)
    h.active_last_year = true
    h.save
    Host.find(1506).comments.create!(user_id: 415, content: "בשנה שעברה, 'מזל דאי' (2859) היה/הייתה מצוות/ת למארח/ת ארומה סיטי אשדוד (1506). בצד של המארחים הוא/היא 2152.")
    h = Host.find(1506)
    h.active_last_year = true
    h.save
    Host.find(6743).comments.create!(user_id: 415, content: "בשנה שעברה, 'ברנרד שפיק' (601) היה/הייתה מצוות/ת למארח/ת מועדון גמלאי יוספטל כפ\"ס (6743). בצד של המארחים הוא/היא 17287.")
    h = Host.find(6743)
    h.active_last_year = true
    h.save
    Host.find(7295).comments.create!(user_id: 415, content: "בשנה שעברה, 'דורון נידרלנד (פרופ')' (2866) היה/הייתה מצוות/ת למארח/ת ש\"י איבלמן לוין (7295). בצד של המארחים הוא/היא 17907.")
    h = Host.find(7295)
    h.active_last_year = true
    h.save
    Host.find(4059).comments.create!(user_id: 415, content: "בשנה שעברה, 'זינה ואברהם' (2865) היה/הייתה מצוות/ת למארח/ת סיגלית יחזקאל (4059). בצד של המארחים הוא/היא 10216.")
    h = Host.find(4059)
    h.active_last_year = true
    h.save
    Host.find(4891).comments.create!(user_id: 415, content: "בשנה שעברה, 'יעקב תל אור' (2864) היה/הייתה מצוות/ת למארח/ת יעל פרנבך (4891). בצד של המארחים הוא/היא 11359.")
    h = Host.find(4891)
    h.active_last_year = true
    h.save
    Host.find(8577).comments.create!(user_id: 415, content: "בשנה שעברה, 'יפה ארקליס' (2861) היה/הייתה מצוות/ת למארח/ת איציק שעבן (8577). בצד של המארחים הוא/היא 19551.")
    h = Host.find(8577)
    h.active_last_year = true
    h.save
    Host.find(8302).comments.create!(user_id: 415, content: "בשנה שעברה, 'אריה פיטמן' (2863) היה/הייתה מצוות/ת למארח/ת אתי רון (8302). בצד של המארחים הוא/היא 19116.")
    h = Host.find(8302)
    h.active_last_year = true
    h.save
    Host.find(8130).comments.create!(user_id: 415, content: "בשנה שעברה, 'יונה ארנשטיין' (2870) היה/הייתה מצוות/ת למארח/ת יהודה ארנשטיין (8130). בצד של המארחים הוא/היא 18878.")
    h = Host.find(8130)
    h.active_last_year = true
    h.save
    Host.find(8292).comments.create!(user_id: 415, content: "בשנה שעברה, 'לאה ינוביץ' (2862) היה/הייתה מצוות/ת למארח/ת אילנה פצ'רסקי (8292). בצד של המארחים הוא/היא 19090.")
    h = Host.find(8292)
    h.active_last_year = true
    h.save
    Host.find(271).comments.create!(user_id: 415, content: "בשנה שעברה, 'יפה כושר' (917) היה/הייתה מצוות/ת למארח/ת הדס ברלב כהן (271). בצד של המארחים הוא/היא 295.")
    h = Host.find(271)
    h.active_last_year = true
    h.save
    Host.find(7771).comments.create!(user_id: 415, content: "בשנה שעברה, 'רון יוסף' (2638) היה/הייתה מצוות/ת למארח/ת נועה דהן (7771). בצד של המארחים הוא/היא 18468.")
    h = Host.find(7771)
    h.active_last_year = true
    h.save
    Host.find(7388).comments.create!(user_id: 415, content: "בשנה שעברה, 'יהודה ורדי' (1572) היה/הייתה מצוות/ת למארח/ת אביטל מאירי (7388). בצד של המארחים הוא/היא 18018.")
    h = Host.find(7388)
    h.active_last_year = true
    h.save
    Host.find(6933).comments.create!(user_id: 415, content: "בשנה שעברה, 'חנה שטריכליכט' (1568) היה/הייתה מצוות/ת למארח/ת יעל ניזרי (6933). בצד של המארחים הוא/היא 17495.")
    h = Host.find(6933)
    h.active_last_year = true
    h.save
    Host.find(7953).comments.create!(user_id: 415, content: "בשנה שעברה, 'ראובן וחדווה גיל' (1593) היה/הייתה מצוות/ת למארח/ת נעה ספיר (7953). בצד של המארחים הוא/היא 18676.")
    h = Host.find(7953)
    h.active_last_year = true
    h.save
    Host.find(1264).comments.create!(user_id: 415, content: "בשנה שעברה, 'ישי רדל' (2882) היה/הייתה מצוות/ת למארח/ת אפרת ששון (1264). בצד של המארחים הוא/היא 1632.")
    h = Host.find(1264)
    h.active_last_year = true
    h.save
    Host.find(6135).comments.create!(user_id: 415, content: "בשנה שעברה, 'סעדיה בהט' (2881) היה/הייתה מצוות/ת למארח/ת דגנית אפלר (6135). בצד של המארחים הוא/היא 14586.")
    h = Host.find(6135)
    h.active_last_year = true
    h.save
    Host.find(8318).comments.create!(user_id: 415, content: "בשנה שעברה, 'חווה מוריס' (2898) היה/הייתה מצוות/ת למארח/ת דורית נווה (8318). בצד של המארחים הוא/היא 19139.")
    h = Host.find(8318)
    h.active_last_year = true
    h.save
    Host.find(6569).comments.create!(user_id: 415, content: "בשנה שעברה, 'מנחם בן יצחק' (2889) היה/הייתה מצוות/ת למארח/ת אלמוג אייזנמן (6569). בצד של המארחים הוא/היא 17116.")
    h = Host.find(6569)
    h.active_last_year = true
    h.save
    Host.find(6987).comments.create!(user_id: 415, content: "בשנה שעברה, 'עידן רגב' (2886) היה/הייתה מצוות/ת למארח/ת חגית דמרי (6987). בצד של המארחים הוא/היא 17555.")
    h = Host.find(6987)
    h.active_last_year = true
    h.save
    Host.find(6986).comments.create!(user_id: 415, content: "בשנה שעברה, 'ציפורה אולגה הירש' (2883) היה/הייתה מצוות/ת למארח/ת הניה פישמן (6986). בצד של המארחים הוא/היא 17554.")
    h = Host.find(6986)
    h.active_last_year = true
    h.save
    Host.find(7493).comments.create!(user_id: 415, content: "בשנה שעברה, 'הרב יצחק אליפנט- הרב הראשי לדימונה' (2888) היה/הייתה מצוות/ת למארח/ת עודד הרוש (7493). בצד של המארחים הוא/היא 18143.")
    h = Host.find(7493)
    h.active_last_year = true
    h.save
    Host.find(7512).comments.create!(user_id: 415, content: "בשנה שעברה, 'גרשון צ'יבוטרו' (2885) היה/הייתה מצוות/ת למארח/ת מעיין ירושלמי- כהן (7512). בצד של המארחים הוא/היא 18164.")
    h = Host.find(7512)
    h.active_last_year = true
    h.save
    Host.find(3734).comments.create!(user_id: 415, content: "בשנה שעברה, 'הלן קרמון' (2890) היה/הייתה מצוות/ת למארח/ת משה בר (3734). בצד של המארחים הוא/היא 9793.")
    h = Host.find(3734)
    h.active_last_year = true
    h.save
    Host.find(3946).comments.create!(user_id: 415, content: "בשנה שעברה, 'ציפי נוביק ויינברג' (2937) היה/הייתה מצוות/ת למארח/ת ‫אפרת בשרי‬‎ (3946). בצד של המארחים הוא/היא 10069.")
    h = Host.find(3946)
    h.active_last_year = true
    h.save
    Host.find(7594).comments.create!(user_id: 415, content: "בשנה שעברה, 'יונה אונגר' (2933) היה/הייתה מצוות/ת למארח/ת אידית שפט (7594). בצד של המארחים הוא/היא 18264.")
    h = Host.find(7594)
    h.active_last_year = true
    h.save
    Host.find(8040).comments.create!(user_id: 415, content: "בשנה שעברה, 'אביבה ברמי' (1445) היה/הייתה מצוות/ת למארח/ת שרי (8040). בצד של המארחים הוא/היא 18773.")
    h = Host.find(8040)
    h.active_last_year = true
    h.save
    Host.find(8544).comments.create!(user_id: 415, content: "בשנה שעברה, 'שושנה וינברגר' (2884) היה/הייתה מצוות/ת למארח/ת אבישג עמית-שפירא (8544). בצד של המארחים הוא/היא 13186.")
    h = Host.find(8544)
    h.active_last_year = true
    h.save
    Host.find(147).comments.create!(user_id: 415, content: "בשנה שעברה, 'עינת כהן' (2897) היה/הייתה מצוות/ת למארח/ת אביב ניר (בשם בית תמי - מרכז קהילתי לב תל אביב) (147). בצד של המארחים הוא/היא 151.")
    h = Host.find(147)
    h.active_last_year = true
    h.save
    Host.find(8216).comments.create!(user_id: 415, content: "בשנה שעברה, 'מינה שומרון' (2896) היה/הייתה מצוות/ת למארח/ת אילי הדר (8216). בצד של המארחים הוא/היא 18998.")
    h = Host.find(8216)
    h.active_last_year = true
    h.save
    Host.find(6543).comments.create!(user_id: 415, content: "בשנה שעברה, 'בן נון אביגיל' (2903) היה/הייתה מצוות/ת למארח/ת נעמי אהרונוביץ (6543). בצד של המארחים הוא/היא 17092.")
    h = Host.find(6543)
    h.active_last_year = true
    h.save
    Host.find(9050).comments.create!(user_id: 415, content: "בשנה שעברה, 'קרפניך בלה' (2214) היה/הייתה מצוות/ת למארח/ת שרית פריינטה (9050). בצד של המארחים הוא/היא 20617.")
    h = Host.find(9050)
    h.active_last_year = true
    h.save
    Host.find(2841).comments.create!(user_id: 415, content: "בשנה שעברה, 'סילביה אהרון' (2904) היה/הייתה מצוות/ת למארח/ת יסמין אלבחרי (2841). בצד של המארחים הוא/היא 8622.")
    h = Host.find(2841)
    h.active_last_year = true
    h.save
    Host.find(9466).comments.create!(user_id: 415, content: "בשנה שעברה, 'רנה שיפוני' (2940) היה/הייתה מצוות/ת למארח/ת חן גילאור שרעבי (9466). בצד של המארחים הוא/היא 22259.")
    h = Host.find(9466)
    h.active_last_year = true
    h.save
    Host.find(6870).comments.create!(user_id: 415, content: "בשנה שעברה, 'אריק ריטר' (2932) היה/הייתה מצוות/ת למארח/ת עינת אהרון  מטעם עמותת שלומית (6870). בצד של המארחים הוא/היא 17426.")
    h = Host.find(6870)
    h.active_last_year = true
    h.save
    Host.find(9381).comments.create!(user_id: 415, content: "בשנה שעברה, 'חיים הרצל' (2934) היה/הייתה מצוות/ת למארח/ת מורי הרצל (9381). בצד של המארחים הוא/היא 21776.")
    h = Host.find(9381)
    h.active_last_year = true
    h.save
    Host.find(1208).comments.create!(user_id: 415, content: "בשנה שעברה, 'אלירם ג'נה' (1508) היה/הייתה מצוות/ת למארח/ת סמאי דוד (1208). בצד של המארחים הוא/היא 1535.")
    h = Host.find(1208)
    h.active_last_year = true
    h.save
    Host.find(8001).comments.create!(user_id: 415, content: "בשנה שעברה, 'ד\"ר אדלה מורנו' (405) היה/הייתה מצוות/ת למארח/ת קהילת קודש וחול בחולון (8001). בצד של המארחים הוא/היא 18735.")
    h = Host.find(8001)
    h.active_last_year = true
    h.save
    Host.find(5306).comments.create!(user_id: 415, content: "בשנה שעברה, 'רינה כהן' (2918) היה/הייתה מצוות/ת למארח/ת זהר קפלן (5306). בצד של המארחים הוא/היא 12161.")
    h = Host.find(5306)
    h.active_last_year = true
    h.save
    Host.find(7713).comments.create!(user_id: 415, content: "בשנה שעברה, 'סימה לבנטל' (2843) היה/הייתה מצוות/ת למארח/ת ענת רייזמן (7713). בצד של המארחים הוא/היא 18403.")
    h = Host.find(7713)
    h.active_last_year = true
    h.save
    Host.find(5225).comments.create!(user_id: 415, content: "בשנה שעברה, 'אילנה קראוס' (2916) היה/הייתה מצוות/ת למארח/ת שירה ביטון (5225). בצד של המארחים הוא/היא 11999.")
    h = Host.find(5225)
    h.active_last_year = true
    h.save
    Host.find(7808).comments.create!(user_id: 415, content: "בשנה שעברה, 'פאני ויוסף נישטט' (2915) היה/הייתה מצוות/ת למארח/ת רעות ליפשיץ (7808). בצד של המארחים הוא/היא 18507.")
    h = Host.find(7808)
    h.active_last_year = true
    h.save
    Host.find(7396).comments.create!(user_id: 415, content: "בשנה שעברה, 'אתי בדיחי' (2557) היה/הייתה מצוות/ת למארח/ת יעל אשר (7396). בצד של המארחים הוא/היא 18029.")
    h = Host.find(7396)
    h.active_last_year = true
    h.save
    Host.find(6954).comments.create!(user_id: 415, content: "בשנה שעברה, 'חנוך שחר' (2926) היה/הייתה מצוות/ת למארח/ת הדסי לילך (6954). בצד של המארחים הוא/היא 17520.")
    h = Host.find(6954)
    h.active_last_year = true
    h.save
    Host.find(1639).comments.create!(user_id: 415, content: "בשנה שעברה, 'יהושוע ורשבסקי' (2162) היה/הייתה מצוות/ת למארח/ת ברק חדריאן (1639). בצד של המארחים הוא/היא 2441.")
    h = Host.find(1639)
    h.active_last_year = true
    h.save
    Host.find(8347).comments.create!(user_id: 415, content: "בשנה שעברה, 'בצלאל קופרווסר' (2930) היה/הייתה מצוות/ת למארח/ת אמילי זיידל (8347). בצד של המארחים הוא/היא 19170.")
    h = Host.find(8347)
    h.active_last_year = true
    h.save
    Host.find(7411).comments.create!(user_id: 415, content: "בשנה שעברה, 'אורי טמל' (2928) היה/הייתה מצוות/ת למארח/ת ענת ווקסמן (7411). בצד של המארחים הוא/היא 16065.")
    h = Host.find(7411)
    h.active_last_year = true
    h.save
    Host.find(7970).comments.create!(user_id: 415, content: "בשנה שעברה, 'משה קציר' (2919) היה/הייתה מצוות/ת למארח/ת עינבר ויינברגר (7970). בצד של המארחים הוא/היא 18700.")
    h = Host.find(7970)
    h.active_last_year = true
    h.save
    Host.find(8221).comments.create!(user_id: 415, content: "בשנה שעברה, 'לבו מירון' (2920) היה/הייתה מצוות/ת למארח/ת מור (8221). בצד של המארחים הוא/היא 19006.")
    h = Host.find(8221)
    h.active_last_year = true
    h.save
    Host.find(8145).comments.create!(user_id: 415, content: "בשנה שעברה, 'דליה רבינוביץ' (2929) היה/הייתה מצוות/ת למארח/ת חנית ברום (8145). בצד של המארחים הוא/היא 6936.")
    h = Host.find(8145)
    h.active_last_year = true
    h.save
    Host.find(7449).comments.create!(user_id: 415, content: "בשנה שעברה, 'זמירה בר לב' (2925) היה/הייתה מצוות/ת למארח/ת רויטל צבאן (7449). בצד של המארחים הוא/היא 18089.")
    h = Host.find(7449)
    h.active_last_year = true
    h.save
    Host.find(6911).comments.create!(user_id: 415, content: "בשנה שעברה, 'הרמינה גולדשטיין' (2170) היה/הייתה מצוות/ת למארח/ת טל רוזין (6911). בצד של המארחים הוא/היא 17467.")
    h = Host.find(6911)
    h.active_last_year = true
    h.save
    Host.find(8235).comments.create!(user_id: 415, content: "בשנה שעברה, 'סוזי רוסק' (2936) היה/הייתה מצוות/ת למארח/ת נירה שפק (8235). בצד של המארחים הוא/היא 19020.")
    h = Host.find(8235)
    h.active_last_year = true
    h.save
    Host.find(8657).comments.create!(user_id: 415, content: "בשנה שעברה, 'שאול הונדלר' (2931) היה/הייתה מצוות/ת למארח/ת ענת בן שיטרית (8657). בצד של המארחים הוא/היא 19691.")
    h = Host.find(8657)
    h.active_last_year = true
    h.save
    Host.find(8408).comments.create!(user_id: 415, content: "בשנה שעברה, 'הנרי ומרים רוזן' (2938) היה/הייתה מצוות/ת למארח/ת דפנה ורונן קניג (8408). בצד של המארחים הוא/היא 19282.")
    h = Host.find(8408)
    h.active_last_year = true
    h.save
    Host.find(2220).comments.create!(user_id: 415, content: "בשנה שעברה, 'אגמון מרים' (2748) היה/הייתה מצוות/ת למארח/ת שירלי חברוני (2220). בצד של המארחים הוא/היא 4150.")
    h = Host.find(2220)
    h.active_last_year = true
    h.save
    Host.find(8111).comments.create!(user_id: 415, content: "בשנה שעברה, 'יהודית משה' (1408) היה/הייתה מצוות/ת למארח/ת נטע וארנון מוזר (8111). בצד של המארחים הוא/היא 18855.")
    h = Host.find(8111)
    h.active_last_year = true
    h.save
    Host.find(7364).comments.create!(user_id: 415, content: "בשנה שעברה, 'פנחס זינגר' (2950) היה/הייתה מצוות/ת למארח/ת ליאת צדקני (7364). בצד של המארחים הוא/היא 17987.")
    h = Host.find(7364)
    h.active_last_year = true
    h.save
    Host.find(6618).comments.create!(user_id: 415, content: "בשנה שעברה, 'קרול נודלמן' (2949) היה/הייתה מצוות/ת למארח/ת מאיה לוי (6618). בצד של המארחים הוא/היא 17164.")
    h = Host.find(6618)
    h.active_last_year = true
    h.save
    Host.find(8293).comments.create!(user_id: 415, content: "בשנה שעברה, 'חיים מנדלוביץ' (2948) היה/הייתה מצוות/ת למארח/ת רן וייסברוט (8293). בצד של המארחים הוא/היא 19092.")
    h = Host.find(8293)
    h.active_last_year = true
    h.save
    Host.find(8146).comments.create!(user_id: 415, content: "בשנה שעברה, 'דניאל שוואב' (2947) היה/הייתה מצוות/ת למארח/ת נועה שבת (8146). בצד של המארחים הוא/היא 18900.")
    h = Host.find(8146)
    h.active_last_year = true
    h.save
    Host.find(7637).comments.create!(user_id: 415, content: "בשנה שעברה, 'יעקב יחמוביץ'' (2954) היה/הייתה מצוות/ת למארח/ת ספיר כהן (7637). בצד של המארחים הוא/היא 18315.")
    h = Host.find(7637)
    h.active_last_year = true
    h.save
    Host.find(2369).comments.create!(user_id: 415, content: "בשנה שעברה, 'מרדכי מרקשייד' (2052) היה/הייתה מצוות/ת למארח/ת נופר נגר (2369). בצד של המארחים הוא/היא 4631.")
    h = Host.find(2369)
    h.active_last_year = true
    h.save
    Host.find(9044).comments.create!(user_id: 415, content: "בשנה שעברה, 'תמר גולן' (2961) היה/הייתה מצוות/ת למארח/ת קורל חכים (9044). בצד של המארחים הוא/היא 20593.")
    h = Host.find(9044)
    h.active_last_year = true
    h.save
    Host.find(5239).comments.create!(user_id: 415, content: "בשנה שעברה, 'ליאור כץ' (2974) היה/הייתה מצוות/ת למארח/ת אורלי שושני (5239). בצד של המארחים הוא/היא 12023.")
    h = Host.find(5239)
    h.active_last_year = true
    h.save
    Host.find(9257).comments.create!(user_id: 415, content: "בשנה שעברה, 'פרלה דדיש' (2963) היה/הייתה מצוות/ת למארח/ת נועה לייקוב (9257). בצד של המארחים הוא/היא 21299.")
    h = Host.find(9257)
    h.active_last_year = true
    h.save
    Host.find(8361).comments.create!(user_id: 415, content: "בשנה שעברה, 'שמחה אברהמי' (2973) היה/הייתה מצוות/ת למארח/ת אבישג (8361). בצד של המארחים הוא/היא 19189.")
    h = Host.find(8361)
    h.active_last_year = true
    h.save
    Host.find(8750).comments.create!(user_id: 415, content: "בשנה שעברה, 'ליודמילה גרצ'יוב' (2965) היה/הייתה מצוות/ת למארח/ת ארתור גרופ (8750). בצד של המארחים הוא/היא 19858.")
    h = Host.find(8750)
    h.active_last_year = true
    h.save
    Host.find(8305).comments.create!(user_id: 415, content: "בשנה שעברה, 'ילנה לוייטר' (2976) היה/הייתה מצוות/ת למארח/ת שירה ג'רג'י (8305). בצד של המארחים הוא/היא 19121.")
    h = Host.find(8305)
    h.active_last_year = true
    h.save
    Host.find(4361).comments.create!(user_id: 415, content: "בשנה שעברה, 'דבורה פנג' (2975) היה/הייתה מצוות/ת למארח/ת אלמוג פישר (4361). בצד של המארחים הוא/היא 10584.")
    h = Host.find(4361)
    h.active_last_year = true
    h.save
    Host.find(8624).comments.create!(user_id: 415, content: "בשנה שעברה, 'יוסף יוסף' (2964) היה/הייתה מצוות/ת למארח/ת מיטל יעקובוב (8624). בצד של המארחים הוא/היא 19621.")
    h = Host.find(8624)
    h.active_last_year = true
    h.save
    Host.find(7830).comments.create!(user_id: 415, content: "בשנה שעברה, 'דני לרנר' (2924) היה/הייתה מצוות/ת למארח/ת טח קרת (7830). בצד של המארחים הוא/היא 18529.")
    h = Host.find(7830)
    h.active_last_year = true
    h.save
    Host.find(3131).comments.create!(user_id: 415, content: "בשנה שעברה, 'חנה מלכה' (1701) היה/הייתה מצוות/ת למארח/ת ברק מטס (3131). בצד של המארחים הוא/היא 9014.")
    h = Host.find(3131)
    h.active_last_year = true
    h.save
    Host.find(3949).comments.create!(user_id: 415, content: "בשנה שעברה, 'רות שרון' (612) היה/הייתה מצוות/ת למארח/ת רונית גבאי(שרון) (3949). בצד של המארחים הוא/היא 10079.")
    h = Host.find(3949)
    h.active_last_year = true
    h.save
    Host.find(3212).comments.create!(user_id: 415, content: "בשנה שעברה, 'מרים אברמוביץ'' (2977) היה/הייתה מצוות/ת למארח/ת עמית שמש (3212). בצד של המארחים הוא/היא 9097.")
    h = Host.find(3212)
    h.active_last_year = true
    h.save
    Host.find(8391).comments.create!(user_id: 415, content: "בשנה שעברה, 'משה עקרוני' (2844) היה/הייתה מצוות/ת למארח/ת קרן שפיר (8391). בצד של המארחים הוא/היא 19239.")
    h = Host.find(8391)
    h.active_last_year = true
    h.save
    Host.find(9556).comments.create!(user_id: 415, content: "בשנה שעברה, 'איריס בלום' (3077) היה/הייתה מצוות/ת למארח/ת יגל חנוכה (9556). בצד של המארחים הוא/היא 22647.")
    h = Host.find(9556)
    h.active_last_year = true
    h.save
    Host.find(3360).comments.create!(user_id: 415, content: "בשנה שעברה, 'אסתר פריזר' (2996) היה/הייתה מצוות/ת למארח/ת BINA Secular Yeshiva in Tel Aviv (3360). בצד של המארחים הוא/היא 9242.")
    h = Host.find(3360)
    h.active_last_year = true
    h.save
    Host.find(7454).comments.create!(user_id: 415, content: "בשנה שעברה, 'בנימין גנור' (2981) היה/הייתה מצוות/ת למארח/ת פנימיית גבעת הוד/בית הנוער (7454). בצד של המארחים הוא/היא 18094.")
    h = Host.find(7454)
    h.active_last_year = true
    h.save
    Host.find(3181).comments.create!(user_id: 415, content: "בשנה שעברה, 'אווה לזר' (2993) היה/הייתה מצוות/ת למארח/ת טלי אילני (3181). בצד של המארחים הוא/היא 9066.")
    h = Host.find(3181)
    h.active_last_year = true
    h.save
    Host.find(7082).comments.create!(user_id: 415, content: "בשנה שעברה, 'יצחק גולדשטיין' (2995) היה/הייתה מצוות/ת למארח/ת שי סבג (7082). בצד של המארחים הוא/היא 17664.")
    h = Host.find(7082)
    h.active_last_year = true
    h.save
    Host.find(7897).comments.create!(user_id: 415, content: "בשנה שעברה, 'דשה ושמעון ציבקין' (1511) היה/הייתה מצוות/ת למארח/ת יעל ויזל (7897). בצד של המארחים הוא/היא 18610.")
    h = Host.find(7897)
    h.active_last_year = true
    h.save
    Host.find(9663).comments.create!(user_id: 415, content: "בשנה שעברה, 'דוד אייזמן' (712) היה/הייתה מצוות/ת למארח/ת אסנת בנאי (9663). בצד של המארחים הוא/היא 23242.")
    h = Host.find(9663)
    h.active_last_year = true
    h.save
    Host.find(7332).comments.create!(user_id: 415, content: "בשנה שעברה, 'עמי ברנזון' (3001) היה/הייתה מצוות/ת למארח/ת הילה מזוז (7332). בצד של המארחים הוא/היא 17951.")
    h = Host.find(7332)
    h.active_last_year = true
    h.save
    Host.find(8211).comments.create!(user_id: 415, content: "בשנה שעברה, 'איבון יונה בנדה' (3041) היה/הייתה מצוות/ת למארח/ת אופיר גורלי (8211). בצד של המארחים הוא/היא 18992.")
    h = Host.find(8211)
    h.active_last_year = true
    h.save
    Host.find(8392).comments.create!(user_id: 415, content: "בשנה שעברה, 'מקס נתנס' (3002) היה/הייתה מצוות/ת למארח/ת עופר ונילי בן צבי (8392). בצד של המארחים הוא/היא 19240.")
    h = Host.find(8392)
    h.active_last_year = true
    h.save
    Host.find(7042).comments.create!(user_id: 415, content: "בשנה שעברה, 'בנימין סגל' (1571) היה/הייתה מצוות/ת למארח/ת קומונת קרית גת כנפיים של קרמבו (7042). בצד של המארחים הוא/היא 17616.")
    h = Host.find(7042)
    h.active_last_year = true
    h.save
    Host.find(8773).comments.create!(user_id: 415, content: "בשנה שעברה, 'מישל למפל' (3012) היה/הייתה מצוות/ת למארח/ת Esther Levenson (8773). בצד של המארחים הוא/היא 15003.")
    h = Host.find(8773)
    h.active_last_year = true
    h.save
    Host.find(6789).comments.create!(user_id: 415, content: "בשנה שעברה, 'לילי קאופמן' (379) היה/הייתה מצוות/ת למארח/ת שיר קליין (6789). בצד של המארחים הוא/היא 17338.")
    h = Host.find(6789)
    h.active_last_year = true
    h.save
    Host.find(6852).comments.create!(user_id: 415, content: "בשנה שעברה, 'שרה רוזנברג' (2055) היה/הייתה מצוות/ת למארח/ת רותם שושנה (6852). בצד של המארחים הוא/היא 17408.")
    h = Host.find(6852)
    h.active_last_year = true
    h.save
    Host.find(6481).comments.create!(user_id: 415, content: "בשנה שעברה, 'לאה סמט' (3039) היה/הייתה מצוות/ת למארח/ת אביב עגיב (6481). בצד של המארחים הוא/היא 17032.")
    h = Host.find(6481)
    h.active_last_year = true
    h.save
    Host.find(9728).comments.create!(user_id: 415, content: "בשנה שעברה, 'סלי זייפמן' (1502) היה/הייתה מצוות/ת למארח/ת רבקה (9728). בצד של המארחים הוא/היא 23663.")
    h = Host.find(9728)
    h.active_last_year = true
    h.save
    Host.find(9132).comments.create!(user_id: 415, content: "בשנה שעברה, 'מתי דוד' (3036) היה/הייתה מצוות/ת למארח/ת כאן תאגיד השידור (9132). בצד של המארחים הוא/היא 20832.")
    h = Host.find(9132)
    h.active_last_year = true
    h.save
    Host.find(9536).comments.create!(user_id: 415, content: "בשנה שעברה, 'אליהו ומטלידה שאואט' (3016) היה/הייתה מצוות/ת למארח/ת אופיר צירט (9536). בצד של המארחים הוא/היא 22545.")
    h = Host.find(9536)
    h.active_last_year = true
    h.save
    Host.find(6503).comments.create!(user_id: 415, content: "בשנה שעברה, 'שושנה ברייאר' (3019) היה/הייתה מצוות/ת למארח/ת קובי גלעדי (6503). בצד של המארחים הוא/היא 17053.")
    h = Host.find(6503)
    h.active_last_year = true
    h.save
    Host.find(8990).comments.create!(user_id: 415, content: "בשנה שעברה, 'זונדל מנחם' (1835) היה/הייתה מצוות/ת למארח/ת איתי ארבל (8990). בצד של המארחים הוא/היא 20415.")
    h = Host.find(8990)
    h.active_last_year = true
    h.save
    Host.find(141).comments.create!(user_id: 415, content: "בשנה שעברה, 'לאה בהגאון' (3037) היה/הייתה מצוות/ת למארח/ת הדס ברלב כהן (141). בצד של המארחים הוא/היא 145.")
    h = Host.find(141)
    h.active_last_year = true
    h.save
    Host.find(7369).comments.create!(user_id: 415, content: "בשנה שעברה, 'גרציה רומן' (3009) היה/הייתה מצוות/ת למארח/ת נדב כהן (7369). בצד של המארחים הוא/היא 17993.")
    h = Host.find(7369)
    h.active_last_year = true
    h.save
    Host.find(8492).comments.create!(user_id: 415, content: "בשנה שעברה, 'שרונה קומם' (3013) היה/הייתה מצוות/ת למארח/ת אריאלה מן (8492). בצד של המארחים הוא/היא 19421.")
    h = Host.find(8492)
    h.active_last_year = true
    h.save
    Host.find(6492).comments.create!(user_id: 415, content: "בשנה שעברה, 'בית אבות שמשון 55' (3044) היה/הייתה מצוות/ת למארח/ת תימור לינדר (6492). בצד של המארחים הוא/היא 17043.")
    h = Host.find(6492)
    h.active_last_year = true
    h.save
    Host.find(770).comments.create!(user_id: 415, content: "בשנה שעברה, 'מרי כהן' (3018) היה/הייתה מצוות/ת למארח/ת שרון פיינגולד (770). בצד של המארחים הוא/היא 823.")
    h = Host.find(770)
    h.active_last_year = true
    h.save
    Host.find(8765).comments.create!(user_id: 415, content: "בשנה שעברה, 'טובה קליין' (3017) היה/הייתה מצוות/ת למארח/ת ניב שמרון (8765). בצד של המארחים הוא/היא 19887.")
    h = Host.find(8765)
    h.active_last_year = true
    h.save
    Host.find(7702).comments.create!(user_id: 415, content: "בשנה שעברה, 'שולמית ויחזקאל נתן' (3020) היה/הייתה מצוות/ת למארח/ת רותי אסמרה (7702). בצד של המארחים הוא/היא 18387.")
    h = Host.find(7702)
    h.active_last_year = true
    h.save
    Host.find(8727).comments.create!(user_id: 415, content: "בשנה שעברה, 'שרון דגון קלדרון' (2957) היה/הייתה מצוות/ת למארח/ת סופיה לייקו (8727). בצד של המארחים הוא/היא 19820.")
    h = Host.find(8727)
    h.active_last_year = true
    h.save
    Host.find(8675).comments.create!(user_id: 415, content: "בשנה שעברה, 'עזריאל (פטר) דנסקי' (2261) היה/הייתה מצוות/ת למארח/ת זוהר ברוש כהן (8675). בצד של המארחים הוא/היא 19717.")
    h = Host.find(8675)
    h.active_last_year = true
    h.save
    Host.find(7387).comments.create!(user_id: 415, content: "בשנה שעברה, 'יהודית אטינגר' (2097) היה/הייתה מצוות/ת למארח/ת ‫בר בשירי‬‎ (7387). בצד של המארחים הוא/היא 18016.")
    h = Host.find(7387)
    h.active_last_year = true
    h.save
    Host.find(7745).comments.create!(user_id: 415, content: "בשנה שעברה, 'מרים תמיר' (3060) היה/הייתה מצוות/ת למארח/ת מרצ'לה ברקוביץ' (7745). בצד של המארחים הוא/היא 18438.")
    h = Host.find(7745)
    h.active_last_year = true
    h.save
    Host.find(6043).comments.create!(user_id: 415, content: "בשנה שעברה, 'בטי קרחי' (3030) היה/הייתה מצוות/ת למארח/ת יהודה יזרעאלי (6043). בצד של המארחים הוא/היא 14055.")
    h = Host.find(6043)
    h.active_last_year = true
    h.save
    Host.find(9075).comments.create!(user_id: 415, content: "בשנה שעברה, 'הרמן אלטהולץ' (3022) היה/הייתה מצוות/ת למארח/ת דפנה הד (9075). בצד של המארחים הוא/היא 20719.")
    h = Host.find(9075)
    h.active_last_year = true
    h.save
    Host.find(7447).comments.create!(user_id: 415, content: "בשנה שעברה, 'יהודה אייל' (390) היה/הייתה מצוות/ת למארח/ת רונית פיכמן (7447). בצד של המארחים הוא/היא 18087.")
    h = Host.find(7447)
    h.active_last_year = true
    h.save
    Host.find(8841).comments.create!(user_id: 415, content: "בשנה שעברה, 'בתיה וייל' (3031) היה/הייתה מצוות/ת למארח/ת adie (8841). בצד של המארחים הוא/היא 20071.")
    h = Host.find(8841)
    h.active_last_year = true
    h.save
    Host.find(8326).comments.create!(user_id: 415, content: "בשנה שעברה, 'יהודית הירשברג' (3033) היה/הייתה מצוות/ת למארח/ת דקלה מצוינים-תמשס (8326). בצד של המארחים הוא/היא 19149.")
    h = Host.find(8326)
    h.active_last_year = true
    h.save
    Host.find(7135).comments.create!(user_id: 415, content: "בשנה שעברה, 'שמעון גליק (פרופ')' (1973) היה/הייתה מצוות/ת למארח/ת מאי טאנן (7135). בצד של המארחים הוא/היא 17720.")
    h = Host.find(7135)
    h.active_last_year = true
    h.save
    Host.find(7898).comments.create!(user_id: 415, content: "בשנה שעברה, 'אברהם רוזנפלד' (3061) היה/הייתה מצוות/ת למארח/ת מושב אניעם (7898). בצד של המארחים הוא/היא 18611.")
    h = Host.find(7898)
    h.active_last_year = true
    h.save
    Host.find(7538).comments.create!(user_id: 415, content: "בשנה שעברה, 'שולמית שוויצר' (562) היה/הייתה מצוות/ת למארח/ת איתי צורף (7538). בצד של המארחים הוא/היא 18191.")
    h = Host.find(7538)
    h.active_last_year = true
    h.save
    Host.find(7301).comments.create!(user_id: 415, content: "בשנה שעברה, 'גלית שפרינגוט' (3057) היה/הייתה מצוות/ת למארח/ת מירב שיינס (7301). בצד של המארחים הוא/היא 17914.")
    h = Host.find(7301)
    h.active_last_year = true
    h.save
    Host.find(9052).comments.create!(user_id: 415, content: "בשנה שעברה, 'חיים גרינברג' (3065) היה/הייתה מצוות/ת למארח/ת גל פוגל (9052). בצד של המארחים הוא/היא 20619.")
    h = Host.find(9052)
    h.active_last_year = true
    h.save
    Host.find(6079).comments.create!(user_id: 415, content: "בשנה שעברה, 'חנה גואטה' (3052) היה/הייתה מצוות/ת למארח/ת מירב סלע (6079). בצד של המארחים הוא/היא 14236.")
    h = Host.find(6079)
    h.active_last_year = true
    h.save
    Host.find(9055).comments.create!(user_id: 415, content: "בשנה שעברה, 'ז'סלין קורז'יניאק' (3058) היה/הייתה מצוות/ת למארח/ת מיקי מוסנג'אד (9055). בצד של המארחים הוא/היא 20634.")
    h = Host.find(9055)
    h.active_last_year = true
    h.save
    Host.find(2199).comments.create!(user_id: 415, content: "בשנה שעברה, 'יהודית וינברגר' (2426) היה/הייתה מצוות/ת למארח/ת ליאור (2199). בצד של המארחים הוא/היא 4040.")
    h = Host.find(2199)
    h.active_last_year = true
    h.save
    Host.find(7627).comments.create!(user_id: 415, content: "בשנה שעברה, 'מריאנה ווייס' (3056) היה/הייתה מצוות/ת למארח/ת חמדה בלסבלג (7627). בצד של המארחים הוא/היא 18301.")
    h = Host.find(7627)
    h.active_last_year = true
    h.save
    Host.find(9547).comments.create!(user_id: 415, content: "בשנה שעברה, 'שאול גרשנוביץ'' (3062) היה/הייתה מצוות/ת למארח/ת תמר רובין (9547). בצד של המארחים הוא/היא 22572.")
    h = Host.find(9547)
    h.active_last_year = true
    h.save
    Host.find(9539).comments.create!(user_id: 415, content: "בשנה שעברה, 'נטלי גטה' (3063) היה/הייתה מצוות/ת למארח/ת חגי זיו (9539). בצד של המארחים הוא/היא 22550.")
    h = Host.find(9539)
    h.active_last_year = true
    h.save
    Host.find(9067).comments.create!(user_id: 415, content: "בשנה שעברה, 'מיכל גולדברג' (3055) היה/הייתה מצוות/ת למארח/ת מכינת מיצר (9067). בצד של המארחים הוא/היא 20687.")
    h = Host.find(9067)
    h.active_last_year = true
    h.save
    Host.find(9056).comments.create!(user_id: 415, content: "בשנה שעברה, 'בלומה רזמוביץ' (3054) היה/הייתה מצוות/ת למארח/ת יעל אלבה (9056). בצד של המארחים הוא/היא 20642.")
    h = Host.find(9056)
    h.active_last_year = true
    h.save
    Host.find(8764).comments.create!(user_id: 415, content: "בשנה שעברה, 'מיכאל מן' (3007) היה/הייתה מצוות/ת למארח/ת טטיאנה חזן (8764). בצד של המארחים הוא/היא 19881.")
    h = Host.find(8764)
    h.active_last_year = true
    h.save
    Host.find(6959).comments.create!(user_id: 415, content: "בשנה שעברה, 'אביגדור בר חי' (3085) היה/הייתה מצוות/ת למארח/ת שירה כהן (6959). בצד של המארחים הוא/היא 17525.")
    h = Host.find(6959)
    h.active_last_year = true
    h.save
    Host.find(6478).comments.create!(user_id: 415, content: "בשנה שעברה, 'עדנה שפר גיטלין' (3067) היה/הייתה מצוות/ת למארח/ת Daniel Dror (6478). בצד של המארחים הוא/היא 5558.")
    h = Host.find(6478)
    h.active_last_year = true
    h.save
    Host.find(7647).comments.create!(user_id: 415, content: "בשנה שעברה, 'זהר לסקוב' (3082) היה/הייתה מצוות/ת למארח/ת שני מור (7647). בצד של המארחים הוא/היא 18325.")
    h = Host.find(7647)
    h.active_last_year = true
    h.save
    Host.find(6765).comments.create!(user_id: 415, content: "בשנה שעברה, 'רחל ניר' (3076) היה/הייתה מצוות/ת למארח/ת דנה צוויפלר (6765). בצד של המארחים הוא/היא 15748.")
    h = Host.find(6765)
    h.active_last_year = true
    h.save
    Host.find(8450).comments.create!(user_id: 415, content: "בשנה שעברה, 'פנינה טרנו' (3049) היה/הייתה מצוות/ת למארח/ת אמונה מלכיאלי (8450). בצד של המארחים הוא/היא 19368.")
    h = Host.find(8450)
    h.active_last_year = true
    h.save
    Host.find(8736).comments.create!(user_id: 415, content: "בשנה שעברה, 'אילנה צוק' (3072) היה/הייתה מצוות/ת למארח/ת גרעין בנות שירות (8736). בצד של המארחים הוא/היא 19836.")
    h = Host.find(8736)
    h.active_last_year = true
    h.save
    Host.find(4571).comments.create!(user_id: 415, content: "בשנה שעברה, 'דוד דואני-קוטלר' (3068) היה/הייתה מצוות/ת למארח/ת צופיה סיקסיק (4571). בצד של המארחים הוא/היא 10883.")
    h = Host.find(4571)
    h.active_last_year = true
    h.save
    Host.find(8541).comments.create!(user_id: 415, content: "בשנה שעברה, 'תמר ינקו' (3075) היה/הייתה מצוות/ת למארח/ת יהודה רוט (8541). בצד של המארחים הוא/היא 19501.")
    h = Host.find(8541)
    h.active_last_year = true
    h.save
    Host.find(3049).comments.create!(user_id: 415, content: "בשנה שעברה, 'טל אור' (365) היה/הייתה מצוות/ת למארח/ת מוטי עבו (3049). בצד של המארחים הוא/היא 8932.")
    h = Host.find(3049)
    h.active_last_year = true
    h.save
    Host.find(600).comments.create!(user_id: 415, content: "בשנה שעברה, 'פסיה צור' (3029) היה/הייתה מצוות/ת למארח/ת ליבת כחלון (600). בצד של המארחים הוא/היא 649.")
    h = Host.find(600)
    h.active_last_year = true
    h.save
    Host.find(7101).comments.create!(user_id: 415, content: "בשנה שעברה, 'פטר זלץ' (3069) היה/הייתה מצוות/ת למארח/ת לירז ששון (7101). בצד של המארחים הוא/היא 17686.")
    h = Host.find(7101)
    h.active_last_year = true
    h.save
    Host.find(6119).comments.create!(user_id: 415, content: "בשנה שעברה, 'אתי לב' (3094) היה/הייתה מצוות/ת למארח/ת יערה סניור (6119). בצד של המארחים הוא/היא 14451.")
    h = Host.find(6119)
    h.active_last_year = true
    h.save
    Host.find(6734).comments.create!(user_id: 415, content: "בשנה שעברה, 'גרוס נחמן וחנה' (2152) היה/הייתה מצוות/ת למארח/ת נעמה ירושלם (6734). בצד של המארחים הוא/היא 17277.")
    h = Host.find(6734)
    h.active_last_year = true
    h.save
    Host.find(5482).comments.create!(user_id: 415, content: "בשנה שעברה, 'חיים ישרון' (3090) היה/הייתה מצוות/ת למארח/ת מור פנדריק (5482). בצד של המארחים הוא/היא 12464.")
    h = Host.find(5482)
    h.active_last_year = true
    h.save
    Host.find(4687).comments.create!(user_id: 415, content: "בשנה שעברה, 'נופר גנור' (3086) היה/הייתה מצוות/ת למארח/ת יואב ארנון (4687). בצד של המארחים הוא/היא 11036.")
    h = Host.find(4687)
    h.active_last_year = true
    h.save
    Host.find(6781).comments.create!(user_id: 415, content: "בשנה שעברה, 'ישראל ליכטנשטיין' (758) היה/הייתה מצוות/ת למארח/ת גלינה דבויריס-חסין (6781). בצד של המארחים הוא/היא 17330.")
    h = Host.find(6781)
    h.active_last_year = true
    h.save
    Host.find(5144).comments.create!(user_id: 415, content: "בשנה שעברה, 'אסתר ירון' (3092) היה/הייתה מצוות/ת למארח/ת מיכל עגני (5144). בצד של המארחים הוא/היא 11798.")
    h = Host.find(5144)
    h.active_last_year = true
    h.save
    Host.find(7041).comments.create!(user_id: 415, content: "בשנה שעברה, 'ענת דור' (3089) היה/הייתה מצוות/ת למארח/ת יובל שקדי (בתור 'מיכאלה', בית קפה בקטמון, ירושלים) (7041). בצד של המארחים הוא/היא 17615.")
    h = Host.find(7041)
    h.active_last_year = true
    h.save
    Host.find(9314).comments.create!(user_id: 415, content: "בשנה שעברה, 'ציפי שנקר' (3088) היה/הייתה מצוות/ת למארח/ת יעל מילר (9314). בצד של המארחים הוא/היא 21515.")
    h = Host.find(9314)
    h.active_last_year = true
    h.save
    Host.find(7120).comments.create!(user_id: 415, content: "בשנה שעברה, 'שרית שחם' (3091) היה/הייתה מצוות/ת למארח/ת יערה זנזורי (7120). בצד של המארחים הוא/היא 17703.")
    h = Host.find(7120)
    h.active_last_year = true
    h.save
    Host.find(5580).comments.create!(user_id: 415, content: "בשנה שעברה, 'ליאונה פרקש' (3095) היה/הייתה מצוות/ת למארח/ת רחל ברוך (5580). בצד של המארחים הוא/היא 12717.")
    h = Host.find(5580)
    h.active_last_year = true
    h.save
    Host.find(8885).comments.create!(user_id: 415, content: "בשנה שעברה, 'אברהם איימן' (2670) היה/הייתה מצוות/ת למארח/ת מרדכי פרל (8885). בצד של המארחים הוא/היא 20163.")
    h = Host.find(8885)
    h.active_last_year = true
    h.save
    Host.find(8622).comments.create!(user_id: 415, content: "בשנה שעברה, 'ליברמן לאה' (2468) היה/הייתה מצוות/ת למארח/ת שרון ציפר (8622). בצד של המארחים הוא/היא 19619.")
    h = Host.find(8622)
    h.active_last_year = true
    h.save
    Host.find(4147).comments.create!(user_id: 415, content: "בשנה שעברה, 'ארליך רעיה' (2455) היה/הייתה מצוות/ת למארח/ת המרפסת - מרכז הצעירים הרצליה (4147). בצד של המארחים הוא/היא 10320.")
    h = Host.find(4147)
    h.active_last_year = true
    h.save
    Host.find(7716).comments.create!(user_id: 415, content: "בשנה שעברה, 'פלדמן יעקב' (2465) היה/הייתה מצוות/ת למארח/ת יעל בן סעדון (7716). בצד של המארחים הוא/היא 18406.")
    h = Host.find(7716)
    h.active_last_year = true
    h.save
    Host.find(8447).comments.create!(user_id: 415, content: "בשנה שעברה, 'אהוד פאר' (2520) היה/הייתה מצוות/ת למארח/ת פביאנה (8447). בצד של המארחים הוא/היא 19364.")
    h = Host.find(8447)
    h.active_last_year = true
    h.save
    Host.find(7126).comments.create!(user_id: 415, content: "בשנה שעברה, 'אריה מולכו' (2453) היה/הייתה מצוות/ת למארח/ת מועדון הכוכב השמיני (7126). בצד של המארחים הוא/היא 17711.")
    h = Host.find(7126)
    h.active_last_year = true
    h.save
    Host.find(7883).comments.create!(user_id: 415, content: "בשנה שעברה, 'קלרה לוטפק' (2968) היה/הייתה מצוות/ת למארח/ת לנה גרשקוביץ (7883). בצד של המארחים הוא/היא 18594.")
    h = Host.find(7883)
    h.active_last_year = true
    h.save
    Host.find(8215).comments.create!(user_id: 415, content: "בשנה שעברה, 'דורית טפרברג' (3050) היה/הייתה מצוות/ת למארח/ת קמילה מיכמן (8215). בצד של המארחים הוא/היא 18996.")
    h = Host.find(8215)
    h.active_last_year = true
    h.save
    Host.find(7233).comments.create!(user_id: 415, content: "בשנה שעברה, 'אלעד ורדי' (2834) היה/הייתה מצוות/ת למארח/ת שירן אלמקייס (7233). בצד של המארחים הוא/היא 17829.")
    h = Host.find(7233)
    h.active_last_year = true
    h.save
    Host.find(3502).comments.create!(user_id: 415, content: "בשנה שעברה, 'אווה קראוס' (2776) היה/הייתה מצוות/ת למארח/ת דנה אוחנה (3502). בצד של המארחים הוא/היא 9417.")
    h = Host.find(3502)
    h.active_last_year = true
    h.save
    Host.find(6760).comments.create!(user_id: 415, content: "בשנה שעברה, 'אסתר קליפצקיה' (2774) היה/הייתה מצוות/ת למארח/ת גיא רון (6760). בצד של המארחים הוא/היא 17304.")
    h = Host.find(6760)
    h.active_last_year = true
    h.save
    Host.find(3902).comments.create!(user_id: 415, content: "בשנה שעברה, 'רחל אבידור' (2875) היה/הייתה מצוות/ת למארח/ת עודד שטיין (3902). בצד של המארחים הוא/היא 9997.")
    h = Host.find(3902)
    h.active_last_year = true
    h.save
    Host.find(7874).comments.create!(user_id: 415, content: "בשנה שעברה, 'בני ברזילי' (2689) היה/הייתה מצוות/ת למארח/ת אור- מרכז קהילתי בית רק\"ע ביפו (7874). בצד של המארחים הוא/היא 18581.")
    h = Host.find(7874)
    h.active_last_year = true
    h.save
    Host.find(7998).comments.create!(user_id: 415, content: "בשנה שעברה, 'קלרה וולמן' (2944) היה/הייתה מצוות/ת למארח/ת אסתי שי (7998). בצד של המארחים הוא/היא 18731.")
    h = Host.find(7998)
    h.active_last_year = true
    h.save
    Host.find(8343).comments.create!(user_id: 415, content: "בשנה שעברה, 'לקס נתנס' (2951) היה/הייתה מצוות/ת למארח/ת נדב כהן (8343). בצד של המארחים הוא/היא 19167.")
    h = Host.find(8343)
    h.active_last_year = true
    h.save
    Host.find(8703).comments.create!(user_id: 415, content: "בשנה שעברה, 'איילה שני' (2953) היה/הייתה מצוות/ת למארח/ת גלית בן אפרים (8703). בצד של המארחים הוא/היא 11219.")
    h = Host.find(8703)
    h.active_last_year = true
    h.save
    Host.find(6826).comments.create!(user_id: 415, content: "בשנה שעברה, 'חנה כספי' (2955) היה/הייתה מצוות/ת למארח/ת מוניקה קרוטיק (6826). בצד של המארחים הוא/היא 17381.")
    h = Host.find(6826)
    h.active_last_year = true
    h.save
    Host.find(218).comments.create!(user_id: 415, content: "בשנה שעברה, 'מולה גוטנר' (720) היה/הייתה מצוות/ת למארח/ת הילה עטר (218). בצד של המארחים הוא/היא 223.")
    h = Host.find(218)
    h.active_last_year = true
    h.save
    Host.find(4414).comments.create!(user_id: 415, content: "בשנה שעברה, 'דן שטיינר' (3080) היה/הייתה מצוות/ת למארח/ת מיכל אלבז (4414). בצד של המארחים הוא/היא 10661.")
    h = Host.find(4414)
    h.active_last_year = true
    h.save
    Host.find(7906).comments.create!(user_id: 415, content: "בשנה שעברה, 'גובר מרדכי' (2841) היה/הייתה מצוות/ת למארח/ת דנה בן עזרא (7906). בצד של המארחים הוא/היא 18620.")
    h = Host.find(7906)
    h.active_last_year = true
    h.save
    Host.find(1068).comments.create!(user_id: 415, content: "בשנה שעברה, 'שרה מאיר' (2969) היה/הייתה מצוות/ת למארח/ת לילך אללוף (1068). בצד של המארחים הוא/היא 1271.")
    h = Host.find(1068)
    h.active_last_year = true
    h.save
    Host.find(5790).comments.create!(user_id: 415, content: "בשנה שעברה, 'עמוס רובין' (2967) היה/הייתה מצוות/ת למארח/ת גתית דודיוף (5790). בצד של המארחים הוא/היא 13271.")
    h = Host.find(5790)
    h.active_last_year = true
    h.save
    Host.find(7890).comments.create!(user_id: 415, content: "בשנה שעברה, 'רחלי שלומי חן' (2923) היה/הייתה מצוות/ת למארח/ת מאור מדמון (7890). בצד של המארחים הוא/היא 18602.")
    h = Host.find(7890)
    h.active_last_year = true
    h.save
    Host.find(9859).comments.create!(user_id: 415, content: "בשנה שעברה, 'ברוריה לב' (2921) היה/הייתה מצוות/ת למארח/ת אדם ריגר (9859). בצד של המארחים הוא/היא 24953.")
    h = Host.find(9859)
    h.active_last_year = true
    h.save
    Host.find(9416).comments.create!(user_id: 415, content: "בשנה שעברה, 'שמואל אנגלמייר' (2877) היה/הייתה מצוות/ת למארח/ת יניב קדושים (9416). בצד של המארחים הוא/היא 21953.")
    h = Host.find(9416)
    h.active_last_year = true
    h.save
    Host.find(9015).comments.create!(user_id: 415, content: "בשנה שעברה, 'זלמה אהרון' (2970) היה/הייתה מצוות/ת למארח/ת שיראל רצאבי (9015). בצד של המארחים הוא/היא 20504.")
    h = Host.find(9015)
    h.active_last_year = true
    h.save
    Host.find(8335).comments.create!(user_id: 415, content: "בשנה שעברה, 'אוריאל בר און' (893) היה/הייתה מצוות/ת למארח/ת לירז הילי רוסו (8335). בצד של המארחים הוא/היא 19159.")
    h = Host.find(8335)
    h.active_last_year = true
    h.save
    Host.find(8205).comments.create!(user_id: 415, content: "בשנה שעברה, 'הלן גידנסקי' (833) היה/הייתה מצוות/ת למארח/ת שי שטרק (8205). בצד של המארחים הוא/היא 18985.")
    h = Host.find(8205)
    h.active_last_year = true
    h.save
    Host.find(7220).comments.create!(user_id: 415, content: "בשנה שעברה, 'מיכאל יוריס' (1328) היה/הייתה מצוות/ת למארח/ת חן עזרא (7220). בצד של המארחים הוא/היא 17817.")
    h = Host.find(7220)
    h.active_last_year = true
    h.save
    Host.find(7392).comments.create!(user_id: 415, content: "בשנה שעברה, 'ברוך הס' (1356) היה/הייתה מצוות/ת למארח/ת גיל אלתר (7392). בצד של המארחים הוא/היא 18024.")
    h = Host.find(7392)
    h.active_last_year = true
    h.save
    Host.find(8887).comments.create!(user_id: 415, content: "בשנה שעברה, 'משה הרן' (1346) היה/הייתה מצוות/ת למארח/ת ערן גבאי (8887). בצד של המארחים הוא/היא 20168.")
    h = Host.find(8887)
    h.active_last_year = true
    h.save
    Host.find(6617).comments.create!(user_id: 415, content: "בשנה שעברה, 'דליה קרון' (1006) היה/הייתה מצוות/ת למארח/ת עינת פרבר (6617). בצד של המארחים הוא/היא 17163.")
    h = Host.find(6617)
    h.active_last_year = true
    h.save
    Host.find(8226).comments.create!(user_id: 415, content: "בשנה שעברה, 'תמי פולק' (1345) היה/הייתה מצוות/ת למארח/ת רחל טביב (8226). בצד של המארחים הוא/היא 19011.")
    h = Host.find(8226)
    h.active_last_year = true
    h.save
    Host.find(8288).comments.create!(user_id: 415, content: "בשנה שעברה, 'אלכסנדר ריפ' (1388) היה/הייתה מצוות/ת למארח/ת לידור קרדי (8288). בצד של המארחים הוא/היא 19084.")
    h = Host.find(8288)
    h.active_last_year = true
    h.save
    Host.find(5504).comments.create!(user_id: 415, content: "בשנה שעברה, 'רות הראל' (1265) היה/הייתה מצוות/ת למארח/ת טרייסי פיין (5504). בצד של המארחים הוא/היא 12498.")
    h = Host.find(5504)
    h.active_last_year = true
    h.save
    Host.find(4756).comments.create!(user_id: 415, content: "בשנה שעברה, 'דוד שמואל' (693) היה/הייתה מצוות/ת למארח/ת ליאור גוטמן-עדו ואמילי שופן (4756). בצד של המארחים הוא/היא 11119.")
    h = Host.find(4756)
    h.active_last_year = true
    h.save
    Host.find(7597).comments.create!(user_id: 415, content: "בשנה שעברה, 'איתמר לוין' (1188) היה/הייתה מצוות/ת למארח/ת ספריית בית ספר נופי ים (7597). בצד של המארחים הוא/היא 18267.")
    h = Host.find(7597)
    h.active_last_year = true
    h.save
    Host.find(5425).comments.create!(user_id: 415, content: "בשנה שעברה, 'סוניה פרל' (1234) היה/הייתה מצוות/ת למארח/ת נופר שגב (5425). בצד של המארחים הוא/היא 12378.")
    h = Host.find(5425)
    h.active_last_year = true
    h.save
    Host.find(7781).comments.create!(user_id: 415, content: "בשנה שעברה, 'יונה אליאן' (1167) היה/הייתה מצוות/ת למארח/ת בריכת גורדון (7781). בצד של המארחים הוא/היא 18479.")
    h = Host.find(7781)
    h.active_last_year = true
    h.save
    Host.find(4229).comments.create!(user_id: 415, content: "בשנה שעברה, 'מאיר לויטנוס' (1287) היה/הייתה מצוות/ת למארח/ת מתנ\"ס צור שלום (4229). בצד של המארחים הוא/היא 10424.")
    h = Host.find(4229)
    h.active_last_year = true
    h.save
    Host.find(2698).comments.create!(user_id: 415, content: "בשנה שעברה, 'רוברט פישרמן' (342) היה/הייתה מצוות/ת למארח/ת זהבה באום (2698). בצד של המארחים הוא/היא 6590.")
    h = Host.find(2698)
    h.active_last_year = true
    h.save
    Host.find(6803).comments.create!(user_id: 415, content: "בשנה שעברה, 'לילי עוזיאל' (698) היה/הייתה מצוות/ת למארח/ת ג'נט וצביקה אמיתי (6803). בצד של המארחים הוא/היא 17351.")
    h = Host.find(6803)
    h.active_last_year = true
    h.save
    Host.find(6610).comments.create!(user_id: 415, content: "בשנה שעברה, 'יחיאל מאיר' (368) היה/הייתה מצוות/ת למארח/ת דורית רוט - ויין (6610). בצד של המארחים הוא/היא 17156.")
    h = Host.find(6610)
    h.active_last_year = true
    h.save
    Host.find(8428).comments.create!(user_id: 415, content: "בשנה שעברה, 'יצחק הוכברג' (463) היה/הייתה מצוות/ת למארח/ת נעמה הכהן-מרגלית (8428). בצד של המארחים הוא/היא 19332.")
    h = Host.find(8428)
    h.active_last_year = true
    h.save
    Host.find(339).comments.create!(user_id: 415, content: "בשנה שעברה, 'טנה שטרן' (425) היה/הייתה מצוות/ת למארח/ת שושי ריפשטיין (339). בצד של המארחים הוא/היא 369.")
    h = Host.find(339)
    h.active_last_year = true
    h.save
    Host.find(815).comments.create!(user_id: 415, content: "בשנה שעברה, 'מרים הראל' (397) היה/הייתה מצוות/ת למארח/ת טלי סוקניק (815). בצד של המארחים הוא/היא 870.")
    h = Host.find(815)
    h.active_last_year = true
    h.save
    Host.find(7380).comments.create!(user_id: 415, content: "בשנה שעברה, 'שלומית שולץ' (700) היה/הייתה מצוות/ת למארח/ת בית לוי אשכול (7380). בצד של המארחים הוא/היא 18007.")
    h = Host.find(7380)
    h.active_last_year = true
    h.save
    Host.find(6841).comments.create!(user_id: 415, content: "בשנה שעברה, 'יהודה אבן חיים' (573) היה/הייתה מצוות/ת למארח/ת פז חדד (6841). בצד של המארחים הוא/היא 17396.")
    h = Host.find(6841)
    h.active_last_year = true
    h.save
    Host.find(8168).comments.create!(user_id: 415, content: "בשנה שעברה, 'אדוארד גורז'לצן' (765) היה/הייתה מצוות/ת למארח/ת עופרי אור (8168). בצד של המארחים הוא/היא 18940.")
    h = Host.find(8168)
    h.active_last_year = true
    h.save
    Host.find(5029).comments.create!(user_id: 415, content: "בשנה שעברה, 'שמוליק לוי' (1397) היה/הייתה מצוות/ת למארח/ת לירון ארבל (5029). בצד של המארחים הוא/היא 11585.")
    h = Host.find(5029)
    h.active_last_year = true
    h.save
    Host.find(3614).comments.create!(user_id: 415, content: "בשנה שעברה, 'מקס מרדכי ליבני' (559) היה/הייתה מצוות/ת למארח/ת לירן קשטרי (3614). בצד של המארחים הוא/היא 9631.")
    h = Host.find(3614)
    h.active_last_year = true
    h.save
    Host.find(8985).comments.create!(user_id: 415, content: "בשנה שעברה, 'דוד (דוגו) לייטנר' (664) היה/הייתה מצוות/ת למארח/ת פאב שלומפר (8985). בצד של המארחים הוא/היא 20397.")
    h = Host.find(8985)
    h.active_last_year = true
    h.save
    Host.find(7638).comments.create!(user_id: 415, content: "בשנה שעברה, 'פנינה חכמו' (794) היה/הייתה מצוות/ת למארח/ת גתית סרי (7638). בצד של המארחים הוא/היא 18316.")
    h = Host.find(7638)
    h.active_last_year = true
    h.save
    Host.find(9358).comments.create!(user_id: 415, content: "בשנה שעברה, 'שמחה רובינזון' (1518) היה/הייתה מצוות/ת למארח/ת זוהר וייסמן (9358). בצד של המארחים הוא/היא 21657.")
    h = Host.find(9358)
    h.active_last_year = true
    h.save
    Host.find(8303).comments.create!(user_id: 415, content: "בשנה שעברה, 'רבקה קונדור' (849) היה/הייתה מצוות/ת למארח/ת תומר (8303). בצד של המארחים הוא/היא 19117.")
    h = Host.find(8303)
    h.active_last_year = true
    h.save
    Host.find(8198).comments.create!(user_id: 415, content: "בשנה שעברה, 'זליג אונפסונג' (1414) היה/הייתה מצוות/ת למארח/ת לילי כנפי (8198). בצד של המארחים הוא/היא 18977.")
    h = Host.find(8198)
    h.active_last_year = true
    h.save
    Host.find(5677).comments.create!(user_id: 415, content: "בשנה שעברה, 'מנחם בנדל' (1548) היה/הייתה מצוות/ת למארח/ת נעמה ווזנר (5677). בצד של המארחים הוא/היא 5070.")
    h = Host.find(5677)
    h.active_last_year = true
    h.save
    Host.find(7987).comments.create!(user_id: 415, content: "בשנה שעברה, 'רחל ופנחס כפיר' (1686) היה/הייתה מצוות/ת למארח/ת דוד עזורי (7987). בצד של המארחים הוא/היא 18720.")
    h = Host.find(7987)
    h.active_last_year = true
    h.save
    Host.find(9074).comments.create!(user_id: 415, content: "בשנה שעברה, 'צילה הרטמן' (1585) היה/הייתה מצוות/ת למארח/ת ואד פרן (9074). בצד של המארחים הוא/היא 20714.")
    h = Host.find(9074)
    h.active_last_year = true
    h.save
    Host.find(7089).comments.create!(user_id: 415, content: "בשנה שעברה, 'רותי דרורי' (1673) היה/הייתה מצוות/ת למארח/ת זיוה שנבל (7089). בצד של המארחים הוא/היא 17671.")
    h = Host.find(7089)
    h.active_last_year = true
    h.save
    Host.find(9576).comments.create!(user_id: 415, content: "בשנה שעברה, 'טלי רהב' (1639) היה/הייתה מצוות/ת למארח/ת רחלי גרונשטיין (9576). בצד של המארחים הוא/היא 22740.")
    h = Host.find(9576)
    h.active_last_year = true
    h.save
    Host.find(1527).comments.create!(user_id: 415, content: "בשנה שעברה, 'רחל שטיינר' (1716) היה/הייתה מצוות/ת למארח/ת בתאל ויונתן אמסטר (1527). בצד של המארחים הוא/היא 2201.")
    h = Host.find(1527)
    h.active_last_year = true
    h.save
    Host.find(7780).comments.create!(user_id: 415, content: "בשנה שעברה, 'שיראל הורוביץ' (1665) היה/הייתה מצוות/ת למארח/ת ביכורי העתים (7780). בצד של המארחים הוא/היא 18478.")
    h = Host.find(7780)
    h.active_last_year = true
    h.save
    Host.find(7176).comments.create!(user_id: 415, content: "בשנה שעברה, 'אהרון נחושתן' (1755) היה/הייתה מצוות/ת למארח/ת עדי רשף (7176). בצד של המארחים הוא/היא 17765.")
    h = Host.find(7176)
    h.active_last_year = true
    h.save
    Host.find(3452).comments.create!(user_id: 415, content: "בשנה שעברה, 'גרשון קסטל' (1726) היה/הייתה מצוות/ת למארח/ת אורנה ריין וחיים בלוצר (3452). בצד של המארחים הוא/היא 9355.")
    h = Host.find(3452)
    h.active_last_year = true
    h.save
    Host.find(8085).comments.create!(user_id: 415, content: "בשנה שעברה, 'ציון כחלון' (1704) היה/הייתה מצוות/ת למארח/ת קורל וקסלר (8085). בצד של המארחים הוא/היא 18829.")
    h = Host.find(8085)
    h.active_last_year = true
    h.save
    Host.find(9302).comments.create!(user_id: 415, content: "בשנה שעברה, 'קלרה פיטר' (1720) היה/הייתה מצוות/ת למארח/ת ניצן שחם (9302). בצד של המארחים הוא/היא 21448.")
    h = Host.find(9302)
    h.active_last_year = true
    h.save
    Host.find(4927).comments.create!(user_id: 415, content: "בשנה שעברה, 'ג'ולייט סממה' (1751) היה/הייתה מצוות/ת למארח/ת שרון גודש (4927). בצד של המארחים הוא/היא 11418.")
    h = Host.find(4927)
    h.active_last_year = true
    h.save
    Host.find(7803).comments.create!(user_id: 415, content: "בשנה שעברה, 'גילה רז' (1647) היה/הייתה מצוות/ת למארח/ת חן רחמוט (7803). בצד של המארחים הוא/היא 18502.")
    h = Host.find(7803)
    h.active_last_year = true
    h.save
    Host.find(9419).comments.create!(user_id: 415, content: "בשנה שעברה, 'יחיאל נרקיס' (198) היה/הייתה מצוות/ת למארח/ת נופר חצבני (9419). בצד של המארחים הוא/היא 21968.")
    h = Host.find(9419)
    h.active_last_year = true
    h.save
    Host.find(7714).comments.create!(user_id: 415, content: "בשנה שעברה, 'אבינועם רוזנק' (1300) היה/הייתה מצוות/ת למארח/ת אלישבע בן-טל (7714). בצד של המארחים הוא/היא 18404.")
    h = Host.find(7714)
    h.active_last_year = true
    h.save
    Host.find(8016).comments.create!(user_id: 415, content: "בשנה שעברה, 'טובה שפיצר' (1612) היה/הייתה מצוות/ת למארח/ת יותם דגני (8016). בצד של המארחים הוא/היא 18750.")
    h = Host.find(8016)
    h.active_last_year = true
    h.save
    Host.find(4111).comments.create!(user_id: 415, content: "בשנה שעברה, 'אורית מוסל' (895) היה/הייתה מצוות/ת למארח/ת ירדן מורדוב (4111). בצד של המארחים הוא/היא 10273.")
    h = Host.find(4111)
    h.active_last_year = true
    h.save
    Host.find(8590).comments.create!(user_id: 415, content: "בשנה שעברה, 'קטה וולף' (844) היה/הייתה מצוות/ת למארח/ת רויטל מטר (8590). בצד של המארחים הוא/היא 19570.")
    h = Host.find(8590)
    h.active_last_year = true
    h.save
    Host.find(5400).comments.create!(user_id: 415, content: "בשנה שעברה, 'מיכאל בן דרור' (861) היה/הייתה מצוות/ת למארח/ת תמר אנגל טיאר (5400). בצד של המארחים הוא/היא 12329.")
    h = Host.find(5400)
    h.active_last_year = true
    h.save
    Host.find(1127).comments.create!(user_id: 415, content: "בשנה שעברה, 'חיים ויטל' (792) היה/הייתה מצוות/ת למארח/ת גילה יעקבי (1127). בצד של המארחים הוא/היא 1377.")
    h = Host.find(1127)
    h.active_last_year = true
    h.save
    Host.find(7499).comments.create!(user_id: 415, content: "בשנה שעברה, 'אבלין מוהבן' (843) היה/הייתה מצוות/ת למארח/ת נועה יוסף (7499). בצד של המארחים הוא/היא 18148.")
    h = Host.find(7499)
    h.active_last_year = true
    h.save
    Host.find(8737).comments.create!(user_id: 415, content: "בשנה שעברה, 'פנינה מילר' (870) היה/הייתה מצוות/ת למארח/ת אפרת נתניאל (8737). בצד של המארחים הוא/היא 19837.")
    h = Host.find(8737)
    h.active_last_year = true
    h.save
    Host.find(9328).comments.create!(user_id: 415, content: "בשנה שעברה, 'מרדכי וחנה הראלי' (476) היה/הייתה מצוות/ת למארח/ת שירי עיזר (9328). בצד של המארחים הוא/היא 21558.")
    h = Host.find(9328)
    h.active_last_year = true
    h.save
    Host.find(7774).comments.create!(user_id: 415, content: "בשנה שעברה, 'יהודה טל' (1181) היה/הייתה מצוות/ת למארח/ת ענבל דביר (7774). בצד של המארחים הוא/היא 18471.")
    h = Host.find(7774)
    h.active_last_year = true
    h.save
    Host.find(253).comments.create!(user_id: 415, content: "בשנה שעברה, 'פנינה קורן' (186) היה/הייתה מצוות/ת למארח/ת מיקי רון (253). בצד של המארחים הוא/היא 271.")
    h = Host.find(253)
    h.active_last_year = true
    h.save
    Host.find(7385).comments.create!(user_id: 415, content: "בשנה שעברה, 'סטיב דן קלע' (859) היה/הייתה מצוות/ת למארח/ת ים אביב (7385). בצד של המארחים הוא/היא 18014.")
    h = Host.find(7385)
    h.active_last_year = true
    h.save
    Host.find(8860).comments.create!(user_id: 415, content: "בשנה שעברה, 'יוסף גרינוולד' (860) היה/הייתה מצוות/ת למארח/ת ניצן צברי (8860). בצד של המארחים הוא/היא 20119.")
    h = Host.find(8860)
    h.active_last_year = true
    h.save
    Host.find(9817).comments.create!(user_id: 415, content: "בשנה שעברה, 'יוסי קליין' (989) היה/הייתה מצוות/ת למארח/ת גיא שטרית (9817). בצד של המארחים הוא/היא 24456.")
    h = Host.find(9817)
    h.active_last_year = true
    h.save
    Host.find(8487).comments.create!(user_id: 415, content: "בשנה שעברה, 'מוטי שלם' (933) היה/הייתה מצוות/ת למארח/ת סיון גלעד (8487). בצד של המארחים הוא/היא 19415.")
    h = Host.find(8487)
    h.active_last_year = true
    h.save
    Host.find(8910).comments.create!(user_id: 415, content: "בשנה שעברה, 'אפרים ברקן(פרדי)' (527) היה/הייתה מצוות/ת למארח/ת טליה ברד (8910). בצד של המארחים הוא/היא 20212.")
    h = Host.find(8910)
    h.active_last_year = true
    h.save
    Host.find(8128).comments.create!(user_id: 415, content: "בשנה שעברה, 'רחל הרטום' (623) היה/הייתה מצוות/ת למארח/ת מאירם פישר (8128). בצד של המארחים הוא/היא 18874.")
    h = Host.find(8128)
    h.active_last_year = true
    h.save
    Host.find(702).comments.create!(user_id: 415, content: "בשנה שעברה, 'עליזה סעדון' (216) היה/הייתה מצוות/ת למארח/ת שחף בהם (702). בצד של המארחים הוא/היא 754.")
    h = Host.find(702)
    h.active_last_year = true
    h.save
    Host.find(2181).comments.create!(user_id: 415, content: "בשנה שעברה, 'נתי בן זאב' (1746) היה/הייתה מצוות/ת למארח/ת יעל כצנלסון (2181). בצד של המארחים הוא/היא 3973.")
    h = Host.find(2181)
    h.active_last_year = true
    h.save
    Host.find(5610).comments.create!(user_id: 415, content: "בשנה שעברה, 'שלום ספיבק ואסתר בר נוי' (1441) היה/הייתה מצוות/ת למארח/ת עמית אבירם (5610). בצד של המארחים הוא/היא 12770.")
    h = Host.find(5610)
    h.active_last_year = true
    h.save
    Host.find(7746).comments.create!(user_id: 415, content: "בשנה שעברה, 'סוזי קסטנר' (1563) היה/הייתה מצוות/ת למארח/ת מאיה גרינר קרייזמן (7746). בצד של המארחים הוא/היא 18439.")
    h = Host.find(7746)
    h.active_last_year = true
    h.save
    Host.find(6563).comments.create!(user_id: 415, content: "בשנה שעברה, 'רחל עזריה' (1483) היה/הייתה מצוות/ת למארח/ת אלון שטרנברג (6563). בצד של המארחים הוא/היא 17110.")
    h = Host.find(6563)
    h.active_last_year = true
    h.save
    Host.find(7111).comments.create!(user_id: 415, content: "בשנה שעברה, 'סוניה סברדלוף' (1311) היה/הייתה מצוות/ת למארח/ת מוריה דפני (7111). בצד של המארחים הוא/היא 4408.")
    h = Host.find(7111)
    h.active_last_year = true
    h.save
    Host.find(7805).comments.create!(user_id: 415, content: "בשנה שעברה, 'קלרקה גל' (1735) היה/הייתה מצוות/ת למארח/ת ירדן (7805). בצד של המארחים הוא/היא 18504.")
    h = Host.find(7805)
    h.active_last_year = true
    h.save
    Host.find(7802).comments.create!(user_id: 415, content: "בשנה שעברה, 'עליזה אוברשטיין' (435) היה/הייתה מצוות/ת למארח/ת אלעד בוטבול (7802). בצד של המארחים הוא/היא 18501.")
    h = Host.find(7802)
    h.active_last_year = true
    h.save
    Host.find(8652).comments.create!(user_id: 415, content: "בשנה שעברה, 'צביקה פלצ'נסקי' (1780) היה/הייתה מצוות/ת למארח/ת עדן בוטבול (8652). בצד של המארחים הוא/היא 19681.")
    h = Host.find(8652)
    h.active_last_year = true
    h.save
    Host.find(9046).comments.create!(user_id: 415, content: "בשנה שעברה, 'אנג'לו רפאל' (1031) היה/הייתה מצוות/ת למארח/ת טל שחר הלל (9046). בצד של המארחים הוא/היא 20599.")
    h = Host.find(9046)
    h.active_last_year = true
    h.save
    Host.find(7386).comments.create!(user_id: 415, content: "בשנה שעברה, 'הרב דוד אדרעי' (1303) היה/הייתה מצוות/ת למארח/ת נטע בן שלום (7386). בצד של המארחים הוא/היא 18015.")
    h = Host.find(7386)
    h.active_last_year = true
    h.save
    Host.find(7371).comments.create!(user_id: 415, content: "בשנה שעברה, 'מרים טסלר' (621) היה/הייתה מצוות/ת למארח/ת רבקה שמש (7371). בצד של המארחים הוא/היא 17996.")
    h = Host.find(7371)
    h.active_last_year = true
    h.save
    Host.find(6873).comments.create!(user_id: 415, content: "בשנה שעברה, 'משה נורדהיים' (1783) היה/הייתה מצוות/ת למארח/ת תיכון דרור (6873). בצד של המארחים הוא/היא 17429.")
    h = Host.find(6873)
    h.active_last_year = true
    h.save
    Host.find(8268).comments.create!(user_id: 415, content: "בשנה שעברה, 'שרה אליאש' (1787) היה/הייתה מצוות/ת למארח/ת אבי אדלמן (8268). בצד של המארחים הוא/היא 19059.")
    h = Host.find(8268)
    h.active_last_year = true
    h.save
    Host.find(3666).comments.create!(user_id: 415, content: "בשנה שעברה, 'שרה שמיר' (862) היה/הייתה מצוות/ת למארח/ת שני שופט (3666). בצד של המארחים הוא/היא 9701.")
    h = Host.find(3666)
    h.active_last_year = true
    h.save
    Host.find(6871).comments.create!(user_id: 415, content: "בשנה שעברה, 'מלכה ינאי' (1443) היה/הייתה מצוות/ת למארח/ת אדוה עמיאל (6871). בצד של המארחים הוא/היא 17427.")
    h = Host.find(6871)
    h.active_last_year = true
    h.save
  end

  desc "fix dashes in numbers"
  task :remove_dashes_in_phone_numbers => :environment do
    Witness.all.each do |w|
      w.normalize_phone
      w.save!
    end
  end

  #instructions:
  desc "fix names for cities and add place_id"
  task :add_place_ids_to_cities => :environment do
    City.where(name: nil).destroy_all
    City.where("name LIKE '%@%'").destroy_all

    cities_name_delete = ["קוצושטינאו", "קוצושטיאנו", "כל הארץ"]
    cities_name_delete.each do |cityname|
      city = City.find_by_name(cityname)
      city.destroy unless city.nil?
    end

    cities_name_fix = [["Tel Aviv-yafo", "תל אביב יפו"], ["Haifa", "חיפה"], ["ראשלצ", "ראשון לציון"], ["נהרייה", "נהריה"], ["גבעים", "גבעתיים"], ["עמונה","Amonah"], ["גושר", "גשר"], ["עין חר", "עין חרוד"], ["כפר תפ", "כפר תפוח"], ["שדה ורב", "שדה ורבורג"] ]
    cities_name_fix.each do |oldname, newname|
      city = City.find_by_name(oldname)
      city.update_column(:name, newname) unless city.nil?
    end
    # bundle exec rake hotfixes:add_place_ids_to_cities
    @client = GooglePlaces::Client.new('AIzaSyDSOmyr4VMv2qvWLO12OuYqH7o-67DRANk')
    City.where(placeid: nil).each do |c|
      puts "\ncurrent id is '#{c.id}'"
      location = @client.spots_by_query(c.name, :types => [ "locality", "political"], :exclude => ['establishment', 'address', 'country'], :language => 'iw')
      puts location.to_json
      if location.blank?
        puts "couldn't find for #{c.name}, trying again"
        location = @client.spots_by_query(c.name, :language => 'iw')
        if location.blank?
          puts "couldn't find for #{c.name}"
          puts "add a rule in the task above"
        end

      end
      unless location.blank?
        c.name_he = location[0].name
        c.placeid = location[0].place_id
        puts c.name + ":" + c.name_he + ":" + c.placeid
        location = @client.spot(c.placeid, :language => 'en')
        c.name_en = location.name
        c.save!
        puts c.name_en + "    " + c.name_he
      end
    end
  end

  desc "reconnect city ids"
  task :clean_duplicate_cities => :environment do
    a=City.where("placeid IS NOT NULL").all.group_by(&:placeid)
    b = a.select{|k,v| v.size>1}
    b.values.each do |cities|
      good_city_id=cities.first.id
      cities[1..-1].each do |city|
        city.witnesses.update_all(city_id: good_city_id)
        city.community_leaderships.update_all(city_id: good_city_id)
        city.hosts.update_all(city_id: good_city_id)
        City.find(city.id).destroy
      end
    end
  end

  desc "add comments for hosts and witnesses"
  task :comments_for_hosts_and_witnesses => :environment do
    begin
      admin_user_id = User.where(email: "zikaronbasalon@gmail.com").first.id
      Witness.where("host_id is not null").each do |witness|
        @witness = witness
        host = Host.find(@witness.host_id)
        pp witness
        pp host
        comment = "בשנה שעברה, '#{witness.full_name}' (#{witness.id}) היה/הייתה מצוות/ת למארח/ת #{host.user.try(:full_name) || 'n/a'} (#{witness.host_id}). בצד של המארחים הוא/היא #{host.try(:user).try(:id) || 'n/a'}."
        pp comment
        witness.comments.create!(user_id: admin_user_id, content: comment)
        witness.active_last_year = true
        witness.save
        if host
          host.comments.create!(user_id: admin_user_id, content: comment)
          host.active_last_year = true
          host.save
        end

        #this generates commands
        # comment = "בשנה שעברה, '#{witness.full_name}' (#{witness.id}) היה/הייתה מצוות/ת למארח/ת #{host.user.try(:full_name) || 'n/a'} (#{witness.host_id}). בצד של המארחים הוא/היא #{host.try(:user).try(:id) || 'n/a'}."
        # pp "Witness.find(#{witness.id}).comments.create!(user_id: #{admin_user_id}, content: \"#{comment}\")"
        # pp "w = Witness.find(#{witness.id})"
        # pp "w.active_last_year = true"
        # pp "w.save"

        # pp "Host.find(#{host.id}).comments.create!(user_id: #{admin_user_id}, content: \"#{comment}\")"
        # pp "h = Host.find(#{host.id})"
        # pp "h.active_last_year = true"
        # pp "h.save"
      end
    rescue => e
      byebug
    end
  end

  desc "unassign hosts and witnesses"
  task :unassign_hosts_and_witnesses => :environment do
    Witness.where("host_id is not null").each do |witness|
      host = Host.find(witness.host_id)
      host.witness_id = nil
      host.save
      witness.host_id = nil
      witness.save
      pp "host #{host.id}"
      pp "witness #{witness.id}"
    end

    Host.where("witness_id is not null").each do |host|
      witness = Witness.find(host.witness_id)
      host.witness_id = nil
      host.save
      witness.host_id = nil
      witness.save
      pp "host #{host.id}"
      pp "witness #{witness.id}"
    end
  end

  desc "clean_host_and_witness_data"
  task :clean_host_and_witness_data => :environment do
    Host.all.each do |host|
      Host.transaction do
        pp host.id
        host.max_guests = nil
        host.strangers = nil
        host.contacted = false
        host.survivor_details = nil
        host.evening_public = nil
        host.hosted_before = nil
        host.event_date = nil
        host.event_time = nil
        host.org_name = nil
        host.survivor_needed = nil
        host.received_registration_mail = nil
        host.contacted_witness = false
        host.assignment_time = nil
        host.preparation_evening = nil
        host.active = false
        host.save!
      end
    end

    Witness.all.each do |witness|
      Host.transaction do
        pp witness
        witness.contacted_by_host = false
        witness.available_for_teaming = nil
        witness.can_morning = nil
        witness.can_afternoon = nil
        witness.can_evening = nil
        witness.free_on_day = nil
        witness.external_assignment = true #mark all as not interested, until we follow up
        witness.available_day1 = nil
        witness.available_day2 = nil
        witness.available_day3 = nil
        witness.available_day4 = nil
        witness.available_day5 = nil
        witness.available_day6 = nil
        witness.available_day7 = nil
        witness.available_day8 = nil
        witness.available_day9 = nil
        witness.save!
      end
    end
  end

  desc "reset users active_this_year"
  task :send_users_to_last_year => :environment do
    #cancel all assignments
    pp 'cancelling host assignments'
    Host.where("assignment_time IS NOT NULL").each do |host|
      host.assignment_time = nil
      host.save!
    end

    #all guests and hosts inactive this year (except for managers)
    #this makes change role popup
    pp 'making all users not active this year'
    User.where(meta_type: "Guest").each do |user|
      user.active_this_year = false
      user.save!
    end
    User.where(meta_type: "Host").each do |user|
      user.active_this_year = false
      user.save!
    end


    pp 'remove all invites tzivutim'
    Invite.destroy_all
  end

  #this resets all witnesses for the new year, even those with no host (and thus no comments)
  desc "reset all witnesses"
  task :reset_witnesses => :environment do
    Witness.all.each do |witness|
      Witness.transaction do
        witness.host_id = nil
        witness.contacted_by_host = false
        witness.available_for_teaming = nil
        witness.can_morning = nil
        witness.can_afternoon = nil
        witness.can_evening = nil
        witness.free_on_day = nil
        witness.external_assignment = true #mark all as not interested, until we follow up
        witness.available_day1 = nil
        witness.available_day2 = nil
        witness.available_day3 = nil
        witness.available_day4 = nil
        witness.available_day5 = nil
        witness.available_day6 = nil
        witness.available_day7 = nil
        witness.available_day8 = nil
        witness.available_day9 = nil
        witness.save!
      end
    end
  end

  # heroku --remote heroku run rake hotfixes:fix_cities
  # bundler exec rake hotfixes:fix_cities
  desc "fix cities"
  task :fix_cities => :environment do
    cities_name_fix = [["Tel Aviv-yafo", "תל אביב יפו"], ["Haifa", "חיפה"], ["ראשלצ", "ראשון לציון"], ["נהרייה", "נהריה"], ["גבעים", "גבעתיים"], ["עמונה","Amonah"], ["גושר", "גשר"], ["עין חר", "עין חרוד"], ["כפר תפ", "כפר תפוח"], ["שדה ורב", "שדה ורבורג"] ]
    cities_name_fix.each do |oldname, newname|
      city = City.find_by_name(oldname)
      city.update_column(:name, newname) unless city.nil?
    end
  end

  # heroku --remote heroku run rake hotfixes:sub_admin_password_reset
  # bundler exec rake hotfixes:sub_admin_password_reset
  #changes passwords of all admins except the full admin
  desc "change passwords of subadmins"
  task :sub_admin_password_reset => :environment do
    User.where(:meta_type => 'Manager', :admin => false).each do |u|
      u.reset_password!('set_new_pass_here','set_new_pass_here')
    end
  end

  desc "email blubbery"
  task :email_blubbery => :environment do
    User.where(:meta_type => 'Manager', :admin => false).each do |u|
      blubbery_email = u.email.sub '@','.@'
      u.update_column(:email, blubbery_email)
    end
  end

  desc "email deblubbery"
  task :email_deblubbery => :environment do
    letters = [('a'..'z')].map(&:to_a).flatten
    User.where(:meta_type => 'Manager', :admin => false).each do |u|
      deblubbery_email = u.email.sub '.@','@'
      user_id = u.id
      u.update_column(:email, deblubbery_email)
      user_to_change_password = User.find_by_id(user_id)
      new_password = (0...2).map { letters[rand(letters.length)] }.join
      new_pwd = 'zbs2018' + new_password
      user_to_change_password.password = new_pwd
      user_to_change_password.password_confirmation = new_pwd
      user_to_change_password.save
      p "#{user_to_change_password.email} #{new_pwd}\n"
    end
  end

  desc "change admin passwords"
  task :change_admin_passwords => :environment do
    letters = [('a'..'z')].map(&:to_a).flatten
    User.where(:meta_type => 'Manager', :admin => false).each do |u|
      user_id = u.id
      user_to_change_password = User.find_by_id(user_id)
      new_password = (0...2).map { letters[rand(letters.length)] }.join
      new_pwd = 'zbs2019' + new_password
      user_to_change_password.password = new_pwd
      user_to_change_password.password_confirmation = new_pwd
      user_to_change_password.save
      p "#{user_to_change_password.email} #{new_pwd}\n"
    end
  end

  desc "witness host relation fix by witness"
  task :witness_host_relation_fix_by_witness => :environment do
    print("starting fixing relations!" + "/n")
    Witness.where("host_id IS NOT NULL").each {|witness|
      host = Host.where(id: witness.host_id).last
      witness.host = host
      host.witness = witness
      host.witness_id = witness.id
      host.save!
      witness.save!
      print("The relation between the host (" + host.id.to_s + " - " + host.user.full_name + ") and the witness (" + witness.id.to_s + " - " + witness.full_name + ") should be fixed!" + "\n")
    }
    print("finished fixing relations!")
  end

  desc "witness host relation fix by host"
  task :witness_host_relation_fix_by_host => :environment do
    print("starting fixing relations!" + "/n")
    Host.where("witness_id IS NOT NULL").each {|host|
      witness = Witness.where(id: host.witness_id).last
      witness.host = host
      host.witness = witness
      host.witness_id = witness.id
      host.save!
      witness.save!
      print("The relation between the host (" + host.id.to_s + " - " + host.user.full_name + ") and the witness (" + witness.id.to_s + " - " + witness.full_name + ") should be fixed!" + "\n")
    }
    print("finished fixing relations!")
  end

  desc "host fix witness contacted when has no witness "
  task :host_without_witness_remove_contacted => :environment do
    print("starting fixing relations!" + "/n")
    Host.all.each{|host|
      if host != nil && host.contacted_witness == true && host.witness_id.nil?
        host.contacted_witness = false
        host.save!
        print("The host (" + host.id.to_s + " - " + host.user.full_name + ") should be fixed!" + "/n")
      end

    }
    print("/n" + "finished fixing relations!")
  end

  desc "Add all cities to an other region of their country"
  task :add_cities_to_other_region_of_their_country => :environment do
    print("starting!" + "/n")

    Host.all.each{|host|
      if host.city.present?
        city = host.city
        country = host.country
        # add cities that have no region to other of their country
        if city.region.nil?
          other_region = Region.where(country_id:country.id, name:Region::OTHER_REGION_NAME).last

          # create other region for the country if it does not exist
          if other_region.nil?
            other_region = Region.new
            other_region.name = Region::OTHER_REGION_NAME
            other_region.country_id = country.id
            other_region.save!
          end

          # add city to region
          city.region_id = other_region.id
          city.save!
        end
      end

    }

    print("finished")
  end


  # Note: this is a helper rake task to detrmine weather there are cities without regions
  desc "Debug issue with united states additional city not under any region"
  task :debug_united_states_city_without_region => :environment do
    print("starting!" + "\n")
    united_states = Country.where(id:214).last
    united_states_hosts = Host.where(country_id: united_states.id)
    print "United states has " + united_states_hosts.count.to_s + "\n"
    Host.where(country_id: united_states.id).each{|host|
      if host.city.region.nil? || host.city.region.name != 'Other\אחר'
        print "The host with the id " + host.id.to_s + " has no region!" + "\n"
      end
    }
    print("finished")
  end

  desc "Fix Regions without country to have Israel as region"
  task :fix_regions_without_country => :environment do
    print("starting!" + "\n")
    Region.where(country_id: nil).each{|r|
      r.country_id = 97
      r.save!
    }
    print("\n" + "finished")
  end

  desc "Remove other regions before adding them again"
  task :remove_other_regions_before_re_adding_them => :environment do
    print("starting!" + "\n")
    Region.where(name: Region::OTHER_REGION_NAME).each{|r|
      r.destroy
    }
    print("\n" + "finished")
  end

  desc "Reduce invites pending count for invites destroyed automatically and not accounted for"
  task :reduce_invites_pending_count_for_invites_destroyed => :environment do
    print("starting!" + "\n")
    Host.all.each{|h|
      h.invites_pending_count = 0
      h.invites_confirmed_count = 0
      Invite.where(host_id: h.id).each{|i|
        invite_count = i.plus_ones + 1
        if i.confirmed
          h.invites_confirmed_count += invite_count
        elsif !i.confirmed
          h.invites_pending_count += invite_count
        end
      }
      h.save!
    }
    print("\n" + "finished")
  end

  desc "Create copy of a manager with the same cities"
  task :create_copy_of_manager_with_same_cities => :environment do
    print("starting!" + "\n")
    # get env variables
    manager_id = ENV['manager_id']
    new_email = ENV['new_email']
    new_password = ENV['new_password']
    new_name = ENV['new_name'] ? ENV['new_name'].present? : nil


    # Create dup manager
    old_m = Manager.where(id: manager_id).last
    m = old_m.dup
    m.temp_email = new_email
    m.save!

    # Create dup user
    u = old_m.user.dup
    u.email = new_email
    u.password = new_password
    u.meta = m

    # conditonaly add name
    if new_name.present?
      u.full_name = new_name
    end

    u.save!

    # Create dup community leaderships
    CommunityLeadership.where(manager_id: manager_id).each{|cl|
      new_cl = cl.dup
      new_cl.manager_id = m.id
      new_cl.save!
    }

    print("\n" + "finished")
  end

  desc "Ensure each witness has exactly one status"
  task :ensure_each_witness_has_exactly_one_status => :environment do
    print("starting!" + "\n")
    count = 0
    Witness.all.each{|w|
      if w.host_id && (w.external_assignment || w.archived || w.need_to_followup)
        w.external_assignment = false
        w.archived = false
        w.need_to_followup = false
        w.save!
        count += 1
        # print "Witness( ID:" + w.id.to_s + ")" + "was fixed!"
      elsif (w.external_assignment && w.archived) || (w.external_assignment && w.need_to_followup) || (w.external_assignment && w.archived && w.need_to_followup)
        w.archived = false
        w.need_to_followup = false
        w.save!
        count += 1
      elsif w.archived && w.need_to_followup
        w.need_to_followup = false
        w.save!
        count += 1
      end
    }
    print ("\n" + "Count of witnesses that their status was fixed is " + count.to_s)
    print("\n" + "finished")
  end

end
