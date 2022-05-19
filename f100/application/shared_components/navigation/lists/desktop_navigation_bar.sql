prompt --application/shared_components/navigation/lists/desktop_navigation_bar
begin
--   Manifest
--     LIST: Desktop Navigation Bar
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.6'
,p_default_workspace_id=>1608381483082323
,p_default_application_id=>100
,p_default_id_offset=>336536533326679440
,p_default_owner=>'BBOSINSTALLS'
);
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(16247647312492137983)
,p_name=>'Desktop Navigation Bar'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(16247746853333138246)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'&APP_USER.'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-user'
,p_list_text_02=>'has-username'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(16247747331618138247)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'---'
,p_list_item_link_target=>'separator'
,p_parent_list_item_id=>wwv_flow_api.id(16247746853333138246)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(32010300653304980)
,p_list_item_display_sequence=>25
,p_list_item_link_text=>'Create Quick Note'
,p_list_item_link_target=>'f?p=&APP_ID.:62:&SESSION.::&DEBUG.:RP,62:P62_ORDER_ID,P62_INSTALL_PART_ID:&G_ORDER_ID.,&G_INSTALL_PART_ID.:'
,p_list_item_icon=>'fa-sticky-note-o'
,p_parent_list_item_id=>wwv_flow_api.id(16247746853333138246)
,p_list_item_current_type=>'NEVER'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(16247747767024138247)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Sign Out'
,p_list_item_link_target=>'&LOGOUT_URL.'
,p_list_item_icon=>'fa-sign-out'
,p_parent_list_item_id=>wwv_flow_api.id(16247746853333138246)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(755787406616581812)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Change Password'
,p_list_item_link_target=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-lock-password'
,p_parent_list_item_id=>wwv_flow_api.id(16247746853333138246)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(157903607326390813)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Feedback'
,p_list_item_link_target=>'f?p=&APP_ID.:10020:&SESSION.::&DEBUG.:10020:P10020_PAGE_ID:&APP_PAGE_ID.:'
,p_list_item_icon=>'fa-comment-o'
,p_parent_list_item_id=>wwv_flow_api.id(16247746853333138246)
,p_list_text_02=>'icon-only'
,p_required_patch=>wwv_flow_api.id(157873514678390539)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(64204001876542464)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'About this Application'
,p_list_item_link_target=>'f?p=&APP_ID.:10110:&SESSION.::&DEBUG.:10110:::'
,p_list_item_icon=>'fa-info-circle-o'
,p_parent_list_item_id=>wwv_flow_api.id(16247746853333138246)
,p_list_text_02=>'icon-only'
,p_required_patch=>wwv_flow_api.id(64202836879542443)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(18300547325007830)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'Install App'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-cloud-download'
,p_list_text_02=>'a-pwaInstall'
,p_list_item_current_type=>'NEVER'
);
wwv_flow_api.component_end;
end;
/
