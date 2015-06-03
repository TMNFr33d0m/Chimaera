Soldado = _this select 0; 

comment "Exported from Arsenal by CW3 Ambrosino";

comment "Remove existing items";
removeAllWeapons Soldado;
removeAllItems Soldado;
removeAllAssignedItems Soldado;
removeUniform Soldado;
removeVest Soldado;
removeBackpack Soldado;
removeHeadgear Soldado;
removeGoggles Soldado;

comment "Add containers";
Soldado forceAddUniform "TRYK_U_B_Snowt";
for "_i" from 1 to 4 do {Soldado addItemToUniform "16Rnd_9x21_Mag";};
for "_i" from 1 to 4 do {Soldado addItemToUniform "rhs_mag_m67";};
Soldado addVest "TRYK_V_ArmorVest_Winter";
Soldado addItemToVest "MCC_multiTool";
for "_i" from 1 to 5 do {Soldado addItemToVest "ACE_CableTie";};
Soldado addItemToVest "ACE_EarPlugs";
for "_i" from 1 to 5 do {Soldado addItemToVest "ACE_fieldDressing";};
for "_i" from 1 to 5 do {Soldado addItemToVest "ACE_packingBandage";};
for "_i" from 1 to 5 do {Soldado addItemToVest "ACE_elasticBandage";};
Soldado addItemToVest "ACE_tourniquet";
for "_i" from 1 to 2 do {Soldado addItemToVest "ACE_morphine";};
Soldado addItemToVest "ACE_epinephrine";
for "_i" from 1 to 5 do {Soldado addItemToVest "ACE_quikclot";};
for "_i" from 1 to 5 do {Soldado addItemToVest "rhs_mag_an_m8hc";};
for "_i" from 1 to 2 do {Soldado addItemToVest "MiniGrenade";};
Soldado addItemToVest "rhsusf_100Rnd_762x51";
Soldado addBackpack "TRYK_B_Coyotebackpack_WH";
for "_i" from 1 to 2 do {Soldado addItemToBackpack "rhsusf_100Rnd_762x51";};
for "_i" from 1 to 2 do {Soldado addItemToBackpack "rhsusf_100Rnd_762x51_m80a1epr";};
for "_i" from 1 to 2 do {Soldado addItemToBackpack "rhsusf_100Rnd_762x51_m993";};
Soldado addHeadgear "TRYK_H_Helmet_Winter_2";
Soldado addGoggles "G_Lowprofile";

comment "Add weapons";
Soldado addWeapon "rhs_weap_m240B";
Soldado addPrimaryWeaponItem "rhsusf_acc_ACOG2";
Soldado addWeapon "hgun_Rook40_F";
Soldado addHandgunItem "muzzle_snds_L";
Soldado addWeapon "Binocular";

comment "Add items";
Soldado linkItem "ItemMap";
Soldado linkItem "ItemCompass";
Soldado linkItem "ACE_Altimeter";
Soldado linkItem "tf_anprc152_9";
Soldado linkItem "ItemGPS";
Soldado linkItem "rhsusf_ANPVS_14";

comment "Set identity";
Soldado setFace "WhiteHead_11";
Soldado setSpeaker "ACE_NoVoice";

