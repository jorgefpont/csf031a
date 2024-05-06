
delimiter ;
USE megastore;
--
-- Data for table locations
--


INSERT INTO locations(loc_id, loc_street_address, loc_postal_code, loc_city, loc_state_province, loc_country_id, loc_type )
VALUES 
  (1400, '2014 Jabberwocky Rd', '26192', 'Southlake', 'Texas', 'US', 'warehouse'  )
, (1500, '2011 Interiors Blvd', '99236', 'South San Francisco', 'California', 'US' , 'warehouse' )
, (1560, '50 Pacific Ave', '94112', 'San Francisco', 'California', 'US' , 'office')
, (1800, '147 Spadina Ave', 'M5V 2L7', 'Toronto', 'Ontario', 'CA', 'office' )
, (2700,  'Schwanthalerstr. 7031','80925', 'Munich', 'Bavaria', 'DE', NULL )
, (2100,  'Mariano Escobedo 9991', '11932','Mexico City', 'Distrito Federal', 'MX', 'office')
;

--
-- Data for table departments
--
INSERT INTO departments (dept_id, department_name, manager_id, loc_id)
Values(10,'Administration',200,2700);
INSERT INTO departments (dept_id, department_name, manager_id, loc_id)
Values(20,'Marketing',201,1800);
INSERT INTO departments (dept_id, department_name, manager_id, loc_id)
Values(50,'Shipping',124,1500);
INSERT INTO departments (dept_id, department_name, manager_id, loc_id)
Values(60,'IT',103,1400);
INSERT INTO departments (dept_id, department_name, manager_id, loc_id)
Values(80,'Sales - Europe',149,2100);
INSERT INTO departments (dept_id, department_name, manager_id, loc_id)
Values(85,'Sales - Americas',149,2100);
INSERT INTO departments (dept_id, department_name, manager_id, loc_id)
Values(90,'Executive',100,2700);
INSERT INTO departments (dept_id, department_name, manager_id, loc_id)
Values(110,'Accounting',205,2700);
INSERT INTO departments (dept_id, department_name, manager_id, loc_id)
Values(190,'Contracting',null,2700);

--
-- Data for table jobs 
--
INSERT INTO jobs (job_id, job_title, min_salary, max_salary)
Values('AD_PRES','President',20000,40000);
INSERT INTO jobs (job_id, job_title, min_salary, max_salary)
Values('AD_VP','Administration Vice President',15000,30000);
INSERT INTO jobs (job_id, job_title, min_salary, max_salary)
Values('AD_ASST','Administration Assistant',3000,6000);
INSERT INTO jobs (job_id, job_title, min_salary, max_salary)
Values('AC_MGR','Accounting Manager',8200,16000);
INSERT INTO jobs (job_id, job_title, min_salary, max_salary)
Values('AC_ACCOUNT','Public Accountant',4200,9000);
INSERT INTO jobs (job_id, job_title, min_salary, max_salary)
Values('SA_MAN','Sales Manager',10000,20000);
INSERT INTO jobs (job_id, job_title, min_salary, max_salary)
Values('SR_SA_REP','Senior Sales Representative',8000,16000);
INSERT INTO jobs (job_id, job_title, min_salary, max_salary)
Values('SA_REP','Sales Representative',6000,12000);
INSERT INTO jobs (job_id, job_title, min_salary, max_salary)
Values('ST_MAN','Stock Manager',5500,8500);
INSERT INTO jobs (job_id, job_title, min_salary, max_salary)
Values('SR_ST_CLRK','Senior Stock Clerk',3700,6700);
INSERT INTO jobs (job_id, job_title, min_salary, max_salary)
Values('ST_CLERK','Stock Clerk',2000,5000);
INSERT INTO jobs (job_id, job_title, min_salary, max_salary)
Values('IT_PROG','Programmer',4000,10000);
INSERT INTO jobs (job_id, job_title, min_salary, max_salary)
Values('MK_MAN','Marketing Manager',9000,15000);
INSERT INTO jobs (job_id, job_title, min_salary, max_salary)
Values('SR_MK_REP','Senior Marketing Representative',6500,12000);
INSERT INTO jobs (job_id, job_title, min_salary, max_salary)
Values('MK_REP','Marketing Representative',4000,9000);

--
-- Data for table employees
--
INSERT INTO employees(emp_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,dept_id)
VALUES(100,'Steven','King','SKING','515.123.4567','2002-06-17','AD_PRES',24000,null,null,90);
INSERT INTO employees(emp_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,dept_id)
VALUES(101,'Neena','Kochhar','NKOCHHAR','515.123.4568','2004-09-21','AD_VP',17000,null,100,90 );
INSERT INTO employees(emp_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,dept_id)
VALUES(102,'Lex','De Haan','LDEHAAN','515.123.4569','2008-01-13','AD_VP',17000,null,100,90 );
INSERT INTO employees(emp_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,dept_id)
VALUES(200,'Jennifer','Whalen','JWHALEN','515.123.4444','2002-09-17','AD_ASST',4400,null,101,10 );
INSERT INTO employees(emp_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,dept_id)
VALUES(205,'Shelley','Higgins','SHIGGINS','515.123.8080','2009-06-07','AC_MGR',12000,null,101,110 );
INSERT INTO employees(emp_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,dept_id)
VALUES(206,'William','Gietz','WGIETZ','515.123.8181','2009-06-07','AC_ACCOUNT',8300,null,205,110 );
INSERT INTO employees(emp_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,dept_id, bonus)
VALUES(149,'Eleni','Zlotkey','EZLOTKEY','011.44.1344.429018','2015-01-29','SA_MAN',10500,.2,100,80, '1500' );
INSERT INTO employees(emp_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,dept_id, bonus)
VALUES(174,'Ellen','Abel','EABEL','011.44.1644.429267','2011-05-11','SA_REP',11000,.3,149,80,'1700' );
INSERT INTO employees(emp_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,dept_id, bonus)
VALUES(176,'Jonathon','Taylor','JTAYLOR','011.44.1644.429265','2011-03-24','SA_REP',8600,.2,149,80,'1250' );
INSERT INTO employees(emp_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,dept_id)
VALUES(178,'Kimberely','Grant','KGRANT','011.44.1644.429263','2011-05-24','SA_REP',7000,.15,149,null );
INSERT INTO employees(emp_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,dept_id)
VALUES(124,'Kevin','Mourgos','KMOURGOS','650.123.5234','2011-11-16','ST_MAN',5800,null,100,50);
INSERT INTO employees(emp_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,dept_id)
VALUES(141,'Trenna','Rajs','TRAJS','650.121.8009','2010-10-17','ST_CLERK',3500,null,124,50 );
INSERT INTO employees(emp_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,dept_id)
VALUES(142,'Curtis','Davies','CDAVIES','650.121.2994','2012-01-29','ST_CLERK',3100,null,124,50 );
INSERT INTO employees(emp_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,dept_id)
VALUES(143,'Randall','Matos','RMATOS','650.121.2874','2011-03-15','ST_CLERK',2600,null,124,50 );
INSERT INTO employees(emp_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,dept_id)
VALUES(144,'Peter','Vargas','PVARGAS','650.121.2004','2012-07-09','ST_CLERK',2500,null,124,50 );
INSERT INTO employees(emp_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,dept_id)
VALUES(103,'Alexander','Hunold','AHUNOLD','590.423.4567','2005-01-03','IT_PROG',9000,null,102,60 );
INSERT INTO employees(emp_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,dept_id)
VALUES(104,'Bruce','Ernst','BERNST','590.423.4568','2006-05-21','IT_PROG',6000,null,103,60 );
INSERT INTO employees(emp_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,dept_id)
VALUES(107,'Diana','Lorentz','DLORENTZ','590.423.5567','2011-02-07','IT_PROG',4200,null,103,60 );
INSERT INTO employees(emp_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,dept_id)
VALUES(201,'Michael','Hartstein','MHARTSTE','515.123.5555','2011-02-17','MK_MAN',13000,null,100,20 );
INSERT INTO employees(emp_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,dept_id)
VALUES(202,'Pat','Fay','PFAY','603.123.6666','2012-08-17','MK_REP',3900,null,201,20 );
INSERT INTO employees(emp_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,dept_id)
VALUES(207,'Sophia','Barbosa Souza','SBARBOSASOUZA','55.24.6280.6935','2009-03-12','SR_SA_REP',9500,.2,149,85);
INSERT INTO employees(emp_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,dept_id)
VALUES(208,'Diego','Silva Pinto','DSILVAPINTO','55.24.8806.9837','2009-10-25','SA_REP',7500,.15,149,85);
INSERT INTO employees(emp_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,dept_id)
VALUES(209,'Sarah','Alves Rocha','SALVESROCHA','55.24.9381.2160','2010-02-06','SA_REP',7300,.15,149,85);
INSERT INTO employees(emp_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,dept_id)
VALUES(210,'Lucas','Almeida Castro','ALMEIDACASTRO','55.24.6514-5378','2012-08-16','SA_REP',7300,.2,149,85);
INSERT INTO employees(emp_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,dept_id)
VALUES(212,'Nick','Hooper','NHOOPER','011.44.1886 6663','2012-09-01','SR_SA_REP',9600,.2,149,80);
INSERT INTO employees(emp_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,dept_id)
VALUES(215,'Donna','Steiner','DSTEINER','843.452.5959','2004-11-02','SR_MK_REP',8600,null,201,20);
INSERT INTO employees(emp_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,dept_id)
VALUES(216,'George','Bell','GBELL','724.647.4299','2014-04-01','SR_ST_CLRK',3500,null,124,50 );
INSERT INTO employees(emp_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,dept_id)
VALUES(217,'Lisa','TAYLOR','LTAYLOR','417.730.8202','2013-02-09','MK_REP',4000,null,201,20 );
INSERT INTO employees(emp_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,dept_id)
VALUES(219,'Michael','Stocks','MSTOCKS','662.314.6844','2015-12-16','MK_REP',3700,null,201,20 );
INSERT INTO employees(emp_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,dept_id)
VALUES(220,'Tiffany','Heiden','THEIDEN','413.251.0684','2015-07-06','ST_CLERK',2600,null,124,50 );
INSERT INTO employees(emp_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,dept_id)
VALUES(222,'Chen','Li','CLI','423.817.1481','2008-08-29','IT_PROG',8000,null,103,60 );
INSERT INTO employees(emp_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,dept_id)
VALUES(223,'Alain','Fontaine','AFONTAINE','601.424.8816','2013-11-18','IT_PROG',7800,null,103,60 );
INSERT INTO employees(emp_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,dept_id)
VALUES(224,'Matthias','Reinhard','MREINHARD','315.496.2466','2007-07-25','AC_ACCOUNT',8100,null,205,110 );
INSERT INTO employees(emp_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,dept_id)
VALUES(225,'Katia','Hernandez','KHERNANDEZ','214.350.4575','2011-06-13','AD_ASST',4300,null,101,10 );
INSERT INTO employees(emp_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,dept_id)
VALUES(226,'Guido','Ricci','GRICCI','305.269.9415','2015-05-17','AD_ASST',4100,null,101,10 );
INSERT INTO employees(emp_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,dept_id)
VALUES(227,'Mizuto','Saikawa','MSAIKAWA','541.831.2444','2012-02-01','AD_ASST',4400,null,101,10 );
INSERT INTO employees(emp_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,dept_id)
VALUES(228,'Nabil','Safwah','NSAFWAH','720.863.0485','1997-01-06','MK_REP',5000,null,201,20 );
INSERT INTO employees(emp_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,dept_id)
VALUES(231,'Jelena','Duric','JDURIC','505.514.1583','2009-05-11','AC_ACCOUNT',5400,null,205,110 );
INSERT INTO employees(emp_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,dept_id)
VALUES(232,'Jennifer','Loermans','JLOERMANS','213.447.9053','2013-04-14','AC_ACCOUNT',5200,null,205,110 );
INSERT INTO employees(emp_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,dept_id)
VALUES(235,'Alice','Newton','ANEWTON','314.248.7709','2015-12-16','MK_REP',4900,null,201,20 );

--
-- Data for table categories
--

INSERT INTO categories(catg_id,catg_desc) VALUES
  ('APL', 'APPLIANCES')
, ('BK',  'BOOKS')
, ('CEQ', 'COMPUTER EQUIPMENT')
, ('GFD', 'GOURMET FOOD')
, ('HD',  'HARDWARE')
, ('HW',  'HOUSEWARES')
, ('PET', 'PET SUPPLIES')
, ('SPG', 'SPORTING GOODS')
, ('MUS', 'MUSIC')
;
--
-- Data for table warehouses
--
INSERT INTO warehouses(warehouse_id, loc_id)  VALUES
  (  100,  1400)
, (  125,  1500)
, (  200,  1800)
, (  250,  1500)
, (  300,  1500)
, (  399,  1400);

--
-- Data for table products 
--
INSERT INTO products(prod_id, catg_id, prod_list_price, prod_name, prod_desc) 
VALUES
 (1000, 'HW',   125.00, 'Hand Mixer', 'Seven speed BnD hand mixer, black')
,(1010, 'SPG',  150.00, 'Weights',   'Set of 12 barbells 15 pounds')
,(1020, 'SPG',   12.95, 'Dartboard', 'Cork-backed dartboard with hanger')
,(1030, 'SPG',   29.95, 'Basketball',  'Basketball')
,(1070, 'HW',    25.50, 'Iron', 'Steam and dry iron SunShine, Yellow')
,(1071, 'HW',    25.50, 'Iron', 'Steam and dry iron SunShine, Blue')
,(1072, 'HW',    25.50, 'Iron', 'Steam and dry iron SunShine, Red')
,(1080, 'HW',    25.00, 'Cornpopper', 'Cornpopper 12 quart automatic shutoff')
,(1090, 'HW',   149.99, 'Gas grill', 'Gas grill')
,(1100, 'HW',    49.99, 'Blender', 'Twelve-speed Blender')
,(1140, 'PET',   14.99, 'Bird cage- simple', 'Bird cage- simple; wire frame two feeder trays')
,(1141, 'PET',   99.99, 'Bird cage- deluxe', 'Bird cage- deluxe;floor model, with fly space')
,(1142, 'PET',    2.50, 'Bird seed', 'Bird seed mix with sunflowers')
,(1143, 'PET',    2.50, 'Bird seed deluxe', 'Bird seed mix with more sunflower seeds')
,(1150, 'PET',    4.99, 'Cat exerciser', 'Cat exerciser')
,(1151, 'PET',   14.99, 'Cat pillow', 'Cat pillow, removable cloth cover')
,(1152, 'PET',   55.28, 'Cat pillow Leather', 'Cat pillow, removable leather cover')
,(1040, 'SPG',  349.95, 'Treadmill', 'Super Flyer Treadmill')
,(1050, 'SPG',  269.95, 'Stationary bike', 'Deluxe Stationary bike')
,(1060, 'SPG',  255.95, 'Mountain bike', 'Deluxe Mountain bike')
,(1160, 'HW',   149.99, 'Mixer Deluxe', 'Stand Mixer with attachments')
,(4567, 'PET',  549.99, 'Deluxe Cat Tree', 'Our highest end cat tree- you gotta see this')
,(4568, 'PET',  549.99, 'Deluxe Cat Bed', 'Satin four-poster cat bed')
,(4569, 'APL',  349.95, 'Mini Dryer', 'Sized for the apartment')
,(4575, 'HW',    49.95, 'Electric can opener', 'GE model 34PG98')
,(4576, 'PET',   29.95, 'Cosmo cat nip', 'Primo brand of catnip for your favorite cat')
,(4577, 'PET',   29.95, 'Cat leash', 'Leather cat leash with harness')
,(1110, 'HW',    49.99, 'Pancake griddle', 'Electric Pancake griddle')
,(1120, 'APL',  549.99, 'Washer', 'Full-sized Washer')
,(1125, 'APL',  500.00, 'Dryer', 'Low Energy Dryer')
,(1126, 'APL',  850.00, 'WasherDryer', 'Low Energy washer Dryer combo')
,(1130, 'APL',  149.99, 'Mini Freezer', 'Mini freezer, sized for the office')
,(5000, 'GFD',   12.50, 'Fingerling Potatoes', 'Cello bag of mixed fingerling potatoes')
,(5001, 'GFD',    5.00, 'Ginger Preserve', 'Dundee Ginger Preserve 12 oz jar')
,(5002, 'HD',    23.00, 'Ball-Peen Hammer', '16 oz Jacketed Graphite Ball-peen hammer')
,(5004, 'HD',    15.00, 'Dead Blow Hammer', '10 oz Steel Head Dead Blow hammer')
,(5005, 'HD',    45.00, 'Shingler Hammer', 'Steel Shingler hammerhammer')
,(5008, 'HD',    12.50, 'Claw Framing', '22 oz Graphite checkered face framing hammer')
,(2987,  'MUS',  15.87, 'B000005HGK', 'Stanley Turrentine - Ballads')
,(2487,  'MUS',   9.45, 'B004Y03N7E', 'Stanley Turrentine - Don''t Mess With Mr. T')
,(2947,  'MUS',  12.45, 'B000GFRE76', 'Ornette Coleman - Sound Grammer')
,(2984,  'MUS',  15.87, 'B000000Y7L', 'John Coltrane - Lush Life')
,(2337,  'MUS',  15.87, 'B000005H40', 'John Coltrane - Blue Train')
,(2933,  'MUS',  12.45, 'B0006J2FLW', 'David Newman - I Remember Brother Ray')
,(2412,  'MUS',   9.87, 'B00005UF3I', 'David Newman - Davey Blue')
,(2746,  'MUS',  14.50, 'B00000JWCM', 'Charles Mingus - Blues & Politics')
,(2747,  'MUS',  14.50, 'B000002I4Q', 'Charles Mingus - Blues & Roots')
,(2234,  'MUS',  15.88, 'B000002I7U', 'Charles Mingus - Pithecanthropus Erectus')
,(2014,  'MUS',  15.95, 'B000005INR', 'Bix Beiderbecke - Tiger Rag')
;
--
-- Data for table inventory(
--
INSERT INTO inventory(prod_id, warehouse_id, quantity_on_hand) 
VALUES 
  (  1000, 100,   80 )
, (  1010, 100,  500 )
, (  1020, 125,  100 )
, (  1020, 200,  156 )
, (  1030, 250,   25 )
, (  1030, 100,  125 )
, (  1040, 250,   35 )
, (  1050, 100,    0 )
, (  1060, 125,    2 )
, (  1070, 100,  250 )
, (  1071, 100, 1000 )
, (  1072, 250,  100 )
, (  1080, 250,  125 )
, (  1090, 250,  100 )
, (  1100, 125,  250 )
, (  1110, 125, 1000 )
, (  1120, 125,  580 )
, (  1130, 125,  250 )
, (  1140, 250,   50 )
, (  1141, 250,   25 )
, (  1150, 100,  300 )
, (  1150, 125,  250 )
, (  1150, 200,  100 )
, (  1125, 200,   10 )
, (  1050, 300,  500 )
, (  1060, 300,  500 )
, (  1040, 300,  400 )
, (  1150, 300,  800 )
, (  5002, 200,  103 )
, (  5004, 200,  150 )
, (  5005, 200,  200 )
, (  5008, 200,   75 )
, (  5002, 125,  780 )
, (  5004, 125,   59 )
, (  5005, 125, 1000 )
, (  5008, 125,   10 );

--
-- Data for table shipping_modes
--
INSERT INTO shipping_modes (shipping_mode_id, shipping_mode_desc)
VALUES 
  ('FEDEX1', 'Fed Ex Overnight' )
, ('FEDEX2', 'Fed Ex Next Day' )
, ('USPS1',  'Postal Priority' )
, ('UPSGR',  'UPS Ground' )
;

--
-- Data for table credit_ratings 
--
INSERT INTO credit_ratings  VALUES 
  (   0,  1000,  'Standard')
, ( 1001, 2000,  'Good')
, ( 2001, 5000,  'High')
, ( 5001, 10000, 'Excellent')
, (10001, 99999, 'Superior')
;

--
-- Data for table customers
--
INSERT INTO customers(cust_id, first_name, last_name, credit_limit) 
VALUES
 (401250, 'Samuel','Morse', 750)
,(401890, 'William','Northrep', 1750)
,(402100, 'William','Morise', 750) 
,(402110, 'John','Coltrane', 750)
,(402120, 'Tyner','McCoy', 750)
,(402500, 'Elton John','Jones', NULL)
,(403000, 'Sally','Williams', 6000)
,(403010, 'Elisha','Otis', 6000)
,(403050, 'Alexis','Hamilton' , 6000)
,(403100, 'James','Stevenson', 6000)
,(403500, 'JAMES','Stevenson', 6000)
,(403750, 'Mary','O''Leary', 6000)
,(403760, 'Mary','O''Leary', 6000)
,(903000, 'Arnold','McGold', 6000)
,(404000, 'Frederick','Olmsted', 3500)
,(404100, 'D. K.','Button', 3500)
,(900300, 'Arnold','McGold', 6000)
,(404150, 'Tom','Dancer', 3500)
,(404180, 'Danielle','Shay', 3500)
,(404890, 'Florence','Kelley', 1750)
,(404900, 'Al','Williams', 1750)
,(404950, 'William','Morris', 1750)
,(405000, 'David','Day', NULL)
,(409010, 'William','Morris', 1750)
,(409020, 'William','Max' , 1750)
,(915001, 'Abigail','Adams', 1750)
,(400801, 'Geo','Washington', 750)
,(409030, 'Barry','Mazur', 6000)
,(409150, 'Joan','Martin', 1750)
,(400300, 'Arnold','McGold', 6000)
,(409160, 'Jane','Martin', 1750)
,(409190, NULL, 'Prince', 1750)
,(408770, 'Clem','Clay', 7500)
;

--
-- Data for table cust_address
--
INSERT INTO cust_address (id, address_line_1, address_line_2, city, zip_code, customer_id)
VALUES('ca0101', '83 Barrhill Drive', NULL, 'San Mateo', '92441', 401250);
INSERT INTO cust_address (id, address_line_1, address_line_2, city, zip_code, customer_id)
VALUES('ca0102', '17 Gartsquare Road', 'Starford', 'Palo Alto', '92433', 401890);
INSERT INTO cust_address (id, address_line_1, address_line_2, city, zip_code, customer_id)
VALUES('ca0103', '54 Ropehill Crescent', 'Georgetown', 'Foster City', '82440', 402100);
INSERT INTO cust_address (id, address_line_1, address_line_2, city, zip_code, customer_id)
VALUES('ca0104', '22 Jackson Farm Rd', NULL, 'Redwood City', '92435', 402110);
INSERT INTO cust_address (id, address_line_1, address_line_2, city, zip_code, customer_id)
VALUES('ca0105', '63 Acacia Drive', 'Skins', 'San Mateo', '94240', 402120);
INSERT INTO cust_address (id, address_line_1, address_line_2, city, zip_code, customer_id)
VALUES('ca0106', '17 Fourth St', 'WY', 'Foster City', '82414', 402500);
INSERT INTO cust_address (id, address_line_1, address_line_2, city, zip_code, customer_id)
VALUES('ca0107', '42 Blackwater Way', 'WY', 'Mountain View', '82433', 403000);
INSERT INTO cust_address (id, address_line_1, address_line_2, city, zip_code, customer_id)
VALUES('ca0108', '1 Rascal Farm Rd', 'WY', 'San Francisco', '82414', 403010);
INSERT INTO cust_address (id, address_line_1, address_line_2, city, zip_code, customer_id)
VALUES('ca0109', '14 Rock Ln', 'WY', 'Oakland', '82441', 403050);
INSERT INTO cust_address (id, address_line_1, address_line_2, city, zip_code, customer_id)
VALUES('ca0110', '2812 Scelerisque Ave', NULL, 'Hayward', '94441', 403100);
INSERT INTO cust_address (id, address_line_1, address_line_2, city, zip_code, customer_id)
VALUES('ca0111', '6923 Ornare Av.', 'Starford', 'Vallejo', '95433', 403500);
INSERT INTO cust_address (id, address_line_1, address_line_2, city, zip_code, customer_id)
VALUES('ca0112', '3776 Egestas Street', 'Georgetown', 'Vallejo', '98440', 403750);
INSERT INTO cust_address (id, address_line_1, address_line_2, city, zip_code, customer_id)
VALUES('ca0113', '918 Sit Ave', NULL, 'Hayward', '94442', 403760);
INSERT INTO cust_address (id, address_line_1, address_line_2, city, zip_code, customer_id)
VALUES('ca0114', '8079 Sollicitudin Ave', 'Skins', 'Daly City', '82450', 903000);
INSERT INTO cust_address (id, address_line_1, address_line_2, city, zip_code, customer_id)
VALUES('ca0115', '3032 Mauris Ave', 'WY', 'San Mateo', '94404', 404000);
INSERT INTO cust_address (id, address_line_1, address_line_2, city, zip_code, customer_id)
VALUES('ca0116', '8829 Tempor Ave', 'WY', 'Santa Rosa ', '92433', 404100);
INSERT INTO cust_address (id, address_line_1, address_line_2, city, zip_code, customer_id)
VALUES('ca0117', '4589 Mollis St.', 'WY', 'San Francisco', '92414', 404100);
INSERT INTO cust_address (id, address_line_1, address_line_2, city, zip_code, customer_id)
VALUES('ca0118', '660 Luctus Ave', 'WY', 'Oakland', '82441', 900300);


INSERT INTO cust_address (id, address_line_1, address_line_2, city, zip_code, customer_id)
VALUES('ca0119', '4006 Molestie. Avenue', NULL, ' Daly City', '90441', 404150);
INSERT INTO cust_address (id, address_line_1, address_line_2, city, zip_code, customer_id)
VALUES('ca0120', '5371 Ultricies Street', 'Starford', 'San Mateo', '94402', 404180);
INSERT INTO cust_address (id, address_line_1, address_line_2, city, zip_code, customer_id)
VALUES('ca0121', '6535 Purus. Ave', 'Georgetown', 'San Mateo', '92440', 404890);
INSERT INTO cust_address (id, address_line_1, address_line_2, city, zip_code, customer_id)
VALUES('ca0122', '1246 Penatibus St.', NULL, 'Hayward', '99435', 404900);
INSERT INTO cust_address (id, address_line_1, address_line_2, city, zip_code, customer_id)
VALUES('ca0123', '6471 Eu, St.', 'Skins', 'San Mateo', '94401', 404950);
INSERT INTO cust_address (id, address_line_1, address_line_2, city, zip_code, customer_id)
VALUES('ca0124', '3611 Ac, Ave', 'Newport News', 'San Mateo', '94401', 405000);
INSERT INTO cust_address (id, address_line_1, address_line_2, city, zip_code, customer_id)
VALUES('ca0125', '7333 West Road', 'WY', 'San Mateo', '82433', 409010);
INSERT INTO cust_address (id, address_line_1, address_line_2, city, zip_code, customer_id)
VALUES('ca0126', '5044 Mi St.', 'WY', 'Daly City', '95414', 409020);
INSERT INTO cust_address (id, address_line_1, address_line_2, city, zip_code, customer_id)
VALUES('ca0127', '4890 Dignissim Street', 'WY', 'San Mateo', '94401', 915001);
INSERT INTO cust_address (id, address_line_1, address_line_2, city, zip_code, customer_id)
VALUES('ca0128', '6294 Phasellus Rd', 'WY', 'Hayward', '93441', 400801);
INSERT INTO cust_address (id, address_line_1, address_line_2, city, zip_code, customer_id)
VALUES('ca0129', 'A St.', 'WY', 'Daly City', '91441', 409030);
INSERT INTO cust_address (id, address_line_1, address_line_2, city, zip_code, customer_id)
VALUES('ca0130', '4508 Erat Street', 'WY', 'Vallejo', '95441', 409150);
INSERT INTO cust_address (id, address_line_1, address_line_2, city, zip_code, customer_id)
VALUES('ca0131', '6011 Sed Rd.', 'WY', 'Hayward', '82441', 400300);
INSERT INTO cust_address (id, address_line_1, address_line_2, city, zip_code, customer_id)
VALUES('ca0132', '4806 Vestibulum', 'WY', 'San Francisco', '92241', 409160);
INSERT INTO cust_address (id, address_line_1, address_line_2, city, zip_code, customer_id)
VALUES('ca0133', '3144 Quis Road', 'WY', 'San Franciscon', '93341', 409190);
INSERT INTO cust_address (id, address_line_1, address_line_2, city, zip_code, customer_id)
VALUES('ca0134', '7668 Aliquet Avenue', 'Billings', 'Santa Rosa ', '93441', 408770);

--
-- Data for table orders and order_details
--
INSERT INTO orders (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       VALUES ( 218,   '2013-08-08','ONLINE', 409150, NULL, 3, 174);
INSERT INTO order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       VALUES ( 218, 7, 2746,    14.50,  1);
INSERT INTO order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       VALUES ( 218, 5, 1141,    75.99,  3);
INSERT INTO order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       VALUES ( 218, 3, 1125,   500.00,  5);   
 INSERT into order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       VALUES ( 218, 1, 2014,    15.95,  5);

     
INSERT INTO orders (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       VALUES ( 223,   '2013-08-05','ONLINE', 409150, NULL, 3, 174);
INSERT INTO order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       VALUES ( 223, 1, 1130,   148.99, 1);
INSERT INTO order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       VALUES ( 223, 5, 1150,     7.25, 50);
INSERT INTO order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       VALUES ( 223, 6, 1141,    75.99,  3);
     
INSERT INTO orders (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       VALUES ( 224,   '2013-08-07','DIRECT', 409160, 'FEDEX1', 3, 176);
INSERT INTO order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       VALUES ( 224, 1, 1090,   145.99,  10);
INSERT INTO order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       VALUES ( 224, 4, 1070,    15.00,  10);

INSERT INTO orders (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       VALUES ( 225,   '2013-08-09','DIRECT', 409160, 'FEDEX1', 3, 176);
INSERT INTO order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       VALUES ( 225, 1, 2412,    9.87,  0);
INSERT INTO order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       VALUES ( 225, 2, 2947,    12.45,  5);

INSERT INTO orders (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       VALUES ( 227,   '2013-08-01', 'ONLINE', 403050, 'USPS1', 2, 178);
INSERT INTO order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       VALUES ( 227, 1, 1150,     4.25, 50);
INSERT INTO order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       VALUES ( 227, 2, 1141,    75.99,  3);
       

INSERT INTO orders (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       VALUES ( 605,  '2013-09-05', 'DIRECT', 404100, 'UPSGR',  1, 208);
INSERT INTO order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       VALUES ( 605, 1, 1080,    25.00, 12);
INSERT INTO order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       VALUES ( 605, 2, 1130,    112.95, 12);
INSERT INTO order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       VALUES ( 605, 3, 1060,   125.00,  5);
INSERT INTO order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       VALUES ( 605, 4, 1080,    25.00, 12);
 INSERT INTO order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       VALUES ( 605, 5, 1010,    125.00, 1);
INSERT INTO order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       VALUES ( 605, 6, 1020,    12.95, 1);            

INSERT INTO orders (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       VALUES ( 606,  '2013-09-07', 'DIRECT', 409160, 'FEDEX1',  1, 209);
INSERT INTO order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       VALUES ( 606, 1, 1152,    55.00, 1);

INSERT INTO orders (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       VALUES ( 607,  '2013-09-15', 'DIRECT', 409160, 'FEDEX1',  1, 209);
INSERT INTO order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       VALUES ( 607, 1, 1070,    22.25, 10);

INSERT INTO orders (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       VALUES ( 608,  '2013-09-26', 'DIRECT', 403000, 'UPSGR',  1, 209);
INSERT INTO order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       VALUES ( 608, 1, 1000,    100.00, 1);
INSERT INTO order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       VALUES ( 608, 6, 1020,    12.95, 4);

INSERT INTO orders (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       VALUES ( 609,  '2013-09-27', 'DIRECT', 900300, 'USPS1',  1, 210);
INSERT INTO order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       VALUES ( 609, 1, 1080,    25.00, 5);
INSERT INTO order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       VALUES ( 609, 3, 1010,   175.00, 20);
INSERT INTO order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       VALUES ( 609, 2, 1040,   300.25, 20);

INSERT INTO orders (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       VALUES ( 610,  '2013-09-27', 'DIRECT', 903000, 'UPSGR',  1, 209);
INSERT INTO order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       VALUES ( 610, 1, 4577,    29.95, 2);

INSERT INTO orders (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       VALUES ( 611,  '2013-09-30', 'DIRECT', 403000, 'USPS1',  1, 210);
INSERT INTO order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       VALUES ( 611, 1, 1080,    25.00, 12);


INSERT INTO orders (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       VALUES ( 105,   '2013-10-01', 'DIRECT', 403000, 'UPSGR',  1, 178);
INSERT INTO order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       VALUES ( 105, 1, 1030,    25.00, 12);
INSERT INTO order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       VALUES ( 105, 2, 1020,    12.95, 12);
INSERT INTO order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       VALUES ( 105, 3, 1010,   150.00,  5);

INSERT INTO orders (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       VALUES ( 106,   '2013-10-01', 'DIRECT', 401250, 'FEDEX1', 2, 208);
INSERT INTO order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       VALUES ( 106,1 , 1060,   255.95,  1);

INSERT INTO orders (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       VALUES ( 107,   '2013-10-02', 'ONLINE', 403050, 'USPS1', 2, 210);
INSERT INTO order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       VALUES ( 107, 1, 1110,    49.99,  1);

INSERT INTO orders (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       VALUES ( 108,   '2013-10-02', 'ONLINE', 403000, 'USPS1', 1, 174);
INSERT INTO order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       VALUES ( 108, 1, 1080,    22.50,  1);

INSERT INTO orders (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       VALUES ( 109,   '2013-10-12', 'DIRECT', 403000, 'UPSGR',  1, 209);
INSERT INTO order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       VALUES ( 109, 1, 1130,   149.99,  1);
       
INSERT INTO orders (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       VALUES ( 110,   '2013-10-12', 'DIRECT', 404950, 'FEDEX1', 1, 174);
INSERT INTO order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       VALUES ( 110, 1, 1090,   149.99,  1);
INSERT INTO order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       VALUES ( 110, 2, 1130,   149.99,  1); 

       
INSERT INTO orders (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       VALUES ( 400,   '2013-10-15', 'ONLINE', 403100, 'USPS1', 2, 178);
INSERT INTO order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       VALUES ( 400, 1, 5002,    23.00,  5);
INSERT INTO order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       VALUES ( 400, 2, 5004,    15.00,  5);
       INSERT INTO order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       VALUES ( 400, 3, 5005,    45.00,  5);
INSERT INTO order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       VALUES ( 400, 4, 5008,    10.00,  5);

INSERT INTO orders (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       VALUES ( 401,   '2013-10-15', 'ONLINE', 403100, 'USPS1', 2, 208);
INSERT INTO order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       VALUES ( 401, 1, 5002,    23.00,  3);
INSERT INTO order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       VALUES ( 401, 2, 4577,    29.95, 3);

INSERT INTO orders (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       VALUES ( 402,   '2013-10-18', 'ONLINE', 403100, 'USPS1', 2, 209);
INSERT INTO order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       VALUES ( 402, 1, 5002,    23.00,  3);
INSERT INTO order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       VALUES ( 402, 2, 4577,    29.95,  3);
       
INSERT INTO orders (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       VALUES ( 405,   '2013-11-19', 'DIRECT', 408770, 'FEDEX1', 1, 176);
INSERT INTO order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       VALUES ( 405, 1, 1010,   150.00,  1);
INSERT INTO order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       VALUES ( 405, 2, 1020,    12.95,  1);    
INSERT INTO order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       VALUES ( 405, 3, 1030,    29.95,  1);
INSERT INTO order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       VALUES ( 405, 4, 1040,   349.95,  1);
INSERT INTO order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       VALUES ( 405, 5, 1050,   269.95,  1);
INSERT INTO order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       VALUES ( 405, 6, 1060,   255.95,  1);

INSERT INTO orders (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       VALUES ( 407,   '2013-11-15', 'DIRECT', 403100, 'FEDEX1', 1, 209);
INSERT INTO order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       VALUES ( 407, 1, 5008,     8.00,  1);
INSERT INTO order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       VALUES ( 407, 2, 5005,    42.15,  1);
INSERT INTO order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       VALUES ( 407, 3, 5005,    42.50,  1);         
       
INSERT INTO orders (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       VALUES ( 408,   '2013-11-20', 'DIRECT', 404950, 'FEDEX1', 1, 209);
INSERT INTO order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       VALUES ( 408, 1, 1071,    15.00,  1);
     
INSERT INTO orders (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       VALUES ( 111,   '2013-11-01', 'DIRECT', 403000, 'UPSGR', 1, 208);
INSERT INTO order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       VALUES ( 111, 1, 1150,     4.99, 50);
INSERT INTO order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       VALUES ( 111, 2, 1141,    75.00,  1);

INSERT INTO orders (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       VALUES ( 112,   '2013-11-08', 'DIRECT', 401890, 'USPS1',  2, 178);
INSERT INTO order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       VALUES ( 112, 1, 1110,    49.99,  2);
INSERT INTO orders (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       VALUES ( 113,   '2013-11-08', 'ONLINE', 401250, 'FEDEX2', 2, 210);
INSERT INTO order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       VALUES ( 113, 1, 1080,    22.50,  1);

INSERT INTO orders (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       VALUES ( 114,   '2013-11-08', 'DIRECT', 402100, 'USPS1',  1, 174);
INSERT INTO order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       VALUES ( 114, 1, 1130,   125.00,  5);

INSERT INTO orders (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       VALUES ( 115,   '2013-11-08', 'ONLINE', 402100, 'USPS1',  1, 210);
INSERT INTO order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       VALUES ( 115, 1, 1000,   100.00,  2);
INSERT INTO order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       VALUES ( 115, 2, 1120,   475.00,  4);
INSERT INTO order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       VALUES ( 115, 3, 1080,    25.00,  1);
INSERT INTO order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       VALUES ( 115, 4, 1100,    45.00,  4);

INSERT INTO orders (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       VALUES ( 116,   '2013-11-12', 'ONLINE', 405000, NULL,  9, 209);

INSERT INTO orders (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       VALUES ( 117,  '2013-11-28', 'ONLINE', 402100, NULL,  9, 178);
INSERT INTO order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       VALUES ( 117, 1, 1150,     4.99,   4);
INSERT INTO order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       VALUES ( 117, 2, 1141,    75.00,  4);
INSERT INTO order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       VALUES ( 117, 3, 1030,    27.00,  1);

INSERT INTO orders (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       VALUES ( 118,   '2013-11-28', 'DIRECT', 403010, NULL,  3, 174);
INSERT INTO order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       VALUES ( 118, 1, 1125,   475.00,  4);

INSERT INTO orders (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       VALUES ( 119,   '2013-11-28','DIRECT', 401250, NULL, 3, 176);
INSERT INTO order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       VALUES ( 119, 1, 1070,    22.50, 10);
       


INSERT INTO orders (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       VALUES ( 123,   '2013-12-05','ONLINE', 409150, 'USPS1', 3, 178);

INSERT INTO orders (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       VALUES ( 124,   '2013-12-07','DIRECT', 409160, 'FEDEX1', 3, 209);
INSERT INTO order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       VALUES ( 124, 1, 1151,    14.99,  1);
       
INSERT INTO orders (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       VALUES ( 125,   '2013-12-09','DIRECT', 409160, 'FEDEX1', 3, 210);
INSERT INTO order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       VALUES ( 125, 1, 1152,    55.00,  1);

INSERT INTO orders (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       VALUES ( 126,   '2013-12-15','DIRECT', 409190, 'FEDEX1', 3, 174);
INSERT INTO order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       VALUES ( 126, 1, 1100,    49.99, 1);
       
INSERT INTO orders (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       VALUES ( 127,   '2013-12-15','ONLINE', 915001, 'USPS1', 4, 176);
INSERT INTO order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       VALUES ( 127, 1, 1100,    49.99,  1);
INSERT INTO order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       VALUES ( 127, 3, 1080,    25.00,  1);
INSERT INTO order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       VALUES ( 127, 2, 1110,    49.99,  1);

INSERT INTO orders (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       VALUES ( 128,   '2013-12-15','ONLINE', 409030, 'FEDEX1', 4, 178);
INSERT INTO order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       VALUES ( 128, 1, 1060,   255.95,  2);

INSERT INTO orders (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       VALUES ( 129,   '2013-12-15','DIRECT', 915001, 'FEDEX1', 7, 208);
INSERT INTO order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       VALUES ( 129, 1, 1141,    99.99,  3);

INSERT INTO orders (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       VALUES ( 130,   '2013-12-30','ONLINE', 409030, 'USPS1', 7, 209);
INSERT INTO order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       VALUES ( 130, 1, 1120,   500.00,1);
INSERT INTO order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       VALUES ( 130, 2, 1125,   500.00, 1);
INSERT INTO order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       VALUES ( 130, 3, 1090,   145.00, 1);

       
INSERT INTO orders (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       VALUES ( 503,   '2014-01-04', 'DIRECT', 404100, 'USPS1', 2,  210);
INSERT INTO order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       VALUES ( 503, 1, 1130,   149.99,  1);
       
INSERT INTO orders (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       VALUES ( 504,   '2014-01-11', 'DIRECT', 404100, 'UPSGR',  9, 174);
INSERT INTO order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       VALUES ( 504, 1, 1130,   149.99,  1);
       
INSERT INTO orders (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       VALUES ( 505,   '2014-01-12', 'DIRECT', 403000, 'UPSGR',  1, 174);
INSERT INTO order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       VALUES ( 505, 1, 1080,    22.50,  2);
INSERT INTO order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       VALUES ( 505, 2, 1110,    49.99, 1);
INSERT INTO order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       VALUES ( 505, 3, 1060,   255.95, 1);
     
INSERT INTO orders (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       VALUES ( 506,   '2014-01-12', 'DIRECT', 401250, 'FEDEX1', 2, 176);

INSERT INTO orders (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       VALUES ( 120,   '2014-01-02','DIRECT', 903000, NULL, 3, 178);
INSERT INTO order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       VALUES ( 120, 1, 1010,   175.00, 10);

INSERT INTO orders (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       VALUES ( 121,   '2014-01-03','DIRECT', 903000, NULL, 3, 208);
INSERT INTO order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       VALUES ( 121, 1, 1010,   175.00, 20);
INSERT INTO order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       VALUES ( 121, 2, 1040,   300.25,  1);
       
INSERT INTO orders (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       VALUES ( 122,   '2014-01-23','ONLINE', 409150, 'USPS1', 3, 174);
INSERT INTO order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       VALUES ( 122, 1, 1070,    25.00,  1);
INSERT INTO order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       VALUES ( 122, 2, 1071,    25.00,  1);
INSERT INTO order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       VALUES ( 122, 3, 1072,    25.00,  1);
INSERT INTO order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       VALUES ( 122, 5, 1070,    15.00,  2);
       
INSERT INTO orders (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       VALUES ( 507,   '2014-02-01', 'ONLINE', 403050, 'USPS1', 2, 178);
INSERT INTO order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       VALUES ( 507, 2, 1090,   145.99,  1);

INSERT INTO orders (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       VALUES ( 805,  '2014-01-05', 'DIRECT', 404100, 'UPSGR',  1, 176);
INSERT INTO order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       VALUES ( 805, 1, 1080,    25.00, 12);
INSERT INTO order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       VALUES ( 805, 2, 1130,    112.95, 12);
INSERT INTO order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       VALUES ( 805, 3, 1060,   125.00,  5);

INSERT INTO orders (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       VALUES ( 806,  '2014-01-07', 'DIRECT', 409160, 'FEDEX1',  1, 207);
INSERT INTO order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       VALUES ( 806, 1, 1152,    55.00, 1);

INSERT INTO orders (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       VALUES ( 807,  '2014-01-15', 'DIRECT', 409160, 'FEDEX1',  1, 208);
INSERT INTO order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       VALUES ( 807, 1, 1070,    22.25, 10);

INSERT INTO orders (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       VALUES ( 808,  '2014-01-26', 'DIRECT', 403000, 'UPSGR',  1, 209);
INSERT INTO order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       VALUES ( 808, 1, 1000,    100.00, 1);
INSERT INTO order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       VALUES ( 808, 2, 1010,    125.00, 1);
INSERT INTO order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       VALUES ( 808, 3, 1020,    12.95, 1);

INSERT INTO orders (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       VALUES ( 809,  '2014-01-27', 'DIRECT', 900300, 'USPS1',  1, 174);
INSERT INTO order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       VALUES ( 809, 1, 1080,    25.00, 5);


INSERT INTO orders (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       VALUES ( 810,  '2014-01-27', 'DIRECT', 903000, 'UPSGR',  1, 176);
INSERT INTO order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       VALUES ( 810, 1, 4577,    29.95, 2);

INSERT INTO orders (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       VALUES ( 811,  '2014-01-31', 'DIRECT', 403000, 'USPS1',  1, 178);
INSERT INTO order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       VALUES ( 811, 1, 1080,    25.00, 12);
INSERT INTO order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       VALUES ( 811, 2, 1080,    25.00, 12);
     
INSERT INTO orders (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       VALUES ( 508,   '2014-02-01', 'ONLINE', 403000, 'USPS1', 1, 174);
INSERT INTO order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       VALUES ( 508, 1, 1152,    55.25,  4);
INSERT INTO order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       VALUES ( 508, 2, 1152,    27.15,  6);

INSERT INTO orders (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       VALUES ( 509,   '2014-02-12', 'DIRECT', 403000, 'UPSGR',  1, 178);
INSERT INTO order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       VALUES ( 509, 1, 1090,   149.99,  5);
INSERT INTO order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       VALUES ( 509, 2, 1130,   149.99,  2); 

INSERT INTO orders (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       VALUES ( 510,   '2014-02-01', 'DIRECT', 404950, 'FEDEX1', 1, 174);
INSERT INTO order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       VALUES ( 510, 1, 1071,    25.00,  2);
INSERT INTO order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       VALUES ( 510, 2, 1072,    24.25,  1);

INSERT INTO orders (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       VALUES ( 511,   '2014-02-01', 'DIRECT', 403000, 'UPSGR', 1, 178);
INSERT INTO order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       VALUES ( 511, 2, 1130,   149.99,  1); 
INSERT INTO order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       VALUES ( 511, 3, 1060,   255.95,  1);  

INSERT INTO orders (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       VALUES ( 515,   '2014-02-02','ONLINE', 409150, 'USPS1', 3, 208);
INSERT INTO order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       VALUES ( 515, 1, 1110,    49.99,  1);

INSERT INTO orders (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       VALUES ( 516,   '2014-02-02','ONLINE', 409150, 'USPS1', 3, 209);
INSERT INTO order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       VALUES ( 516, 1, 1020,    12.95,  1);

INSERT INTO orders (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       VALUES ( 518,   '2014-02-03','ONLINE', 409150, 'USPS1', 3, 210);
INSERT INTO order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       VALUES ( 518, 1, 1141,    75.99,  3);
INSERT INTO order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       VALUES ( 518, 2, 1125,   500.00,  1);   
INSERT INTO order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       VALUES ( 518, 3, 2014,   15.59,  1);  
INSERT INTO order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       VALUES ( 518, 4, 2984,   15.87,  1);  
       
       
INSERT INTO orders (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       VALUES ( 519,   '2014-04-04','ONLINE', 401890, 'USPS1', 3, 174);
INSERT INTO order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       VALUES ( 519, 1, 1020,    12.95, 5);
INSERT INTO order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       VALUES ( 519, 2, 1110,    49.99, 1); 

INSERT INTO orders (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       VALUES ( 520,   '2014-04-04','ONLINE', 404900, 'USPS1', 3, 174);
INSERT INTO order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       VALUES ( 520, 1, 1020,    12.95, 3);      
INSERT INTO order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       VALUES ( 520, 2, 2747,    12.95, 3);   
       
INSERT INTO orders (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       VALUES ( 522,   '2014-04-05','ONLINE', 409150, 'USPS1', 3, 176);
INSERT INTO order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       VALUES ( 522, 1, 1080,    22.50, 2);

INSERT INTO orders (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       VALUES ( 715,   '2014-04-05','ONLINE', 409150, 'USPS1', 3, 178);
INSERT INTO order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       VALUES ( 715, 1, 1110,    49.99,  1);
INSERT INTO order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       VALUES ( 715, 3, 2014,   15.59,  1);  
INSERT INTO order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       VALUES ( 715, 4, 2984,   15.87,  1);  
       
INSERT INTO orders (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       VALUES ( 716,    '2014-02-06','ONLINE', 409150, 'USPS1', 3, 178);
INSERT INTO order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       VALUES ( 716, 1, 1020,    12.95,  1);

INSERT INTO orders (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       VALUES ( 718,   '2014-04-08','ONLINE', 409150, 'USPS1', 3, 210);
INSERT INTO order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       VALUES ( 718, 1, 1141,    75.99,  3);
INSERT INTO order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       VALUES ( 718, 2, 1125,   500.00,  1);   
       
INSERT INTO orders (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       VALUES ( 523,   '2014-04-05','ONLINE', 409150, 'USPS1', 3, 209);
INSERT INTO order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       VALUES ( 523, 1, 1130,   149.99, 1);

INSERT INTO orders (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       VALUES ( 524,   '2014-04-07','DIRECT', 409160, 'FEDEX1', 3, 210);
INSERT INTO order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       VALUES ( 524, 1, 1090,   145.99,  1);
INSERT INTO order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       VALUES ( 524, 4, 1070,    15.00,  2);

INSERT INTO orders (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       VALUES ( 525,   '2014-05-09','DIRECT', 409160, 'FEDEX1', 3, 174);
INSERT INTO order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       VALUES ( 525, 1, 2412,    9.87,  1);
INSERT INTO order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       VALUES ( 525, 2, 2947,    12.45,  1);
INSERT INTO order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       VALUES ( 525, 3, 2014,    15.95,  1);
INSERT INTO order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       VALUES ( 525, 5, 2746,    14.50,  1);

INSERT INTO orders (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       VALUES ( 527,   '2014-05-01', 'ONLINE', 403050, 'USPS1', 2, 174);
INSERT INTO order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       VALUES ( 527, 1, 1150,     4.25, 50);
INSERT INTO order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       VALUES ( 527, 2, 1141,    75.99,  3);
       
INSERT INTO orders (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       VALUES ( 528,   '2014-05-01', 'ONLINE', 403000, 'USPS1', 1, 176);
INSERT INTO order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       VALUES ( 528, 1, 1070,    25.50,  2);
INSERT INTO order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       VALUES ( 528, 2, 1030,    20.50, 16);
INSERT INTO order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       VALUES ( 528, 4, 1010,   150.00, 15);

INSERT INTO orders (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       VALUES ( 529,   '2014-05-12', 'DIRECT', 403000, 'UPSGR',  1, 178);
INSERT INTO order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       VALUES ( 529, 1, 1130,   149.99,  1);
INSERT INTO order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       VALUES ( 529, 3, 1020,    12.95, 10);

INSERT INTO orders (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       VALUES ( 535,   '2014-05-12', 'DIRECT', 404950, 'FEDEX1', 1, 208);
INSERT INTO order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       VALUES ( 535, 1, 1040,   300.00,  1);
INSERT INTO order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       VALUES ( 535, 2, 1050,   225.00,  1);

INSERT INTO orders (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       VALUES ( 536,   '2014-05-12', 'DIRECT', 403000, 'FEDEX1', 1, 209);
INSERT INTO order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       VALUES ( 536, 1, 1040,   300.00,  1);
INSERT INTO order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       VALUES ( 536, 2, 1050,   225.00,  1);       

INSERT INTO orders (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       VALUES ( 540,   '2014-06-02', 'DIRECT', 404950, 'FEDEX1', 1, 210);
INSERT INTO order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       VALUES ( 540, 1, 1080,    22.50, 2);
INSERT INTO order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       VALUES ( 540, 2, 1110,    49.99, 1);
INSERT INTO order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       VALUES ( 540, 3, 1152,    55.25, 1);
       
INSERT INTO orders (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       VALUES ( 390,   '2014-06-04', 'DIRECT', 403000, 'FEDEX1', 9,  174);
INSERT INTO order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       VALUES ( 390, 1, 1010,   175.00,  8);

INSERT INTO orders (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       VALUES ( 395,   '2014-06-04', 'DIRECT', 403000, 'FEDEX1', 9,  176);
INSERT INTO order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       VALUES ( 395, 1, 1010,   195.00, 15);

INSERT INTO orders (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       VALUES ( 301,   '2014-06-04', 'DIRECT', 401250, 'FEDEX2', 9, 178);
INSERT INTO order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       VALUES ( 301, 1, 1100,   205.00,  1);

INSERT INTO orders (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       VALUES ( 302,   '2014-06-04', 'DIRECT', 404000, 'USPS1', 2,  208);
INSERT INTO order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       VALUES ( 302, 1, 1140,    12.00, 10);
INSERT INTO order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       VALUES ( 302, 2, 1040,   349.95,  1);

INSERT INTO orders (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       VALUES ( 303,   '2014-06-10', 'DIRECT', 404100, 'USPS1', 2,  208);
INSERT INTO order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       VALUES ( 303, 1, 1000,   125.00,  1);

INSERT INTO orders (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       VALUES ( 306,  '2014-06-04', 'DIRECT', 903000, 'USPS1', 9, 209);
INSERT INTO order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       VALUES ( 306, 1, 1120,   500.00,  1);
INSERT INTO order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       VALUES ( 306, 2, 1125,   500.00,  1);

INSERT INTO orders (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       VALUES ( 307,  '2014-06-04', 'DIRECT', 900300, 'USPS1', 9, 210);
INSERT INTO order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       VALUES ( 307, 1, 1120,   450.00, 5);
INSERT INTO order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       VALUES ( 307, 2, 1125,   450.00, 5);

INSERT INTO orders (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       VALUES ( 312,  '2014-06-07', 'DIRECT', 903000, 'USPS1', 5,  174);
INSERT INTO order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       VALUES ( 312, 1, 1040,   300.00, 10);
INSERT INTO order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       VALUES ( 312, 2, 1050,   250.00, 10);
INSERT INTO order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       VALUES ( 312, 3, 1060,   140.50, 10);
INSERT INTO order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       VALUES ( 312, 4, 1060,   125.00, 20);

INSERT INTO orders (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       VALUES ( 313,  '2014-06-07', 'DIRECT', 903000, 'USPS1', 5,  176);
INSERT INTO order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       VALUES ( 313, 1, 1000,   125.00, 1);

INSERT INTO orders (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       VALUES ( 324,  '2014-06-11', 'DIRECT', 409030, 'UPSGR',  9, 176);
INSERT INTO order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       VALUES ( 324, 1, 4576,    29.95, 20);
 
INSERT INTO orders (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       VALUES ( 378,  '2014-06-14', 'DIRECT', 400300, 'USPS1', 9, 178);
INSERT INTO order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       VALUES ( 378, 1, 1120,   450.00, 5);
INSERT INTO order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       VALUES ( 378, 2, 1125,   450.00, 5);

INSERT INTO orders (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       VALUES ( 411,   '2014-07-01', 'DIRECT', 404950, 'FEDEX1', 1, 208);
INSERT INTO order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       VALUES ( 411, 1, 1071,    25.00,  2);
INSERT INTO order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       VALUES ( 411, 2, 1072,    24.25,  2);
INSERT INTO order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       VALUES ( 411, 3, 1060,   255.95,  2);  
       
       
INSERT INTO orders (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       VALUES ( 412,   '2014-07-01', 'DIRECT', 403000, 'UPSGR', 1, 208);
INSERT INTO order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       VALUES ( 412, 2, 1130,   149.99,  1); 


INSERT INTO orders (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       VALUES ( 413,   '2014-07-07','ONLINE', 409150, 'USPS1', 3, 208);
INSERT INTO order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       VALUES ( 413, 2, 1110,   49.99,  10);
INSERT INTO order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       VALUES ( 413, 3, 2014,   15.59,  5);  
INSERT INTO order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       VALUES ( 413, 4, 2984,   15.87,  5);  

    
INSERT INTO orders (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       VALUES ( 414,   '2014-07-20','ONLINE', 409150, 'USPS1', 3, 209);
INSERT INTO order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       VALUES ( 414, 1, 1020,    12.95,  13);

INSERT INTO orders (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       VALUES ( 415,   '2014-07-23','ONLINE', 409150, 'USPS1', 3, 174);
INSERT INTO order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       VALUES ( 415, 1, 1141,    75.99,  5);
INSERT INTO order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       VALUES ( 415, 2, 1125,   500.00,  5);   
   
INSERT INTO orders (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       VALUES ( 550,   '2014-08-02','DIRECT', 903000, NULL, 3, 176);
INSERT INTO order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       VALUES ( 550, 1, 1010,   175.00, 10);
INSERT INTO order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       VALUES ( 550, 2, 1040,   300.25,  1);
       
INSERT INTO orders (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       VALUES ( 551,   '2014-08-03','DIRECT', 903000, NULL, 3, 178);
INSERT INTO order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       VALUES ( 551, 1, 1010,   175.00, 20);

INSERT INTO orders (ord_id, ord_date, ord_mode, cust_id, shipping_mode, ord_status, sales_rep_id)
       VALUES ( 552,  '2014-08-12', 'DIRECT', 401250, 'FEDEX1', 2, 210);
INSERT INTO order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       VALUES ( 552, 3, 2014,   15.59,  5);  
INSERT INTO order_details (ord_id, line_item_id, prod_id, quoted_price, quantity_ordered)
       VALUES ( 552, 2, 2984,   15.87,  5);   