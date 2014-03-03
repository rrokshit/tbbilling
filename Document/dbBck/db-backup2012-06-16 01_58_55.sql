DROP TABLE IF EXISTS agents;

CREATE TABLE `agents` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `address` varchar(250) NOT NULL,
  `fax` varchar(30) NOT NULL,
  `website` varchar(30) NOT NULL,
  `credit_limit` decimal(10,0) NOT NULL,
  `status` varchar(10) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

INSERT INTO agents VALUES("1","SM ZARIQ TRAVEL","bbbbbbbbbbbb","ccccccccccc","ddddddddddd","9766","www.me.com","100000","Active");
INSERT INTO agents VALUES("2","VALENTINE TRAVEL","dsdfasdfasdf","4444424234","kl","","","100000","Active");
INSERT INTO agents VALUES("3","LATITUTE TREE","ddfafasf","35325345","kl","","","20000","Active");
INSERT INTO agents VALUES("4","TERAS ERA JAYA","aasdf","4324234324","Kuala Lumpur","","","150000","Active");
INSERT INTO agents VALUES("7","WALK-IN","","","","","","9999968271","Active");
INSERT INTO agents VALUES("10","MABA RESOURCES","fafafdaf","35343432423","fsdfsd","5345435","www.wrewerewf.com","30000","Active");
INSERT INTO agents VALUES("11","UZZAL","fafasdf","24234","fdasf","32432","","50000","Active");
INSERT INTO agents VALUES("12","RASEL","eefsfs","432423","dfs","4324234","","10000","Active");
INSERT INTO agents VALUES("13","ANWAR","asdfadf","asdfaf","Malaka","a","","20000","Active");
INSERT INTO agents VALUES("14","MANIK","afdad","dfdf","kl","","","5000","Active");
INSERT INTO agents VALUES("15","HEMAYET","eafaf","adfaf","kl","","","10000","Active");
INSERT INTO agents VALUES("16","CHAN MIAH","adfa","asdf","asdf","","","10000","Active");
INSERT INTO agents VALUES("17","MOHIUDDIN ","asdfaf","asdf","PENANG","","","15000","Active");
INSERT INTO agents VALUES("18","SATABDI TRAVEL","asdfasdf","asdf","KLANG","","","2000","Active");
INSERT INTO agents VALUES("19","SAIFUL IME","ADSF","ASDF","ADF","","","5000","Active");



DROP TABLE IF EXISTS banks;

CREATE TABLE `banks` (
  `id` int(11) NOT NULL auto_increment,
  `bank_name` varchar(100) NOT NULL,
  `status` varchar(10) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

INSERT INTO banks VALUES("1","MAY BANK","Active");
INSERT INTO banks VALUES("2","CIMB BANK","Active");
INSERT INTO banks VALUES("3","RHB BANK","Active");
INSERT INTO banks VALUES("4","PUBLIC BANK","Active");
INSERT INTO banks VALUES("6","AL RAJHI BANK","Active");
INSERT INTO banks VALUES("7","STANDARD CHARTERED","Active");



DROP TABLE IF EXISTS carriers;

CREATE TABLE `carriers` (
  `id` int(11) NOT NULL auto_increment,
  `carrier_name` varchar(100) NOT NULL,
  `status` varchar(10) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

INSERT INTO carriers VALUES("6","AIR ASIA (AK)","Active");
INSERT INTO carriers VALUES("5","MALAYSIA AIRLINES (MH)","Active");
INSERT INTO carriers VALUES("4","BIMAN BANGLADESH AIRLINES (BG)","Active");
INSERT INTO carriers VALUES("7","EMIRATES AIRLINES (EK)","Active");
INSERT INTO carriers VALUES("8","ETHIHAD AIRLINES (EY)","Active");
INSERT INTO carriers VALUES("9","GMG AIRLINES (Z5)","Active");
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
INSERT INTO carriers VALUES("20","BEST AIR (BA)","Active");



DROP TABLE IF EXISTS cash_deposit;

CREATE TABLE `cash_deposit` (
  `id` int(11) NOT NULL auto_increment,
  `cash_in_hand` decimal(11,2) NOT NULL,
  `deposit` decimal(11,2) NOT NULL,
  `deposit_date` date NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO cash_deposit VALUES("1","7360.00","7000.00","2012-06-04");



DROP TABLE IF EXISTS company;

CREATE TABLE `company` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `fax` varchar(30) NOT NULL,
  `address` varchar(250) NOT NULL,
  `website` varchar(50) NOT NULL,
  `img` varchar(100) NOT NULL,
  `mobile` varchar(30) NOT NULL,
  `reg_number` varchar(30) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

INSERT INTO company VALUES("1","DATASOFT SOLUTIONS (M) SDN. BHD","masud@datasoft.my","+603 62754467","+603 62755145","19-2, Jalan Cempaka SD 12/1, \nBandar Sri Damansara, Kuala Lumpur 52200, Malaysia.","www.datasoft.my","Datasoft_Solutions_Logo_gif.gif","+60163080336","816131-U");



DROP TABLE IF EXISTS db_bck;

CREATE TABLE `db_bck` (
  `id` bigint(20) NOT NULL auto_increment,
  `file_name` varchar(50) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

INSERT INTO db_bck VALUES("1","2012-06-16 01:47:37.sql");
INSERT INTO db_bck VALUES("2","2012-06-16 01:55:04.sql");
INSERT INTO db_bck VALUES("3","2012-06-16 01:57:11.sql");
INSERT INTO db_bck VALUES("4","2012-06-16 01:57:52.sql");



DROP TABLE IF EXISTS due_collection;

CREATE TABLE `due_collection` (
  `id` int(11) NOT NULL auto_increment,
  `payment_date` date NOT NULL,
  `agent_id` int(11) NOT NULL,
  `cash` decimal(11,2) NOT NULL,
  `cheque` decimal(11,2) NOT NULL,
  `bank` decimal(11,2) NOT NULL,
  `total` decimal(11,2) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

INSERT INTO due_collection VALUES("1","2012-06-12","2","300.00","0.00","0.00","300.00");



DROP TABLE IF EXISTS exchange_order;

CREATE TABLE `exchange_order` (
  `id` int(11) NOT NULL auto_increment,
  `xo_number` int(11) NOT NULL,
  `xo_to` varchar(200) NOT NULL,
  `date` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `paxs` varchar(100) NOT NULL,
  `ringgit_inwords` varchar(100) NOT NULL,
  `cheque_no` varchar(50) NOT NULL,
  `or_no` varchar(50) NOT NULL,
  `groos_fare` decimal(11,2) NOT NULL,
  `comission` decimal(11,2) NOT NULL,
  `net_fare` decimal(11,2) NOT NULL,
  `tax` decimal(11,2) NOT NULL,
  `total` decimal(11,2) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




DROP TABLE IF EXISTS invoice;

CREATE TABLE `invoice` (
  `id` int(11) NOT NULL auto_increment,
  `invoice_number` int(11) NOT NULL,
  `invoice_to` varchar(200) NOT NULL,
  `invoice_date` timestamp NOT NULL default CURRENT_TIMESTAMP,
  `total_amount` decimal(11,2) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO invoice VALUES("1","1","masud","2012-06-13 12:00:00","680.00");



DROP TABLE IF EXISTS invoice_particular;

CREATE TABLE `invoice_particular` (
  `id` int(11) NOT NULL auto_increment,
  `invoice_number` varchar(30) NOT NULL,
  `particular` varchar(400) NOT NULL,
  `qty` decimal(11,2) NOT NULL,
  `rate` decimal(11,2) NOT NULL,
  `total` decimal(11,2) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

INSERT INTO invoice_particular VALUES("1","1","kuuuuuul-dhaka","1.00","680.00","680.00");



DROP TABLE IF EXISTS menu_action;

CREATE TABLE `menu_action` (
  `id` int(11) NOT NULL auto_increment,
  `menu_id` int(11) NOT NULL,
  `action` varchar(30) NOT NULL,
  `type_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1138 DEFAULT CHARSET=latin1;

INSERT INTO menu_action VALUES("388","2","create","1");
INSERT INTO menu_action VALUES("389","30","create","1");
INSERT INTO menu_action VALUES("390","29","create","1");
INSERT INTO menu_action VALUES("391","9","create","1");
INSERT INTO menu_action VALUES("392","8","create","1");
INSERT INTO menu_action VALUES("393","7","create","1");
INSERT INTO menu_action VALUES("394","6","create","1");
INSERT INTO menu_action VALUES("395","5","create","1");
INSERT INTO menu_action VALUES("396","4","create","1");
INSERT INTO menu_action VALUES("397","3","create","1");
INSERT INTO menu_action VALUES("398","31","create","1");
INSERT INTO menu_action VALUES("399","11","create","1");
INSERT INTO menu_action VALUES("400","12","create","1");
INSERT INTO menu_action VALUES("401","13","create","1");
INSERT INTO menu_action VALUES("402","14","create","1");
INSERT INTO menu_action VALUES("403","15","create","1");
INSERT INTO menu_action VALUES("404","32","create","1");
INSERT INTO menu_action VALUES("405","17","create","1");
INSERT INTO menu_action VALUES("406","18","create","1");
INSERT INTO menu_action VALUES("407","19","create","1");
INSERT INTO menu_action VALUES("408","20","create","1");
INSERT INTO menu_action VALUES("409","21","create","1");
INSERT INTO menu_action VALUES("410","22","create","1");
INSERT INTO menu_action VALUES("411","23","create","1");
INSERT INTO menu_action VALUES("412","24","create","1");
INSERT INTO menu_action VALUES("413","25","create","1");
INSERT INTO menu_action VALUES("414","27","create","1");
INSERT INTO menu_action VALUES("415","28","create","1");
INSERT INTO menu_action VALUES("416","2","update","1");
INSERT INTO menu_action VALUES("417","30","update","1");
INSERT INTO menu_action VALUES("418","29","update","1");
INSERT INTO menu_action VALUES("419","9","update","1");
INSERT INTO menu_action VALUES("420","8","update","1");
INSERT INTO menu_action VALUES("421","7","update","1");
INSERT INTO menu_action VALUES("422","6","update","1");
INSERT INTO menu_action VALUES("423","5","update","1");
INSERT INTO menu_action VALUES("424","4","update","1");
INSERT INTO menu_action VALUES("425","3","update","1");
INSERT INTO menu_action VALUES("426","31","update","1");
INSERT INTO menu_action VALUES("427","11","update","1");
INSERT INTO menu_action VALUES("428","12","update","1");
INSERT INTO menu_action VALUES("429","13","update","1");
INSERT INTO menu_action VALUES("430","14","update","1");
INSERT INTO menu_action VALUES("431","15","update","1");
INSERT INTO menu_action VALUES("432","32","update","1");
INSERT INTO menu_action VALUES("433","17","update","1");
INSERT INTO menu_action VALUES("434","18","update","1");
INSERT INTO menu_action VALUES("435","19","update","1");
INSERT INTO menu_action VALUES("436","20","update","1");
INSERT INTO menu_action VALUES("437","21","update","1");
INSERT INTO menu_action VALUES("438","22","update","1");
INSERT INTO menu_action VALUES("439","23","update","1");
INSERT INTO menu_action VALUES("440","24","update","1");
INSERT INTO menu_action VALUES("441","25","update","1");
INSERT INTO menu_action VALUES("442","27","update","1");
INSERT INTO menu_action VALUES("443","28","update","1");
INSERT INTO menu_action VALUES("444","2","delete","1");
INSERT INTO menu_action VALUES("445","30","delete","1");
INSERT INTO menu_action VALUES("446","29","delete","1");
INSERT INTO menu_action VALUES("447","9","delete","1");
INSERT INTO menu_action VALUES("448","8","delete","1");
INSERT INTO menu_action VALUES("449","7","delete","1");
INSERT INTO menu_action VALUES("450","6","delete","1");
INSERT INTO menu_action VALUES("451","5","delete","1");
INSERT INTO menu_action VALUES("452","4","delete","1");
INSERT INTO menu_action VALUES("453","3","delete","1");
INSERT INTO menu_action VALUES("454","31","delete","1");
INSERT INTO menu_action VALUES("455","11","delete","1");
INSERT INTO menu_action VALUES("456","12","delete","1");
INSERT INTO menu_action VALUES("457","13","delete","1");
INSERT INTO menu_action VALUES("458","14","delete","1");
INSERT INTO menu_action VALUES("459","15","delete","1");
INSERT INTO menu_action VALUES("460","32","delete","1");
INSERT INTO menu_action VALUES("461","17","delete","1");
INSERT INTO menu_action VALUES("462","18","delete","1");
INSERT INTO menu_action VALUES("463","19","delete","1");
INSERT INTO menu_action VALUES("464","20","delete","1");
INSERT INTO menu_action VALUES("465","21","delete","1");
INSERT INTO menu_action VALUES("466","22","delete","1");
INSERT INTO menu_action VALUES("467","23","delete","1");
INSERT INTO menu_action VALUES("468","24","delete","1");
INSERT INTO menu_action VALUES("469","25","delete","1");
INSERT INTO menu_action VALUES("470","27","delete","1");
INSERT INTO menu_action VALUES("471","28","delete","1");
INSERT INTO menu_action VALUES("847","2","create","4");
INSERT INTO menu_action VALUES("848","2","update","4");
INSERT INTO menu_action VALUES("849","2","delete","4");
INSERT INTO menu_action VALUES("1034","2","create","3");
INSERT INTO menu_action VALUES("1035","30","create","3");
INSERT INTO menu_action VALUES("1036","29","create","3");
INSERT INTO menu_action VALUES("1037","9","create","3");
INSERT INTO menu_action VALUES("1038","8","create","3");
INSERT INTO menu_action VALUES("1039","7","create","3");
INSERT INTO menu_action VALUES("1040","6","create","3");
INSERT INTO menu_action VALUES("1041","5","create","3");
INSERT INTO menu_action VALUES("1042","4","create","3");
INSERT INTO menu_action VALUES("1043","3","create","3");
INSERT INTO menu_action VALUES("1044","11","create","3");
INSERT INTO menu_action VALUES("1045","12","create","3");
INSERT INTO menu_action VALUES("1046","13","create","3");
INSERT INTO menu_action VALUES("1047","32","create","3");
INSERT INTO menu_action VALUES("1048","17","create","3");
INSERT INTO menu_action VALUES("1049","18","create","3");
INSERT INTO menu_action VALUES("1050","19","create","3");
INSERT INTO menu_action VALUES("1051","21","create","3");
INSERT INTO menu_action VALUES("1052","22","create","3");
INSERT INTO menu_action VALUES("1053","27","create","3");
INSERT INTO menu_action VALUES("1054","2","update","3");
INSERT INTO menu_action VALUES("1055","30","update","3");
INSERT INTO menu_action VALUES("1056","29","update","3");
INSERT INTO menu_action VALUES("1057","9","update","3");
INSERT INTO menu_action VALUES("1058","8","update","3");
INSERT INTO menu_action VALUES("1059","7","update","3");
INSERT INTO menu_action VALUES("1060","6","update","3");
INSERT INTO menu_action VALUES("1061","5","update","3");
INSERT INTO menu_action VALUES("1062","4","update","3");
INSERT INTO menu_action VALUES("1063","3","update","3");
INSERT INTO menu_action VALUES("1064","2","delete","3");
INSERT INTO menu_action VALUES("1065","30","delete","3");
INSERT INTO menu_action VALUES("1066","29","delete","3");
INSERT INTO menu_action VALUES("1067","9","delete","3");
INSERT INTO menu_action VALUES("1068","8","delete","3");
INSERT INTO menu_action VALUES("1069","7","delete","3");
INSERT INTO menu_action VALUES("1070","6","delete","3");
INSERT INTO menu_action VALUES("1071","5","delete","3");
INSERT INTO menu_action VALUES("1072","4","delete","3");
INSERT INTO menu_action VALUES("1073","3","delete","3");
INSERT INTO menu_action VALUES("1074","13","approvedVoucher","2");
INSERT INTO menu_action VALUES("1075","2","create","2");
INSERT INTO menu_action VALUES("1076","30","create","2");
INSERT INTO menu_action VALUES("1077","29","create","2");
INSERT INTO menu_action VALUES("1078","9","create","2");
INSERT INTO menu_action VALUES("1079","8","create","2");
INSERT INTO menu_action VALUES("1080","7","create","2");
INSERT INTO menu_action VALUES("1081","6","create","2");
INSERT INTO menu_action VALUES("1082","5","create","2");
INSERT INTO menu_action VALUES("1083","4","create","2");
INSERT INTO menu_action VALUES("1084","3","create","2");
INSERT INTO menu_action VALUES("1085","11","create","2");
INSERT INTO menu_action VALUES("1086","12","create","2");
INSERT INTO menu_action VALUES("1087","13","create","2");
INSERT INTO menu_action VALUES("1088","32","create","2");
INSERT INTO menu_action VALUES("1089","17","create","2");
INSERT INTO menu_action VALUES("1090","18","create","2");
INSERT INTO menu_action VALUES("1091","19","create","2");
INSERT INTO menu_action VALUES("1092","20","create","2");
INSERT INTO menu_action VALUES("1093","21","create","2");
INSERT INTO menu_action VALUES("1094","22","create","2");
INSERT INTO menu_action VALUES("1095","23","create","2");
INSERT INTO menu_action VALUES("1096","27","create","2");
INSERT INTO menu_action VALUES("1097","30","update","2");
INSERT INTO menu_action VALUES("1098","29","update","2");
INSERT INTO menu_action VALUES("1099","9","update","2");
INSERT INTO menu_action VALUES("1100","8","update","2");
INSERT INTO menu_action VALUES("1101","7","update","2");
INSERT INTO menu_action VALUES("1102","6","update","2");
INSERT INTO menu_action VALUES("1103","5","update","2");
INSERT INTO menu_action VALUES("1104","4","update","2");
INSERT INTO menu_action VALUES("1105","3","update","2");
INSERT INTO menu_action VALUES("1106","11","update","2");
INSERT INTO menu_action VALUES("1107","12","update","2");
INSERT INTO menu_action VALUES("1108","13","update","2");
INSERT INTO menu_action VALUES("1109","32","update","2");
INSERT INTO menu_action VALUES("1110","17","update","2");
INSERT INTO menu_action VALUES("1111","18","update","2");
INSERT INTO menu_action VALUES("1112","19","update","2");
INSERT INTO menu_action VALUES("1113","20","update","2");
INSERT INTO menu_action VALUES("1114","21","update","2");
INSERT INTO menu_action VALUES("1115","22","update","2");
INSERT INTO menu_action VALUES("1116","23","update","2");
INSERT INTO menu_action VALUES("1117","2","delete","2");
INSERT INTO menu_action VALUES("1118","30","delete","2");
INSERT INTO menu_action VALUES("1119","29","delete","2");
INSERT INTO menu_action VALUES("1120","9","delete","2");
INSERT INTO menu_action VALUES("1121","8","delete","2");
INSERT INTO menu_action VALUES("1122","7","delete","2");
INSERT INTO menu_action VALUES("1123","6","delete","2");
INSERT INTO menu_action VALUES("1124","5","delete","2");
INSERT INTO menu_action VALUES("1125","4","delete","2");
INSERT INTO menu_action VALUES("1126","3","delete","2");
INSERT INTO menu_action VALUES("1127","11","delete","2");
INSERT INTO menu_action VALUES("1128","12","delete","2");
INSERT INTO menu_action VALUES("1129","13","delete","2");
INSERT INTO menu_action VALUES("1130","32","delete","2");
INSERT INTO menu_action VALUES("1131","17","delete","2");
INSERT INTO menu_action VALUES("1132","18","delete","2");
INSERT INTO menu_action VALUES("1133","19","delete","2");
INSERT INTO menu_action VALUES("1134","20","delete","2");
INSERT INTO menu_action VALUES("1135","21","delete","2");
INSERT INTO menu_action VALUES("1136","22","delete","2");
INSERT INTO menu_action VALUES("1137","23","delete","2");



DROP TABLE IF EXISTS menu_item;

CREATE TABLE `menu_item` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(50) character set utf8 NOT NULL,
  `link` varchar(100) NOT NULL,
  `parent` int(11) NOT NULL,
  `ordering` int(11) NOT NULL,
  `icon` varchar(40) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;

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
INSERT INTO menu_item VALUES("33","Agent Collection","/index.php/rptAgentCollection","16","0","");



DROP TABLE IF EXISTS menus;

CREATE TABLE `menus` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(50) NOT NULL,
  `path` varchar(100) NOT NULL,
  `order` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
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
  `id` int(11) NOT NULL auto_increment,
  `agent_name` varchar(20) NOT NULL,
  `amount` int(11) NOT NULL,
  `date` varchar(11) NOT NULL,
  PRIMARY KEY  (`id`,`agent_name`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

INSERT INTO payment_details VALUES("1","assmi","25000","12/05/2011");
INSERT INTO payment_details VALUES("2","arrri","35000","02/03/2011");
INSERT INTO payment_details VALUES("3","assmi","25000","12/05/2011");
INSERT INTO payment_details VALUES("4","arrri","35000","02/03/2011");



DROP TABLE IF EXISTS payment_terms;

CREATE TABLE `payment_terms` (
  `id` int(11) NOT NULL auto_increment,
  `payment_term_name` varchar(100) NOT NULL,
  `status` varchar(10) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

INSERT INTO payment_terms VALUES("1","CASH","Active");
INSERT INTO payment_terms VALUES("2","CREDIT","Active");
INSERT INTO payment_terms VALUES("3","CHEQUE","Active");
INSERT INTO payment_terms VALUES("5","BANKIN","Active");
INSERT INTO payment_terms VALUES("6","CREDIT CARD","Active");



DROP TABLE IF EXISTS payment_voucher;

CREATE TABLE `payment_voucher` (
  `id` int(11) NOT NULL auto_increment,
  `payment_date` date NOT NULL,
  `type` varchar(30) NOT NULL,
  `agent_id` int(11) default NULL,
  `carrier_id` int(11) default NULL,
  `individual` varchar(30) NOT NULL,
  `cash` decimal(11,2) NOT NULL,
  `cheque` decimal(11,2) NOT NULL,
  `credit` decimal(11,2) NOT NULL,
  `bank` decimal(11,2) NOT NULL,
  `total` decimal(11,2) NOT NULL,
  `auto_num` int(11) NOT NULL,
  `status` varchar(20) NOT NULL default 'Pending',
  `approved_by` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

INSERT INTO payment_voucher VALUES("1","2012-06-04","Carrier","","4","","1000.00","0.00","0.00","0.00","1000.00","1","Approved","1");
INSERT INTO payment_voucher VALUES("2","2012-06-04","Carrier","","5","","1000.00","0.00","0.00","0.00","1000.00","2","Approved","1");
INSERT INTO payment_voucher VALUES("3","2012-06-12","Carrier","","4","","1000.00","0.00","0.00","0.00","1000.00","3","Approved","10");



DROP TABLE IF EXISTS prices;

CREATE TABLE `prices` (
  `id` int(11) NOT NULL auto_increment,
  `sector_id` int(11) NOT NULL,
  `carrier_id` int(11) NOT NULL,
  `original_price` decimal(10,2) NOT NULL,
  `selling_price` decimal(10,2) NOT NULL,
  `status` varchar(10) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

INSERT INTO prices VALUES("8","1","4","562.00","580.00","Active");
INSERT INTO prices VALUES("6","4","4","1260.00","1300.00","Active");
INSERT INTO prices VALUES("7","6","4","880.00","900.00","Active");
INSERT INTO prices VALUES("9","5","4","1260.00","1280.00","Active");
INSERT INTO prices VALUES("10","1","5","790.00","800.00","Active");
INSERT INTO prices VALUES("11","5","5","1830.00","1850.00","Active");
INSERT INTO prices VALUES("12","6","5","1080.00","1100.00","Active");
INSERT INTO prices VALUES("13","4","5","2375.00","2400.00","Active");
INSERT INTO prices VALUES("15","7","6","1000.00","1100.00","Active");
INSERT INTO prices VALUES("16","9","19","1000.00","1020.00","Active");
INSERT INTO prices VALUES("17","9","9","570.00","620.00","Active");
INSERT INTO prices VALUES("18","1","20","550.00","570.00","Active");



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
  `id` int(11) NOT NULL auto_increment,
  `auto_num` int(11) NOT NULL,
  `pnr` varchar(50) NOT NULL,
  `date` date NOT NULL,
  `flt_date` date NOT NULL,
  `return_date` timestamp NOT NULL default '0000-00-00 00:00:00',
  `name_prefix` varchar(10) NOT NULL,
  `name` varchar(300) NOT NULL,
  `ticket_no` varchar(300) NOT NULL,
  `sector` varchar(20) NOT NULL,
  `carrier` varchar(20) NOT NULL,
  `agent_id` int(11) NOT NULL,
  `cash_credit_cheque_no` int(11) default NULL,
  `op` decimal(11,2) NOT NULL,
  `rm` decimal(10,2) default NULL,
  `remarks` varchar(250) NOT NULL,
  `profit` decimal(10,2) NOT NULL,
  `bank_id` int(11) NOT NULL,
  `cheque_no` varchar(100) NOT NULL,
  `cheque_date` date NOT NULL,
  `customer_id` int(11) NOT NULL,
  `xo` varchar(50) NOT NULL,
  `no_of_tickets` varchar(30) NOT NULL default '1',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

INSERT INTO receipts VALUES("1","1","5435435353453","2012-06-01","2012-06-01","0000-00-00 00:00:00","Mr.","Karim, Rahim, Masud, Nasir, Sultab, Zainab, etc,","3534543543543543 - 34543543543543543543543543543534543","1","20","3","1","0.00","570.00","","20.00","0","","0000-00-00","0","","1");
INSERT INTO receipts VALUES("2","2","79798","2012-06-03","2012-06-03","0000-00-00 00:00:00","Mr.","Rahul Mia","88787878","1","4","2","1","0.00","590.00","","18.00","0","","0000-00-00","0","434","1");
INSERT INTO receipts VALUES("3","3","646567","2012-06-03","2012-06-03","0000-00-00 00:00:00","Mr.","Rana","897989879","4","5","5","1","0.00","2400.00","","25.00","0","","0000-00-00","0","","1");
INSERT INTO receipts VALUES("4","4","5345345","2012-06-03","2012-06-03","0000-00-00 00:00:00","Mr.","Kamal Hossain","35345435","4","4","3","1","0.00","1300.00","","40.00","0","","0000-00-00","0","3434","1");
INSERT INTO receipts VALUES("5","5","687687","2012-06-03","2012-06-03","0000-00-00 00:00:00","Mr.","test","8686","4","4","3","1","0.00","1320.00","","40.00","0","","0000-00-00","0","343","1");
INSERT INTO receipts VALUES("6","6","64564","2012-06-03","2012-06-03","0000-00-00 00:00:00","Mr.","jamal mia","456546","1","4","2","1","0.00","580.00","","18.00","0","","0000-00-00","0","","1");
INSERT INTO receipts VALUES("7","7","1111","2012-06-04","2012-06-04","0000-00-00 00:00:00","Ms.","ddd","11111","1","4","2","1","560.00","600.00","test by mehedi","40.00","0","","0000-00-00","0","","1");
INSERT INTO receipts VALUES("8","8","56446","2012-06-04","2012-06-04","0000-00-00 00:00:00","Mr.","Rahim","4564563","1","4","2","2","580.00","590.00","","10.00","0","","0000-00-00","2","","1");
INSERT INTO receipts VALUES("9","9","4343","2012-06-04","2012-06-04","0000-00-00 00:00:00","Mr.","jamal mia","4324234","1","4","3","1","580.00","600.00","","20.00","0","","0000-00-00","0","","1");
INSERT INTO receipts VALUES("10","10","34324","2012-06-04","2012-06-04","0000-00-00 00:00:00","Mr.","khoka","23432432423","4","5","3","1","2375.00","2400.00","","25.00","0","","0000-00-00","0","","1");
INSERT INTO receipts VALUES("11","11","234324","2012-06-04","2012-06-04","0000-00-00 00:00:00","Mr.","Kabir ","24234324","1","4","3","2","562.00","580.00","","18.00","0","","0000-00-00","3","","1");
INSERT INTO receipts VALUES("12","12","5345345","2012-06-04","2012-06-04","0000-00-00 00:00:00","Mr.","Rana","53453454","1","4","3","1","562.00","580.00","","18.00","0","","0000-00-00","0","","1");
INSERT INTO receipts VALUES("13","13","3434","2012-06-05","2012-06-05","0000-00-00 00:00:00","Mr.","Badal","4324324","1","20","3","1","560.00","580.00","","20.00","0","","0000-00-00","0","","1");
INSERT INTO receipts VALUES("14","14","3343","2012-06-12","2012-06-13","0000-00-00 00:00:00","Mr.","Jalal ","546456","1","4","1","1","580.00","600.00","","20.00","0","","0000-00-00","0","353","1");
INSERT INTO receipts VALUES("15","15","4234234","2012-06-12","2012-06-12","0000-00-00 00:00:00","Mr.","Kamrul ","543543","4","5","2","1","2375.00","2400.00","","25.00","0","","0000-00-00","0","","1");
INSERT INTO receipts VALUES("16","16","5435345","2012-06-12","2012-06-12","0000-00-00 00:00:00","Mr.","Sohel, Jalam ","34543534, 34324342","1","20","10","1","1100.00","1140.00","","40.00","0","","0000-00-00","0","","2");



DROP TABLE IF EXISTS sectors;

CREATE TABLE `sectors` (
  `id` int(11) NOT NULL auto_increment,
  `sector_name` varchar(100) NOT NULL,
  `status` varchar(10) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

INSERT INTO sectors VALUES("1","KUL-DAC","Active");
INSERT INTO sectors VALUES("4","DAC-KUL-DAC","Active");
INSERT INTO sectors VALUES("5","KUL-DAC-KUL","Active");
INSERT INTO sectors VALUES("6","DAC-KUL","Active");
INSERT INTO sectors VALUES("7","CGP-DAC","Active");
INSERT INTO sectors VALUES("8","KUL-DAC-KTM","Active");
INSERT INTO sectors VALUES("9","DAK-SG","Active");



DROP TABLE IF EXISTS serial_number;

CREATE TABLE `serial_number` (
  `id` int(11) NOT NULL auto_increment,
  `receipt` int(11) NOT NULL,
  `payment_voucher` int(11) NOT NULL,
  `invoice` int(11) NOT NULL,
  `xo` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO serial_number VALUES("1","1","1","1","1");



DROP TABLE IF EXISTS user_group;

CREATE TABLE `user_group` (
  `id` int(11) NOT NULL auto_increment,
  `group_name` varchar(30) NOT NULL,
  `status` varchar(20) NOT NULL default 'ACTIVE',
  `menu_permission` varchar(200) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

INSERT INTO user_group VALUES("1","Super Admin","ACTIVE","1,2,30,29,9,8,7,6,5,4,3,31,10,11,12,13,14,15,32,33,16,17,18,19,20,21,22,23,24,25,26,27,28,");
INSERT INTO user_group VALUES("2","Admin","ACTIVE","1,2,30,29,9,8,7,6,5,4,3,10,11,12,13,32,16,17,18,19,20,21,22,23,26,27,");
INSERT INTO user_group VALUES("3","user","ACTIVE","1,10,11,12,13,32,16,17,18,19,21,22,26,27,");



DROP TABLE IF EXISTS user_info;

CREATE TABLE `user_info` (
  `id` int(11) NOT NULL auto_increment,
  `fullname` varchar(100) NOT NULL,
  `date_of_birth` timestamp NOT NULL default '0000-00-00 00:00:00',
  `phone` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(300) NOT NULL,
  `user_name` varchar(20) NOT NULL,
  `password` varchar(100) NOT NULL,
  `status` varchar(10) NOT NULL default 'ACTIVE',
  `entry_date` timestamp NOT NULL default CURRENT_TIMESTAMP,
  `entry_by` varchar(100) NOT NULL,
  `update_date` timestamp NOT NULL default '0000-00-00 00:00:00',
  `update_by` varchar(100) NOT NULL,
  `menu_permission` varchar(200) NOT NULL,
  `type_id` int(11) NOT NULL,
  `avatar` varchar(100) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

INSERT INTO user_info VALUES("1","Super Admin","0000-00-00 00:00:00","N/A","N/A","N/A","root","ILbjHARo+aOSqX86kvJ6ooHZDXc9pmGHOIncXhr1n7M=","ACTIVE","2012-04-03 03:22:41","","2012-05-29 10:57:59","1","","1","images.jpg");
INSERT INTO user_info VALUES("6","Rajib","2012-05-24 00:00:00","098","789","kabarsthan","rajib","utCoTxml0tnhtbq/gX+tnPLe2bYEk/zFur+tPyBo0Go=","ACTIVE","2012-05-26 11:26:14","1","2012-06-13 12:45:44","10","","2","419409_303833269681452_100001643453471_850542_607407747_n.jpg");
INSERT INTO user_info VALUES("8","Mehedi","2012-05-27 00:00:00","0163080336","info@datasoft.my","Dhaka","mehedi","ILbjHARo+aOSqX86kvJ6ooHZDXc9pmGHOIncXhr1n7M=","ACTIVE","2012-05-27 02:37:56","1","2012-05-29 10:57:04","1","","2","download (1).jpg");
INSERT INTO user_info VALUES("9","Masud Rana ","1976-04-15 00:00:00","0163080336","rana.bangladesh@gmail.com","19-2, Jalan Cempaka, 12/1, Bandar Sri Damansara","rana","PXr8tPavfPB+BUjx5gmVebizgb3qohK/E9HUT1BI3D8=","ACTIVE","2012-05-27 02:54:03","1","2012-06-15 01:31:18","10","","3","IMG_3204.JPG");
INSERT INTO user_info VALUES("10","Parvez","1983-05-19 00:00:00","","","","parvez","UHLV6pyrpGw0/hK0ZKH8MK/Q0yog2O6Ywc26VNLyS8o=","ACTIVE","2012-05-27 08:21:52","1","2012-05-31 02:41:42","1","","2","bangladesh.jpg");
INSERT INTO user_info VALUES("11","test","0000-00-00 00:00:00","","","","test","ILbjHARo+aOSqX86kvJ6ooHZDXc9pmGHOIncXhr1n7M=","INACTIVE","2012-05-31 08:35:22","1","2012-06-05 02:23:10","1","","1","Penguins.jpg");
INSERT INTO user_info VALUES("12","lg","0000-00-00 00:00:00","","","","lg","/l7UesPK0zyTGxkQePhKBEfmebOM0j+yFdCFi3IgJLY=","INACTIVE","2012-06-05 23:06:08","1","0000-00-00 00:00:00","","","4","");
INSERT INTO user_info VALUES("13","test","0000-00-00 00:00:00","","","","test","ZDXXsDkuzn/gwkn7BPFCAKtTXUaVMs1HJ4QlPixHkEI=","INACTIVE","2012-06-13 00:44:29","10","2012-06-13 05:29:24","1","","3","");
INSERT INTO user_info VALUES("14","test1","0000-00-00 00:00:00","","","","test1","LVl9ORYm6PpbvCAFta61wn/RwlIrwk5tRCccbOKXVKU=","INACTIVE","2012-06-13 05:30:22","1","0000-00-00 00:00:00","","","3","");
INSERT INTO user_info VALUES("15","Parvez","0000-00-00 00:00:00","0000000000","afafasdfj@gmail.com","Kuala Lumpur","parvez","UHLV6pyrpGw0/hK0ZKH8MK/Q0yog2O6Ywc26VNLyS8o=","ACTIVE","2012-06-14 11:34:22","10","0000-00-00 00:00:00","","","2","");



DROP TABLE IF EXISTS user_log;

CREATE TABLE `user_log` (
  `id` int(11) NOT NULL auto_increment,
  `type` varchar(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `description` varchar(100) NOT NULL,
  `log_time` timestamp NOT NULL default CURRENT_TIMESTAMP,
  `table_name` varchar(20) NOT NULL,
  `table_id` varchar(10) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=408 DEFAULT CHARSET=utf8;

INSERT INTO user_log VALUES("18","Login","1","Login to site","2012-05-29 23:04:36","","");
INSERT INTO user_log VALUES("19","Login","1","Login to site","2012-05-29 23:41:22","","");
INSERT INTO user_log VALUES("20","Print","1","Print a payment voucher","2012-05-29 23:41:59","payment_voucher","1");
INSERT INTO user_log VALUES("21","Login","1","Login to site","2012-05-29 23:45:43","","");
INSERT INTO user_log VALUES("22","Login","1","Login to site","2012-05-30 00:07:13","","");
INSERT INTO user_log VALUES("23","Login","1","Login to site","2012-05-30 00:13:52","","");
INSERT INTO user_log VALUES("24","Login","1","Login to site","2012-05-30 00:15:16","","");
INSERT INTO user_log VALUES("25","Create","1","Create Receipt","2012-05-30 00:19:01","receipts","79");
INSERT INTO user_log VALUES("26","Delete","1","Delete a carriers","2012-05-30 00:20:04","carriers","21");
INSERT INTO user_log VALUES("27","Login","1","Login to site","2012-05-30 00:29:05","","");
INSERT INTO user_log VALUES("28","Update","1","Update a prices","2012-05-30 00:35:35","prices","16");
INSERT INTO user_log VALUES("29","Login","1","Login to site","2012-05-30 00:45:09","","");
INSERT INTO user_log VALUES("30","Login","1","Login to site","2012-05-30 00:52:32","","");
INSERT INTO user_log VALUES("31","Print","1","Print a XO","2012-05-30 01:01:52","exchange_order","1");
INSERT INTO user_log VALUES("32","Print","1","Print a invoice","2012-05-30 01:02:31","invoice","1");
INSERT INTO user_log VALUES("33","Login","1","Login to site","2012-05-30 02:14:31","","");
INSERT INTO user_log VALUES("34","Login","1","Login to site","2012-05-30 02:55:00","","");
INSERT INTO user_log VALUES("35","Login","1","Login to site","2012-05-30 03:18:03","","");
INSERT INTO user_log VALUES("36","Create","1","Create Receipt","2012-05-30 03:24:59","receipts","80");
INSERT INTO user_log VALUES("37","Create","1","Create Receipt","2012-05-30 03:27:16","receipts","81");
INSERT INTO user_log VALUES("38","Create","1","Create a due collection","2012-05-30 03:30:21","due_collection","16");
INSERT INTO user_log VALUES("39","Create","1","Create a payment voucher","2012-05-30 03:40:18","payment_voucher","11");
INSERT INTO user_log VALUES("40","Approved","1","Approved a payment voucher","2012-05-30 03:40:22","payment_voucher","11");
INSERT INTO user_log VALUES("41","Login","1","Login to site","2012-05-30 04:24:29","","");
INSERT INTO user_log VALUES("42","Login","1","Login to site","2012-05-30 06:57:34","","");
INSERT INTO user_log VALUES("43","Login","1","Login to site","2012-05-30 08:53:04","","");
INSERT INTO user_log VALUES("44","Logout","1","Logout from site","2012-05-30 08:56:03","","");
INSERT INTO user_log VALUES("45","Login","1","Login to site","2012-05-30 08:56:36","","");
INSERT INTO user_log VALUES("46","Logout","1","Logout from site","2012-05-30 08:58:33","","");
INSERT INTO user_log VALUES("47","Login","10","Login to site","2012-05-30 08:58:46","","");
INSERT INTO user_log VALUES("48","Create","10","Create Receipt","2012-05-30 09:02:06","receipts","82");
INSERT INTO user_log VALUES("49","Logout","10","Logout from site","2012-05-30 09:03:20","","");
INSERT INTO user_log VALUES("50","Login","1","Login to site","2012-05-30 09:03:36","","");
INSERT INTO user_log VALUES("51","Login","1","Login to site","2012-05-30 09:57:55","","");
INSERT INTO user_log VALUES("52","Login","1","Login to site","2012-05-30 10:22:53","","");
INSERT INTO user_log VALUES("53","Update","1","Update a agent","2012-05-30 10:30:42","agents","9");
INSERT INTO user_log VALUES("54","Update","1","Update a agent","2012-05-30 10:31:02","agents","1");
INSERT INTO user_log VALUES("55","Update","1","Update a agent","2012-05-30 10:31:10","agents","1");
INSERT INTO user_log VALUES("56","Create","1","Create a cash deposit","2012-05-30 10:33:02","cash_deposit","7");
INSERT INTO user_log VALUES("57","Login","1","Login to site","2012-05-30 12:15:58","","");
INSERT INTO user_log VALUES("58","Login","1","Login to site","2012-05-30 23:52:23","","");
INSERT INTO user_log VALUES("59","Login","1","Login to site","2012-05-31 00:29:51","","");
INSERT INTO user_log VALUES("60","Login","1","Login to site","2012-05-31 00:29:56","","");
INSERT INTO user_log VALUES("61","Login","1","Login to site","2012-05-31 00:45:55","","");
INSERT INTO user_log VALUES("62","Login","1","Login to site","2012-05-31 01:19:23","","");
INSERT INTO user_log VALUES("63","Login","1","Login to site","2012-05-31 01:26:58","","");
INSERT INTO user_log VALUES("64","Create","1","Create Receipt","2012-05-31 01:28:21","receipts","83");
INSERT INTO user_log VALUES("65","Create","1","Create Receipt","2012-05-31 01:28:51","receipts","84");
INSERT INTO user_log VALUES("66","Create","1","Create Receipt","2012-05-31 01:29:27","receipts","85");
INSERT INTO user_log VALUES("67","Create","1","Create a due collection","2012-05-31 01:30:28","due_collection","17");
INSERT INTO user_log VALUES("68","Create","1","Create a payment voucher","2012-05-31 01:30:54","payment_voucher","12");
INSERT INTO user_log VALUES("69","Approved","1","Approved a payment voucher","2012-05-31 01:31:03","payment_voucher","12");
INSERT INTO user_log VALUES("70","Create","1","Create a cash deposit","2012-05-31 01:32:52","cash_deposit","8");
INSERT INTO user_log VALUES("71","Login","1","Login to site","2012-05-31 02:01:21","","");
INSERT INTO user_log VALUES("72","Create","1","Create a due collection","2012-05-31 02:02:27","due_collection","18");
INSERT INTO user_log VALUES("73","Login","1","Login to site","2012-05-31 02:03:57","","");
INSERT INTO user_log VALUES("74","Create","1","Create a cash deposit","2012-05-31 02:11:32","cash_deposit","9");
INSERT INTO user_log VALUES("75","Login","1","Login to site","2012-05-31 02:15:25","","");
INSERT INTO user_log VALUES("76","Login","1","Login to site","2012-05-31 02:15:39","","");
INSERT INTO user_log VALUES("77","Login","1","Login to site","2012-05-31 02:27:00","","");
INSERT INTO user_log VALUES("78","Login","1","Login to site","2012-05-31 02:27:33","","");
INSERT INTO user_log VALUES("79","Print","1","Print a payment voucher","2012-05-31 02:28:10","payment_voucher","1");
INSERT INTO user_log VALUES("80","Login","1","Login to site","2012-05-31 02:40:50","","");
INSERT INTO user_log VALUES("81","Update","1","Update a user","2012-05-31 02:41:42","user_info","10");
INSERT INTO user_log VALUES("82","Update","1","Update user group and privilige","2012-05-31 02:43:51","user_group","2");
INSERT INTO user_log VALUES("83","Login","1","Login to site","2012-05-31 02:57:53","","");
INSERT INTO user_log VALUES("84","Login","1","Login to site","2012-05-31 03:15:15","","");
INSERT INTO user_log VALUES("85","Login","1","Login to site","2012-05-31 05:24:28","","");
INSERT INTO user_log VALUES("86","Login","1","Login to site","2012-05-31 05:37:50","","");
INSERT INTO user_log VALUES("87","Login","1","Login to site","2012-05-31 05:50:12","","");
INSERT INTO user_log VALUES("88","Login","1","Login to site","2012-05-31 06:09:27","","");
INSERT INTO user_log VALUES("89","Login","1","Login to site","2012-05-31 08:17:36","","");
INSERT INTO user_log VALUES("90","Update","1","Update a carriers name is BIMAN BANGLADESH AIRLINES (BG)","2012-05-31 08:33:18","carriers","4");
INSERT INTO user_log VALUES("91","Update","1","Update a carriers name is BIMAN BANGLADESH AIRLINES (BG)","2012-05-31 08:34:16","carriers","4");
INSERT INTO user_log VALUES("92","Create","1","Create a user","2012-05-31 08:35:24","user_info","11");
INSERT INTO user_log VALUES("93","Delete","1","Delete or Inactive a user","2012-05-31 08:35:43","user_info","11");
INSERT INTO user_log VALUES("94","Update","1","Update user group and privilige","2012-05-31 08:41:26","user_group","2");
INSERT INTO user_log VALUES("95","Logout","1","Logout from site","2012-05-31 08:41:32","","");
INSERT INTO user_log VALUES("96","Login","10","Login to site","2012-05-31 08:41:43","","");
INSERT INTO user_log VALUES("97","Logout","10","Logout from site","2012-05-31 08:42:09","","");
INSERT INTO user_log VALUES("98","Login","1","Login to site","2012-05-31 08:42:13","","");
INSERT INTO user_log VALUES("99","Login","1","Login to site","2012-05-31 08:42:40","","");
INSERT INTO user_log VALUES("100","Update","1","Update user group and privilige","2012-05-31 08:42:57","user_group","2");
INSERT INTO user_log VALUES("101","Logout","1","Logout from site","2012-05-31 08:43:09","","");
INSERT INTO user_log VALUES("102","Login","10","Login to site","2012-05-31 08:43:22","","");
INSERT INTO user_log VALUES("103","Update","10","Update user group and privilige","2012-05-31 08:44:41","user_group","2");
INSERT INTO user_log VALUES("104","Update","10","Update user group and privilige","2012-05-31 08:47:28","user_group","2");
INSERT INTO user_log VALUES("105","Login","1","Login to site","2012-05-31 08:59:48","","");
INSERT INTO user_log VALUES("106","Login","1","Login to site","2012-05-31 09:22:47","","");
INSERT INTO user_log VALUES("107","Login","1","Login to site","2012-05-31 09:46:25","","");
INSERT INTO user_log VALUES("108","Login","1","Login to site","2012-05-31 09:58:21","","");
INSERT INTO user_log VALUES("109","Login","1","Login to site","2012-05-31 11:13:58","","");
INSERT INTO user_log VALUES("110","Login","1","Login to site","2012-05-31 11:14:54","","");
INSERT INTO user_log VALUES("111","Login","1","Login to site","2012-05-31 11:15:45","","");
INSERT INTO user_log VALUES("112","Login","1","Login to site","2012-05-31 11:15:46","","");
INSERT INTO user_log VALUES("113","Login","1","Login to site","2012-05-31 11:47:41","","");
INSERT INTO user_log VALUES("114","Login","1","Login to site","2012-05-31 11:48:00","","");
INSERT INTO user_log VALUES("115","Login","6","Login to site","2012-05-31 12:09:25","","");
INSERT INTO user_log VALUES("116","Login","1","Login to site","2012-06-01 01:47:37","","");
INSERT INTO user_log VALUES("117","Login","1","Login to site","2012-06-01 06:52:05","","");
INSERT INTO user_log VALUES("118","Create","1","Create Receipt","2012-06-01 06:58:18","receipts","1");
INSERT INTO user_log VALUES("119","Update","1","Update a company","2012-06-01 07:01:44","company","1");
INSERT INTO user_log VALUES("120","Login","1","Login to site","2012-06-01 08:34:58","","");
INSERT INTO user_log VALUES("121","Logout","1","Logout from site","2012-06-01 08:39:50","","");
INSERT INTO user_log VALUES("122","Login","1","Login to site","2012-06-02 02:50:47","","");
INSERT INTO user_log VALUES("123","Login","1","Login to site","2012-06-02 03:08:19","","");
INSERT INTO user_log VALUES("124","Login","1","Login to site","2012-06-02 03:25:49","","");
INSERT INTO user_log VALUES("125","Login","1","Login to site","2012-06-02 04:56:16","","");
INSERT INTO user_log VALUES("126","Login","1","Login to site","2012-06-02 04:57:47","","");
INSERT INTO user_log VALUES("127","Login","1","Login to site","2012-06-02 07:16:08","","");
INSERT INTO user_log VALUES("128","Logout","1","Logout from site","2012-06-02 07:18:55","","");
INSERT INTO user_log VALUES("129","Login","1","Login to site","2012-06-02 09:16:26","","");
INSERT INTO user_log VALUES("130","Login","1","Login to site","2012-06-02 10:07:32","","");
INSERT INTO user_log VALUES("131","Logout","1","Logout from site","2012-06-02 10:09:54","","");
INSERT INTO user_log VALUES("132","Login","6","Login to site","2012-06-02 10:10:07","","");
INSERT INTO user_log VALUES("133","Update","6","Update a user","2012-06-02 10:14:04","user_info","6");
INSERT INTO user_log VALUES("134","Logout","6","Logout from site","2012-06-02 10:14:22","","");
INSERT INTO user_log VALUES("135","Login","6","Login to site","2012-06-02 10:14:31","","");
INSERT INTO user_log VALUES("136","Login","1","Login to site","2012-06-02 11:03:51","","");
INSERT INTO user_log VALUES("137","Logout","1","Logout from site","2012-06-02 11:06:11","","");
INSERT INTO user_log VALUES("138","Login","6","Login to site","2012-06-02 11:07:01","","");
INSERT INTO user_log VALUES("139","Update","6","Update a user","2012-06-02 11:14:28","user_info","6");
INSERT INTO user_log VALUES("140","Login","1","Login to site","2012-06-03 01:33:50","","");
INSERT INTO user_log VALUES("141","Create","1","Create Receipt","2012-06-03 01:43:20","receipts","2");
INSERT INTO user_log VALUES("142","Create","1","Create Receipt","2012-06-03 01:45:32","receipts","3");
INSERT INTO user_log VALUES("143","Update","1","Update user group and privilige","2012-06-03 01:56:13","user_group","2");
INSERT INTO user_log VALUES("144","Logout","1","Logout from site","2012-06-03 01:57:05","","");
INSERT INTO user_log VALUES("145","Login","10","Login to site","2012-06-03 01:57:22","","");
INSERT INTO user_log VALUES("146","Login","10","Login to site","2012-06-03 02:24:40","","");
INSERT INTO user_log VALUES("147","Logout","10","Logout from site","2012-06-03 02:35:34","","");
INSERT INTO user_log VALUES("148","Login","10","Login to site","2012-06-03 02:44:49","","");
INSERT INTO user_log VALUES("149","Login","1","Login to site","2012-06-03 04:47:46","","");
INSERT INTO user_log VALUES("150","Login","1","Login to site","2012-06-03 05:58:29","","");
INSERT INTO user_log VALUES("151","Create","1","Create Receipt","2012-06-03 06:00:03","receipts","4");
INSERT INTO user_log VALUES("152","Create","1","Create Receipt","2012-06-03 06:01:47","receipts","5");
INSERT INTO user_log VALUES("153","Login","1","Login to site","2012-06-03 11:32:10","","");
INSERT INTO user_log VALUES("154","Login","1","Login to site","2012-06-03 11:43:41","","");
INSERT INTO user_log VALUES("155","Login","1","Login to site","2012-06-03 12:20:37","","");
INSERT INTO user_log VALUES("156","Login","1","Login to site","2012-06-03 13:17:12","","");
INSERT INTO user_log VALUES("157","Login","1","Login to site","2012-06-03 23:12:05","","");
INSERT INTO user_log VALUES("158","Create","1","Create Receipt","2012-06-03 23:16:20","receipts","6");
INSERT INTO user_log VALUES("159","Login","1","Login to site","2012-06-03 23:31:51","","");
INSERT INTO user_log VALUES("160","Logout","1","Logout from site","2012-06-03 23:32:20","","");
INSERT INTO user_log VALUES("161","Login","10","Login to site","2012-06-03 23:32:41","","");
INSERT INTO user_log VALUES("162","Login","1","Login to site","2012-06-04 00:45:29","","");
INSERT INTO user_log VALUES("163","Login","1","Login to site","2012-06-04 00:46:26","","");
INSERT INTO user_log VALUES("164","Create","1","Create Receipt","2012-06-04 00:52:45","receipts","7");
INSERT INTO user_log VALUES("165","Login","1","Login to site","2012-06-04 01:18:33","","");
INSERT INTO user_log VALUES("166","Create","1","Create a cash deposit","2012-06-04 01:22:16","cash_deposit","1");
INSERT INTO user_log VALUES("167","Login","1","Login to site","2012-06-04 01:28:18","","");
INSERT INTO user_log VALUES("168","Login","1","Login to site","2012-06-04 01:52:56","","");
INSERT INTO user_log VALUES("169","Create","1","Create Receipt","2012-06-04 01:54:34","receipts","8");
INSERT INTO user_log VALUES("170","Create","1","Create a payment voucher","2012-06-04 02:00:41","payment_voucher","1");
INSERT INTO user_log VALUES("171","Approved","1","Approved a payment voucher","2012-06-04 02:00:49","payment_voucher","1");
INSERT INTO user_log VALUES("172","Create","1","Create a payment voucher","2012-06-04 02:01:20","payment_voucher","2");
INSERT INTO user_log VALUES("173","Approved","1","Approved a payment voucher","2012-06-04 02:01:25","payment_voucher","2");
INSERT INTO user_log VALUES("174","Logout","1","Logout from site","2012-06-04 02:03:04","","");
INSERT INTO user_log VALUES("175","Login","10","Login to site","2012-06-04 02:03:14","","");
INSERT INTO user_log VALUES("176","Logout","10","Logout from site","2012-06-04 02:03:42","","");
INSERT INTO user_log VALUES("177","Login","1","Login to site","2012-06-04 02:03:50","","");
INSERT INTO user_log VALUES("178","Login","1","Login to site","2012-06-04 02:58:01","","");
INSERT INTO user_log VALUES("179","Login","1","Login to site","2012-06-04 03:02:39","","");
INSERT INTO user_log VALUES("180","Logout","1","Logout from site","2012-06-04 03:05:17","","");
INSERT INTO user_log VALUES("181","Login","1","Login to site","2012-06-04 03:07:17","","");
INSERT INTO user_log VALUES("182","Login","1","Login to site","2012-06-04 03:16:51","","");
INSERT INTO user_log VALUES("183","Create","1","Create Receipt","2012-06-04 03:18:42","receipts","9");
INSERT INTO user_log VALUES("184","Create","1","Create Receipt","2012-06-04 03:20:15","receipts","10");
INSERT INTO user_log VALUES("185","Create","1","Create Receipt","2012-06-04 03:22:50","receipts","11");
INSERT INTO user_log VALUES("186","Update","1","Update a receipt","2012-06-04 03:23:43","receipts","11");
INSERT INTO user_log VALUES("187","Update","1","Update a receipt","2012-06-04 03:26:04","receipts","10");
INSERT INTO user_log VALUES("188","Login","1","Login to site","2012-06-04 04:11:39","","");
INSERT INTO user_log VALUES("189","Login","1","Login to site","2012-06-04 05:02:37","","");
INSERT INTO user_log VALUES("190","Login","1","Login to site","2012-06-04 08:14:07","","");
INSERT INTO user_log VALUES("191","Login","1","Login to site","2012-06-04 08:37:20","","");
INSERT INTO user_log VALUES("192","Create","1","Create Receipt","2012-06-04 08:39:21","receipts","12");
INSERT INTO user_log VALUES("193","Login","1","Login to site","2012-06-04 11:49:12","","");
INSERT INTO user_log VALUES("194","Update","1","Update a user","2012-06-04 11:50:01","user_info","11");
INSERT INTO user_log VALUES("195","Login","11","Login to site","2012-06-04 11:55:42","","");
INSERT INTO user_log VALUES("196","Update","1","Update a user","2012-06-04 12:14:06","user_info","11");
INSERT INTO user_log VALUES("197","Login","1","Login to site","2012-06-05 10:36:13","","");
INSERT INTO user_log VALUES("198","Login","1","Login to site","2012-06-05 10:52:16","","");
INSERT INTO user_log VALUES("199","Create","1","Create Receipt","2012-06-05 11:04:49","receipts","13");
INSERT INTO user_log VALUES("200","Update","1","Update a agent name isSM ZARIQ TRAVEL","2012-06-05 11:12:41","agents","1");
INSERT INTO user_log VALUES("201","Update","1","Update a agent name isVALENTINE TRAVEL","2012-06-05 11:13:06","agents","2");
INSERT INTO user_log VALUES("202","Update","1","Update a agent name isLATITUTE TREE","2012-06-05 11:13:55","agents","3");
INSERT INTO user_log VALUES("203","Update","1","Update a agent name isTERAS ERA JAYA","2012-06-05 11:14:57","agents","4");
INSERT INTO user_log VALUES("204","Login","1","Login to site","2012-06-05 11:43:44","","");
INSERT INTO user_log VALUES("205","Login","1","Login to site","2012-06-05 11:55:49","","");
INSERT INTO user_log VALUES("206","Update","1","Update a user","2012-06-05 12:00:36","user_info","11");
INSERT INTO user_log VALUES("207","Update","1","Update a user","2012-06-05 12:00:55","user_info","11");
INSERT INTO user_log VALUES("208","Login","1","Login to site","2012-06-05 12:28:38","","");
INSERT INTO user_log VALUES("209","Login","1","Login to site","2012-06-05 12:55:33","","");
INSERT INTO user_log VALUES("210","Login","1","Login to site","2012-06-05 13:11:04","","");
INSERT INTO user_log VALUES("211","Login","1","Login to site","2012-06-05 14:07:38","","");
INSERT INTO user_log VALUES("212","Login","1","Login to site","2012-06-05 14:07:42","","");
INSERT INTO user_log VALUES("213","Login","1","Login to site","2012-06-05 14:22:30","","");
INSERT INTO user_log VALUES("214","Update","1","Update a user","2012-06-05 14:23:10","user_info","11");
INSERT INTO user_log VALUES("215","Logout","1","Logout from site","2012-06-05 14:26:23","","");
INSERT INTO user_log VALUES("216","Login","11","Login to site","2012-06-05 14:26:37","","");
INSERT INTO user_log VALUES("217","Login","11","Login to site","2012-06-05 14:30:22","","");
INSERT INTO user_log VALUES("218","Login","11","Login to site","2012-06-05 14:46:07","","");
INSERT INTO user_log VALUES("219","Login","11","Login to site","2012-06-05 15:13:39","","");
INSERT INTO user_log VALUES("220","Login","1","Login to site","2012-06-05 15:17:20","","");
INSERT INTO user_log VALUES("221","Login","1","Login to site","2012-06-05 15:21:22","","");
INSERT INTO user_log VALUES("222","Login","1","Login to site","2012-06-05 15:28:42","","");
INSERT INTO user_log VALUES("223","Login","11","Login to site","2012-06-05 15:30:19","","");
INSERT INTO user_log VALUES("224","Login","11","Login to site","2012-06-05 16:04:48","","");
INSERT INTO user_log VALUES("225","Login","1","Login to site","2012-06-05 16:10:12","","");
INSERT INTO user_log VALUES("226","Login","1","Login to site","2012-06-05 23:00:45","","");
INSERT INTO user_log VALUES("227","Create","1","Create user group and privilige","2012-06-05 23:05:24","user_group","4");
INSERT INTO user_log VALUES("228","Create","1","Create a user","2012-06-05 23:06:08","user_info","12");
INSERT INTO user_log VALUES("229","Logout","1","Logout from site","2012-06-05 23:06:36","","");
INSERT INTO user_log VALUES("230","Login","12","Login to site","2012-06-05 23:06:50","","");
INSERT INTO user_log VALUES("231","Logout","12","Logout from site","2012-06-05 23:08:53","","");
INSERT INTO user_log VALUES("232","Login","11","Login to site","2012-06-05 23:09:05","","");
INSERT INTO user_log VALUES("233","Login","1","Login to site","2012-06-06 01:20:16","","");
INSERT INTO user_log VALUES("234","Logout","1","Logout from site","2012-06-06 01:26:08","","");
INSERT INTO user_log VALUES("235","Login","6","Login to site","2012-06-06 01:26:16","","");
INSERT INTO user_log VALUES("236","Update","6","Update user group and privilige","2012-06-06 01:27:11","user_group","2");
INSERT INTO user_log VALUES("237","Logout","6","Logout from site","2012-06-06 01:27:54","","");
INSERT INTO user_log VALUES("238","Login","1","Login to site","2012-06-06 01:28:02","","");
INSERT INTO user_log VALUES("239","Login","1","Login to site","2012-06-06 01:51:12","","");
INSERT INTO user_log VALUES("240","Login","1","Login to site","2012-06-06 10:46:28","","");
INSERT INTO user_log VALUES("241","Login","1","Login to site","2012-06-06 11:46:30","","");
INSERT INTO user_log VALUES("242","Login","1","Login to site","2012-06-06 14:30:11","","");
INSERT INTO user_log VALUES("243","Logout","1","Logout from site","2012-06-06 14:34:21","","");
INSERT INTO user_log VALUES("244","Login","1","Login to site","2012-06-06 14:34:38","","");
INSERT INTO user_log VALUES("245","Logout","1","Logout from site","2012-06-06 14:48:27","","");
INSERT INTO user_log VALUES("246","Login","1","Login to site","2012-06-06 23:21:07","","");
INSERT INTO user_log VALUES("247","Login","1","Login to site","2012-06-07 00:35:46","","");
INSERT INTO user_log VALUES("248","Logout","1","Logout from site","2012-06-07 00:39:23","","");
INSERT INTO user_log VALUES("249","Login","1","Login to site","2012-06-08 13:07:28","","");
INSERT INTO user_log VALUES("250","Logout","1","Logout from site","2012-06-08 13:09:58","","");
INSERT INTO user_log VALUES("251","Login","10","Login to site","2012-06-08 13:10:10","","");
INSERT INTO user_log VALUES("252","Login","1","Login to site","2012-06-08 13:24:29","","");
INSERT INTO user_log VALUES("253","Logout","1","Logout from site","2012-06-08 13:48:16","","");
INSERT INTO user_log VALUES("254","Login","10","Login to site","2012-06-08 13:48:31","","");
INSERT INTO user_log VALUES("255","Logout","10","Logout from site","2012-06-08 13:57:18","","");
INSERT INTO user_log VALUES("256","Login","1","Login to site","2012-06-08 13:57:24","","");
INSERT INTO user_log VALUES("257","Logout","1","Logout from site","2012-06-08 14:00:13","","");
INSERT INTO user_log VALUES("258","Login","10","Login to site","2012-06-08 14:00:25","","");
INSERT INTO user_log VALUES("259","Logout","10","Logout from site","2012-06-08 14:06:54","","");
INSERT INTO user_log VALUES("260","Login","1","Login to site","2012-06-08 20:32:22","","");
INSERT INTO user_log VALUES("261","Login","1","Login to site","2012-06-08 21:03:54","","");
INSERT INTO user_log VALUES("262","Logout","1","Logout from site","2012-06-08 21:04:41","","");
INSERT INTO user_log VALUES("263","Login","1","Login to site","2012-06-08 21:04:46","","");
INSERT INTO user_log VALUES("264","Update","1","Update user group and privilige","2012-06-08 21:05:44","user_group","2");
INSERT INTO user_log VALUES("265","Logout","1","Logout from site","2012-06-08 21:05:50","","");
INSERT INTO user_log VALUES("266","Login","10","Login to site","2012-06-08 21:06:04","","");
INSERT INTO user_log VALUES("267","Logout","10","Logout from site","2012-06-08 21:07:23","","");
INSERT INTO user_log VALUES("268","Login","1","Login to site","2012-06-08 21:59:36","","");
INSERT INTO user_log VALUES("269","Login","1","Login to site","2012-06-08 22:52:25","","");
INSERT INTO user_log VALUES("270","Login","1","Login to site","2012-06-08 23:57:53","","");
INSERT INTO user_log VALUES("271","Login","1","Login to site","2012-06-09 08:48:40","","");
INSERT INTO user_log VALUES("272","Login","1","Login to site","2012-06-09 08:48:41","","");
INSERT INTO user_log VALUES("273","Login","1","Login to site","2012-06-09 11:12:53","","");
INSERT INTO user_log VALUES("274","Delete","1","Delete user group and privilige","2012-06-09 11:13:23","user_group","4");
INSERT INTO user_log VALUES("275","Delete","1","Delete or Inactive a user","2012-06-09 11:13:39","user_info","12");
INSERT INTO user_log VALUES("276","Delete","1","Delete or Inactive a user","2012-06-09 11:13:51","user_info","12");
INSERT INTO user_log VALUES("277","Delete","1","Delete or Inactive a user","2012-06-09 11:14:04","user_info","12");
INSERT INTO user_log VALUES("278","Login","1","Login to site","2012-06-09 21:05:03","","");
INSERT INTO user_log VALUES("279","Login","1","Login to site","2012-06-09 21:51:22","","");
INSERT INTO user_log VALUES("280","Login","1","Login to site","2012-06-09 22:14:51","","");
INSERT INTO user_log VALUES("281","Login","1","Login to site","2012-06-09 22:45:21","","");
INSERT INTO user_log VALUES("282","Login","1","Login to site","2012-06-10 00:27:05","","");
INSERT INTO user_log VALUES("283","Login","1","Login to site","2012-06-10 03:53:20","","");
INSERT INTO user_log VALUES("284","Login","1","Login to site","2012-06-10 05:13:15","","");
INSERT INTO user_log VALUES("285","Logout","1","Logout from site","2012-06-10 05:14:16","","");
INSERT INTO user_log VALUES("286","Login","10","Login to site","2012-06-10 05:14:27","","");
INSERT INTO user_log VALUES("287","Login","1","Login to site","2012-06-10 09:53:33","","");
INSERT INTO user_log VALUES("288","Login","1","Login to site","2012-06-10 10:20:25","","");
INSERT INTO user_log VALUES("289","Login","1","Login to site","2012-06-10 10:33:46","","");
INSERT INTO user_log VALUES("290","Login","1","Login to site","2012-06-10 10:51:45","","");
INSERT INTO user_log VALUES("291","Login","1","Login to site","2012-06-10 11:06:32","","");
INSERT INTO user_log VALUES("292","Update","1","Update a agent name isSM ZARIQ TRAVEL","2012-06-10 11:06:59","agents","1");
INSERT INTO user_log VALUES("293","Login","1","Login to site","2012-06-10 11:55:33","","");
INSERT INTO user_log VALUES("294","Login","1","Login to site","2012-06-10 12:16:07","","");
INSERT INTO user_log VALUES("295","Delete","1","Delete or Inactive a user","2012-06-10 12:21:51","user_info","12");
INSERT INTO user_log VALUES("296","Login","1","Login to site","2012-06-10 12:35:26","","");
INSERT INTO user_log VALUES("297","Login","1","Login to site","2012-06-10 13:00:13","","");
INSERT INTO user_log VALUES("298","Login","1","Login to site","2012-06-10 14:22:45","","");
INSERT INTO user_log VALUES("299","Update","1","Update user group and privilige","2012-06-10 14:24:58","user_group","2");
INSERT INTO user_log VALUES("300","Logout","1","Logout from site","2012-06-10 14:25:16","","");
INSERT INTO user_log VALUES("301","Login","1","Login to site","2012-06-11 01:30:52","","");
INSERT INTO user_log VALUES("302","Logout","1","Logout from site","2012-06-11 01:42:01","","");
INSERT INTO user_log VALUES("303","Login","10","Login to site","2012-06-11 01:42:12","","");
INSERT INTO user_log VALUES("304","Update","10","Update user group and privilige","2012-06-11 01:43:42","user_group","3");
INSERT INTO user_log VALUES("305","Logout","10","Logout from site","2012-06-11 01:44:01","","");
INSERT INTO user_log VALUES("306","Login","1","Login to site","2012-06-11 01:44:08","","");
INSERT INTO user_log VALUES("307","Update","1","Update user group and privilige","2012-06-11 01:45:19","user_group","2");
INSERT INTO user_log VALUES("308","Logout","1","Logout from site","2012-06-11 01:45:23","","");
INSERT INTO user_log VALUES("309","Login","10","Login to site","2012-06-11 01:45:32","","");
INSERT INTO user_log VALUES("310","Logout","10","Logout from site","2012-06-11 01:56:19","","");
INSERT INTO user_log VALUES("311","Login","10","Login to site","2012-06-11 01:56:26","","");
INSERT INTO user_log VALUES("312","Login","10","Login to site","2012-06-11 02:14:28","","");
INSERT INTO user_log VALUES("313","Login","10","Login to site","2012-06-11 03:43:54","","");
INSERT INTO user_log VALUES("314","Login","10","Login to site","2012-06-11 05:13:57","","");
INSERT INTO user_log VALUES("315","Login","10","Login to site","2012-06-11 23:58:27","","");
INSERT INTO user_log VALUES("316","Login","10","Login to site","2012-06-11 23:58:34","","");
INSERT INTO user_log VALUES("317","Logout","10","Logout from site","2012-06-11 23:58:52","","");
INSERT INTO user_log VALUES("318","Login","12","Login to site","2012-06-11 23:59:08","","");
INSERT INTO user_log VALUES("319","Login","10","Login to site","2012-06-12 09:08:59","","");
INSERT INTO user_log VALUES("320","Login","10","Login to site","2012-06-12 09:52:59","","");
INSERT INTO user_log VALUES("321","Login","1","Login to site","2012-06-12 12:42:26","","");
INSERT INTO user_log VALUES("322","Logout","1","Logout from site","2012-06-12 12:45:47","","");
INSERT INTO user_log VALUES("323","Login","1","Login to site","2012-06-12 12:46:04","","");
INSERT INTO user_log VALUES("324","Login","1","Login to site","2012-06-12 12:51:55","","");
INSERT INTO user_log VALUES("325","Login","1","Login to site","2012-06-12 12:52:24","","");
INSERT INTO user_log VALUES("326","Login","1","Login to site","2012-06-12 13:06:02","","");
INSERT INTO user_log VALUES("327","Login","1","Login to site","2012-06-12 13:19:39","","");
INSERT INTO user_log VALUES("328","Login","1","Login to site","2012-06-12 13:34:18","","");
INSERT INTO user_log VALUES("329","Logout","1","Logout from site","2012-06-12 13:36:55","","");
INSERT INTO user_log VALUES("330","Logout","1","Logout from site","2012-06-12 13:37:04","","");
INSERT INTO user_log VALUES("331","Login","10","Login to site","2012-06-12 13:37:33","","");
INSERT INTO user_log VALUES("332","Login","10","Login to site","2012-06-12 13:37:34","","");
INSERT INTO user_log VALUES("333","Login","10","Login to site","2012-06-12 22:56:11","","");
INSERT INTO user_log VALUES("334","Create","10","Create a agent name is MABA RESOURCES","2012-06-12 22:59:06","agents","10");
INSERT INTO user_log VALUES("335","Create","10","Create a agent name is UZZAL","2012-06-12 22:59:29","agents","11");
INSERT INTO user_log VALUES("336","Create","10","Create a agent name is RASEL","2012-06-12 22:59:58","agents","12");
INSERT INTO user_log VALUES("337","Create","10","Create a agent name is ANWAR","2012-06-12 23:01:03","agents","13");
INSERT INTO user_log VALUES("338","Create","10","Create a agent name is MANIK","2012-06-12 23:01:27","agents","14");
INSERT INTO user_log VALUES("339","Create","10","Create a agent name is HEMAYET","2012-06-12 23:01:50","agents","15");
INSERT INTO user_log VALUES("340","Create","10","Create a agent name is CHAN MIAH","2012-06-12 23:02:12","agents","16");
INSERT INTO user_log VALUES("341","Create","10","Create a agent name is MOHIUDDIN ","2012-06-12 23:02:40","agents","17");
INSERT INTO user_log VALUES("342","Create","10","Create a agent name is SATABDI TRAVEL","2012-06-12 23:03:11","agents","18");
INSERT INTO user_log VALUES("343","Create","10","Create a agent name is SAIFUL IME","2012-06-12 23:03:30","agents","19");
INSERT INTO user_log VALUES("344","Delete","10","Delete a agent name is Santu Mia","2012-06-12 23:03:56","agents","5");
INSERT INTO user_log VALUES("345","Delete","10","Delete a agent name is Salam Mia","2012-06-12 23:04:03","agents","6");
INSERT INTO user_log VALUES("346","Delete","10","Delete a agent name is Hossain","2012-06-12 23:04:11","agents","9");
INSERT INTO user_log VALUES("347","Create","10","Create Receipt","2012-06-12 23:10:55","receipts","14");
INSERT INTO user_log VALUES("348","Create","10","Create Receipt","2012-06-12 23:14:56","receipts","15");
INSERT INTO user_log VALUES("349","Create","10","Create Receipt","2012-06-12 23:16:12","receipts","16");
INSERT INTO user_log VALUES("350","Create","10","Create a due collection","2012-06-12 23:18:56","due_collection","1");
INSERT INTO user_log VALUES("351","Create","10","Create a payment voucher","2012-06-12 23:19:35","payment_voucher","3");
INSERT INTO user_log VALUES("352","Approved","10","Approved a payment voucher","2012-06-12 23:19:39","payment_voucher","3");
INSERT INTO user_log VALUES("353","Login","10","Login to site","2012-06-12 23:31:00","","");
INSERT INTO user_log VALUES("354","Logout","10","Logout from site","2012-06-12 23:42:58","","");
INSERT INTO user_log VALUES("355","Login","1","Login to site","2012-06-12 23:43:06","","");
INSERT INTO user_log VALUES("356","Login","1","Login to site","2012-06-12 23:55:43","","");
INSERT INTO user_log VALUES("357","Login","1","Login to site","2012-06-13 00:05:56","","");
INSERT INTO user_log VALUES("358","Create","1","Create a invoice","2012-06-13 00:13:02","invoice","1");
INSERT INTO user_log VALUES("359","Login","1","Login to site","2012-06-13 00:41:51","","");
INSERT INTO user_log VALUES("360","Logout","1","Logout from site","2012-06-13 00:43:11","","");
INSERT INTO user_log VALUES("361","Login","10","Login to site","2012-06-13 00:43:21","","");
INSERT INTO user_log VALUES("362","Create","10","Create a user","2012-06-13 00:44:30","user_info","13");
INSERT INTO user_log VALUES("363","Delete","10","Delete or Inactive a user","2012-06-13 00:44:42","user_info","13");
INSERT INTO user_log VALUES("364","Update","10","Update a user","2012-06-13 00:46:00","user_info","6");
INSERT INTO user_log VALUES("365","Login","10","Login to site","2012-06-13 01:27:30","","");
INSERT INTO user_log VALUES("366","Login","10","Login to site","2012-06-13 02:24:03","","");
INSERT INTO user_log VALUES("367","Login","10","Login to site","2012-06-13 05:14:42","","");
INSERT INTO user_log VALUES("368","Login","10","Login to site","2012-06-13 05:26:54","","");
INSERT INTO user_log VALUES("369","Logout","10","Logout from site","2012-06-13 05:28:14","","");
INSERT INTO user_log VALUES("370","Login","1","Login to site","2012-06-13 05:28:21","","");
INSERT INTO user_log VALUES("371","Delete","1","Delete or Inactive a user","2012-06-13 05:29:04","user_info","12");
INSERT INTO user_log VALUES("372","Update","1","Update a user","2012-06-13 05:29:24","user_info","13");
INSERT INTO user_log VALUES("373","Logout","1","Logout from site","2012-06-13 05:29:28","","");
INSERT INTO user_log VALUES("374","Login","1","Login to site","2012-06-13 05:29:56","","");
INSERT INTO user_log VALUES("375","Create","1","Create a user","2012-06-13 05:30:26","user_info","14");
INSERT INTO user_log VALUES("376","Logout","1","Logout from site","2012-06-13 05:30:32","","");
INSERT INTO user_log VALUES("377","Login","14","Login to site","2012-06-13 05:30:42","","");
INSERT INTO user_log VALUES("378","Login","1","Login to site","2012-06-13 11:30:15","","");
INSERT INTO user_log VALUES("379","Login","1","Login to site","2012-06-13 12:08:00","","");
INSERT INTO user_log VALUES("380","Login","1","Login to site","2012-06-13 13:51:19","","");
INSERT INTO user_log VALUES("381","Login","1","Login to site","2012-06-14 02:51:17","","");
INSERT INTO user_log VALUES("382","Login","1","Login to site","2012-06-14 03:14:56","","");
INSERT INTO user_log VALUES("383","Login","1","Login to site","2012-06-14 08:39:01","","");
INSERT INTO user_log VALUES("384","Login","1","Login to site","2012-06-14 09:09:04","","");
INSERT INTO user_log VALUES("385","Login","1","Login to site","2012-06-14 10:11:18","","");
INSERT INTO user_log VALUES("386","Login","1","Login to site","2012-06-14 10:49:22","","");
INSERT INTO user_log VALUES("387","Login","1","Login to site","2012-06-14 10:53:21","","");
INSERT INTO user_log VALUES("388","Login","1","Login to site","2012-06-14 11:28:44","","");
INSERT INTO user_log VALUES("389","Delete","1","Delete or Inactive a user","2012-06-14 11:30:28","user_info","14");
INSERT INTO user_log VALUES("390","Logout","1","Logout from site","2012-06-14 11:31:04","","");
INSERT INTO user_log VALUES("391","Login","10","Login to site","2012-06-14 11:31:12","","");
INSERT INTO user_log VALUES("392","Create","10","Create a user","2012-06-14 11:34:22","user_info","15");
INSERT INTO user_log VALUES("393","Login","1","Login to site","2012-06-14 12:02:45","","");
INSERT INTO user_log VALUES("394","Login","1","Login to site","2012-06-14 12:32:51","","");
INSERT INTO user_log VALUES("395","Login","1","Login to site","2012-06-14 12:45:52","","");
INSERT INTO user_log VALUES("396","Login","1","Login to site","2012-06-14 13:19:43","","");
INSERT INTO user_log VALUES("397","Login","1","Login to site","2012-06-14 13:46:36","","");
INSERT INTO user_log VALUES("398","Login","1","Login to site","2012-06-14 13:58:36","","");
INSERT INTO user_log VALUES("399","Login","10","Login to site","2012-06-14 21:15:10","","");
INSERT INTO user_log VALUES("400","Login","10","Login to site","2012-06-15 02:46:24","","");
INSERT INTO user_log VALUES("401","Login","10","Login to site","2012-06-15 08:09:53","","");
INSERT INTO user_log VALUES("402","Login","10","Login to site","2012-06-15 09:46:50","","");
INSERT INTO user_log VALUES("403","Login","10","Login to site","2012-06-15 13:18:25","","");
INSERT INTO user_log VALUES("404","Update","10","Update a user","2012-06-15 13:31:18","user_info","9");
INSERT INTO user_log VALUES("405","Logout","10","Logout from site","2012-06-15 13:31:23","","");
INSERT INTO user_log VALUES("406","Login","9","Login to site","2012-06-15 13:31:35","","");
INSERT INTO user_log VALUES("407","Login","1","Login to site","2012-06-16 01:39:54","","");



DROP TABLE IF EXISTS users;

CREATE TABLE `users` (
  `id` int(11) NOT NULL auto_increment,
  `user_id` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `full_name` varchar(50) NOT NULL,
  `dob` date NOT NULL,
  `email` varchar(50) NOT NULL,
  `status` varchar(10) NOT NULL default 'Inactive',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

INSERT INTO users VALUES("1","sysadmin","993ca5a727714ee3eef2aa574430aa20","Test","1983-10-03","","Active");
INSERT INTO users VALUES("5","masud","993ca5a727714ee3eef2aa574430aa20","Masud Rana","1980-04-30","test@gmail.com","Active");
INSERT INTO users VALUES("6","abc","993ca5a727714ee3eef2aa574430aa20","ABC","2012-04-22","asdfafafa@gagaa.com","Active");
INSERT INTO users VALUES("8","admin","993ca5a727714ee3eef2aa574430aa20","Parvez","2012-05-01","","Active");



DROP TABLE IF EXISTS xo_multi;

CREATE TABLE `xo_multi` (
  `id` int(11) NOT NULL auto_increment,
  `xo_number` varchar(30) NOT NULL,
  `routing` varchar(100) NOT NULL,
  `flight_no` varchar(20) NOT NULL,
  `date_of` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `time` varchar(20) NOT NULL,
  `status` varchar(50) NOT NULL,
  `remarks` varchar(100) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




