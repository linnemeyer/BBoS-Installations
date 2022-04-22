prompt --application/shared_components/navigation/breadcrumbs/breadcrumb
begin
--   Manifest
--     MENU: Breadcrumb
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.5'
,p_default_workspace_id=>1608381483082323
,p_default_application_id=>100
,p_default_id_offset=>336536533326679440
,p_default_owner=>'BBOSINSTALLS'
);
wwv_flow_api.create_menu(
 p_id=>wwv_flow_api.id(16247526998945137899)
,p_name=>'Breadcrumb'
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(26715533638438976)
,p_parent_id=>wwv_flow_api.id(157904675002390819)
,p_short_name=>'Load Phone Data'
,p_link=>'f?p=&APP_ID.:40:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>40
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(26764694372504300)
,p_parent_id=>wwv_flow_api.id(16247749323309138248)
,p_short_name=>'Load TPT_Raw_Data'
,p_link=>'f?p=&APP_ID.:41:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>41
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(65946797062474196)
,p_parent_id=>wwv_flow_api.id(16247749323309138248)
,p_short_name=>'Audit Log'
,p_link=>'f?p=&APP_ID.:500:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>500
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(151972147894969918)
,p_parent_id=>wwv_flow_api.id(16247749323309138248)
,p_short_name=>'Remove Dup Order Imports'
,p_link=>'f?p=&APP_ID.:36:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>36
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(156892142402244571)
,p_parent_id=>wwv_flow_api.id(16247527213869137899)
,p_short_name=>'Average Delivery Times'
,p_link=>'f?p=&APP_ID.:37:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>37
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(156900410503388129)
,p_parent_id=>wwv_flow_api.id(16247527213869137899)
,p_short_name=>'Average Delivery Days Graph'
,p_link=>'f?p=&APP_ID.:39:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>39
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(157904675002390819)
,p_short_name=>'Administration'
,p_link=>'f?p=&APP_ID.:10100:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>10100
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(177199252639503395)
,p_parent_id=>wwv_flow_api.id(16247749323309138248)
,p_short_name=>'All Install Parts'
,p_link=>'f?p=&APP_ID.:31:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>31
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(190112624304877228)
,p_parent_id=>wwv_flow_api.id(26072053762655718520)
,p_short_name=>'Expected Deliveries'
,p_link=>'f?p=&APP_ID.:27:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>27
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(214759931290356201)
,p_parent_id=>wwv_flow_api.id(16247749323309138248)
,p_short_name=>'Install Invoice Reconcile'
,p_link=>'f?p=&APP_ID.:23:&SESSION.'
,p_page_id=>23
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(245756857500091587)
,p_short_name=>'Ready to Schedule'
,p_link=>'f?p=&APP_ID.:25:&SESSION.'
,p_page_id=>25
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(273024116850075863)
,p_parent_id=>wwv_flow_api.id(16247527213869137899)
,p_short_name=>'Commo Log'
,p_link=>'f?p=&APP_ID.:26:&SESSION.'
,p_page_id=>26
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(338356566373985949)
,p_parent_id=>wwv_flow_api.id(16247749323309138248)
,p_short_name=>'Install Invoice Reconcile'
,p_link=>'f?p=&APP_ID.:21:&SESSION.::&DEBUG.:::'
,p_page_id=>21
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(338430771229851138)
,p_parent_id=>wwv_flow_api.id(27507204039092896226)
,p_short_name=>'NON INSTALL Event'
,p_link=>'f?p=&APP_ID.:18:&SESSION.::&DEBUG.:::'
,p_page_id=>18
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(2560704768396549295)
,p_parent_id=>wwv_flow_api.id(16247749323309138248)
,p_short_name=>'User Management'
,p_link=>'f?p=&APP_ID.:11:&SESSION.'
,p_page_id=>11
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(2560705976900549297)
,p_parent_id=>wwv_flow_api.id(16247749323309138248)
,p_short_name=>'User Privledges'
,p_link=>'f?p=&APP_ID.:12:&SESSION.'
,p_page_id=>12
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(2564669131236700222)
,p_parent_id=>wwv_flow_api.id(2560705976900549297)
,p_short_name=>'User Delivery Locations'
,p_link=>'f?p=&APP_ID.:13:&SESSION.'
,p_page_id=>13
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(2593303963871342234)
,p_parent_id=>wwv_flow_api.id(2560705976900549297)
,p_short_name=>'User Installers'
,p_link=>'f?p=&APP_ID.:14:&SESSION.'
,p_page_id=>14
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(2598503819357719797)
,p_short_name=>'Completed Orders'
,p_link=>'f?p=&APP_ID.:15:&SESSION.'
,p_page_id=>15
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(16247527213869137899)
,p_short_name=>'Home'
,p_link=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.'
,p_page_id=>1
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(16247749323309138248)
,p_short_name=>'Administration'
,p_link=>'f?p=&APP_ID.:10000:&SESSION.'
,p_page_id=>10000
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(16436899063999311934)
,p_parent_id=>wwv_flow_api.id(16247527213869137899)
,p_short_name=>'Installation Orders'
,p_link=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.:::'
,p_page_id=>5
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(16436900189180311937)
,p_parent_id=>wwv_flow_api.id(26072053762655718520)
,p_short_name=>'Edit Install Order'
,p_link=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.:::'
,p_page_id=>6
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(19128787049301175548)
,p_parent_id=>wwv_flow_api.id(16247527213869137899)
,p_short_name=>'Receivables'
,p_link=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:::'
,p_page_id=>3
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(19129185292520785675)
,p_parent_id=>wwv_flow_api.id(19128787049301175548)
,p_short_name=>'Edit'
,p_link=>'f?p=&APP_ID.:4:&SESSION.'
,p_page_id=>4
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(19374818373015839950)
,p_parent_id=>wwv_flow_api.id(16247527213869137899)
,p_short_name=>'Ready to Install'
,p_link=>'f?p=&APP_ID.:9:&SESSION.'
,p_page_id=>9
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(19376158761540352924)
,p_parent_id=>wwv_flow_api.id(19374818373015839950)
,p_short_name=>'Do Install'
,p_link=>'f?p=&APP_ID.:17:&SESSION.'
,p_page_id=>17
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(20371463083292688748)
,p_parent_id=>wwv_flow_api.id(16247527213869137899)
,p_short_name=>'Edit Installation Invoice'
,p_link=>'f?p=&APP_ID.:16:&SESSION.'
,p_page_id=>16
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(22238335977263859031)
,p_parent_id=>wwv_flow_api.id(16247527213869137899)
,p_short_name=>'Installation Orders'
,p_link=>'f?p=&APP_ID.:19:&SESSION.::&DEBUG.:::'
,p_page_id=>2
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(26072053762655718520)
,p_parent_id=>wwv_flow_api.id(16247527213869137899)
,p_short_name=>'Orders'
,p_link=>'f?p=&APP_ID.:19:&SESSION.::&DEBUG.:::'
,p_page_id=>19
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(27507204039092896226)
,p_parent_id=>wwv_flow_api.id(16247527213869137899)
,p_short_name=>'Scheduled Installs'
,p_link=>'f?p=&APP_ID.:20:&SESSION.'
,p_page_id=>20
);
wwv_flow_api.component_end;
end;
/
