unit FontAwesome;

{
  Font Awesome 4.7

  ZuBy, 2017
}

interface

uses
  FMX.Types, FMX.FontGlyphs, System.SysUtils
{$IFDEF ANDROID}
    , FMX.FontGlyphs.Android
{$ENDIF};

const
  FontAwesomeName = 'FontAwesome';

const
  // 4.7-
  fa_american_sign_language_interpreting = widechar($F2A3);
  fa_asl_interpreting_alias = widechar($F2A3);
  fa_assistive_listening_systems = widechar($F2A2);
  fa_audio_description = widechar($F29E);
  fa_blind = widechar($F29D);
  fa_braille = widechar($F2A1);
  fa_deaf = widechar($F2A4);
  fa_deafness_alias = widechar($F2A4);
  fa_envira = widechar($F299);
  fa_fa_alias = widechar($F2B4);
  fa_first_order = widechar($F2B0);
  fa_font_awesome = widechar($F2B4);
  fa_gitlab = widechar($F296);
  fa_glide = widechar($F2A5);
  fa_glide_g = widechar($F2A6);
  fa_google_plus_circle_alias = widechar($F2B3);
  fa_google_plus_official = widechar($F2B3);
  fa_hard_of_hearing_alias = widechar($F2A4);
  fa_instagram = widechar($F16D);
  fa_low_vision = widechar($F2A8);
  fa_pied_piper = widechar($F2AE);
  fa_question_circle_o = widechar($F29C);
  fa_sign_language = widechar($F2A7);
  fa_signing_alias = widechar($F2A7);
  fa_snapchat = widechar($F2AB);
  fa_snapchat_square = widechar($F2AD);
  fa_snapchat_ghost = widechar($F2AC);
  fa_themeisle = widechar($F2B2);
  fa_universal_access = widechar($F29A);
  fa_viadeo = widechar($F2A9);
  fa_viadeo_square = widechar($F2AA);
  fa_volume_control_phone = widechar($F2A0);
  fa_wheelchair_alt = widechar($F29B);
  fa_wpbeginner = widechar($F297);
  fa_wpforms = widechar($F298);
  fa_yoast = widechar($F2B1);
  fa_address_book = widechar($F2B9);
  fa_address_book_o = widechar($F2BA);
  fa_address_card = widechar($F2BB);
  fa_address_card_o = widechar($F2BC);
  fa_bandcamp = widechar($F2D5);
  fa_bath = widechar($F2CD);
  fa_bathtub_alias = widechar($F2CD);
  fa_drivers_license_alias = widechar($F2C2);
  fa_drivers_license_o_alias = widechar($F2C3);
  fa_eercast = widechar($F2DA);
  fa_envelope_open = widechar($F2B6);
  fa_envelope_open_o = widechar($F2B7);
  fa_etsy = widechar($F2D7);
  fa_free_code_camp = widechar($F2C5);
  fa_grav = widechar($F2D6);
  fa_handshake_o = widechar($F2B5);
  fa_id_badge = widechar($F2C1);
  fa_id_card = widechar($F2C2);
  fa_id_card_o = widechar($F2C3);
  fa_imdb = widechar($F2D8);
  fa_meetup = widechar($F2E0);
  fa_linode = widechar($F2B8);
  fa_microchip = widechar($F2DB);
  fa_podcast = widechar($F2CE);
  fa_quora = widechar($F2C4);
  fa_ravelry = widechar($F2D9);
  fa_s15_alias = widechar($F2CD);
  fa_shower = widechar($F2CC);
  fa_snowflake_o = widechar($F2DC);
  fa_superpowers = widechar($F2DD);
  fa_telegram = widechar($F2C6);
  fa_thermometer_alias = widechar($F2C7);
  fa_thermometer_0_alias = widechar($F2CB);
  fa_thermometer_1_alias = widechar($F2CA);
  fa_thermometer_2_alias = widechar($F2C9);
  fa_thermometer_3_alias = widechar($F2C8);
  fa_thermometer_4_alias = widechar($F2C7);
  fa_thermometer_empty = widechar($F2CB);
  fa_thermometer_full = widechar($F2C7);
  fa_thermometer_half = widechar($F2C9);
  fa_thermometer_quarter = widechar($F2CA);
  fa_thermometer_three_quarters = widechar($F2C8);
  fa_times_rectangle_alias = widechar($F2D3);
  fa_times_rectangle_o_alias = widechar($F2D4);
  fa_user_circle = widechar($F2BD);
  fa_user_circle_o = widechar($F2BE);
  fa_user_o = widechar($F2C0);
  fa_vcard_alias = widechar($F2BB);
  fa_vcard_o_alias = widechar($F2BC);
  fa_window_close = widechar($F2D3);
  fa_window_close_o = widechar($F2D4);
  fa_window_maximize = widechar($F2D0);
  fa_window_minimize = widechar($F2D1);
  fa_window_restore = widechar($F2D2);
  fa_wpexplorer = widechar($F2DE);

  // 4.5-
  fa_500px = widechar($F26E);
  fa_adjust = widechar($F042);
  fa_adn = widechar($F170);
  fa_align_center = widechar($F037);
  fa_align_justify = widechar($F039);
  fa_align_left = widechar($F036);
  fa_align_right = widechar($F038);

  fa_amazon = widechar($F270);
  fa_ambulance = widechar($F0F9);
  fa_anchor = widechar($F13D);
  fa_android = widechar($F17B);
  fa_angellist = widechar($F209);
  fa_angle_double_down = widechar($F103);
  fa_angle_double_left = widechar($F100);
  fa_angle_double_right = widechar($F101);
  fa_angle_double_up = widechar($F102);
  fa_angle_down = widechar($F107);
  fa_angle_left = widechar($F104);
  fa_angle_right = widechar($F105);
  fa_angle_up = widechar($F106);
  fa_apple = widechar($F179);
  fa_archive = widechar($F187);
  fa_area_chart = widechar($F1FE);
  fa_arrow_circle_down = widechar($F0AB);
  fa_arrow_circle_left = widechar($F0A8);
  fa_arrow_circle_o_down = widechar($F01A);
  fa_arrow_circle_o_left = widechar($F190);
  fa_arrow_circle_o_right = widechar($F18E);
  fa_arrow_circle_o_up = widechar($F01B);
  fa_arrow_circle_right = widechar($F0A9);
  fa_arrow_circle_up = widechar($F0AA);
  fa_arrow_down = widechar($F063);
  fa_arrow_left = widechar($F060);
  fa_arrow_right = widechar($F061);
  fa_arrow_up = widechar($F062);
  fa_arrows = widechar($F047);
  fa_arrows_alt = widechar($F0B2);
  fa_arrows_h = widechar($F07E);
  fa_arrows_v = widechar($F07D);
  fa_asterisk = widechar($F069);
  fa_at = widechar($F1FA);
  fa_automobile_alias = widechar($F1B9);
  fa_backward = widechar($F04A);
  fa_balance_scale = widechar($F24E);
  fa_ban = widechar($F05E);
  fa_bank_alias = widechar($F19C);
  fa_bar_chart = widechar($F080);
  fa_bar_chart_o_alias = widechar($F080);
  fa_barcode = widechar($F02A);
  fa_bars = widechar($F0C9);
  fa_battery_0_alias = widechar($F244);
  fa_battery_1_alias = widechar($F243);
  fa_battery_2_alias = widechar($F242);
  fa_battery_3_alias = widechar($F241);
  fa_battery_4_alias = widechar($F240);
  fa_battery_empty = widechar($F244);
  fa_battery_full = widechar($F240);
  fa_battery_half = widechar($F242);
  fa_battery_quarter = widechar($F243);
  fa_battery_three_quarters = widechar($F241);
  fa_bed = widechar($F236);
  fa_beer = widechar($F0FC);
  fa_behance = widechar($F1B4);
  fa_behance_square = widechar($F1B5);
  fa_bell = widechar($F0F3);
  fa_bell_o = widechar($F0A2);
  fa_bell_slash = widechar($F1F6);
  fa_bell_slash_o = widechar($F1F7);
  fa_bicycle = widechar($F206);
  fa_binoculars = widechar($F1E5);
  fa_birthday_cake = widechar($F1FD);
  fa_bitbucket = widechar($F171);
  fa_bitbucket_square = widechar($F172);
  fa_bitcoin_alias = widechar($F15A);
  fa_black_tie = widechar($F27E);
  fa_bluetooth = widechar($F293);
  fa_bluetooth_b = widechar($F294);
  fa_bold = widechar($F032);
  fa_bolt = widechar($F0E7);
  fa_bomb = widechar($F1E2);
  fa_book = widechar($F02D);
  fa_bookmark = widechar($F02E);
  fa_bookmark_o = widechar($F097);
  fa_briefcase = widechar($F0B1);
  fa_btc = widechar($F15A);
  fa_bug = widechar($F188);
  fa_building = widechar($F1AD);
  fa_building_o = widechar($F0F7);
  fa_bullhorn = widechar($F0A1);
  fa_bullseye = widechar($F140);
  fa_bus = widechar($F207);

  fa_buysellads = widechar($F20D);

  fa_cab_alias = widechar($F1BA);

  fa_calculator = widechar($F1EC);
  fa_calendar = widechar($F073);

  fa_calendar_check_o = widechar($F274);

  fa_calendar_minus_o = widechar($F272);
  fa_calendar_o = widechar($F133);

  fa_calendar_plus_o = widechar($F271);

  fa_calendar_times_o = widechar($F273);
  fa_camera = widechar($F030);
  fa_camera_retro = widechar($F083);

  fa_car = widechar($F1B9);
  fa_caret_down = widechar($F0D7);
  fa_caret_left = widechar($F0D9);
  fa_caret_right = widechar($F0DA);
  fa_caret_square_o_down = widechar($F150);

  fa_caret_square_o_left = widechar($F191);
  fa_caret_square_o_right = widechar($F152);
  fa_caret_square_o_up = widechar($F151);
  fa_caret_up = widechar($F0D8);

  fa_cart_arrow_down = widechar($F218);

  fa_cart_plus = widechar($F217);

  fa_cc = widechar($F20A);

  fa_cc_amex = widechar($F1F3);

  fa_cc_diners_club = widechar($F24C);

  fa_cc_discover = widechar($F1F2);

  fa_cc_jcb = widechar($F24B);

  fa_cc_mastercard = widechar($F1F1);

  fa_cc_paypal = widechar($F1F4);

  fa_cc_stripe = widechar($F1F5);

  fa_cc_visa = widechar($F1F0);
  fa_certificate = widechar($F0A3);
  fa_chain_alias = widechar($F0C1);
  fa_chain_broken = widechar($F127);
  fa_check = widechar($F00C);
  fa_check_circle = widechar($F058);
  fa_check_circle_o = widechar($F05D);
  fa_check_square = widechar($F14A);
  fa_check_square_o = widechar($F046);
  fa_chevron_circle_down = widechar($F13A);
  fa_chevron_circle_left = widechar($F137);
  fa_chevron_circle_right = widechar($F138);
  fa_chevron_circle_up = widechar($F139);
  fa_chevron_down = widechar($F078);
  fa_chevron_left = widechar($F053);
  fa_chevron_right = widechar($F054);
  fa_chevron_up = widechar($F077);

  fa_child = widechar($F1AE);

  fa_chrome = widechar($F268);
  fa_circle = widechar($F111);
  fa_circle_o = widechar($F10C);

  fa_circle_o_notch = widechar($F1CE);

  fa_circle_thin = widechar($F1DB);
  fa_clipboard = widechar($F0EA);
  fa_clock_o = widechar($F017);

  fa_clone = widechar($F24D);
  fa_close_alias = widechar($F00D);
  fa_cloud = widechar($F0C2);
  fa_cloud_download = widechar($F0ED);
  fa_cloud_upload = widechar($F0EE);
  fa_cny_alias = widechar($F157);
  fa_code = widechar($F121);
  fa_code_fork = widechar($F126);

  fa_codepen = widechar($F1CB);

  fa_codiepie = widechar($F284);
  fa_coffee = widechar($F0F4);
  fa_cog = widechar($F013);
  fa_cogs = widechar($F085);
  fa_columns = widechar($F0DB);
  fa_comment = widechar($F075);
  fa_comment_o = widechar($F0E5);

  fa_commenting = widechar($F27A);

  fa_commenting_o = widechar($F27B);
  fa_comments = widechar($F086);
  fa_comments_o = widechar($F0E6);
  fa_compass = widechar($F14E);
  fa_compress = widechar($F066);

  fa_connectdevelop = widechar($F20E);

  fa_contao = widechar($F26D);
  fa_copy_alias = widechar($F0C5);

  fa_copyright = widechar($F1F9);

  fa_creative_commons = widechar($F25E);
  fa_credit_card = widechar($F09D);

  fa_credit_card_alt = widechar($F283);
  fa_crop = widechar($F125);
  fa_crosshairs = widechar($F05B);
  fa_css3 = widechar($F13C);

  fa_cube = widechar($F1B2);

  fa_cubes = widechar($F1B3);
  fa_cut_alias = widechar($F0C4);
  fa_cutlery = widechar($F0F5);
  fa_dashboard_alias = widechar($F0E4);
  fa_dashcube = widechar($F210);

  fa_database = widechar($F1C0);
  fa_dedent_alias = widechar($F03B);

  fa_delicious = widechar($F1A5);
  fa_desktop = widechar($F108);

  fa_deviantart = widechar($F1BD);

  fa_diamond = widechar($F219);

  fa_digg = widechar($F1A6);
  fa_dollar_alias = widechar($F155);

  fa_dot_circle_o = widechar($F192);
  fa_download = widechar($F019);
  fa_dribbble = widechar($F17D);
  fa_dropbox = widechar($F16B);

  fa_drupal = widechar($F1A9);

  fa_edge = widechar($F282);
  fa_edit_alias = widechar($F044);
  fa_eject = widechar($F052);
  fa_ellipsis_h = widechar($F141);
  fa_ellipsis_v = widechar($F142);

  fa_empire = widechar($F1D1);
  fa_envelope = widechar($F0E0);
  fa_envelope_o = widechar($F003);

  fa_envelope_square = widechar($F199);
  fa_eraser = widechar($F12D);
  fa_eur = widechar($F153);
  fa_euro_alias = widechar($F153);
  fa_exchange = widechar($F0EC);
  fa_exclamation = widechar($F12A);
  fa_exclamation_circle = widechar($F06A);
  fa_exclamation_triangle = widechar($F071);
  fa_expand = widechar($F065);

  fa_expeditedssl = widechar($F23E);
  fa_external_link = widechar($F08E);
  fa_external_link_square = widechar($F14C);
  fa_eye = widechar($F06E);
  fa_eye_slash = widechar($F070);

  fa_eyedropper = widechar($F1FB);
  fa_facebook = widechar($F09A);
  fa_facebook_f_alias = widechar($F09A);

  fa_facebook_official = widechar($F230);
  fa_facebook_square = widechar($F082);
  fa_fast_backward = widechar($F049);
  fa_fast_forward = widechar($F050);

  fa_fax = widechar($F1AC);
  fa_feed_alias = widechar($F09E);
  fa_female = widechar($F182);
  fa_fighter_jet = widechar($F0FB);
  fa_file = widechar($F15B);

  fa_file_archive_o = widechar($F1C6);

  fa_file_audio_o = widechar($F1C7);

  fa_file_code_o = widechar($F1C9);

  fa_file_excel_o = widechar($F1C3);

  fa_file_image_o = widechar($F1C5);

  fa_file_movie_o_alias = widechar($F1C8);
  fa_file_o = widechar($F016);

  fa_file_pdf_o = widechar($F1C1);
  fa_file_photo_o_alias = widechar($F1C5);

  fa_file_picture_o_alias = widechar($F1C5);

  fa_file_powerpoint_o = widechar($F1C4);

  fa_file_sound_o_alias = widechar($F1C7);
  fa_file_text = widechar($F15C);
  fa_file_text_o = widechar($F0F6);

  fa_file_video_o = widechar($F1C8);

  fa_file_word_o = widechar($F1C2);

  fa_file_zip_o_alias = widechar($F1C6);
  fa_files_o = widechar($F0C5);
  fa_film = widechar($F008);
  fa_filter = widechar($F0B0);
  fa_fire = widechar($F06D);
  fa_fire_extinguisher = widechar($F134);

  fa_firefox = widechar($F269);
  fa_flag = widechar($F024);
  fa_flag_checkered = widechar($F11E);
  fa_flag_o = widechar($F11D);
  fa_flash_alias = widechar($F0E7);
  fa_flask = widechar($F0C3);
  fa_flickr = widechar($F16E);
  fa_floppy_o = widechar($F0C7);
  fa_folder = widechar($F07B);
  fa_folder_o = widechar($F114);
  fa_folder_open = widechar($F07C);
  fa_folder_open_o = widechar($F115);
  fa_font = widechar($F031);

  fa_fonticons = widechar($F280);

  fa_fort_awesome = widechar($F286);

  fa_forumbee = widechar($F211);
  fa_forward = widechar($F04E);
  fa_foursquare = widechar($F180);
  fa_frown_o = widechar($F119);

  fa_futbol_o = widechar($F1E3);
  fa_gamepad = widechar($F11B);
  fa_gavel = widechar($F0E3);
  fa_gbp = widechar($F154);

  fa_ge_alias = widechar($F1D1);
  fa_gear_alias = widechar($F013);
  fa_gears_alias = widechar($F085);

  fa_genderless = widechar($F22D);

  fa_get_pocket = widechar($F265);

  fa_gg = widechar($F260);

  fa_gg_circle = widechar($F261);
  fa_gift = widechar($F06B);

  fa_git = widechar($F1D3);

  fa_git_square = widechar($F1D2);
  fa_github = widechar($F09B);
  fa_github_alt = widechar($F113);
  fa_github_square = widechar($F092);
  fa_gittip_alias = widechar($F184);
  fa_glass = widechar($F000);
  fa_globe = widechar($F0AC);

  fa_google = widechar($F1A0);
  fa_google_plus = widechar($F0D5);
  fa_google_plus_square = widechar($F0D4);

  fa_google_wallet = widechar($F1EE);

  fa_graduation_cap = widechar($F19D);
  fa_gratipay = widechar($F184);
  fa_group_alias = widechar($F0C0);
  fa_h_square = widechar($F0FD);

  fa_hacker_news = widechar($F1D4);

  fa_hand_grab_o_alias = widechar($F255);

  fa_hand_lizard_o = widechar($F258);
  fa_hand_o_down = widechar($F0A7);
  fa_hand_o_left = widechar($F0A5);
  fa_hand_o_right = widechar($F0A4);
  fa_hand_o_up = widechar($F0A6);

  fa_hand_paper_o = widechar($F256);

  fa_hand_peace_o = widechar($F25B);

  fa_hand_pointer_o = widechar($F25A);

  fa_hand_rock_o = widechar($F255);

  fa_hand_scissors_o = widechar($F257);

  fa_hand_spock_o = widechar($F259);

  fa_hand_stop_o_alias = widechar($F256);

  fa_hashtag = widechar($F292);
  fa_hdd_o = widechar($F0A0);

  fa_header = widechar($F1DC);
  fa_headphones = widechar($F025);
  fa_heart = widechar($F004);
  fa_heart_o = widechar($F08A);

  fa_heartbeat = widechar($F21E);

  fa_history = widechar($F1DA);
  fa_home = widechar($F015);
  fa_hospital_o = widechar($F0F8);
  fa_hotel_alias = widechar($F236);

  fa_hourglass = widechar($F254);

  fa_hourglass_1_alias = widechar($F251);
  fa_hourglass_2_alias = widechar($F252);

  fa_hourglass_3_alias = widechar($F253);

  fa_hourglass_end = widechar($F253);

  fa_hourglass_half = widechar($F252);

  fa_hourglass_o = widechar($F250);

  fa_hourglass_start = widechar($F251);

  fa_houzz = widechar($F27C);
  fa_html5 = widechar($F13B);

  fa_i_cursor = widechar($F246);

  fa_ils = widechar($F20B);
  fa_image_alias = widechar($F03E);
  fa_inbox = widechar($F01C);
  fa_indent = widechar($F03C);

  fa_industry = widechar($F275);
  fa_info = widechar($F129);
  fa_info_circle = widechar($F05A);
  fa_inr = widechar($F156);

  fa_institution_alias = widechar($F19C);

  fa_internet_explorer = widechar($F26B);

  fa_intersex_alias = widechar($F224);

  fa_ioxhost = widechar($F208);
  fa_italic = widechar($F033);

  fa_joomla = widechar($F1AA);
  fa_jpy = widechar($F157);

  fa_jsfiddle = widechar($F1CC);
  fa_key = widechar($F084);
  fa_keyboard_o = widechar($F11C);
  fa_krw = widechar($F159);

  fa_language = widechar($F1AB);
  fa_laptop = widechar($F109);

  fa_lastfm = widechar($F202);

  fa_lastfm_square = widechar($F203);
  fa_leaf = widechar($F06C);

  fa_leanpub = widechar($F212);
  fa_legal_alias = widechar($F0E3);
  fa_lemon_o = widechar($F094);
  fa_level_down = widechar($F149);
  fa_level_up = widechar($F148);

  fa_life_bouy_alias = widechar($F1CD);

  fa_life_buoy_alias = widechar($F1CD);

  fa_life_ring = widechar($F1CD);
  fa_life_saver_alias = widechar($F1CD);
  fa_lightbulb_o = widechar($F0EB);

  fa_line_chart = widechar($F201);
  fa_link = widechar($F0C1);
  fa_linkedin = widechar($F0E1);
  fa_linkedin_square = widechar($F08C);
  fa_linux = widechar($F17C);
  fa_list = widechar($F03A);
  fa_list_alt = widechar($F022);
  fa_list_ol = widechar($F0CB);
  fa_list_ul = widechar($F0CA);
  fa_location_arrow = widechar($F124);
  fa_lock = widechar($F023);
  fa_long_arrow_down = widechar($F175);
  fa_long_arrow_left = widechar($F177);
  fa_long_arrow_right = widechar($F178);
  fa_long_arrow_up = widechar($F176);
  fa_magic = widechar($F0D0);
  fa_magnet = widechar($F076);
  fa_mail_forward_alias = widechar($F064);
  fa_mail_reply_alias = widechar($F112);
  fa_mail_reply_all_alias = widechar($F122);
  fa_male = widechar($F183);

  fa_map = widechar($F279);
  fa_map_marker = widechar($F041);

  fa_map_o = widechar($F278);

  fa_map_pin = widechar($F276);

  fa_map_signs = widechar($F277);

  fa_mars = widechar($F222);

  fa_mars_double = widechar($F227);

  fa_mars_stroke = widechar($F229);

  fa_mars_stroke_h = widechar($F22B);

  fa_mars_stroke_v = widechar($F22A);
  fa_maxcdn = widechar($F136);

  fa_meanpath = widechar($F20C);
  fa_medium = widechar($F23A);
  fa_medkit = widechar($F0FA);
  fa_meh_o = widechar($F11A);

  fa_mercury = widechar($F223);
  fa_microphone = widechar($F130);
  fa_microphone_slash = widechar($F131);
  fa_minus = widechar($F068);
  fa_minus_circle = widechar($F056);
  fa_minus_square = widechar($F146);
  fa_minus_square_o = widechar($F147);
  fa_mixcloud = widechar($F289);
  fa_mobile = widechar($F10B);
  fa_mobile_phone_alias = widechar($F10B);
  fa_modx = widechar($F285);
  fa_money = widechar($F0D6);
  fa_moon_o = widechar($F186);

  fa_mortar_board_alias = widechar($F19D);

  fa_motorcycle = widechar($F21C);

  fa_mouse_pointer = widechar($F245);
  fa_music = widechar($F001);
  fa_navicon_alias = widechar($F0C9);

  fa_neuter = widechar($F22C);

  fa_newspaper_o = widechar($F1EA);

  fa_object_group = widechar($F247);

  fa_object_ungroup = widechar($F248);

  fa_odnoklassniki = widechar($F263);

  fa_odnoklassniki_square = widechar($F264);

  fa_opencart = widechar($F23D);

  fa_openid = widechar($F19B);

  fa_opera = widechar($F26A);

  fa_optin_monster = widechar($F23C);
  fa_outdent = widechar($F03B);

  fa_pagelines = widechar($F18C);

  fa_paint_brush = widechar($F1FC);
  fa_paper_plane = widechar($F1D8);

  fa_paper_plane_o = widechar($F1D9);
  fa_paperclip = widechar($F0C6);

  fa_paragraph = widechar($F1DD);
  fa_paste_alias = widechar($F0EA);
  fa_pause = widechar($F04C);

  fa_pause_circle = widechar($F28B);

  fa_pause_circle_o = widechar($F28C);

  fa_paw = widechar($F1B0);

  fa_paypal = widechar($F1ED);
  fa_pencil = widechar($F040);
  fa_pencil_square = widechar($F14B);
  fa_pencil_square_o = widechar($F044);

  fa_percent = widechar($F295);
  fa_phone = widechar($F095);
  fa_phone_square = widechar($F098);
  fa_photo_alias = widechar($F03E);
  fa_picture_o = widechar($F03E);

  fa_pie_chart = widechar($F200);

  fa_pied_piper_alt = widechar($F1A8);
  fa_pinterest = widechar($F0D2);

  fa_pinterest_p = widechar($F231);
  fa_pinterest_square = widechar($F0D3);
  fa_plane = widechar($F072);
  fa_play = widechar($F04B);
  fa_play_circle = widechar($F144);
  fa_play_circle_o = widechar($F01D);

  fa_plug = widechar($F1E6);
  fa_plus = widechar($F067);
  fa_plus_circle = widechar($F055);
  fa_plus_square = widechar($F0FE);

  fa_plus_square_o = widechar($F196);
  fa_power_off = widechar($F011);
  fa_print = widechar($F02F);

  fa_product_hunt = widechar($F288);
  fa_puzzle_piece = widechar($F12E);

  fa_qq = widechar($F1D6);
  fa_qrcode = widechar($F029);
  fa_question = widechar($F128);
  fa_question_circle = widechar($F059);
  fa_quote_left = widechar($F10D);
  fa_quote_right = widechar($F10E);

  fa_ra_alias = widechar($F1D0);
  fa_random = widechar($F074);

  fa_rebel = widechar($F1D0);

  fa_recycle = widechar($F1B8);

  fa_reddit = widechar($F1A1);
  fa_reddit_alien = widechar($F281);

  fa_reddit_square = widechar($F1A2);
  fa_refresh = widechar($F021);

  fa_registered = widechar($F25D);
  fa_remove_alias = widechar($F00D);
  fa_renren = widechar($F18B);
  fa_reorder_alias = widechar($F0C9);
  fa_repeat = widechar($F01E);
  fa_reply = widechar($F112);
  fa_reply_all = widechar($F122);
  fa_retweet = widechar($F079);
  fa_rmb_alias = widechar($F157);
  fa_road = widechar($F018);
  fa_rocket = widechar($F135);
  fa_rotate_left_alias = widechar($F0E2);
  fa_rotate_right_alias = widechar($F01E);

  fa_rouble_alias = widechar($F158);
  fa_rss = widechar($F09E);
  fa_rss_square = widechar($F143);

  fa_rub = widechar($F158);

  fa_ruble_alias = widechar($F158);
  fa_rupee_alias = widechar($F156);

  fa_safari = widechar($F267);
  fa_save_alias = widechar($F0C7);
  fa_scissors = widechar($F0C4);

  fa_scribd = widechar($F28A);
  fa_search = widechar($F002);
  fa_search_minus = widechar($F010);
  fa_search_plus = widechar($F00E);
  fa_sellsy = widechar($F213);

  fa_send_alias = widechar($F1D8);

  fa_send_o_alias = widechar($F1D9);

  fa_server = widechar($F233);
  fa_share = widechar($F064);

  fa_share_alt = widechar($F1E0);

  fa_share_alt_square = widechar($F1E1);
  fa_share_square = widechar($F14D);
  fa_share_square_o = widechar($F045);

  fa_shekel_alias = widechar($F20B);

  fa_sheqel_alias = widechar($F20B);
  fa_shield = widechar($F132);

  fa_ship = widechar($F21A);
  fa_shirtsinbulk = widechar($F214);

  fa_shopping_bag = widechar($F290);

  fa_shopping_basket = widechar($F291);
  fa_shopping_cart = widechar($F07A);
  fa_sign_in = widechar($F090);
  fa_sign_out = widechar($F08B);
  fa_signal = widechar($F012);

  fa_simplybuilt = widechar($F215);
  fa_sitemap = widechar($F0E8);

  fa_skyatlas = widechar($F216);
  fa_skype = widechar($F17E);

  fa_slack = widechar($F198);

  fa_sliders = widechar($F1DE);

  fa_slideshare = widechar($F1E7);
  fa_smile_o = widechar($F118);

  fa_soccer_ball_o_alias = widechar($F1E3);
  fa_sort = widechar($F0DC);
  fa_sort_alpha_asc = widechar($F15D);
  fa_sort_alpha_desc = widechar($F15E);
  fa_sort_amount_asc = widechar($F160);
  fa_sort_amount_desc = widechar($F161);
  fa_sort_asc = widechar($F0DE);
  fa_sort_desc = widechar($F0DD);
  fa_sort_down_alias = widechar($F0DD);
  fa_sort_numeric_asc = widechar($F162);
  fa_sort_numeric_desc = widechar($F163);
  fa_sort_up_alias = widechar($F0DE);

  fa_soundcloud = widechar($F1BE);

  fa_space_shuttle = widechar($F197);
  fa_spinner = widechar($F110);

  fa_spoon = widechar($F1B1);

  fa_spotify = widechar($F1BC);
  fa_square = widechar($F0C8);
  fa_square_o = widechar($F096);

  fa_stack_exchange = widechar($F18D);
  fa_stack_overflow = widechar($F16C);
  fa_star = widechar($F005);
  fa_star_half = widechar($F089);
  fa_star_half_empty_alias = widechar($F123);
  fa_star_half_full_alias = widechar($F123);
  fa_star_half_o = widechar($F123);
  fa_star_o = widechar($F006);

  fa_steam = widechar($F1B6);

  fa_steam_square = widechar($F1B7);
  fa_step_backward = widechar($F048);
  fa_step_forward = widechar($F051);
  fa_stethoscope = widechar($F0F1);

  fa_sticky_note = widechar($F249);

  fa_sticky_note_o = widechar($F24A);
  fa_stop = widechar($F04D);

  fa_stop_circle = widechar($F28D);

  fa_stop_circle_o = widechar($F28E);

  fa_street_view = widechar($F21D);
  fa_strikethrough = widechar($F0CC);

  fa_stumbleupon = widechar($F1A4);

  fa_stumbleupon_circle = widechar($F1A3);
  fa_subscript = widechar($F12C);

  fa_subway = widechar($F239);
  fa_suitcase = widechar($F0F2);
  fa_sun_o = widechar($F185);
  fa_superscript = widechar($F12B);

  fa_support_alias = widechar($F1CD);
  fa_table = widechar($F0CE);
  fa_tablet = widechar($F10A);
  fa_tachometer = widechar($F0E4);
  fa_tag = widechar($F02B);
  fa_tags = widechar($F02C);
  fa_tasks = widechar($F0AE);

  fa_taxi = widechar($F1BA);

  fa_television = widechar($F26C);

  fa_tencent_weibo = widechar($F1D5);
  fa_terminal = widechar($F120);
  fa_text_height = widechar($F034);
  fa_text_width = widechar($F035);
  fa_th = widechar($F00A);
  fa_th_large = widechar($F009);
  fa_th_list = widechar($F00B);
  fa_thumb_tack = widechar($F08D);
  fa_thumbs_down = widechar($F165);
  fa_thumbs_o_down = widechar($F088);
  fa_thumbs_o_up = widechar($F087);
  fa_thumbs_up = widechar($F164);
  fa_ticket = widechar($F145);
  fa_times = widechar($F00D);
  fa_times_circle = widechar($F057);
  fa_times_circle_o = widechar($F05C);
  fa_tint = widechar($F043);
  fa_toggle_down_alias = widechar($F150);

  fa_toggle_left_alias = widechar($F191);

  fa_toggle_off = widechar($F204);

  fa_toggle_on = widechar($F205);
  fa_toggle_right_alias = widechar($F152);
  fa_toggle_up_alias = widechar($F151);
  fa_trademark = widechar($F25C);

  fa_train = widechar($F238);

  fa_transgender = widechar($F224);

  fa_transgender_alt = widechar($F225);

  fa_trash = widechar($F1F8);
  fa_trash_o = widechar($F014);
  fa_tree = widechar($F1BB);
  fa_trello = widechar($F181);

  fa_tripadvisor = widechar($F262);
  fa_trophy = widechar($F091);
  fa_truck = widechar($F0D1);

  fa_try = widechar($F195);

  fa_tty = widechar($F1E4);
  fa_tumblr = widechar($F173);
  fa_tumblr_square = widechar($F174);

  fa_turkish_lira_alias = widechar($F195);

  fa_tv_alias = widechar($F26C);

  fa_twitch = widechar($F1E8);
  fa_twitter = widechar($F099);
  fa_twitter_square = widechar($F081);
  fa_umbrella = widechar($F0E9);
  fa_underline = widechar($F0CD);
  fa_undo = widechar($F0E2);

  fa_university = widechar($F19C);
  fa_unlink_alias = widechar($F127);
  fa_unlock = widechar($F09C);
  fa_unlock_alt = widechar($F13E);
  fa_unsorted_alias = widechar($F0DC);
  fa_upload = widechar($F093);

  fa_usb = widechar($F287);
  fa_usd = widechar($F155);
  fa_user = widechar($F007);
  fa_user_md = widechar($F0F0);

  fa_user_plus = widechar($F234);

  fa_user_secret = widechar($F21B);

  fa_user_times = widechar($F235);
  fa_users = widechar($F0C0);

  fa_venus = widechar($F221);

  fa_venus_double = widechar($F226);

  fa_venus_mars = widechar($F228);

  fa_viacoin = widechar($F237);
  fa_video_camera = widechar($F03D);

  fa_vimeo = widechar($F27D);

  fa_vimeo_square = widechar($F194);

  fa_vine = widechar($F1CA);
  fa_vk = widechar($F189);
  fa_volume_down = widechar($F027);
  fa_volume_off = widechar($F026);
  fa_volume_up = widechar($F028);
  fa_warning_alias = widechar($F071);

  fa_wechat_alias = widechar($F1D7);
  fa_weibo = widechar($F18A);

  fa_weixin = widechar($F1D7);

  fa_whatsapp = widechar($F232);

  fa_wheelchair = widechar($F193);

  fa_wifi = widechar($F1EB);

  fa_wikipedia_w = widechar($F266);
  fa_windows = widechar($F17A);
  fa_won_alias = widechar($F159);

  fa_wordpress = widechar($F19A);
  fa_wrench = widechar($F0AD);
  fa_xing = widechar($F168);
  fa_xing_square = widechar($F169);

  fa_y_combinator = widechar($F23B);

  fa_y_combinator_square_alias = widechar($F1D4);

  fa_yahoo = widechar($F19E);

  fa_yc_alias = widechar($F23B);

  fa_yc_square_alias = widechar($F1D4);

  fa_yelp = widechar($F1E9);
  fa_yen_alias = widechar($F157);
  fa_youtube = widechar($F167);
  fa_youtube_play = widechar($F16A);
  fa_youtube_square = widechar($F166);

procedure FontAwesomeAssign(aControl: TFmxObject);

implementation

uses
  FMX.Graphics;

procedure FontAwesomeAssign(aControl: TFmxObject);
var
  aTextSettings: ITextSettings;
begin
  if Supports(aControl, ITextSettings, aTextSettings) then
  begin
    aTextSettings.StyledSettings := [];
    aTextSettings.TextSettings.Font.Family := FontAwesomeName;
  end;
end;

end.
