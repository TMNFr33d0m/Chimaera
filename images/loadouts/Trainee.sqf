//2ABCT Trainee

Soldado = _this select 0; 

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
soldado addItemToUniform "AGM_EarBuds";
soldado addVest "TRYK_V_ArmorVest_Winter";
soldado addHeadgear "rhsusf_mich_bare_norotos_alt_tan";
soldado addGoggles "G_Lowprofile";

comment "Add weapons";
soldado addWeapon "rhs_weap_m4a1_grip";
soldado addPrimaryWeaponItem "AGM_muzzle_mzls_H";

comment "Add items";
soldado linkItem "ItemMap";
soldado linkItem "ItemCompass";
soldado linkItem "ItemWatch";
soldado linkItem "tf_anprc152";

comment "Set identity";
soldado setFace "WhiteHead_07";
soldado setSpeaker "Male01ENGVR";
