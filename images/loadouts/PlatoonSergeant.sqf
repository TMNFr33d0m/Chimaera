//2ABCT Platoon Sergeant

Soldado = _this select 0; 

comment "Exported from Arsenal by SSG Salazar";

comment "Remove existing items";
removeAllWeapons soldado;
removeAllItems soldado;
removeAllAssignedItems soldado;
removeUniform soldado;
removeVest soldado;
removeBackpack soldado;
removeHeadgear soldado;
removeGoggles soldado;

comment "Add containers";
soldado forceAddUniform "TRYK_U_B_Snowt";
soldado addItemToUniform "rhsusf_ANPVS_14";
soldado addItemToUniform "rhsusf_patrolcap_ucp";
for "_i" from 1 to 2 do {soldado addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 2 do {soldado addItemToUniform "ACE_packingBandage";};
soldado addItemToUniform "ACE_morphine";
soldado addItemToUniform "ACE_tourniquet";
soldado addItemToUniform "rhs_mag_m18_red";
soldado addVest "TRYK_V_ArmorVest_Winter";
soldado addItemToVest "9Rnd_45ACP_Mag";
for "_i" from 1 to 11 do {soldado addItemToVest "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
soldado addBackpack "TRYK_B_Coyotebackpack_WH";
for "_i" from 1 to 2 do {soldado addItemToBackpack "ACE_CableTie";};
soldado addItemToBackpack "ACE_EarPlugs";
for "_i" from 1 to 2 do {soldado addItemToBackpack "ACE_fieldDressing";};
for "_i" from 1 to 2 do {soldado addItemToBackpack "ACE_packingBandage";};
for "_i" from 1 to 2 do {soldado addItemToBackpack "ACE_elasticBandage";};
for "_i" from 1 to 2 do {soldado addItemToBackpack "ACE_tourniquet";};
soldado addItemToBackpack "ACE_morphine";
soldado addItemToBackpack "ACE_atropine";
soldado addItemToBackpack "ACE_epinephrine";
for "_i" from 1 to 2 do {soldado addItemToBackpack "ACE_quikclot";};
soldado addItemToBackpack "ACE_personalAidKit";
for "_i" from 1 to 3 do {soldado addItemToBackpack "HandGrenade";};
for "_i" from 1 to 3 do {soldado addItemToBackpack "MiniGrenade";};
for "_i" from 1 to 3 do {soldado addItemToBackpack "SmokeShell";};
soldado addItemToBackpack "SmokeShellYellow";
for "_i" from 1 to 3 do {soldado addItemToBackpack "SmokeShellRed";};
for "_i" from 1 to 3 do {soldado addItemToBackpack "SmokeShellGreen";};
soldado addItemToBackpack "SmokeShellPurple";
soldado addItemToBackpack "SmokeShellBlue";
soldado addItemToBackpack "SmokeShellOrange";
for "_i" from 1 to 3 do {soldado addItemToBackpack "ACE_M84";};
soldado addHeadgear "TRYK_H_Helmet_Winter_2";

comment "Add weapons";
soldado addWeapon "rhs_weap_m4a1_carryhandle_pmag";
soldado addPrimaryWeaponItem "RH_qdss_nt4_wdl";
soldado addPrimaryWeaponItem "rhsusf_acc_anpeq15side";
soldado addPrimaryWeaponItem "rhsusf_acc_compm4";
soldado addWeapon "hgun_ACPC2_F";
soldado addWeapon "Binocular";

comment "Add items";
soldado linkItem "ItemMap";
soldado linkItem "ItemCompass";
soldado linkItem "ItemWatch";
soldado linkItem "tf_anprc152_3";
soldado linkItem "ItemGPS";
soldado linkItem "rhsusf_ANPVS_14";

comment "Set identity";
soldado setFace "WhiteHead_11";
soldado setSpeaker "ACE_NoVoice";
