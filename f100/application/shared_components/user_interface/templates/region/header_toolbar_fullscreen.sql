prompt --application/shared_components/user_interface/templates/region/header_toolbar_fullscreen
begin
--   Manifest
--     REGION TEMPLATE: HEADER_TOOLBAR_FULLSCREEN
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.6'
,p_default_workspace_id=>1608381483082323
,p_default_application_id=>100
,p_default_id_offset=>336536533326679440
,p_default_owner=>'BBOSINSTALLS'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(16247804429637732264)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" data-id="#REGION_STATIC_ID#" data-role="header" data-theme="a" data-position="fixed" data-fullscreen="true" class="#REGION_CSS_CLASSES#" #REGION_ATTRIBUTES#>',
'  #PREVIOUS#',
'  <h1>#TITLE#</h1>',
'  #NEXT#',
'  #BODY#',
'</div> <!-- /header -->'))
,p_page_plug_template_name=>'Header Toolbar (Fullscreen)'
,p_internal_name=>'HEADER_TOOLBAR_FULLSCREEN'
,p_theme_id=>51
,p_theme_class_id=>21
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>3773956714688111626
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(18334002189296121)
,p_plug_template_id=>wwv_flow_api.id(16247804429637732264)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(18334084830296121)
,p_plug_template_id=>wwv_flow_api.id(16247804429637732264)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(18334242575296121)
,p_plug_template_id=>wwv_flow_api.id(16247804429637732264)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(18334284807296121)
,p_plug_template_id=>wwv_flow_api.id(16247804429637732264)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_api.component_end;
end;
/
