soldado = _this select 0; 

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
for "_i" from 1 to 5 do {soldado addItemToUniform "30Rnd_556x45_Stanag";};
soldado addVest "TRYK_V_ArmorVest_Winter";
for "_i" from 1 to 6 do {soldado addItemToVest "30Rnd_556x45_Stanag";};
for "_i" from 1 to 4 do {soldado addItemToVest "9Rnd_45ACP_Mag";};
for "_i" from 1 to 5 do {soldado addItemToVest "rhs_mag_an_m8hc";};
for "_i" from 1 to 4 do {soldado addItemToVest "rhs_mag_m67";};
for "_i" from 1 to 2 do {soldado addItemToVest "MiniGrenade";};
soldado addBackpack "B_Parachute";
soldado addItemToBackpack "MCC_multiTool";
for "_i" from 1 to 5 do {soldado addItemToBackpack "ACE_CableTie";};
soldado addItemToBackpack "ACE_EarPlugs";
for "_i" from 1 to 2 do {soldado addItemToBackpack "ACE_fieldDressing";};
for "_i" from 1 to 3 do {soldado addItemToBackpack "ACE_packingBandage";};
for "_i" from 1 to 2 do {soldado addItemToBackpack "ACE_elasticBandage";};
soldado addItemToBackpack "ACE_tourniquet";
for "_i" from 1 to 2 do {soldado addItemToBackpack "ACE_morphine";};
soldado addItemToBackpack "ACE_epinephrine";
for "_i" from 1 to 5 do {soldado addItemToBackpack "ACE_quikclot";};
soldado addHeadgear "TRYK_H_Helmet_Winter_2";

comment "Add weapons";
soldado addWeapon "rhs_weap_m4";
soldado addPrimaryWeaponItem "RH_spr_mbs";
soldado addPrimaryWeaponItem "rhsusf_acc_anpeq15A";
soldado addPrimaryWeaponItem "rhsusf_acc_compm4";
soldado addWeapon "hgun_ACPC2_F";
soldado addHandgunItem "muzzle_snds_acp";
soldado addWeapon "Binocular";

comment "Add items";
soldado linkItem "ItemMap";
soldado linkItem "ItemCompass";
soldado linkItem "ACE_Altimeter";
soldado linkItem "tf_anprc152_11";
soldado linkItem "ItemGPS";
soldado linkItem "rhsusf_ANPVS_14";

comment "Set identity";
soldado setFace "WhiteHead_11";
soldado setSpeaker "ACE_NoVoice";
