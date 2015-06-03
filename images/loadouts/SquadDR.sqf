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
for "_i" from 1 to 3 do {Soldado addItemToUniform "rhsusf_20Rnd_762x51_m118_special_Mag";};
Soldado addItemToUniform "rhs_mag_an_m8hc";
Soldado addVest "TRYK_V_ArmorVest_Winter";
for "_i" from 1 to 4 do {Soldado addItemToVest "9Rnd_45ACP_Mag";};
for "_i" from 1 to 3 do {Soldado addItemToVest "rhsusf_20Rnd_762x51_m993_Mag";};
for "_i" from 1 to 4 do {Soldado addItemToVest "rhs_mag_m67";};
for "_i" from 1 to 5 do {Soldado addItemToVest "rhs_mag_an_m8hc";};
for "_i" from 1 to 2 do {Soldado addItemToVest "MiniGrenade";};
Soldado addItemToVest "rhsusf_20Rnd_762x51_m118_special_Mag";
Soldado addBackpack "TRYK_B_Coyotebackpack_WH";
Soldado addItemToBackpack "MCC_multiTool";
Soldado addItemToBackpack "ACE_MapTools";
Soldado addItemToBackpack "ACE_microDAGR";
Soldado addItemToBackpack "ACE_UAVBattery";
Soldado addItemToBackpack "ACE_ATragMX";
for "_i" from 1 to 5 do {Soldado addItemToBackpack "ACE_CableTie";};
Soldado addItemToBackpack "ACE_EarPlugs";
Soldado addItemToBackpack "ACE_Kestrel4500";
for "_i" from 1 to 5 do {Soldado addItemToBackpack "ACE_fieldDressing";};
for "_i" from 1 to 5 do {Soldado addItemToBackpack "ACE_packingBandage";};
for "_i" from 1 to 5 do {Soldado addItemToBackpack "ACE_elasticBandage";};
Soldado addItemToBackpack "ACE_tourniquet";
for "_i" from 1 to 2 do {Soldado addItemToBackpack "ACE_morphine";};
Soldado addItemToBackpack "ACE_epinephrine";
for "_i" from 1 to 5 do {Soldado addItemToBackpack "ACE_quikclot";};
for "_i" from 1 to 3 do {Soldado addItemToBackpack "rhsusf_20Rnd_762x51_m993_Mag";};
for "_i" from 1 to 3 do {Soldado addItemToBackpack "rhsusf_20Rnd_762x51_m118_special_Mag";};
Soldado addHeadgear "TRYK_H_Helmet_Winter_2";

comment "Add weapons";
Soldado addWeapon "rhs_weap_m14ebrri";
Soldado addPrimaryWeaponItem "rhsusf_acc_anpeq15A";
Soldado addPrimaryWeaponItem "RH_m3lr";
Soldado addPrimaryWeaponItem "rhsusf_acc_harris_bipod";
Soldado addWeapon "hgun_ACPC2_F";
Soldado addHandgunItem "muzzle_snds_acp";
Soldado addWeapon "Rangefinder";

comment "Add items";
Soldado linkItem "ItemMap";
Soldado linkItem "ItemCompass";
Soldado linkItem "ACE_Altimeter";
Soldado linkItem "tf_anprc152_2";
Soldado linkItem "ItemGPS";
Soldado linkItem "rhsusf_ANPVS_14";

comment "Set identity";
Soldado setFace "WhiteHead_11";
Soldado setSpeaker "ACE_NoVoice";

