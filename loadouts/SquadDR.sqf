//2ABCT Designated Rifleman

Soldado = _this select 0; 

removeAllWeapons soldado;
removeAllItems soldado;
removeAllAssignedItems soldado;
removeUniform soldado;
removeVest soldado;
removeBackpack soldado;
removeHeadgear soldado;
removeGoggles soldado;

comment "Add containers";
soldado forceAddUniform "TRYK_U_B_TANOCP_R_CombatUniformTshirt";
soldado addItemToUniform "rhsusf_ANPVS_14";
soldado addItemToUniform "rhsusf_patrolcap_ucp";
for "_i" from 1 to 2 do {soldado addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 2 do {soldado addItemToUniform "ACE_packingBandage";};
soldado addItemToUniform "ACE_morphine";
soldado addItemToUniform "ACE_tourniquet";
soldado addItemToUniform "rhs_mag_m18_red";
soldado addVest "TRYK_V_ArmorVest_coyo";
for "_i" from 1 to 11 do {soldado addItemToVest "ACE_morphine";};
for "_i" from 1 to 11 do {soldado addItemToVest "ACE_tourniquet";};
for "_i" from 1 to 10 do {soldado addItemToVest "ACE_fieldDressing";};
for "_i" from 1 to 11 do {soldado addItemToVest "ACE_packingBandage";};
soldado addItemToVest "ACE_salineIV_250";
for "_i" from 1 to 2 do {soldado addItemToVest "11Rnd_45ACP_Mag";};
for "_i" from 1 to 5 do {soldado addItemToVest "rhsusf_20Rnd_762x51_m118_special_Mag";};
soldado addBackpack "TRYK_B_Medbag_OD";
for "_i" from 1 to 20 do {soldado addItemToBackpack "ACE_morphine";};
for "_i" from 1 to 20 do {soldado addItemToBackpack "ACE_fieldDressing";};
for "_i" from 1 to 40 do {soldado addItemToBackpack "ACE_packingBandage";};
for "_i" from 1 to 20 do {soldado addItemToBackpack "ACE_elasticBandage";};
for "_i" from 1 to 4 do {soldado addItemToBackpack "ACE_tourniquet";};
for "_i" from 1 to 15 do {soldado addItemToBackpack "ACE_epinephrine";};
soldado addItemToBackpack "ACE_surgicalKit";
for "_i" from 1 to 3 do {soldado addItemToBackpack "ACE_salineIV";};
for "_i" from 1 to 7 do {soldado addItemToBackpack "ACE_atropine";};
for "_i" from 1 to 5 do {soldado addItemToBackpack "ACE_EarPlugs";};
soldado addItemToBackpack "ACE_bodyBag";
for "_i" from 1 to 3 do {soldado addItemToBackpack "ACE_plasmaIV";};
for "_i" from 1 to 3 do {soldado addItemToBackpack "ACE_bloodIV";};
soldado addItemToBackpack "ACE_personalAidKit";
for "_i" from 1 to 5 do {soldado addItemToBackpack "ACE_quikclot";};
for "_i" from 1 to 2 do {soldado addItemToBackpack "rhsusf_20Rnd_762x51_m118_special_Mag";};
soldado addHeadgear "rhsusf_mich_bare_norotos_alt_tan";

comment "Add weapons";
soldado addWeapon "rhs_weap_m14ebrri";
soldado addPrimaryWeaponItem "rhsusf_acc_anpeq15side";
soldado addPrimaryWeaponItem "optic_AMS";
soldado addPrimaryWeaponItem "bipod_01_F_blk";
soldado addWeapon "hgun_Pistol_heavy_01_F";
soldado addWeapon "Binocular";

comment "Add items";
soldado linkItem "ItemMap";
soldado linkItem "ItemCompass";
soldado linkItem "tf_microdagr";
soldado linkItem "tf_anprc152_31";
soldado linkItem "ItemGPS";
soldado linkItem "TRYK_TAC_SET_NV_TAN";

comment "Set identity";
soldado setFace "WhiteHead_11";
soldado setSpeaker "ACE_NoVoice";
