create or replace procedure set_our_product_values
is
Begin

--Set the vendor_id based on the vendor name in the quote line.
update tpt_quote_lines
  set our_vendor_id = 3
where vendor_name in ('CUSTOM BRANDS GROUP' , 'CUSTOM BRANDS GROUP - ONEHD')
  and our_vendor_id is null;

update tpt_quote_lines
  set our_vendor_id = 6
where vendor_name in ( 'HUNTER DOUGLAS', 'HUNTER DOUGLAS - ONEHD', 'HD N.V. - do not use', 'Hunter Douglas','Hunter Douglas PA','Hunter Douglas Pre Aliance')
  and our_vendor_id is null;

-- our data in TPT has multiple names for Lutron as it was first a my vendor before becoming and alliance vendor.
update tpt_quote_lines
  set our_vendor_id = 22
where vendor_name in ( 'LUTRON','LUTRON ELECTRONICS CO., INC.','Lutron Electronics','Lutron Electronics, PA','Lutron Electronics, Pre Alliance','Lutron QS')
  and our_vendor_id is null;
  
update tpt_quote_lines
  set our_vendor_id = 8
where vendor_name in ( 'GENIUS', 'Genius Screens')
  and our_vendor_id is null;
  
update tpt_quote_lines
  set our_vendor_id = 41
where vendor_name in ( 'SPRINGS WINDOW FASHIONS', 'Spring Window Fashions')
  and our_vendor_id is null;
  
update tpt_quote_lines
  set our_vendor_id = 100
where vendor_name in ( 'ODL','ODL, INC.')
  and our_vendor_id is null;

update tpt_quote_lines
  set our_vendor_id = 2
where vendor_name = 'DRAPER, INC.'
  and our_vendor_id is null;

update tpt_quote_lines
  set our_vendor_id = 210
where vendor_name = 'FENETEX'
  and our_vendor_id is null;
  
update tpt_quote_lines
  set our_vendor_id = 21
where vendor_name = 'HORIZONS WINDOW FASHIONS'
  and our_vendor_id is null;
  
update tpt_quote_lines
  set our_vendor_id = 219
where vendor_name = 'Helser Brothers'
  and our_vendor_id is null;
  
update tpt_quote_lines
  set our_vendor_id = 24
where vendor_name = 'LAFAYETTE INTERIOR FASHIONS'
  and our_vendor_id is null;
  
update tpt_quote_lines
  set our_vendor_id = 216
where vendor_name = 'NORMAN WINDOW FASHIONS'
  and our_vendor_id is null
  and instr(upper(description), 'MONTEREY NORTH AMERICA') >= 1;

update tpt_quote_lines
  set our_vendor_id = 1
where vendor_name = 'NORMAN WINDOW FASHIONS'
  and our_vendor_id is null;
  
update tpt_quote_lines
  set our_vendor_id = 214
where vendor_name = 'SunPro'
  and our_vendor_id is null;
  
update tpt_quote_lines
  set our_vendor_id = 10
where vendor_name = 'VADAIN INTERNATIONAL'
  and our_vendor_id is null;
  
update tpt_quote_lines
  set our_vendor_id = 218
where vendor_name = 'The Screen Company of America'
  and our_vendor_id is null;
  
update tpt_quote_lines
  set our_vendor_id = 23
where vendor_name = 'TIMBER BLIND METRO SHADE'
  and our_vendor_id is null;
  
update tpt_quote_lines
  set our_vendor_id = 212
where vendor_name in ( 'INSPIRED SHADES - PRO DESIGN, LLC', 'INSPIRED SHADES' )
  and our_vendor_id is null;
  
update tpt_quote_lines
  set our_vendor_id = 4
where vendor_name = 'ROWLEY COMPANY, LLC'
  and our_vendor_id is null;


--- set our short description
--NORMAN  Norman is 1 Norman NA is 216, but they only do shutters
update tpt_quote_lines
   set our_description = initcap(product_name)
 where our_vendor_id in (1, 216)
   and our_description is null
   and product_name  not in ('SOFT TREATMENTS', 'San Clemente 9/16 Cordless Honeycomb Shade', 'CELLULAR SHADES');

update tpt_quote_lines
   set our_description = 'Vertical Cellular'
 where our_vendor_id = 1
   and our_description is null
   and product_name = 'CELLULAR SHADES'
   and instr(description, 'VERTICAL') > 1;

update tpt_quote_lines
   set our_description = 'Cellular Shades'
 where our_vendor_id = 1
   and our_description is null
   and product_name = 'CELLULAR SHADES';

update tpt_quote_lines
   set our_description = 'Smart Drapes'
 where our_vendor_id = 1
   and our_description is null
   and product_name  = 'SOFT TREATMENTS';

update tpt_quote_lines
   set our_description = 'Cellular Shades'
 where our_vendor_id = 1
   and our_description is null
   and product_name = 'San Clemente 9/16 Cordless Honeycomb Shade';

--HUNTER DOUGLAS
update tpt_quote_lines
   set our_description = 'Powerview Accessory'
 where our_vendor_id = 6
   and our_description is null
   and instr(upper(description), 'POWERVIEW ACCESSORIES') >= 1;

update tpt_quote_lines
   set our_description = initcap(product_name)
 where our_vendor_id = 6
   and our_description is null;

--LUTRON
update tpt_quote_lines
   set our_description = 'Pico Adapter'
 where our_vendor_id = 22
   and our_description is null
   and instr(upper(description), 'PICO WALLBOX ADAPTER') >= 1;  

update tpt_quote_lines
   set our_description = 'D Cell Batteries'
 where our_vendor_id = 22
   and our_description is null
   and instr(upper(description), 'D CELL BATTERY') >= 1;  

update tpt_quote_lines
   set our_description = 'Pico'
 where our_vendor_id = 22
   and our_description is null
   and instr(upper(description), 'PICO') >= 1;

update tpt_quote_lines
   set our_description = 'Cellular Shades'
 where our_vendor_id = 22
   and our_description is null
   and product_name = 'Cellular Shade';

update tpt_quote_lines
   set our_description = 'QS Roller Shades'
 where our_vendor_id = 22
   and our_description is null
   and instr(upper(description), 'QS SIVOIA') >= 1;

update tpt_quote_lines
   set our_description = 'Clutch Roller Shades'
 where our_vendor_id = 22
   and our_description is null
   and instr(upper(description), 'LUTRON MANUAL CLUTCH ROLLER') >= 1;

update tpt_quote_lines
   set our_description = 'QS Roller Shades'
 where our_vendor_id = 22
   and our_description is null
   and instr(upper(description), 'SIVOIA QS WIRELESS') >= 1;

update tpt_quote_lines
   set our_description = 'QS Roller Shades'
 where our_vendor_id = 22
   and our_description is null
   and instr(upper(description), 'QS WIRELESS ROLLER') >= 1;
   
update tpt_quote_lines
   set our_description = 'QS Roller Shades'
 where our_vendor_id = 22
   and our_description is null
   and instr(upper(description), 'QS TRIATHLON') >= 1;

update tpt_quote_lines
   set our_description = 'Repeater'
 where our_vendor_id = 22
   and our_description is null
   and instr(upper(description), 'REPEATER') >= 1;

update tpt_quote_lines
   set our_description = 'Bridge'
 where our_vendor_id = 22
   and our_description is null
   and instr(upper(description), 'CASETA PRO HUB') >= 1;

update tpt_quote_lines
   set our_description = 'Roller Shades'
 where our_vendor_id = 22
   and our_description is null
   and product_name = 'Window Coverings'
   and instr(upper(description), 'SERENA ROLLER SHADE') >= 1;

update tpt_quote_lines
   set our_description = 'Cellular Shades'
 where our_vendor_id = 22
   and our_description is null
   and product_name = 'Window Coverings'
   and instr(upper(description), 'SERENA CELLULAR SHADE') >= 1;

update tpt_quote_lines
   set our_description = 'Cellular Shades'
 where our_vendor_id = 22
   and our_description is null
   and product_name = 'Window Coverings'
   and instr(upper(description), 'CELLULAR') >= 1;

update tpt_quote_lines
   set our_description = 'Power Panel'
 where our_vendor_id = 22
   and our_description is null
   and instr(upper(description), 'POWER PANEL') >= 1;

update tpt_quote_lines
   set our_description = '12v Power Supply'
 where our_vendor_id = 22
   and our_description is null
   and instr(upper(description), 'PLUG-IN ADAPTER') >= 1;

update tpt_quote_lines
   set our_description = 'Power Supply'
 where our_vendor_id = 22
   and our_description is null
   and instr(upper(description), 'POWER SUPPLY') >= 1;

update tpt_quote_lines
   set our_description = '4 Channel Remote'
 where our_vendor_id = 22
   and our_description is null
   and instr(upper(description), 'SERENA 4-G REMOTE') >=1;

update tpt_quote_lines
   set our_description = 'Cellular Shades'
 where our_vendor_id = 22
   and our_description is null
   and product_name = 'CELLULAR SHADES';

update tpt_quote_lines
   set our_description = 'Cellular Shades'
 where our_vendor_id = 22
   and our_description is null
   and product_name = 'Motorized Cellular Shade';

update tpt_quote_lines
   set our_description = 'Roller Shades'
 where our_vendor_id = 22
   and our_description is null
   and product_name = 'SOLAR & ROLLER SHADES';

update tpt_quote_lines
   set our_description = 'Roller Shades'
 where our_vendor_id = 22
   and our_description is null
   and product_name = 'Motorized Roller Shades';

-- HORIZONS
update tpt_quote_lines
   set our_description = 'Drapery Side Panels'
 where our_vendor_id = 21
   and our_description is null
   and product_name = 'SOFT TREATMENTS'
   and instr(description, 'DRAPERY SIDE PANELS') > 0;

update tpt_quote_lines
   set our_description = 'Custom Draperies'
 where our_vendor_id = 21
   and our_description is null
   and product_name = 'SOFT TREATMENTS'
   and instr(description, 'DRAPERIES') > 0;

update tpt_quote_lines
   set our_description = 'Averte'
 where our_vendor_id = 21
   and our_description is null
   and product_name = 'WOVEN WOODS'
   and instr(description, 'AVERTE') > 0;

update tpt_quote_lines
   set our_description = 'Woven Roman Shade'
 where our_vendor_id = 21
   and our_description is null
   and product_name = 'WOVEN WOODS'
   and instr(description, 'ROMAN') > 0;

update tpt_quote_lines
   set our_description = 'Roller Shades'
 where our_vendor_id = 21
   and our_description is null
   and product_name = 'SOLAR & ROLLER SHADES';

update tpt_quote_lines
   set our_description = initcap(product_name)
 where our_vendor_id = 21
   and our_description is null;

-- DRAPER
update tpt_quote_lines
   set our_description = 'Roller Shades'
 where our_vendor_id = 2
   and our_description is null
   and product_name = 'SOLAR & ROLLER SHADES';

update tpt_quote_lines
   set our_description = 'Roller Shades'
 where our_vendor_id = 2
   and our_description is null
   and product_name = 'Flexshade - CLN - Custom Fabric';

update tpt_quote_lines
   set our_description = 'Motorized Roller Shades'
 where our_vendor_id = 2
   and our_description is null
   and product_name = 'EXT Flex Motorized';

update tpt_quote_lines
   set our_description = initcap(product_name)
 where our_vendor_id = 2
   and our_description is null;

-- Spring
update tpt_quote_lines
   set our_description = 'Roller Shades'
 where our_vendor_id = 41
   and our_description is null
   and product_name = 'Designer Roller Screens & Shades';

update tpt_quote_lines
   set our_description = 'Roller Shades'
 where our_vendor_id = 41
   and our_description is null
   and product_name = 'SOLAR & ROLLER SHADES';

update tpt_quote_lines
   set our_description = 'Custom Draperies'
 where our_vendor_id = 41
   and our_description is null 
   and instr(description, 'SIGNATURE SERIES DRAPES') > 0;

update tpt_quote_lines
   set our_description = initcap(product_name)
 where our_vendor_id = 41
   and our_description is null;

-- SunPro
update tpt_quote_lines
   set our_description = 'Exterior Roller Shades'
 where our_vendor_id = 214
   and our_description is null;

-- Inspired Shades - ProDesign
update tpt_quote_lines
   set our_description = 'Roller Shades'
 where our_vendor_id = 212
   and our_description is null
   and product_name = 'SOLAR & ROLLER SHADES';

update tpt_quote_lines
   set our_description = 'Woven Roman Shades'
 where our_vendor_id = 212
   and our_description is null
   and product_name = 'WOVEN WOODS';

update tpt_quote_lines
   set our_description = 'Drapery Panels'
 where our_vendor_id = 212
   and our_description is null
   and product_name = 'SOFT TREATMENTS'  
   and instr(description, 'DRAPERY PANELS') > 0;

update tpt_quote_lines
   set our_description = initcap(product_name)
 where our_vendor_id = 212
   and our_description is null;

-- Rowley
update tpt_quote_lines
   set our_description = 'Drapery Hardware'
 where our_vendor_id = 4
   and our_description is null  
   and instr(description, 'HARDWARE') > 0;

update tpt_quote_lines
   set our_description = initcap(product_name)
 where our_vendor_id = 4
   and our_description is null;

-- Vadain
update tpt_quote_lines
   set our_description = 'Custom Draperies'
 where our_vendor_id = 10
   and our_description is null
   and product_name = 'DRAPERY';

update tpt_quote_lines
   set our_description = 'Custom Draperies'
 where our_vendor_id = 10
   and our_description is null  
   and product_name = 'SOFT TREATMENTS' 
   and instr(description, 'DRAPERY') > 0;

update tpt_quote_lines
   set our_description = initcap(product_name)
 where our_vendor_id = 10
   and our_description is null;
end;
