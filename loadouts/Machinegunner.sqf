comment "Exported from Arsenal by SSG Lucht";
Soldado = _this select 0; 
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
soldado forceAddUniform "rhs_uniform_cu_ocp_patchless";
for "_i" from 1 to 6 do {soldado addItemToUniform "AGM_Bandage";};
soldado addItemToUniform "AGM_Morphine";
soldado addItemToUniform "AGM_EarBuds";
for "_i" from 1 to 2 do {soldado addItemToUniform "SmokeShell";};
soldado addItemToUniform "SmokeShellBlue";
soldado addItemToUniform "RH_15Rnd_9x19_M9";
soldado addVest "rhsusf_iotv_ocp_Squadleader";
soldado addItemToVest "RH_15Rnd_9x19_M9";
soldado addItemToVest "rhs_mag_mk84";
soldado addItemToVest "HandGrenade";
soldado addItemToVest "rhsusf_100Rnd_762x51";
soldado addBackpack "B_Kitbag_cbr";
soldado addItemToBackpack "rhsusf_ANPVS_14";
for "_i" from 1 to 3 do {soldado addItemToBackpack "rhsusf_100Rnd_762x51";};
soldado addHeadgear "rhsusf_ach_helmet_ocp";
soldado addGoggles "G_Lowprofile";

comment "Add weapons";
soldado addWeapon "rhs_weap_m240B";
soldado addPrimaryWeaponItem "rhsusf_acc_ELCAN";
soldado addWeapon "RH_m9";

comment "Add items";
soldado linkItem "ItemMap";
soldado linkItem "ItemCompass";
soldado linkItem "ItemWatch";
soldado linkItem "tf_rf7800str_1";

comment "Set identity";
soldado setFace "WhiteHead_06";
soldado setSpeaker "Male01ENGVR";