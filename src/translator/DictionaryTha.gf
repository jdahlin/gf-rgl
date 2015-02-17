concrete DictionaryTha of Dictionary = CatTha ** 
  open ParadigmsTha, ResTha, Prelude in {


-- (c) AR 2011-2015 in collaboration with Chotiros Kairoje, under LGPL

flags coding = utf8 ;


oper poss = "ของ" ;

lin above_Prep = ss (thword "ข้าง" "บน") ;
lin after_Prep = ss (thword "หลัง" "จาก") ;
lin all_Predet = {s1 = thword "ทั้ง" "หมด" ; s2 = []} ;
lin almost_AdA, almost_AdN = ss (thword "เกิ" "อบ") ;
lin although_Subj = ss "ถืง" ;
lin always_AdV = ss (thword "เส" "มอ") ; --- pronunciation
lin and_Conj = {s1 = [] ; s2 = "และ"} ;
lin as_CAdv = {s = thword "เท่า" ; p = "กับ"} ; ----
lin at_least_AdN = ss (thword "อย่าง" "น้อย") ;
lin at_most_AdN = ss (thword "อย่าง" "มาก") ;
lin because_Subj = ss (thword "เพ" "ราะ") ;
lin before_Prep = ss "ก่อน" ;
lin behind_Prep = ss "หลัง" ;
lin between_Prep = ss (thword "ระ" "หว่าง") ;
lin both7and_DConj = {s1 = "ทั้ง" ; s2 = "และ"} ;
lin but_PConj = ss "แต่" ;
lin by8agent_Prep = ss [] ;
lin by8means_Prep = ss "ผ่าน" ;
lin can8know_VV = {s = pen_s ; typ = VVPost} ;
lin can_VV = {s = "ได้" ; typ = VVPost} ;
lin during_Prep = ss (thword "ระ" "หว่าง") ;
lin either7or_DConj = {s1 = [] ; s2 = "หริอ"} ; ---- or: mai - ko
lin everybody_NP = mkNP (thword "ทุก" "คน") ;
lin every_Det = quantDet "ทุก" ;
lin everything_NP = mkNP (thword "ทุก" "สิ่ง") ;
lin everywhere_Adv = ss (thword "ทุก" "ที") ;
lin except_Prep = ss (thword "นอก" "จาก") ;
lin few_Det = quantDet (thword "สอง" "สาม") ;
lin for_Prep = ss "ให้" ;
lin from_Prep = ss "จาก" ;
lin have_V2 = mkV2 "มี" ;
lin he_Pron = ss khaw_s ;
lin here_Adv = ss (thword "ที่" "นี่") ;
lin here7to_Adv = ss "ที่นี่" ; ----
lin here7from_Adv = ss (thword "จาก" "นี่") ; ----
lin how_IAdv = ss (thword "อย่าง" "ไร") ;
lin how8many_IDet = quantDet "กี่" ;
lin how8much_IAdv = ss (thword "เท่า" "ไร") ;
lin in8front_Prep = ss "หน้า" ;
lin i_Pronlin = ss chan_s ;
lin if_Subj = ss (thword "ถ้า") ; ---- ... ko
lin if_then_Conj = {s1 = "ถ้า" ; s2 = "ก็"} ; ---- ko between subj and verb
lin in_Prep = ss (thword "ใน") ;
lin it_Pronlin = ss "มัน" ;
lin less_CAdv = {s = "น้อย" ; p = "กว่า"} ;
lin many_Det = quantDet "หลาย" ;
lin more_CAdv = {s = "มาก" ; p = "กว่า"} ;
lin most_Predet = {s1 = thword "มาก" "ที่" "สุด" ; s2 = []} ;
lin much_Det = quantDet "หลาย" ; ---- always?
lin must_VV = {s = tog_s ; typ = VVPre} ;
lin no_Quant = quantDet (thword "ไม่" "มี") ;
lin no_Utt = ss may_s ;
lin nobody_NP = mkNP (thword "ไม่" "มี" "ใคร") ;
lin not_Predet = {s1 = may_s ; s2 = []} ; ----
lin nothing_NP = mkNP "เปล่า" ;
lin on_Prep = ss "บน" ;
lin only_Predet = {s1 = [] ; s2 = thword "เท่า" "นั้น"} ;
lin or_Conj = {s1 = [] ; s2 = "หริอ"} ;
lin otherwise_PConj = ss (thword "ไม่" "อย่าง" "นั้น") ;
lin part_Prep = ss "" ; ----
lin please_Voc = ss "ขอ" ;
lin possess_Prep = ss "ของ" ;
lin quite_Adv = ss (thword "ค่อน" "ข้าง") ;
lin she_Pron = ss "หล่อน" ;
lin so_AdA = ss (thword "ดัง" "นั้น") ;
lin somebody_NP = mkNP (thword "บาง" "คน") ;
lin somePl_Det = quantDet ("บาง") ;
lin someSg_Det = quantDet ("บาง") ;
lin something_NP = mkNP (thword "บาง" "สิ่ง") ;
lin somewhere_Adv = mkAdv (thword "บาง" "แห่ง") ;
lin that_Quant = demDet nan_s ;
lin that_Subj = ss conjThat ;
lin there_Adv = ss (thword "ที่" "นั่น") ;
lin there7to_Adv = ss (thword "ที่" "นั่น") ; ----
lin there7from_Adv = ss (thword "จาก" "นั่น") ; ----
lin therefore_PConj = ss (thword "เพราะ" "ฉะ" "นั้น") ;
lin they_Pron = mkNP (thword "พวก" khaw_s) ; --- mkNP (thword "เขา" "ทั้ง" "หลาย") ;
lin this_Quant = demDet nii_s ;
lin through_Prep = ss "ผ่าน" ;
lin too_AdA = ss (thword "เกิน" "ไป") ;
lin to_Prep = ss "ถืง" ;
lin under_Prep = ss "ใต้" ;
lin very_AdA = ss "มาก" ;
lin want_VV = {s = yaak_s ; typ = VVMid} ;
lin we_Pron = ss raw_s ;
lin whatPl_IP, whatSg_IP = ss (thword "อะ" "ไร") ;
lin when_IAdv = ss (thword "เมื่อไร") ;
lin when_Subj = ss "ที" ;
lin where_IAdv = ss (thword "ที่" "ไหน") ;
lin which_IQuant = demDet "ไหน" ; 
lin whoPl_IP, whoSg_IP = ss "ใคร" ;
lin why_IAdv = ss (thword "ทำ" "ไม") ;
lin without_Prep = ss (thword "ไม่" "มี") ;
lin with_Prep = ss "กับ" ;
lin yes_Utt = ss chay_s ;
lin youSg_Pron = ss khun_s ;
lin youPl_Pron = ss (thword "พวก" khun_s) ;
lin youPol_Pron = ss khun_s ;
lin right_Ord = ss (thword "ขวา") ;
lin left_Ord = ss (thword "ซ้าย") ;
lin add_V3 = mkV3 (mkV "เพิ่ม") ;
lin airplane_N = mkN (thword "เครื่อง" "บิน") "ลำ" ;
lin already_Adv = mkAdv (thword "เรียบ" "ร้อย") ;
lin animal_N = animalN (thword "สัตว์") ;
lin answer_V2S = mkV2S (regV "ตอบ") [] ; ---- prep
lin apartment_N = mkN (thword "ห้อง" "เช่า")"ห้อง" ;
lin apple_N = mkN (thbind "แอป" "เปิ้ล") "ลูก" ;
lin art_N = mkN (thword "ศิล" "ปะ") ;
lin ashes_N = mkN (thword "เถ้า") ;
lin ask_V2Q = regV "ถาม" ** {c2 = []} ;
lin at_Prep = mkPrep "ที่" ;
lin baby_N = mkN (thword "เด็ก" "ทา" "รก") "คน" ;
lin back_N = mkN (thword "หลัง") ;
lin bad_A = mkA (thword "เลว") ;
lin bank_N = placeN (thword "ธนา" "คาร") ;
lin bark_N = mkN (thword "เปลือก") ;
lin beautiful_A = mkA "สวย" ;
lin become_VA = mkV (thword "กลาย" "เป็น") ; -- pen
lin beer_N = mkN biar_s kew_s ; 
lin beg_V2V = regV "ขอ" ** {c2 = [] ; c3 = "ให้"} ; --- hay as prep of VP
lin belly_N = mkN (thword "พุง") ;
lin big_A = mkA (thword "ใหญ่") ;
lin bike_N = mkN (thword "จักร" "ยาน") "คัน" ;
lin bird_N = mkN (thword "นก") "ตัว" ;
lin bite_V2 = mkV2 (thword "กัด") ;
lin black_A = mkA (thword "ดำ") ;
lin blood_N = mkN (thword "เลือด") ;
lin blow_V = mkV (thword "พัด") ;
lin blue_A = mkA (thword "น้ำ" "เงิน") ; --- (thword "สี" "น้ำ" "เงิน") ;
lin boat_N = mkN (thword "เรือ") "ลำ" ;
lin bone_N = mkN (thword "กระ" "ดูก") ;
lin book_N = mkN (thword nag_s svv_s) lem_s ;
lin boot_N = mkN (thword "รอง" "เท้า" "บูท") "คู่";
lin boss_N = mkN (thword "เจ้า" "นาย")" คน" ;
lin boy_N = mkN (thword "เด็ก" "ผู้" "ชาย")" คน";
lin bread_N = mkN (thword "ขนม" "ปัง") "ห่อ" ;
lin break_V2 = mkV2 "แตกหัก" ;
lin breast_N = mkN (thword "หน้า" "อก") ;
lin breathe_V = mkV (thword "หาย" "ใจ") ;
lin broad_A = mkA "กว้าง" ;
lin brother_N2 = mkN2 (personN (thword "พี่" "ชาย")) poss ;
lin brown_A = mkA (thword "สี" "น้ำ" "ตาล") ;
lin burn_V = mkV (thword "เผา") ;
lin butter_N = mkN (thword "เนย") "สด" ; ----?
lin buy_V2 = mkV2 "ซื้อ" ;
lin camera_N = mkN "กล้อง" "ตัว" ;
lin cap_N = mkN "หมวก" ;
lin car_N = mkN "รถ" "คัน" ;
lin carpet_N = mkN "พรม" "ผืน" ;
lin cat_N = mkN "แมว" "ตัว" ;
lin ceiling_N = mkN (thword "เพ" "ดาน") ; ----?
lin chair_N = mkN (thword "เก้า" "อี้") "ตัว" ;
lin cheese_N = mkN (thword "เนย" "แข็ง") "ก้อน" ; 
lin child_N = personN (thword "ลูก") ; --- personN (thword "เด็ก") ;
lin church_N = placeN "โบสถ์" ;
lin city_N = mkN "เมือง" "เมือง" ;
lin clean_A = mkA (thword "ทำ" "ความ" "สะ" "อาด") ;
lin clever_A = mkA "ฉลาด" ;
lin close_V2 = mkV2 (mkV "ปิด") ;
lin cloud_N = mkN (thword "เมฆ") ;
lin coat_N = mkN (thword "เสื้อ" "คลุม") "ตัว" ;
lin cold_A = mkA (thword "หนาว") ;
lin come_V = mkV (thword "มา") ;
lin computer_N = mkN (thword "คอม" "พิว" "เตอร์") "เครื่อง" ;
lin correct_A = mkA (thword "ถูก") ;
lin count_V2 = mkV2 (thword "นับ") ;
lin country_N = placeN (thword "ประ" "เทศ") ;
lin cousin_N = mkN "ญาติ" "คน" ;
lin cow_N = mkN "วัว" "ตัว" ;
lin cut_V2 = mkV2 (thword "ตัด") ;
lin day_N = mkN (thword "กลาง" "วัน") ;
lin die_V = mkV (thword "ตาย") ;
lin dig_V = mkV (thword "ขุด") ;
lin dirty_A = mkA (thword "สก" "ปรก") ;
lin distance_N3 = mkN3 (mkN (thword "ระ" "ยะ" "ทาง")) "จาก" "ถืง" ;
lin do_V2 = mkV2 (mkV "ทำ") ; ----?lin "ทำ" "ทำ" "ทำ" "กำลังทำ") ;
lin doctor_N = mkN "หมอ" "คน";
lin dog_N = animalN (thword "หมา") ;
lin door_N = mkN "ประตู" "บาน" ;
lin drink_V2 = mkV2 (thword "ดื่ม") ;
lin dry_A = mkA (thword "แห้ง") ;
lin dull_A = mkA (thword "ทื่อ") ;
lin dust_N = mkN (thword "ฝุ่น") ;
lin ear_N = mkN (thword "หู") ;
lin earth_N = mkN (thword "โลก") ;
lin easy_A2V = mkA "ง่าย" ** {c2 = []} ; ----?
lin eat_V2 = mkV2 (thword "กิน") ;
lin egg_N = mkN (thword "ไข่") "ฟอง" ;
lin empty_A = mkA (thword "ว่าง" "เปล่า") ;
lin enemy_N = personN (thword "ศัต" "รู") ; ----?
lin eye_N = mkN (thword "ตา") ;
lin factory_N = mkN (thword "โรง" "งาน") "โรง" ;
lin fall_V = mkV (thword "ตก") ;
lin far_Adv = ss (thword "ไกล") ;
lin fat_N = mkN (thword "ไข" "มัน") ;
lin father_N2 = mkN2 (personN (thword "พ่อ")) poss ;
lin fear_N = mkN (thword "ความ" "กลัว") ;
lin fear_V2 = mkV2 "กลัว";
lin fear_VS = mkVS (regV "กลัว") ;
lin feather_N = mkN (thword "ขน" "นก") ;
lin fight_V2 = mkV2 (thword "สู้") ;
lin find_V2 = mkV2 "หา" ;
lin fingernail_N = mkN (thword "เล็บ") ;
lin fire_N = mkN (thword "ไฟ") ;
lin fish_N = animalN (thword "ปลา") ;
lin float_V = mkV (thword "ลอย") ;
lin floor_N = mkN "พื้น" ; ----?
lin flow_V = mkV (thword "ไหล") ;
lin flower_N = mkN (thword "ดอกไม้") "ดอก" ;
lin fly_V = mkV (thword "บิน") ;
lin fog_N = mkN (thword "หมอก") ;
lin foot_N = mkN (thword "เท้า") " ข้าง" ;
----?lin forP = mkPrep "สำหรับ" ;
lin forest_N = placeN (thword "ป่า") ;
lin forget_V2 = mkV2 "ลืม" ;
lin freeze_V = mkV (thword "แข็ง") ;
lin fridge_N = mkN (thword "ตู้" "เย็น") "ตู้" ;
lin friend_N = personN "เพี่อน" ;
lin fruit_N = mkN (thword "ผล" "ไม้") ;
lin full_A = mkA (thword "เต็ม") ;
lin fun_AV = mkA "สนุก" ;
lin garden_N = placeN "สวน" ;
lin girl_N = mkN (thword "เด็ก" "ผู้" "หญิง") "คน" ;
lin give_V3 = mkV3 "ให้" ;
lin glove_N = mkN "ถุง" "มือ" ; ----?
lin go_V = mkV pay_s ;
lin gold_N = mkN "ทอง" ;
lin good_A = mkA "ดี" ;
lin grammar_N = mkN (thword "ไวย" "กรณ์") ; ----?
lin grass_N = mkN "หญ้า" ;
lin green_A = mkA "เขียว" ; --- (thword "สี" "เขียว") ;
lin guts_N = mkN (thword "ไส้") ;
lin hair_N = mkN (thword "ผม") ;
lin hand_N = mkN (thword "มือ") ;
lin harbour_N = placeN (thword "ท่า" "เรือ") ; ----?
lin hat_N = mkN "หมวก" "ใบ" ;
lin hate_V2 = mkV2 "เกลียด" ;
lin head_N = mkN (thword "หัว") ;
lin hear_V2 = mkV2 (thword "ได้" "ยิน") ;
lin heart_N = mkN (thword "ใจ") ;
lin heavy_A = mkA (thword "หนัก") ;
lin hill_N = placeN (thword "เนิน" "เขา") ;
lin hit_V2 = mkV2 (thword "ตี") ;
lin hold_V2 = mkV2 (thword "รั้ง") ;
lin hope_VS = mkVS (regV "หวัง") ;
lin horn_N = mkN (thword "เขา") ;
lin horse_N = mkN "ม้า" " ตัว" ;
lin hot_A = mkA "ร้อน" ;
lin house_N = mkN baan_s lag_s ;
lin hunt_V2 = mkV2 (thword "ล่า") ;
lin husband_N = personN (thword "สา" "มี") ;
lin ice_N = mkN (thword "น้ำ" "แข็ง") ;
lin important_A = mkA (thword "สำ" "คัญ") ;
lin industry_N = mkN (thword "อุต" "สาห" "กรรม") ; ----?
lin iron_N = mkN "เหล็ก" ; ----?
lin john_PN = ss "จอห์น" ;
lin jump_V = mkV (thword "กระ" "โดด") ;
lin kill_V2 = mkV2 (thword "ฆ่า") ;
lin king_N = mkN (thword "พระ" "รา" "ชา") (thword "พระ" "องด์") ;
lin knee_N = mkN (thword "เข่า") ;
lin know_V2 = mkV2 "รู้" ; ----?
lin know_VQ = lin VQ (regV "รู้") ;
lin know_VS = lin VS (regV "รู้") ;
lin lake_N = mkN (thword "ทะ" "เล" "สาบ") ; ----?
lin lamp_N = mkN (thword "โคม" "ไฟ") ; ----?
lin language_N = mkN (thword "ภา" "ษา") ; ----?
lin laugh_V = mkV (thword "หัว" "เราะ") ;
lin leaf_N = mkN (thword "ใบ") ;
lin learn_V2 = mkV2 (mkV "เรียน") ;
lin leather_N = mkN (thword "หนัง" "สัตว์") ; ----?
lin leave_V2 = mkV2 "จาก" ;
lin leg_N = mkN (thword "ขา") ;
lin lie_V = mkV (thword "นอน") ;
lin like_V2 = mkV2 (mkV "ชอบ") ;
lin listen_V2 = mkV2 (mkV "ฟัง") ;
lin live_V = mkV (thword "อยู่") ;
lin liver_N = mkN (thword "ตับ") ;
lin long_A = mkA (thword "ยาว") ;
lin lose_V2 = mkV2 "หาย" ;
lin louse_N = animalN (thword "เหา") ;
lin love_N = mkN (thword "ความ" rak_s) ;
lin love_V2 = mkV2 rak_s ;
lin man_N = personN (thword "ชาย") ;
lin married_A2 = mkA2 (mkA (thword "แต่ง" "งาน" "แล้ว")) "กับ" ;
lin meat_N = mkN (thword "เนื้อ") ;
lin milk_N = mkN (thword "นม") kew_s ;
lin moon_N = mkN (thword "พระ" "จันทร์") ;
lin mother_N2 = mkN2 (personN "แม่") poss ;
lin mountain_N = mkN (thword "เขา") ;
lin mouth_N = mkN (thword "ปาก") ;
lin music_N = mkN (thword "ดน" "ตรี") ; ----?
lin name_N = mkN (thword "ชื่อ") ;
lin narrow_A = mkA (thword "แคบ") ;
lin near_A = mkA "ใกล้" ;
lin near_Adv = mkAdv "ใกล้" ;
lin neck_N = mkN (thword "คอ") ;
lin new_A = mkA (thword "ใหม่") ;
lin newspaper_N = mkN (thword "หนัง" "สือ" "พิมพ์") "ฉบับ" ;
lin night_N = mkN (thword "กลาง" "คืน") ;
lin nose_N = mkN (thword "จมูก") ;
lin now_Adv = mkAdv (thword "เดี๋ยว" "นี้") ;
lin number_N = mkN (thword "หมาย" "เลข") ; ----?
lin oil_N = mkN (thword "น้ำมัน") ; ----?
lin old_A = mkA (thword "แก่") ;
lin open_V2 = mkV2 (mkV "เปิด") ;
lin other_A = mkA "อื่น" ;
lin paint_V2A = mkV2A (regV "ทา") [] "สี" ;
lin paper_N = mkN (thword "กระ" "ดาษ") ; ----?
lin paris_PN = ss "ปารีส" ;
lin peace_N = mkN (thword "สัน" "ติ" "ภาพ"); ----?
lin pen_N = mkN (thword "ปาก" "กา") ; ----?
lin person_N = personN (thword "บุค" "คล") ; ----?
lin planet_N = mkN "ดาว" ; ----?
lin plastic_N = mkN (thword "พลาส" "ติค") ; ----?
lin play_V = mkV (thword "เล่น") ;
lin play_V2 = mkV2 (mkV "เล่น") ;
lin policeman_N = mkN (thword "ตำ" "รวจ")"คน" ;
lin priest_N = mkN (thword "นัก" "บวช")"รูป" ;
lin probable_AS = mkA (thword "บาง" "ที") ;
lin pull_V2 = mkV2 (thword "ดึง") ;
lin push_V2 = mkV2 (thword "ผลัก") ;
lin put_V2 = mkV2 "ใส่" ;
lin queen_N = mkN (thword "พระ" "รา" "ชิ" "นี") (thword "พระ" "องค์") ;
lin radio_N = mkN (thword "วิท" "ยุ") "เครื่อง" ;
lin rain_N = mkN (thword "ฝน") ;
lin rain_V0 = mkV (thword "มี" "ฝน") ; ----
lin ready_A = mkA "พร้อม" ;
lin reason_N = verbalN "เหตู" ;
lin read_V2 = mkV2 "อ่าน" ;
lin red_A = mkA "แดง" ; --- (thword "สี" "แดง") ;
lin religion_N = mkN (thword "ศาส" "นา") ; ----?
lin restaurant_N = placeN (thword "ร้าน" "อา" "หาร") ;
lin river_N = mkN (thword "แม่" "น้ำ") ;
lin road_N = mkN (thword "ถนน") ;
lin rock_N = mkN "หิน" ; ----?
lin roof_N = mkN (thword "หลัง" "คา") ; ----?
lin root_N = mkN (thword "ราก") ; ----?
lin rope_N = mkN (thword "เชือก") ; ----?
lin rotten_A = mkA (thword "เน่า") ;
lin round_A = mkA (thword "กลม") ;
lin rub_V2 = mkV2 (thword "ถู") ;
lin rubber_N = mkN "ยาง" ; ----?
lin rule_N = mkN "กฎ" ; ----?
lin run_V = mkV "วิ่ง" ;
lin salt_N = mkN (thword "เกลือ") ;
lin sand_N = mkN (thword "ทราย") ;
lin say_VS = mkVS (regV "พูด") ;
lin school_N = placeN (thword "โรง" "เรียน") ;
----lin science_N = mkN "science" ;lin ----?
lin scratch_V2 = mkV2 (thword "เกา") ;
lin sea_N = mkN (thword "ทะ" "เล") ;
lin see_V2 = mkV2 (thword "เห็น") ;
lin seed_N = mkN (thword "เม็ด") ;
lin seek_V2 = mkV2 "หา" ;
lin sell_V3 = mkV3 "ขาย" ;
lin send_V3 = mkV3 (mkV "ส่ง") [] (thword "ให้" "กับ") ; --- hai kab as prep
lin sew_V = mkV (thword "เย็บ") ;
lin sharp_A = mkA (thword "คม") ;
lin sheep_N = animalN "แกะ" ;
lin ship_N = mkN "เรือ" ; ----?
lin shirt_N = mkN (thword "เสื้อ" "เชิ้ต")"ตัว" ; ----?
lin shoe_N = mkN (thword "รอง" "เท้า") ; ----?
lin shop_N = placeN (thword "ร้าน" "ค้า") ;
lin short_A = mkA (thword "สั้น") ;
lin silver_N = mkN "เงิน" ; ----?
lin sing_V = mkV (thword "ร้อง") ;
lin sister_N = mkN (thword "พี่" "สาว")"คน" ;
lin sit_V = mkV (thword "นั่ง") ;
lin skin_N = mkN (thword "ผิว" "หนัง") ;
lin sky_N = mkN (thword "ฟ้า") ;
lin sleep_V = mkV "นอน" "หลับ" ;
lin small_A = mkA (thword "เล็ก") ;
lin smell_V = mkV (thword "มี" "กลิ่น") ;
lin smoke_N = mkN (thword "ควัน") ;
lin smooth_A = mkA (thword "ละ" "มุน") ;
lin snake_N = animalN (thword "งู") ;
lin snow_N = mkN (thword "หิ" "มะ") ;
lin sock_N = mkN (thword "ถุง" "เท้า") ; ----?
lin song_N = mkN "เพลง" ; ----?
lin speak_V2 = mkV2 "พูด" ;
lin spit_V = mkV (thword "ถ่ม" "น้ำ" "ลาย") ;
lin split_V2 = mkV2 (thword "ผ่า") ;
lin squeeze_V2 = mkV2 (thword "คั้น") ;
lin stab_V2 = mkV2 (thword "แทง") ;
lin stand_V = mkV (thword "ยืน") ;
lin star_N = mkN (thword "ดาว") ;
lin steel_N = mkN "เหล็ก" ; ----?
lin stick_N = mkN (thword "กิ่ง") ;
lin stone_N = mkN (thword "หิน") ;
lin stop_V = mkV "หยุด" ;
lin stove_N = mkN "เตา" ; ----?
lin straight_A = mkA (thword "ตรง") ;
lin student_N = personN (thword "นัก" "ศึก" "ษา") ;
lin stupid_A = mkA "โง่" ;
lin suck_V2 = mkV2 (thword "ดูด") ;
lin sun_N = mkN (thword "พระ" "อา" "ทิตย์") ;
lin swell_V = mkV (thword "บวม") ;
lin swim_V = mkV (thword "ว่าย") ;
lin switch8off_V2 = mkV2 "เปิด" ;
lin switch8on_V2 = mkV2 "ปิด" ;
lin table_N = mkN "โต๊ะ" "ตัว" ; ----?
lin tail_N = mkN (thword "หาง") ; ----?
lin talk_V3 = mkV3 (mkV "พูด") ; ----?
lin teach_V2 = mkV2 "สอน" ;
lin teacher_N = personN "ครู" ;
lin television_N = mkN (thword "ที" "วี")"เครื่อง" ;
lin thick_A = mkA (thword "หนา") ;
lin thin_A = mkA (thword "บาง") ;
lin think_V = mkV (thword "คิด") ;
lin throw_V2 = mkV2 (thword "ขว้าง") ;
lin tie_V2 = mkV2 (thword "ผูก") ;
lin today_Adv = ss (thword "วัน" "นี้") ;
lin tongue_N = mkN (thword "ลิ้น") ; ----?
lin tooth_N = mkN (thword "ฟัน") ; ----?
lin train_N = mkN (thword "รถ" "ไฟ") "ขบวน" ;
lin travel_V = mkV "เที่ยว" ;
lin tree_N = mkN (thword "ต้น" "ไม้") ; ----?
lin turn_V = mkV (thword "หัน") ;
lin ugly_A = mkA (thword "น่า" "เกลียด") ;
lin uncertain_A = mkA (thword "ลัง" "เล" "ใจ") ;
lin understand_V2 = mkV2 (mkV (thword "เข้า" "ใจ")) ;
lin university_N = placeN (thword "มหา" "วิท" "ยา" "ลัย") ;
lin village_N = placeN (thword "หมู่" "บ้าน") ;
lin vomit_V = mkV (thword "อ้วก") ;
lin wait_V2 = mkV2 "รอ" ;
lin walk_V = mkV (thword "เดิน") ;
lin war_N = mkN (thword "สง" "คราม") ; ----?
lin warm_A = mkA (thword "อุ่น") ;
lin wash_V2 = mkV2 (thword "ล้าง") ;
lin watch_V2 = mkV2 "ดู" ;
lin water_N = mkN (thword "น้ำ") ; ----?
lin wet_A = mkA (thword "เปียก") ;
lin white_A = mkA (thword "ขาว") ;
lin wide_A = mkA (thword "กว้าง") ;
lin wife_N = personN (thword "เมีย") ;
lin win_V2 = mkV2 "ชนะ" ;
lin wind_N = mkN (thword "ลม") ;
lin window_N = mkN (thword "หน้า" "ต่าง" "บาน") ; ----?
lin wine_N = mkN (thword "เหล้า" "องุ่น") "ขวด" ;
lin wing_N = mkN (thword "ปิก") ;
lin wipe_V2 = mkV2 (thword "เช็ด") ;
lin woman_N = personN (thword "หญิง") ;
lin wonder_VQ = mkVQ (regV (thword "ประ" "หลาด" "ใจ")) ; ----
lin wood_N = mkN "ไม้" ; ----?
lin worm_N = animalN (thword "หนอน") ;
lin write_V2 = mkV2 "เขียน" ;
lin year_N = mkN (thword "ปี") ;
lin yellow_A = mkA "เหลือง" ; ---- (thword "สี" "เหลือง") ;
lin young_A = mkA "รุ่น" ;

}
