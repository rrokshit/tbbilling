DROP TABLE IF EXISTS agents;

CREATE TABLE `agents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `address` varchar(250) NOT NULL,
  `fax` varchar(30) NOT NULL,
  `website` varchar(30) NOT NULL,
  `credit_limit` decimal(10,0) NOT NULL,
  `previous_balance` decimal(11,2) NOT NULL DEFAULT '0.00',
  `status` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=50 DEFAULT CHARSET=latin1;

INSERT INTO agents VALUES("1","SM ZARIQ TRAVEL","smzariqtravel@hotmail.com","0333214275","klang, selangor","9766","www.me.com","100000","0.00","Active");
INSERT INTO agents VALUES("2","VALENTINE TRAVEL","dsdfasdfasdf","4444424234","kl","","","100000","0.00","Active");
INSERT INTO agents VALUES("3","LATITUTE TREE","ddfafasf","35325345","kl","","","20000","0.00","Active");
INSERT INTO agents VALUES("4","TERAS ERA JAYA","aasdf","4324234324","Kuala Lumpur","","","150000","0.00","Active");
INSERT INTO agents VALUES("7","WALK-IN","","","","","","9999968271","0.00","Active");
INSERT INTO agents VALUES("10","MABA RESOURCES","fafafdaf","35343432423","fsdfsd","5345435","www.wrewerewf.com","30000","0.00","Active");
INSERT INTO agents VALUES("11","UZZAL JB","fafasdf","24234","fdasf","32432","","50000","0.00","Active");
INSERT INTO agents VALUES("12","RASEL","eefsfs","432423","dfs","4324234","","10000","0.00","Active");
INSERT INTO agents VALUES("13","ANWAR MALEKKA","asdfadf","asdfaf","Malaka","a","","20000","0.00","Active");
INSERT INTO agents VALUES("14","MANIK","afdad","dfdf","kl","","","5000","0.00","Active");
INSERT INTO agents VALUES("15","HEMAYET","eafaf","adfaf","kl","","","10000","0.00","Active");
INSERT INTO agents VALUES("16","CHAN MIAH","adfa","asdf","asdf","","","10000","0.00","Active");
INSERT INTO agents VALUES("17","MOHIUDDIN PENANG","asdfaf","asdf","PENANG","","","15000","0.00","Active");
INSERT INTO agents VALUES("18","SATABDI TRAVEL","asdfasdf","asdf","KLANG","","","2000","0.00","Active");
INSERT INTO agents VALUES("19","SAIFUL IME","ADSF","ASDF","ADF","","","10000","0.00","Active");
INSERT INTO agents VALUES("20","YASIN SHETU","abcdefg@yahoo.com","6012-3556458","PULAU PINANG","","","20000","0.00","Active");
INSERT INTO agents VALUES("21","PS LEO TRAVEL","psleotravel@gmail.com","603-26931144","WILAYAH KOMPLEKS,KL","","","100000","0.00","Active");
INSERT INTO agents VALUES("22","DEPOSIT","dep@serimechan.com","26519021","ug 14 willljwcnadjf alkjafdh eofddeqjhfd ","","","10000000","0.00","Active");
INSERT INTO agents VALUES("23","SUPER GALVANISING","kean@supergalv.com.my","603-60914488","selangor","","","10000","0.00","Active");
INSERT INTO agents VALUES("24","CHINNU","CHINNU@GMAIL.COM","01977777","KKJ JH OIUH OO OIJH ","","","800","0.00","Active");
INSERT INTO agents VALUES("25","NY JOHOR TRAVEL","abcdefg@yahoo.com","6012-3446664","JOHOR BHARU","","","100000","0.00","Active");
INSERT INTO agents VALUES("26","MOSHARAF","abcdefg@yahoo.com","6012-2276761","  \n AMPANG,SELANGOR","","","10000","0.00","Active");
INSERT INTO agents VALUES("27","SITI ZUBAIDAH","SITI@SERIMECHAN.COM","0326930458","KL","","","10000","0.00","Active");
INSERT INTO agents VALUES("28","TORIKUL","TORIKUL@SERIMECHAN.COM","0326598524","KL","","","1480","0.00","Active");
INSERT INTO agents VALUES("29","AZAD","AZAD@SERIMECHAN.COM","23696525","KL","","","5000","0.00","Active");
INSERT INTO agents VALUES("30","MONTU BISWAS","MONTUSDNBHD@YAHOO.COM","+60166042899","KL","","","2000","0.00","Active");
INSERT INTO agents VALUES("31","HAPPY TRAVEL","HAPPYTRAVEL@SERIMECHAN.COM","0132525252","KL","","","2000","0.00","Active");
INSERT INTO agents VALUES("32","Electric BIl","info@serimechan.com","0326930458","kl","","","10000","0.00","Active");
INSERT INTO agents VALUES("33","MR RAJU","UGFURGFYHU","0166445593","DE","DED","DED","10000","0.00","Active");
INSERT INTO agents VALUES("34","RAHAMAN SEREMBAN","info.norrs@yahoo.com","067633695","seremban","","","2000","0.00","Active");
INSERT INTO agents VALUES("35","KABIR- CONTRACTOR","GRTRHTHHFG","0162205694","GFHTVH BTRG VTH FG GHF T TJH H","GCCETHR","SCDGRGC","2000","0.00","Active");
INSERT INTO agents VALUES("36","KABIR- CONTRACTOR","GRTRHTHHFG","0162205694","GFHTVH BTRG VTH FG GHF T TJH H","GCCETHR","SCDGRGC","2000","0.00","Active");
INSERT INTO agents VALUES("37","RAHAMAN -CTG","JGFEIGF","0166128131","DHGFHUGF UEDGD GDGDI JGJ","","","10000","0.00","Active");
INSERT INTO agents VALUES("38","hemayet @biman","hemayetkul@hotmail.com","0172092422","biman@station manager","","","10000","0.00","Active");
INSERT INTO agents VALUES("39","RAHAMATH (M) SDN BHD","rahamathmalay@hotmail.com","0326930458","Jalan Dang Wangi, KL","","","10000000","0.00","Active");
INSERT INTO agents VALUES("40","JAKIR HOSSAIN","GFHEDGFH","0163238197","hijrhgfhj udedu ohuegdj","","","1500","0.00","Active");
INSERT INTO agents VALUES("41","SIRAJUL JESSOR","SIRAJUL@HOTMAIL.COM","072511345","KL","","","10000","0.00","Active");
INSERT INTO agents VALUES("42","MAHDURI TRADE","MAHDURITADE@YAHOO.COM","0163915817","TYFBVGFH RFG G GR ","GFRG","RFGG","2000","0.00","Active");
INSERT INTO agents VALUES("43","BASHAR KAMROON ","HOMEGROWNCORAL@GMAIL.COM","+60165490382","KAMROON HIGHLAND","","","10000","0.00","Active");
INSERT INTO agents VALUES("44","SAHIN","SAHIUN@SERIMECHAN.COM","+","KL","","","10000","0.00","Active");
INSERT INTO agents VALUES("45","PRISTON","evon@priston.com.my","60362756220","kepong,selangor.","","","10000","0.00","Active");
INSERT INTO agents VALUES("46","MANIULLAH","swwtt@live.com","0102490172","SKY WORLD","4545455","5445454","10000","0.00","Active");
INSERT INTO agents VALUES("47","ERWIN TRAVEL","abgjhuh@yahoo.com","603-75610054","kajang","","","10000","0.00","Active");
INSERT INTO agents VALUES("48","ALPHA NEPTUNE","salwa@alphaneptune","60197510779","\n damansara","","","10000","0.00","Active");
INSERT INTO agents VALUES("49","VIKAS DHAMAL","VIKAS@YAHOO.COM","+60165490382","DHAMAAL","","","10000","0.00","Active");



DROP TABLE IF EXISTS banks;

CREATE TABLE `banks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bank_name` varchar(100) NOT NULL,
  `status` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

INSERT INTO banks VALUES("1","MAY BANK","Active");
INSERT INTO banks VALUES("2","CIMB BANK","Active");
INSERT INTO banks VALUES("3","RHB BANK","Active");
INSERT INTO banks VALUES("4","PUBLIC BANK","Active");
INSERT INTO banks VALUES("6","AL RAJHI BANK","Active");
INSERT INTO banks VALUES("7","STANDARD CHARTERED","Active");



DROP TABLE IF EXISTS carriers;

CREATE TABLE `carriers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `carrier_name` varchar(100) NOT NULL,
  `status` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

INSERT INTO carriers VALUES("6","AIR ASIA (AK)","Active");
INSERT INTO carriers VALUES("5","MALAYSIA AIRLINES (MH)","Active");
INSERT INTO carriers VALUES("4","BIMAN BANGLADESH AIRLINES (BG)","Active");
INSERT INTO carriers VALUES("7","EMIRATES AIRLINES (EK)","Active");
INSERT INTO carriers VALUES("8","ETHIHAD AIRLINES (EY)","Active");
INSERT INTO carriers VALUES("22","KUL/DAC","Active");
INSERT INTO carriers VALUES("10","INDIAN AIRLINES (AI)","Active");
INSERT INTO carriers VALUES("11","JET AIRWAYS (9W)","Active");
INSERT INTO carriers VALUES("12","MAYANMAR AIRLINES (8M)","Active");
INSERT INTO carriers VALUES("13","PAKISTAN AIRLINES (PK)","Active");
INSERT INTO carriers VALUES("14","QATAR AIRWAYS","Active");
INSERT INTO carriers VALUES("15","ROYAL NEPAL (RA)","Active");
INSERT INTO carriers VALUES("16","SINGAPORE AIRLINES (SQ)","Active");
INSERT INTO carriers VALUES("17","SRILANKA AIRLINES (UL)","Active");
INSERT INTO carriers VALUES("18","THAI AIRWAYS (TG)","Active");
INSERT INTO carriers VALUES("19","UNITED AIRWAYS (4H)","Active");
INSERT INTO carriers VALUES("23","KUL/BKK/KTM/BKK/KUL","Active");
INSERT INTO carriers VALUES("24","KUL/BKK/KTM","Active");



DROP TABLE IF EXISTS cash_deposit;

CREATE TABLE `cash_deposit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cash_in_hand` decimal(11,2) NOT NULL,
  `deposit` decimal(11,2) NOT NULL,
  `deposit_date` date NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




DROP TABLE IF EXISTS company;

CREATE TABLE `company` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `fax` varchar(30) NOT NULL,
  `address` varchar(250) NOT NULL,
  `website` varchar(50) NOT NULL,
  `img` varchar(100) NOT NULL,
  `mobile` varchar(30) NOT NULL,
  `reg_number` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

INSERT INTO company VALUES("1","SERI MECHAN TRAVEL SDN. BHD.","accountdepartment@serimechan.com","+60326930458","+60327883767","UG-14, Willayah Complex,\nJalan Dang Wangi,50100,\nKuala Lumpur, Malaysia.","www.serimechan.com","logo.jpg","+60193446664","085762-M");



DROP TABLE IF EXISTS db_bck;

CREATE TABLE `db_bck` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `file_name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

INSERT INTO db_bck VALUES("1","2012-06-16 01:47:37.sql");
INSERT INTO db_bck VALUES("2","2012-06-16 01:55:04.sql");
INSERT INTO db_bck VALUES("3","2012-06-16 01:57:11.sql");
INSERT INTO db_bck VALUES("4","2012-06-16 01:57:52.sql");
INSERT INTO db_bck VALUES("5","2012-06-16 01:58:55.sql");
INSERT INTO db_bck VALUES("6","2012-06-16 02:00:36.sql");
INSERT INTO db_bck VALUES("7","2012-06-16 02-03-10.sql");
INSERT INTO db_bck VALUES("8","2012-06-16 02-08-14.sql");
INSERT INTO db_bck VALUES("9","2012-06-21 12-17-29.sql");
INSERT INTO db_bck VALUES("10","2012-06-21 12-17-53.sql");
INSERT INTO db_bck VALUES("11","2012-07-04 11-08-21.sql");
INSERT INTO db_bck VALUES("12","2012-07-04 05-33-12.sql");



DROP TABLE IF EXISTS due_collection;

CREATE TABLE `due_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `payment_date` date NOT NULL,
  `type` varchar(30) NOT NULL,
  `agent_id` int(11) DEFAULT NULL,
  `carrier_id` int(11) DEFAULT NULL,
  `individual` varchar(30) NOT NULL,
  `cash` decimal(11,2) NOT NULL,
  `cheque` decimal(11,2) NOT NULL,
  `bank` decimal(11,2) NOT NULL,
  `total` decimal(11,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;

INSERT INTO due_collection VALUES("18","2012-07-02","Individual","","","SUPER GALVANIZING - MBB","0.00","0.00","2160.00","2160.00");
INSERT INTO due_collection VALUES("19","2012-07-02","Individual","","","MOSAROF SUBAIYAH","1740.00","0.00","0.00","1740.00");
INSERT INTO due_collection VALUES("20","2012-07-02","Individual","","","142693-9972273404558","1130.00","0.00","0.00","1130.00");
INSERT INTO due_collection VALUES("21","2012-07-02","Individual","","","ANWAR MALEKKA - MBB","0.00","0.00","3000.00","3000.00");
INSERT INTO due_collection VALUES("22","2012-07-02","Individual","","","MONTU BISWAS","250.00","0.00","0.00","250.00");
INSERT INTO due_collection VALUES("23","2012-07-02","Individual","","","142309 - 2322273404543","880.00","0.00","0.00","880.00");
INSERT INTO due_collection VALUES("24","2012-07-02","Agent","27","","","0.00","0.00","500.00","500.00");
INSERT INTO due_collection VALUES("25","2012-07-02","Agent","27","","","0.00","0.00","3770.00","3770.00");
INSERT INTO due_collection VALUES("26","2012-07-04","Agent","33","","","1270.00","0.00","0.00","1270.00");
INSERT INTO due_collection VALUES("27","2012-07-04","Agent","13","","","0.00","0.00","5200.00","5200.00");
INSERT INTO due_collection VALUES("29","2012-07-04","Agent","45","","","0.00","0.00","2910.00","2910.00");
INSERT INTO due_collection VALUES("30","2012-07-04","Agent","45","","","0.00","0.00","240.00","240.00");
INSERT INTO due_collection VALUES("31","2012-07-04","Agent","47","","","0.00","0.00","3600.00","3600.00");
INSERT INTO due_collection VALUES("32","2012-07-04","Agent","47","","","0.00","0.00","724.00","724.00");
INSERT INTO due_collection VALUES("33","2012-07-04","Agent","11","","","0.00","0.00","2580.00","2580.00");
INSERT INTO due_collection VALUES("34","2012-07-04","Agent","11","","","0.00","0.00","1010.00","1010.00");



DROP TABLE IF EXISTS exchange_order;

CREATE TABLE `exchange_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `xo_number` int(11) NOT NULL,
  `xo_to` varchar(200) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `paxs` varchar(100) NOT NULL,
  `ringgit_inwords` varchar(100) NOT NULL,
  `cheque_no` varchar(50) NOT NULL,
  `or_no` varchar(50) NOT NULL,
  `groos_fare` decimal(11,2) NOT NULL,
  `comission` decimal(11,2) NOT NULL,
  `net_fare` decimal(11,2) NOT NULL,
  `tax` decimal(11,2) NOT NULL,
  `total` decimal(11,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




DROP TABLE IF EXISTS invoice;

CREATE TABLE `invoice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_number` int(11) NOT NULL,
  `invoice_to` varchar(200) NOT NULL,
  `invoice_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `total_amount` decimal(11,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




DROP TABLE IF EXISTS invoice_particular;

CREATE TABLE `invoice_particular` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_number` varchar(30) NOT NULL,
  `particular` varchar(400) NOT NULL,
  `qty` decimal(11,2) NOT NULL,
  `rate` decimal(11,2) NOT NULL,
  `total` decimal(11,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




DROP TABLE IF EXISTS menu_action;

CREATE TABLE `menu_action` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_id` int(11) NOT NULL,
  `action` varchar(30) NOT NULL,
  `type_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3040 DEFAULT CHARSET=latin1;

INSERT INTO menu_action VALUES("847","2","create","4");
INSERT INTO menu_action VALUES("848","2","update","4");
INSERT INTO menu_action VALUES("849","2","delete","4");
INSERT INTO menu_action VALUES("1308","13","approvedVoucher","1");
INSERT INTO menu_action VALUES("1309","2","create","1");
INSERT INTO menu_action VALUES("1310","31","create","1");
INSERT INTO menu_action VALUES("1311","30","create","1");
INSERT INTO menu_action VALUES("1312","29","create","1");
INSERT INTO menu_action VALUES("1313","9","create","1");
INSERT INTO menu_action VALUES("1314","8","create","1");
INSERT INTO menu_action VALUES("1315","7","create","1");
INSERT INTO menu_action VALUES("1316","6","create","1");
INSERT INTO menu_action VALUES("1317","5","create","1");
INSERT INTO menu_action VALUES("1318","4","create","1");
INSERT INTO menu_action VALUES("1319","3","create","1");
INSERT INTO menu_action VALUES("1320","34","create","1");
INSERT INTO menu_action VALUES("1321","11","create","1");
INSERT INTO menu_action VALUES("1322","12","create","1");
INSERT INTO menu_action VALUES("1323","13","create","1");
INSERT INTO menu_action VALUES("1324","14","create","1");
INSERT INTO menu_action VALUES("1325","15","create","1");
INSERT INTO menu_action VALUES("1326","32","create","1");
INSERT INTO menu_action VALUES("1327","17","create","1");
INSERT INTO menu_action VALUES("1328","25","create","1");
INSERT INTO menu_action VALUES("1329","24","create","1");
INSERT INTO menu_action VALUES("1330","23","create","1");
INSERT INTO menu_action VALUES("1331","22","create","1");
INSERT INTO menu_action VALUES("1332","21","create","1");
INSERT INTO menu_action VALUES("1333","20","create","1");
INSERT INTO menu_action VALUES("1334","19","create","1");
INSERT INTO menu_action VALUES("1335","18","create","1");
INSERT INTO menu_action VALUES("1336","33","create","1");
INSERT INTO menu_action VALUES("1337","27","create","1");
INSERT INTO menu_action VALUES("1338","28","create","1");
INSERT INTO menu_action VALUES("1339","2","update","1");
INSERT INTO menu_action VALUES("1340","31","update","1");
INSERT INTO menu_action VALUES("1341","30","update","1");
INSERT INTO menu_action VALUES("1342","29","update","1");
INSERT INTO menu_action VALUES("1343","9","update","1");
INSERT INTO menu_action VALUES("1344","8","update","1");
INSERT INTO menu_action VALUES("1345","7","update","1");
INSERT INTO menu_action VALUES("1346","6","update","1");
INSERT INTO menu_action VALUES("1347","5","update","1");
INSERT INTO menu_action VALUES("1348","4","update","1");
INSERT INTO menu_action VALUES("1349","3","update","1");
INSERT INTO menu_action VALUES("1350","34","update","1");
INSERT INTO menu_action VALUES("1351","11","update","1");
INSERT INTO menu_action VALUES("1352","12","update","1");
INSERT INTO menu_action VALUES("1353","13","update","1");
INSERT INTO menu_action VALUES("1354","14","update","1");
INSERT INTO menu_action VALUES("1355","15","update","1");
INSERT INTO menu_action VALUES("1356","32","update","1");
INSERT INTO menu_action VALUES("1357","17","update","1");
INSERT INTO menu_action VALUES("1358","25","update","1");
INSERT INTO menu_action VALUES("1359","24","update","1");
INSERT INTO menu_action VALUES("1360","23","update","1");
INSERT INTO menu_action VALUES("1361","22","update","1");
INSERT INTO menu_action VALUES("1362","21","update","1");
INSERT INTO menu_action VALUES("1363","20","update","1");
INSERT INTO menu_action VALUES("1364","19","update","1");
INSERT INTO menu_action VALUES("1365","18","update","1");
INSERT INTO menu_action VALUES("1366","33","update","1");
INSERT INTO menu_action VALUES("1367","27","update","1");
INSERT INTO menu_action VALUES("1368","28","update","1");
INSERT INTO menu_action VALUES("1369","2","delete","1");
INSERT INTO menu_action VALUES("1370","31","delete","1");
INSERT INTO menu_action VALUES("1371","30","delete","1");
INSERT INTO menu_action VALUES("1372","29","delete","1");
INSERT INTO menu_action VALUES("1373","9","delete","1");
INSERT INTO menu_action VALUES("1374","8","delete","1");
INSERT INTO menu_action VALUES("1375","7","delete","1");
INSERT INTO menu_action VALUES("1376","6","delete","1");
INSERT INTO menu_action VALUES("1377","5","delete","1");
INSERT INTO menu_action VALUES("1378","4","delete","1");
INSERT INTO menu_action VALUES("1379","3","delete","1");
INSERT INTO menu_action VALUES("1380","34","delete","1");
INSERT INTO menu_action VALUES("1381","11","delete","1");
INSERT INTO menu_action VALUES("1382","12","delete","1");
INSERT INTO menu_action VALUES("1383","13","delete","1");
INSERT INTO menu_action VALUES("1384","14","delete","1");
INSERT INTO menu_action VALUES("1385","15","delete","1");
INSERT INTO menu_action VALUES("1386","32","delete","1");
INSERT INTO menu_action VALUES("1387","17","delete","1");
INSERT INTO menu_action VALUES("1388","25","delete","1");
INSERT INTO menu_action VALUES("1389","24","delete","1");
INSERT INTO menu_action VALUES("1390","23","delete","1");
INSERT INTO menu_action VALUES("1391","22","delete","1");
INSERT INTO menu_action VALUES("1392","21","delete","1");
INSERT INTO menu_action VALUES("1393","20","delete","1");
INSERT INTO menu_action VALUES("1394","19","delete","1");
INSERT INTO menu_action VALUES("1395","18","delete","1");
INSERT INTO menu_action VALUES("1396","33","delete","1");
INSERT INTO menu_action VALUES("1397","27","delete","1");
INSERT INTO menu_action VALUES("1398","28","delete","1");
INSERT INTO menu_action VALUES("2936","13","approvedVoucher","2");
INSERT INTO menu_action VALUES("2937","2","create","2");
INSERT INTO menu_action VALUES("2938","31","create","2");
INSERT INTO menu_action VALUES("2939","30","create","2");
INSERT INTO menu_action VALUES("2940","29","create","2");
INSERT INTO menu_action VALUES("2941","9","create","2");
INSERT INTO menu_action VALUES("2942","8","create","2");
INSERT INTO menu_action VALUES("2943","7","create","2");
INSERT INTO menu_action VALUES("2944","6","create","2");
INSERT INTO menu_action VALUES("2945","5","create","2");
INSERT INTO menu_action VALUES("2946","4","create","2");
INSERT INTO menu_action VALUES("2947","3","create","2");
INSERT INTO menu_action VALUES("2948","11","create","2");
INSERT INTO menu_action VALUES("2949","12","create","2");
INSERT INTO menu_action VALUES("2950","13","create","2");
INSERT INTO menu_action VALUES("2951","32","create","2");
INSERT INTO menu_action VALUES("2952","17","create","2");
INSERT INTO menu_action VALUES("2953","33","create","2");
INSERT INTO menu_action VALUES("2954","22","create","2");
INSERT INTO menu_action VALUES("2955","21","create","2");
INSERT INTO menu_action VALUES("2956","19","create","2");
INSERT INTO menu_action VALUES("2957","35","create","2");
INSERT INTO menu_action VALUES("2958","27","create","2");
INSERT INTO menu_action VALUES("2959","2","update","2");
INSERT INTO menu_action VALUES("2960","31","update","2");
INSERT INTO menu_action VALUES("2961","30","update","2");
INSERT INTO menu_action VALUES("2962","29","update","2");
INSERT INTO menu_action VALUES("2963","9","update","2");
INSERT INTO menu_action VALUES("2964","8","update","2");
INSERT INTO menu_action VALUES("2965","7","update","2");
INSERT INTO menu_action VALUES("2966","6","update","2");
INSERT INTO menu_action VALUES("2967","5","update","2");
INSERT INTO menu_action VALUES("2968","4","update","2");
INSERT INTO menu_action VALUES("2969","3","update","2");
INSERT INTO menu_action VALUES("2970","11","update","2");
INSERT INTO menu_action VALUES("2971","12","update","2");
INSERT INTO menu_action VALUES("2972","13","update","2");
INSERT INTO menu_action VALUES("2973","32","update","2");
INSERT INTO menu_action VALUES("2974","17","update","2");
INSERT INTO menu_action VALUES("2975","33","update","2");
INSERT INTO menu_action VALUES("2976","22","update","2");
INSERT INTO menu_action VALUES("2977","21","update","2");
INSERT INTO menu_action VALUES("2978","19","update","2");
INSERT INTO menu_action VALUES("2979","35","update","2");
INSERT INTO menu_action VALUES("2980","27","update","2");
INSERT INTO menu_action VALUES("2981","2","delete","2");
INSERT INTO menu_action VALUES("2982","31","delete","2");
INSERT INTO menu_action VALUES("2983","30","delete","2");
INSERT INTO menu_action VALUES("2984","29","delete","2");
INSERT INTO menu_action VALUES("2985","9","delete","2");
INSERT INTO menu_action VALUES("2986","8","delete","2");
INSERT INTO menu_action VALUES("2987","7","delete","2");
INSERT INTO menu_action VALUES("2988","6","delete","2");
INSERT INTO menu_action VALUES("2989","5","delete","2");
INSERT INTO menu_action VALUES("2990","4","delete","2");
INSERT INTO menu_action VALUES("2991","3","delete","2");
INSERT INTO menu_action VALUES("2992","11","delete","2");
INSERT INTO menu_action VALUES("2993","12","delete","2");
INSERT INTO menu_action VALUES("2994","13","delete","2");
INSERT INTO menu_action VALUES("2995","32","delete","2");
INSERT INTO menu_action VALUES("2996","17","delete","2");
INSERT INTO menu_action VALUES("2997","33","delete","2");
INSERT INTO menu_action VALUES("2998","22","delete","2");
INSERT INTO menu_action VALUES("2999","21","delete","2");
INSERT INTO menu_action VALUES("3000","19","delete","2");
INSERT INTO menu_action VALUES("3001","35","delete","2");
INSERT INTO menu_action VALUES("3002","27","delete","2");
INSERT INTO menu_action VALUES("3026","2","create","3");
INSERT INTO menu_action VALUES("3027","6","create","3");
INSERT INTO menu_action VALUES("3028","5","create","3");
INSERT INTO menu_action VALUES("3029","4","create","3");
INSERT INTO menu_action VALUES("3030","3","create","3");
INSERT INTO menu_action VALUES("3031","11","create","3");
INSERT INTO menu_action VALUES("3032","12","create","3");
INSERT INTO menu_action VALUES("3033","13","create","3");
INSERT INTO menu_action VALUES("3034","17","create","3");
INSERT INTO menu_action VALUES("3035","33","create","3");
INSERT INTO menu_action VALUES("3036","21","create","3");
INSERT INTO menu_action VALUES("3037","19","create","3");
INSERT INTO menu_action VALUES("3038","35","create","3");
INSERT INTO menu_action VALUES("3039","27","create","3");



DROP TABLE IF EXISTS menu_item;

CREATE TABLE `menu_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `link` varchar(100) NOT NULL,
  `parent` int(11) NOT NULL,
  `ordering` int(11) NOT NULL,
  `icon` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;

INSERT INTO menu_item VALUES("1","Management","/index.php/management","0","0","");
INSERT INTO menu_item VALUES("2","Company","/index.php/company","1","0","");
INSERT INTO menu_item VALUES("3","Agent","/index.php/agents","1","0","");
INSERT INTO menu_item VALUES("4","Sector","/index.php/sectors","1","0","");
INSERT INTO menu_item VALUES("5","Carrier","/index.php/carriers","1","0","");
INSERT INTO menu_item VALUES("6","Price","/index.php/prices","1","0","");
INSERT INTO menu_item VALUES("7","Payment Terms","/index.php/paymentTerms","1","0","");
INSERT INTO menu_item VALUES("8","Banks","/index.php/banks","1","0","");
INSERT INTO menu_item VALUES("9","Users","/index.php/userInfo","1","0","");
INSERT INTO menu_item VALUES("10","Entry","/index.php/entry","0","0","");
INSERT INTO menu_item VALUES("11","Receipt","/index.php/receipts","10","0","");
INSERT INTO menu_item VALUES("12","Credit Voucher","/index.php/dueCollection","10","0","");
INSERT INTO menu_item VALUES("13","Payment Voucher","/index.php/paymentVoucher","10","0","");
INSERT INTO menu_item VALUES("14","Invoice","/index.php/invoice","10","0","");
INSERT INTO menu_item VALUES("15","XO(Exchange Order)","/index.php/exchangeOrder","10","0","");
INSERT INTO menu_item VALUES("16","Report","/index.php/report","0","0","");
INSERT INTO menu_item VALUES("17","Official Receipt","/index.php/rptOfficialReceipt","16","0","");
INSERT INTO menu_item VALUES("18","Receipt Summary","/index.php/rptReceiptSummary","16","0","");
INSERT INTO menu_item VALUES("19","Credit Voucher","/index.php/rptDuePaymentCollection","16","0","");
INSERT INTO menu_item VALUES("20","Approved Payment Voucher","/index.php/rptApprovedPaymentVoucher","16","0","");
INSERT INTO menu_item VALUES("21","Payment Voucher","/index.php/rptPaymentVoucher","16","0","");
INSERT INTO menu_item VALUES("22","Daily Transaction","/index.php/rptCollectionStatus","16","0","");
INSERT INTO menu_item VALUES("23","Audit Report","/index.php/rptAuditReport","16","0","");
INSERT INTO menu_item VALUES("24","Invoice","/index.php/rptInvoice","16","0","");
INSERT INTO menu_item VALUES("25","XO","/index.php/rptXO","16","0","");
INSERT INTO menu_item VALUES("26","Backup","/index.php/backup","0","0","");
INSERT INTO menu_item VALUES("27","Backup","/index.php/sysBackup","26","0","");
INSERT INTO menu_item VALUES("28","Restore","/index.php/sysRestore","26","0","");
INSERT INTO menu_item VALUES("29","User Privilige","/index.php/userGroup","1","0","");
INSERT INTO menu_item VALUES("30","Increase Credit Limit","/index.php/increaseCreditLimit","1","0","");
INSERT INTO menu_item VALUES("31","Serial Number","/index.php/serialNumber","1","0","");
INSERT INTO menu_item VALUES("32","Cash Deposit","/index.php/cashDeposit","10","0","");
INSERT INTO menu_item VALUES("33","Ledger","/index.php/rptAgentCollection","16","0","");
INSERT INTO menu_item VALUES("34","Previous Ballance","/index.php/previousBallance","1","0","");
INSERT INTO menu_item VALUES("35","Bank Receipts","/index.php/rptBankWiseReceipt","16","0","");



DROP TABLE IF EXISTS menus;

CREATE TABLE `menus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `path` varchar(100) NOT NULL,
  `order` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

INSERT INTO menus VALUES("1","Receipt","./home.php?page=receipt","0");
INSERT INTO menus VALUES("3","Company","./home.php?page=company","1");
INSERT INTO menus VALUES("4","User","./home.php?page=user","3");
INSERT INTO menus VALUES("5","Privilege","./home.php?page=privilege","9");
INSERT INTO menus VALUES("6","Agent","./home.php?page=agent","2");
INSERT INTO menus VALUES("7","Sector","./home.php?page=sector","4");
INSERT INTO menus VALUES("8","Carrier","./home.php?page=carrier","5");
INSERT INTO menus VALUES("9","Price","./home.php?page=price","6");
INSERT INTO menus VALUES("10","Bank","./home.php?page=bank","7");
INSERT INTO menus VALUES("11","Pay Term","./home.php?page=payment-terms","8");
INSERT INTO menus VALUES("12","Reports","./home.php?page=reports","10");
INSERT INTO menus VALUES("2","Management","./home.php?page=management","0");



DROP TABLE IF EXISTS payment_details;

CREATE TABLE `payment_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `agent_name` varchar(20) NOT NULL,
  `amount` int(11) NOT NULL,
  `date` varchar(11) NOT NULL,
  PRIMARY KEY (`id`,`agent_name`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;




DROP TABLE IF EXISTS payment_terms;

CREATE TABLE `payment_terms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `payment_term_name` varchar(100) NOT NULL,
  `status` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

INSERT INTO payment_terms VALUES("1","CASH","Active");
INSERT INTO payment_terms VALUES("2","CREDIT","Active");
INSERT INTO payment_terms VALUES("3","CHEQUE","Active");
INSERT INTO payment_terms VALUES("5","BANKIN","Active");
INSERT INTO payment_terms VALUES("6","CREDIT CARD","Active");



DROP TABLE IF EXISTS payment_voucher;

CREATE TABLE `payment_voucher` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `payment_date` date NOT NULL,
  `type` varchar(30) NOT NULL,
  `agent_id` int(11) DEFAULT NULL,
  `carrier_id` int(11) DEFAULT NULL,
  `individual` varchar(30) NOT NULL,
  `payment_terms` varchar(20) NOT NULL,
  `bank_id` int(11) NOT NULL,
  `cheque_no` varchar(50) NOT NULL,
  `cheque_date` date NOT NULL,
  `total` decimal(11,2) NOT NULL,
  `auto_num` int(11) NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'Pending',
  `approved_by` int(11) NOT NULL DEFAULT '0',
  `purpose` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

INSERT INTO payment_voucher VALUES("6","2012-07-02","Individual","","","DATASOFT SOLUTIONS (M) SDN BHD","Cash","0","","2012-07-02","3000.00","1001","Approved","10","Software Development");
INSERT INTO payment_voucher VALUES("7","2012-07-02","Individual","","","AZAD CTG","Cash","0","","2012-07-02","670.00","1002","Approved","10","REFUND DEPOSIT");
INSERT INTO payment_voucher VALUES("8","2012-07-03","Individual","","","AYNAL MOLLIK-141956","Cash","0","","2012-07-03","500.00","1003","Approved","10","DEPOSIT REFUND");
INSERT INTO payment_voucher VALUES("9","2012-07-03","Individual","","","ABUL KALAM AZAD-142557","Cash","0","","2012-07-03","500.00","1004","Approved","10","DEPOSIT REFUND");
INSERT INTO payment_voucher VALUES("10","2012-07-03","Individual","","","MD BAKI BILLAH BULBUL-142391","Cash","0","","2012-07-03","800.00","1005","Approved","10","DEPOSIT REFUND");
INSERT INTO payment_voucher VALUES("11","2012-07-03","Individual","","","shahidullah","Cash","0","","2012-07-03","300.00","1006","Approved","17","DEP REFUND REF NO 142804 DEPOSITED ON 02 JULY ");
INSERT INTO payment_voucher VALUES("12","2012-07-03","Individual","","","MOJIBUR RAHMAN - 141732","Cash","0","","2012-07-03","500.00","1007","Approved","10","DEPOST REFUND");
INSERT INTO payment_voucher VALUES("13","2012-07-03","Individual","","","MD SIRAJUL - 141999","Cash","0","","2012-07-03","500.00","1008","Approved","10","DEPOSIT REFUND");
INSERT INTO payment_voucher VALUES("14","2012-07-03","Individual","","","OGDWKB","Cash","0","","2012-07-03","1500.00","1009","Approved","10","DEPOSIT REFUND");
INSERT INTO payment_voucher VALUES("15","2012-07-03","Agent","39","","","Cash","0","","2012-07-04","61357.00","1010","Approved","10","CASH PAYMENT");
INSERT INTO payment_voucher VALUES("16","2012-07-04","Individual","","","","Cash","0","","2012-07-04","180.00","1011","Approved","10","season parking for the month July");
INSERT INTO payment_voucher VALUES("17","2012-07-04","Individual","","","MOHD HAJER ALI","Cash","0","","2012-07-04","800.00","1012","Approved","10","DEP REFUND \nREF NO: 142479");
INSERT INTO payment_voucher VALUES("18","2012-07-04","Individual","","","MDBABULMEAH","Cash","0","","2012-07-04","400.00","1013","Approved","17","DEP REFUND \nREF: 142640");
INSERT INTO payment_voucher VALUES("19","2012-07-04","Agent","39","","","Cash","0","","2012-07-04","10000.00","1014","Approved","10","CASH PAID");



DROP TABLE IF EXISTS prices;

CREATE TABLE `prices` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sector_id` int(11) NOT NULL,
  `carrier_id` int(11) NOT NULL,
  `original_price` decimal(10,2) NOT NULL,
  `selling_price` decimal(10,2) NOT NULL,
  `status` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=54 DEFAULT CHARSET=latin1;

INSERT INTO prices VALUES("8","1","4","562.00","580.00","Active");
INSERT INTO prices VALUES("6","4","4","1260.00","1300.00","Active");
INSERT INTO prices VALUES("7","6","4","880.00","900.00","Active");
INSERT INTO prices VALUES("9","5","4","1266.00","1280.00","Active");
INSERT INTO prices VALUES("10","1","5","790.00","800.00","Active");
INSERT INTO prices VALUES("11","5","5","1830.00","1850.00","Active");
INSERT INTO prices VALUES("12","6","5","1080.00","1100.00","Active");
INSERT INTO prices VALUES("13","4","5","2375.00","2400.00","Active");
INSERT INTO prices VALUES("35","21","6","278.00","320.00","Active");
INSERT INTO prices VALUES("34","20","4","1360.00","1380.00","Active");
INSERT INTO prices VALUES("33","11","5","576.00","590.00","Active");
INSERT INTO prices VALUES("32","11","19","502.00","540.00","Active");
INSERT INTO prices VALUES("19","8","19","746.00","800.00","Active");
INSERT INTO prices VALUES("20","5","19","1056.00","1080.00","Active");
INSERT INTO prices VALUES("21","10","5","1528.00","1550.00","Active");
INSERT INTO prices VALUES("22","1","15","854.00","900.00","Active");
INSERT INTO prices VALUES("23","11","4","563.00","580.00","Active");
INSERT INTO prices VALUES("24","12","5","1428.00","1440.00","Active");
INSERT INTO prices VALUES("25","13","6","1053.00","1104.00","Active");
INSERT INTO prices VALUES("26","14","6","1113.00","1140.00","Active");
INSERT INTO prices VALUES("27","15","5","2475.00","2475.00","Active");
INSERT INTO prices VALUES("28","16","5","2435.00","2714.00","Active");
INSERT INTO prices VALUES("29","17","6","710.00","740.00","Active");
INSERT INTO prices VALUES("30","18","5","625.00","650.00","Active");
INSERT INTO prices VALUES("31","19","4","935.00","980.00","Active");
INSERT INTO prices VALUES("36","18","12","625.00","650.00","Active");
INSERT INTO prices VALUES("37","8","4","870.00","900.00","Active");
INSERT INTO prices VALUES("38","23","19","1250.00","1310.00","Active");
INSERT INTO prices VALUES("39","24","4","1410.00","1415.00","Active");
INSERT INTO prices VALUES("40","25","19","120.00","130.00","Active");
INSERT INTO prices VALUES("41","21","5","554.00","600.00","Active");
INSERT INTO prices VALUES("42","27","6","805.00","835.00","Inactive");
INSERT INTO prices VALUES("43","27","6","475.00","510.00","Active");
INSERT INTO prices VALUES("44","28","6","475.00","510.00","Active");
INSERT INTO prices VALUES("45","1","15","854.00","900.00","Active");
INSERT INTO prices VALUES("46","29","19","137.00","150.00","Active");
INSERT INTO prices VALUES("47","30","4","676.00","700.00","Active");
INSERT INTO prices VALUES("48","5","4","1264.00","1280.00","Active");
INSERT INTO prices VALUES("49","31","6","420.00","450.00","Active");
INSERT INTO prices VALUES("50","32","15","1643.00","1730.00","Active");
INSERT INTO prices VALUES("51","33","18","1182.00","1250.00","Active");
INSERT INTO prices VALUES("52","34","18","1810.00","1850.00","Active");
INSERT INTO prices VALUES("53","35","4","1061.00","1190.00","Active");



DROP TABLE IF EXISTS privileges;

CREATE TABLE `privileges` (
  `user_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO privileges VALUES("7","1");
INSERT INTO privileges VALUES("6","1");
INSERT INTO privileges VALUES("1","1");
INSERT INTO privileges VALUES("1","2");
INSERT INTO privileges VALUES("1","3");
INSERT INTO privileges VALUES("1","4");
INSERT INTO privileges VALUES("1","5");
INSERT INTO privileges VALUES("1","6");
INSERT INTO privileges VALUES("1","7");
INSERT INTO privileges VALUES("1","8");
INSERT INTO privileges VALUES("1","9");
INSERT INTO privileges VALUES("1","10");
INSERT INTO privileges VALUES("1","11");
INSERT INTO privileges VALUES("1","12");
INSERT INTO privileges VALUES("5","5");
INSERT INTO privileges VALUES("5","1");
INSERT INTO privileges VALUES("5","12");
INSERT INTO privileges VALUES("5","4");
INSERT INTO privileges VALUES("5","3");
INSERT INTO privileges VALUES("5","6");
INSERT INTO privileges VALUES("5","7");
INSERT INTO privileges VALUES("5","8");
INSERT INTO privileges VALUES("5","9");
INSERT INTO privileges VALUES("5","10");
INSERT INTO privileges VALUES("5","11");
INSERT INTO privileges VALUES("8","1");
INSERT INTO privileges VALUES("8","3");
INSERT INTO privileges VALUES("8","6");
INSERT INTO privileges VALUES("8","4");
INSERT INTO privileges VALUES("8","7");
INSERT INTO privileges VALUES("8","8");
INSERT INTO privileges VALUES("8","9");
INSERT INTO privileges VALUES("8","10");
INSERT INTO privileges VALUES("8","11");
INSERT INTO privileges VALUES("8","5");
INSERT INTO privileges VALUES("8","12");
INSERT INTO privileges VALUES("6","3");
INSERT INTO privileges VALUES("6","6");
INSERT INTO privileges VALUES("6","4");
INSERT INTO privileges VALUES("6","7");
INSERT INTO privileges VALUES("6","8");
INSERT INTO privileges VALUES("6","9");
INSERT INTO privileges VALUES("6","10");
INSERT INTO privileges VALUES("6","11");
INSERT INTO privileges VALUES("6","5");
INSERT INTO privileges VALUES("6","12");



DROP TABLE IF EXISTS receipts;

CREATE TABLE `receipts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `auto_num` int(11) NOT NULL,
  `pnr` varchar(50) NOT NULL,
  `date` date NOT NULL,
  `flt_date` date NOT NULL,
  `return_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `name_prefix` varchar(10) NOT NULL,
  `name` varchar(300) NOT NULL,
  `ticket_no` varchar(300) NOT NULL,
  `sector` varchar(20) NOT NULL,
  `carrier` varchar(20) NOT NULL,
  `agent_id` int(11) NOT NULL,
  `cash_credit_cheque_no` int(11) DEFAULT NULL,
  `op` decimal(11,2) NOT NULL,
  `rm` decimal(10,2) DEFAULT NULL,
  `remarks` varchar(250) NOT NULL,
  `profit` decimal(10,2) NOT NULL,
  `bank_id` int(11) NOT NULL,
  `cheque_no` varchar(100) NOT NULL,
  `cheque_date` date NOT NULL,
  `customer_id` int(11) NOT NULL,
  `xo` varchar(50) NOT NULL,
  `no_of_tickets` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=415 DEFAULT CHARSET=latin1;

INSERT INTO receipts VALUES("332","142898","C9NJGT","2012-07-03","2012-07-03","0000-00-00 00:00:00","Mr.","AHMED HOSSAIN","C9NJGT","28","6","7","6","475.00","510.00","","35.00","0","","0000-00-00","0","","1");
INSERT INTO receipts VALUES("333","142899","LHFXOF","2012-07-03","2012-09-20","0000-00-00 00:00:00","Mr.","LOK BAHADUR PULAMIMGAR","2852273404660","1","15","31","5","854.00","864.00","","10.00","0","","0000-00-00","0","","1");
INSERT INTO receipts VALUES("330","142896","CKMDFB","2012-07-03","2012-07-09","0000-00-00 00:00:00","Mr.","ANOWERHOSAIN","2322273404631","11","5","35","2","817.00","830.00","","13.00","0","","0000-00-00","35","","1");
INSERT INTO receipts VALUES("331","142897","NMDUIJ","2012-07-03","2012-07-05","0000-00-00 00:00:00","Mr.","MOHDJAHANGIRALAM","9972273404659","5","4","34","5","1266.00","1270.00","","4.00","3","","0000-00-00","0","","1");
INSERT INTO receipts VALUES("328","142894","aagrgu","2012-07-03","2012-07-06","0000-00-00 00:00:00","Mr.","HELALUDDIN","5842300360255","5","19","12","2","1056.00","1070.00","","14.00","0","","0000-00-00","12","","1");
INSERT INTO receipts VALUES("329","142895","HABIBUR","2012-07-03","2012-07-03","0000-00-00 00:00:00","Mr.","HABIBUR","5842300358283","5","19","19","5","1056.00","1080.00","","24.00","3","","0000-00-00","19","","1");
INSERT INTO receipts VALUES("326","142892","AAGPUV","2012-07-03","2012-07-03","0000-00-00 00:00:00","Mr.","MEGAN","5842300358186","5","19","13","2","1056.00","1070.00","","14.00","0","","0000-00-00","13","","1");
INSERT INTO receipts VALUES("327","142893","AYJ1WD","2012-07-03","2012-07-03","2012-08-23 12:00:00","Mr.","ZAW MYO HLAING","AYJ1WD","27","6","7","5","805.00","835.00","","30.00","1","","2012-07-03","0","","1");
INSERT INTO receipts VALUES("325","142891","MLQBOS","2012-07-03","2012-07-10","0000-00-00 00:00:00","Mr.","IBRAHIM/MR","2322273404656","12","5","2","2","1428.00","1433.00","","5.00","0","","0000-00-00","2","","1");
INSERT INTO receipts VALUES("324","142890","OPTITQ","2012-07-03","2012-07-08","0000-00-00 00:00:00","Mr.","ALAMMIAH/MR","2322273404667","11","5","11","2","576.00","590.00","","14.00","0","","0000-00-00","11","","1");
INSERT INTO receipts VALUES("322","142888","JQRSWL","2012-07-03","2012-07-04","2012-07-06 12:00:00","Mr.","SYED AZHER ABBAS X 4","2322273404646/47/48/49","21","5","21","2","2108.00","2108.00","","0.00","0","","0000-00-00","21","","4");
INSERT INTO receipts VALUES("323","142889","JSTJHG","2012-07-03","2012-08-08","0000-00-00 00:00:00","Mr.","MDSIDDIKURRAHMAN","2322273404657","10","5","17","2","1428.00","1460.00","","32.00","0","","0000-00-00","17","","1");
INSERT INTO receipts VALUES("321","142887","GKBIVW","2012-07-03","2012-07-05","0000-00-00 00:00:00","Mr.","ARIFULISLAM","9972273404655","11","4","7","1","563.00","580.00","","17.00","0","","0000-00-00","0","","1");
INSERT INTO receipts VALUES("318","142884","AAGRJE","2012-07-03","2012-07-06","0000-00-00 00:00:00","Mr.","MD MORAD SHEIKH","5842300360362","5","19","7","1","1058.00","1080.00","","22.00","0","","0000-00-00","0","","1");
INSERT INTO receipts VALUES("319","142885","DSOYXV","2012-07-03","2012-07-05","0000-00-00 00:00:00","Mr.","KHOKON SARKER X 4","9972273404650/ 51/ 52/ 53","5","4","7","1","3792.00","3860.00","2 ADT 1 CHDL 1 INFT","68.00","0","","0000-00-00","0","","4");
INSERT INTO receipts VALUES("320","142886","FEXGAM","2012-07-03","2012-07-11","0000-00-00 00:00:00","Mr.","MOJIBURRAHMAN","9972273404654","5","4","7","1","1266.00","1280.00","","14.00","0","","0000-00-00","0","","1");
INSERT INTO receipts VALUES("317","142883","OJWZWC","2012-07-03","2012-07-03","0000-00-00 00:00:00","Mr.","BOKUL","9972273404639","11","4","4","2","563.00","580.00","","17.00","0","","0000-00-00","4","1004","1");
INSERT INTO receipts VALUES("316","142882","GKBPOR","2012-07-03","2012-07-03","0000-00-00 00:00:00","Mr.","NEZAMUDDIN","9972273404644","11","4","34","5","563.00","570.00","","7.00","3","","0000-00-00","0","","1");
INSERT INTO receipts VALUES("315","142881","MHRICI","2012-07-03","2012-08-08","0000-00-00 00:00:00","Mr.","ROBIL","9972273404643","5","4","34","5","1266.00","1280.00","","14.00","3","","0000-00-00","0","","1");
INSERT INTO receipts VALUES("314","142880","ENEOEI","2012-07-03","2012-07-03","0000-00-00 00:00:00","Mr.","SABUJ ALI","2322273454640","10","5","7","5","1428.00","1470.00","BANK I CIMB ON 30JUL RM500 AND ON 03JUL RM970","42.00","2","","0000-00-00","0","","1");
INSERT INTO receipts VALUES("313","142879","OJMERM","2012-07-03","2012-07-08","2013-01-10 12:00:00","Mr.","MOHDJAFOR","9972273404641","20","4","7","1","1360.00","1380.00","","20.00","0","","0000-00-00","0","","1");
INSERT INTO receipts VALUES("312","142878","OXFLPV","2012-07-03","2012-07-06","0000-00-00 00:00:00","Mr.","SHAHIDULLAH","9972273404642","11","4","7","1","563.00","580.00","","17.00","0","","0000-00-00","0","","1");
INSERT INTO receipts VALUES("311","142877","OXFLPV","2012-07-03","2012-07-06","0000-00-00 00:00:00","Mr.","SHAHIDULLAH","9972273404642","11","4","7","1","563.00","580.00","","17.00","0","","0000-00-00","0","","1");
INSERT INTO receipts VALUES("310","142876","OXFLPV","2012-07-03","2012-07-06","0000-00-00 00:00:00","Mr.","SHAHIDULLAH","9972273404642","11","4","7","1","563.00","580.00","","17.00","0","","0000-00-00","0","","1");
INSERT INTO receipts VALUES("309","142875","DGKIQP","2012-07-03","2012-08-08","0000-00-00 00:00:00","Mr.","KHORSHED","9972273404638","5","4","7","1","1266.00","1280.00","","14.00","0","","0000-00-00","0","","1");
INSERT INTO receipts VALUES("308","142874","AADRGK","2012-07-03","2012-07-03","0000-00-00 00:00:00","Mr.","SERAJUL ISLAM","5842300360155","5","19","34","5","1058.00","1080.00","","22.00","1","","0000-00-00","0","","1");
INSERT INTO receipts VALUES("307","142873","HGIQPR","2012-07-03","2012-07-04","0000-00-00 00:00:00","Mr.","ABULKALAM/","9972273404637","5","4","7","1","1266.00","1280.00","","14.00","0","","0000-00-00","0","","1");
INSERT INTO receipts VALUES("306","142872","DECLHG","2012-07-03","2012-07-08","0000-00-00 00:00:00","Mr.","MDZAKIR","9972273404636","5","4","7","1","1266.00","1280.00","","14.00","0","","0000-00-00","0","","1");
INSERT INTO receipts VALUES("305","142871","OEOICC","2012-07-03","2012-08-05","0000-00-00 00:00:00","Mr.","(1) KADIR MIAH (2) ABDULALIM","9972273404634/35","5","4","7","1","2532.00","2560.00","","28.00","0","","0000-00-00","0","","2");
INSERT INTO receipts VALUES("304","142870","OEHNSZ","2012-07-03","2012-07-03","0000-00-00 00:00:00","Mr.","1. MDARIFUL. 2. ALI HOSSAIN","9972273404632/ 33","5","4","7","1","2532.00","2560.00","","28.00","0","","0000-00-00","0","","2");
INSERT INTO receipts VALUES("303","142869","HDGRSO","2012-07-03","2012-07-05","2012-07-18 12:00:00","Mr.","MDBAKIBILLAHBULBUL","9972055444073","5","4","7","1","1266.00","1280.00","","14.00","0","","0000-00-00","0","","1");
INSERT INTO receipts VALUES("302","142868","NROKEB","2012-07-03","2012-07-06","0000-00-00 00:00:00","Mr.","ABUL KALAM AZAD","9972080686311","5","4","7","1","1266.00","1280.00","","14.00","0","","0000-00-00","0","","1");
INSERT INTO receipts VALUES("301","142867","NHRCHP","2012-07-03","2012-07-11","0000-00-00 00:00:00","Mr.","1. MDJAMIR 2. RIPON","9972273404626/ 27","5","4","1","2","2532.00","2542.00","","10.00","0","","0000-00-00","0","1275","2");
INSERT INTO receipts VALUES("300","142866","LPGYEP","2012-07-03","2012-07-03","0000-00-00 00:00:00","Mr.","MONIRHOSSAIN","9972273404628","6","4","7","5","923.00","950.00","","27.00","1","","0000-00-00","0","","1");
INSERT INTO receipts VALUES("299","142865","OYLKDR/ MYRPIE","2012-07-03","2012-07-25","0000-00-00 00:00:00","Mr.","1.SHAHID 2.MOBARUK 3.ROTON 4. FARUK","9972273404618/ 19/ 20/ 21","5","4","4","2","5064.00","5120.00","","56.00","0","","0000-00-00","4","1003","4");
INSERT INTO receipts VALUES("298","142864","GXQVMI","2012-07-03","2012-07-03","0000-00-00 00:00:00","Mr.","1. KUDDUS 2. MOHD NAZRUL","9972273404624/ 25","5","4","7","1","2532.00","2560.00","","28.00","0","","0000-00-00","0","","2");
INSERT INTO receipts VALUES("297","142863","OAVFZI","2012-07-03","2012-07-11","0000-00-00 00:00:00","Mr.","MD ABU MIAH","9972273404623","5","4","7","1","1266.00","1280.00","","14.00","0","","0000-00-00","0","","1");
INSERT INTO receipts VALUES("296","142862","NGOLOD","2012-07-03","2012-07-06","0000-00-00 00:00:00","Mr.","MDSHAHIN","9972273404622","11","4","7","1","563.00","580.00","","17.00","0","","0000-00-00","0","","1");
INSERT INTO receipts VALUES("295","142861","AAGR64","2012-07-03","2012-07-06","0000-00-00 00:00:00","Mr.","MDAHUZSANHABIBLITON","5842300359899","25","19","7","1","120.00","130.00","","10.00","0","","0000-00-00","0","","1");
INSERT INTO receipts VALUES("344","142910","BQVCWK","2012-07-04","2012-07-06","0000-00-00 00:00:00","Mr.","ARIFULHAQUE","9972273404673","11","4","7","1","563.00","580.00","","17.00","0","","0000-00-00","0","","1");
INSERT INTO receipts VALUES("294","142860","HXGAWN","2012-07-03","2012-07-06","0000-00-00 00:00:00","Mr.","1. MD KAMAL 2. SHAHAHAN","9972273404610/ 11","5","4","4","2","2532.00","2560.00","","28.00","0","","0000-00-00","1","1002","2");
INSERT INTO receipts VALUES("293","142859","NGEPSG/ CDPATP/  CEWISS","2012-07-03","2012-07-03","0000-00-00 00:00:00","Mr.","1. MONIR. 2. MD MIJANUR 4. ASAD","9972273404614/ 15 /17/ ","5","4","33","1","3798.00","3810.00","","12.00","0","","0000-00-00","0","","3");
INSERT INTO receipts VALUES("292","142858","HXOORZ","2012-07-03","2012-07-06","2013-06-06 12:00:00","Mr.","MD AHUASAN HABIB LITON","9972273404613","5","4","7","1","1266.00","1280.00","","14.00","0","","0000-00-00","0","","1");
INSERT INTO receipts VALUES("291","142857","HXOORZ","2012-07-03","2012-07-06","2013-06-06 12:00:00","Mr.","MD TOFZZAL HOSSEN","9972273404612","5","4","7","1","1266.00","1280.00","","14.00","0","","0000-00-00","0","","1");
INSERT INTO receipts VALUES("283","142849","CWIXKH","2012-07-03","2012-07-03","0000-00-00 00:00:00","Mr.","MDNASIRKOBIRAJ","9972273404605","5","4","4","2","1266.00","1280.00","","14.00","0","","0000-00-00","4","","1");
INSERT INTO receipts VALUES("290","142856","HWYMSD","2012-07-03","2012-07-04","0000-00-00 00:00:00","Mr.","MD BBLU SHEIKH","9972273404609","5","4","7","5","1266.00","1300.00","","34.00","2","","0000-00-00","0","","1");
INSERT INTO receipts VALUES("282","142848","NYKJRK","2012-07-03","2012-07-03","0000-00-00 00:00:00","Mr.","ALIM/","9972273404604","5","4","13","2","1266.00","1280.00","","14.00","0","","0000-00-00","13","","1");
INSERT INTO receipts VALUES("289","142855","LPJILR","2012-07-03","2012-08-05","0000-00-00 00:00:00","Mr.","HAFIZIQBAL","9972273404608","5","4","7","1","1266.00","1280.00","","14.00","0","","0000-00-00","0","","1");
INSERT INTO receipts VALUES("288","142854","CKNSYM","2012-07-03","2012-07-06","0000-00-00 00:00:00","Mr.","PORIMALSARKER","9972273404600","5","4","1","2","1266.00","1271.00","","5.00","0","","0000-00-00","1","1274","1");
INSERT INTO receipts VALUES("284","142850","CNKFTB","2012-07-03","2012-07-06","0000-00-00 00:00:00","Mr.","JYBADULLA","9972273404602","5","4","7","1","1266.00","1280.00","CONTRA REF NO 142840","14.00","0","","0000-00-00","0","142840","1");
INSERT INTO receipts VALUES("285","142851","GRCEJB","2012-07-03","2012-07-08","0000-00-00 00:00:00","Mr.","MDKOFILUDDIN","9972273404606","5","4","7","1","1266.00","1270.00","","4.00","0","","0000-00-00","0","","1");
INSERT INTO receipts VALUES("286","142852","LONEQI","2012-07-03","2012-07-04","0000-00-00 00:00:00","Mr.","SURUT","9972273404607","5","4","13","2","1266.00","1275.00","","9.00","0","","0000-00-00","13","","1");
INSERT INTO receipts VALUES("275","142841","NOHYXK","2012-07-03","2012-07-08","0000-00-00 00:00:00","Mr.","MDJAKIRHOSEN","9972273404603","5","4","7","1","1266.00","1280.00","","14.00","0","","0000-00-00","0","","1");
INSERT INTO receipts VALUES("287","142853","OGPQLN","2012-07-03","2012-07-04","0000-00-00 00:00:00","Mr.","HUMAYUN KABIR","9972273404598","5","4","7","5","1266.00","1280.00","","14.00","1","11111","2012-07-03","0","","1");
INSERT INTO receipts VALUES("273","142839","CNTLTA  ","2012-07-03","2012-08-12","0000-00-00 00:00:00","Mr.","MOHAMMEDIDRISHALI","9972273404601","5","4","7","1","1266.00","1280.00","","14.00","0","","0000-00-00","0","","1");
INSERT INTO receipts VALUES("272","142838","AAGQZK","2012-07-03","2012-07-05","0000-00-00 00:00:00","Mr.","ABDUL AWAL","5842300359695","5","19","7","1","1056.00","1080.00","","24.00","0","","0000-00-00","0","","1");
INSERT INTO receipts VALUES("270","142836","ISDFGC/KMISEQ","2012-07-02","2012-07-02","0000-00-00 00:00:00","Mr.","(1) KHALILUR RAHAMAN (2) AMINUL HOQUE","2322273404596/97","10","5","17","2","2856.00","2900.00","","44.00","0","","0000-00-00","17","","2");
INSERT INTO receipts VALUES("269","142835","EDFRBH","2012-07-02","2012-07-02","0000-00-00 00:00:00","Mr.","MDMUSTAFLZURRAH","2322273404595","18","5","17","2","625.00","650.00","","25.00","0","","0000-00-00","17","","1");
INSERT INTO receipts VALUES("271","142837","LAURCW","2012-07-03","2012-08-10","0000-00-00 00:00:00","Mr.","AYNALMOLLIK","9972273404599","5","4","7","1","1266.00","1280.00","","14.00","0","","0000-00-00","0","","1");
INSERT INTO receipts VALUES("268","142834","KFLGQH","2012-07-02","2012-07-04","0000-00-00 00:00:00","Mr.","AMZADHOSSAIN","9972273404594","5","4","1","2","1266.00","1280.00","","14.00","0","","0000-00-00","1","1273","1");
INSERT INTO receipts VALUES("265","142831","LTWFQO","2012-07-02","2012-07-05","0000-00-00 00:00:00","Mr.","AMZADHOSSAIN","9972273404588","5","4","16","2","1266.00","1280.00","","14.00","0","","0000-00-00","16","","1");
INSERT INTO receipts VALUES("264","142830","LSZDVD","2012-07-02","2012-07-02","0000-00-00 00:00:00","Mr.","1) MAJUMDER 2) MOHANALI","9972273404586/ 87","5","4","7","5","2532.00","2550.00","","18.00","1","","0000-00-00","0","","2");
INSERT INTO receipts VALUES("266","142832","PTK","2012-07-02","2012-07-18","0000-00-00 00:00:00","Mr.","SHAHJAHAN","9972273404589","5","4","1","2","1266.00","1271.00","","5.00","0","","0000-00-00","1","1271","1");
INSERT INTO receipts VALUES("267","142833","PUHEVJ","2012-07-02","2012-07-04","0000-00-00 00:00:00","Mr.","ADOMX4","9972273404590/ 91/ 92/ 93","5","4","1","2","5064.00","5084.00","","20.00","0","","0000-00-00","1","1272","4");
INSERT INTO receipts VALUES("262","142828","LSZDVD","2012-07-02","2012-07-20","0000-00-00 00:00:00","Mr.","1) MOHAMMADANWARHOSAIN 2) MASUDALAM","9972273404584/ 85","5","4","7","1","2532.00","2570.00","","38.00","0","","0000-00-00","0","","2");
INSERT INTO receipts VALUES("261","142827","OWCISH","2012-07-02","2012-07-02","0000-00-00 00:00:00","Mr.","MDNURHOSSAIN","9972273404583","5","4","7","1","1266.00","1280.00","","14.00","0","","0000-00-00","0","","1");
INSERT INTO receipts VALUES("260","142826","KPWNXO","2012-07-02","2012-07-08","0000-00-00 00:00:00","Mr.","SAMSUJJOHA X 4","2322273404579/80/81/82","10","5","17","2","5712.00","5800.00","","88.00","0","","0000-00-00","17","","4");
INSERT INTO receipts VALUES("259","142825","AAGQJY","2012-07-02","2012-07-05","0000-00-00 00:00:00","Mr.","MOYLABAXOMORAL","5842300359088","5","19","30","2","1058.00","1080.00","","22.00","0","","0000-00-00","30","","1");
INSERT INTO receipts VALUES("258","142824","CKRCNB","2012-07-02","2012-07-09","0000-00-00 00:00:00","Mr.","MD NASIRULLAH MANIK","9972273404578","5","4","11","2","1266.00","1275.00","","9.00","0","","0000-00-00","11","","1");
INSERT INTO receipts VALUES("257","142823","OQJVKK","2012-07-02","2012-07-16","0000-00-00 00:00:00","Mr.","MD MUSTAK HASSAN","9972273404577","5","4","31","5","1266.00","1276.00","","10.00","1","","0000-00-00","0","","1");
INSERT INTO receipts VALUES("256","142822","AAGQGL","2012-07-02","2012-07-17","0000-00-00 00:00:00","Mr.","SHARIKUL","5842300358973","5","19","7","1","1058.00","1080.00","","22.00","0","","0000-00-00","0","","1");
INSERT INTO receipts VALUES("255","142821","ICZWCR","2012-07-02","2012-07-08","0000-00-00 00:00:00","Mr.","MUSTOFA MIA","9972273404576","5","4","7","1","1266.00","1280.00","","14.00","0","","0000-00-00","0","","1");
INSERT INTO receipts VALUES("254","142820","KLSWLT","2012-07-02","2012-07-03","0000-00-00 00:00:00","Mr.","MOSLEM UDDIN","9972273404575","11","4","1","2","563.00","568.00","","5.00","0","","0000-00-00","1","1270","1");
INSERT INTO receipts VALUES("253","142819","KRAHDW","2012-07-02","2012-07-03","0000-00-00 00:00:00","Mr.","SHARIF AHMED","9972273404574","6","4","7","5","923.00","1030.00","","107.00","1","","0000-00-00","0","","1");
INSERT INTO receipts VALUES("252","142818","CDXMBW","2012-07-02","2012-07-05","0000-00-00 00:00:00","Mr.","PALU","9972273404571","5","4","13","2","1266.00","1275.00","","9.00","0","","0000-00-00","13","","1");
INSERT INTO receipts VALUES("251","142817","KVJJZX/HNTKWW","2012-07-02","2012-07-02","0000-00-00 00:00:00","Mr.","1) MUIFN SHEIKH (2) BAKKAR FAKIR","9972273404569/70","5","4","7","1","2532.00","2550.00","","18.00","0","","0000-00-00","0","","2");
INSERT INTO receipts VALUES("250","142816","KVAKDP","2012-07-02","2012-07-06","0000-00-00 00:00:00","Mr.","MD SHAFIQUL ISLAM","9972273404568","5","4","7","1","1266.00","1280.00","","14.00","0","","0000-00-00","0","","1");
INSERT INTO receipts VALUES("249","142815","AAGQ7N","2012-07-02","2012-07-04","0000-00-00 00:00:00","Mr.","EAKUB","5842300358657","5","19","7","5","1058.00","1070.00","","12.00","2","","0000-00-00","0","","1");
INSERT INTO receipts VALUES("248","142814","CDJREV","2012-07-02","2012-07-23","0000-00-00 00:00:00","Mr.","MD NASIR UDDIN","9972273404573","5","4","1","2","1266.00","1271.00","","5.00","0","","0000-00-00","1","1269","1");
INSERT INTO receipts VALUES("247","142813","MJLDVP","2012-07-02","2012-07-03","0000-00-00 00:00:00","Mr.","AKTER KHAN","9972273404566","5","4","4","2","1266.00","1280.00","","14.00","0","","0000-00-00","4","1000","1");
INSERT INTO receipts VALUES("246","142812","KZJZAO","2012-07-02","2012-07-09","0000-00-00 00:00:00","Mr.","RAMANAN JAYAK KISHNAN","9972273404564","24","4","1","2","1410.00","1415.00","","5.00","0","","0000-00-00","1","1266","1");
INSERT INTO receipts VALUES("245","142811","KDVPQB","2012-07-02","2012-07-10","0000-00-00 00:00:00","Mr.","AZIBOR","9972273404567","5","4","7","1","1266.00","1280.00","","14.00","0","","0000-00-00","0","","1");
INSERT INTO receipts VALUES("237","142803","NARKLP","2012-07-02","2012-07-06","0000-00-00 00:00:00","Mr.","MD ABUL KALAM AZAD","2322273404555","5","5","29","1","1330.00","1350.00","","20.00","0","","0000-00-00","0","","1");
INSERT INTO receipts VALUES("236","142802","NIPYVU","2012-07-02","2012-07-02","0000-00-00 00:00:00","Mr.","SHAMLAT","9972273404572","5","4","1","2","1266.00","1271.00","","5.00","0","","0000-00-00","1","1268","1");
INSERT INTO receipts VALUES("235","142801","ILWNYW","2012-07-02","2012-07-28","0000-00-00 00:00:00","Mr.","SHREE RAMOKHEDA","2852273404547","1","15","7","5","852.00","950.00","BANK IN ON 28JUN12","98.00","2","","0000-00-00","0","","1");
INSERT INTO receipts VALUES("234","142800","JESBDR","2012-07-02","2012-07-02","0000-00-00 00:00:00","Mr.","(1) ALAM (2) MD MANIK","9972273404553/54","5","4","7","1","2532.00","2550.00","","18.00","0","","0000-00-00","0","","2");
INSERT INTO receipts VALUES("233","142799","CYYDNR","2012-07-02","2012-07-13","0000-00-00 00:00:00","Mr.","BABUL","9972273404550","11","4","29","1","563.00","580.00","","17.00","0","","0000-00-00","0","","1");
INSERT INTO receipts VALUES("232","142798","CQZOGL","2012-07-02","2012-07-10","0000-00-00 00:00:00","Mr.","MD HARUNORRASHID","9972273404549","5","4","29","1","1266.00","1280.00","","14.00","0","","0000-00-00","0","","1");
INSERT INTO receipts VALUES("231","142797","NXFAEN","2012-07-02","2012-07-02","0000-00-00 00:00:00","Mr.","NANIU","9972273404551","5","4","29","1","1266.00","1280.00","","14.00","0","","0000-00-00","0","","1");
INSERT INTO receipts VALUES("230","142796","OVXVDH","2012-07-02","2012-07-18","0000-00-00 00:00:00","Mr.","BILLAL HOSSAN","2322273404552","5","5","29","1","1830.00","1850.00","","20.00","0","","0000-00-00","0","","1");
INSERT INTO receipts VALUES("229","142795","CXLCEA","2012-07-02","2012-07-06","0000-00-00 00:00:00","Mr.","SHAFIIK","9972273404548","5","4","7","1","1266.00","1280.00","","14.00","0","","0000-00-00","0","","1");
INSERT INTO receipts VALUES("228","142794","DUBCYF","2012-07-02","2012-07-02","0000-00-00 00:00:00","Mr.","SULTAN AHMED","9972273404546","11","4","7","1","563.00","580.00","","17.00","0","","0000-00-00","0","","1");
INSERT INTO receipts VALUES("227","142793","AAGPRW","2012-07-02","2012-07-30","0000-00-00 00:00:00","Mr.","CHAN MIHA","5842300358113","5","19","22","5","500.00","500.00","BANK IN ON 01JUL12","0.00","1","","0000-00-00","0","","1");
INSERT INTO receipts VALUES("226","142792","KRIRYL","2012-07-02","2012-07-10","0000-00-00 00:00:00","Mr.","JASSEMUDDIN","2322273404540","12","5","28","2","1428.00","1480.00","","52.00","0","","0000-00-00","28","","1");
INSERT INTO receipts VALUES("225","142791","BJNQYG","2012-07-02","2012-07-02","0000-00-00 00:00:00","Mr.","NIKHIL RAJ BONGSHI","2322273404539","12","5","11","2","1428.00","1450.00","","22.00","0","","0000-00-00","11","","1");
INSERT INTO receipts VALUES("224","142790","NMBOOZ","2012-07-02","2012-07-10","0000-00-00 00:00:00","Mr."," ANAMUL HAQUE","2322273404535","12","5","2","2","1428.00","1433.00","","5.00","0","","0000-00-00","2","","1");
INSERT INTO receipts VALUES("223","142789","ORKXNB","2012-07-02","2012-07-06","0000-00-00 00:00:00","Mr.","MILON HOSSAIN","9972273404545","11","4","7","1","563.00","570.00","","7.00","0","","0000-00-00","0","","1");
INSERT INTO receipts VALUES("222","142788","AAGPYQ","2012-07-02","2012-07-06","0000-00-00 00:00:00","Mr.","MIZANURRAHMAN","5842300358184","11","19","7","5","502.00","540.00","","38.00","1","","0000-00-00","0","","1");
INSERT INTO receipts VALUES("221","142787","KETMMG","2012-07-02","2012-07-09","0000-00-00 00:00:00","Mr.","ANU MIAH","9972273404544","6","4","1","2","923.00","928.00","","5.00","0","","0000-00-00","1","1264","1");
INSERT INTO receipts VALUES("220","142786","KRNSNM","2012-07-02","2012-07-04","0000-00-00 00:00:00","Mr.","DOBIRUDDIN","9972273404542","11","4","1","2","563.00","568.00","","5.00","0","","0000-00-00","1","1265","1");
INSERT INTO receipts VALUES("219","142785","JPZNRG","2012-07-02","2012-07-04","0000-00-00 00:00:00","Mr.","MOHD SHAHJALAL","9972273404541","5","4","7","1","1266.00","1280.00","","14.00","0","","0000-00-00","0","","1");
INSERT INTO receipts VALUES("218","142784","MHTWJW","2012-07-02","2012-07-07","0000-00-00 00:00:00","Mr.","SALINA MARZUKI","2852273404533","1","15","27","2","949.00","990.00","","41.00","0","","0000-00-00","27","","1");
INSERT INTO receipts VALUES("217","142783","IWPPIR","2012-07-02","2012-07-02","0000-00-00 00:00:00","Mr.","(1) PUSPA LAL (2) RAJ KUMAR THAPA (3) TIKHE TAMANG","9972273404536/37/38","8","4","27","2","2610.00","2700.00","","90.00","0","","0000-00-00","27","","3");
INSERT INTO receipts VALUES("216","142782","BBPSGX","2012-07-02","2012-07-04","0000-00-00 00:00:00","Mr.","KHALILUR RAHMAN","9972273404534","11","4","27","2","563.00","580.00","","17.00","0","","0000-00-00","26","","1");
INSERT INTO receipts VALUES("212","142778","BLXTNA","2012-07-02","2012-07-25","0000-00-00 00:00:00","Mr.","KAYEM HOSSAIN","9972273404529","5","4","1","2","1266.00","1271.00","","5.00","0","","0000-00-00","1","1263","1");
INSERT INTO receipts VALUES("213","142779","JRYEF4","2012-07-02","2012-07-06","0000-00-00 00:00:00","Mr.","MD SAIFUL ISLAM","9972273404530","5","4","7","1","1266.00","1280.00","","14.00","0","","0000-00-00","0","","1");
INSERT INTO receipts VALUES("214","142780","JJZFCY","2012-07-02","2012-08-17","0000-00-00 00:00:00","Mr.","MOSTAFA FARUK","9972273404531","5","4","7","1","1266.00","1280.00","","14.00","0","","0000-00-00","1","","1");
INSERT INTO receipts VALUES("215","142781","MOYVJA","2012-07-02","2012-07-12","0000-00-00 00:00:00","Mr.","MOHAMMAD EDDISS ALI","9972273404532","5","4","4","2","1266.00","1280.00","","14.00","0","","0000-00-00","4","999","1");
INSERT INTO receipts VALUES("244","142810","ISKZQF","2012-07-02","2012-07-06","0000-00-00 00:00:00","Mr.","MD YONUSALI","9972273404565","5","4","7","1","1266.00","1280.00","","14.00","0","","0000-00-00","0","","1");
INSERT INTO receipts VALUES("243","142809","CHWOIR","2012-07-02","2012-07-04","0000-00-00 00:00:00","Mr.","MOHENMIAX5","9972273404559/60/61/62/63","11","4","26","2","2815.00","2850.00","","35.00","0","","0000-00-00","26","","5");
INSERT INTO receipts VALUES("242","142808","OAUWDO","2012-07-02","2012-07-11","0000-00-00 00:00:00","Mr.","MD ELIAS","9972273404557","5","4","1","2","1266.00","1271.00","","5.00","0","","0000-00-00","1","1267","1");
INSERT INTO receipts VALUES("241","142807","AAGQ5Q","2012-07-02","2012-07-20","0000-00-00 00:00:00","Ms.","RANJUMAHARJAN","5842300358574","23","19","7","1","1250.00","1310.00","","60.00","0","","0000-00-00","0","","1");
INSERT INTO receipts VALUES("240","142806","AAGQ4I","2012-07-02","2012-07-09","0000-00-00 00:00:00","Mr.","KAMAN SINGHHWTRI","5842300358546","8","19","7","1","746.00","780.00","","34.00","0","","0000-00-00","0","","1");
INSERT INTO receipts VALUES("238","142804","OXFIPV","2012-07-02","2012-07-12","0000-00-00 00:00:00","Mr.","SHAHIDULLA","997","11","4","22","1","300.00","300.00","REFUNDED ON 03JUL","0.00","0","","0000-00-00","0","","0");
INSERT INTO receipts VALUES("239","142805","DBWYCU","2012-07-02","2012-07-15","0000-00-00 00:00:00","Mr.","AMDADUL HOQUE","9972273404556","5","4","16","2","1266.00","1280.00","","14.00","0","","0000-00-00","16","","1");
INSERT INTO receipts VALUES("334","142900","AAGRNA","2012-07-03","2012-07-03","0000-00-00 00:00:00","Mr.","1. BILLAL 2. ZIAUL HOQUE","5842300360510/ 11","5","19","7","1","2112.00","2160.00","","48.00","0","","0000-00-00","0","","2");
INSERT INTO receipts VALUES("335","142901","IPDRGB","2012-07-03","2012-08-17","0000-00-00 00:00:00","Mr.","MD SHIRAJUL ISLAM","9972080611180","5","4","7","1","1266.00","1280.00","","14.00","0","","0000-00-00","0","","1");
INSERT INTO receipts VALUES("336","142902"," GPXINP ","2012-07-03","2012-07-05","0000-00-00 00:00:00","MRS","ANWARABEGUM  X2","9972273404662","5","4","37","2","2532.00","2560.00","","28.00","0","","0000-00-00","37","","2");
INSERT INTO receipts VALUES("337","142903","AAGROR","2012-07-03","2012-07-05","0000-00-00 00:00:00","MRS","ANWARABEGUM  X2","584 2300360596/ 97","29","19","37","2","274.00","300.00","","26.00","0","","0000-00-00","37","","2");
INSERT INTO receipts VALUES("338","142904","HRPSSW ","2012-07-03","2012-07-23","0000-00-00 00:00:00","Mr.","ISHAK","997","5","4","22","1","300.00","300.00","DEPOSIT","0.00","0","","0000-00-00","0","","0");
INSERT INTO receipts VALUES("339","142905","OGDWKB ","2012-07-03","2012-07-06","0000-00-00 00:00:00","Mr.","1) IQBAL 2)BOSER 3) GOLBAR","9972055444078/ 79/ 80","5","4","7","1","3705.00","3840.00","","135.00","0","","0000-00-00","0","","3");
INSERT INTO receipts VALUES("340","142906","EWVSBJ","2012-07-03","2012-07-04","0000-00-00 00:00:00","Mr.","EMRANKHAN","9972273404664","5","4","13","2","1266.00","1275.00","","9.00","0","","0000-00-00","0","","1");
INSERT INTO receipts VALUES("341","142907","HVWZXY  ","2012-07-03","2012-08-19","0000-00-00 00:00:00","Mr.","ANOWAR","997","5","4","22","1","500.00","500.00","DEP TKT ISUED","0.00","0","","0000-00-00","0","","0");
INSERT INTO receipts VALUES("342","142908","DDKBYU","2012-07-03","2012-08-06","0000-00-00 00:00:00","Mr.","MYNUL HAQUE","2322273454665","12","5","11","2","1428.00","1450.00","","22.00","0","","0000-00-00","11","","1");
INSERT INTO receipts VALUES("343","142909","IFOPNG","2012-07-03","2012-07-03","0000-00-00 00:00:00","Mr.","NURHUSSAIN","9972273404668","5","4","15","2","1266.00","1300.00","","34.00","0","","0000-00-00","15","","1");
INSERT INTO receipts VALUES("345","142911","IUKKAI","2012-07-04","2012-07-11","0000-00-00 00:00:00","Mr.","TIKARAMBK","2852273404674","1","15","7","5","854.00","900.00","","46.00","2","","0000-00-00","0","","1");
INSERT INTO receipts VALUES("346","142912","AAGS7A","2012-07-04","2012-07-04","0000-00-00 00:00:00","Mr.","AMINUL ISLAM","5842300361186","5","19","7","5","1170.00","1220.00","CASH BANK IN 3/07/2012","50.00","1","","0000-00-00","0","","1");
INSERT INTO receipts VALUES("347","142913","AAGS7N ","2012-07-04","2012-07-07","0000-00-00 00:00:00","Mr.","MDHANIF   ","584 2300361197","5","19","11","2","1056.00","1080.00","","24.00","0","","0000-00-00","11","","1");
INSERT INTO receipts VALUES("348","142914","AAGS72","2012-07-04","2012-07-04","0000-00-00 00:00:00","Mr.","SHAHIN MIAH","584 2300361196","5","19","11","2","1056.00","1080.00","","24.00","0","","0000-00-00","11","","1");
INSERT INTO receipts VALUES("349","142915","BWTTPW","2012-07-04","2012-07-06","2012-08-30 12:00:00","Mr.","MOH KAUSAR HOSSAIN","9972273404676","5","4","7","1","1266.00","1280.00","","14.00","0","","0000-00-00","0","","1");
INSERT INTO receipts VALUES("350","142916","LYBMOW","2012-07-04","2012-07-20","0000-00-00 00:00:00","Mr.","MDKHORSHEDALAM","2322273404678","11","5","7","1","574.00","600.00","","26.00","0","","0000-00-00","0","","1");
INSERT INTO receipts VALUES("351","142917","DXBOVA","2012-07-04","2012-07-10","0000-00-00 00:00:00","Mr.","MAMUN MOLLA","9972273404680","5","4","7","1","1266.00","1280.00","","14.00","0","","0000-00-00","0","","1");
INSERT INTO receipts VALUES("352","142918","DYJHLC","2012-07-04","2012-07-04","0000-00-00 00:00:00","Mr.","MDSIDDEK","9972273404681","5","4","7","1","1264.00","1280.00","","16.00","0","","0000-00-00","0","","1");
INSERT INTO receipts VALUES("353","142919","LULTVK/ DTVBLG","2012-07-04","2012-07-14","0000-00-00 00:00:00","Mr.","1) KULDEEPKAUR. 2)PRITAMKAUR","9972273404682/ 83","30","4","7","1","1352.00","1630.00","","278.00","0","","0000-00-00","0","","2");
INSERT INTO receipts VALUES("354","142920","HZYYIP","2012-07-04","2012-07-04","0000-00-00 00:00:00","Mr.","SURUJ","2322273404684","12","5","2","2","1428.00","1433.00","","5.00","0","","0000-00-00","2","","1");
INSERT INTO receipts VALUES("355","142921","NSTYMA","2012-07-04","2012-08-18","0000-00-00 00:00:00","Mr.","MOHDHAJERALI","9972273404687","5","4","7","1","1266.00","1280.00","","14.00","0","","0000-00-00","0","","1");
INSERT INTO receipts VALUES("356","142922","DCAIVB  ","2012-07-04","2012-07-04","0000-00-00 00:00:00","Mr.","MDSAMSUZZOHAMONDOL","997","5","4","22","1","1050.00","1050.00","","0.00","0","","0000-00-00","0","","0");
INSERT INTO receipts VALUES("357","142923","LCDZRE","2012-07-04","2012-07-06","0000-00-00 00:00:00","Mr.","1) ABU KALAM. 2) MOJAMALI","9972273404685/ 86","5","4","7","5","2528.00","2540.00","","12.00","1","","0000-00-00","0","","2");
INSERT INTO receipts VALUES("358","142924","AAGSFA","2012-07-04","2012-07-16","0000-00-00 00:00:00","Mr.","HARUNURRASHID","5842300361440","5","19","40","1","1056.00","1070.00","","14.00","0","","0000-00-00","0","","1");
INSERT INTO receipts VALUES("359","142925","CKZZBC","2012-07-04","2012-08-05","0000-00-00 00:00:00","Mr.","RATANKUMARNATH","9972273404700","5","4","7","1","1266.00","1280.00","","14.00","0","","0000-00-00","0","","1");
INSERT INTO receipts VALUES("360","142926","AAGSG9","2012-07-04","2012-08-05","0000-00-00 00:00:00","Mr.","RATANKUMARNATH","5842300361474","25","19","7","1","91.00","120.00","","29.00","0","","0000-00-00","0","","1");
INSERT INTO receipts VALUES("361","142927","HDNCSJ   ","2012-07-04","2012-07-04","0000-00-00 00:00:00","Mr.","ALAMGIR X 5","9972273404708/ 09/ 10/ 11/ 12","5","4","34","5","6320.00","6380.00","BANK IN AMOUNT 4970 + 1410= RM 6380","60.00","1","","0000-00-00","0","","5");
INSERT INTO receipts VALUES("362","142928","LIUUPQ","2012-07-04","2012-07-18","0000-00-00 00:00:00","Mr.","MDRAFIQULISLAM","9972273404715","5","4","7","1","1264.00","1280.00","","16.00","0","","0000-00-00","0","","1");
INSERT INTO receipts VALUES("363","142929","KYCKOP","2012-07-04","2012-07-04","0000-00-00 00:00:00","Mr.","SHARIF","9972273404716","5","4","1","2","1264.00","1269.00","","5.00","0","","0000-00-00","1","1279","1");
INSERT INTO receipts VALUES("364","142930","GLOJEC / HESDBI","2012-07-04","2012-07-04","0000-00-00 00:00:00","Mr.","(1) MOHD BABLU RAHMAN (2) MASUD","2322273404706/07","11","5","41","1","1630.00","1680.00","","50.00","0","","0000-00-00","40","","2");
INSERT INTO receipts VALUES("365","142931","DIXWTW","2012-07-04","2012-08-16","0000-00-00 00:00:00","Mr.","FARUKHUSSAIN"," 9972273404717 ","5","4","7","1","1264.00","1280.00","","16.00","0","","0000-00-00","0","","1");
INSERT INTO receipts VALUES("366","142932","KVGACL","2012-07-04","2012-07-13","0000-00-00 00:00:00","Mr.","JAMAL SHRIF","9972273404718","5","4","7","1","1264.00","1280.00","","16.00","0","","0000-00-00","0","","1");
INSERT INTO receipts VALUES("367","142933","AAGKSI","2012-07-04","2012-07-04","0000-00-00 00:00:00","Mr.","JAHIR","584230036161","5","19","42","5","1056.00","1080.00","","24.00","1","","0000-00-00","0","","1");
INSERT INTO receipts VALUES("368","142934","HDHWWY","2012-07-04","2012-07-07","0000-00-00 00:00:00","Mr.","MD KAMAL","9972273425006","5","4","7","1","1264.00","1270.00","","6.00","0","","0000-00-00","0","","1");
INSERT INTO receipts VALUES("369","142935","OKXZBX","2012-07-04","2012-07-12","0000-00-00 00:00:00","Mr.","SURAJ GHIMIRE","2852273404724","1","15","7","5","854.00","900.00","\nCHEQUE BANK IN 04/07/12","46.00","1","","0000-00-00","0","","1");
INSERT INTO receipts VALUES("370","142936","BKFFLK","2012-07-04","2012-07-04","0000-00-00 00:00:00","Mr.","MDDULALMIAH","9972273404725","11","4","7","1","562.00","580.00","","18.00","0","","0000-00-00","0","","1");
INSERT INTO receipts VALUES("371","142937","LMCOGM/ KCPTBQ","2012-07-04","2012-07-09","0000-00-00 00:00:00","Mr.","MAMUN X 5","9972273404727/ 30/31/32/33","5","4","7","1","6320.00","6400.00","","80.00","0","","0000-00-00","0","","5");
INSERT INTO receipts VALUES("372","142938","KWKDIQ","2012-07-04","2012-07-04","0000-00-00 00:00:00","Mr.","MDTAUFIQULISLAM","9972273404743","11","4","7","1","563.00","590.00","","27.00","0","","0000-00-00","0","","1");
INSERT INTO receipts VALUES("373","142939","KZCFDN / DIRKIX","2012-07-04","2012-07-10","0000-00-00 00:00:00","Mr.","MD SAHIN X 4","9972273404739/40/41/42","5","4","43","5","5056.00","5075.00","","19.00","2","","0000-00-00","0","","4");
INSERT INTO receipts VALUES("374","142940","KFOJAP","2012-07-04","2012-07-04","0000-00-00 00:00:00","Mr.","MDMOBARAKHOSSAIN","9972273404747","5","4","7","1","1264.00","1280.00","","16.00","0","","0000-00-00","0","","1");
INSERT INTO receipts VALUES("375","142941","BORXAC","2012-07-04","2012-07-06","0000-00-00 00:00:00","Mr.","MDBABULMEAH/","9972273404748","5","4","7","1","1266.00","1280.00","","14.00","0","","0000-00-00","0","","1");
INSERT INTO receipts VALUES("376","142942","LROXLP","2012-07-04","2012-07-04","0000-00-00 00:00:00","Mr.","ABDUL ALIM","9972273404675","5","4","1","2","1264.00","1269.00","DEP BEFORE\n\nREF-142640\nRM 400","5.00","0","","0000-00-00","1","1276","1");
INSERT INTO receipts VALUES("377","142943","LXOCUA","2012-07-04","2012-07-04","0000-00-00 00:00:00","Mr.","BABU HAWLADER","9972273404679","5","4","1","2","1264.00","1269.00","","5.00","0","","0000-00-00","1","1277","1");
INSERT INTO receipts VALUES("378","142944","HCLUUO","2012-07-04","2012-07-04","0000-00-00 00:00:00","Mr.","BADAL SHEIKH","9972273404705","5","4","1","2","1264.00","1269.00","","5.00","0","","0000-00-00","1","1269","1");
INSERT INTO receipts VALUES("379","142945","KVOOFF","2012-07-04","2012-07-04","0000-00-00 00:00:00","Mr.","MD JAKIR HOSSAIN","9972273404721","11","4","1","2","562.00","567.00","","5.00","0","","0000-00-00","0","1280","1");
INSERT INTO receipts VALUES("380","142946","LLLNLD","2012-07-04","2012-07-04","0000-00-00 00:00:00","Mr.","JAYNAL NAZIANUDDIN","9972273404728","5","4","1","2","1264.00","1269.00","","5.00","0","","0000-00-00","1","1281","1");
INSERT INTO receipts VALUES("381","142947","KLKZAK","2012-07-04","2012-07-04","0000-00-00 00:00:00","Mr.","MOHDALIASHRAF","9972273425002","5","4","14","2","1266.00","1280.00","","14.00","0","","0000-00-00","14","","1");
INSERT INTO receipts VALUES("382","142948","MLAQID","2012-07-04","2012-07-08","0000-00-00 00:00:00","Mr.","JULHAS MIAH","9972273425000","11","4","7","5","563.00","600.00","\nCASH TRANSFER MBB ","37.00","1","","0000-00-00","0","","1");
INSERT INTO receipts VALUES("383","142949","BLMOFA","2012-07-04","2012-07-04","0000-00-00 00:00:00","Mr.","MD BACCHOMIAH","9972273404738","5","4","1","2","1264.00","1269.00","","5.00","0","","0000-00-00","1","1282","1");
INSERT INTO receipts VALUES("384","142950","LLWZLL","2012-07-04","2012-07-04","0000-00-00 00:00:00","Mr.","ABUL HASEM","2322273454720","12","5","11","2","1428.00","1450.00","","22.00","0","","0000-00-00","11","","1");
INSERT INTO receipts VALUES("385","142951","MLAQID","2012-07-04","2012-07-06","0000-00-00 00:00:00","Mr.","JULHASMIAH","9972273425000","11","4","44","2","562.00","580.00","","18.00","0","","0000-00-00","44","","1");
INSERT INTO receipts VALUES("386","142952","HJQRXX","2012-07-04","2012-07-04","0000-00-00 00:00:00","Mr.","FORHAD","9972273404723","5","4","13","2","1266.00","1275.00","","9.00","0","","0000-00-00","13","","1");
INSERT INTO receipts VALUES("387","142953","DVDAOC","2012-07-04","2012-07-06","0000-00-00 00:00:00","Mr.","HOSSAINABUL","9972273425001","5","4","44","2","1264.00","1280.00","","16.00","0","","0000-00-00","44","","1");
INSERT INTO receipts VALUES("388","142954","HMHFJI","2012-07-04","2012-07-17","0000-00-00 00:00:00","Mr.","MDJAHANGIRHOSSAIN","9972273404746","11","4","13","2","563.00","580.00","","17.00","0","","0000-00-00","13","","1");
INSERT INTO receipts VALUES("389","142955","GGAFXQ/KRHUJR/DZOQEF/DAQANZ/HZRRNV/KSGDNY/KYQNFA","2012-07-04","2012-07-04","0000-00-00 00:00:00","Mr.","MD SAMAD X 11 PAX","9972273404688/689/690/691/692/693/694/695/696/697/698","5","4","4","2","13904.00","14080.00","","176.00","0","","0000-00-00","4","1005","11");
INSERT INTO receipts VALUES("390","142956","KYZHSZ","2012-07-04","2012-07-04","0000-00-00 00:00:00","Mr.","SOLAEMAN MIA","9972273404699","5","4","4","2","1264.00","1280.00","","16.00","0","","0000-00-00","4","1006","1");
INSERT INTO receipts VALUES("391","142957","LMJHFR","2012-07-04","2012-07-04","0000-00-00 00:00:00","Mr.","MARUF","9972273404729","5","4","4","2","1264.00","1280.00","","16.00","0","","0000-00-00","4","1007","1");
INSERT INTO receipts VALUES("392","142958","PUOKDZ","2012-07-04","2012-07-04","0000-00-00 00:00:00","Mr.","MDALAFFARRAHAMAN","9972273425003","5","4","7","1","1264.00","1280.00","","16.00","0","","0000-00-00","0","","1");
INSERT INTO receipts VALUES("393","142959","EDSJBI/NRIQGX","2012-07-04","2012-07-04","0000-00-00 00:00:00","Mr.","1)RAM 2)KHADKA 3)GANGA","2852273404734/735/736","1","15","45","2","2562.00","2700.00","","138.00","0","","0000-00-00","45","","3");
INSERT INTO receipts VALUES("394","142960","BKMQYD","2012-07-04","2012-07-04","0000-00-00 00:00:00","Mr.","MD SALAM","9972273404737","11","4","46","2","563.00","567.00","","4.00","0","","0000-00-00","46","","1");
INSERT INTO receipts VALUES("395","142961","J5HVTF","2012-07-04","2012-07-04","0000-00-00 00:00:00","Ms.","NGUYEN THI LAN","807","31","6","45","2","420.00","450.00","BSP","30.00","0","","0000-00-00","45","","1");
INSERT INTO receipts VALUES("396","142962","KOJQSS","2012-07-04","2012-07-04","0000-00-00 00:00:00","Mr.","RAJAHMED","9972273425004","5","4","7","1","1264.00","1280.00","","16.00","0","","0000-00-00","0","","1");
INSERT INTO receipts VALUES("397","142963","OYMBWP","2012-07-04","2012-07-04","0000-00-00 00:00:00","Mr.","NATHUNIDAS","2852273404726","32","15","7","5","1643.00","1730.00","\n\nBANK IN MBB 1680 + 50","87.00","1","","0000-00-00","0","","1");
INSERT INTO receipts VALUES("398","142964","GJMERS","2012-07-04","2012-07-04","0000-00-00 00:00:00","Mr.","RAJAN KUMAR TAMANG","2852273404722","1","15","7","5","854.00","950.00","","96.00","1","123456","2012-07-02","0","","1");
INSERT INTO receipts VALUES("399","142965","KKYYNI/ DNCVGT","2012-07-04","2012-07-12","0000-00-00 00:00:00","Mr.","1) BILLAL. 2) SOHEL SHEIKH","9972273404744/ 45","5","4","2","2","2528.00","2538.00","","10.00","0","","0000-00-00","2","","2");
INSERT INTO receipts VALUES("400","142966","BLXSWC/BLDHLQ","2012-07-04","2012-07-04","0000-00-00 00:00:00","Mr.","KUMAR BAHADUR X 04","9972273404701/702/703/704","8","4","47","2","3288.00","3308.00","","20.00","0","","0000-00-00","47","","4");
INSERT INTO receipts VALUES("401","142967","AAGS6Q/AAGS6S","2012-07-04","2012-07-04","0000-00-00 00:00:00","Mr.","1)ASRAF ALIF 2)ALAUDDIN","5842300361169/171","11","19","47","2","1004.00","1016.00","","12.00","0","","0000-00-00","47","","2");
INSERT INTO receipts VALUES("402","142968","MBSLQW","2012-07-04","2012-07-04","0000-00-00 00:00:00","Mr.","1)RAM PRASAD DEVKOTA 2)RAJU SURKHETI","2852273404713/4714","1","15","7","5","1708.00","1800.00","","92.00","2","","0000-00-00","0","","2");
INSERT INTO receipts VALUES("403","142969","AAGS74","2012-07-04","2012-07-04","0000-00-00 00:00:00","Mr.","1)BM AZIZUL HAKIM 2)FEROZ","5842300361201/1202","5","19","17","2","2116.00","2140.00","","24.00","0","","0000-00-00","17","","2");
INSERT INTO receipts VALUES("404","142970","AAGSMD","2012-07-04","2012-07-04","0000-00-00 00:00:00","Mr.","1)MD EMDADUL HAQUE 2)EMRAN ALI","5842300361695/1696","5","19","7","5","2116.00","2160.00","","44.00","1","","0000-00-00","0","","2");
INSERT INTO receipts VALUES("405","142971","DJFVVO","2012-07-04","2012-07-04","0000-00-00 00:00:00","Mr.","MD JAKIR","9972273404719","5","4","7","5","1264.00","1280.00","","16.00","1","","0000-00-00","0","","1");
INSERT INTO receipts VALUES("406","142972","CMJJTS","2012-07-04","2012-07-04","0000-00-00 00:00:00","Ms.","SALINA MARZUKI","2172273407459","34","18","48","2","1810.00","1850.00","","40.00","0","","0000-00-00","48","","1");
INSERT INTO receipts VALUES("407","142973","LSERWS","2012-07-04","2012-07-04","0000-00-00 00:00:00","Ms.","SITI SALWA","2172273407460","33","18","48","2","1182.00","1250.00","","68.00","0","","0000-00-00","48","","1");
INSERT INTO receipts VALUES("408","142974","KLYNAJ/ DDHZTD","2012-07-04","2012-07-04","0000-00-00 00:00:00","Mr.","RAJHASHMI X 4","9972273425007/ 08/ 09/ 10","35","4","49","2","4588.00","5160.00","","572.00","0","","0000-00-00","49","","4");
INSERT INTO receipts VALUES("409","142975","EWCHXU","2012-07-04","2012-07-04","0000-00-00 00:00:00","Mr.","ALIMIAH","9972273425005","5","4","7","1","1264.00","1280.00","","16.00","0","","0000-00-00","0","","1");
INSERT INTO receipts VALUES("410","142976","LVSUBM","2012-07-04","2012-07-04","0000-00-00 00:00:00","MRS","1)ASMA AKTER MONE 2)MAHADE HASSAN","997","6","4","22","1","1090.00","1090.00"," TICKET ISSUED","0.00","0","","0000-00-00","0","","2");
INSERT INTO receipts VALUES("411","142977","CYVWQP","2012-07-04","2012-07-04","0000-00-00 00:00:00","MRS","SUPEHAKHATUN","9972273425013","5","4","11","2","1264.00","1270.00","","6.00","0","","0000-00-00","11","","1");
INSERT INTO receipts VALUES("412","142978","DEOKHL   ","2012-07-04","2012-07-04","0000-00-00 00:00:00","Mr.","ZIAUR RAHMAN","9972273425014","11","4","13","2","563.00","580.00","","17.00","0","","0000-00-00","13","","1");
INSERT INTO receipts VALUES("413","142979","AAGTB3","2012-07-04","2012-07-04","0000-00-00 00:00:00","Mr.","1) FARHIN KHAN 2)SIRAJULISLAM","5842300362626/ 27","11","19","7","5","1094.00","1160.00","","66.00","2","","0000-00-00","0","","2");
INSERT INTO receipts VALUES("414","142980","CHTRPS","2012-07-04","2012-07-04","0000-00-00 00:00:00","Mr.","RAZIB/","9972273425015","5","4","15","2","1266.00","1300.00","","34.00","0","","0000-00-00","15","","1");



DROP TABLE IF EXISTS sectors;

CREATE TABLE `sectors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sector_name` varchar(100) NOT NULL,
  `status` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;

INSERT INTO sectors VALUES("1","KUL-KTM","Active");
INSERT INTO sectors VALUES("4","DAC-KUL-DAC","Active");
INSERT INTO sectors VALUES("5","KUL-DAC-KUL","Active");
INSERT INTO sectors VALUES("6","DAC-KUL","Active");
INSERT INTO sectors VALUES("7","CGP-DAC","Active");
INSERT INTO sectors VALUES("8","KUL-DAC-KTM","Active");
INSERT INTO sectors VALUES("25","KUL-JSR","Active");
INSERT INTO sectors VALUES("10","PEN/KUL/DAC/KUL/PEN","Active");
INSERT INTO sectors VALUES("11","KUL/DAC","Active");
INSERT INTO sectors VALUES("12","JHB/KUL/DAC/KUL/JHB","Active");
INSERT INTO sectors VALUES("13","KUL/TRZ/KUL","Active");
INSERT INTO sectors VALUES("14","KUL/SUB/KUL","Active");
INSERT INTO sectors VALUES("15","KUL/DEL/KUL","Active");
INSERT INTO sectors VALUES("16","KUL/MEL/KUL","Active");
INSERT INTO sectors VALUES("17","KUL/SOC","Active");
INSERT INTO sectors VALUES("18","PEN/KUL/DAC","Active");
INSERT INTO sectors VALUES("19","KUL-DAC-DXB","Active");
INSERT INTO sectors VALUES("20","KUL/DAC/CGP/DAC/KUL","Active");
INSERT INTO sectors VALUES("21","KUL/LGK/KUL","Active");
INSERT INTO sectors VALUES("22","PEN-KUL-DAC","Active");
INSERT INTO sectors VALUES("23","KUL-DAC-KTM-DAC-KUL","Active");
INSERT INTO sectors VALUES("24","ZYL-DAC-KUL-DAC-ZYL","Active");
INSERT INTO sectors VALUES("26","KUL-LGK-KUL","Active");
INSERT INTO sectors VALUES("27","KUL/RGN/KUL","Active");
INSERT INTO sectors VALUES("28","KUL-BWN-KUL","Active");
INSERT INTO sectors VALUES("29","DAC-CGP","Active");
INSERT INTO sectors VALUES("30","DEL-DAC-KUL","Active");
INSERT INTO sectors VALUES("31","KUL/SGN","Active");
INSERT INTO sectors VALUES("32","KUL/KTM/KUL","Active");
INSERT INTO sectors VALUES("33","KUL/BKK/KTM","Active");
INSERT INTO sectors VALUES("34","KUL/BKK/KTM/BKK/KUL","Active");
INSERT INTO sectors VALUES("35","DEL-DAC-KUL-DAC-DEL","Active");



DROP TABLE IF EXISTS serial_number;

CREATE TABLE `serial_number` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `receipt` int(11) NOT NULL,
  `payment_voucher` int(11) NOT NULL,
  `invoice` int(11) NOT NULL,
  `xo` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

INSERT INTO serial_number VALUES("4","142778","1001","100000","500000");



DROP TABLE IF EXISTS user_group;

CREATE TABLE `user_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_name` varchar(30) NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'ACTIVE',
  `menu_permission` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

INSERT INTO user_group VALUES("1","Super Admin","ACTIVE","1,2,31,30,29,9,8,7,6,5,4,3,34,10,11,12,13,14,15,32,16,17,25,24,23,22,21,20,19,18,33,35,26,27,28,");
INSERT INTO user_group VALUES("2","Admin","ACTIVE","1,2,31,30,29,9,8,7,6,5,4,3,10,11,12,13,32,16,17,33,22,21,19,35,26,27,");
INSERT INTO user_group VALUES("3","user","ACTIVE","1,2,6,5,4,3,10,11,12,13,16,17,33,21,19,35,26,27,");



DROP TABLE IF EXISTS user_info;

CREATE TABLE `user_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(100) NOT NULL,
  `date_of_birth` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `phone` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(300) NOT NULL,
  `user_name` varchar(20) NOT NULL,
  `password` varchar(100) NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'ACTIVE',
  `entry_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `entry_by` varchar(100) NOT NULL,
  `update_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `update_by` varchar(100) NOT NULL,
  `menu_permission` varchar(200) NOT NULL,
  `type_id` int(11) NOT NULL,
  `avatar` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

INSERT INTO user_info VALUES("1","Super Admin","0000-00-00 00:00:00","N/A","N/A","N/A","root","gVxWT2lyuMDjhP0XTL+V/egbOoBVFgtNbF8l1KaRbig=","ACTIVE","2012-04-03 15:22:41","","2012-06-28 03:35:04","1","","1","images.jpg");
INSERT INTO user_info VALUES("9","Masud Rana ","1976-04-15 00:00:00","0163080336","rana.bangladesh@gmail.com","19-2, Jalan Cempaka, 12/1, Bandar Sri Damansara","rana","PXr8tPavfPB+BUjx5gmVebizgb3qohK/E9HUT1BI3D8=","ACTIVE","2012-05-27 14:54:03","1","2012-07-03 01:30:12","10","","2","IMG_3204.JPG");
INSERT INTO user_info VALUES("10","Parvez Mahmud","1980-05-15 00:00:00","+60193446664","parvez@serimechan.com","Kuala Lumpur","parvez","CbAlNIJ5tqU3oEj58aipcHlC1J1YF7b63XCj3d7EkoA=","ACTIVE","2012-05-27 20:21:52","1","2012-06-30 07:03:10","10","","2","logo.gif");
INSERT INTO user_info VALUES("11","test","0000-00-00 00:00:00","","","","test","ILbjHARo+aOSqX86kvJ6ooHZDXc9pmGHOIncXhr1n7M=","INACTIVE","2012-05-31 20:35:22","1","2012-06-05 14:23:10","1","","1","Penguins.jpg");
INSERT INTO user_info VALUES("16","Siti Zubaidah ","1985-09-07 00:00:00","+60123485581","siti@serimechan.com","Ug-14, Willayah Complex, Jalan Dang Wangi","SMT-CT","ILbjHARo+aOSqX86kvJ6ooHZDXc9pmGHOIncXhr1n7M=","ACTIVE","2012-06-28 11:32:43","10","2012-06-30 07:01:07","10","","3","");
INSERT INTO user_info VALUES("17","Jewel Mahmud","1986-02-25 00:00:00","+60122276761","jewel@serimechan.com","Ug-14, Willayah Complex, Jalan Dang Wangi","SMT-JM","bNPmY3Auar7m7+nHAPsa8KoiU14/ZS7fYOTA82L04us=","ACTIVE","2012-06-28 11:38:13","10","2012-06-28 11:50:24","17","","2","IMG_1615.jpg");
INSERT INTO user_info VALUES("18","Shohel Mahmud","1982-07-22 00:00:00","+60193099668","shohel@serimechan.com","kl","SMTSH","oepjsIc+D5/zOan0+srsILXJAdYMhIcq1ZuL4+77BzA=","ACTIVE","2012-06-30 19:31:40","10","2012-07-02 11:54:11","18","","2","");
INSERT INTO user_info VALUES("19","Noor Haslinda","2012-07-25 00:00:00","","","","SMT-NS","ILbjHARo+aOSqX86kvJ6ooHZDXc9pmGHOIncXhr1n7M=","ACTIVE","2012-07-02 13:40:44","10","0000-00-00 00:00:00","","","3","");



DROP TABLE IF EXISTS user_log;

CREATE TABLE `user_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `description` varchar(100) NOT NULL,
  `log_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `table_name` varchar(20) NOT NULL,
  `table_id` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2076 DEFAULT CHARSET=utf8;

INSERT INTO user_log VALUES("18","Login","1","Login to site","2012-05-30 11:04:36","","");
INSERT INTO user_log VALUES("19","Login","1","Login to site","2012-05-30 11:41:22","","");
INSERT INTO user_log VALUES("20","Print","1","Print a payment voucher","2012-05-30 11:41:59","payment_voucher","1");
INSERT INTO user_log VALUES("21","Login","1","Login to site","2012-05-30 11:45:43","","");
INSERT INTO user_log VALUES("22","Login","1","Login to site","2012-05-30 12:07:13","","");
INSERT INTO user_log VALUES("23","Login","1","Login to site","2012-05-30 12:13:52","","");
INSERT INTO user_log VALUES("24","Login","1","Login to site","2012-05-30 12:15:16","","");
INSERT INTO user_log VALUES("25","Create","1","Create Receipt","2012-05-30 12:19:01","receipts","79");
INSERT INTO user_log VALUES("26","Delete","1","Delete a carriers","2012-05-30 12:20:04","carriers","21");
INSERT INTO user_log VALUES("27","Login","1","Login to site","2012-05-30 12:29:05","","");
INSERT INTO user_log VALUES("28","Update","1","Update a prices","2012-05-30 12:35:35","prices","16");
INSERT INTO user_log VALUES("29","Login","1","Login to site","2012-05-30 12:45:09","","");
INSERT INTO user_log VALUES("30","Login","1","Login to site","2012-05-30 12:52:32","","");
INSERT INTO user_log VALUES("31","Print","1","Print a XO","2012-05-30 13:01:52","exchange_order","1");
INSERT INTO user_log VALUES("32","Print","1","Print a invoice","2012-05-30 13:02:31","invoice","1");
INSERT INTO user_log VALUES("33","Login","1","Login to site","2012-05-30 14:14:31","","");
INSERT INTO user_log VALUES("34","Login","1","Login to site","2012-05-30 14:55:00","","");
INSERT INTO user_log VALUES("35","Login","1","Login to site","2012-05-30 15:18:03","","");
INSERT INTO user_log VALUES("36","Create","1","Create Receipt","2012-05-30 15:24:59","receipts","80");
INSERT INTO user_log VALUES("37","Create","1","Create Receipt","2012-05-30 15:27:16","receipts","81");
INSERT INTO user_log VALUES("38","Create","1","Create a due collection","2012-05-30 15:30:21","due_collection","16");
INSERT INTO user_log VALUES("39","Create","1","Create a payment voucher","2012-05-30 15:40:18","payment_voucher","11");
INSERT INTO user_log VALUES("40","Approved","1","Approved a payment voucher","2012-05-30 15:40:22","payment_voucher","11");
INSERT INTO user_log VALUES("41","Login","1","Login to site","2012-05-30 16:24:29","","");
INSERT INTO user_log VALUES("42","Login","1","Login to site","2012-05-30 18:57:34","","");
INSERT INTO user_log VALUES("43","Login","1","Login to site","2012-05-30 20:53:04","","");
INSERT INTO user_log VALUES("44","Logout","1","Logout from site","2012-05-30 20:56:03","","");
INSERT INTO user_log VALUES("45","Login","1","Login to site","2012-05-30 20:56:36","","");
INSERT INTO user_log VALUES("46","Logout","1","Logout from site","2012-05-30 20:58:33","","");
INSERT INTO user_log VALUES("47","Login","10","Login to site","2012-05-30 20:58:46","","");
INSERT INTO user_log VALUES("48","Create","10","Create Receipt","2012-05-30 21:02:06","receipts","82");
INSERT INTO user_log VALUES("49","Logout","10","Logout from site","2012-05-30 21:03:20","","");
INSERT INTO user_log VALUES("50","Login","1","Login to site","2012-05-30 21:03:36","","");
INSERT INTO user_log VALUES("51","Login","1","Login to site","2012-05-30 21:57:55","","");
INSERT INTO user_log VALUES("52","Login","1","Login to site","2012-05-30 22:22:53","","");
INSERT INTO user_log VALUES("53","Update","1","Update a agent","2012-05-30 22:30:42","agents","9");
INSERT INTO user_log VALUES("54","Update","1","Update a agent","2012-05-30 22:31:02","agents","1");
INSERT INTO user_log VALUES("55","Update","1","Update a agent","2012-05-30 22:31:10","agents","1");
INSERT INTO user_log VALUES("56","Create","1","Create a cash deposit","2012-05-30 22:33:02","cash_deposit","7");
INSERT INTO user_log VALUES("57","Login","1","Login to site","2012-05-31 00:15:58","","");
INSERT INTO user_log VALUES("58","Login","1","Login to site","2012-05-31 11:52:23","","");
INSERT INTO user_log VALUES("59","Login","1","Login to site","2012-05-31 12:29:51","","");
INSERT INTO user_log VALUES("60","Login","1","Login to site","2012-05-31 12:29:56","","");
INSERT INTO user_log VALUES("61","Login","1","Login to site","2012-05-31 12:45:55","","");
INSERT INTO user_log VALUES("62","Login","1","Login to site","2012-05-31 13:19:23","","");
INSERT INTO user_log VALUES("63","Login","1","Login to site","2012-05-31 13:26:58","","");
INSERT INTO user_log VALUES("64","Create","1","Create Receipt","2012-05-31 13:28:21","receipts","83");
INSERT INTO user_log VALUES("65","Create","1","Create Receipt","2012-05-31 13:28:51","receipts","84");
INSERT INTO user_log VALUES("66","Create","1","Create Receipt","2012-05-31 13:29:27","receipts","85");
INSERT INTO user_log VALUES("67","Create","1","Create a due collection","2012-05-31 13:30:28","due_collection","17");
INSERT INTO user_log VALUES("68","Create","1","Create a payment voucher","2012-05-31 13:30:54","payment_voucher","12");
INSERT INTO user_log VALUES("69","Approved","1","Approved a payment voucher","2012-05-31 13:31:03","payment_voucher","12");
INSERT INTO user_log VALUES("70","Create","1","Create a cash deposit","2012-05-31 13:32:52","cash_deposit","8");
INSERT INTO user_log VALUES("71","Login","1","Login to site","2012-05-31 14:01:21","","");
INSERT INTO user_log VALUES("72","Create","1","Create a due collection","2012-05-31 14:02:27","due_collection","18");
INSERT INTO user_log VALUES("73","Login","1","Login to site","2012-05-31 14:03:57","","");
INSERT INTO user_log VALUES("74","Create","1","Create a cash deposit","2012-05-31 14:11:32","cash_deposit","9");
INSERT INTO user_log VALUES("75","Login","1","Login to site","2012-05-31 14:15:25","","");
INSERT INTO user_log VALUES("76","Login","1","Login to site","2012-05-31 14:15:39","","");
INSERT INTO user_log VALUES("77","Login","1","Login to site","2012-05-31 14:27:00","","");
INSERT INTO user_log VALUES("78","Login","1","Login to site","2012-05-31 14:27:33","","");
INSERT INTO user_log VALUES("79","Print","1","Print a payment voucher","2012-05-31 14:28:10","payment_voucher","1");
INSERT INTO user_log VALUES("80","Login","1","Login to site","2012-05-31 14:40:50","","");
INSERT INTO user_log VALUES("81","Update","1","Update a user","2012-05-31 14:41:42","user_info","10");
INSERT INTO user_log VALUES("82","Update","1","Update user group and privilige","2012-05-31 14:43:51","user_group","2");
INSERT INTO user_log VALUES("83","Login","1","Login to site","2012-05-31 14:57:53","","");
INSERT INTO user_log VALUES("84","Login","1","Login to site","2012-05-31 15:15:15","","");
INSERT INTO user_log VALUES("85","Login","1","Login to site","2012-05-31 17:24:28","","");
INSERT INTO user_log VALUES("86","Login","1","Login to site","2012-05-31 17:37:50","","");
INSERT INTO user_log VALUES("87","Login","1","Login to site","2012-05-31 17:50:12","","");
INSERT INTO user_log VALUES("88","Login","1","Login to site","2012-05-31 18:09:27","","");
INSERT INTO user_log VALUES("89","Login","1","Login to site","2012-05-31 20:17:36","","");
INSERT INTO user_log VALUES("90","Update","1","Update a carriers name is BIMAN BANGLADESH AIRLINES (BG)","2012-05-31 20:33:18","carriers","4");
INSERT INTO user_log VALUES("91","Update","1","Update a carriers name is BIMAN BANGLADESH AIRLINES (BG)","2012-05-31 20:34:16","carriers","4");
INSERT INTO user_log VALUES("92","Create","1","Create a user","2012-05-31 20:35:24","user_info","11");
INSERT INTO user_log VALUES("93","Delete","1","Delete or Inactive a user","2012-05-31 20:35:43","user_info","11");
INSERT INTO user_log VALUES("94","Update","1","Update user group and privilige","2012-05-31 20:41:26","user_group","2");
INSERT INTO user_log VALUES("95","Logout","1","Logout from site","2012-05-31 20:41:32","","");
INSERT INTO user_log VALUES("96","Login","10","Login to site","2012-05-31 20:41:43","","");
INSERT INTO user_log VALUES("97","Logout","10","Logout from site","2012-05-31 20:42:09","","");
INSERT INTO user_log VALUES("98","Login","1","Login to site","2012-05-31 20:42:13","","");
INSERT INTO user_log VALUES("99","Login","1","Login to site","2012-05-31 20:42:40","","");
INSERT INTO user_log VALUES("100","Update","1","Update user group and privilige","2012-05-31 20:42:57","user_group","2");
INSERT INTO user_log VALUES("101","Logout","1","Logout from site","2012-05-31 20:43:09","","");
INSERT INTO user_log VALUES("102","Login","10","Login to site","2012-05-31 20:43:22","","");
INSERT INTO user_log VALUES("103","Update","10","Update user group and privilige","2012-05-31 20:44:41","user_group","2");
INSERT INTO user_log VALUES("104","Update","10","Update user group and privilige","2012-05-31 20:47:28","user_group","2");
INSERT INTO user_log VALUES("105","Login","1","Login to site","2012-05-31 20:59:48","","");
INSERT INTO user_log VALUES("106","Login","1","Login to site","2012-05-31 21:22:47","","");
INSERT INTO user_log VALUES("107","Login","1","Login to site","2012-05-31 21:46:25","","");
INSERT INTO user_log VALUES("108","Login","1","Login to site","2012-05-31 21:58:21","","");
INSERT INTO user_log VALUES("109","Login","1","Login to site","2012-05-31 23:13:58","","");
INSERT INTO user_log VALUES("110","Login","1","Login to site","2012-05-31 23:14:54","","");
INSERT INTO user_log VALUES("111","Login","1","Login to site","2012-05-31 23:15:45","","");
INSERT INTO user_log VALUES("112","Login","1","Login to site","2012-05-31 23:15:46","","");
INSERT INTO user_log VALUES("113","Login","1","Login to site","2012-05-31 23:47:41","","");
INSERT INTO user_log VALUES("114","Login","1","Login to site","2012-05-31 23:48:00","","");
INSERT INTO user_log VALUES("115","Login","6","Login to site","2012-06-01 00:09:25","","");
INSERT INTO user_log VALUES("116","Login","1","Login to site","2012-06-01 13:47:37","","");
INSERT INTO user_log VALUES("117","Login","1","Login to site","2012-06-01 18:52:05","","");
INSERT INTO user_log VALUES("118","Create","1","Create Receipt","2012-06-01 18:58:18","receipts","1");
INSERT INTO user_log VALUES("119","Update","1","Update a company","2012-06-01 19:01:44","company","1");
INSERT INTO user_log VALUES("120","Login","1","Login to site","2012-06-01 20:34:58","","");
INSERT INTO user_log VALUES("121","Logout","1","Logout from site","2012-06-01 20:39:50","","");
INSERT INTO user_log VALUES("122","Login","1","Login to site","2012-06-02 14:50:47","","");
INSERT INTO user_log VALUES("123","Login","1","Login to site","2012-06-02 15:08:19","","");
INSERT INTO user_log VALUES("124","Login","1","Login to site","2012-06-02 15:25:49","","");
INSERT INTO user_log VALUES("125","Login","1","Login to site","2012-06-02 16:56:16","","");
INSERT INTO user_log VALUES("126","Login","1","Login to site","2012-06-02 16:57:47","","");
INSERT INTO user_log VALUES("127","Login","1","Login to site","2012-06-02 19:16:08","","");
INSERT INTO user_log VALUES("128","Logout","1","Logout from site","2012-06-02 19:18:55","","");
INSERT INTO user_log VALUES("129","Login","1","Login to site","2012-06-02 21:16:26","","");
INSERT INTO user_log VALUES("130","Login","1","Login to site","2012-06-02 22:07:32","","");
INSERT INTO user_log VALUES("131","Logout","1","Logout from site","2012-06-02 22:09:54","","");
INSERT INTO user_log VALUES("132","Login","6","Login to site","2012-06-02 22:10:07","","");
INSERT INTO user_log VALUES("133","Update","6","Update a user","2012-06-02 22:14:04","user_info","6");
INSERT INTO user_log VALUES("134","Logout","6","Logout from site","2012-06-02 22:14:22","","");
INSERT INTO user_log VALUES("135","Login","6","Login to site","2012-06-02 22:14:31","","");
INSERT INTO user_log VALUES("136","Login","1","Login to site","2012-06-02 23:03:51","","");
INSERT INTO user_log VALUES("137","Logout","1","Logout from site","2012-06-02 23:06:11","","");
INSERT INTO user_log VALUES("138","Login","6","Login to site","2012-06-02 23:07:01","","");
INSERT INTO user_log VALUES("139","Update","6","Update a user","2012-06-02 23:14:28","user_info","6");
INSERT INTO user_log VALUES("140","Login","1","Login to site","2012-06-03 13:33:50","","");
INSERT INTO user_log VALUES("141","Create","1","Create Receipt","2012-06-03 13:43:20","receipts","2");
INSERT INTO user_log VALUES("142","Create","1","Create Receipt","2012-06-03 13:45:32","receipts","3");
INSERT INTO user_log VALUES("143","Update","1","Update user group and privilige","2012-06-03 13:56:13","user_group","2");
INSERT INTO user_log VALUES("144","Logout","1","Logout from site","2012-06-03 13:57:05","","");
INSERT INTO user_log VALUES("145","Login","10","Login to site","2012-06-03 13:57:22","","");
INSERT INTO user_log VALUES("146","Login","10","Login to site","2012-06-03 14:24:40","","");
INSERT INTO user_log VALUES("147","Logout","10","Logout from site","2012-06-03 14:35:34","","");
INSERT INTO user_log VALUES("148","Login","10","Login to site","2012-06-03 14:44:49","","");
INSERT INTO user_log VALUES("149","Login","1","Login to site","2012-06-03 16:47:46","","");
INSERT INTO user_log VALUES("150","Login","1","Login to site","2012-06-03 17:58:29","","");
INSERT INTO user_log VALUES("151","Create","1","Create Receipt","2012-06-03 18:00:03","receipts","4");
INSERT INTO user_log VALUES("152","Create","1","Create Receipt","2012-06-03 18:01:47","receipts","5");
INSERT INTO user_log VALUES("153","Login","1","Login to site","2012-06-03 23:32:10","","");
INSERT INTO user_log VALUES("154","Login","1","Login to site","2012-06-03 23:43:41","","");
INSERT INTO user_log VALUES("155","Login","1","Login to site","2012-06-04 00:20:37","","");
INSERT INTO user_log VALUES("156","Login","1","Login to site","2012-06-04 01:17:12","","");
INSERT INTO user_log VALUES("157","Login","1","Login to site","2012-06-04 11:12:05","","");
INSERT INTO user_log VALUES("158","Create","1","Create Receipt","2012-06-04 11:16:20","receipts","6");
INSERT INTO user_log VALUES("159","Login","1","Login to site","2012-06-04 11:31:51","","");
INSERT INTO user_log VALUES("160","Logout","1","Logout from site","2012-06-04 11:32:20","","");
INSERT INTO user_log VALUES("161","Login","10","Login to site","2012-06-04 11:32:41","","");
INSERT INTO user_log VALUES("162","Login","1","Login to site","2012-06-04 12:45:29","","");
INSERT INTO user_log VALUES("163","Login","1","Login to site","2012-06-04 12:46:26","","");
INSERT INTO user_log VALUES("164","Create","1","Create Receipt","2012-06-04 12:52:45","receipts","7");
INSERT INTO user_log VALUES("165","Login","1","Login to site","2012-06-04 13:18:33","","");
INSERT INTO user_log VALUES("166","Create","1","Create a cash deposit","2012-06-04 13:22:16","cash_deposit","1");
INSERT INTO user_log VALUES("167","Login","1","Login to site","2012-06-04 13:28:18","","");
INSERT INTO user_log VALUES("168","Login","1","Login to site","2012-06-04 13:52:56","","");
INSERT INTO user_log VALUES("169","Create","1","Create Receipt","2012-06-04 13:54:34","receipts","8");
INSERT INTO user_log VALUES("170","Create","1","Create a payment voucher","2012-06-04 14:00:41","payment_voucher","1");
INSERT INTO user_log VALUES("171","Approved","1","Approved a payment voucher","2012-06-04 14:00:49","payment_voucher","1");
INSERT INTO user_log VALUES("172","Create","1","Create a payment voucher","2012-06-04 14:01:20","payment_voucher","2");
INSERT INTO user_log VALUES("173","Approved","1","Approved a payment voucher","2012-06-04 14:01:25","payment_voucher","2");
INSERT INTO user_log VALUES("174","Logout","1","Logout from site","2012-06-04 14:03:04","","");
INSERT INTO user_log VALUES("175","Login","10","Login to site","2012-06-04 14:03:14","","");
INSERT INTO user_log VALUES("176","Logout","10","Logout from site","2012-06-04 14:03:42","","");
INSERT INTO user_log VALUES("177","Login","1","Login to site","2012-06-04 14:03:50","","");
INSERT INTO user_log VALUES("178","Login","1","Login to site","2012-06-04 14:58:01","","");
INSERT INTO user_log VALUES("179","Login","1","Login to site","2012-06-04 15:02:39","","");
INSERT INTO user_log VALUES("180","Logout","1","Logout from site","2012-06-04 15:05:17","","");
INSERT INTO user_log VALUES("181","Login","1","Login to site","2012-06-04 15:07:17","","");
INSERT INTO user_log VALUES("182","Login","1","Login to site","2012-06-04 15:16:51","","");
INSERT INTO user_log VALUES("183","Create","1","Create Receipt","2012-06-04 15:18:42","receipts","9");
INSERT INTO user_log VALUES("184","Create","1","Create Receipt","2012-06-04 15:20:15","receipts","10");
INSERT INTO user_log VALUES("185","Create","1","Create Receipt","2012-06-04 15:22:50","receipts","11");
INSERT INTO user_log VALUES("186","Update","1","Update a receipt","2012-06-04 15:23:43","receipts","11");
INSERT INTO user_log VALUES("187","Update","1","Update a receipt","2012-06-04 15:26:04","receipts","10");
INSERT INTO user_log VALUES("188","Login","1","Login to site","2012-06-04 16:11:39","","");
INSERT INTO user_log VALUES("189","Login","1","Login to site","2012-06-04 17:02:37","","");
INSERT INTO user_log VALUES("190","Login","1","Login to site","2012-06-04 20:14:07","","");
INSERT INTO user_log VALUES("191","Login","1","Login to site","2012-06-04 20:37:20","","");
INSERT INTO user_log VALUES("192","Create","1","Create Receipt","2012-06-04 20:39:21","receipts","12");
INSERT INTO user_log VALUES("193","Login","1","Login to site","2012-06-04 23:49:12","","");
INSERT INTO user_log VALUES("194","Update","1","Update a user","2012-06-04 23:50:01","user_info","11");
INSERT INTO user_log VALUES("195","Login","11","Login to site","2012-06-04 23:55:42","","");
INSERT INTO user_log VALUES("196","Update","1","Update a user","2012-06-05 00:14:06","user_info","11");
INSERT INTO user_log VALUES("197","Login","1","Login to site","2012-06-05 22:36:13","","");
INSERT INTO user_log VALUES("198","Login","1","Login to site","2012-06-05 22:52:16","","");
INSERT INTO user_log VALUES("199","Create","1","Create Receipt","2012-06-05 23:04:49","receipts","13");
INSERT INTO user_log VALUES("200","Update","1","Update a agent name isSM ZARIQ TRAVEL","2012-06-05 23:12:41","agents","1");
INSERT INTO user_log VALUES("201","Update","1","Update a agent name isVALENTINE TRAVEL","2012-06-05 23:13:06","agents","2");
INSERT INTO user_log VALUES("202","Update","1","Update a agent name isLATITUTE TREE","2012-06-05 23:13:55","agents","3");
INSERT INTO user_log VALUES("203","Update","1","Update a agent name isTERAS ERA JAYA","2012-06-05 23:14:57","agents","4");
INSERT INTO user_log VALUES("204","Login","1","Login to site","2012-06-05 23:43:44","","");
INSERT INTO user_log VALUES("205","Login","1","Login to site","2012-06-05 23:55:49","","");
INSERT INTO user_log VALUES("206","Update","1","Update a user","2012-06-06 00:00:36","user_info","11");
INSERT INTO user_log VALUES("207","Update","1","Update a user","2012-06-06 00:00:55","user_info","11");
INSERT INTO user_log VALUES("208","Login","1","Login to site","2012-06-06 00:28:38","","");
INSERT INTO user_log VALUES("209","Login","1","Login to site","2012-06-06 00:55:33","","");
INSERT INTO user_log VALUES("210","Login","1","Login to site","2012-06-06 01:11:04","","");
INSERT INTO user_log VALUES("211","Login","1","Login to site","2012-06-06 02:07:38","","");
INSERT INTO user_log VALUES("212","Login","1","Login to site","2012-06-06 02:07:42","","");
INSERT INTO user_log VALUES("213","Login","1","Login to site","2012-06-06 02:22:30","","");
INSERT INTO user_log VALUES("214","Update","1","Update a user","2012-06-06 02:23:10","user_info","11");
INSERT INTO user_log VALUES("215","Logout","1","Logout from site","2012-06-06 02:26:23","","");
INSERT INTO user_log VALUES("216","Login","11","Login to site","2012-06-06 02:26:37","","");
INSERT INTO user_log VALUES("217","Login","11","Login to site","2012-06-06 02:30:22","","");
INSERT INTO user_log VALUES("218","Login","11","Login to site","2012-06-06 02:46:07","","");
INSERT INTO user_log VALUES("219","Login","11","Login to site","2012-06-06 03:13:39","","");
INSERT INTO user_log VALUES("220","Login","1","Login to site","2012-06-06 03:17:20","","");
INSERT INTO user_log VALUES("221","Login","1","Login to site","2012-06-06 03:21:22","","");
INSERT INTO user_log VALUES("222","Login","1","Login to site","2012-06-06 03:28:42","","");
INSERT INTO user_log VALUES("223","Login","11","Login to site","2012-06-06 03:30:19","","");
INSERT INTO user_log VALUES("224","Login","11","Login to site","2012-06-06 04:04:48","","");
INSERT INTO user_log VALUES("225","Login","1","Login to site","2012-06-06 04:10:12","","");
INSERT INTO user_log VALUES("226","Login","1","Login to site","2012-06-06 11:00:45","","");
INSERT INTO user_log VALUES("227","Create","1","Create user group and privilige","2012-06-06 11:05:24","user_group","4");
INSERT INTO user_log VALUES("228","Create","1","Create a user","2012-06-06 11:06:08","user_info","12");
INSERT INTO user_log VALUES("229","Logout","1","Logout from site","2012-06-06 11:06:36","","");
INSERT INTO user_log VALUES("230","Login","12","Login to site","2012-06-06 11:06:50","","");
INSERT INTO user_log VALUES("231","Logout","12","Logout from site","2012-06-06 11:08:53","","");
INSERT INTO user_log VALUES("232","Login","11","Login to site","2012-06-06 11:09:05","","");
INSERT INTO user_log VALUES("233","Login","1","Login to site","2012-06-06 13:20:16","","");
INSERT INTO user_log VALUES("234","Logout","1","Logout from site","2012-06-06 13:26:08","","");
INSERT INTO user_log VALUES("235","Login","6","Login to site","2012-06-06 13:26:16","","");
INSERT INTO user_log VALUES("236","Update","6","Update user group and privilige","2012-06-06 13:27:11","user_group","2");
INSERT INTO user_log VALUES("237","Logout","6","Logout from site","2012-06-06 13:27:54","","");
INSERT INTO user_log VALUES("238","Login","1","Login to site","2012-06-06 13:28:02","","");
INSERT INTO user_log VALUES("239","Login","1","Login to site","2012-06-06 13:51:12","","");
INSERT INTO user_log VALUES("240","Login","1","Login to site","2012-06-06 22:46:28","","");
INSERT INTO user_log VALUES("241","Login","1","Login to site","2012-06-06 23:46:30","","");
INSERT INTO user_log VALUES("242","Login","1","Login to site","2012-06-07 02:30:11","","");
INSERT INTO user_log VALUES("243","Logout","1","Logout from site","2012-06-07 02:34:21","","");
INSERT INTO user_log VALUES("244","Login","1","Login to site","2012-06-07 02:34:38","","");
INSERT INTO user_log VALUES("245","Logout","1","Logout from site","2012-06-07 02:48:27","","");
INSERT INTO user_log VALUES("246","Login","1","Login to site","2012-06-07 11:21:07","","");
INSERT INTO user_log VALUES("247","Login","1","Login to site","2012-06-07 12:35:46","","");
INSERT INTO user_log VALUES("248","Logout","1","Logout from site","2012-06-07 12:39:23","","");
INSERT INTO user_log VALUES("249","Login","1","Login to site","2012-06-09 01:07:28","","");
INSERT INTO user_log VALUES("250","Logout","1","Logout from site","2012-06-09 01:09:58","","");
INSERT INTO user_log VALUES("251","Login","10","Login to site","2012-06-09 01:10:10","","");
INSERT INTO user_log VALUES("252","Login","1","Login to site","2012-06-09 01:24:29","","");
INSERT INTO user_log VALUES("253","Logout","1","Logout from site","2012-06-09 01:48:16","","");
INSERT INTO user_log VALUES("254","Login","10","Login to site","2012-06-09 01:48:31","","");
INSERT INTO user_log VALUES("255","Logout","10","Logout from site","2012-06-09 01:57:18","","");
INSERT INTO user_log VALUES("256","Login","1","Login to site","2012-06-09 01:57:24","","");
INSERT INTO user_log VALUES("257","Logout","1","Logout from site","2012-06-09 02:00:13","","");
INSERT INTO user_log VALUES("258","Login","10","Login to site","2012-06-09 02:00:25","","");
INSERT INTO user_log VALUES("259","Logout","10","Logout from site","2012-06-09 02:06:54","","");
INSERT INTO user_log VALUES("260","Login","1","Login to site","2012-06-09 08:32:22","","");
INSERT INTO user_log VALUES("261","Login","1","Login to site","2012-06-09 09:03:54","","");
INSERT INTO user_log VALUES("262","Logout","1","Logout from site","2012-06-09 09:04:41","","");
INSERT INTO user_log VALUES("263","Login","1","Login to site","2012-06-09 09:04:46","","");
INSERT INTO user_log VALUES("264","Update","1","Update user group and privilige","2012-06-09 09:05:44","user_group","2");
INSERT INTO user_log VALUES("265","Logout","1","Logout from site","2012-06-09 09:05:50","","");
INSERT INTO user_log VALUES("266","Login","10","Login to site","2012-06-09 09:06:04","","");
INSERT INTO user_log VALUES("267","Logout","10","Logout from site","2012-06-09 09:07:23","","");
INSERT INTO user_log VALUES("268","Login","1","Login to site","2012-06-09 09:59:36","","");
INSERT INTO user_log VALUES("269","Login","1","Login to site","2012-06-09 10:52:25","","");
INSERT INTO user_log VALUES("270","Login","1","Login to site","2012-06-09 11:57:53","","");
INSERT INTO user_log VALUES("271","Login","1","Login to site","2012-06-09 20:48:40","","");
INSERT INTO user_log VALUES("272","Login","1","Login to site","2012-06-09 20:48:41","","");
INSERT INTO user_log VALUES("273","Login","1","Login to site","2012-06-09 23:12:53","","");
INSERT INTO user_log VALUES("274","Delete","1","Delete user group and privilige","2012-06-09 23:13:23","user_group","4");
INSERT INTO user_log VALUES("275","Delete","1","Delete or Inactive a user","2012-06-09 23:13:39","user_info","12");
INSERT INTO user_log VALUES("276","Delete","1","Delete or Inactive a user","2012-06-09 23:13:51","user_info","12");
INSERT INTO user_log VALUES("277","Delete","1","Delete or Inactive a user","2012-06-09 23:14:04","user_info","12");
INSERT INTO user_log VALUES("278","Login","1","Login to site","2012-06-10 09:05:03","","");
INSERT INTO user_log VALUES("279","Login","1","Login to site","2012-06-10 09:51:22","","");
INSERT INTO user_log VALUES("280","Login","1","Login to site","2012-06-10 10:14:51","","");
INSERT INTO user_log VALUES("281","Login","1","Login to site","2012-06-10 10:45:21","","");
INSERT INTO user_log VALUES("282","Login","1","Login to site","2012-06-10 12:27:05","","");
INSERT INTO user_log VALUES("283","Login","1","Login to site","2012-06-10 15:53:20","","");
INSERT INTO user_log VALUES("284","Login","1","Login to site","2012-06-10 17:13:15","","");
INSERT INTO user_log VALUES("285","Logout","1","Logout from site","2012-06-10 17:14:16","","");
INSERT INTO user_log VALUES("286","Login","10","Login to site","2012-06-10 17:14:27","","");
INSERT INTO user_log VALUES("287","Login","1","Login to site","2012-06-10 21:53:33","","");
INSERT INTO user_log VALUES("288","Login","1","Login to site","2012-06-10 22:20:25","","");
INSERT INTO user_log VALUES("289","Login","1","Login to site","2012-06-10 22:33:46","","");
INSERT INTO user_log VALUES("290","Login","1","Login to site","2012-06-10 22:51:45","","");
INSERT INTO user_log VALUES("291","Login","1","Login to site","2012-06-10 23:06:32","","");
INSERT INTO user_log VALUES("292","Update","1","Update a agent name isSM ZARIQ TRAVEL","2012-06-10 23:06:59","agents","1");
INSERT INTO user_log VALUES("293","Login","1","Login to site","2012-06-10 23:55:33","","");
INSERT INTO user_log VALUES("294","Login","1","Login to site","2012-06-11 00:16:07","","");
INSERT INTO user_log VALUES("295","Delete","1","Delete or Inactive a user","2012-06-11 00:21:51","user_info","12");
INSERT INTO user_log VALUES("296","Login","1","Login to site","2012-06-11 00:35:26","","");
INSERT INTO user_log VALUES("297","Login","1","Login to site","2012-06-11 01:00:13","","");
INSERT INTO user_log VALUES("298","Login","1","Login to site","2012-06-11 02:22:45","","");
INSERT INTO user_log VALUES("299","Update","1","Update user group and privilige","2012-06-11 02:24:58","user_group","2");
INSERT INTO user_log VALUES("300","Logout","1","Logout from site","2012-06-11 02:25:16","","");
INSERT INTO user_log VALUES("301","Login","1","Login to site","2012-06-11 13:30:52","","");
INSERT INTO user_log VALUES("302","Logout","1","Logout from site","2012-06-11 13:42:01","","");
INSERT INTO user_log VALUES("303","Login","10","Login to site","2012-06-11 13:42:12","","");
INSERT INTO user_log VALUES("304","Update","10","Update user group and privilige","2012-06-11 13:43:42","user_group","3");
INSERT INTO user_log VALUES("305","Logout","10","Logout from site","2012-06-11 13:44:01","","");
INSERT INTO user_log VALUES("306","Login","1","Login to site","2012-06-11 13:44:08","","");
INSERT INTO user_log VALUES("307","Update","1","Update user group and privilige","2012-06-11 13:45:19","user_group","2");
INSERT INTO user_log VALUES("308","Logout","1","Logout from site","2012-06-11 13:45:23","","");
INSERT INTO user_log VALUES("309","Login","10","Login to site","2012-06-11 13:45:32","","");
INSERT INTO user_log VALUES("310","Logout","10","Logout from site","2012-06-11 13:56:19","","");
INSERT INTO user_log VALUES("311","Login","10","Login to site","2012-06-11 13:56:26","","");
INSERT INTO user_log VALUES("312","Login","10","Login to site","2012-06-11 14:14:28","","");
INSERT INTO user_log VALUES("313","Login","10","Login to site","2012-06-11 15:43:54","","");
INSERT INTO user_log VALUES("314","Login","10","Login to site","2012-06-11 17:13:57","","");
INSERT INTO user_log VALUES("315","Login","10","Login to site","2012-06-12 11:58:27","","");
INSERT INTO user_log VALUES("316","Login","10","Login to site","2012-06-12 11:58:34","","");
INSERT INTO user_log VALUES("317","Logout","10","Logout from site","2012-06-12 11:58:52","","");
INSERT INTO user_log VALUES("318","Login","12","Login to site","2012-06-12 11:59:08","","");
INSERT INTO user_log VALUES("319","Login","10","Login to site","2012-06-12 21:08:59","","");
INSERT INTO user_log VALUES("320","Login","10","Login to site","2012-06-12 21:52:59","","");
INSERT INTO user_log VALUES("321","Login","1","Login to site","2012-06-13 00:42:26","","");
INSERT INTO user_log VALUES("322","Logout","1","Logout from site","2012-06-13 00:45:47","","");
INSERT INTO user_log VALUES("323","Login","1","Login to site","2012-06-13 00:46:04","","");
INSERT INTO user_log VALUES("324","Login","1","Login to site","2012-06-13 00:51:55","","");
INSERT INTO user_log VALUES("325","Login","1","Login to site","2012-06-13 00:52:24","","");
INSERT INTO user_log VALUES("326","Login","1","Login to site","2012-06-13 01:06:02","","");
INSERT INTO user_log VALUES("327","Login","1","Login to site","2012-06-13 01:19:39","","");
INSERT INTO user_log VALUES("328","Login","1","Login to site","2012-06-13 01:34:18","","");
INSERT INTO user_log VALUES("329","Logout","1","Logout from site","2012-06-13 01:36:55","","");
INSERT INTO user_log VALUES("330","Logout","1","Logout from site","2012-06-13 01:37:04","","");
INSERT INTO user_log VALUES("331","Login","10","Login to site","2012-06-13 01:37:33","","");
INSERT INTO user_log VALUES("332","Login","10","Login to site","2012-06-13 01:37:34","","");
INSERT INTO user_log VALUES("333","Login","10","Login to site","2012-06-13 10:56:11","","");
INSERT INTO user_log VALUES("334","Create","10","Create a agent name is MABA RESOURCES","2012-06-13 10:59:06","agents","10");
INSERT INTO user_log VALUES("335","Create","10","Create a agent name is UZZAL","2012-06-13 10:59:29","agents","11");
INSERT INTO user_log VALUES("336","Create","10","Create a agent name is RASEL","2012-06-13 10:59:58","agents","12");
INSERT INTO user_log VALUES("337","Create","10","Create a agent name is ANWAR","2012-06-13 11:01:03","agents","13");
INSERT INTO user_log VALUES("338","Create","10","Create a agent name is MANIK","2012-06-13 11:01:27","agents","14");
INSERT INTO user_log VALUES("339","Create","10","Create a agent name is HEMAYET","2012-06-13 11:01:50","agents","15");
INSERT INTO user_log VALUES("340","Create","10","Create a agent name is CHAN MIAH","2012-06-13 11:02:12","agents","16");
INSERT INTO user_log VALUES("341","Create","10","Create a agent name is MOHIUDDIN ","2012-06-13 11:02:40","agents","17");
INSERT INTO user_log VALUES("342","Create","10","Create a agent name is SATABDI TRAVEL","2012-06-13 11:03:11","agents","18");
INSERT INTO user_log VALUES("343","Create","10","Create a agent name is SAIFUL IME","2012-06-13 11:03:30","agents","19");
INSERT INTO user_log VALUES("344","Delete","10","Delete a agent name is Santu Mia","2012-06-13 11:03:56","agents","5");
INSERT INTO user_log VALUES("345","Delete","10","Delete a agent name is Salam Mia","2012-06-13 11:04:03","agents","6");
INSERT INTO user_log VALUES("346","Delete","10","Delete a agent name is Hossain","2012-06-13 11:04:11","agents","9");
INSERT INTO user_log VALUES("347","Create","10","Create Receipt","2012-06-13 11:10:55","receipts","14");
INSERT INTO user_log VALUES("348","Create","10","Create Receipt","2012-06-13 11:14:56","receipts","15");
INSERT INTO user_log VALUES("349","Create","10","Create Receipt","2012-06-13 11:16:12","receipts","16");
INSERT INTO user_log VALUES("350","Create","10","Create a due collection","2012-06-13 11:18:56","due_collection","1");
INSERT INTO user_log VALUES("351","Create","10","Create a payment voucher","2012-06-13 11:19:35","payment_voucher","3");
INSERT INTO user_log VALUES("352","Approved","10","Approved a payment voucher","2012-06-13 11:19:39","payment_voucher","3");
INSERT INTO user_log VALUES("353","Login","10","Login to site","2012-06-13 11:31:00","","");
INSERT INTO user_log VALUES("354","Logout","10","Logout from site","2012-06-13 11:42:58","","");
INSERT INTO user_log VALUES("355","Login","1","Login to site","2012-06-13 11:43:06","","");
INSERT INTO user_log VALUES("356","Login","1","Login to site","2012-06-13 11:55:43","","");
INSERT INTO user_log VALUES("357","Login","1","Login to site","2012-06-13 12:05:56","","");
INSERT INTO user_log VALUES("358","Create","1","Create a invoice","2012-06-13 12:13:02","invoice","1");
INSERT INTO user_log VALUES("359","Login","1","Login to site","2012-06-13 12:41:51","","");
INSERT INTO user_log VALUES("360","Logout","1","Logout from site","2012-06-13 12:43:11","","");
INSERT INTO user_log VALUES("361","Login","10","Login to site","2012-06-13 12:43:21","","");
INSERT INTO user_log VALUES("362","Create","10","Create a user","2012-06-13 12:44:30","user_info","13");
INSERT INTO user_log VALUES("363","Delete","10","Delete or Inactive a user","2012-06-13 12:44:42","user_info","13");
INSERT INTO user_log VALUES("364","Update","10","Update a user","2012-06-13 12:46:00","user_info","6");
INSERT INTO user_log VALUES("365","Login","10","Login to site","2012-06-13 13:27:30","","");
INSERT INTO user_log VALUES("366","Login","10","Login to site","2012-06-13 14:24:03","","");
INSERT INTO user_log VALUES("367","Login","10","Login to site","2012-06-13 17:14:42","","");
INSERT INTO user_log VALUES("368","Login","10","Login to site","2012-06-13 17:26:54","","");
INSERT INTO user_log VALUES("369","Logout","10","Logout from site","2012-06-13 17:28:14","","");
INSERT INTO user_log VALUES("370","Login","1","Login to site","2012-06-13 17:28:21","","");
INSERT INTO user_log VALUES("371","Delete","1","Delete or Inactive a user","2012-06-13 17:29:04","user_info","12");
INSERT INTO user_log VALUES("372","Update","1","Update a user","2012-06-13 17:29:24","user_info","13");
INSERT INTO user_log VALUES("373","Logout","1","Logout from site","2012-06-13 17:29:28","","");
INSERT INTO user_log VALUES("374","Login","1","Login to site","2012-06-13 17:29:56","","");
INSERT INTO user_log VALUES("375","Create","1","Create a user","2012-06-13 17:30:26","user_info","14");
INSERT INTO user_log VALUES("376","Logout","1","Logout from site","2012-06-13 17:30:32","","");
INSERT INTO user_log VALUES("377","Login","14","Login to site","2012-06-13 17:30:42","","");
INSERT INTO user_log VALUES("378","Login","1","Login to site","2012-06-13 23:30:15","","");
INSERT INTO user_log VALUES("379","Login","1","Login to site","2012-06-14 00:08:00","","");
INSERT INTO user_log VALUES("380","Login","1","Login to site","2012-06-14 01:51:19","","");
INSERT INTO user_log VALUES("381","Login","1","Login to site","2012-06-14 14:51:17","","");
INSERT INTO user_log VALUES("382","Login","1","Login to site","2012-06-14 15:14:56","","");
INSERT INTO user_log VALUES("383","Login","1","Login to site","2012-06-14 20:39:01","","");
INSERT INTO user_log VALUES("384","Login","1","Login to site","2012-06-14 21:09:04","","");
INSERT INTO user_log VALUES("385","Login","1","Login to site","2012-06-14 22:11:18","","");
INSERT INTO user_log VALUES("386","Login","1","Login to site","2012-06-14 22:49:22","","");
INSERT INTO user_log VALUES("387","Login","1","Login to site","2012-06-14 22:53:21","","");
INSERT INTO user_log VALUES("388","Login","1","Login to site","2012-06-14 23:28:44","","");
INSERT INTO user_log VALUES("389","Delete","1","Delete or Inactive a user","2012-06-14 23:30:28","user_info","14");
INSERT INTO user_log VALUES("390","Logout","1","Logout from site","2012-06-14 23:31:04","","");
INSERT INTO user_log VALUES("391","Login","10","Login to site","2012-06-14 23:31:12","","");
INSERT INTO user_log VALUES("392","Create","10","Create a user","2012-06-14 23:34:22","user_info","15");
INSERT INTO user_log VALUES("393","Login","1","Login to site","2012-06-15 00:02:45","","");
INSERT INTO user_log VALUES("394","Login","1","Login to site","2012-06-15 00:32:51","","");
INSERT INTO user_log VALUES("395","Login","1","Login to site","2012-06-15 00:45:52","","");
INSERT INTO user_log VALUES("396","Login","1","Login to site","2012-06-15 01:19:43","","");
INSERT INTO user_log VALUES("397","Login","1","Login to site","2012-06-15 01:46:36","","");
INSERT INTO user_log VALUES("398","Login","1","Login to site","2012-06-15 01:58:36","","");
INSERT INTO user_log VALUES("399","Login","10","Login to site","2012-06-15 09:15:10","","");
INSERT INTO user_log VALUES("400","Login","10","Login to site","2012-06-15 14:46:24","","");
INSERT INTO user_log VALUES("401","Login","10","Login to site","2012-06-15 20:09:53","","");
INSERT INTO user_log VALUES("402","Login","10","Login to site","2012-06-15 21:46:50","","");
INSERT INTO user_log VALUES("403","Login","10","Login to site","2012-06-16 01:18:25","","");
INSERT INTO user_log VALUES("404","Update","10","Update a user","2012-06-16 01:31:18","user_info","9");
INSERT INTO user_log VALUES("405","Logout","10","Logout from site","2012-06-16 01:31:23","","");
INSERT INTO user_log VALUES("406","Login","9","Login to site","2012-06-16 01:31:35","","");
INSERT INTO user_log VALUES("407","Login","1","Login to site","2012-06-16 13:39:54","","");
INSERT INTO user_log VALUES("408","Login","1","Login to site","2012-06-16 14:02:23","","");
INSERT INTO user_log VALUES("409","Logout","1","Logout from site","2012-06-16 14:05:49","","");
INSERT INTO user_log VALUES("410","Login","10","Login to site","2012-06-16 14:05:57","","");
INSERT INTO user_log VALUES("411","Logout","10","Logout from site","2012-06-16 14:06:49","","");
INSERT INTO user_log VALUES("412","Login","1","Login to site","2012-06-16 14:06:58","","");
INSERT INTO user_log VALUES("413","Create","1","Create Receipt","2012-06-16 14:11:55","receipts","17");
INSERT INTO user_log VALUES("414","Create","1","Create Receipt","2012-06-16 14:13:13","receipts","18");
INSERT INTO user_log VALUES("415","Create","1","Create a due collection","2012-06-16 14:13:39","due_collection","2");
INSERT INTO user_log VALUES("416","Create","1","Create a payment voucher","2012-06-16 14:14:12","payment_voucher","4");
INSERT INTO user_log VALUES("417","Logout","1","Logout from site","2012-06-16 14:20:21","","");
INSERT INTO user_log VALUES("418","Login","10","Login to site","2012-06-16 14:20:28","","");
INSERT INTO user_log VALUES("419","Login","1","Login to site","2012-06-16 14:25:01","","");
INSERT INTO user_log VALUES("420","Login","1","Login to site","2012-06-16 18:06:01","","");
INSERT INTO user_log VALUES("421","Login","1","Login to site","2012-06-16 18:39:55","","");
INSERT INTO user_log VALUES("422","Login","1","Login to site","2012-06-16 18:42:24","","");
INSERT INTO user_log VALUES("423","Update","1","Update a user","2012-06-16 18:44:43","user_info","12");
INSERT INTO user_log VALUES("424","Update","1","Update a user","2012-06-16 18:45:00","user_info","12");
INSERT INTO user_log VALUES("425","Logout","1","Logout from site","2012-06-16 18:47:47","","");
INSERT INTO user_log VALUES("426","Login","10","Login to site","2012-06-16 18:47:57","","");
INSERT INTO user_log VALUES("427","Approved","10","Approved a payment voucher","2012-06-16 18:48:12","payment_voucher","4");
INSERT INTO user_log VALUES("428","Logout","10","Logout from site","2012-06-16 18:52:28","","");
INSERT INTO user_log VALUES("429","Login","9","Login to site","2012-06-16 18:52:38","","");
INSERT INTO user_log VALUES("430","Create","9","Create a payment voucher","2012-06-16 18:53:27","payment_voucher","5");
INSERT INTO user_log VALUES("431","Create","9","Create a cash deposit","2012-06-16 18:55:14","cash_deposit","2");
INSERT INTO user_log VALUES("432","Logout","9","Logout from site","2012-06-16 19:06:17","","");
INSERT INTO user_log VALUES("433","Login","9","Login to site","2012-06-16 19:06:32","","");
INSERT INTO user_log VALUES("434","Login","1","Login to site","2012-06-17 00:51:42","","");
INSERT INTO user_log VALUES("435","Login","1","Login to site","2012-06-17 00:52:11","","");
INSERT INTO user_log VALUES("436","Login","1","Login to site","2012-06-17 00:52:47","","");
INSERT INTO user_log VALUES("437","Login","1","Login to site","2012-06-17 01:48:59","","");
INSERT INTO user_log VALUES("438","Login","1","Login to site","2012-06-17 01:52:55","","");
INSERT INTO user_log VALUES("439","Update","1","Update user group and privilige","2012-06-17 02:00:25","user_group","2");
INSERT INTO user_log VALUES("440","Logout","1","Logout from site","2012-06-17 02:00:35","","");
INSERT INTO user_log VALUES("441","Login","10","Login to site","2012-06-17 02:00:43","","");
INSERT INTO user_log VALUES("442","Approved","10","Approved a payment voucher","2012-06-17 02:10:02","payment_voucher","5");
INSERT INTO user_log VALUES("443","Logout","10","Logout from site","2012-06-17 02:15:15","","");
INSERT INTO user_log VALUES("444","Login","1","Login to site","2012-06-17 17:46:54","","");
INSERT INTO user_log VALUES("445","Logout","1","Logout from site","2012-06-17 17:48:14","","");
INSERT INTO user_log VALUES("446","Login","10","Login to site","2012-06-17 17:48:20","","");
INSERT INTO user_log VALUES("447","Update","10","Update a user","2012-06-17 17:54:03","user_info","9");
INSERT INTO user_log VALUES("448","Logout","10","Logout from site","2012-06-17 17:54:08","","");
INSERT INTO user_log VALUES("449","Login","9","Login to site","2012-06-17 17:54:19","","");
INSERT INTO user_log VALUES("450","Logout","9","Logout from site","2012-06-17 17:54:48","","");
INSERT INTO user_log VALUES("451","Login","10","Login to site","2012-06-17 17:54:53","","");
INSERT INTO user_log VALUES("452","Logout","10","Logout from site","2012-06-17 17:55:33","","");
INSERT INTO user_log VALUES("453","Login","1","Login to site","2012-06-17 17:55:41","","");
INSERT INTO user_log VALUES("454","Update","1","Update a user","2012-06-17 17:56:14","user_info","15");
INSERT INTO user_log VALUES("455","Login","1","Login to site","2012-06-17 17:56:55","","");
INSERT INTO user_log VALUES("456","Login","1","Login to site","2012-06-17 18:01:48","","");
INSERT INTO user_log VALUES("457","Login","10","Login to site","2012-06-17 18:33:27","","");
INSERT INTO user_log VALUES("458","Create","10","Create Receipt","2012-06-17 18:34:34","receipts","19");
INSERT INTO user_log VALUES("459","Login","10","Login to site","2012-06-17 18:46:51","","");
INSERT INTO user_log VALUES("460","Login","1","Login to site","2012-06-17 20:38:50","","");
INSERT INTO user_log VALUES("461","Update","1","Update user group and privilige","2012-06-17 20:40:30","user_group","2");
INSERT INTO user_log VALUES("462","Update","1","Update user group and privilige","2012-06-17 20:41:50","user_group","3");
INSERT INTO user_log VALUES("463","Login","1","Login to site","2012-06-17 20:53:37","","");
INSERT INTO user_log VALUES("464","Login","1","Login to site","2012-06-17 22:45:42","","");
INSERT INTO user_log VALUES("465","Login","1","Login to site","2012-06-17 23:36:49","","");
INSERT INTO user_log VALUES("466","Login","1","Login to site","2012-06-18 00:20:58","","");
INSERT INTO user_log VALUES("467","Login","1","Login to site","2012-06-18 01:18:38","","");
INSERT INTO user_log VALUES("468","Login","1","Login to site","2012-06-18 01:23:33","","");
INSERT INTO user_log VALUES("469","Login","1","Login to site","2012-06-18 01:26:02","","");
INSERT INTO user_log VALUES("470","Logout","1","Logout from site","2012-06-18 01:35:40","","");
INSERT INTO user_log VALUES("471","Login","10","Login to site","2012-06-18 01:35:48","","");
INSERT INTO user_log VALUES("472","Logout","10","Logout from site","2012-06-18 01:40:05","","");
INSERT INTO user_log VALUES("473","Login","10","Login to site","2012-06-18 01:41:30","","");
INSERT INTO user_log VALUES("474","Create","10","Create a payment voucher","2012-06-18 01:44:06","payment_voucher","6");
INSERT INTO user_log VALUES("475","Approved","10","Approved a payment voucher","2012-06-18 01:45:00","payment_voucher","6");
INSERT INTO user_log VALUES("476","Create","10","Create a cash deposit","2012-06-18 01:46:30","cash_deposit","3");
INSERT INTO user_log VALUES("477","Login","1","Login to site","2012-06-18 01:57:36","","");
INSERT INTO user_log VALUES("478","Login","10","Login to site","2012-06-18 02:02:56","","");
INSERT INTO user_log VALUES("479","Login","1","Login to site","2012-06-18 02:52:20","","");
INSERT INTO user_log VALUES("480","Login","1","Login to site","2012-06-18 03:23:08","","");
INSERT INTO user_log VALUES("481","Logout","1","Logout from site","2012-06-18 03:31:06","","");
INSERT INTO user_log VALUES("482","Login","1","Login to site","2012-06-18 03:31:39","","");
INSERT INTO user_log VALUES("483","Update","1","Update user group and privilige","2012-06-18 04:02:31","user_group","1");
INSERT INTO user_log VALUES("484","Logout","1","Logout from site","2012-06-18 04:03:58","","");
INSERT INTO user_log VALUES("485","Login","1","Login to site","2012-06-18 04:04:08","","");
INSERT INTO user_log VALUES("486","Create","1","Create a payment voucher","2012-06-18 04:04:45","payment_voucher","7");
INSERT INTO user_log VALUES("487","Approved","1","Approved a payment voucher","2012-06-18 04:05:01","payment_voucher","7");
INSERT INTO user_log VALUES("488","Logout","1","Logout from site","2012-06-18 04:05:36","","");
INSERT INTO user_log VALUES("489","Login","1","Login to site","2012-06-18 09:29:00","","");
INSERT INTO user_log VALUES("490","Logout","1","Logout from site","2012-06-18 09:34:11","","");
INSERT INTO user_log VALUES("491","Login","10","Login to site","2012-06-18 09:34:20","","");
INSERT INTO user_log VALUES("492","Logout","10","Logout from site","2012-06-18 09:34:43","","");
INSERT INTO user_log VALUES("493","Login","10","Login to site","2012-06-18 09:34:57","","");
INSERT INTO user_log VALUES("494","Create","10","Create a user","2012-06-18 09:38:58","user_info","16");
INSERT INTO user_log VALUES("495","Logout","10","Logout from site","2012-06-18 09:39:27","","");
INSERT INTO user_log VALUES("496","Login","16","Login to site","2012-06-18 09:39:35","","");
INSERT INTO user_log VALUES("497","Logout","16","Logout from site","2012-06-18 09:40:00","","");
INSERT INTO user_log VALUES("498","Login","10","Login to site","2012-06-18 09:40:06","","");
INSERT INTO user_log VALUES("499","Update","10","Update a user","2012-06-18 09:40:30","user_info","16");
INSERT INTO user_log VALUES("500","Logout","10","Logout from site","2012-06-18 09:40:36","","");
INSERT INTO user_log VALUES("501","Login","16","Login to site","2012-06-18 09:40:48","","");
INSERT INTO user_log VALUES("502","Login","10","Login to site","2012-06-18 10:18:18","","");
INSERT INTO user_log VALUES("503","Login","10","Login to site","2012-06-18 12:03:48","","");
INSERT INTO user_log VALUES("504","Logout","10","Logout from site","2012-06-18 12:03:54","","");
INSERT INTO user_log VALUES("505","Login","1","Login to site","2012-06-18 12:04:04","","");
INSERT INTO user_log VALUES("506","Login","1","Login to site","2012-06-18 14:19:51","","");
INSERT INTO user_log VALUES("507","Login","1","Login to site","2012-06-18 17:16:10","","");
INSERT INTO user_log VALUES("508","Login","1","Login to site","2012-06-18 22:57:07","","");
INSERT INTO user_log VALUES("509","Login","1","Login to site","2012-06-19 00:02:57","","");
INSERT INTO user_log VALUES("510","Login","1","Login to site","2012-06-19 01:52:01","","");
INSERT INTO user_log VALUES("511","Logout","1","Logout from site","2012-06-19 02:14:16","","");
INSERT INTO user_log VALUES("512","Login","1","Login to site","2012-06-19 12:48:17","","");
INSERT INTO user_log VALUES("513","Login","1","Login to site","2012-06-19 12:50:10","","");
INSERT INTO user_log VALUES("514","Update","1","Update a user","2012-06-19 13:01:02","user_info","9");
INSERT INTO user_log VALUES("515","Logout","1","Logout from site","2012-06-19 13:04:24","","");
INSERT INTO user_log VALUES("516","Login","1","Login to site","2012-06-19 13:04:48","","");
INSERT INTO user_log VALUES("517","Update","1","Update a user","2012-06-19 13:06:51","user_info","16");
INSERT INTO user_log VALUES("518","Logout","1","Logout from site","2012-06-19 13:06:57","","");
INSERT INTO user_log VALUES("519","Login","10","Login to site","2012-06-19 13:07:12","","");
INSERT INTO user_log VALUES("520","Logout","10","Logout from site","2012-06-19 13:14:01","","");
INSERT INTO user_log VALUES("521","Login","1","Login to site","2012-06-19 13:14:09","","");
INSERT INTO user_log VALUES("522","Update","1","Update user group and privilige","2012-06-19 13:17:16","user_group","2");
INSERT INTO user_log VALUES("523","Logout","1","Logout from site","2012-06-19 13:17:39","","");
INSERT INTO user_log VALUES("524","Login","10","Login to site","2012-06-19 13:17:48","","");
INSERT INTO user_log VALUES("525","Login","1","Login to site","2012-06-19 21:48:01","","");
INSERT INTO user_log VALUES("526","Login","1","Login to site","2012-06-19 21:50:25","","");
INSERT INTO user_log VALUES("527","Logout","1","Logout from site","2012-06-19 21:56:56","","");
INSERT INTO user_log VALUES("528","Login","10","Login to site","2012-06-19 21:57:08","","");
INSERT INTO user_log VALUES("529","Logout","10","Logout from site","2012-06-19 21:57:28","","");
INSERT INTO user_log VALUES("530","Login","1","Login to site","2012-06-19 21:57:41","","");
INSERT INTO user_log VALUES("531","Update","1","Update user group and privilige","2012-06-19 22:00:01","user_group","2");
INSERT INTO user_log VALUES("532","Update","1","Update user group and privilige","2012-06-19 22:00:48","user_group","2");
INSERT INTO user_log VALUES("533","Logout","1","Logout from site","2012-06-19 22:00:51","","");
INSERT INTO user_log VALUES("534","Login","10","Login to site","2012-06-19 22:00:58","","");
INSERT INTO user_log VALUES("535","Create","10","Create Receipt","2012-06-19 22:06:26","receipts","20");
INSERT INTO user_log VALUES("536","Create","10","Create Receipt","2012-06-19 22:08:16","receipts","21");
INSERT INTO user_log VALUES("537","Create","10","Create Receipt","2012-06-19 22:09:28","receipts","22");
INSERT INTO user_log VALUES("538","Create","10","Create a cash deposit","2012-06-19 22:11:49","cash_deposit","4");
INSERT INTO user_log VALUES("539","Create","10","Create a due collection","2012-06-19 22:12:36","due_collection","3");
INSERT INTO user_log VALUES("540","Create","10","Create a cash deposit","2012-06-19 22:13:17","cash_deposit","5");
INSERT INTO user_log VALUES("541","Delete","10","Delete a receipt","2012-06-19 22:14:20","receipts","13");
INSERT INTO user_log VALUES("542","Delete","10","Delete a receipt","2012-06-19 22:14:37","receipts","12");
INSERT INTO user_log VALUES("543","Delete","10","Delete a receipt","2012-06-19 22:14:49","receipts","1");
INSERT INTO user_log VALUES("544","Delete","10","Delete a receipt","2012-06-19 22:14:55","receipts","2");
INSERT INTO user_log VALUES("545","Delete","10","Delete a receipt","2012-06-19 22:15:00","receipts","3");
INSERT INTO user_log VALUES("546","Delete","10","Delete a receipt","2012-06-19 22:15:05","receipts","4");
INSERT INTO user_log VALUES("547","Delete","10","Delete a receipt","2012-06-19 22:15:11","receipts","5");
INSERT INTO user_log VALUES("548","Delete","10","Delete a receipt","2012-06-19 22:15:18","receipts","6");
INSERT INTO user_log VALUES("549","Delete","10","Delete a receipt","2012-06-19 22:15:24","receipts","7");
INSERT INTO user_log VALUES("550","Delete","10","Delete a receipt","2012-06-19 22:15:40","receipts","8");
INSERT INTO user_log VALUES("551","Delete","10","Delete a receipt","2012-06-19 22:15:46","receipts","9");
INSERT INTO user_log VALUES("552","Delete","10","Delete a receipt","2012-06-19 22:15:52","receipts","10");
INSERT INTO user_log VALUES("553","Delete","10","Delete a receipt","2012-06-19 22:16:02","receipts","11");
INSERT INTO user_log VALUES("554","Delete","10","Delete a due collection","2012-06-19 22:16:24","due_collection","3");
INSERT INTO user_log VALUES("555","Delete","10","Delete a due collection","2012-06-19 22:16:29","due_collection","2");
INSERT INTO user_log VALUES("556","Delete","10","Delete a due collection","2012-06-19 22:16:34","due_collection","1");
INSERT INTO user_log VALUES("557","Delete","10","Delete a receipt","2012-06-19 22:16:53","receipts","14");
INSERT INTO user_log VALUES("558","Delete","10","Delete a receipt","2012-06-19 22:16:58","receipts","15");
INSERT INTO user_log VALUES("559","Delete","10","Delete a receipt","2012-06-19 22:17:05","receipts","16");
INSERT INTO user_log VALUES("560","Delete","10","Delete a receipt","2012-06-19 22:17:10","receipts","17");
INSERT INTO user_log VALUES("561","Delete","10","Delete a receipt","2012-06-19 22:17:15","receipts","18");
INSERT INTO user_log VALUES("562","Delete","10","Delete a receipt","2012-06-19 22:17:19","receipts","19");
INSERT INTO user_log VALUES("563","Delete","10","Delete a cash deposit","2012-06-19 22:17:57","cash_deposit","5");
INSERT INTO user_log VALUES("564","Delete","10","Delete a cash deposit","2012-06-19 22:18:04","cash_deposit","4");
INSERT INTO user_log VALUES("565","Delete","10","Delete a cash deposit","2012-06-19 22:18:08","cash_deposit","3");
INSERT INTO user_log VALUES("566","Delete","10","Delete a cash deposit","2012-06-19 22:18:13","cash_deposit","2");
INSERT INTO user_log VALUES("567","Delete","10","Delete a cash deposit","2012-06-19 22:18:16","cash_deposit","1");
INSERT INTO user_log VALUES("568","Create","10","Create a due collection","2012-06-19 22:36:28","due_collection","4");
INSERT INTO user_log VALUES("569","Create","10","Create a payment voucher","2012-06-19 22:37:07","payment_voucher","8");
INSERT INTO user_log VALUES("570","Approved","10","Approved a payment voucher","2012-06-19 22:37:13","payment_voucher","8");
INSERT INTO user_log VALUES("571","Login","10","Login to site","2012-06-19 22:50:59","","");
INSERT INTO user_log VALUES("572","Login","10","Login to site","2012-06-19 22:51:25","","");
INSERT INTO user_log VALUES("573","Update","10","Update a user","2012-06-19 22:52:24","user_info","9");
INSERT INTO user_log VALUES("574","Logout","10","Logout from site","2012-06-19 22:52:35","","");
INSERT INTO user_log VALUES("575","Login","9","Login to site","2012-06-19 22:53:08","","");
INSERT INTO user_log VALUES("576","Create","9","Create a payment voucher","2012-06-19 22:53:46","payment_voucher","9");
INSERT INTO user_log VALUES("577","Logout","9","Logout from site","2012-06-19 22:54:03","","");
INSERT INTO user_log VALUES("578","Login","10","Login to site","2012-06-19 22:54:18","","");
INSERT INTO user_log VALUES("579","Login","1","Login to site","2012-06-19 23:03:08","","");
INSERT INTO user_log VALUES("580","Approved","10","Approved a payment voucher","2012-06-19 23:04:07","payment_voucher","9");
INSERT INTO user_log VALUES("581","Print","10","Print a payment voucher","2012-06-19 23:06:12","payment_voucher","9");
INSERT INTO user_log VALUES("582","Print","10","Print a payment voucher","2012-06-19 23:08:28","payment_voucher","9");
INSERT INTO user_log VALUES("583","Create","1","Create a payment voucher","2012-06-19 23:09:35","payment_voucher","10");
INSERT INTO user_log VALUES("584","Approved","1","Approved a payment voucher","2012-06-19 23:09:47","payment_voucher","10");
INSERT INTO user_log VALUES("585","Print","1","Print a payment voucher","2012-06-19 23:10:12","payment_voucher","10");
INSERT INTO user_log VALUES("586","Logout","10","Logout from site","2012-06-19 23:15:05","","");
INSERT INTO user_log VALUES("587","Login","1","Login to site","2012-06-19 23:15:13","","");
INSERT INTO user_log VALUES("588","Print","1","Print a payment voucher","2012-06-19 23:15:32","payment_voucher","10");
INSERT INTO user_log VALUES("589","Login","1","Login to site","2012-06-19 23:31:50","","");
INSERT INTO user_log VALUES("590","Login","1","Login to site","2012-06-19 23:38:31","","");
INSERT INTO user_log VALUES("591","Login","1","Login to site","2012-06-20 00:37:16","","");
INSERT INTO user_log VALUES("592","Login","1","Login to site","2012-06-20 03:06:47","","");
INSERT INTO user_log VALUES("593","Create","1","Create a payment voucher","2012-06-20 03:18:01","payment_voucher","1");
INSERT INTO user_log VALUES("594","Print","1","Print a payment voucher","2012-06-20 03:18:31","payment_voucher","1");
INSERT INTO user_log VALUES("595","Approved","1","Approved a payment voucher","2012-06-20 03:19:13","payment_voucher","1");
INSERT INTO user_log VALUES("596","Print","1","Print a payment voucher","2012-06-20 03:20:37","payment_voucher","1");
INSERT INTO user_log VALUES("597","Login","1","Login to site","2012-06-20 04:21:11","","");
INSERT INTO user_log VALUES("598","Login","1","Login to site","2012-06-20 04:34:48","","");
INSERT INTO user_log VALUES("599","Logout","1","Logout from site","2012-06-20 04:36:18","","");
INSERT INTO user_log VALUES("600","Login","1","Login to site","2012-06-20 11:19:09","","");
INSERT INTO user_log VALUES("601","Login","1","Login to site","2012-06-20 11:52:58","","");
INSERT INTO user_log VALUES("602","Logout","1","Logout from site","2012-06-20 11:55:17","","");
INSERT INTO user_log VALUES("603","Login","1","Login to site","2012-06-20 14:39:46","","");
INSERT INTO user_log VALUES("604","Update","1","Update user group and privilige","2012-06-20 14:46:04","user_group","2");
INSERT INTO user_log VALUES("605","Logout","1","Logout from site","2012-06-20 14:46:04","","");
INSERT INTO user_log VALUES("606","Logout","1","Logout from site","2012-06-20 14:46:04","","");
INSERT INTO user_log VALUES("607","Login","10","Login to site","2012-06-20 14:46:39","","");
INSERT INTO user_log VALUES("608","Logout","10","Logout from site","2012-06-20 14:47:20","","");
INSERT INTO user_log VALUES("609","Login","1","Login to site","2012-06-20 14:47:43","","");
INSERT INTO user_log VALUES("610","Update","1","Update user group and privilige","2012-06-20 14:58:23","user_group","2");
INSERT INTO user_log VALUES("611","Login","1","Login to site","2012-06-20 14:59:29","","");
INSERT INTO user_log VALUES("612","Logout","1","Logout from site","2012-06-20 15:00:40","","");
INSERT INTO user_log VALUES("613","Login","1","Login to site","2012-06-20 15:00:48","","");
INSERT INTO user_log VALUES("614","Update","1","Update user group and privilige","2012-06-20 15:04:08","user_group","2");
INSERT INTO user_log VALUES("615","Update","1","Update user group and privilige","2012-06-20 15:04:21","user_group","2");
INSERT INTO user_log VALUES("616","Update","1","Update user group and privilige","2012-06-20 15:04:55","user_group","2");
INSERT INTO user_log VALUES("617","Login","10","Login to site","2012-06-20 15:44:30","","");
INSERT INTO user_log VALUES("618","Login","1","Login to site","2012-06-20 16:30:26","","");
INSERT INTO user_log VALUES("619","Create","1","Create a payment voucher","2012-06-20 16:31:48","payment_voucher","2");
INSERT INTO user_log VALUES("620","Print","1","Print a payment voucher","2012-06-20 16:32:10","payment_voucher","2");
INSERT INTO user_log VALUES("621","Login","1","Login to site","2012-06-20 17:49:11","","");
INSERT INTO user_log VALUES("622","Create","1","Create a payment voucher","2012-06-20 17:53:01","payment_voucher","3");
INSERT INTO user_log VALUES("623","Print","1","Print a payment voucher","2012-06-20 17:53:05","payment_voucher","3");
INSERT INTO user_log VALUES("624","Approved","1","Approved a payment voucher","2012-06-20 17:53:21","payment_voucher","3");
INSERT INTO user_log VALUES("625","Print","1","Print a payment voucher","2012-06-20 17:53:30","payment_voucher","3");
INSERT INTO user_log VALUES("626","Print","1","Print a payment voucher","2012-06-20 17:54:38","payment_voucher","3");
INSERT INTO user_log VALUES("627","Login","1","Login to site","2012-06-20 23:56:55","","");
INSERT INTO user_log VALUES("628","Login","1","Login to site","2012-06-21 00:07:25","","");
INSERT INTO user_log VALUES("629","Create","1","Create Receipt","2012-06-21 00:09:17","receipts","23");
INSERT INTO user_log VALUES("630","Create","1","Create Receipt","2012-06-21 00:09:18","receipts","24");
INSERT INTO user_log VALUES("631","Create","1","Create Receipt","2012-06-21 00:11:12","receipts","25");
INSERT INTO user_log VALUES("632","Login","1","Login to site","2012-06-21 00:16:11","","");
INSERT INTO user_log VALUES("633","Create","1","Create Receipt","2012-06-21 00:17:12","receipts","26");
INSERT INTO user_log VALUES("634","Login","1","Login to site","2012-06-21 00:46:40","","");
INSERT INTO user_log VALUES("635","Login","1","Login to site","2012-06-21 00:46:59","","");
INSERT INTO user_log VALUES("636","Login","1","Login to site","2012-06-21 02:48:05","","");
INSERT INTO user_log VALUES("637","Logout","1","Logout from site","2012-06-21 02:49:33","","");
INSERT INTO user_log VALUES("638","Login","10","Login to site","2012-06-21 02:49:52","","");
INSERT INTO user_log VALUES("639","Login","10","Login to site","2012-06-21 02:50:10","","");
INSERT INTO user_log VALUES("640","Logout","10","Logout from site","2012-06-21 02:50:25","","");
INSERT INTO user_log VALUES("641","Login","1","Login to site","2012-06-21 13:13:42","","");
INSERT INTO user_log VALUES("642","Login","1","Login to site","2012-06-21 13:28:47","","");
INSERT INTO user_log VALUES("643","Login","1","Login to site","2012-06-21 14:27:19","","");
INSERT INTO user_log VALUES("644","Login","1","Login to site","2012-06-21 22:23:47","","");
INSERT INTO user_log VALUES("645","Login","1","Login to site","2012-06-21 22:32:03","","");
INSERT INTO user_log VALUES("646","Login","1","Login to site","2012-06-21 22:33:01","","");
INSERT INTO user_log VALUES("647","Login","1","Login to site","2012-06-21 22:47:34","","");
INSERT INTO user_log VALUES("648","Login","1","Login to site","2012-06-21 23:55:07","","");
INSERT INTO user_log VALUES("649","Login","1","Login to site","2012-06-21 23:57:21","","");
INSERT INTO user_log VALUES("650","Logout","1","Logout from site","2012-06-21 23:57:25","","");
INSERT INTO user_log VALUES("651","Login","10","Login to site","2012-06-21 23:57:30","","");
INSERT INTO user_log VALUES("652","Create","10","Create Receipt","2012-06-21 23:59:19","receipts","27");
INSERT INTO user_log VALUES("653","Delete","10","Delete a user name is test3","2012-06-22 00:04:12","user_info","16");
INSERT INTO user_log VALUES("654","Logout","1","Logout from site","2012-06-22 00:05:40","","");
INSERT INTO user_log VALUES("655","Logout","10","Logout from site","2012-06-22 00:08:49","","");
INSERT INTO user_log VALUES("656","Login","1","Login to site","2012-06-22 00:08:55","","");
INSERT INTO user_log VALUES("657","Logout","1","Logout from site","2012-06-22 00:17:38","","");
INSERT INTO user_log VALUES("658","Login","10","Login to site","2012-06-22 00:17:46","","");
INSERT INTO user_log VALUES("659","Create","10","Create user group and privilige","2012-06-22 00:20:20","user_group","4");
INSERT INTO user_log VALUES("660","Login","10","Login to site","2012-06-22 10:17:47","","");
INSERT INTO user_log VALUES("661","Login","1","Login to site","2012-06-22 11:40:44","","");
INSERT INTO user_log VALUES("662","Login","1","Login to site","2012-06-22 14:16:33","","");
INSERT INTO user_log VALUES("663","Login","1","Login to site","2012-06-22 14:24:35","","");
INSERT INTO user_log VALUES("664","Create","1","Create a payment voucher","2012-06-22 14:26:02","payment_voucher","4");
INSERT INTO user_log VALUES("665","Login","1","Login to site","2012-06-22 14:37:55","","");
INSERT INTO user_log VALUES("666","Create","1","Create a payment voucher","2012-06-22 14:41:12","payment_voucher","5");
INSERT INTO user_log VALUES("667","Print","1","Print a payment voucher","2012-06-22 14:41:13","payment_voucher","5");
INSERT INTO user_log VALUES("668","Login","1","Login to site","2012-06-22 15:35:31","","");
INSERT INTO user_log VALUES("669","Login","1","Login to site","2012-06-22 16:45:34","","");
INSERT INTO user_log VALUES("670","Login","1","Login to site","2012-06-22 17:54:45","","");
INSERT INTO user_log VALUES("671","Update","1","Update user group and privilige","2012-06-22 17:55:38","user_group","2");
INSERT INTO user_log VALUES("672","Update","1","Update user group and privilige","2012-06-22 17:58:42","user_group","2");
INSERT INTO user_log VALUES("673","Logout","1","Logout from site","2012-06-22 17:59:36","","");
INSERT INTO user_log VALUES("674","Login","10","Login to site","2012-06-22 17:59:41","","");
INSERT INTO user_log VALUES("675","Login","10","Login to site","2012-06-22 21:17:50","","");
INSERT INTO user_log VALUES("676","Login","10","Login to site","2012-06-22 21:38:58","","");
INSERT INTO user_log VALUES("677","Login","1","Login to site","2012-06-23 10:34:14","","");
INSERT INTO user_log VALUES("678","Login","1","Login to site","2012-06-23 12:07:05","","");
INSERT INTO user_log VALUES("679","Create","1","Create Receipt","2012-06-23 12:08:01","receipts","28");
INSERT INTO user_log VALUES("680","Login","1","Login to site","2012-06-23 16:07:40","","");
INSERT INTO user_log VALUES("681","Update","1","Update a receipt","2012-06-23 16:09:47","receipts","28");
INSERT INTO user_log VALUES("682","Update","1","Update a receipt","2012-06-23 16:10:23","receipts","28");
INSERT INTO user_log VALUES("683","Create","1","Create Receipt","2012-06-23 16:14:04","receipts","29");
INSERT INTO user_log VALUES("684","Login","1","Login to site","2012-06-23 16:29:56","","");
INSERT INTO user_log VALUES("685","Update","1","Update a receipt","2012-06-23 16:30:02","receipts","29");
INSERT INTO user_log VALUES("686","Login","1","Login to site","2012-06-23 17:13:36","","");
INSERT INTO user_log VALUES("687","Login","1","Login to site","2012-06-23 22:39:13","","");
INSERT INTO user_log VALUES("688","Login","1","Login to site","2012-06-24 00:50:15","","");
INSERT INTO user_log VALUES("689","Login","1","Login to site","2012-06-24 11:56:27","","");
INSERT INTO user_log VALUES("690","Logout","1","Logout from site","2012-06-24 11:57:55","","");
INSERT INTO user_log VALUES("691","Login","6","Login to site","2012-06-24 11:58:02","","");
INSERT INTO user_log VALUES("692","Update","6","Update a payment voucher","2012-06-24 11:58:31","payment_voucher","5");
INSERT INTO user_log VALUES("693","Login","1","Login to site","2012-06-24 12:35:56","","");
INSERT INTO user_log VALUES("694","Login","1","Login to site","2012-06-24 13:04:30","","");
INSERT INTO user_log VALUES("695","Login","1","Login to site","2012-06-24 14:55:39","","");
INSERT INTO user_log VALUES("696","Create","1","Create a payment voucher","2012-06-24 14:56:36","payment_voucher","6");
INSERT INTO user_log VALUES("697","Print","1","Print a payment voucher","2012-06-24 14:56:39","payment_voucher","6");
INSERT INTO user_log VALUES("698","Update","1","Update a receipt","2012-06-24 14:59:23","receipts","29");
INSERT INTO user_log VALUES("699","Update","1","Update a receipt","2012-06-24 15:12:27","receipts","28");
INSERT INTO user_log VALUES("700","Create","1","Create a cash deposit","2012-06-24 15:13:44","cash_deposit","1");
INSERT INTO user_log VALUES("701","Create","1","Create Receipt","2012-06-24 15:20:11","receipts","30");
INSERT INTO user_log VALUES("702","Create","1","Create Receipt","2012-06-24 15:52:15","receipts","31");
INSERT INTO user_log VALUES("703","Login","1","Login to site","2012-06-24 15:53:35","","");
INSERT INTO user_log VALUES("704","Create","1","Create Receipt","2012-06-24 15:53:46","receipts","32");
INSERT INTO user_log VALUES("705","Login","1","Login to site","2012-06-24 16:05:22","","");
INSERT INTO user_log VALUES("706","Approved","1","Approved a payment voucher","2012-06-24 16:10:20","payment_voucher","6");
INSERT INTO user_log VALUES("707","Approved","1","Approved a payment voucher","2012-06-24 16:10:27","payment_voucher","5");
INSERT INTO user_log VALUES("708","Approved","1","Approved a payment voucher","2012-06-24 16:10:31","payment_voucher","4");
INSERT INTO user_log VALUES("709","Approved","1","Approved a payment voucher","2012-06-24 16:10:39","payment_voucher","2");
INSERT INTO user_log VALUES("710","Create","1","Create Receipt","2012-06-24 16:13:38","receipts","33");
INSERT INTO user_log VALUES("711","Login","1","Login to site","2012-06-24 16:38:53","","");
INSERT INTO user_log VALUES("712","Create","1","Create Receipt","2012-06-24 16:40:19","receipts","34");
INSERT INTO user_log VALUES("713","Create","1","Create Receipt","2012-06-24 16:41:02","receipts","35");
INSERT INTO user_log VALUES("714","Create","1","Create Receipt","2012-06-24 16:43:28","receipts","36");
INSERT INTO user_log VALUES("715","Create","1","Create a due collection","2012-06-24 16:44:01","due_collection","5");
INSERT INTO user_log VALUES("716","Create","1","Create Receipt","2012-06-24 17:13:15","receipts","37");
INSERT INTO user_log VALUES("717","Login","1","Login to site","2012-06-24 17:23:53","","");
INSERT INTO user_log VALUES("718","Login","1","Login to site","2012-06-24 18:00:10","","");
INSERT INTO user_log VALUES("719","Login","1","Login to site","2012-06-24 18:18:52","","");
INSERT INTO user_log VALUES("720","Login","1","Login to site","2012-06-24 18:32:16","","");
INSERT INTO user_log VALUES("721","Login","1","Login to site","2012-06-24 18:32:21","","");
INSERT INTO user_log VALUES("722","Login","1","Login to site","2012-06-24 18:53:55","","");
INSERT INTO user_log VALUES("723","Create","1","Create Receipt","2012-06-24 18:56:15","receipts","38");
INSERT INTO user_log VALUES("724","Login","1","Login to site","2012-06-24 19:44:08","","");
INSERT INTO user_log VALUES("725","Login","1","Login to site","2012-06-24 20:07:28","","");
INSERT INTO user_log VALUES("726","Login","1","Login to site","2012-06-24 20:31:42","","");
INSERT INTO user_log VALUES("727","Login","1","Login to site","2012-06-24 21:11:40","","");
INSERT INTO user_log VALUES("728","Login","1","Login to site","2012-06-24 22:53:05","","");
INSERT INTO user_log VALUES("729","Login","1","Login to site","2012-06-24 22:57:39","","");
INSERT INTO user_log VALUES("730","Login","1","Login to site","2012-06-24 23:41:55","","");
INSERT INTO user_log VALUES("731","Login","1","Login to site","2012-06-24 23:56:11","","");
INSERT INTO user_log VALUES("732","Login","1","Login to site","2012-06-24 23:56:16","","");
INSERT INTO user_log VALUES("733","Login","1","Login to site","2012-06-25 10:48:07","","");
INSERT INTO user_log VALUES("734","Login","1","Login to site","2012-06-25 11:03:32","","");
INSERT INTO user_log VALUES("735","Login","1","Login to site","2012-06-25 11:17:38","","");
INSERT INTO user_log VALUES("736","Update","1","Update a receipt","2012-06-25 11:18:35","receipts","38");
INSERT INTO user_log VALUES("737","Login","1","Login to site","2012-06-25 11:48:46","","");
INSERT INTO user_log VALUES("738","Update","1","Update a receipt","2012-06-25 11:49:05","receipts","35");
INSERT INTO user_log VALUES("739","Update","1","Update a receipt","2012-06-25 11:49:21","receipts","36");
INSERT INTO user_log VALUES("740","Update","1","Update a receipt","2012-06-25 11:49:36","receipts","37");
INSERT INTO user_log VALUES("741","Update","1","Update a receipt","2012-06-25 11:50:07","receipts","34");
INSERT INTO user_log VALUES("742","Login","1","Login to site","2012-06-25 12:16:04","","");
INSERT INTO user_log VALUES("743","Login","1","Login to site","2012-06-25 13:20:21","","");
INSERT INTO user_log VALUES("744","Update","1","Update a receipt","2012-06-25 13:20:55","receipts","38");
INSERT INTO user_log VALUES("745","Login","1","Login to site","2012-06-25 14:15:20","","");
INSERT INTO user_log VALUES("746","Update","1","Update a receipt","2012-06-25 14:16:13","receipts","38");
INSERT INTO user_log VALUES("747","Login","1","Login to site","2012-06-25 14:54:51","","");
INSERT INTO user_log VALUES("748","Login","1","Login to site","2012-06-25 15:02:40","","");
INSERT INTO user_log VALUES("749","Login","1","Login to site","2012-06-25 15:48:32","","");
INSERT INTO user_log VALUES("750","Login","10","Login to site","2012-06-25 16:00:55","","");
INSERT INTO user_log VALUES("751","Login","10","Login to site","2012-06-25 16:13:15","","");
INSERT INTO user_log VALUES("752","Login","10","Login to site","2012-06-25 17:15:32","","");
INSERT INTO user_log VALUES("753","Login","10","Login to site","2012-06-25 19:48:20","","");
INSERT INTO user_log VALUES("754","Login","10","Login to site","2012-06-25 20:33:21","","");
INSERT INTO user_log VALUES("755","Login","10","Login to site","2012-06-25 20:33:50","","");
INSERT INTO user_log VALUES("756","Login","10","Login to site","2012-06-25 20:46:30","","");
INSERT INTO user_log VALUES("757","Login","10","Login to site","2012-06-25 21:04:40","","");
INSERT INTO user_log VALUES("758","Login","10","Login to site","2012-06-25 22:42:45","","");
INSERT INTO user_log VALUES("759","Login","10","Login to site","2012-06-25 22:43:05","","");
INSERT INTO user_log VALUES("760","Login","10","Login to site","2012-06-25 22:44:22","","");
INSERT INTO user_log VALUES("761","Login","10","Login to site","2012-06-25 23:08:01","","");
INSERT INTO user_log VALUES("762","Login","10","Login to site","2012-06-25 23:30:05","","");
INSERT INTO user_log VALUES("763","Update","10","Update a receipt","2012-06-25 23:50:32","receipts","36");
INSERT INTO user_log VALUES("764","Login","10","Login to site","2012-06-26 12:21:01","","");
INSERT INTO user_log VALUES("765","Login","1","Login to site","2012-06-26 12:35:07","","");
INSERT INTO user_log VALUES("766","Login","10","Login to site","2012-06-26 12:47:00","","");
INSERT INTO user_log VALUES("767","Login","1","Login to site","2012-06-26 12:54:41","","");
INSERT INTO user_log VALUES("768","Login","1","Login to site","2012-06-26 13:06:26","","");
INSERT INTO user_log VALUES("769","Login","10","Login to site","2012-06-26 13:07:01","","");
INSERT INTO user_log VALUES("770","Create","10","Create Receipt","2012-06-26 13:09:25","receipts","39");
INSERT INTO user_log VALUES("771","Create","10","Create Receipt","2012-06-26 13:10:24","receipts","40");
INSERT INTO user_log VALUES("772","Create","10","Create a due collection","2012-06-26 13:11:03","due_collection","6");
INSERT INTO user_log VALUES("773","Create","10","Create Receipt","2012-06-26 13:14:57","receipts","41");
INSERT INTO user_log VALUES("774","Login","1","Login to site","2012-06-26 13:23:07","","");
INSERT INTO user_log VALUES("775","Login","10","Login to site","2012-06-26 13:58:21","","");
INSERT INTO user_log VALUES("776","Create","10","Create Receipt","2012-06-26 14:33:49","receipts","42");
INSERT INTO user_log VALUES("777","Login","10","Login to site","2012-06-26 15:32:22","","");
INSERT INTO user_log VALUES("778","Login","10","Login to site","2012-06-26 16:01:52","","");
INSERT INTO user_log VALUES("779","Create","10","Create Receipt","2012-06-26 16:12:49","receipts","43");
INSERT INTO user_log VALUES("780","Login","10","Login to site","2012-06-26 16:37:33","","");
INSERT INTO user_log VALUES("781","Login","10","Login to site","2012-06-26 16:37:51","","");
INSERT INTO user_log VALUES("782","Login","10","Login to site","2012-06-26 16:38:16","","");
INSERT INTO user_log VALUES("783","Login","10","Login to site","2012-06-26 16:39:33","","");
INSERT INTO user_log VALUES("784","Login","1","Login to site","2012-06-26 17:02:05","","");
INSERT INTO user_log VALUES("785","Login","10","Login to site","2012-06-26 21:43:41","","");
INSERT INTO user_log VALUES("786","Login","10","Login to site","2012-06-27 00:08:16","","");
INSERT INTO user_log VALUES("787","Login","10","Login to site","2012-06-27 10:08:36","","");
INSERT INTO user_log VALUES("788","Login","1","Login to site","2012-06-27 23:03:35","","");
INSERT INTO user_log VALUES("789","Login","1","Login to site","2012-06-28 00:15:42","","");
INSERT INTO user_log VALUES("790","Login","10","Login to site","2012-06-28 00:50:12","","");
INSERT INTO user_log VALUES("791","Login","10","Login to site","2012-06-28 00:50:12","","");
INSERT INTO user_log VALUES("792","Logout","10","Logout from site","2012-06-28 01:06:03","","");
INSERT INTO user_log VALUES("793","Login","1","Login to site","2012-06-28 01:43:07","","");
INSERT INTO user_log VALUES("794","Create","1","Create a due collection","2012-06-28 01:44:09","due_collection","1");
INSERT INTO user_log VALUES("795","Login","10","Login to site","2012-06-28 10:19:55","","");
INSERT INTO user_log VALUES("796","Create","10","Create a due collection","2012-06-28 10:20:44","due_collection","2");
INSERT INTO user_log VALUES("797","Login","10","Login to site","2012-06-28 10:37:14","","");
INSERT INTO user_log VALUES("798","Login","10","Login to site","2012-06-28 10:54:42","","");
INSERT INTO user_log VALUES("799","Update","10","Update a user","2012-06-28 10:55:16","user_info","10");
INSERT INTO user_log VALUES("800","Logout","10","Logout from site","2012-06-28 10:55:23","","");
INSERT INTO user_log VALUES("801","Login","1","Login to site","2012-06-28 10:55:33","","");
INSERT INTO user_log VALUES("802","Update","1","Update a user","2012-06-28 10:55:44","user_info","1");
INSERT INTO user_log VALUES("803","Update","1","Update user group and privilige","2012-06-28 10:57:13","user_group","2");
INSERT INTO user_log VALUES("804","Update","1","Update user group and privilige","2012-06-28 10:58:25","user_group","3");
INSERT INTO user_log VALUES("805","Delete","1","Delete user group and privilige","2012-06-28 10:58:30","user_group","4");
INSERT INTO user_log VALUES("806","Delete","1","Delete a user name is test","2012-06-28 10:58:40","user_info","13");
INSERT INTO user_log VALUES("807","Delete","1","Delete a user name is lg","2012-06-28 10:58:46","user_info","12");
INSERT INTO user_log VALUES("808","Delete","1","Delete a user name is test1","2012-06-28 10:58:49","user_info","14");
INSERT INTO user_log VALUES("809","Delete","1","Delete a user name is Parvez","2012-06-28 10:58:53","user_info","15");
INSERT INTO user_log VALUES("810","Delete","1","Delete a user name is Rajib","2012-06-28 10:59:11","user_info","6");
INSERT INTO user_log VALUES("811","Delete","1","Delete a user name is Mehedi","2012-06-28 10:59:16","user_info","8");
INSERT INTO user_log VALUES("812","Update","1","Update a company","2012-06-28 11:01:06","company","1");
INSERT INTO user_log VALUES("813","Logout","1","Logout from site","2012-06-28 11:01:29","","");
INSERT INTO user_log VALUES("814","Login","10","Login to site","2012-06-28 11:01:33","","");
INSERT INTO user_log VALUES("815","Logout","10","Logout from site","2012-06-28 11:03:23","","");
INSERT INTO user_log VALUES("816","Login","1","Login to site","2012-06-28 11:03:29","","");
INSERT INTO user_log VALUES("817","Update","1","Update user group and privilige","2012-06-28 11:03:49","user_group","2");
INSERT INTO user_log VALUES("818","Logout","1","Logout from site","2012-06-28 11:03:51","","");
INSERT INTO user_log VALUES("819","Login","10","Login to site","2012-06-28 11:03:54","","");
INSERT INTO user_log VALUES("820","Update","10","Update a user","2012-06-28 11:10:17","user_info","10");
INSERT INTO user_log VALUES("821","Update","10","Update a user","2012-06-28 11:10:48","user_info","9");
INSERT INTO user_log VALUES("822","Logout","10","Logout from site","2012-06-28 11:11:30","","");
INSERT INTO user_log VALUES("823","Login","10","Login to site","2012-06-28 11:11:44","","");
INSERT INTO user_log VALUES("824","Update","10","Update a user","2012-06-28 11:13:46","user_info","10");
INSERT INTO user_log VALUES("825","Create","10","Create serial number","2012-06-28 11:15:53","serial_number","2");
INSERT INTO user_log VALUES("826","Logout","10","Logout from site","2012-06-28 11:16:32","","");
INSERT INTO user_log VALUES("827","Login","9","Login to site","2012-06-28 11:16:39","","");
INSERT INTO user_log VALUES("828","Login","10","Login to site","2012-06-28 11:30:55","","");
INSERT INTO user_log VALUES("829","Login","10","Login to site","2012-06-28 11:30:58","","");
INSERT INTO user_log VALUES("830","Create","10","Create a user","2012-06-28 11:32:45","user_info","16");
INSERT INTO user_log VALUES("831","Update","10","Update user group and privilige","2012-06-28 11:35:09","user_group","3");
INSERT INTO user_log VALUES("832","Login","16","Login to site","2012-06-28 11:36:25","","");
INSERT INTO user_log VALUES("833","Logout","16","Logout from site","2012-06-28 11:37:29","","");
INSERT INTO user_log VALUES("834","Create","10","Create a user","2012-06-28 11:38:13","user_info","17");
INSERT INTO user_log VALUES("835","Update","10","Update user group and privilige","2012-06-28 11:39:39","user_group","2");
INSERT INTO user_log VALUES("836","Login","17","Login to site","2012-06-28 11:40:13","","");
INSERT INTO user_log VALUES("837","Update","10","Update a user","2012-06-28 11:40:22","user_info","10");
INSERT INTO user_log VALUES("838","Update","17","Update a user","2012-06-28 11:41:21","user_info","17");
INSERT INTO user_log VALUES("839","Login","16","Login to site","2012-06-28 11:44:46","","");
INSERT INTO user_log VALUES("840","Delete","17","Delete serial number","2012-06-28 11:47:47","serial_number","1");
INSERT INTO user_log VALUES("841","Update","17","Update a user","2012-06-28 11:50:26","user_info","17");
INSERT INTO user_log VALUES("842","Create","16","Create Receipt","2012-06-28 11:53:57","receipts","44");
INSERT INTO user_log VALUES("843","Login","16","Login to site","2012-06-28 12:07:40","","");
INSERT INTO user_log VALUES("844","Login","9","Login to site","2012-06-28 12:07:45","","");
INSERT INTO user_log VALUES("845","Create","16","Create Receipt","2012-06-28 12:09:49","receipts","45");
INSERT INTO user_log VALUES("846","Logout","16","Logout from site","2012-06-28 12:12:15","","");
INSERT INTO user_log VALUES("847","Logout","10","Logout from site","2012-06-28 12:12:50","","");
INSERT INTO user_log VALUES("848","Login","10","Login to site","2012-06-28 12:13:21","","");
INSERT INTO user_log VALUES("849","Update","10","Update a user","2012-06-28 12:14:57","user_info","16");
INSERT INTO user_log VALUES("850","Logout","10","Logout from site","2012-06-28 12:15:21","","");
INSERT INTO user_log VALUES("851","Login","16","Login to site","2012-06-28 12:17:53","","");
INSERT INTO user_log VALUES("852","Login","16","Login to site","2012-06-28 12:17:54","","");
INSERT INTO user_log VALUES("853","Create","16","Create a prices Sector is KUL-DAC-KTM","2012-06-28 12:19:09","prices","19");
INSERT INTO user_log VALUES("854","Logout","16","Logout from site","2012-06-28 12:19:20","","");
INSERT INTO user_log VALUES("855","Login","16","Login to site","2012-06-28 12:26:46","","");
INSERT INTO user_log VALUES("856","Create","16","Create Receipt","2012-06-28 12:29:00","receipts","46");
INSERT INTO user_log VALUES("857","Create","16","Create a prices Sector is KUL-DAC-KUL","2012-06-28 12:32:12","prices","20");
INSERT INTO user_log VALUES("858","Create","16","Create Receipt","2012-06-28 12:34:03","receipts","47");
INSERT INTO user_log VALUES("859","Create","16","Create Receipt","2012-06-28 12:35:13","receipts","48");
INSERT INTO user_log VALUES("860","Create","16","Create Receipt","2012-06-28 12:36:06","receipts","49");
INSERT INTO user_log VALUES("861","Create","16","Create Receipt","2012-06-28 12:42:03","receipts","50");
INSERT INTO user_log VALUES("862","Create","16","Create Receipt","2012-06-28 12:44:23","receipts","51");
INSERT INTO user_log VALUES("863","Logout","16","Logout from site","2012-06-28 12:55:38","","");
INSERT INTO user_log VALUES("864","Login","16","Login to site","2012-06-28 12:55:58","","");
INSERT INTO user_log VALUES("865","Create","16","Create Receipt","2012-06-28 13:00:25","receipts","52");
INSERT INTO user_log VALUES("866","Update","9","Update a company","2012-06-28 13:00:44","company","1");
INSERT INTO user_log VALUES("867","Create","16","Create Receipt","2012-06-28 13:01:30","receipts","53");
INSERT INTO user_log VALUES("868","Create","16","Create Receipt","2012-06-28 13:02:16","receipts","54");
INSERT INTO user_log VALUES("869","Create","16","Create a agent name is YASIN SHETU","2012-06-28 13:04:49","agents","20");
INSERT INTO user_log VALUES("870","Create","16","Create a sector name is PEN/KUL/DAC/KUL/PEN","2012-06-28 13:06:32","sectors","10");
INSERT INTO user_log VALUES("871","Create","16","Create a prices Sector is PEN/KUL/DAC/KUL/PEN","2012-06-28 13:07:30","prices","21");
INSERT INTO user_log VALUES("872","Create","16","Create Receipt","2012-06-28 13:08:34","receipts","55");
INSERT INTO user_log VALUES("873","Create","16","Create Receipt","2012-06-28 13:09:42","receipts","56");
INSERT INTO user_log VALUES("874","Create","16","Create Receipt","2012-06-28 13:10:56","receipts","57");
INSERT INTO user_log VALUES("875","Create","16","Create Receipt","2012-06-28 13:12:03","receipts","58");
INSERT INTO user_log VALUES("876","Create","16","Create Receipt","2012-06-28 13:14:05","receipts","59");
INSERT INTO user_log VALUES("877","Logout","16","Logout from site","2012-06-28 13:14:20","","");
INSERT INTO user_log VALUES("878","Logout","9","Logout from site","2012-06-28 13:18:29","","");
INSERT INTO user_log VALUES("879","Login","9","Login to site","2012-06-28 13:20:06","","");
INSERT INTO user_log VALUES("880","Logout","9","Logout from site","2012-06-28 13:23:17","","");
INSERT INTO user_log VALUES("881","Login","9","Login to site","2012-06-28 13:23:27","","");
INSERT INTO user_log VALUES("882","Login","9","Login to site","2012-06-28 13:37:07","","");
INSERT INTO user_log VALUES("883","Logout","9","Logout from site","2012-06-28 13:49:22","","");
INSERT INTO user_log VALUES("884","Login","9","Login to site","2012-06-28 14:15:04","","");
INSERT INTO user_log VALUES("885","Login","10","Login to site","2012-06-28 14:15:57","","");
INSERT INTO user_log VALUES("886","Update","9","Update a company","2012-06-28 14:28:33","company","1");
INSERT INTO user_log VALUES("887","Login","16","Login to site","2012-06-28 14:30:12","","");
INSERT INTO user_log VALUES("888","Update","16","Update a sector name is KUL-KTM","2012-06-28 14:31:19","sectors","1");
INSERT INTO user_log VALUES("889","Update","16","Update a sector name is KUL-KTM","2012-06-28 14:31:25","sectors","1");
INSERT INTO user_log VALUES("890","Create","16","Create a prices Sector is KUL-KTM","2012-06-28 14:33:52","prices","22");
INSERT INTO user_log VALUES("891","Create","16","Create Receipt","2012-06-28 14:34:57","receipts","60");
INSERT INTO user_log VALUES("892","Create","16","Create Receipt","2012-06-28 14:36:44","receipts","61");
INSERT INTO user_log VALUES("893","Create","16","Create Receipt","2012-06-28 14:39:15","receipts","62");
INSERT INTO user_log VALUES("894","Logout","10","Logout from site","2012-06-28 14:39:42","","");
INSERT INTO user_log VALUES("895","Create","16","Create a sector name is KUL/DAC","2012-06-28 14:40:39","sectors","11");
INSERT INTO user_log VALUES("896","Create","16","Create a prices Sector is KUL/DAC","2012-06-28 14:41:17","prices","23");
INSERT INTO user_log VALUES("897","Create","16","Create Receipt","2012-06-28 14:42:31","receipts","63");
INSERT INTO user_log VALUES("898","Create","16","Create Receipt","2012-06-28 14:44:58","receipts","64");
INSERT INTO user_log VALUES("899","Create","16","Create a sector name is JHB/KUL/DAC/KUL/JHB","2012-06-28 14:45:50","sectors","12");
INSERT INTO user_log VALUES("900","Create","16","Create a prices Sector is JHB/KUL/DAC/KUL/JHB","2012-06-28 14:46:43","prices","24");
INSERT INTO user_log VALUES("901","Create","16","Create Receipt","2012-06-28 14:47:37","receipts","65");
INSERT INTO user_log VALUES("902","Login","10","Login to site","2012-06-28 14:48:45","","");
INSERT INTO user_log VALUES("903","Create","16","Create Receipt","2012-06-28 14:49:15","receipts","66");
INSERT INTO user_log VALUES("904","Update","10","Update user group and privilige","2012-06-28 14:49:23","user_group","2");
INSERT INTO user_log VALUES("905","Create","16","Create Receipt","2012-06-28 14:50:31","receipts","67");
INSERT INTO user_log VALUES("906","Create","16","Create a sector name is KUL/TRZ/KUL","2012-06-28 14:51:11","sectors","13");
INSERT INTO user_log VALUES("907","Login","9","Login to site","2012-06-28 14:51:33","","");
INSERT INTO user_log VALUES("908","Create","16","Create a prices Sector is KUL/TRZ/KUL","2012-06-28 14:51:34","prices","25");
INSERT INTO user_log VALUES("909","Update","10","Update user group and privilige","2012-06-28 14:51:41","user_group","2");
INSERT INTO user_log VALUES("910","Create","16","Create Receipt","2012-06-28 14:53:32","receipts","68");
INSERT INTO user_log VALUES("911","Logout","10","Logout from site","2012-06-28 14:54:06","","");
INSERT INTO user_log VALUES("912","Create","16","Create Receipt","2012-06-28 14:54:35","receipts","69");
INSERT INTO user_log VALUES("913","Create","16","Create Receipt","2012-06-28 14:57:20","receipts","70");
INSERT INTO user_log VALUES("914","Create","16","Create Receipt","2012-06-28 14:59:47","receipts","71");
INSERT INTO user_log VALUES("915","Create","16","Create a sector name is KUL/SUB/KUL","2012-06-28 15:00:20","sectors","14");
INSERT INTO user_log VALUES("916","Create","16","Create a prices Sector is KUL/SUB/KUL","2012-06-28 15:01:33","prices","26");
INSERT INTO user_log VALUES("917","Create","16","Create Receipt","2012-06-28 15:03:25","receipts","72");
INSERT INTO user_log VALUES("918","Create","16","Create Receipt","2012-06-28 15:04:26","receipts","73");
INSERT INTO user_log VALUES("919","Create","16","Create Receipt","2012-06-28 15:06:19","receipts","74");
INSERT INTO user_log VALUES("920","Create","16","Create a agent name is PS LEO TRAVEL","2012-06-28 15:09:41","agents","21");
INSERT INTO user_log VALUES("921","Create","16","Create a sector name is KUL/DEL/KUL","2012-06-28 15:10:18","sectors","15");
INSERT INTO user_log VALUES("922","Create","16","Create a prices Sector is KUL/DEL/KUL","2012-06-28 15:10:43","prices","27");
INSERT INTO user_log VALUES("923","Create","16","Create Receipt","2012-06-28 15:12:05","receipts","75");
INSERT INTO user_log VALUES("924","Login","17","Login to site","2012-06-28 15:13:16","","");
INSERT INTO user_log VALUES("925","Login","10","Login to site","2012-06-28 15:14:18","","");
INSERT INTO user_log VALUES("926","Create","10","Create a due collection","2012-06-28 15:16:07","due_collection","3");
INSERT INTO user_log VALUES("927","Create","17","Create Receipt","2012-06-28 15:16:14","receipts","76");
INSERT INTO user_log VALUES("928","Login","9","Login to site","2012-06-28 15:17:34","","");
INSERT INTO user_log VALUES("929","Logout","9","Logout from site","2012-06-28 15:18:38","","");
INSERT INTO user_log VALUES("930","Login","1","Login to site","2012-06-28 15:19:05","","");
INSERT INTO user_log VALUES("931","Logout","10","Logout from site","2012-06-28 15:20:49","","");
INSERT INTO user_log VALUES("932","Logout","10","Logout from site","2012-06-28 15:20:55","","");
INSERT INTO user_log VALUES("933","Login","10","Login to site","2012-06-28 15:21:11","","");
INSERT INTO user_log VALUES("934","Update","1","Update user group and privilige","2012-06-28 15:21:35","user_group","2");
INSERT INTO user_log VALUES("935","Create","17","Create Receipt","2012-06-28 15:22:46","receipts","77");
INSERT INTO user_log VALUES("936","Logout","10","Logout from site","2012-06-28 15:23:14","","");
INSERT INTO user_log VALUES("937","Update","1","Update user group and privilige","2012-06-28 15:23:16","user_group","2");
INSERT INTO user_log VALUES("938","Logout","1","Logout from site","2012-06-28 15:23:16","","");
INSERT INTO user_log VALUES("939","Logout","1","Logout from site","2012-06-28 15:23:17","","");
INSERT INTO user_log VALUES("940","Update","1","Update user group and privilige","2012-06-28 15:23:20","user_group","2");
INSERT INTO user_log VALUES("941","Login","1","Login to site","2012-06-28 15:23:26","","");
INSERT INTO user_log VALUES("942","Update","1","Update user group and privilige","2012-06-28 15:24:43","user_group","2");
INSERT INTO user_log VALUES("943","Update","1","Update user group and privilige","2012-06-28 15:25:21","user_group","2");
INSERT INTO user_log VALUES("944","Login","10","Login to site","2012-06-28 15:25:49","","");
INSERT INTO user_log VALUES("945","Update","1","Update user group and privilige","2012-06-28 15:27:12","user_group","2");
INSERT INTO user_log VALUES("946","Update","10","Update user group and privilige","2012-06-28 15:27:12","user_group","2");
INSERT INTO user_log VALUES("947","Update","1","Update user group and privilige","2012-06-28 15:29:52","user_group","2");
INSERT INTO user_log VALUES("948","Update","1","Update user group and privilige","2012-06-28 15:31:07","user_group","3");
INSERT INTO user_log VALUES("949","Create","17","Create Receipt","2012-06-28 15:31:14","receipts","78");
INSERT INTO user_log VALUES("950","Create","17","Create Receipt","2012-06-28 15:31:18","receipts","79");
INSERT INTO user_log VALUES("951","Login","9","Login to site","2012-06-28 15:31:27","","");
INSERT INTO user_log VALUES("952","Update","9","Update user group and privilige","2012-06-28 15:31:55","user_group","2");
INSERT INTO user_log VALUES("953","Logout","10","Logout from site","2012-06-28 15:33:52","","");
INSERT INTO user_log VALUES("954","Logout","9","Logout from site","2012-06-28 15:34:44","","");
INSERT INTO user_log VALUES("955","Login","1","Login to site","2012-06-28 15:34:50","","");
INSERT INTO user_log VALUES("956","Update","1","Update a user","2012-06-28 15:35:06","user_info","1");
INSERT INTO user_log VALUES("957","Update","1","Update user group and privilige","2012-06-28 15:35:34","user_group","2");
INSERT INTO user_log VALUES("958","Logout","1","Logout from site","2012-06-28 15:36:12","","");
INSERT INTO user_log VALUES("959","Login","9","Login to site","2012-06-28 15:36:25","","");
INSERT INTO user_log VALUES("960","Create","9","Create user group and privilige","2012-06-28 15:37:11","user_group","5");
INSERT INTO user_log VALUES("961","Logout","9","Logout from site","2012-06-28 15:37:32","","");
INSERT INTO user_log VALUES("962","Login","1","Login to site","2012-06-28 15:37:44","","");
INSERT INTO user_log VALUES("963","Logout","1","Logout from site","2012-06-28 15:42:13","","");
INSERT INTO user_log VALUES("964","Login","9","Login to site","2012-06-28 15:42:18","","");
INSERT INTO user_log VALUES("965","Login","10","Login to site","2012-06-28 15:49:31","","");
INSERT INTO user_log VALUES("966","Login","17","Login to site","2012-06-28 15:49:32","","");
INSERT INTO user_log VALUES("967","Login","10","Login to site","2012-06-28 15:52:51","","");
INSERT INTO user_log VALUES("968","Login","9","Login to site","2012-06-28 15:55:47","","");
INSERT INTO user_log VALUES("969","Login","10","Login to site","2012-06-28 16:00:13","","");
INSERT INTO user_log VALUES("970","Update","10","Update a due collection","2012-06-28 16:03:32","due_collection","3");
INSERT INTO user_log VALUES("971","Create","10","Create a payment voucher","2012-06-28 16:09:13","payment_voucher","7");
INSERT INTO user_log VALUES("972","Print","10","Print a payment voucher","2012-06-28 16:09:16","payment_voucher","7");
INSERT INTO user_log VALUES("973","Approved","10","Approved a payment voucher","2012-06-28 16:10:44","payment_voucher","7");
INSERT INTO user_log VALUES("974","Search","10","Search a receipt. Search text is 142580","2012-06-28 16:17:10","receipts","");
INSERT INTO user_log VALUES("975","Search","10","Search a receipt. Search text is 142580","2012-06-28 16:17:12","receipts","");
INSERT INTO user_log VALUES("976","Update","10","Update a receipt","2012-06-28 16:17:40","receipts","73");
INSERT INTO user_log VALUES("977","Print","10","Print a payment voucher","2012-06-28 16:19:00","payment_voucher","7");
INSERT INTO user_log VALUES("978","Login","9","Login to site","2012-06-28 16:28:01","","");
INSERT INTO user_log VALUES("979","Login","9","Login to site","2012-06-28 16:44:48","","");
INSERT INTO user_log VALUES("980","Login","9","Login to site","2012-06-28 17:18:14","","");
INSERT INTO user_log VALUES("981","Login","9","Login to site","2012-06-28 17:46:41","","");
INSERT INTO user_log VALUES("982","Login","9","Login to site","2012-06-28 18:37:27","","");
INSERT INTO user_log VALUES("983","Login","10","Login to site","2012-06-28 19:15:54","","");
INSERT INTO user_log VALUES("984","Login","9","Login to site","2012-06-28 22:01:41","","");
INSERT INTO user_log VALUES("985","Login","9","Login to site","2012-06-28 23:06:39","","");
INSERT INTO user_log VALUES("986","Login","1","Login to site","2012-06-29 00:49:36","","");
INSERT INTO user_log VALUES("987","Login","10","Login to site","2012-06-29 12:25:54","","");
INSERT INTO user_log VALUES("988","Login","9","Login to site","2012-06-29 12:27:54","","");
INSERT INTO user_log VALUES("989","Login","10","Login to site","2012-06-29 12:43:05","","");
INSERT INTO user_log VALUES("990","Login","16","Login to site","2012-06-29 12:44:19","","");
INSERT INTO user_log VALUES("991","Update","16","Update a receipt","2012-06-29 12:45:44","receipts","79");
INSERT INTO user_log VALUES("992","Login","9","Login to site","2012-06-29 12:47:24","","");
INSERT INTO user_log VALUES("993","Create","16","Create a sector name is KUL/MEL/KUL","2012-06-29 12:48:10","sectors","16");
INSERT INTO user_log VALUES("994","Create","16","Create a prices Sector is KUL/MEL/KUL","2012-06-29 12:48:36","prices","28");
INSERT INTO user_log VALUES("995","Logout","16","Logout from site","2012-06-29 12:59:38","","");
INSERT INTO user_log VALUES("996","Login","9","Login to site","2012-06-29 13:03:12","","");
INSERT INTO user_log VALUES("997","Login","10","Login to site","2012-06-29 13:04:32","","");
INSERT INTO user_log VALUES("998","Create","10","Create serial number","2012-06-29 13:12:09","serial_number","3");
INSERT INTO user_log VALUES("999","Delete","10","Delete serial number","2012-06-29 13:12:18","serial_number","2");
INSERT INTO user_log VALUES("1000","Login","16","Login to site","2012-06-29 13:13:00","","");
INSERT INTO user_log VALUES("1001","Login","9","Login to site","2012-06-29 14:47:49","","");
INSERT INTO user_log VALUES("1002","Login","9","Login to site","2012-06-29 15:34:09","","");
INSERT INTO user_log VALUES("1003","Login","10","Login to site","2012-06-29 16:19:18","","");
INSERT INTO user_log VALUES("1004","Update","10","Update a company","2012-06-29 16:31:51","company","1");
INSERT INTO user_log VALUES("1005","Login","10","Login to site","2012-06-29 16:51:03","","");
INSERT INTO user_log VALUES("1006","Login","10","Login to site","2012-06-29 17:01:49","","");
INSERT INTO user_log VALUES("1007","Login","9","Login to site","2012-06-29 17:58:22","","");
INSERT INTO user_log VALUES("1008","Login","9","Login to site","2012-06-29 21:25:36","","");
INSERT INTO user_log VALUES("1009","Login","9","Login to site","2012-06-30 10:25:07","","");
INSERT INTO user_log VALUES("1010","Login","9","Login to site","2012-06-30 11:51:40","","");
INSERT INTO user_log VALUES("1011","Login","10","Login to site","2012-06-30 12:05:05","","");
INSERT INTO user_log VALUES("1012","Delete","10","Delete a receipt","2012-06-30 12:07:09","receipts","79");
INSERT INTO user_log VALUES("1013","Delete","10","Delete a receipt","2012-06-30 12:07:12","receipts","78");
INSERT INTO user_log VALUES("1014","Delete","10","Delete a receipt","2012-06-30 12:07:13","receipts","77");
INSERT INTO user_log VALUES("1015","Delete","10","Delete a receipt","2012-06-30 12:07:16","receipts","76");
INSERT INTO user_log VALUES("1016","Delete","10","Delete a receipt","2012-06-30 12:07:18","receipts","75");
INSERT INTO user_log VALUES("1017","Delete","10","Delete a receipt","2012-06-30 12:07:21","receipts","74");
INSERT INTO user_log VALUES("1018","Delete","10","Delete a receipt","2012-06-30 12:07:26","receipts","73");
INSERT INTO user_log VALUES("1019","Delete","10","Delete a receipt","2012-06-30 12:07:28","receipts","72");
INSERT INTO user_log VALUES("1020","Delete","10","Delete a receipt","2012-06-30 12:07:33","receipts","71");
INSERT INTO user_log VALUES("1021","Delete","10","Delete a receipt","2012-06-30 12:07:38","receipts","70");
INSERT INTO user_log VALUES("1022","Delete","10","Delete a receipt","2012-06-30 12:07:40","receipts","69");
INSERT INTO user_log VALUES("1023","Delete","10","Delete a receipt","2012-06-30 12:07:41","receipts","68");
INSERT INTO user_log VALUES("1024","Delete","10","Delete a receipt","2012-06-30 12:07:44","receipts","67");
INSERT INTO user_log VALUES("1025","Delete","10","Delete a receipt","2012-06-30 12:07:45","receipts","66");
INSERT INTO user_log VALUES("1026","Delete","10","Delete a receipt","2012-06-30 12:07:47","receipts","65");
INSERT INTO user_log VALUES("1027","Delete","10","Delete a receipt","2012-06-30 12:07:48","receipts","64");
INSERT INTO user_log VALUES("1028","Delete","10","Delete a receipt","2012-06-30 12:07:50","receipts","63");
INSERT INTO user_log VALUES("1029","Delete","10","Delete a receipt","2012-06-30 12:07:54","receipts","62");
INSERT INTO user_log VALUES("1030","Delete","10","Delete a receipt","2012-06-30 12:08:00","receipts","61");
INSERT INTO user_log VALUES("1031","Delete","10","Delete a receipt","2012-06-30 12:08:03","receipts","60");
INSERT INTO user_log VALUES("1032","Delete","10","Delete a receipt","2012-06-30 12:08:04","receipts","59");
INSERT INTO user_log VALUES("1033","Delete","10","Delete a receipt","2012-06-30 12:08:05","receipts","58");
INSERT INTO user_log VALUES("1034","Delete","10","Delete a receipt","2012-06-30 12:08:07","receipts","57");
INSERT INTO user_log VALUES("1035","Delete","10","Delete a receipt","2012-06-30 12:08:08","receipts","56");
INSERT INTO user_log VALUES("1036","Delete","10","Delete a receipt","2012-06-30 12:08:09","receipts","55");
INSERT INTO user_log VALUES("1037","Delete","10","Delete a receipt","2012-06-30 12:08:11","receipts","54");
INSERT INTO user_log VALUES("1038","Delete","10","Delete a receipt","2012-06-30 12:08:12","receipts","53");
INSERT INTO user_log VALUES("1039","Delete","10","Delete a receipt","2012-06-30 12:08:15","receipts","52");
INSERT INTO user_log VALUES("1040","Delete","10","Delete a receipt","2012-06-30 12:08:20","receipts","51");
INSERT INTO user_log VALUES("1041","Delete","10","Delete a receipt","2012-06-30 12:08:26","receipts","50");
INSERT INTO user_log VALUES("1042","Delete","10","Delete a receipt","2012-06-30 12:08:28","receipts","49");
INSERT INTO user_log VALUES("1043","Delete","10","Delete a receipt","2012-06-30 12:08:31","receipts","48");
INSERT INTO user_log VALUES("1044","Delete","10","Delete a receipt","2012-06-30 12:08:34","receipts","47");
INSERT INTO user_log VALUES("1045","Delete","10","Delete a receipt","2012-06-30 12:08:35","receipts","46");
INSERT INTO user_log VALUES("1046","Delete","10","Delete a receipt","2012-06-30 12:08:38","receipts","45");
INSERT INTO user_log VALUES("1047","Delete","10","Delete a receipt","2012-06-30 12:08:40","receipts","44");
INSERT INTO user_log VALUES("1048","Delete","10","Delete a due collection","2012-06-30 12:09:54","due_collection","3");
INSERT INTO user_log VALUES("1049","Delete","10","Delete serial number","2012-06-30 12:10:34","serial_number","3");
INSERT INTO user_log VALUES("1050","Create","10","Create serial number","2012-06-30 12:13:47","serial_number","4");
INSERT INTO user_log VALUES("1051","Create","10","Create Receipt","2012-06-30 12:18:35","receipts","80");
INSERT INTO user_log VALUES("1052","Create","10","Create a due collection","2012-06-30 12:21:01","due_collection","4");
INSERT INTO user_log VALUES("1053","Create","10","Create a agent name is DEPOSIT","2012-06-30 12:23:57","agents","22");
INSERT INTO user_log VALUES("1054","Create","10","Create Receipt","2012-06-30 12:26:28","receipts","81");
INSERT INTO user_log VALUES("1055","Update","10","Update a receipt","2012-06-30 12:29:07","receipts","81");
INSERT INTO user_log VALUES("1056","Login","16","Login to site","2012-06-30 12:43:05","","");
INSERT INTO user_log VALUES("1057","Create","16","Create a agent name is SUPER GALVANISING","2012-06-30 12:48:31","agents","23");
INSERT INTO user_log VALUES("1058","Create","16","Create Receipt","2012-06-30 12:54:42","receipts","82");
INSERT INTO user_log VALUES("1059","Create","16","Create Receipt","2012-06-30 12:57:10","receipts","83");
INSERT INTO user_log VALUES("1060","Create","16","Create a sector name is KUL/SOC","2012-06-30 12:57:30","sectors","17");
INSERT INTO user_log VALUES("1061","Create","16","Create a prices Sector is KUL/SOC","2012-06-30 12:57:47","prices","29");
INSERT INTO user_log VALUES("1062","Login","9","Login to site","2012-06-30 12:58:40","","");
INSERT INTO user_log VALUES("1063","Create","16","Create Receipt","2012-06-30 13:03:36","receipts","84");
INSERT INTO user_log VALUES("1064","Create","16","Create Receipt","2012-06-30 13:05:15","receipts","85");
INSERT INTO user_log VALUES("1065","Create","16","Create Receipt","2012-06-30 13:06:04","receipts","86");
INSERT INTO user_log VALUES("1066","Create","16","Create Receipt","2012-06-30 13:08:52","receipts","87");
INSERT INTO user_log VALUES("1067","Logout","16","Logout from site","2012-06-30 13:09:03","","");
INSERT INTO user_log VALUES("1068","Login","10","Login to site","2012-06-30 13:20:02","","");
INSERT INTO user_log VALUES("1069","Login","9","Login to site","2012-06-30 13:21:55","","");
INSERT INTO user_log VALUES("1070","Login","16","Login to site","2012-06-30 13:22:40","","");
INSERT INTO user_log VALUES("1071","Create","16","Create Receipt","2012-06-30 13:23:54","receipts","88");
INSERT INTO user_log VALUES("1072","Logout","16","Logout from site","2012-06-30 13:24:01","","");
INSERT INTO user_log VALUES("1073","Login","9","Login to site","2012-06-30 13:44:48","","");
INSERT INTO user_log VALUES("1074","Search","9","Search a receipt. Search text is 584","2012-06-30 13:52:07","receipts","");
INSERT INTO user_log VALUES("1075","Login","9","Login to site","2012-06-30 14:21:42","","");
INSERT INTO user_log VALUES("1076","Login","16","Login to site","2012-06-30 14:29:32","","");
INSERT INTO user_log VALUES("1077","Create","16","Create a sector name is PEN/KUL/DAC","2012-06-30 14:30:22","sectors","18");
INSERT INTO user_log VALUES("1078","Create","16","Create a prices Sector is PEN/KUL/DAC","2012-06-30 14:30:52","prices","30");
INSERT INTO user_log VALUES("1079","Create","16","Create Receipt","2012-06-30 14:35:09","receipts","89");
INSERT INTO user_log VALUES("1080","Create","16","Create Receipt","2012-06-30 14:36:20","receipts","90");
INSERT INTO user_log VALUES("1081","Create","16","Create Receipt","2012-06-30 14:37:09","receipts","91");
INSERT INTO user_log VALUES("1082","Logout","16","Logout from site","2012-06-30 14:37:13","","");
INSERT INTO user_log VALUES("1083","Login","10","Login to site","2012-06-30 16:07:11","","");
INSERT INTO user_log VALUES("1084","Create","10","Create a agent name is CHINNU","2012-06-30 16:09:15","agents","24");
INSERT INTO user_log VALUES("1085","Update","10","Update a agent name isCHINNU","2012-06-30 16:11:20","agents","24");
INSERT INTO user_log VALUES("1086","Create","10","Create Receipt","2012-06-30 16:12:47","receipts","92");
INSERT INTO user_log VALUES("1087","Login","10","Login to site","2012-06-30 16:52:32","","");
INSERT INTO user_log VALUES("1088","Create","10","Create Receipt","2012-06-30 16:54:55","receipts","93");
INSERT INTO user_log VALUES("1089","Create","10","Create Receipt","2012-06-30 16:56:11","receipts","94");
INSERT INTO user_log VALUES("1090","Create","10","Create Receipt","2012-06-30 16:57:38","receipts","95");
INSERT INTO user_log VALUES("1091","Create","10","Create Receipt","2012-06-30 16:59:32","receipts","96");
INSERT INTO user_log VALUES("1092","Create","10","Create Receipt","2012-06-30 17:01:49","receipts","97");
INSERT INTO user_log VALUES("1093","Create","10","Create a sector name is KUL-DAC-DXB","2012-06-30 17:02:33","sectors","19");
INSERT INTO user_log VALUES("1094","Create","10","Create a prices Sector is KUL-DAC-DXB","2012-06-30 17:03:32","prices","31");
INSERT INTO user_log VALUES("1095","Update","10","Update a receipt","2012-06-30 17:11:41","receipts","97");
INSERT INTO user_log VALUES("1096","Create","10","Create Receipt","2012-06-30 17:23:39","receipts","98");
INSERT INTO user_log VALUES("1097","Login","9","Login to site","2012-06-30 17:23:45","","");
INSERT INTO user_log VALUES("1098","Create","10","Create Receipt","2012-06-30 17:25:33","receipts","99");
INSERT INTO user_log VALUES("1099","Create","10","Create Receipt","2012-06-30 17:27:17","receipts","100");
INSERT INTO user_log VALUES("1100","Create","10","Create Receipt","2012-06-30 17:29:36","receipts","101");
INSERT INTO user_log VALUES("1101","Create","10","Create Receipt","2012-06-30 17:32:27","receipts","102");
INSERT INTO user_log VALUES("1102","Create","10","Create Receipt","2012-06-30 17:33:35","receipts","103");
INSERT INTO user_log VALUES("1103","Create","10","Create Receipt","2012-06-30 17:35:06","receipts","104");
INSERT INTO user_log VALUES("1104","Create","10","Create a due collection","2012-06-30 17:35:46","due_collection","5");
INSERT INTO user_log VALUES("1105","Delete","10","Delete a due collection","2012-06-30 17:36:07","due_collection","4");
INSERT INTO user_log VALUES("1106","Create","10","Create a payment voucher","2012-06-30 17:36:48","payment_voucher","1");
INSERT INTO user_log VALUES("1107","Print","10","Print a payment voucher","2012-06-30 17:36:49","payment_voucher","1");
INSERT INTO user_log VALUES("1108","Approved","10","Approved a payment voucher","2012-06-30 17:37:01","payment_voucher","1");
INSERT INTO user_log VALUES("1109","Create","10","Create a payment voucher","2012-06-30 17:37:33","payment_voucher","2");
INSERT INTO user_log VALUES("1110","Print","10","Print a payment voucher","2012-06-30 17:37:34","payment_voucher","2");
INSERT INTO user_log VALUES("1111","Approved","10","Approved a payment voucher","2012-06-30 17:37:46","payment_voucher","2");
INSERT INTO user_log VALUES("1112","Create","10","Create a payment voucher","2012-06-30 17:38:47","payment_voucher","3");
INSERT INTO user_log VALUES("1113","Print","10","Print a payment voucher","2012-06-30 17:38:47","payment_voucher","3");
INSERT INTO user_log VALUES("1114","Approved","10","Approved a payment voucher","2012-06-30 17:38:59","payment_voucher","3");
INSERT INTO user_log VALUES("1115","Update","10","Update a receipt","2012-06-30 17:40:48","receipts","92");
INSERT INTO user_log VALUES("1116","Login","9","Login to site","2012-06-30 17:44:01","","");
INSERT INTO user_log VALUES("1117","Update","10","Update a due collection","2012-06-30 17:47:17","due_collection","5");
INSERT INTO user_log VALUES("1118","Update","10","Update a receipt","2012-06-30 17:53:52","receipts","92");
INSERT INTO user_log VALUES("1119","Logout","10","Logout from site","2012-06-30 17:57:13","","");
INSERT INTO user_log VALUES("1120","Login","10","Login to site","2012-06-30 18:04:30","","");
INSERT INTO user_log VALUES("1121","Search","10","Search a receipt. Search text is 142649","2012-06-30 18:05:40","receipts","");
INSERT INTO user_log VALUES("1122","Update","10","Update a receipt","2012-06-30 18:05:54","receipts","83");
INSERT INTO user_log VALUES("1123","Login","9","Login to site","2012-06-30 18:12:57","","");
INSERT INTO user_log VALUES("1124","Login","9","Login to site","2012-06-30 18:35:25","","");
INSERT INTO user_log VALUES("1125","Login","9","Login to site","2012-06-30 18:36:07","","");
INSERT INTO user_log VALUES("1126","Logout","9","Logout from site","2012-06-30 18:37:01","","");
INSERT INTO user_log VALUES("1127","Login","10","Login to site","2012-06-30 18:55:54","","");
INSERT INTO user_log VALUES("1128","Update","10","Update user group and privilige","2012-06-30 19:00:18","user_group","3");
INSERT INTO user_log VALUES("1129","Update","10","Update a user","2012-06-30 19:01:07","user_info","16");
INSERT INTO user_log VALUES("1130","Update","10","Update a user","2012-06-30 19:03:10","user_info","10");
INSERT INTO user_log VALUES("1131","Delete","10","Delete a prices","2012-06-30 19:03:45","prices","15");
INSERT INTO user_log VALUES("1132","Delete","10","Delete a prices","2012-06-30 19:03:51","prices","16");
INSERT INTO user_log VALUES("1133","Delete","10","Delete a prices","2012-06-30 19:03:56","prices","17");
INSERT INTO user_log VALUES("1134","Delete","10","Delete a prices","2012-06-30 19:04:07","prices","18");
INSERT INTO user_log VALUES("1135","Delete","10","Delete a carriers name was BEST AIR (BA)","2012-06-30 19:05:21","carriers","20");
INSERT INTO user_log VALUES("1136","Delete","10","Delete a carriers name was GMG AIRLINES (Z5)","2012-06-30 19:05:44","carriers","9");
INSERT INTO user_log VALUES("1137","Logout","10","Logout from site","2012-06-30 19:06:27","","");
INSERT INTO user_log VALUES("1138","Login","10","Login to site","2012-06-30 19:06:44","","");
INSERT INTO user_log VALUES("1139","Create","10","Create Receipt","2012-06-30 19:09:38","receipts","105");
INSERT INTO user_log VALUES("1140","Create","10","Create Receipt","2012-06-30 19:13:32","receipts","106");
INSERT INTO user_log VALUES("1141","Update","10","Update a receipt","2012-06-30 19:14:31","receipts","106");
INSERT INTO user_log VALUES("1142","Create","10","Create Receipt","2012-06-30 19:19:55","receipts","107");
INSERT INTO user_log VALUES("1143","Create","10","Create Receipt","2012-06-30 19:22:02","receipts","108");
INSERT INTO user_log VALUES("1144","Create","10","Create Receipt","2012-06-30 19:24:07","receipts","109");
INSERT INTO user_log VALUES("1145","Create","10","Create Receipt","2012-06-30 19:25:36","receipts","110");
INSERT INTO user_log VALUES("1146","Create","10","Create Receipt","2012-06-30 19:25:55","receipts","111");
INSERT INTO user_log VALUES("1147","Create","10","Create Receipt","2012-06-30 19:27:27","receipts","112");
INSERT INTO user_log VALUES("1148","Create","10","Create a user","2012-06-30 19:31:43","user_info","18");
INSERT INTO user_log VALUES("1149","Update","10","Update a receipt","2012-06-30 19:35:50","receipts","111");
INSERT INTO user_log VALUES("1150","Update","10","Update a receipt","2012-06-30 19:36:33","receipts","111");
INSERT INTO user_log VALUES("1151","Update","10","Update a receipt","2012-06-30 19:40:42","receipts","112");
INSERT INTO user_log VALUES("1152","Update","10","Update a receipt","2012-06-30 19:40:58","receipts","112");
INSERT INTO user_log VALUES("1153","Create","10","Create Receipt","2012-06-30 19:43:26","receipts","113");
INSERT INTO user_log VALUES("1154","Create","10","Create Receipt","2012-06-30 19:45:24","receipts","114");
INSERT INTO user_log VALUES("1155","Create","10","Create a due collection","2012-06-30 19:50:56","due_collection","6");
INSERT INTO user_log VALUES("1156","Search","10","Search a receipt. Search text is 142647","2012-06-30 19:57:28","receipts","");
INSERT INTO user_log VALUES("1157","Update","10","Update a receipt","2012-06-30 19:57:51","receipts","81");
INSERT INTO user_log VALUES("1158","Create","10","Create a due collection","2012-06-30 19:58:37","due_collection","7");
INSERT INTO user_log VALUES("1159","Print","10","Print a payment voucher","2012-06-30 19:59:50","payment_voucher","3");
INSERT INTO user_log VALUES("1160","Create","10","Create Receipt","2012-06-30 20:09:13","receipts","115");
INSERT INTO user_log VALUES("1161","Create","10","Create Receipt","2012-06-30 20:10:51","receipts","116");
INSERT INTO user_log VALUES("1162","Update","10","Update a receipt","2012-06-30 20:12:06","receipts","115");
INSERT INTO user_log VALUES("1163","Search","10","Search a receipt. Search text is 142675","2012-06-30 20:20:21","receipts","");
INSERT INTO user_log VALUES("1164","Update","10","Update a receipt","2012-06-30 20:21:32","receipts","110");
INSERT INTO user_log VALUES("1165","Search","10","Search a receipt. Search text is 142655","2012-06-30 20:24:31","receipts","");
INSERT INTO user_log VALUES("1166","Logout","10","Logout from site","2012-06-30 20:25:11","","");
INSERT INTO user_log VALUES("1167","Login","18","Login to site","2012-06-30 20:40:14","","");
INSERT INTO user_log VALUES("1168","Login","10","Login to site","2012-06-30 21:00:25","","");
INSERT INTO user_log VALUES("1169","Logout","10","Logout from site","2012-06-30 21:05:15","","");
INSERT INTO user_log VALUES("1170","Login","9","Login to site","2012-06-30 21:24:10","","");
INSERT INTO user_log VALUES("1171","Login","9","Login to site","2012-06-30 22:08:17","","");
INSERT INTO user_log VALUES("1172","Login","9","Login to site","2012-06-30 22:24:24","","");
INSERT INTO user_log VALUES("1173","Login","9","Login to site","2012-06-30 23:01:51","","");
INSERT INTO user_log VALUES("1174","Login","9","Login to site","2012-07-01 00:23:17","","");
INSERT INTO user_log VALUES("1175","Login","9","Login to site","2012-07-01 01:21:40","","");
INSERT INTO user_log VALUES("1176","Login","10","Login to site","2012-07-01 11:48:24","","");
INSERT INTO user_log VALUES("1177","Print","10","Print a payment voucher","2012-07-01 11:49:24","payment_voucher","3");
INSERT INTO user_log VALUES("1178","Login","16","Login to site","2012-07-01 12:20:45","","");
INSERT INTO user_log VALUES("1179","Create","16","Create Receipt","2012-07-01 12:23:10","receipts","117");
INSERT INTO user_log VALUES("1180","Logout","16","Logout from site","2012-07-01 12:23:23","","");
INSERT INTO user_log VALUES("1181","Login","16","Login to site","2012-07-01 12:29:42","","");
INSERT INTO user_log VALUES("1182","Create","16","Create Receipt","2012-07-01 12:31:49","receipts","118");
INSERT INTO user_log VALUES("1183","Create","16","Create Receipt","2012-07-01 12:32:46","receipts","119");
INSERT INTO user_log VALUES("1184","Create","16","Create a agent name is NY JOHOR TRAVEL","2012-07-01 12:34:07","agents","25");
INSERT INTO user_log VALUES("1185","Login","10","Login to site","2012-07-01 12:34:54","","");
INSERT INTO user_log VALUES("1186","Login","10","Login to site","2012-07-01 12:35:13","","");
INSERT INTO user_log VALUES("1187","Logout","16","Logout from site","2012-07-01 12:35:24","","");
INSERT INTO user_log VALUES("1188","Login","10","Login to site","2012-07-01 12:35:57","","");
INSERT INTO user_log VALUES("1189","Update","10","Update user group and privilige","2012-07-01 12:37:57","user_group","3");
INSERT INTO user_log VALUES("1190","Logout","10","Logout from site","2012-07-01 12:41:56","","");
INSERT INTO user_log VALUES("1191","Login","9","Login to site","2012-07-01 13:38:42","","");
INSERT INTO user_log VALUES("1192","Login","16","Login to site","2012-07-01 13:44:12","","");
INSERT INTO user_log VALUES("1193","Create","16","Create Receipt","2012-07-01 13:45:51","receipts","120");
INSERT INTO user_log VALUES("1194","Create","16","Create Receipt","2012-07-01 13:47:08","receipts","121");
INSERT INTO user_log VALUES("1195","Create","16","Create a carriers name is KUL/DAC","2012-07-01 13:48:24","carriers","22");
INSERT INTO user_log VALUES("1196","Create","16","Create a prices Sector is KUL/DAC","2012-07-01 13:48:54","prices","32");
INSERT INTO user_log VALUES("1197","Create","16","Create Receipt","2012-07-01 13:49:46","receipts","122");
INSERT INTO user_log VALUES("1198","Create","16","Create a prices Sector is KUL/DAC","2012-07-01 13:50:48","prices","33");
INSERT INTO user_log VALUES("1199","Create","16","Create Receipt","2012-07-01 13:51:46","receipts","123");
INSERT INTO user_log VALUES("1200","Login","9","Login to site","2012-07-01 13:52:42","","");
INSERT INTO user_log VALUES("1201","Create","16","Create Receipt","2012-07-01 13:54:33","receipts","124");
INSERT INTO user_log VALUES("1202","Create","16","Create Receipt","2012-07-01 13:55:43","receipts","125");
INSERT INTO user_log VALUES("1203","Create","16","Create Receipt","2012-07-01 13:56:46","receipts","126");
INSERT INTO user_log VALUES("1204","Create","16","Create Receipt","2012-07-01 13:59:11","receipts","127");
INSERT INTO user_log VALUES("1205","Create","16","Create Receipt","2012-07-01 14:01:31","receipts","128");
INSERT INTO user_log VALUES("1206","Create","16","Create Receipt","2012-07-01 14:12:32","receipts","129");
INSERT INTO user_log VALUES("1207","Create","16","Create Receipt","2012-07-01 14:13:41","receipts","130");
INSERT INTO user_log VALUES("1208","Login","9","Login to site","2012-07-01 14:18:05","","");
INSERT INTO user_log VALUES("1209","Create","16","Create Receipt","2012-07-01 14:18:27","receipts","131");
INSERT INTO user_log VALUES("1210","Create","16","Create a agent name is MOSHARAF","2012-07-01 14:20:05","agents","26");
INSERT INTO user_log VALUES("1211","Create","16","Create Receipt","2012-07-01 14:23:11","receipts","132");
INSERT INTO user_log VALUES("1212","Create","16","Create Receipt","2012-07-01 14:24:42","receipts","133");
INSERT INTO user_log VALUES("1213","Create","16","Create Receipt","2012-07-01 14:25:45","receipts","134");
INSERT INTO user_log VALUES("1214","Logout","9","Logout from site","2012-07-01 14:27:27","","");
INSERT INTO user_log VALUES("1215","Login","1","Login to site","2012-07-01 14:27:44","","");
INSERT INTO user_log VALUES("1216","Login","16","Login to site","2012-07-01 14:40:54","","");
INSERT INTO user_log VALUES("1217","Create","16","Create Receipt","2012-07-01 14:42:02","receipts","135");
INSERT INTO user_log VALUES("1218","Create","16","Create Receipt","2012-07-01 14:43:50","receipts","136");
INSERT INTO user_log VALUES("1219","Login","1","Login to site","2012-07-01 14:47:05","","");
INSERT INTO user_log VALUES("1220","Logout","1","Logout from site","2012-07-01 14:47:21","","");
INSERT INTO user_log VALUES("1221","Login","9","Login to site","2012-07-01 14:47:30","","");
INSERT INTO user_log VALUES("1222","Login","16","Login to site","2012-07-01 14:55:16","","");
INSERT INTO user_log VALUES("1223","Create","16","Create Receipt","2012-07-01 14:56:39","receipts","137");
INSERT INTO user_log VALUES("1224","Login","10","Login to site","2012-07-01 15:00:28","","");
INSERT INTO user_log VALUES("1225","Update","10","Update a receipt","2012-07-01 15:00:51","receipts","137");
INSERT INTO user_log VALUES("1226","Create","16","Create Receipt","2012-07-01 15:02:52","receipts","138");
INSERT INTO user_log VALUES("1227","Logout","10","Logout from site","2012-07-01 15:03:32","","");
INSERT INTO user_log VALUES("1228","Create","16","Create Receipt","2012-07-01 15:04:38","receipts","139");
INSERT INTO user_log VALUES("1229","Login","9","Login to site","2012-07-01 15:04:56","","");
INSERT INTO user_log VALUES("1230","Create","16","Create Receipt","2012-07-01 15:08:38","receipts","140");
INSERT INTO user_log VALUES("1231","Create","16","Create Receipt","2012-07-01 15:10:27","receipts","141");
INSERT INTO user_log VALUES("1232","Create","16","Create Receipt","2012-07-01 15:11:46","receipts","142");
INSERT INTO user_log VALUES("1233","Create","16","Create Receipt","2012-07-01 15:13:12","receipts","143");
INSERT INTO user_log VALUES("1234","Logout","16","Logout from site","2012-07-01 15:13:19","","");
INSERT INTO user_log VALUES("1235","Login","16","Login to site","2012-07-01 15:28:55","","");
INSERT INTO user_log VALUES("1236","Create","16","Create a sector name is KUL/DAC/CGP/DAC/KUL","2012-07-01 15:29:50","sectors","20");
INSERT INTO user_log VALUES("1237","Create","16","Create a prices Sector is KUL/DAC/CGP/DAC/KUL","2012-07-01 15:30:34","prices","34");
INSERT INTO user_log VALUES("1238","Create","16","Create Receipt","2012-07-01 15:32:08","receipts","144");
INSERT INTO user_log VALUES("1239","Create","16","Create Receipt","2012-07-01 15:34:36","receipts","145");
INSERT INTO user_log VALUES("1240","Create","16","Create Receipt","2012-07-01 15:36:33","receipts","146");
INSERT INTO user_log VALUES("1241","Create","16","Create Receipt","2012-07-01 15:37:38","receipts","147");
INSERT INTO user_log VALUES("1242","Create","16","Create Receipt","2012-07-01 15:38:45","receipts","148");
INSERT INTO user_log VALUES("1243","Create","16","Create Receipt","2012-07-01 15:39:59","receipts","149");
INSERT INTO user_log VALUES("1244","Create","16","Create Receipt","2012-07-01 15:41:02","receipts","150");
INSERT INTO user_log VALUES("1245","Create","16","Create Receipt","2012-07-01 15:42:13","receipts","151");
INSERT INTO user_log VALUES("1246","Create","16","Create Receipt","2012-07-01 15:45:38","receipts","152");
INSERT INTO user_log VALUES("1247","Create","16","Create Receipt","2012-07-01 15:46:56","receipts","153");
INSERT INTO user_log VALUES("1248","Create","16","Create a sector name is KUL/LGK/KUL","2012-07-01 15:47:48","sectors","21");
INSERT INTO user_log VALUES("1249","Create","16","Create a prices Sector is KUL/LGK/KUL","2012-07-01 15:48:09","prices","35");
INSERT INTO user_log VALUES("1250","Create","16","Create Receipt","2012-07-01 15:49:09","receipts","154");
INSERT INTO user_log VALUES("1251","Create","16","Create Receipt","2012-07-01 15:50:17","receipts","155");
INSERT INTO user_log VALUES("1252","Create","16","Create Receipt","2012-07-01 15:51:37","receipts","156");
INSERT INTO user_log VALUES("1253","Create","16","Create Receipt","2012-07-01 15:53:15","receipts","157");
INSERT INTO user_log VALUES("1254","Login","10","Login to site","2012-07-01 15:55:09","","");
INSERT INTO user_log VALUES("1255","Update","10","Update a agent name isSAIFUL IME","2012-07-01 15:55:47","agents","19");
INSERT INTO user_log VALUES("1256","Search","10","Search a receipt. Search text is 142719","2012-07-01 15:56:40","receipts","");
INSERT INTO user_log VALUES("1257","Update","10","Update a receipt","2012-07-01 15:57:05","receipts","153");
INSERT INTO user_log VALUES("1258","Logout","10","Logout from site","2012-07-01 15:57:12","","");
INSERT INTO user_log VALUES("1259","Login","16","Login to site","2012-07-01 16:34:51","","");
INSERT INTO user_log VALUES("1260","Create","16","Create Receipt","2012-07-01 16:37:29","receipts","158");
INSERT INTO user_log VALUES("1261","Login","9","Login to site","2012-07-01 16:43:10","","");
INSERT INTO user_log VALUES("1262","Login","10","Login to site","2012-07-01 16:45:21","","");
INSERT INTO user_log VALUES("1263","Logout","10","Logout from site","2012-07-01 16:45:48","","");
INSERT INTO user_log VALUES("1264","Login","10","Login to site","2012-07-01 16:47:06","","");
INSERT INTO user_log VALUES("1265","Create","16","Create Receipt","2012-07-01 16:47:58","receipts","159");
INSERT INTO user_log VALUES("1266","Create","16","Create Receipt","2012-07-01 16:49:43","receipts","160");
INSERT INTO user_log VALUES("1267","Create","16","Create Receipt","2012-07-01 16:55:19","receipts","161");
INSERT INTO user_log VALUES("1268","Create","16","Create Receipt","2012-07-01 16:58:33","receipts","162");
INSERT INTO user_log VALUES("1269","Create","16","Create Receipt","2012-07-01 17:00:09","receipts","163");
INSERT INTO user_log VALUES("1270","Create","16","Create Receipt","2012-07-01 17:01:20","receipts","164");
INSERT INTO user_log VALUES("1271","Create","16","Create Receipt","2012-07-01 17:03:14","receipts","165");
INSERT INTO user_log VALUES("1272","Login","9","Login to site","2012-07-01 17:07:16","","");
INSERT INTO user_log VALUES("1273","Create","16","Create Receipt","2012-07-01 17:11:51","receipts","166");
INSERT INTO user_log VALUES("1274","Login","10","Login to site","2012-07-01 17:12:30","","");
INSERT INTO user_log VALUES("1275","Logout","10","Logout from site","2012-07-01 17:14:16","","");
INSERT INTO user_log VALUES("1276","Create","16","Create Receipt","2012-07-01 17:14:28","receipts","167");
INSERT INTO user_log VALUES("1277","Create","16","Create Receipt","2012-07-01 17:15:19","receipts","168");
INSERT INTO user_log VALUES("1278","Create","16","Create Receipt","2012-07-01 17:17:11","receipts","169");
INSERT INTO user_log VALUES("1279","Create","16","Create Receipt","2012-07-01 17:20:55","receipts","170");
INSERT INTO user_log VALUES("1280","Login","10","Login to site","2012-07-01 17:21:27","","");
INSERT INTO user_log VALUES("1281","Update","10","Update a receipt","2012-07-01 17:21:56","receipts","170");
INSERT INTO user_log VALUES("1282","Create","16","Create Receipt","2012-07-01 17:22:49","receipts","171");
INSERT INTO user_log VALUES("1283","Create","16","Create Receipt","2012-07-01 17:23:41","receipts","172");
INSERT INTO user_log VALUES("1284","Create","16","Create Receipt","2012-07-01 17:25:36","receipts","173");
INSERT INTO user_log VALUES("1285","Create","16","Create Receipt","2012-07-01 17:26:34","receipts","174");
INSERT INTO user_log VALUES("1286","Create","16","Create Receipt","2012-07-01 17:27:30","receipts","175");
INSERT INTO user_log VALUES("1287","Create","16","Create Receipt","2012-07-01 17:28:30","receipts","176");
INSERT INTO user_log VALUES("1288","Login","9","Login to site","2012-07-01 17:29:01","","");
INSERT INTO user_log VALUES("1289","Create","16","Create Receipt","2012-07-01 17:29:10","receipts","177");
INSERT INTO user_log VALUES("1290","Create","16","Create Receipt","2012-07-01 17:30:40","receipts","178");
INSERT INTO user_log VALUES("1291","Create","16","Create Receipt","2012-07-01 17:31:27","receipts","179");
INSERT INTO user_log VALUES("1292","Create","16","Create Receipt","2012-07-01 17:32:15","receipts","180");
INSERT INTO user_log VALUES("1293","Login","10","Login to site","2012-07-01 17:32:54","","");
INSERT INTO user_log VALUES("1294","Update","10","Update a prices","2012-07-01 17:33:17","prices","9");
INSERT INTO user_log VALUES("1295","Create","16","Create Receipt","2012-07-01 17:33:24","receipts","181");
INSERT INTO user_log VALUES("1296","Update","10","Update a prices","2012-07-01 17:33:25","prices","9");
INSERT INTO user_log VALUES("1297","Create","16","Create Receipt","2012-07-01 17:34:28","receipts","182");
INSERT INTO user_log VALUES("1298","Create","16","Create Receipt","2012-07-01 17:35:38","receipts","183");
INSERT INTO user_log VALUES("1299","Logout","10","Logout from site","2012-07-01 17:36:02","","");
INSERT INTO user_log VALUES("1300","Create","16","Create Receipt","2012-07-01 17:36:45","receipts","184");
INSERT INTO user_log VALUES("1301","Login","10","Login to site","2012-07-01 17:37:08","","");
INSERT INTO user_log VALUES("1302","Create","16","Create Receipt","2012-07-01 17:37:59","receipts","185");
INSERT INTO user_log VALUES("1303","Create","16","Create Receipt","2012-07-01 17:39:07","receipts","186");
INSERT INTO user_log VALUES("1304","Create","16","Create Receipt","2012-07-01 17:39:55","receipts","187");
INSERT INTO user_log VALUES("1305","Create","16","Create Receipt","2012-07-01 17:41:16","receipts","188");
INSERT INTO user_log VALUES("1306","Create","16","Create Receipt","2012-07-01 17:42:23","receipts","189");
INSERT INTO user_log VALUES("1307","Update","10","Update user group and privilige","2012-07-01 17:43:20","user_group","3");
INSERT INTO user_log VALUES("1308","Logout","10","Logout from site","2012-07-01 17:43:24","","");
INSERT INTO user_log VALUES("1309","Create","16","Create Receipt","2012-07-01 17:43:53","receipts","190");
INSERT INTO user_log VALUES("1310","Create","16","Create Receipt","2012-07-01 17:44:48","receipts","191");
INSERT INTO user_log VALUES("1311","Create","16","Create Receipt","2012-07-01 17:45:30","receipts","192");
INSERT INTO user_log VALUES("1312","Logout","16","Logout from site","2012-07-01 17:46:32","","");
INSERT INTO user_log VALUES("1313","Login","9","Login to site","2012-07-01 17:47:19","","");
INSERT INTO user_log VALUES("1314","Login","10","Login to site","2012-07-01 17:58:58","","");
INSERT INTO user_log VALUES("1315","Login","10","Login to site","2012-07-01 18:26:26","","");
INSERT INTO user_log VALUES("1316","Create","10","Create Receipt","2012-07-01 18:28:41","receipts","193");
INSERT INTO user_log VALUES("1317","Create","10","Create Receipt","2012-07-01 18:30:18","receipts","194");
INSERT INTO user_log VALUES("1318","Update","10","Update a receipt","2012-07-01 18:36:41","receipts","194");
INSERT INTO user_log VALUES("1319","Create","10","Create Receipt","2012-07-01 18:39:51","receipts","195");
INSERT INTO user_log VALUES("1320","Create","10","Create Receipt","2012-07-01 18:42:09","receipts","196");
INSERT INTO user_log VALUES("1321","Create","10","Create Receipt","2012-07-01 18:44:24","receipts","197");
INSERT INTO user_log VALUES("1322","Login","10","Login to site","2012-07-01 19:15:07","","");
INSERT INTO user_log VALUES("1323","Create","10","Create Receipt","2012-07-01 19:16:34","receipts","198");
INSERT INTO user_log VALUES("1324","Create","10","Create Receipt","2012-07-01 19:18:09","receipts","199");
INSERT INTO user_log VALUES("1325","Create","10","Create Receipt","2012-07-01 19:19:14","receipts","200");
INSERT INTO user_log VALUES("1326","Create","10","Create Receipt","2012-07-01 19:23:16","receipts","201");
INSERT INTO user_log VALUES("1327","Create","10","Create Receipt","2012-07-01 19:25:25","receipts","202");
INSERT INTO user_log VALUES("1328","Create","10","Create Receipt","2012-07-01 19:26:45","receipts","203");
INSERT INTO user_log VALUES("1329","Create","10","Create Receipt","2012-07-01 19:28:39","receipts","204");
INSERT INTO user_log VALUES("1330","Create","10","Create Receipt","2012-07-01 19:29:45","receipts","205");
INSERT INTO user_log VALUES("1331","Create","10","Create Receipt","2012-07-01 19:31:01","receipts","206");
INSERT INTO user_log VALUES("1332","Create","10","Create Receipt","2012-07-01 19:32:28","receipts","207");
INSERT INTO user_log VALUES("1333","Update","10","Update a receipt","2012-07-01 19:32:42","receipts","207");
INSERT INTO user_log VALUES("1334","Create","10","Create Receipt","2012-07-01 19:34:08","receipts","208");
INSERT INTO user_log VALUES("1335","Create","10","Create Receipt","2012-07-01 19:35:51","receipts","209");
INSERT INTO user_log VALUES("1336","Create","10","Create a due collection","2012-07-01 19:37:44","due_collection","8");
INSERT INTO user_log VALUES("1337","Create","10","Create a due collection","2012-07-01 19:39:17","due_collection","9");
INSERT INTO user_log VALUES("1338","Create","10","Create a due collection","2012-07-01 19:40:20","due_collection","10");
INSERT INTO user_log VALUES("1339","Search","10","Search a receipt. Search text is 142773","2012-07-01 19:45:03","receipts","");
INSERT INTO user_log VALUES("1340","Update","10","Update a receipt","2012-07-01 19:45:14","receipts","207");
INSERT INTO user_log VALUES("1341","Create","10","Create a payment voucher","2012-07-01 19:45:47","payment_voucher","4");
INSERT INTO user_log VALUES("1342","Print","10","Print a payment voucher","2012-07-01 19:45:48","payment_voucher","4");
INSERT INTO user_log VALUES("1343","Approved","10","Approved a payment voucher","2012-07-01 19:45:53","payment_voucher","4");
INSERT INTO user_log VALUES("1344","Search","10","Search a receipt. Search text is 142739","2012-07-01 19:48:47","receipts","");
INSERT INTO user_log VALUES("1345","Update","10","Update a receipt","2012-07-01 19:49:17","receipts","173");
INSERT INTO user_log VALUES("1346","Update","10","Update a receipt","2012-07-01 19:53:12","receipts","129");
INSERT INTO user_log VALUES("1347","Update","10","Update a receipt","2012-07-01 19:53:50","receipts","127");
INSERT INTO user_log VALUES("1348","Update","10","Update a receipt","2012-07-01 19:54:17","receipts","128");
INSERT INTO user_log VALUES("1349","Create","10","Create a sector name is PEN-KUL-DAC","2012-07-01 20:05:06","sectors","22");
INSERT INTO user_log VALUES("1350","Create","10","Create a prices Sector is PEN/KUL/DAC","2012-07-01 20:05:29","prices","36");
INSERT INTO user_log VALUES("1351","Update","10","Update a prices","2012-07-01 20:06:38","prices","36");
INSERT INTO user_log VALUES("1352","Create","10","Create Receipt","2012-07-01 20:10:06","receipts","210");
INSERT INTO user_log VALUES("1353","Create","10","Create Receipt","2012-07-01 20:13:34","receipts","211");
INSERT INTO user_log VALUES("1354","Create","10","Create a due collection","2012-07-01 20:15:25","due_collection","11");
INSERT INTO user_log VALUES("1355","Update","10","Update a due collection","2012-07-01 20:16:25","due_collection","11");
INSERT INTO user_log VALUES("1356","Create","10","Create a due collection","2012-07-01 20:16:42","due_collection","12");
INSERT INTO user_log VALUES("1357","Create","10","Create a due collection","2012-07-01 20:17:23","due_collection","13");
INSERT INTO user_log VALUES("1358","Create","10","Create a due collection","2012-07-01 20:17:48","due_collection","14");
INSERT INTO user_log VALUES("1359","Update","10","Update a due collection","2012-07-01 20:18:00","due_collection","14");
INSERT INTO user_log VALUES("1360","Create","10","Create a due collection","2012-07-01 20:18:19","due_collection","15");
INSERT INTO user_log VALUES("1361","Create","10","Create a due collection","2012-07-01 20:18:29","due_collection","16");
INSERT INTO user_log VALUES("1362","Create","10","Create a due collection","2012-07-01 20:18:47","due_collection","17");
INSERT INTO user_log VALUES("1363","Login","9","Login to site","2012-07-01 20:23:34","","");
INSERT INTO user_log VALUES("1364","Login","9","Login to site","2012-07-01 21:15:03","","");
INSERT INTO user_log VALUES("1365","Login","9","Login to site","2012-07-01 21:41:45","","");
INSERT INTO user_log VALUES("1366","Login","9","Login to site","2012-07-01 23:10:22","","");
INSERT INTO user_log VALUES("1367","Login","9","Login to site","2012-07-01 23:51:27","","");
INSERT INTO user_log VALUES("1368","Login","10","Login to site","2012-07-02 00:10:18","","");
INSERT INTO user_log VALUES("1369","Login","10","Login to site","2012-07-02 00:34:20","","");
INSERT INTO user_log VALUES("1370","Login","10","Login to site","2012-07-02 00:34:23","","");
INSERT INTO user_log VALUES("1371","Logout","10","Logout from site","2012-07-02 00:36:34","","");
INSERT INTO user_log VALUES("1372","Login","9","Login to site","2012-07-02 11:03:20","","");
INSERT INTO user_log VALUES("1373","Delete","9","Delete user group and privilige","2012-07-02 11:17:31","user_group","5");
INSERT INTO user_log VALUES("1374","Login","9","Login to site","2012-07-02 11:30:54","","");
INSERT INTO user_log VALUES("1375","Login","10","Login to site","2012-07-02 11:38:21","","");
INSERT INTO user_log VALUES("1376","Login","18","Login to site","2012-07-02 11:48:49","","");
INSERT INTO user_log VALUES("1377","Login","10","Login to site","2012-07-02 11:51:43","","");
INSERT INTO user_log VALUES("1378","Update","18","Update a user","2012-07-02 11:54:12","user_info","18");
INSERT INTO user_log VALUES("1379","Logout","18","Logout from site","2012-07-02 11:55:01","","");
INSERT INTO user_log VALUES("1380","Login","10","Login to site","2012-07-02 11:58:47","","");
INSERT INTO user_log VALUES("1381","Login","9","Login to site","2012-07-02 12:14:33","","");
INSERT INTO user_log VALUES("1382","Login","10","Login to site","2012-07-02 12:15:05","","");
INSERT INTO user_log VALUES("1383","Logout","10","Logout from site","2012-07-02 12:16:49","","");
INSERT INTO user_log VALUES("1384","Update","9","Update a company","2012-07-02 12:31:34","company","1");
INSERT INTO user_log VALUES("1385","Logout","9","Logout from site","2012-07-02 12:53:25","","");
INSERT INTO user_log VALUES("1386","Login","9","Login to site","2012-07-02 12:54:35","","");
INSERT INTO user_log VALUES("1387","Login","10","Login to site","2012-07-02 13:08:37","","");
INSERT INTO user_log VALUES("1388","Login","9","Login to site","2012-07-02 13:08:39","","");
INSERT INTO user_log VALUES("1389","Update","9","Update a company","2012-07-02 13:24:22","company","1");
INSERT INTO user_log VALUES("1390","Update","9","Update a company","2012-07-02 13:25:30","company","1");
INSERT INTO user_log VALUES("1391","Update","9","Update a company","2012-07-02 13:26:19","company","1");
INSERT INTO user_log VALUES("1392","Update","9","Update a company","2012-07-02 13:27:32","company","1");
INSERT INTO user_log VALUES("1393","Update","9","Update a company","2012-07-02 13:28:14","company","1");
INSERT INTO user_log VALUES("1394","Update","9","Update a company","2012-07-02 13:28:45","company","1");
INSERT INTO user_log VALUES("1395","Update","9","Update a company","2012-07-02 13:29:15","company","1");
INSERT INTO user_log VALUES("1396","Login","10","Login to site","2012-07-02 13:31:06","","");
INSERT INTO user_log VALUES("1397","Logout","9","Logout from site","2012-07-02 13:32:18","","");
INSERT INTO user_log VALUES("1398","Create","10","Create a user","2012-07-02 13:40:45","user_info","19");
INSERT INTO user_log VALUES("1399","Login","10","Login to site","2012-07-02 13:43:14","","");
INSERT INTO user_log VALUES("1400","Login","10","Login to site","2012-07-02 14:48:11","","");
INSERT INTO user_log VALUES("1401","Login","10","Login to site","2012-07-02 15:29:35","","");
INSERT INTO user_log VALUES("1402","Login","10","Login to site","2012-07-02 15:29:37","","");
INSERT INTO user_log VALUES("1403","Login","10","Login to site","2012-07-02 15:29:37","","");
INSERT INTO user_log VALUES("1404","Create","10","Create a payment voucher","2012-07-02 15:33:54","payment_voucher","5");
INSERT INTO user_log VALUES("1405","Print","10","Print a payment voucher","2012-07-02 15:33:55","payment_voucher","5");
INSERT INTO user_log VALUES("1406","Login","10","Login to site","2012-07-02 15:48:42","","");
INSERT INTO user_log VALUES("1407","Logout","10","Logout from site","2012-07-02 15:50:22","","");
INSERT INTO user_log VALUES("1408","Logout","10","Logout from site","2012-07-02 15:50:23","","");
INSERT INTO user_log VALUES("1409","Logout","10","Logout from site","2012-07-02 15:50:24","","");
INSERT INTO user_log VALUES("1410","Login","10","Login to site","2012-07-02 15:50:27","","");
INSERT INTO user_log VALUES("1411","Update","10","Update serial number","2012-07-02 15:52:53","serial_number","4");
INSERT INTO user_log VALUES("1412","Logout","10","Logout from site","2012-07-02 15:52:57","","");
INSERT INTO user_log VALUES("1413","Login","10","Login to site","2012-07-02 15:54:36","","");
INSERT INTO user_log VALUES("1414","Logout","10","Logout from site","2012-07-02 16:07:35","","");
INSERT INTO user_log VALUES("1415","Login","10","Login to site","2012-07-02 16:07:41","","");
INSERT INTO user_log VALUES("1416","Logout","10","Logout from site","2012-07-02 16:09:24","","");
INSERT INTO user_log VALUES("1417","Login","10","Login to site","2012-07-02 16:09:31","","");
INSERT INTO user_log VALUES("1418","Create","10","Create a payment voucher","2012-07-02 16:17:37","payment_voucher","6");
INSERT INTO user_log VALUES("1419","Print","10","Print a payment voucher","2012-07-02 16:17:38","payment_voucher","6");
INSERT INTO user_log VALUES("1420","Approved","10","Approved a payment voucher","2012-07-02 16:18:56","payment_voucher","6");
INSERT INTO user_log VALUES("1421","Login","10","Login to site","2012-07-02 16:31:33","","");
INSERT INTO user_log VALUES("1422","Create","10","Create Receipt","2012-07-02 16:39:56","receipts","212");
INSERT INTO user_log VALUES("1423","Create","10","Create Receipt","2012-07-02 16:41:52","receipts","213");
INSERT INTO user_log VALUES("1424","Update","10","Update a receipt","2012-07-02 16:42:30","receipts","213");
INSERT INTO user_log VALUES("1425","Create","10","Create Receipt","2012-07-02 16:44:26","receipts","214");
INSERT INTO user_log VALUES("1426","Create","10","Create Receipt","2012-07-02 16:46:10","receipts","215");
INSERT INTO user_log VALUES("1427","Login","17","Login to site","2012-07-02 16:52:15","","");
INSERT INTO user_log VALUES("1428","Create","10","Create a agent name is SITI ZUBAIDAH","2012-07-02 16:52:22","agents","27");
INSERT INTO user_log VALUES("1429","Login","17","Login to site","2012-07-02 16:52:24","","");
INSERT INTO user_log VALUES("1430","Login","17","Login to site","2012-07-02 16:52:26","","");
INSERT INTO user_log VALUES("1431","Create","10","Create Receipt","2012-07-02 16:55:00","receipts","216");
INSERT INTO user_log VALUES("1432","Create","10","Create a prices Sector is KUL-DAC-KTM","2012-07-02 16:56:48","prices","37");
INSERT INTO user_log VALUES("1433","Update","10","Update a receipt","2012-07-02 17:01:29","receipts","216");
INSERT INTO user_log VALUES("1434","Create","10","Create Receipt","2012-07-02 17:03:37","receipts","217");
INSERT INTO user_log VALUES("1435","Logout","17","Logout from site","2012-07-02 17:06:26","","");
INSERT INTO user_log VALUES("1436","Create","10","Create Receipt","2012-07-02 17:12:58","receipts","218");
INSERT INTO user_log VALUES("1437","Create","10","Create Receipt","2012-07-02 17:14:37","receipts","219");
INSERT INTO user_log VALUES("1438","Create","10","Create Receipt","2012-07-02 17:16:29","receipts","220");
INSERT INTO user_log VALUES("1439","Create","10","Create Receipt","2012-07-02 17:18:14","receipts","221");
INSERT INTO user_log VALUES("1440","Create","10","Create Receipt","2012-07-02 17:20:05","receipts","222");
INSERT INTO user_log VALUES("1441","Create","10","Create Receipt","2012-07-02 17:22:13","receipts","223");
INSERT INTO user_log VALUES("1442","Create","10","Create Receipt","2012-07-02 17:24:17","receipts","224");
INSERT INTO user_log VALUES("1443","Create","10","Create Receipt","2012-07-02 17:26:47","receipts","225");
INSERT INTO user_log VALUES("1444","Create","10","Create a agent name is TORIKUL","2012-07-02 17:28:20","agents","28");
INSERT INTO user_log VALUES("1445","Update","10","Update a prices","2012-07-02 17:30:34","prices","24");
INSERT INTO user_log VALUES("1446","Create","10","Create Receipt","2012-07-02 17:31:53","receipts","226");
INSERT INTO user_log VALUES("1447","Create","10","Create Receipt","2012-07-02 17:33:49","receipts","227");
INSERT INTO user_log VALUES("1448","Update","10","Update a receipt","2012-07-02 17:34:15","receipts","227");
INSERT INTO user_log VALUES("1449","Create","10","Create Receipt","2012-07-02 17:36:04","receipts","228");
INSERT INTO user_log VALUES("1450","Create","10","Create Receipt","2012-07-02 17:37:15","receipts","229");
INSERT INTO user_log VALUES("1451","Create","10","Create Receipt","2012-07-02 17:39:01","receipts","230");
INSERT INTO user_log VALUES("1452","Create","10","Create Receipt","2012-07-02 17:40:14","receipts","231");
INSERT INTO user_log VALUES("1453","Create","10","Create a agent name is AZAD","2012-07-02 17:42:24","agents","29");
INSERT INTO user_log VALUES("1454","Update","10","Update a receipt","2012-07-02 17:42:45","receipts","230");
INSERT INTO user_log VALUES("1455","Update","10","Update a receipt","2012-07-02 17:43:07","receipts","231");
INSERT INTO user_log VALUES("1456","Create","10","Create Receipt","2012-07-02 17:46:46","receipts","232");
INSERT INTO user_log VALUES("1457","Create","10","Create Receipt","2012-07-02 17:50:32","receipts","233");
INSERT INTO user_log VALUES("1458","Create","10","Create Receipt","2012-07-02 17:52:39","receipts","234");
INSERT INTO user_log VALUES("1459","Create","10","Create Receipt","2012-07-02 17:56:07","receipts","235");
INSERT INTO user_log VALUES("1460","Create","10","Create Receipt","2012-07-02 17:58:13","receipts","236");
INSERT INTO user_log VALUES("1461","Create","10","Create Receipt","2012-07-02 18:00:29","receipts","237");
INSERT INTO user_log VALUES("1462","Create","10","Create Receipt","2012-07-02 18:02:32","receipts","238");
INSERT INTO user_log VALUES("1463","Create","10","Create Receipt","2012-07-02 18:03:57","receipts","239");
INSERT INTO user_log VALUES("1464","Create","10","Create Receipt","2012-07-02 18:05:58","receipts","240");
INSERT INTO user_log VALUES("1465","Create","10","Create a sector name is KUL-DAC-KTM-DAC-KUL","2012-07-02 18:07:51","sectors","23");
INSERT INTO user_log VALUES("1466","Create","10","Create a prices Sector is KUL-DAC-KTM-DAC-KUL","2012-07-02 18:08:36","prices","38");
INSERT INTO user_log VALUES("1467","Create","10","Create Receipt","2012-07-02 18:10:50","receipts","241");
INSERT INTO user_log VALUES("1468","Create","10","Create Receipt","2012-07-02 18:12:35","receipts","242");
INSERT INTO user_log VALUES("1469","Create","10","Create Receipt","2012-07-02 18:14:38","receipts","243");
INSERT INTO user_log VALUES("1470","Create","10","Create Receipt","2012-07-02 18:16:25","receipts","244");
INSERT INTO user_log VALUES("1471","Create","10","Create Receipt","2012-07-02 18:18:16","receipts","245");
INSERT INTO user_log VALUES("1472","Create","10","Create a sector name is ZYL-DAC-KUL-DAC-ZYL","2012-07-02 18:21:53","sectors","24");
INSERT INTO user_log VALUES("1473","Create","10","Create a prices Sector is ZYL-DAC-KUL-DAC-ZYL","2012-07-02 18:22:56","prices","39");
INSERT INTO user_log VALUES("1474","Create","10","Create a agent name is MONTU BISWAS","2012-07-02 18:23:58","agents","30");
INSERT INTO user_log VALUES("1475","Create","10","Create Receipt","2012-07-02 18:28:07","receipts","246");
INSERT INTO user_log VALUES("1476","Create","10","Create Receipt","2012-07-02 18:30:27","receipts","247");
INSERT INTO user_log VALUES("1477","Create","10","Create Receipt","2012-07-02 18:32:17","receipts","248");
INSERT INTO user_log VALUES("1478","Create","10","Create Receipt","2012-07-02 18:33:41","receipts","249");
INSERT INTO user_log VALUES("1479","Create","10","Create Receipt","2012-07-02 18:35:03","receipts","250");
INSERT INTO user_log VALUES("1480","Create","10","Create Receipt","2012-07-02 18:37:01","receipts","251");
INSERT INTO user_log VALUES("1481","Create","10","Create Receipt","2012-07-02 18:38:17","receipts","252");
INSERT INTO user_log VALUES("1482","Create","10","Create Receipt","2012-07-02 18:41:21","receipts","253");
INSERT INTO user_log VALUES("1483","Create","10","Create Receipt","2012-07-02 18:42:53","receipts","254");
INSERT INTO user_log VALUES("1484","Create","10","Create Receipt","2012-07-02 18:44:20","receipts","255");
INSERT INTO user_log VALUES("1485","Create","10","Create Receipt","2012-07-02 18:46:10","receipts","256");
INSERT INTO user_log VALUES("1486","Create","10","Create a agent name is HAPPY TRAVEL","2012-07-02 18:47:13","agents","31");
INSERT INTO user_log VALUES("1487","Create","10","Create Receipt","2012-07-02 18:49:24","receipts","257");
INSERT INTO user_log VALUES("1488","Create","10","Create Receipt","2012-07-02 18:50:43","receipts","258");
INSERT INTO user_log VALUES("1489","Create","10","Create Receipt","2012-07-02 18:53:01","receipts","259");
INSERT INTO user_log VALUES("1490","Create","10","Create Receipt","2012-07-02 18:55:29","receipts","260");
INSERT INTO user_log VALUES("1491","Login","17","Login to site","2012-07-02 18:56:14","","");
INSERT INTO user_log VALUES("1492","Create","10","Create a due collection","2012-07-02 18:57:44","due_collection","18");
INSERT INTO user_log VALUES("1493","Create","17","Create Receipt","2012-07-02 18:58:06","receipts","261");
INSERT INTO user_log VALUES("1494","Update","17","Update a receipt","2012-07-02 18:58:27","receipts","261");
INSERT INTO user_log VALUES("1495","Create","10","Create a due collection","2012-07-02 18:59:53","due_collection","19");
INSERT INTO user_log VALUES("1496","Create","10","Create a due collection","2012-07-02 19:00:47","due_collection","20");
INSERT INTO user_log VALUES("1497","Create","10","Create a due collection","2012-07-02 19:01:22","due_collection","21");
INSERT INTO user_log VALUES("1498","Create","10","Create a due collection","2012-07-02 19:01:42","due_collection","22");
INSERT INTO user_log VALUES("1499","Create","10","Create a payment voucher","2012-07-02 19:03:16","payment_voucher","7");
INSERT INTO user_log VALUES("1500","Print","10","Print a payment voucher","2012-07-02 19:03:17","payment_voucher","7");
INSERT INTO user_log VALUES("1501","Approved","10","Approved a payment voucher","2012-07-02 19:03:20","payment_voucher","7");
INSERT INTO user_log VALUES("1502","Update","10","Update a receipt","2012-07-02 19:05:43","receipts","220");
INSERT INTO user_log VALUES("1503","Update","10","Update a receipt","2012-07-02 19:06:29","receipts","214");
INSERT INTO user_log VALUES("1504","Logout","10","Logout from site","2012-07-02 19:06:34","","");
INSERT INTO user_log VALUES("1505","Create","17","Create Receipt","2012-07-02 19:09:46","receipts","262");
INSERT INTO user_log VALUES("1506","Login","10","Login to site","2012-07-02 19:10:36","","");
INSERT INTO user_log VALUES("1507","Create","17","Create Receipt","2012-07-02 19:11:49","receipts","263");
INSERT INTO user_log VALUES("1508","Create","17","Create Receipt","2012-07-02 19:11:53","receipts","264");
INSERT INTO user_log VALUES("1509","Logout","10","Logout from site","2012-07-02 19:16:29","","");
INSERT INTO user_log VALUES("1510","Logout","10","Logout from site","2012-07-02 19:16:29","","");
INSERT INTO user_log VALUES("1511","Login","10","Login to site","2012-07-02 19:17:11","","");
INSERT INTO user_log VALUES("1512","Create","17","Create Receipt","2012-07-02 19:20:22","receipts","265");
INSERT INTO user_log VALUES("1513","Login","10","Login to site","2012-07-02 19:29:40","","");
INSERT INTO user_log VALUES("1514","Delete","10","Delete a receipt","2012-07-02 19:33:42","receipts","263");
INSERT INTO user_log VALUES("1515","Create","10","Create a due collection","2012-07-02 19:47:30","due_collection","23");
INSERT INTO user_log VALUES("1516","Update","10","Update a receipt","2012-07-02 19:55:47","receipts","254");
INSERT INTO user_log VALUES("1517","Login","17","Login to site","2012-07-02 19:55:53","","");
INSERT INTO user_log VALUES("1518","Update","10","Update a receipt","2012-07-02 19:57:10","receipts","214");
INSERT INTO user_log VALUES("1519","Create","17","Create Receipt","2012-07-02 20:04:04","receipts","266");
INSERT INTO user_log VALUES("1520","Create","17","Create Receipt","2012-07-02 20:15:01","receipts","267");
INSERT INTO user_log VALUES("1521","Login","18","Login to site","2012-07-02 20:30:20","","");
INSERT INTO user_log VALUES("1522","Login","17","Login to site","2012-07-02 20:31:07","","");
INSERT INTO user_log VALUES("1523","Create","17","Create Receipt","2012-07-02 20:32:39","receipts","268");
INSERT INTO user_log VALUES("1524","Login","10","Login to site","2012-07-02 21:42:48","","");
INSERT INTO user_log VALUES("1525","Create","10","Create a due collection","2012-07-02 21:44:51","due_collection","24");
INSERT INTO user_log VALUES("1526","Create","10","Create a due collection","2012-07-02 21:45:24","due_collection","25");
INSERT INTO user_log VALUES("1527","Logout","10","Logout from site","2012-07-02 21:51:10","","");
INSERT INTO user_log VALUES("1528","Login","9","Login to site","2012-07-02 22:00:08","","");
INSERT INTO user_log VALUES("1529","Login","10","Login to site","2012-07-02 22:07:35","","");
INSERT INTO user_log VALUES("1530","Logout","10","Logout from site","2012-07-02 22:24:26","","");
INSERT INTO user_log VALUES("1531","Login","10","Login to site","2012-07-02 22:25:47","","");
INSERT INTO user_log VALUES("1532","Create","10","Create Receipt","2012-07-02 22:27:44","receipts","269");
INSERT INTO user_log VALUES("1533","Create","10","Create Receipt","2012-07-02 22:30:23","receipts","270");
INSERT INTO user_log VALUES("1534","Update","10","Update a receipt","2012-07-02 22:32:06","receipts","267");
INSERT INTO user_log VALUES("1535","Update","10","Update a due collection","2012-07-02 22:35:10","due_collection","24");
INSERT INTO user_log VALUES("1536","Update","10","Update a agent name isUZZAL JB","2012-07-02 22:48:42","agents","11");
INSERT INTO user_log VALUES("1537","Update","10","Update a agent name isANWAR MALEKKA","2012-07-02 22:49:07","agents","13");
INSERT INTO user_log VALUES("1538","Update","10","Update a agent name isMOHIUDDIN PENANG","2012-07-02 22:49:44","agents","17");
INSERT INTO user_log VALUES("1539","Logout","10","Logout from site","2012-07-02 22:50:27","","");
INSERT INTO user_log VALUES("1540","Login","10","Login to site","2012-07-02 22:57:27","","");
INSERT INTO user_log VALUES("1541","Login","10","Login to site","2012-07-02 23:12:16","","");
INSERT INTO user_log VALUES("1542","Login","10","Login to site","2012-07-02 23:12:19","","");
INSERT INTO user_log VALUES("1543","Login","10","Login to site","2012-07-02 23:12:24","","");
INSERT INTO user_log VALUES("1544","Login","10","Login to site","2012-07-02 23:12:29","","");
INSERT INTO user_log VALUES("1545","Logout","10","Logout from site","2012-07-02 23:14:03","","");
INSERT INTO user_log VALUES("1546","Login","10","Login to site","2012-07-03 09:14:36","","");
INSERT INTO user_log VALUES("1547","Update","10","Update a agent name isSM ZARIQ TRAVEL","2012-07-03 09:15:38","agents","1");
INSERT INTO user_log VALUES("1548","Create","10","Create a agent name is Electric BIl","2012-07-03 09:16:48","agents","32");
INSERT INTO user_log VALUES("1549","Logout","10","Logout from site","2012-07-03 09:20:27","","");
INSERT INTO user_log VALUES("1550","Login","10","Login to site","2012-07-03 09:54:09","","");
INSERT INTO user_log VALUES("1551","Login","17","Login to site","2012-07-03 10:12:37","","");
INSERT INTO user_log VALUES("1552","Create","17","Create Receipt","2012-07-03 10:13:56","receipts","271");
INSERT INTO user_log VALUES("1553","Update","17","Update a receipt","2012-07-03 10:14:13","receipts","271");
INSERT INTO user_log VALUES("1554","Update","17","Update a receipt","2012-07-03 10:14:51","receipts","271");
INSERT INTO user_log VALUES("1555","Login","10","Login to site","2012-07-03 10:25:37","","");
INSERT INTO user_log VALUES("1556","Create","17","Create Receipt","2012-07-03 10:30:54","receipts","272");
INSERT INTO user_log VALUES("1557","Create","17","Create Receipt","2012-07-03 10:39:00","receipts","273");
INSERT INTO user_log VALUES("1558","Create","17","Create Receipt","2012-07-03 10:44:01","receipts","274");
INSERT INTO user_log VALUES("1559","Create","17","Create Receipt","2012-07-03 10:51:37","receipts","275");
INSERT INTO user_log VALUES("1560","Create","17","Create Receipt","2012-07-03 11:04:11","receipts","276");
INSERT INTO user_log VALUES("1561","Create","17","Create Receipt","2012-07-03 11:04:15","receipts","277");
INSERT INTO user_log VALUES("1562","Create","17","Create Receipt","2012-07-03 11:04:18","receipts","278");
INSERT INTO user_log VALUES("1563","Create","17","Create Receipt","2012-07-03 11:04:20","receipts","279");
INSERT INTO user_log VALUES("1564","Create","17","Create Receipt","2012-07-03 11:04:22","receipts","280");
INSERT INTO user_log VALUES("1565","Create","17","Create Receipt","2012-07-03 11:04:22","receipts","281");
INSERT INTO user_log VALUES("1566","Create","17","Create Receipt","2012-07-03 11:04:23","receipts","282");
INSERT INTO user_log VALUES("1567","Create","17","Create Receipt","2012-07-03 11:12:23","receipts","283");
INSERT INTO user_log VALUES("1568","Delete","17","Delete a receipt","2012-07-03 11:13:37","receipts","281");
INSERT INTO user_log VALUES("1569","Delete","17","Delete a receipt","2012-07-03 11:13:52","receipts","280");
INSERT INTO user_log VALUES("1570","Logout","17","Logout from site","2012-07-03 11:14:39","","");
INSERT INTO user_log VALUES("1571","Login","17","Login to site","2012-07-03 11:15:02","","");
INSERT INTO user_log VALUES("1572","Delete","17","Delete a receipt","2012-07-03 11:15:33","receipts","276");
INSERT INTO user_log VALUES("1573","Delete","17","Delete a receipt","2012-07-03 11:15:50","receipts","279");
INSERT INTO user_log VALUES("1574","Delete","17","Delete a receipt","2012-07-03 11:16:00","receipts","274");
INSERT INTO user_log VALUES("1575","Delete","17","Delete a receipt","2012-07-03 11:16:20","receipts","277");
INSERT INTO user_log VALUES("1576","Delete","17","Delete a receipt","2012-07-03 11:16:29","receipts","278");
INSERT INTO user_log VALUES("1577","Update","17","Update a receipt","2012-07-03 11:19:05","receipts","283");
INSERT INTO user_log VALUES("1578","Login","10","Login to site","2012-07-03 11:28:01","","");
INSERT INTO user_log VALUES("1579","Create","10","Create Receipt","2012-07-03 11:32:56","receipts","284");
INSERT INTO user_log VALUES("1580","Update","10","Update a receipt","2012-07-03 11:33:13","receipts","284");
INSERT INTO user_log VALUES("1581","Login","17","Login to site","2012-07-03 11:33:58","","");
INSERT INTO user_log VALUES("1582","Create","17","Create Receipt","2012-07-03 11:35:42","receipts","285");
INSERT INTO user_log VALUES("1583","Create","10","Create a payment voucher","2012-07-03 11:36:03","payment_voucher","8");
INSERT INTO user_log VALUES("1584","Print","10","Print a payment voucher","2012-07-03 11:36:04","payment_voucher","8");
INSERT INTO user_log VALUES("1585","Approved","10","Approved a payment voucher","2012-07-03 11:36:36","payment_voucher","8");
INSERT INTO user_log VALUES("1586","Print","10","Print a payment voucher","2012-07-03 11:36:55","payment_voucher","8");
INSERT INTO user_log VALUES("1587","Update","17","Update a receipt","2012-07-03 11:38:22","receipts","285");
INSERT INTO user_log VALUES("1588","Logout","10","Logout from site","2012-07-03 11:42:04","","");
INSERT INTO user_log VALUES("1589","Create","17","Create Receipt","2012-07-03 11:42:17","receipts","286");
INSERT INTO user_log VALUES("1590","Create","17","Create Receipt","2012-07-03 11:50:33","receipts","287");
INSERT INTO user_log VALUES("1591","Login","10","Login to site","2012-07-03 11:52:10","","");
INSERT INTO user_log VALUES("1592","Create","17","Create Receipt","2012-07-03 11:52:31","receipts","288");
INSERT INTO user_log VALUES("1593","Create","10","Create Receipt","2012-07-03 11:53:40","receipts","289");
INSERT INTO user_log VALUES("1594","Update","10","Update a receipt","2012-07-03 11:53:56","receipts","289");
INSERT INTO user_log VALUES("1595","Login","10","Login to site","2012-07-03 12:21:10","","");
INSERT INTO user_log VALUES("1596","Create","10","Create Receipt","2012-07-03 12:27:30","receipts","290");
INSERT INTO user_log VALUES("1597","Logout","10","Logout from site","2012-07-03 12:32:02","","");
INSERT INTO user_log VALUES("1598","Login","17","Login to site","2012-07-03 12:34:47","","");
INSERT INTO user_log VALUES("1599","Login","10","Login to site","2012-07-03 12:40:01","","");
INSERT INTO user_log VALUES("1600","Create","10","Create Receipt","2012-07-03 12:44:04","receipts","291");
INSERT INTO user_log VALUES("1601","Create","10","Create Receipt","2012-07-03 12:45:55","receipts","292");
INSERT INTO user_log VALUES("1602","Update","10","Update a receipt","2012-07-03 12:47:12","receipts","292");
INSERT INTO user_log VALUES("1603","Login","17","Login to site","2012-07-03 12:50:33","","");
INSERT INTO user_log VALUES("1604","Create","17","Create a agent name is MR RAJU","2012-07-03 12:51:43","agents","33");
INSERT INTO user_log VALUES("1605","Create","17","Create Receipt","2012-07-03 12:54:52","receipts","293");
INSERT INTO user_log VALUES("1606","Create","17","Create Receipt","2012-07-03 13:05:32","receipts","294");
INSERT INTO user_log VALUES("1607","Login","10","Login to site","2012-07-03 13:09:06","","");
INSERT INTO user_log VALUES("1608","Delete","10","Delete a sector name is DAK-SG","2012-07-03 13:10:36","sectors","9");
INSERT INTO user_log VALUES("1609","Create","10","Create a sector name is KUL-JSR","2012-07-03 13:11:00","sectors","25");
INSERT INTO user_log VALUES("1610","Create","10","Create a prices Sector is KUL-JSR","2012-07-03 13:11:39","prices","40");
INSERT INTO user_log VALUES("1611","Create","10","Create Receipt","2012-07-03 13:13:15","receipts","295");
INSERT INTO user_log VALUES("1612","Login","9","Login to site","2012-07-03 13:14:41","","");
INSERT INTO user_log VALUES("1613","Login","17","Login to site","2012-07-03 13:15:58","","");
INSERT INTO user_log VALUES("1614","Create","17","Create Receipt","2012-07-03 13:17:35","receipts","296");
INSERT INTO user_log VALUES("1615","Update","17","Update a receipt","2012-07-03 13:17:56","receipts","296");
INSERT INTO user_log VALUES("1616","Create","10","Create Receipt","2012-07-03 13:21:30","receipts","297");
INSERT INTO user_log VALUES("1617","Update","10","Update a receipt","2012-07-03 13:21:41","receipts","297");
INSERT INTO user_log VALUES("1618","Login","9","Login to site","2012-07-03 13:24:36","","");
INSERT INTO user_log VALUES("1619","Create","17","Create Receipt","2012-07-03 13:27:51","receipts","298");
INSERT INTO user_log VALUES("1620","Update","10","Update a user","2012-07-03 13:28:07","user_info","9");
INSERT INTO user_log VALUES("1621","Update","10","Update a user","2012-07-03 13:30:12","user_info","9");
INSERT INTO user_log VALUES("1622","Logout","10","Logout from site","2012-07-03 13:30:19","","");
INSERT INTO user_log VALUES("1623","Create","17","Create Receipt","2012-07-03 13:32:27","receipts","299");
INSERT INTO user_log VALUES("1624","Create","17","Create Receipt","2012-07-03 13:40:34","receipts","300");
INSERT INTO user_log VALUES("1625","Create","17","Create Receipt","2012-07-03 13:42:42","receipts","301");
INSERT INTO user_log VALUES("1626","Login","9","Login to site","2012-07-03 13:53:33","","");
INSERT INTO user_log VALUES("1627","Login","10","Login to site","2012-07-03 13:53:46","","");
INSERT INTO user_log VALUES("1628","Create","10","Create a payment voucher","2012-07-03 13:54:24","payment_voucher","9");
INSERT INTO user_log VALUES("1629","Print","10","Print a payment voucher","2012-07-03 13:54:25","payment_voucher","9");
INSERT INTO user_log VALUES("1630","Approved","10","Approved a payment voucher","2012-07-03 13:54:55","payment_voucher","9");
INSERT INTO user_log VALUES("1631","Create","10","Create Receipt","2012-07-03 13:56:10","receipts","302");
INSERT INTO user_log VALUES("1632","Create","10","Create a payment voucher","2012-07-03 14:02:55","payment_voucher","10");
INSERT INTO user_log VALUES("1633","Print","10","Print a payment voucher","2012-07-03 14:03:00","payment_voucher","10");
INSERT INTO user_log VALUES("1634","Approved","10","Approved a payment voucher","2012-07-03 14:03:17","payment_voucher","10");
INSERT INTO user_log VALUES("1635","Create","10","Create Receipt","2012-07-03 14:08:59","receipts","303");
INSERT INTO user_log VALUES("1636","Login","17","Login to site","2012-07-03 14:27:38","","");
INSERT INTO user_log VALUES("1637","Create","17","Create Receipt","2012-07-03 14:30:13","receipts","304");
INSERT INTO user_log VALUES("1638","Login","10","Login to site","2012-07-03 14:34:05","","");
INSERT INTO user_log VALUES("1639","Create","10","Create Receipt","2012-07-03 14:36:38","receipts","305");
INSERT INTO user_log VALUES("1640","Login","9","Login to site","2012-07-03 14:37:06","","");
INSERT INTO user_log VALUES("1641","Create","17","Create Receipt","2012-07-03 14:41:07","receipts","306");
INSERT INTO user_log VALUES("1642","Create","17","Create Receipt","2012-07-03 14:49:27","receipts","307");
INSERT INTO user_log VALUES("1643","Login","10","Login to site","2012-07-03 14:53:09","","");
INSERT INTO user_log VALUES("1644","Create","10","Create a agent name is RAHAMAN SEREMBAN","2012-07-03 14:54:26","agents","34");
INSERT INTO user_log VALUES("1645","Create","10","Create Receipt","2012-07-03 14:56:02","receipts","308");
INSERT INTO user_log VALUES("1646","Login","17","Login to site","2012-07-03 15:09:44","","");
INSERT INTO user_log VALUES("1647","Create","17","Create Receipt","2012-07-03 15:12:50","receipts","309");
INSERT INTO user_log VALUES("1648","Login","10","Login to site","2012-07-03 15:14:50","","");
INSERT INTO user_log VALUES("1649","Login","17","Login to site","2012-07-03 15:27:57","","");
INSERT INTO user_log VALUES("1650","Login","17","Login to site","2012-07-03 15:46:41","","");
INSERT INTO user_log VALUES("1651","Login","10","Login to site","2012-07-03 15:47:28","","");
INSERT INTO user_log VALUES("1652","Create","17","Create Receipt","2012-07-03 15:49:09","receipts","310");
INSERT INTO user_log VALUES("1653","Create","17","Create Receipt","2012-07-03 15:49:14","receipts","311");
INSERT INTO user_log VALUES("1654","Create","17","Create Receipt","2012-07-03 15:49:20","receipts","312");
INSERT INTO user_log VALUES("1655","Create","10","Create Receipt","2012-07-03 15:49:41","receipts","313");
INSERT INTO user_log VALUES("1656","Logout","10","Logout from site","2012-07-03 15:51:25","","");
INSERT INTO user_log VALUES("1657","Login","19","Login to site","2012-07-03 15:51:38","","");
INSERT INTO user_log VALUES("1658","Logout","19","Logout from site","2012-07-03 15:51:46","","");
INSERT INTO user_log VALUES("1659","Login","10","Login to site","2012-07-03 15:51:55","","");
INSERT INTO user_log VALUES("1660","Create","17","Create a payment voucher","2012-07-03 15:52:55","payment_voucher","11");
INSERT INTO user_log VALUES("1661","Print","17","Print a payment voucher","2012-07-03 15:52:56","payment_voucher","11");
INSERT INTO user_log VALUES("1662","Approved","17","Approved a payment voucher","2012-07-03 15:53:37","payment_voucher","11");
INSERT INTO user_log VALUES("1663","Search","17","Search a receipt. Search text is 142804","2012-07-03 15:53:55","receipts","");
INSERT INTO user_log VALUES("1664","Login","19","Login to site","2012-07-03 15:54:02","","");
INSERT INTO user_log VALUES("1665","Update","17","Update a receipt","2012-07-03 15:55:34","receipts","238");
INSERT INTO user_log VALUES("1666","Create","17","Create Receipt","2012-07-03 16:01:31","receipts","314");
INSERT INTO user_log VALUES("1667","Create","10","Create Receipt","2012-07-03 16:03:14","receipts","315");
INSERT INTO user_log VALUES("1668","Create","10","Create Receipt","2012-07-03 16:04:36","receipts","316");
INSERT INTO user_log VALUES("1669","Create","19","Create Receipt","2012-07-03 16:07:08","receipts","317");
INSERT INTO user_log VALUES("1670","Login","19","Login to site","2012-07-03 16:18:54","","");
INSERT INTO user_log VALUES("1671","Login","10","Login to site","2012-07-03 16:22:14","","");
INSERT INTO user_log VALUES("1672","Create","10","Create Receipt","2012-07-03 16:23:52","receipts","318");
INSERT INTO user_log VALUES("1673","Update","10","Update a receipt","2012-07-03 16:24:38","receipts","318");
INSERT INTO user_log VALUES("1674","Login","17","Login to site","2012-07-03 16:26:03","","");
INSERT INTO user_log VALUES("1675","Create","17","Create Receipt","2012-07-03 16:28:35","receipts","319");
INSERT INTO user_log VALUES("1676","Create","10","Create a payment voucher","2012-07-03 16:32:21","payment_voucher","12");
INSERT INTO user_log VALUES("1677","Print","10","Print a payment voucher","2012-07-03 16:32:21","payment_voucher","12");
INSERT INTO user_log VALUES("1678","Update","10","Update a payment voucher","2012-07-03 16:32:34","payment_voucher","12");
INSERT INTO user_log VALUES("1679","Approved","10","Approved a payment voucher","2012-07-03 16:32:37","payment_voucher","12");
INSERT INTO user_log VALUES("1680","Print","10","Print a payment voucher","2012-07-03 16:32:44","payment_voucher","12");
INSERT INTO user_log VALUES("1681","Login","9","Login to site","2012-07-03 16:35:59","","");
INSERT INTO user_log VALUES("1682","Create","10","Create Receipt","2012-07-03 16:36:03","receipts","320");
INSERT INTO user_log VALUES("1683","Update","10","Update a receipt","2012-07-03 16:37:33","receipts","320");
INSERT INTO user_log VALUES("1684","Update","10","Update a receipt","2012-07-03 16:37:58","receipts","320");
INSERT INTO user_log VALUES("1685","Login","17","Login to site","2012-07-03 16:39:03","","");
INSERT INTO user_log VALUES("1686","Create","10","Create a sector name is KUL-LGK-KUL","2012-07-03 16:39:43","sectors","26");
INSERT INTO user_log VALUES("1687","Create","10","Create a prices Sector is KUL/LGK/KUL","2012-07-03 16:40:11","prices","41");
INSERT INTO user_log VALUES("1688","Create","17","Create Receipt","2012-07-03 16:40:39","receipts","321");
INSERT INTO user_log VALUES("1689","Create","10","Create Receipt","2012-07-03 16:42:53","receipts","322");
INSERT INTO user_log VALUES("1690","Update","10","Update a receipt","2012-07-03 16:45:11","receipts","317");
INSERT INTO user_log VALUES("1691","Login","10","Login to site","2012-07-03 17:00:03","","");
INSERT INTO user_log VALUES("1692","Login","17","Login to site","2012-07-03 17:04:10","","");
INSERT INTO user_log VALUES("1693","Login","19","Login to site","2012-07-03 17:07:03","","");
INSERT INTO user_log VALUES("1694","Create","17","Create Receipt","2012-07-03 17:07:21","receipts","323");
INSERT INTO user_log VALUES("1695","Search","10","Search a receipt. Search text is 142785","2012-07-03 17:07:52","receipts","");
INSERT INTO user_log VALUES("1696","Update","10","Update a receipt","2012-07-03 17:08:08","receipts","219");
INSERT INTO user_log VALUES("1697","Create","17","Create Receipt","2012-07-03 17:10:31","receipts","324");
INSERT INTO user_log VALUES("1698","Create","19","Create a sector name is KUL/RGN/KUL","2012-07-03 17:12:00","sectors","27");
INSERT INTO user_log VALUES("1699","Create","19","Create a prices Sector is KUL/RGN/KUL","2012-07-03 17:13:50","prices","42");
INSERT INTO user_log VALUES("1700","Create","17","Create Receipt","2012-07-03 17:14:22","receipts","325");
INSERT INTO user_log VALUES("1701","Create","10","Create Receipt","2012-07-03 17:17:02","receipts","326");
INSERT INTO user_log VALUES("1702","Create","19","Create Receipt","2012-07-03 17:17:03","receipts","327");
INSERT INTO user_log VALUES("1703","Create","17","Create Receipt","2012-07-03 17:17:03","receipts","328");
INSERT INTO user_log VALUES("1704","Create","17","Create a agent name is KABIR- CONTRACTOR","2012-07-03 17:18:52","agents","35");
INSERT INTO user_log VALUES("1705","Create","10","Create Receipt","2012-07-03 17:18:57","receipts","329");
INSERT INTO user_log VALUES("1706","Create","17","Create a agent name is KABIR- CONTRACTOR","2012-07-03 17:19:00","agents","36");
INSERT INTO user_log VALUES("1707","Create","17","Create Receipt","2012-07-03 17:22:14","receipts","330");
INSERT INTO user_log VALUES("1708","Login","9","Login to site","2012-07-03 17:24:34","","");
INSERT INTO user_log VALUES("1709","Create","17","Create Receipt","2012-07-03 17:30:13","receipts","331");
INSERT INTO user_log VALUES("1710","Login","10","Login to site","2012-07-03 17:36:11","","");
INSERT INTO user_log VALUES("1711","Create","10","Create a sector name is KUL-BWN-KUL","2012-07-03 17:36:56","sectors","28");
INSERT INTO user_log VALUES("1712","Login","9","Login to site","2012-07-03 17:37:09","","");
INSERT INTO user_log VALUES("1713","Login","19","Login to site","2012-07-03 17:37:12","","");
INSERT INTO user_log VALUES("1714","Logout","9","Logout from site","2012-07-03 17:37:22","","");
INSERT INTO user_log VALUES("1715","Create","10","Create a prices Sector is KUL/RGN/KUL","2012-07-03 17:37:33","prices","43");
INSERT INTO user_log VALUES("1716","Create","10","Create a prices Sector is KUL-BWN-KUL","2012-07-03 17:39:04","prices","44");
INSERT INTO user_log VALUES("1717","Create","19","Create a prices Sector is KUL-KTM","2012-07-03 17:39:42","prices","45");
INSERT INTO user_log VALUES("1718","Create","10","Create Receipt","2012-07-03 17:40:16","receipts","332");
INSERT INTO user_log VALUES("1719","Create","19","Create Receipt","2012-07-03 17:42:42","receipts","333");
INSERT INTO user_log VALUES("1720","Create","17","Create Receipt","2012-07-03 17:43:32","receipts","334");
INSERT INTO user_log VALUES("1721","Logout","19","Logout from site","2012-07-03 17:44:21","","");
INSERT INTO user_log VALUES("1722","Login","10","Login to site","2012-07-03 17:59:11","","");
INSERT INTO user_log VALUES("1723","Create","10","Create a due collection","2012-07-03 18:00:04","due_collection","26");
INSERT INTO user_log VALUES("1724","Delete","10","Delete a due collection","2012-07-03 18:00:34","due_collection","26");
INSERT INTO user_log VALUES("1725","Create","10","Create a payment voucher","2012-07-03 18:01:15","payment_voucher","13");
INSERT INTO user_log VALUES("1726","Print","10","Print a payment voucher","2012-07-03 18:01:15","payment_voucher","13");
INSERT INTO user_log VALUES("1727","Approved","10","Approved a payment voucher","2012-07-03 18:01:29","payment_voucher","13");
INSERT INTO user_log VALUES("1728","Logout","10","Logout from site","2012-07-03 18:01:31","","");
INSERT INTO user_log VALUES("1729","Login","10","Login to site","2012-07-03 18:01:40","","");
INSERT INTO user_log VALUES("1730","Create","10","Create Receipt","2012-07-03 18:03:33","receipts","335");
INSERT INTO user_log VALUES("1731","Login","17","Login to site","2012-07-03 18:14:43","","");
INSERT INTO user_log VALUES("1732","Create","17","Create a agent name is RAHAMAN -CTG","2012-07-03 18:16:09","agents","37");
INSERT INTO user_log VALUES("1733","Login","10","Login to site","2012-07-03 18:20:25","","");
INSERT INTO user_log VALUES("1734","Create","17","Create Receipt","2012-07-03 18:20:28","receipts","336");
INSERT INTO user_log VALUES("1735","Create","17","Create a sector name is DAC-CGP","2012-07-03 18:22:18","sectors","29");
INSERT INTO user_log VALUES("1736","Create","17","Create a prices Sector is DAC-CGP","2012-07-03 18:24:20","prices","46");
INSERT INTO user_log VALUES("1737","Create","17","Create Receipt","2012-07-03 18:26:10","receipts","337");
INSERT INTO user_log VALUES("1738","Create","10","Create Receipt","2012-07-03 18:26:36","receipts","338");
INSERT INTO user_log VALUES("1739","Update","10","Update a receipt","2012-07-03 18:31:39","receipts","338");
INSERT INTO user_log VALUES("1740","Logout","10","Logout from site","2012-07-03 18:31:59","","");
INSERT INTO user_log VALUES("1741","Login","10","Login to site","2012-07-03 18:32:25","","");
INSERT INTO user_log VALUES("1742","Update","17","Update a receipt","2012-07-03 18:33:48","receipts","319");
INSERT INTO user_log VALUES("1743","Update","17","Update a receipt","2012-07-03 18:35:46","receipts","338");
INSERT INTO user_log VALUES("1744","Login","17","Login to site","2012-07-03 18:55:01","","");
INSERT INTO user_log VALUES("1745","Logout","17","Logout from site","2012-07-03 19:04:14","","");
INSERT INTO user_log VALUES("1746","Login","17","Login to site","2012-07-03 19:04:26","","");
INSERT INTO user_log VALUES("1747","Create","17","Create Receipt","2012-07-03 19:06:34","receipts","339");
INSERT INTO user_log VALUES("1748","Login","10","Login to site","2012-07-03 19:06:44","","");
INSERT INTO user_log VALUES("1749","Create","10","Create a payment voucher","2012-07-03 19:07:33","payment_voucher","14");
INSERT INTO user_log VALUES("1750","Print","10","Print a payment voucher","2012-07-03 19:07:34","payment_voucher","14");
INSERT INTO user_log VALUES("1751","Approved","10","Approved a payment voucher","2012-07-03 19:08:05","payment_voucher","14");
INSERT INTO user_log VALUES("1752","Create","17","Create Receipt","2012-07-03 19:12:49","receipts","340");
INSERT INTO user_log VALUES("1753","Login","17","Login to site","2012-07-03 19:29:37","","");
INSERT INTO user_log VALUES("1754","Create","17","Create Receipt","2012-07-03 19:31:04","receipts","341");
INSERT INTO user_log VALUES("1755","Login","10","Login to site","2012-07-03 19:33:29","","");
INSERT INTO user_log VALUES("1756","Search","10","Search a receipt. Search text is 142853","2012-07-03 19:33:53","receipts","");
INSERT INTO user_log VALUES("1757","Update","10","Update a receipt","2012-07-03 19:34:05","receipts","287");
INSERT INTO user_log VALUES("1758","Search","10","Search a receipt. Search text is 142893","2012-07-03 19:34:36","receipts","");
INSERT INTO user_log VALUES("1759","Update","10","Update a receipt","2012-07-03 19:34:47","receipts","327");
INSERT INTO user_log VALUES("1760","Login","17","Login to site","2012-07-03 19:50:14","","");
INSERT INTO user_log VALUES("1761","Search","17","Search a receipt. Search text is 124854","2012-07-03 19:51:44","receipts","");
INSERT INTO user_log VALUES("1762","Search","17","Search a receipt. Search text is 142854","2012-07-03 19:51:51","receipts","");
INSERT INTO user_log VALUES("1763","Login","10","Login to site","2012-07-03 19:54:29","","");
INSERT INTO user_log VALUES("1764","Create","17","Create Receipt","2012-07-03 19:59:14","receipts","342");
INSERT INTO user_log VALUES("1765","Search","10","Search a receipt. Search text is 142885","2012-07-03 20:05:10","receipts","");
INSERT INTO user_log VALUES("1766","Login","18","Login to site","2012-07-03 20:10:56","","");
INSERT INTO user_log VALUES("1767","Login","17","Login to site","2012-07-03 20:14:36","","");
INSERT INTO user_log VALUES("1768","Search","10","Search a receipt. Search text is 142907","2012-07-03 20:14:45","receipts","");
INSERT INTO user_log VALUES("1769","Search","17","Search a receipt. Search text is 142859","2012-07-03 20:14:52","receipts","");
INSERT INTO user_log VALUES("1770","Search","10","Search a receipt. Search text is 142905","2012-07-03 20:15:04","receipts","");
INSERT INTO user_log VALUES("1771","Search","17","Search a receipt. Search text is 142857","2012-07-03 20:15:24","receipts","");
INSERT INTO user_log VALUES("1772","Search","17","Search a receipt. Search text is 142856","2012-07-03 20:16:18","receipts","");
INSERT INTO user_log VALUES("1773","Search","10","Search a receipt. Search text is 142901","2012-07-03 20:16:35","receipts","");
INSERT INTO user_log VALUES("1774","Search","17","Search a receipt. Search text is 142855","2012-07-03 20:17:20","receipts","");
INSERT INTO user_log VALUES("1775","Search","10","Search a receipt. Search text is 142900","2012-07-03 20:17:46","receipts","");
INSERT INTO user_log VALUES("1776","Search","10","Search a receipt. Search text is 142887","2012-07-03 20:18:25","receipts","");
INSERT INTO user_log VALUES("1777","Search","17","Search a receipt. Search text is 142841","2012-07-03 20:18:47","receipts","");
INSERT INTO user_log VALUES("1778","Search","10","Search a receipt. Search text is 142886","2012-07-03 20:19:11","receipts","");
INSERT INTO user_log VALUES("1779","Search","10","Search a receipt. Search text is 142885","2012-07-03 20:19:33","receipts","");
INSERT INTO user_log VALUES("1780","Search","17","Search a receipt. Search text is 142838","2012-07-03 20:19:37","receipts","");
INSERT INTO user_log VALUES("1781","Search","10","Search a receipt. Search text is 142884","2012-07-03 20:20:28","receipts","");
INSERT INTO user_log VALUES("1782","Search","17","Search a receipt. Search text is 142837","2012-07-03 20:20:44","receipts","");
INSERT INTO user_log VALUES("1783","Search","10","Search a receipt. Search text is 142884","2012-07-03 20:21:39","receipts","");
INSERT INTO user_log VALUES("1784","Search","10","Search a receipt. Search text is 142879","2012-07-03 20:21:57","receipts","");
INSERT INTO user_log VALUES("1785","Search","10","Search a receipt. Search text is 142878","2012-07-03 20:22:16","receipts","");
INSERT INTO user_log VALUES("1786","Search","10","Search a receipt. Search text is 142877","2012-07-03 20:22:37","receipts","");
INSERT INTO user_log VALUES("1787","Search","10","Search a receipt. Search text is 142875","2012-07-03 20:22:52","receipts","");
INSERT INTO user_log VALUES("1788","Search","10","Search a receipt. Search text is 142864","2012-07-03 20:26:38","receipts","");
INSERT INTO user_log VALUES("1789","Search","10","Search a receipt. Search text is 142863","2012-07-03 20:27:07","receipts","");
INSERT INTO user_log VALUES("1790","Search","17","Search a receipt. Search text is 142890","2012-07-03 20:28:17","receipts","");
INSERT INTO user_log VALUES("1791","Update","17","Update a receipt","2012-07-03 20:29:26","receipts","324");
INSERT INTO user_log VALUES("1792","Logout","10","Logout from site","2012-07-03 20:41:11","","");
INSERT INTO user_log VALUES("1793","Login","10","Login to site","2012-07-03 20:55:22","","");
INSERT INTO user_log VALUES("1794","Search","10","Search a receipt. Search text is AAGRNA","2012-07-03 20:57:38","receipts","");
INSERT INTO user_log VALUES("1795","Search","10","Search a receipt. Search text is 2322273454665","2012-07-03 20:58:21","receipts","");
INSERT INTO user_log VALUES("1796","Search","10","Search a receipt. Search text is 2322273454665","2012-07-03 20:58:29","receipts","");
INSERT INTO user_log VALUES("1797","Login","17","Login to site","2012-07-03 21:33:20","","");
INSERT INTO user_log VALUES("1798","Create","17","Create a agent name is hemayet @biman","2012-07-03 21:35:14","agents","38");
INSERT INTO user_log VALUES("1799","Create","17","Create Receipt","2012-07-03 21:36:48","receipts","343");
INSERT INTO user_log VALUES("1800","Logout","17","Logout from site","2012-07-03 21:41:21","","");
INSERT INTO user_log VALUES("1801","Login","9","Login to site","2012-07-03 22:05:22","","");
INSERT INTO user_log VALUES("1802","Logout","9","Logout from site","2012-07-03 22:06:49","","");
INSERT INTO user_log VALUES("1803","Login","9","Login to site","2012-07-03 22:06:58","","");
INSERT INTO user_log VALUES("1804","Logout","9","Logout from site","2012-07-03 22:07:03","","");
INSERT INTO user_log VALUES("1805","Login","9","Login to site","2012-07-03 22:07:11","","");
INSERT INTO user_log VALUES("1806","Logout","9","Logout from site","2012-07-03 22:08:20","","");
INSERT INTO user_log VALUES("1807","Login","9","Login to site","2012-07-03 22:08:24","","");
INSERT INTO user_log VALUES("1808","Logout","9","Logout from site","2012-07-03 22:09:42","","");
INSERT INTO user_log VALUES("1809","Login","9","Login to site","2012-07-03 22:09:45","","");
INSERT INTO user_log VALUES("1810","Logout","9","Logout from site","2012-07-03 22:09:49","","");
INSERT INTO user_log VALUES("1811","Login","9","Login to site","2012-07-03 22:09:51","","");
INSERT INTO user_log VALUES("1812","Logout","9","Logout from site","2012-07-03 22:21:41","","");
INSERT INTO user_log VALUES("1813","Logout","9","Logout from site","2012-07-03 22:22:42","","");
INSERT INTO user_log VALUES("1814","Logout","9","Logout from site","2012-07-03 22:23:12","","");
INSERT INTO user_log VALUES("1815","Login","9","Login to site","2012-07-03 22:23:13","","");
INSERT INTO user_log VALUES("1816","Logout","9","Logout from site","2012-07-03 22:23:42","","");
INSERT INTO user_log VALUES("1817","Logout","9","Logout from site","2012-07-03 22:24:37","","");
INSERT INTO user_log VALUES("1818","Login","9","Login to site","2012-07-03 22:24:40","","");
INSERT INTO user_log VALUES("1819","Login","9","Login to site","2012-07-03 22:29:09","","");
INSERT INTO user_log VALUES("1820","Logout","9","Logout from site","2012-07-03 22:29:16","","");
INSERT INTO user_log VALUES("1821","Logout","9","Logout from site","2012-07-03 22:29:35","","");
INSERT INTO user_log VALUES("1822","Login","9","Login to site","2012-07-03 22:30:59","","");
INSERT INTO user_log VALUES("1823","Logout","9","Logout from site","2012-07-03 22:32:21","","");
INSERT INTO user_log VALUES("1824","Logout","9","Logout from site","2012-07-03 22:33:06","","");
INSERT INTO user_log VALUES("1825","Logout","9","Logout from site","2012-07-03 22:33:35","","");
INSERT INTO user_log VALUES("1826","Logout","9","Logout from site","2012-07-03 22:34:04","","");
INSERT INTO user_log VALUES("1827","Logout","9","Logout from site","2012-07-03 22:34:38","","");
INSERT INTO user_log VALUES("1828","Logout","9","Logout from site","2012-07-03 22:41:43","","");
INSERT INTO user_log VALUES("1829","Login","9","Login to site","2012-07-03 22:46:51","","");
INSERT INTO user_log VALUES("1830","Login","10","Login to site","2012-07-03 23:21:24","","");
INSERT INTO user_log VALUES("1831","Login","10","Login to site","2012-07-03 23:21:54","","");
INSERT INTO user_log VALUES("1832","Login","9","Login to site","2012-07-03 23:25:22","","");
INSERT INTO user_log VALUES("1833","Update","10","Update a receipt","2012-07-03 23:25:30","receipts","293");
INSERT INTO user_log VALUES("1834","Logout","10","Logout from site","2012-07-03 23:25:38","","");
INSERT INTO user_log VALUES("1835","Logout","9","Logout from site","2012-07-03 23:27:24","","");
INSERT INTO user_log VALUES("1836","Login","9","Login to site","2012-07-03 23:27:53","","");
INSERT INTO user_log VALUES("1837","Logout","9","Logout from site","2012-07-03 23:28:36","","");
INSERT INTO user_log VALUES("1838","Login","9","Login to site","2012-07-03 23:28:49","","");
INSERT INTO user_log VALUES("1839","Logout","9","Logout from site","2012-07-03 23:28:52","","");
INSERT INTO user_log VALUES("1840","Login","9","Login to site","2012-07-03 23:29:00","","");
INSERT INTO user_log VALUES("1841","Login","9","Login to site","2012-07-04 01:11:59","","");
INSERT INTO user_log VALUES("1842","Logout","9","Logout from site","2012-07-04 01:17:30","","");
INSERT INTO user_log VALUES("1843","Login","10","Login to site","2012-07-04 09:33:15","","");
INSERT INTO user_log VALUES("1844","Search","10","Search a receipt. Search text is 142793","2012-07-04 09:41:52","receipts","");
INSERT INTO user_log VALUES("1845","Logout","10","Logout from site","2012-07-04 09:42:56","","");
INSERT INTO user_log VALUES("1846","Login","9","Login to site","2012-07-04 09:59:16","","");
INSERT INTO user_log VALUES("1847","Login","17","Login to site","2012-07-04 10:24:27","","");
INSERT INTO user_log VALUES("1848","Create","17","Create a due collection","2012-07-04 10:26:27","due_collection","26");
INSERT INTO user_log VALUES("1849","Create","17","Create a due collection","2012-07-04 10:32:43","due_collection","27");
INSERT INTO user_log VALUES("1850","Logout","17","Logout from site","2012-07-04 10:33:26","","");
INSERT INTO user_log VALUES("1851","Login","10","Login to site","2012-07-04 10:38:12","","");
INSERT INTO user_log VALUES("1852","Login","17","Login to site","2012-07-04 10:40:13","","");
INSERT INTO user_log VALUES("1853","Create","17","Create Receipt","2012-07-04 10:41:42","receipts","344");
INSERT INTO user_log VALUES("1854","Create","10","Create a agent name is RAHAMATH (M) SDN BHD","2012-07-04 10:43:26","agents","39");
INSERT INTO user_log VALUES("1855","Create","10","Create a payment voucher","2012-07-04 10:46:35","payment_voucher","15");
INSERT INTO user_log VALUES("1856","Print","10","Print a payment voucher","2012-07-04 10:46:36","payment_voucher","15");
INSERT INTO user_log VALUES("1857","Approved","10","Approved a payment voucher","2012-07-04 10:46:51","payment_voucher","15");
INSERT INTO user_log VALUES("1858","Login","19","Login to site","2012-07-04 10:48:56","","");
INSERT INTO user_log VALUES("1859","Login","16","Login to site","2012-07-04 10:52:56","","");
INSERT INTO user_log VALUES("1860","Logout","16","Logout from site","2012-07-04 10:53:21","","");
INSERT INTO user_log VALUES("1861","Login","9","Login to site","2012-07-04 10:53:50","","");
INSERT INTO user_log VALUES("1862","Logout","10","Logout from site","2012-07-04 10:55:04","","");
INSERT INTO user_log VALUES("1863","Create","19","Create Receipt","2012-07-04 10:58:56","receipts","345");
INSERT INTO user_log VALUES("1864","Login","10","Login to site","2012-07-04 11:02:00","","");
INSERT INTO user_log VALUES("1865","Login","10","Login to site","2012-07-04 11:12:35","","");
INSERT INTO user_log VALUES("1866","Login","19","Login to site","2012-07-04 11:14:16","","");
INSERT INTO user_log VALUES("1867","Create","19","Create Receipt","2012-07-04 11:18:44","receipts","346");
INSERT INTO user_log VALUES("1868","Logout","19","Logout from site","2012-07-04 11:19:12","","");
INSERT INTO user_log VALUES("1869","Login","17","Login to site","2012-07-04 11:26:16","","");
INSERT INTO user_log VALUES("1870","Create","17","Create Receipt","2012-07-04 11:28:52","receipts","347");
INSERT INTO user_log VALUES("1871","Create","17","Create Receipt","2012-07-04 11:35:39","receipts","348");
INSERT INTO user_log VALUES("1872","Login","19","Login to site","2012-07-04 12:05:42","","");
INSERT INTO user_log VALUES("1873","Create","19","Create Receipt","2012-07-04 12:07:40","receipts","349");
INSERT INTO user_log VALUES("1874","Login","17","Login to site","2012-07-04 12:09:15","","");
INSERT INTO user_log VALUES("1875","Update","17","Update a receipt","2012-07-04 12:09:31","receipts","349");
INSERT INTO user_log VALUES("1876","Logout","17","Logout from site","2012-07-04 12:09:56","","");
INSERT INTO user_log VALUES("1877","Login","17","Login to site","2012-07-04 12:10:15","","");
INSERT INTO user_log VALUES("1878","Login","17","Login to site","2012-07-04 12:10:21","","");
INSERT INTO user_log VALUES("1879","Create","17","Create Receipt","2012-07-04 12:13:29","receipts","350");
INSERT INTO user_log VALUES("1880","Login","19","Login to site","2012-07-04 12:19:43","","");
INSERT INTO user_log VALUES("1881","Create","19","Create Receipt","2012-07-04 12:21:28","receipts","351");
INSERT INTO user_log VALUES("1882","Logout","19","Logout from site","2012-07-04 12:23:18","","");
INSERT INTO user_log VALUES("1883","Login","10","Login to site","2012-07-04 12:37:34","","");
INSERT INTO user_log VALUES("1884","Create","17","Create Receipt","2012-07-04 12:39:04","receipts","352");
INSERT INTO user_log VALUES("1885","Logout","10","Logout from site","2012-07-04 12:39:46","","");
INSERT INTO user_log VALUES("1886","Login","17","Login to site","2012-07-04 12:53:56","","");
INSERT INTO user_log VALUES("1887","Search","17","Search a sector. Search text is DEL-DAC","2012-07-04 12:54:54","sectors","");
INSERT INTO user_log VALUES("1888","Create","17","Create a sector name is DEL-DAC-KUL","2012-07-04 12:55:15","sectors","30");
INSERT INTO user_log VALUES("1889","Create","17","Create a prices Sector is DEL-DAC-KUL","2012-07-04 12:56:03","prices","47");
INSERT INTO user_log VALUES("1890","Create","17","Create Receipt","2012-07-04 12:59:56","receipts","353");
INSERT INTO user_log VALUES("1891","Create","17","Create Receipt","2012-07-04 13:11:36","receipts","354");
INSERT INTO user_log VALUES("1892","Login","18","Login to site","2012-07-04 13:13:39","","");
INSERT INTO user_log VALUES("1893","Login","17","Login to site","2012-07-04 13:23:24","","");
INSERT INTO user_log VALUES("1894","Create","17","Create a payment voucher","2012-07-04 13:24:20","payment_voucher","16");
INSERT INTO user_log VALUES("1895","Print","17","Print a payment voucher","2012-07-04 13:24:21","payment_voucher","16");
INSERT INTO user_log VALUES("1896","Create","17","Create a payment voucher","2012-07-04 13:25:30","payment_voucher","17");
INSERT INTO user_log VALUES("1897","Print","17","Print a payment voucher","2012-07-04 13:25:30","payment_voucher","17");
INSERT INTO user_log VALUES("1898","Create","17","Create Receipt","2012-07-04 13:27:41","receipts","355");
INSERT INTO user_log VALUES("1899","Login","10","Login to site","2012-07-04 13:36:06","","");
INSERT INTO user_log VALUES("1900","Create","17","Create Receipt","2012-07-04 13:38:58","receipts","356");
INSERT INTO user_log VALUES("1901","Update","17","Update a receipt","2012-07-04 13:39:13","receipts","356");
INSERT INTO user_log VALUES("1902","Create","17","Create Receipt","2012-07-04 13:44:35","receipts","357");
INSERT INTO user_log VALUES("1903","Create","17","Create a agent name is JAKIR HOSSAIN","2012-07-04 13:50:11","agents","40");
INSERT INTO user_log VALUES("1904","Create","17","Create Receipt","2012-07-04 13:51:38","receipts","358");
INSERT INTO user_log VALUES("1905","Update","17","Update a receipt","2012-07-04 13:53:33","receipts","358");
INSERT INTO user_log VALUES("1906","Login","17","Login to site","2012-07-04 14:04:53","","");
INSERT INTO user_log VALUES("1907","Create","17","Create Receipt","2012-07-04 14:06:04","receipts","359");
INSERT INTO user_log VALUES("1908","Login","10","Login to site","2012-07-04 14:06:30","","");
INSERT INTO user_log VALUES("1909","Login","9","Login to site","2012-07-04 14:06:41","","");
INSERT INTO user_log VALUES("1910","Create","17","Create Receipt","2012-07-04 14:09:15","receipts","360");
INSERT INTO user_log VALUES("1911","Login","10","Login to site","2012-07-04 14:26:38","","");
INSERT INTO user_log VALUES("1912","Create","10","Create a agent name is SIRAJUL JESSOR","2012-07-04 14:28:06","agents","41");
INSERT INTO user_log VALUES("1913","Approved","10","Approved a payment voucher","2012-07-04 14:29:48","payment_voucher","17");
INSERT INTO user_log VALUES("1914","Approved","10","Approved a payment voucher","2012-07-04 14:29:50","payment_voucher","16");
INSERT INTO user_log VALUES("1915","Logout","10","Logout from site","2012-07-04 14:29:55","","");
INSERT INTO user_log VALUES("1916","Login","17","Login to site","2012-07-04 14:30:18","","");
INSERT INTO user_log VALUES("1917","Create","17","Create Receipt","2012-07-04 14:35:52","receipts","361");
INSERT INTO user_log VALUES("1918","Create","17","Create Receipt","2012-07-04 14:39:55","receipts","362");
INSERT INTO user_log VALUES("1919","Login","10","Login to site","2012-07-04 14:44:44","","");
INSERT INTO user_log VALUES("1920","Create","17","Create Receipt","2012-07-04 14:46:09","receipts","363");
INSERT INTO user_log VALUES("1921","Create","10","Create Receipt","2012-07-04 14:47:33","receipts","364");
INSERT INTO user_log VALUES("1922","Create","17","Create a agent name is MAHDURI TRADE","2012-07-04 14:55:24","agents","42");
INSERT INTO user_log VALUES("1923","Update","17","Update a receipt","2012-07-04 14:57:51","receipts","363");
INSERT INTO user_log VALUES("1924","Create","17","Create Receipt","2012-07-04 15:05:02","receipts","365");
INSERT INTO user_log VALUES("1925","Login","10","Login to site","2012-07-04 15:05:58","","");
INSERT INTO user_log VALUES("1926","Create","10","Create Receipt","2012-07-04 15:07:45","receipts","366");
INSERT INTO user_log VALUES("1927","Update","17","Update a agent name isMAHDURI TRADE","2012-07-04 15:10:18","agents","42");
INSERT INTO user_log VALUES("1928","Create","17","Create Receipt","2012-07-04 15:11:40","receipts","367");
INSERT INTO user_log VALUES("1929","Login","10","Login to site","2012-07-04 15:20:35","","");
INSERT INTO user_log VALUES("1930","Update","10","Update a receipt","2012-07-04 15:21:13","receipts","364");
INSERT INTO user_log VALUES("1931","Login","9","Login to site","2012-07-04 15:30:31","","");
INSERT INTO user_log VALUES("1932","Create","10","Create Receipt","2012-07-04 15:33:39","receipts","368");
INSERT INTO user_log VALUES("1933","Login","19","Login to site","2012-07-04 15:33:55","","");
INSERT INTO user_log VALUES("1934","Create","19","Create Receipt","2012-07-04 15:36:18","receipts","369");
INSERT INTO user_log VALUES("1935","Create","10","Create Receipt","2012-07-04 15:39:11","receipts","370");
INSERT INTO user_log VALUES("1936","Logout","19","Logout from site","2012-07-04 15:41:52","","");
INSERT INTO user_log VALUES("1937","Login","17","Login to site","2012-07-04 15:46:02","","");
INSERT INTO user_log VALUES("1938","Login","9","Login to site","2012-07-04 15:46:36","","");
INSERT INTO user_log VALUES("1939","Create","17","Create Receipt","2012-07-04 15:48:58","receipts","371");
INSERT INTO user_log VALUES("1940","Login","18","Login to site","2012-07-04 15:52:04","","");
INSERT INTO user_log VALUES("1941","Login","9","Login to site","2012-07-04 16:02:29","","");
INSERT INTO user_log VALUES("1942","Login","17","Login to site","2012-07-04 16:12:59","","");
INSERT INTO user_log VALUES("1943","Create","17","Create Receipt","2012-07-04 16:14:11","receipts","372");
INSERT INTO user_log VALUES("1944","Login","10","Login to site","2012-07-04 16:15:18","","");
INSERT INTO user_log VALUES("1945","Create","10","Create a agent name is BASHAR KAMROON ","2012-07-04 16:16:38","agents","43");
INSERT INTO user_log VALUES("1946","Login","9","Login to site","2012-07-04 16:16:39","","");
INSERT INTO user_log VALUES("1947","Login","9","Login to site","2012-07-04 16:16:40","","");
INSERT INTO user_log VALUES("1948","Create","10","Create Receipt","2012-07-04 16:19:24","receipts","373");
INSERT INTO user_log VALUES("1949","Search","10","Search a receipt. Search text is 142935","2012-07-04 16:21:16","receipts","");
INSERT INTO user_log VALUES("1950","Update","10","Update a receipt","2012-07-04 16:21:29","receipts","369");
INSERT INTO user_log VALUES("1951","Update","10","Update a prices","2012-07-04 16:22:06","prices","22");
INSERT INTO user_log VALUES("1952","Login","17","Login to site","2012-07-04 16:28:21","","");
INSERT INTO user_log VALUES("1953","Create","10","Create Receipt","2012-07-04 16:28:21","receipts","374");
INSERT INTO user_log VALUES("1954","Login","16","Login to site","2012-07-04 16:28:56","","");
INSERT INTO user_log VALUES("1955","Create","17","Create Receipt","2012-07-04 16:29:10","receipts","375");
INSERT INTO user_log VALUES("1956","Create","16","Create a prices Sector is KUL-DAC-KUL","2012-07-04 16:30:33","prices","48");
INSERT INTO user_log VALUES("1957","Create","17","Create a payment voucher","2012-07-04 16:32:14","payment_voucher","18");
INSERT INTO user_log VALUES("1958","Create","16","Create Receipt","2012-07-04 16:32:14","receipts","376");
INSERT INTO user_log VALUES("1959","Print","17","Print a payment voucher","2012-07-04 16:32:18","payment_voucher","18");
INSERT INTO user_log VALUES("1960","Approved","17","Approved a payment voucher","2012-07-04 16:32:32","payment_voucher","18");
INSERT INTO user_log VALUES("1961","Update","17","Update a receipt","2012-07-04 16:33:29","receipts","376");
INSERT INTO user_log VALUES("1962","Create","16","Create Receipt","2012-07-04 16:34:09","receipts","377");
INSERT INTO user_log VALUES("1963","Create","16","Create Receipt","2012-07-04 16:35:33","receipts","378");
INSERT INTO user_log VALUES("1964","Create","16","Create Receipt","2012-07-04 16:36:39","receipts","379");
INSERT INTO user_log VALUES("1965","Create","16","Create Receipt","2012-07-04 16:38:42","receipts","380");
INSERT INTO user_log VALUES("1966","Login","19","Login to site","2012-07-04 16:42:28","","");
INSERT INTO user_log VALUES("1967","Login","17","Login to site","2012-07-04 16:43:55","","");
INSERT INTO user_log VALUES("1968","Create","17","Create Receipt","2012-07-04 16:45:14","receipts","381");
INSERT INTO user_log VALUES("1969","Create","19","Create Receipt","2012-07-04 16:45:20","receipts","382");
INSERT INTO user_log VALUES("1970","Login","10","Login to site","2012-07-04 16:45:21","","");
INSERT INTO user_log VALUES("1971","Create","16","Create Receipt","2012-07-04 16:45:25","receipts","383");
INSERT INTO user_log VALUES("1972","Create","10","Create a agent name is SAHIN","2012-07-04 16:47:10","agents","44");
INSERT INTO user_log VALUES("1973","Logout","16","Logout from site","2012-07-04 16:49:02","","");
INSERT INTO user_log VALUES("1974","Create","17","Create Receipt","2012-07-04 16:49:23","receipts","384");
INSERT INTO user_log VALUES("1975","Create","10","Create Receipt","2012-07-04 16:50:20","receipts","385");
INSERT INTO user_log VALUES("1976","Login","9","Login to site","2012-07-04 16:50:33","","");
INSERT INTO user_log VALUES("1977","Create","17","Create Receipt","2012-07-04 16:51:32","receipts","386");
INSERT INTO user_log VALUES("1978","Create","10","Create Receipt","2012-07-04 16:51:52","receipts","387");
INSERT INTO user_log VALUES("1979","Logout","19","Logout from site","2012-07-04 16:52:11","","");
INSERT INTO user_log VALUES("1980","Update","17","Update a receipt","2012-07-04 16:53:04","receipts","381");
INSERT INTO user_log VALUES("1981","Create","17","Create Receipt","2012-07-04 16:54:21","receipts","388");
INSERT INTO user_log VALUES("1982","Search","10","Search a receipt. Search text is 142919","2012-07-04 16:57:32","receipts","");
INSERT INTO user_log VALUES("1983","Search","10","Search a receipt. Search text is 142919","2012-07-04 17:00:08","receipts","");
INSERT INTO user_log VALUES("1984","Logout","10","Logout from site","2012-07-04 17:00:28","","");
INSERT INTO user_log VALUES("1985","Login","16","Login to site","2012-07-04 17:04:11","","");
INSERT INTO user_log VALUES("1986","Create","16","Create Receipt","2012-07-04 17:11:48","receipts","389");
INSERT INTO user_log VALUES("1987","Create","16","Create Receipt","2012-07-04 17:14:09","receipts","390");
INSERT INTO user_log VALUES("1988","Login","17","Login to site","2012-07-04 17:14:09","","");
INSERT INTO user_log VALUES("1989","Create","16","Create Receipt","2012-07-04 17:15:18","receipts","391");
INSERT INTO user_log VALUES("1990","Create","17","Create Receipt","2012-07-04 17:15:28","receipts","392");
INSERT INTO user_log VALUES("1991","Search","17","Search a agent. Search text is MANIULLAH","2012-07-04 17:17:57","agents","");
INSERT INTO user_log VALUES("1992","Search","17","Search a agent. Search text is SM ZARIQ","2012-07-04 17:18:08","agents","");
INSERT INTO user_log VALUES("1993","Search","17","Search a agent. Search text is ","2012-07-04 17:18:13","agents","");
INSERT INTO user_log VALUES("1994","Create","16","Create a agent name is PRISTON","2012-07-04 17:19:42","agents","45");
INSERT INTO user_log VALUES("1995","Create","17","Create a agent name is MANIULLAH","2012-07-04 17:21:17","agents","46");
INSERT INTO user_log VALUES("1996","Create","16","Create Receipt","2012-07-04 17:23:19","receipts","393");
INSERT INTO user_log VALUES("1997","Create","16","Create a sector name is KUL/SGN","2012-07-04 17:23:50","sectors","31");
INSERT INTO user_log VALUES("1998","Create","17","Create Receipt","2012-07-04 17:23:58","receipts","394");
INSERT INTO user_log VALUES("1999","Create","16","Create a prices Sector is KUL/SGN","2012-07-04 17:24:18","prices","49");
INSERT INTO user_log VALUES("2000","Create","16","Create Receipt","2012-07-04 17:27:46","receipts","395");
INSERT INTO user_log VALUES("2001","Create","16","Create a due collection","2012-07-04 17:30:28","due_collection","28");
INSERT INTO user_log VALUES("2002","Create","17","Create Receipt","2012-07-04 17:30:59","receipts","396");
INSERT INTO user_log VALUES("2003","Create","16","Create a sector name is KUL/KTM/KUL","2012-07-04 17:32:43","sectors","32");
INSERT INTO user_log VALUES("2004","Login","9","Login to site","2012-07-04 17:33:06","","");
INSERT INTO user_log VALUES("2005","Create","16","Create a prices Sector is KUL/KTM/KUL","2012-07-04 17:33:27","prices","50");
INSERT INTO user_log VALUES("2006","Create","16","Create Receipt","2012-07-04 17:34:52","receipts","397");
INSERT INTO user_log VALUES("2007","Create","16","Create Receipt","2012-07-04 17:38:30","receipts","398");
INSERT INTO user_log VALUES("2008","Login","17","Login to site","2012-07-04 17:41:41","","");
INSERT INTO user_log VALUES("2009","Create","16","Create a agent name is ERWIN TRAVEL","2012-07-04 17:42:42","agents","47");
INSERT INTO user_log VALUES("2010","Create","17","Create Receipt","2012-07-04 17:44:22","receipts","399");
INSERT INTO user_log VALUES("2011","Create","16","Create Receipt","2012-07-04 17:45:33","receipts","400");
INSERT INTO user_log VALUES("2012","Update","17","Update a receipt","2012-07-04 17:47:26","receipts","400");
INSERT INTO user_log VALUES("2013","Create","16","Create Receipt","2012-07-04 17:51:22","receipts","401");
INSERT INTO user_log VALUES("2014","Update","17","Update a receipt","2012-07-04 17:52:03","receipts","395");
INSERT INTO user_log VALUES("2015","Create","16","Create Receipt","2012-07-04 17:54:29","receipts","402");
INSERT INTO user_log VALUES("2016","Delete","17","Delete a due collection","2012-07-04 17:59:53","due_collection","28");
INSERT INTO user_log VALUES("2017","Create","17","Create a due collection","2012-07-04 18:02:09","due_collection","29");
INSERT INTO user_log VALUES("2018","Create","17","Create a due collection","2012-07-04 18:02:30","due_collection","30");
INSERT INTO user_log VALUES("2019","Create","16","Create a due collection","2012-07-04 18:03:54","due_collection","31");
INSERT INTO user_log VALUES("2020","Create","16","Create a due collection","2012-07-04 18:04:17","due_collection","32");
INSERT INTO user_log VALUES("2021","Create","16","Create Receipt","2012-07-04 18:11:43","receipts","403");
INSERT INTO user_log VALUES("2022","Create","16","Create Receipt","2012-07-04 18:12:58","receipts","404");
INSERT INTO user_log VALUES("2023","Create","16","Create Receipt","2012-07-04 18:14:01","receipts","405");
INSERT INTO user_log VALUES("2024","Create","16","Create a agent name is ALPHA NEPTUNE","2012-07-04 18:21:46","agents","48");
INSERT INTO user_log VALUES("2025","Create","16","Create a carriers name is KUL/BKK/KTM/BKK/KUL","2012-07-04 18:25:45","carriers","23");
INSERT INTO user_log VALUES("2026","Create","16","Create a carriers name is KUL/BKK/KTM","2012-07-04 18:26:05","carriers","24");
INSERT INTO user_log VALUES("2027","Create","16","Create a sector name is KUL/BKK/KTM","2012-07-04 18:27:47","sectors","33");
INSERT INTO user_log VALUES("2028","Create","16","Create a sector name is KUL/BKK/KTM/BKK/KUL","2012-07-04 18:28:05","sectors","34");
INSERT INTO user_log VALUES("2029","Create","16","Create a prices Sector is KUL/BKK/KTM","2012-07-04 18:28:31","prices","51");
INSERT INTO user_log VALUES("2030","Create","16","Create a prices Sector is KUL/BKK/KTM/BKK/KUL","2012-07-04 18:28:50","prices","52");
INSERT INTO user_log VALUES("2031","Login","10","Login to site","2012-07-04 18:29:32","","");
INSERT INTO user_log VALUES("2032","Search","10","Search a receipt. Search text is 142911","2012-07-04 18:30:34","receipts","");
INSERT INTO user_log VALUES("2033","Create","16","Create Receipt","2012-07-04 18:30:47","receipts","406");
INSERT INTO user_log VALUES("2034","Update","10","Update a receipt","2012-07-04 18:30:50","receipts","345");
INSERT INTO user_log VALUES("2035","Create","16","Create Receipt","2012-07-04 18:31:53","receipts","407");
INSERT INTO user_log VALUES("2036","Logout","16","Logout from site","2012-07-04 18:33:30","","");
INSERT INTO user_log VALUES("2037","Search","10","Search a receipt. Search text is 142964","2012-07-04 18:35:32","receipts","");
INSERT INTO user_log VALUES("2038","Search","10","Search a receipt. Search text is 142964","2012-07-04 18:35:36","receipts","");
INSERT INTO user_log VALUES("2039","Update","10","Update a receipt","2012-07-04 18:36:08","receipts","398");
INSERT INTO user_log VALUES("2040","Create","10","Create a agent name is VIKAS DHAMAL","2012-07-04 18:46:01","agents","49");
INSERT INTO user_log VALUES("2041","Create","10","Create a sector name is DEL-DAC-KUL-DAC-DEL","2012-07-04 18:46:55","sectors","35");
INSERT INTO user_log VALUES("2042","Create","10","Create a prices Sector is DEL-DAC-KUL-DAC-DEL","2012-07-04 18:47:39","prices","53");
INSERT INTO user_log VALUES("2043","Create","10","Create Receipt","2012-07-04 18:49:30","receipts","408");
INSERT INTO user_log VALUES("2044","Login","17","Login to site","2012-07-04 18:49:47","","");
INSERT INTO user_log VALUES("2045","Create","17","Create Receipt","2012-07-04 18:51:57","receipts","409");
INSERT INTO user_log VALUES("2046","Search","10","Search a receipt. Search text is 142934","2012-07-04 19:01:33","receipts","");
INSERT INTO user_log VALUES("2047","Update","17","Update a receipt","2012-07-04 19:02:19","receipts","408");
INSERT INTO user_log VALUES("2048","Update","10","Update a receipt","2012-07-04 19:02:43","receipts","368");
INSERT INTO user_log VALUES("2049","Search","10","Search a receipt. Search text is 9972273425006","2012-07-04 19:05:19","receipts","");
INSERT INTO user_log VALUES("2050","Update","10","Update a receipt","2012-07-04 19:05:56","receipts","368");
INSERT INTO user_log VALUES("2051","Login","17","Login to site","2012-07-04 19:24:13","","");
INSERT INTO user_log VALUES("2052","Update","17","Update a receipt","2012-07-04 19:27:01","receipts","408");
INSERT INTO user_log VALUES("2053","Login","16","Login to site","2012-07-04 19:29:33","","");
INSERT INTO user_log VALUES("2054","Create","16","Create Receipt","2012-07-04 19:32:13","receipts","410");
INSERT INTO user_log VALUES("2055","Logout","16","Logout from site","2012-07-04 19:35:17","","");
INSERT INTO user_log VALUES("2056","Create","17","Create Receipt","2012-07-04 19:36:48","receipts","411");
INSERT INTO user_log VALUES("2057","Create","17","Create a due collection","2012-07-04 19:37:42","due_collection","33");
INSERT INTO user_log VALUES("2058","Create","17","Create a due collection","2012-07-04 19:38:01","due_collection","34");
INSERT INTO user_log VALUES("2059","Login","18","Login to site","2012-07-04 19:39:23","","");
INSERT INTO user_log VALUES("2060","Create","17","Create a payment voucher","2012-07-04 19:40:31","payment_voucher","19");
INSERT INTO user_log VALUES("2061","Print","17","Print a payment voucher","2012-07-04 19:40:31","payment_voucher","19");
INSERT INTO user_log VALUES("2062","Login","10","Login to site","2012-07-04 19:45:35","","");
INSERT INTO user_log VALUES("2063","Approved","10","Approved a payment voucher","2012-07-04 19:47:08","payment_voucher","19");
INSERT INTO user_log VALUES("2064","Logout","18","Logout from site","2012-07-04 19:48:19","","");
INSERT INTO user_log VALUES("2065","Create","17","Create Receipt","2012-07-04 19:49:53","receipts","412");
INSERT INTO user_log VALUES("2066","Login","10","Login to site","2012-07-04 20:09:13","","");
INSERT INTO user_log VALUES("2067","Login","10","Login to site","2012-07-04 22:20:51","","");
INSERT INTO user_log VALUES("2068","Create","10","Create Receipt","2012-07-04 22:24:12","receipts","413");
INSERT INTO user_log VALUES("2069","Create","10","Create Receipt","2012-07-04 22:26:29","receipts","414");
INSERT INTO user_log VALUES("2070","Logout","10","Logout from site","2012-07-04 22:30:38","","");
INSERT INTO user_log VALUES("2071","Login","9","Login to site","2012-07-05 00:46:32","","");
INSERT INTO user_log VALUES("2072","Login","9","Login to site","2012-07-05 00:59:31","","");
INSERT INTO user_log VALUES("2073","Login","9","Login to site","2012-07-05 00:59:39","","");
INSERT INTO user_log VALUES("2074","Login","9","Login to site","2012-07-05 01:58:11","","");
INSERT INTO user_log VALUES("2075","Login","9","Login to site","2012-07-05 03:41:37","","");



DROP TABLE IF EXISTS users;

CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `full_name` varchar(50) NOT NULL,
  `dob` date NOT NULL,
  `email` varchar(50) NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'Inactive',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

INSERT INTO users VALUES("1","sysadmin","993ca5a727714ee3eef2aa574430aa20","Test","1983-10-03","","Active");
INSERT INTO users VALUES("5","masud","993ca5a727714ee3eef2aa574430aa20","Masud Rana","1980-04-30","test@gmail.com","Active");
INSERT INTO users VALUES("6","abc","993ca5a727714ee3eef2aa574430aa20","ABC","2012-04-22","asdfafafa@gagaa.com","Active");
INSERT INTO users VALUES("8","admin","993ca5a727714ee3eef2aa574430aa20","Parvez","2012-05-01","","Active");



DROP TABLE IF EXISTS xo_multi;

CREATE TABLE `xo_multi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `xo_number` varchar(30) NOT NULL,
  `routing` varchar(100) NOT NULL,
  `flight_no` varchar(20) NOT NULL,
  `date_of` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `time` varchar(20) NOT NULL,
  `status` varchar(50) NOT NULL,
  `remarks` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




