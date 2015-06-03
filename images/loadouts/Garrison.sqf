soldado = _this select 0; 

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
soldado forceAddUniform "rhs_uniform_cu_ucp_patchless";
soldado addItemToUniform "AGM_EarBuds";
soldado addHeadgear "rhsusf_patrolcap_ucp";

comment "Add weapons";

comment "Add items";
soldado linkItem "ItemMap";
soldado linkItem "ItemCompass";
soldado linkItem "ItemWatch";
soldado linkItem "tf_anprc152_6";
soldado linkItem "ItemAndroid";

comment "Set identity";
soldado setFace "WhiteHead_06";
soldado setSpeaker "Male01ENGVR";

