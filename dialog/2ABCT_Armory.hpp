class DRI_2ABCT_Armory
{
    idd = 420;
	movingEnable = true;
	enableSimulation = true;
	
class Controls
{ 

////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT START (by PFC Salazar, v1.063, #Vesyky)
////////////////////////////////////////////////////////

class Loadout_2ABCT_Frame: RscFrame
{
	idc = 1800;
	text = "5SFG Armory"; //--- ToDo: Localize;
	x = 0.270867 * safezoneW + safezoneX;
	y = 0.224978 * safezoneH + safezoneY;
	w = 0.458265 * safezoneW;
	h = 0.550044 * safezoneH;
	colorBackground[] = {1,0.1,0.1,0.8};
	colorActive[] = {1,0.1,0.1,0.8};
};
class Unit_Selector: RscCombo
{
	idc = 2100;
	text = "Unit Selector"; //--- ToDo: Localize;
	x = 0.276596 * safezoneW + safezoneX;
	y = 0.654012 * safezoneH + safezoneY;
	w = 0.17185 * safezoneW;
	h = 0.0330027 * safezoneH;
	onLBSelChanged = "_this call DRI_2ABCT_handleRoleClick";
};
class Logo_2ABCT: RscPicture
{
	idc = 1200;
	text = "images\Armory_Sign.jpg";
	x = 0.276596 * safezoneW + safezoneX;
	y = 0.279982 * safezoneH + safezoneY;
	w = 0.160393 * safezoneW;
	h = 0.330027 * safezoneH;
};
class Loadout_List: RscListbox
{
	idc = 1500;
	text = "Loadout List"; //--- ToDo: Localize;
	x = 0.459902 * safezoneW + safezoneX;
	y = 0.279982 * safezoneH + safezoneY;
	w = 0.257774 * safezoneW;
	h = 0.484039 * safezoneH;
	onLBDblClick = "_this spawn DRI_2ABCT_handleClick";
};
class RoleSelectText: RscText
{
	idc = 1000;
	text = "1) Select Element:"; //--- ToDo: Localize;
	x = 0.276596 * safezoneW + safezoneX;
	y = 0.62101 * safezoneH + safezoneY;
	w = 0.108838 * safezoneW;
	h = 0.0220018 * safezoneH;
	tooltip = "Select your element for loadout options"; //--- ToDo: Localize;
};
class selectloadouttext: RscText
{
	idc = 1001;
	text = "2) Select Loadout (Double Click):"; //--- ToDo: Localize;
	x = 0.459902 * safezoneW + safezoneX;
	y = 0.235979 * safezoneH + safezoneY;
	w = 0.217676 * safezoneW;
	h = 0.0440035 * safezoneH;
	tooltip = "Select a loadout for your element by double clicking the role your desire to equip."; //--- ToDo: Localize;
};
class ExitButton: RscButton
{
	idc = 1600;
	text = "Close Loadout Module"; //--- ToDo: Localize;
	x = 0.305237 * safezoneW + safezoneX;
	y = 0.709017 * safezoneH + safezoneY;
	w = 0.120295 * safezoneW;
	h = 0.0550044 * safezoneH;
	action= "closeDialog 0"; 
};
////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT END
////////////////////////////////////////////////////////

};

}; 
