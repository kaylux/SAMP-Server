
#include <a_samp>



/*
__________________________________V2.6______________________________________________
-------------Please note all changes in the script with this format-----------------
Name - the updates you did  - Date/Time and Timezone.

migration to MySQL database - 5. November 2009
------------------------------------------------------------------------------------
*/


new PlayerDualWatching[MAX_PLAYERS];
new InventationSent[MAX_PLAYERS];
new Inventation[MAX_PLAYERS];
new DualRoom1price;
new DualRoom1;
new DualRoom2price;
new DualRoom2;
new DualRoom3price;
new DualRoom3;
new DualRoom4price;
new DualRoom4;
new WeaponDualRoom1;
new WeaponDualRoom2;
new WeaponDualRoom3;
new WeaponDualRoom4;
new InDual[MAX_PLAYERS];
new Inventationprice[MAX_PLAYERS];
forward inventationremove(playerid);
forward CountDown(playerid, seconds);

public CountDown(playerid, seconds)
{
	new string[256];
	if(seconds > 0)
	{
	    new Float:X, Float:Y, Float:Z;
	    GetPlayerPos(playerid, X, Y, Z);
	    PlayerPlaySound(playerid, 1056, X, Y, Z);
	    format(string, sizeof(string), "~R~%d", seconds);
	    GameTextForPlayer(playerid, string, 1000, 3);
	    seconds = seconds -1;
	    SetTimerEx("CountDown", 1000, 0, "ii", playerid, seconds);
	    return 1;
	}
	if(seconds == 0)
	{
	    new Float:X, Float:Y, Float:Z;
	    GetPlayerPos(playerid, X, Y, Z);
	    PlayerPlaySound(playerid, 1057, X, Y, Z);
	    GameTextForPlayer(playerid, "~G~Start!!!", 1000, 3);
	    TogglePlayerControllable(playerid, 1);
	    return 1;
	}
	return 1;
}

public inventationremove(playerid)
{
	if(InDual[playerid] == 0)
	{

	

		Inventation[InventationSent[playerid]] = -1;
		InventationSent[playerid] = -1;
		if(DualRoom1 == playerid)
		{
		    DualRoom1 = -1;
		}
		if(DualRoom2 == playerid)
		{
	        DualRoom2 = -1;
		}
		if(DualRoom3 == playerid)
		{
	        DualRoom3 = -1;
		}
		if(DualRoom3 == playerid)
		{
	        DualRoom4 = -1;
		}
		return 1;
	}
	return 1;
}

#define COLOR_ACTIVEBORDER 0xB4B4B4FF
#define COLOR_ACTIVECAPTION 0x99B4D1FF
#define COLOR_ACTIVECAPTIONTEXT 0x000000FF
#define COLOR_ALICEBLUE 0xF0F8FFFF
#define COLOR_ANTIQUEWHITE 0xFAEBD7FF
#define COLOR_APPWORKSPACE 0xABABABFF
#define COLOR_AQUA 0x00FFFFFF
#define COLOR_AQUAMARINE 0x7FFFD4FF
#define COLOR_AZURE 0xF0FFFFFF
#define COLOR_BEIGE 0xF5F5DCFF
#define COLOR_BISQUE 0xFFE4C4FF
#define COLOR_BLACK 0x000000FF
#define COLOR_BLANCHEDALMOND 0xFFEBCDFF
#define COLOR_BLUE 0x0000FFFF
#define COLOR_BLUEVIOLET 0x8A2BE2FF
#define COLOR_BROWN 0xA52A2AFF
#define COLOR_BURLYWOOD 0xDEB887FF
#define COLOR_DARKORCHID 0xF0F0F0FF
#define COLOR_BUTTONHIGHLIGHT 0xFFFFFFFF
#define COLOR_BUTTONSHADOW 0xA0A0A0FF
#define COLOR_CADETBLUE 0x5F9EA0FF
#define COLOR_CHARTREUSE 0x7FFF00FF
#define COLOR_CHOCOLATE 0xD2691EFF
#define COLOR_CONTROL 0xF0F0F0FF
#define COLOR_CONTROLDARK 0xA0A0A0FF
#define COLOR_CONTROLDARKDARK 0x696969FF
#define COLOR_CONTROLLIGHT 0xE3E3E3FF
#define COLOR_CONTROLLIGHTLIGHT 0xFFFFFFFF
#define COLOR_CONTROLTEXT 0x000000FF
#define COLOR_CORAL 0xFF7F50FF
#define COLOR_CORNFLOWERBLUE 0x6495EDFF
#define COLOR_CORNSILK 0xFFF8DCFF
#define COLOR_CRIMSON 0xDC143CFF
#define COLOR_CYAN 0x00FFFFFF
#define COLOR_DARKBLUE 0x00008BFF
#define COLOR_DARKCYAN 0x008B8BFF
#define COLOR_DARKGOLDENROD 0xB8860BFF
#define COLOR_DARKGRAY 0xA9A9A9FF
#define COLOR_DARKGREEN 0x006400FF
#define COLOR_DARKKHAKI 0xBDB76BFF
#define COLOR_DARKMAGENTA 0x8B008BFF
#define COLOR_DARKOLIVEGREEN 0x556B2FFF
#define COLOR_DARKORANGE 0xFF8C00FF

#define RED 0x8B0000FF

#define COLOR_DARKRED 0x8B0000FF
#define COLOR_DARKSALMON 0xE9967AFF
#define COLOR_DARKSEAGREEN 0x8FBC8BFF
#define COLOR_DARKSLATEBLUE 0x483D8BFF
#define COLOR_DARKSLATEGRAY 0x2F4F4FFF
#define COLOR_DARKTURQUOISE 0x00CED1FF
#define COLOR_DARKVIOLET 0x9400D3FF
#define COLOR_DEEPPINK 0xFF1493FF
#define COLOR_DEEPSKYBLUE 0x00BFFFFF
#define COLOR_DESKTOP 0x000000FF
#define COLOR_DIMGRAY 0x696969FF
#define RED 0x1E90FFFF
#define GREEN 0xB22222FF
#define COLOR_FLORALWHITE 0xFFFAF0FF
#define COLOR_FORESTGREEN 0x228B22FF
#define COLOR_FUCHSIA 0xFF00FFFF
#define COLOR_GAINSBORO 0xDCDCDCFF
#define COLOR_GHOSTWHITE 0xF8F8FFFF
#define COLOR_GOLD 0xFFD700FF
#define COLOR_GOLDENROD 0xDAA520FF
#define COLOR_GRADIENTACTIVECAPTION 0xB9D1EAFF
#define COLOR_GRADIENTINACTIVECAPTION 0xD7E4F2FF
#define COLOR_GRAY 0x808080FF
#define COLOR_GRAYTEXT 0x808080FF
#define COLOR_GREEN 0x008000FF
#define COLOR_GREENYELLOW 0xADFF2FFF
#define COLOR_HIGHLIGHT 0x3399FFFF
#define COLOR_HIGHLIGHTTEXT 0xFFFFFFFF
#define COLOR_HONEYDEW 0xF0FFF0FF
#define COLOR_HOTPINK 0xFF69B4FF
#define COLOR_HOTTRACK 0x0066CCFF
#define COLOR_INACTIVEBORDER 0xF4F7FCFF
#define COLOR_INACTIVECAPTION 0xBFCDDBFF
#define COLOR_INACTIVECAPTIONTEXT 0x434E54FF
#define COLOR_INDIANRED 0xCD5C5CFF
#define COLOR_INDIGO 0x4B0082FF
#define COLOR_INFO 0xFFFFE1FF
#define COLOR_INFOTEXT 0x000000FF
#define COLOR_IVORY 0xFFFFF0FF
#define COLOR_KHAKI 0xF0E68CFF
#define COLOR_LAVENDER 0xE6E6FAFF
#define COLOR_LAVENDERBLUSH 0xFFF0F5FF
#define COLOR_LAWNGREEN 0x7CFC00FF
#define COLOR_LEMONCHIFFON 0xFFFACDFF
#define COLOR_LIGHTBLUE 0xADD8E6FF
#define COLOR_LIGHTCORAL 0xF08080FF
#define COLOR_LIGHTCYAN 0xE0FFFFFF
#define COLOR_LIGHTGOLDENRODYELLOW 0xFAFAD2FF
#define COLOR_LIGHTGRAY 0xD3D3D3FF
#define COLOR_LIGHTGREEN 0x90EE90FF
#define COLOR_LIGHTPINK 0xFFB6C1FF
#define COLOR_LIGHTSALMON 0xFFA07AFF
#define COLOR_LIGHTSEAGREEN 0x20B2AAFF
#define COLOR_LIGHTSKYBLUE 0x87CEFAFF
#define COLOR_LIGHTSLATEGRAY 0x778899FF
#define COLOR_LIGHTSTEELBLUE 0xB0C4DEFF
#define COLOR_LIGHTYELLOW 0xFFFFE0FF
#define COLOR_LIME 0x00FF00FF
#define COLOR_LIMEGREEN 0x32CD32FF
#define COLOR_LINEN 0xFAF0E6FF
#define COLOR_MAGENTA 0xFF00FFFF
#define COLOR_MAROON 0x800000FF
#define COLOR_MEDIUMAQUAMARINE 0x66CDAAFF
#define COLOR_MEDIUMBLUE 0x0000CDFF
#define COLOR_MEDIUMORCHID 0xBA55D3FF
#define COLOR_MEDIUMPURPLE 0x9370DBFF
#define COLOR_MEDIUMSEAGREEN 0x3CB371FF
#define COLOR_MEDIUMSLATEBLUE 0x7B68EEFF
#define COLOR_MEDIUMSPRINGGREEN 0x00FA9AFF
#define COLOR_MEDIUMTURQUOISE 0x48D1CCFF
#define COLOR_MEDIUMVIOLETRED 0xC71585FF
#define COLOR_MENU 0xF0F0F0FF
#define COLOR_MENUBAR 0xF0F0F0FF
#define COLOR_MENUHIGHLIGHT 0x3399FFFF
#define COLOR_MENUTEXT 0x000000FF
#define COLOR_MIDNIGHTBLUE 0x191970FF
#define COLOR_MINTCREAM 0xF5FFFAFF
#define COLOR_MISTYROSE 0xFFE4E1FF
#define COLOR_MOCCASIN 0xFFE4B5FF
#define COLOR_NAVAJOWHITE 0xFFDEADFF
#define COLOR_NAVY 0x000080FF
#define COLOR_OLDLACE 0xFDF5E6FF
#define COLOR_OLIVE 0x808000FF
#define COLOR_OLIVEDRAB 0x6B8E23FF
#define COLOR_ORANGE 0xFFA500FF
#define COLOR_ORANGERED 0xFF4500FF
#define COLOR_ORCHID 0xDA70D6FF
#define COLOR_PALEGOLDENROD 0xEEE8AAFF
#define COLOR_PALEGREEN 0x98FB98FF
#define COLOR_PALETURQUOISE 0xAFEEEEFF
#define COLOR_PALEVIOLETRED 0xDB7093FF
#define COLOR_PAPAYAWHIP 0xFFEFD5FF
#define COLOR_PEACHPUFF 0xFFDAB9FF
#define COLOR_PERU 0xCD853FFF
#define COLOR_PINK 0xFFC0CBFF
#define COLOR_PLUM 0xDDA0DDFF
#define COLOR_POWDERBLUE 0xB0E0E6FF
#define COLOR_PURPLE 0x800080FF
#define COLOR_RED 0xFF0000FF
#define COLOR_ROSYBROWN 0xBC8F8FFF
#define COLOR_ROYALBLUE 0x4169E1FF
#define COLOR_SADDLEBROWN 0x8B4513FF
#define COLOR_SALMON 0xFA8072FF
#define COLOR_SANDYBROWN 0xF4A460FF
#define COLOR_SCROLLBAR 0xC8C8C8FF
#define COLOR_SEAGREEN 0x2E8B57FF
#define COLOR_SEASHELL 0xFFF5EEFF
#define COLOR_SIENNA 0xA0522DFF
#define COLOR_SILVER 0xC0C0C0FF
#define COLOR_SKYBLUE 0x87CEEBFF
#define COLOR_SLATEBLUE 0x6A5ACDFF
#define COLOR_SLATEGRAY 0x708090FF
#define COLOR_SNOW 0xFFFAFAFF
#define COLOR_SPRINGGREEN 0x00FF7FFF
#define COLOR_STEELBLUE 0x4682B4FF
#define COLOR_TAN 0xD2B48CFF
#define COLOR_TEAL 0x008080FF
#define COLOR_THISTLE 0xD8BFD8FF
#define COLOR_TOMATO 0xFF6347FF
#define COLOR_TRANSPARENT 0xFFFFFF00
#define COLOR_TURQUOISE 0x40E0D0FF
#define COLOR_VIOLET 0xEE82EEFF
#define COLOR_WHEAT 0xF5DEB3FF
#define COLOR_WHITE 0xFFFFFFFF
#define COLOR_WHITESMOKE 0xF5F5F5FF
#define COLOR_WINDOW 0xFFFFFFFF
#define COLOR_WINDOWFRAME 0x646464FF
#define COLOR_WINDOWTEXT 0x000000FF
#define COLOR_YELLOW 0xFFFF00FF
#define COLOR_YELLOWGREEN 0x9ACD32FF
#define dcmd(%1,%2,%3) if ((strcmp((%3)[1], #%1, true, (%2)) == 0) && ((((%3)[(%2) + 1] == 0) && (dcmd_%1(playerid, "")))||(((%3)[(%2) + 1] == 32) && (dcmd_%1(playerid, (%3)[(%2) + 2]))))) return 1
#define COLOR_LIGHTBROWN 0x996A5AAA
#define strrest
#define NOCP 0
#define LSPDHQ1 1
#define GroveHQ1 2
#define MAX_MONEY 3650000
#pragma tabsize 4
//Money drop
#define MoneyLossProcent			10	//the %
#define TimeToDestroyMoneyPickups 	15000 //time
#define MAX_STREAM_OBJECTS 5000
/*x---------------------------------Defining-------------------------------------x*/
//**COLORS*//
#define ADMIN_RED 0xFB0000FF
#define YELLOW 0xFFFF00FF
#define ORANGE 0xF97804FF
#define LIGHTRED 0xFF8080FF
#define LIGHTBLUE 0x00C2ECFF
#define PURPLE 0xB360FDFF
#define PLAYER_COLOR 0xFFFFFFFF
#define BLUE 0x1229FAFF
#define LIGHTGREEN 0x38FF06FF
#define DARKPINK 0xE100E1FF
#define DARKGREEN 0x008040FF
#define ANNOUNCEMENT 0x6AF7E1FF
#define COLOR_SYSTEM 0xEFEFF7AA
#define GREY 0xCECECEFF
#define PINK 0xD52DFFFF
#define DARKGREY    0x626262FF
#define AQUAGREEN   0x03D687FF
#define NICESKY 0x99FFFFAA
#define WHITE 			0xFFFFFFFF
new Text:Logo;
new Text:Wesbite;
new Text:Name;
new Text:Xp;
new LSPDTeam[MAX_PLAYERS];
new GroveTeam[MAX_PLAYERS];
new Spawned[MAX_PLAYERS];
new CurrentMoney[MAX_PLAYERS];
new LastMoney[MAX_PLAYERS];
new CreatedCars[100];
new CreatedCar = 0;
new Classid[MAX_PLAYERS];
new GroveVan1;
new GroveVan2;
new LSPDVan1;
new LSPDVan2;
new PCheckpoint[MAX_PLAYERS];
new Death[MAX_PLAYERS];
new Killer[MAX_PLAYERS];
new Mute[MAX_PLAYERS];
new TeamLSPD;
new TeamGrove;
new AdminOnDuty[MAX_PLAYERS];
new gate1;
new gate2;
new gate4;
new gate5;
new gate6;

//new MapVis[MAX_PLAYERS];
// new adminbartp;
new Menu:spending;
new Menu:Gunsmenu;
new Menu:Tele;
new Menu:Othermenu;
new Report[MAX_PLAYERS];
new NTDS[MAX_PLAYERS];
new NTDSTurnedOff;
new PKOff[MAX_PLAYERS];
new Text:Textdraw0;
new Text:Textdraw1;

//Moving Camera Stuff
#define player_x 1870.8479
#define player_y -1360.4221
#define player_z 19.1406
#define player_angle 154.2901


#define camera_x 1869.3784
#define camera_y -1363.3815
#define camera_z 19.1406

#define moving_speed 50


forward PlayerToPoint(Float:radi,playerid,Float:x,Float:y,Float:z);
forward Announcements(playerid);
forward NTDSstart(playerid);
forward NTDStimer(playerid);
forward HackingDetected(playerid, reason[]);
forward WeaponDetection();
forward MoneyDetection();
forward HealthDetection(playerid);
forward HealthHackSuspection(suspectid);
forward ExitGamemode();
forward OnPlayerTeamPrivmsg( playerid, text[] );
forward OnPlayerPrivmsg( playerid, recieverid, text[] );
forward SendClientMessageToAdmins(color,string[]);
forward SendClientMessageToNorth(color,string[]);
forward SendClientMessageToSouth(color,string[]);
forward spectateofftimer(playerid);
forward ShowStats(playerid,targetid);
forward PlayerToPoint(Float:radi, playerid, Float:x, Float:y, Float:z);
forward Encrypt(string[]);
forward PlayerPlayMusic(playerid);
forward StopMusic();
forward BanLog(string[]);
forward ABroadCast(color,const string[],level);
forward Closegate(playerid);
forward GateClose(playerid);
forward RankTimer();
forward HideRulesS(playerid);
forward Exitxp(killerid);


//===========================
forward IsPlayerAdminCall(playerid);
//forward AntiMoneyCheat();
//forward gametime();
//forward gametime2();
//forward AntiGunCheat();


//Skin textdraws
new Text:GroveSkin1;
new Text:GroveSkin2;
new Text:GroveSkin3;
new Text:GroveSkin4;
new Text:GroveSkin5;

new Text:LSPDSkin1;
new Text:LSPDSkin2;
new Text:LSPDSkin3;
new Text:LSPDSkin4;
new Text:LSPDSkin5;


//health Pickups
new healthpickup0;
new healthpickup1;
new healthpickup2;
new healthpickup3;
new healthpickup4;
new healthpickup5;
new healthpickup6;
new healthpickup7;
new healthpickup8;
new healthpickup9;
new healthpickup10;
new healthpickup11;
new healthpickup12;
new healthpickup13;
new healthpickup14;
new healthpickup15;
new healthpickup16;



PreloadAnimLib(playerid, animlib[])
ApplyAnimation(playerid,animlib,"null",0.0,0,0,0,0,0);

forward ProxDetector(Float:radi, playerid, string[],col1,col2,col3,col4,col5);
new rankcost = 1200;



main()
{
		print("\n----------------------------------");
		print(" Rock Gaming : Gang War ");
		print("----------------------------------\n");

		SetTimer("msg1",30000,false);
}


enum pInfo
{
	bool:SpawnDance,
	Float:SpawnAngle,
	SpawnTimer,
	pSQLId,
	pPassword[128],
	pRank,
	pReborn,
	pExp,
	pVan,
	pKills,
	pTKills,
	pGrenadekill,
	pMp5kill,
	pKnucklekill,
	pDeaths,
	pAdmin,
	pGM,
	pPremium,
	pCash,
	pWarns,
	pMenugoal,
	pHeligoal,
	pArmourgoal,
	pMapgoal,
	pMuted,
	pJail,
	pDrug,
};
new PlayerInfo[MAX_PLAYERS][pInfo];

enum VehicleInfo
{
		vSQLId,
        vModelId,
        Float:vPos_X,
        Float:vPos_Y,
        Float:vPos_Z,
        Float:vPos_A,
        vColor1,
        vColor2,
        vBuyAble,
        vPrice,
        vOwnerId,
};
new vInfo[MAX_VEHICLES][VehicleInfo];

new CCN[][32] =
{
	{"Not Completed"},
	{"Completed"}
};

new gPlayerLogged[MAX_PLAYERS];
new gPlayerAccount[MAX_PLAYERS];

public Exitxp(killerid)
{
    TextDrawHideForPlayer(killerid, Xp);
    return 1;
}


public Closegate(playerid)
{
	MoveObject(gate1,-2595.839599 , 687.406921 , 27.812500,5.0);
	MoveObject(gate2,-2595.835693 , 682.120056 , 27.812500,5.0);
	return 1;
}

public GateClose(playerid)
{
	MoveObject(gate4,-1561.9560546875, 719.0498046875, 7.6137522697449,5.0);
	MoveObject(gate5, -1553.1328125, 718.9375, 7.6137522697449,5.0);
	MoveObject(gate6,-1559.8486328125, 647.451171875, 7.6137522697449,5.0);
	return 1;
}

public spectateofftimer(playerid)
{
	TogglePlayerSpectating(playerid, 0);
	Killer[playerid] = -1;
	Death[playerid] = 0;
	SetPlayerInterior(playerid, 0);
	return 1;
}

public NTDSstart(playerid)
{
	SendClientMessage(playerid, LIGHTGREEN, "[NotimeBot(v1.1)]: Anti-Cheat succesfully started.");
	NTDS[playerid] = SetTimerEx("NTDStimer", 1000, 1,"i", playerid);
	return 1;
}

public NTDStimer(playerid)
{
	if(NTDSTurnedOff == 0)
	{
		if(Report[playerid] == 0)
		{
		    new name[24], string[256];
			GetPlayerName(playerid,name,24);
		    if(GetPlayerSpecialAction(playerid) == SPECIAL_ACTION_USEJETPACK)
		    {
		        format( string, sizeof(string), "[NotimeBot(v1.1)]: Detected a JetPack at %s", name, playerid);
		        SendClientMessageToAdmins(COLOR_PINK, string);
		        SendClientMessageToAdmins(COLOR_PINK, "[NotimeBot(v1.1)]: use /spec [id] to check the situation");
				Report[playerid] = 1;
				return 1;
			}
	  		if(GetPlayerWeapon(playerid) == 38)
		    {
		        format( string, sizeof(string), "[NotimeBot(v1.1)]: Detected a Minigun at %s", name );
		        SendClientMessageToAdmins(COLOR_PINK, string);
		        SendClientMessageToAdmins(COLOR_PINK, "[NotimeBot(v1.1)]: use /spec [id] to check the situation");
				Report[playerid] = 1;
				return 1;
			}
			if(GetPlayerWeapon(playerid) == 36)
		    {
		        format( string, sizeof(string), "[NotimeBot(v1.1)]: Detected a HS Rocket Launcher at %s", name );
		        SendClientMessageToAdmins(COLOR_PINK, string);
		        SendClientMessageToAdmins(COLOR_PINK, "[NotimeBot(v1.1)]: use /spec [id] to check the situation");
				Report[playerid] = 1;
				return 1;
			}
			if(GetPlayerWeapon(playerid) == 10)
		    {
		        format( string, sizeof(string), "[NotimeBot(v1.1)]: Detected a Purple Dildo at %s[id:%d]", name, playerid);
		        SendClientMessageToAdmins(COLOR_PINK, string);
		        SendClientMessageToAdmins(COLOR_PINK, "[NotimeBot(v1.1)]: use /spec [id] to check the situation");
				Report[playerid] = 1;
				return 1;
			}
		    if(GetPlayerWeapon(playerid) == 11)
		    {
		        format( string, sizeof(string), "[NotimeBot(v1.1)]: Detected a Small White Vibrator at %s[id:%d]", name, playerid);
		        SendClientMessageToAdmins(COLOR_PINK, string);
		        SendClientMessageToAdmins(COLOR_PINK, "[NotimeBot(v1.1)]: use /spec [id] to check the situation");
				Report[playerid] = 1;
				return 1;
			}
			if(GetPlayerWeapon(playerid) == 12)
		    {
		        format( string, sizeof(string), "[NotimeBot(v1.1)]: Detected a Large White Vibrator at %s[id:%d]", name, playerid);
		        SendClientMessageToAdmins(COLOR_PINK, string);
		        SendClientMessageToAdmins(COLOR_PINK, "[NotimeBot(v1.1)]: use /spec [id] to check the situation");
				Report[playerid] = 1;
				return 1;
			}
			if(GetPlayerWeapon(playerid) == 13)
		    {
		        format( string, sizeof(string), "[NotimeBot(v1.1)]: Detected a Silver Vibrator at %s[id:%d]", name, playerid);
		        SendClientMessageToAdmins(COLOR_PINK, string);
		        SendClientMessageToAdmins(COLOR_PINK, "[NotimeBot(v1.1)]: use /spec [id] to check the situation");
				Report[playerid] = 1;
				return 1;
			}
			if(GetPlayerWeapon(playerid) == 17)
		    {
		        format( string, sizeof(string), "[NotimeBot(v1.1)]: Detected Tear Gas at %s[id:%d]", name, playerid);
		        SendClientMessageToAdmins(COLOR_PINK, string);
		        SendClientMessageToAdmins(COLOR_PINK, "[NotimeBot(v1.1)]: use /spec [id] to check the situation");
				Report[playerid] = 1;
				return 1;
			}
			if(GetPlayerWeapon(playerid) == 18)
		    {
		        format( string, sizeof(string), "[NotimeBot(v1.1)]: Detected a Molotov Cocktail at %s[id:%d]", name, playerid);
		        SendClientMessageToAdmins(COLOR_PINK, string);
		        SendClientMessageToAdmins(COLOR_PINK, "[NotimeBot(v1.1)]: use /spec [id] to check the situation");
				Report[playerid] = 1;
				return 1;
			}
			if(GetPlayerWeapon(playerid) == 41)
		    {
		        format( string, sizeof(string), "[NotimeBot(v1.1)]: Detected a Spraycan at %s[id:%d]", name, playerid);
		        SendClientMessageToAdmins(COLOR_PINK, string);
		        SendClientMessageToAdmins(COLOR_PINK, "[NotimeBot(v1.1)]: use /spec [id] to check the situation");
				Report[playerid] = 1;
				return 1;
			}
			if(GetPlayerWeapon(playerid) == 42)
		    {
		        format( string, sizeof(string), "[NotimeBot(v1.1)]: Detected a Fire Extinguisher at %s[id:%d]", name, playerid);
		        SendClientMessageToAdmins(COLOR_PINK, string);
		        SendClientMessageToAdmins(COLOR_PINK, "[NotimeBot(v1.1)]: use /spec [id] to check the situation");
				Report[playerid] = 1;
				return 1;
			}
			if(GetPlayerWeapon(playerid) == 43)
		    {
		        format( string, sizeof(string), "[NotimeBot(v1.1)]: Detected a Camera at %s[id:%d]", name, playerid);
		        SendClientMessageToAdmins(COLOR_PINK, string);
		        SendClientMessageToAdmins(COLOR_PINK, "[NotimeBot(v1.1)]: use /spec [id] to check the situation");
				Report[playerid] = 1;
				return 1;
			}
			if(GetPlayerWeapon(playerid) == 44)
		    {
		        format( string, sizeof(string), "[NotimeBot(v1.1)]: Detected a Nightvision Goggles at %s[id:%d]", name, playerid);
		        SendClientMessageToAdmins(COLOR_PINK, string);
		        SendClientMessageToAdmins(COLOR_PINK, "[NotimeBot(v1.1)]: use /spec [id] to check the situation");
				Report[playerid] = 1;
				return 1;
			}
			if(GetPlayerWeapon(playerid) == 45)
		    {
		        format( string, sizeof(string), "[NotimeBot(v1.1)]: Detected a Infrared Vision at %s[id:%d]", name, playerid);
		        SendClientMessageToAdmins(COLOR_PINK, string);
		        SendClientMessageToAdmins(COLOR_PINK, "[NotimeBot(v1.1)]: use /spec [id] to check the situation");
				Report[playerid] = 1;
				return 1;
			}
			new Float:Armour;
			GetPlayerArmour(playerid, Armour);
			if(Armour >= 101)
		    {
		        format( string, sizeof(string), "[NotimeBot(v1.1)]: Detected an Armour value at %s[id:%d]", name, playerid);
		        SendClientMessageToAdmins(COLOR_PINK, string);
		        SendClientMessageToAdmins(COLOR_PINK, "[NotimeBot(v1.1)]: use /spec [id] to check the situation");
				Report[playerid] = 1;
				return 1;
			}
			return 1;
		}
		return 1;
	}
	return 1;
}

public SendClientMessageToAdmins(color,string[])
{
	for(new i = 0; i < MAX_PLAYERS; i++)
	{
		if(IsPlayerConnected(i))
		{
			if (PlayerInfo[i][pAdmin] >= 1 && PlayerInfo[i][pAdmin] <= 10)
			{
				SendClientMessage(i, color, string);
				printf("%s", string);
			}
		}
	}
	return 1;
}

public SendClientMessageToNorth(color,string[])
{
	for(new i = 0; i < MAX_PLAYERS; i++)
	{
		if(IsPlayerConnected(i))
		{
			if (LSPDTeam[i] >= 1)
			{
				SendClientMessage(i, color, string);
				printf("%s", string);
			}
		}
	}
	return 1;
}

public SendClientMessageToSouth(color,string[])
{
	for(new i = 0; i < MAX_PLAYERS; i++)
	{
		if(IsPlayerConnected(i))
		{
			if (GroveTeam[i] >= 1)
			{
				SendClientMessage(i, color, string);
				printf("%s", string);
			}
		}
	}
	return 1;
}

public OnGameModeInit()
{
    DualRoom1 = -1;
    DualRoom2 = -1;
    DualRoom3 = -1;
    DualRoom4 = -1;

	
	
 	healthpickup0 = AddStaticPickup(1210, 2, 2084.0730,-2066.3955,17.3572, 0);
 	healthpickup1 = AddStaticPickup(1210, 2, 1869.3784,-1363.3815,19.1406, 0);
 	healthpickup2 = AddStaticPickup(1210, 2, 11863.5876,-1348.6351,13.5578, 0);
 	healthpickup3 = AddStaticPickup(1210, 2, 2086.2324,-1259.3987,23.9921, 0);
 	healthpickup4 = AddStaticPickup(1210, 2, 1808.4282,-1581.2971,13.5116, 0);
 	healthpickup5 = AddStaticPickup(1210, 2, 1966.2334,-1639.3638,15.9688, 0);
 	healthpickup6 = AddStaticPickup(1210, 2, 2042.3448,-1677.8237,13.54696, 0);
 	healthpickup7 = AddStaticPickup(1210, 2, 2095.8569,-1797.1801,13.3828, 0);
 	healthpickup8 = AddStaticPickup(1210, 2, 2048.9006,-1903.4575,13.5469, 0);
 	healthpickup9 = AddStaticPickup(1210, 2, 1836.9779,-1939.3411,13.5430, 0);
 	healthpickup10 = AddStaticPickup(1210, 2, 1975.8887,-1590.1364,13.5754, 0);
 	healthpickup11 = AddStaticPickup(1210, 2, 1627.9525,-1617.1002,13.7188, 0);
 	healthpickup12 = AddStaticPickup(1210, 2, 1495.5275,-1652.1273,14.0469, 0);
 	healthpickup13 = AddStaticPickup(1210, 2, 1513.7300,-1715.6819,14.0469, 0);
 	healthpickup14 = AddStaticPickup(1210, 2, 1356.8683,-1745.0336,13.5469, 0);
 	healthpickup15 = AddStaticPickup(1210, 2, 1281.2261,-1539.8130,13.5059, 0);
 	healthpickup16 = AddStaticPickup(1210, 2, 1385.0879,-1014.6163,26.8344, 0);

 	CreateObject(3095, 1745.2294921875, -2835.8447265625, 5, 0, 0, 0);
	CreateObject(3095, 1736.2451171875, -2835.8447265625, 5, 0, 0, 0);
	CreateObject(3095, 1745.2294921875, -2844.833984375, 5, 0, 0, 0);
	CreateObject(3095, 1736.2451171875, -2844.833984375, 5, 0, 0, 0);
	CreateObject(3095, 1745.2294921875, -2853.8239746094, 5, 0, 0, 0);
	CreateObject(3095, 1736.2451171875, -2853.8239746094, 5, 0, 0, 0);
	CreateObject(3095, 1727.2551269531, -2835.8447265625, 5, 0, 0, 0);
	CreateObject(3095, 1727.2551269531, -2844.833984375, 5, 0, 0, 0);
	CreateObject(3095, 1727.2551269531, -2853.8232421875, 5, 0, 0, 0);
	CreateObject(3095, 1745.2294921875, -2862.8132324219, 5, 0, 0, 0);
	CreateObject(3095, 1736.2451171875, -2862.8132324219, 5, 0, 0, 0);
	CreateObject(3095, 1727.2548828125, -2862.8132324219, 5, 0, 0, 0);
	CreateObject(3095, 1718.2648925781, -2835.8447265625, 5, 0, 0, 0);
	CreateObject(3095, 1718.2648925781, -2844.833984375, 5, 0, 0, 0);
	CreateObject(3095, 1718.2648925781, -2853.8232421875, 5, 0, 0, 0);
	CreateObject(3095, 1718.2648925781, -2862.8125, 5, 0, 0, 0);
	CreateObject(3401, 1742.7684326172, -2859.9912109375, 7.9004049301147, 0, 0, 0);
	CreateObject(994, 1742.6313476563, -2852.4506835938, 5.5881395339966, 0, 0, 0);
	CreateObject(994, 1736.0305175781, -2852.4506835938, 5.5881395339966, 0, 0, 0);
	CreateObject(3095, 1749.6668701172, -2835.8447265625, 9.5, 0, 90, 0);
	CreateObject(3095, 1749.666015625, -2862.8134765625, 9.5, 0, 90, 0);
	CreateObject(3095, 1749.666015625, -2853.8232421875, 9.5, 0, 90, 0);
	CreateObject(3095, 1749.666015625, -2844.833984375, 9.5, 0, 90, 0);
	CreateObject(994, 1734.8913574219, -2866.2641601563, 5.555365562439, 0, 0, 90);
	CreateObject(994, 1734.890625, -2859.5632324219, 5.555365562439, 0, 0, 90);
	CreateObject(3401, 1742.7684326172, -2838.2465820313, 7.9004049301147, 0, 0, 0);
	CreateObject(994, 1742.630859375, -2845.4501953125, 5.5881395339966, 0, 0, 0);
	CreateObject(994, 1736.0302734375, -2845.4501953125, 5.5881395339966, 0, 0, 0);
	CreateObject(994, 1734.890625, -2838.0625, 5.555365562439, 0, 0, 90);
	CreateObject(994, 1734.890625, -2844.8625488281, 5.555365562439, 0, 0, 90);
	CreateObject(3095, 1745.2294921875, -2830.8447265625, 9.5, 0, 90, 270);
	CreateObject(3095, 1736.2451171875, -2830.8447265625, 9.5, 0, 90, 270);
	CreateObject(3095, 1718.2648925781, -2830.8447265625, 9.5, 0, 90, 270);
	CreateObject(3095, 1727.2551269531, -2830.8447265625, 9.5, 0, 90, 270);
	CreateObject(3095, 1713.2648925781, -2862.8125, 9.5, 0, 90, 0);
	CreateObject(3095, 1713.2646484375, -2835.8447265625, 9.5, 0, 90, 0);
	CreateObject(3095, 1713.2646484375, -2844.833984375, 9.5, 0, 90, 0);
	CreateObject(3095, 1713.2646484375, -2853.8232421875, 9.5, 0, 90, 0);
	CreateObject(3095, 1718.2648925781, -2866.8125, 9.5, 0, 90, 270);
	CreateObject(3095, 1727.2548828125, -2866.8125, 9.5, 0, 90, 270);
	CreateObject(3095, 1736.2451171875, -2866.8125, 9.5, 0, 90, 270);
	CreateObject(3095, 1745.2294921875, -2866.8125, 9.5, 0, 90, 270);
	CreateObject(3095, 1745.2294921875, -2835.8447265625, 10.199999809265, 0, 0, 0);
	CreateObject(3095, 1736.2451171875, -2835.8447265625, 10.199999809265, 0, 0, 0);
	CreateObject(3095, 1745.2294921875, -2844.833984375, 10.199999809265, 0, 0, 0);
	CreateObject(3095, 1736.2451171875, -2844.833984375, 10.199999809265, 0, 0, 0);
	CreateObject(3095, 1745.2294921875, -2853.8232421875, 10.199999809265, 0, 0, 0);
	CreateObject(3095, 1745.2294921875, -2862.8125, 10.199999809265, 0, 0, 0);
	CreateObject(3095, 1736.2451171875, -2853.8232421875, 10.199999809265, 0, 0, 0);
	CreateObject(3095, 1736.2451171875, -2862.8125, 10.199999809265, 0, 0, 0);
	CreateObject(3401, 1720.767578125, -2838.24609375, 7.9004049301147, 0, 0, 0);
	CreateObject(994, 1728.2906494141, -2838.0625, 5.555365562439, 0, 0, 90);
	CreateObject(994, 1728.2906494141, -2844.8623046875, 5.555365562439, 0, 0, 90);
	CreateObject(994, 1714.0302734375, -2845.4501953125, 5.5881395339966, 0, 0, 0);
	CreateObject(994, 1720.7302246094, -2845.4501953125, 5.5881395339966, 0, 0, 0);
	CreateObject(3401, 1720.767578125, -2859.9912109375, 7.9004049301147, 0, 0, 0);
	CreateObject(994, 1728.2906494141, -2866.263671875, 5.555365562439, 0, 0, 90);
	CreateObject(994, 1728.2906494141, -2859.5625, 5.555365562439, 0, 0, 90);
	CreateObject(994, 1714.0302734375, -2852.4501953125, 5.5881395339966, 0, 0, 0);
	CreateObject(994, 1720.7294921875, -2852.4501953125, 5.5881395339966, 0, 0, 0);
	CreateObject(3095, 1727.2548828125, -2862.8125, 10.199999809265, 0, 0, 0);
	CreateObject(3095, 1718.2646484375, -2862.8125, 10.199999809265, 0, 0, 0);
	CreateObject(3095, 1727.2548828125, -2853.8232421875, 10.199999809265, 0, 0, 0);
	CreateObject(3095, 1718.2646484375, -2853.8232421875, 10.199999809265, 0, 0, 0);
	CreateObject(3095, 1727.2548828125, -2844.833984375, 10.199999809265, 0, 0, 0);
	CreateObject(3095, 1718.2646484375, -2844.833984375, 10.199999809265, 0, 0, 0);
	CreateObject(3095, 1727.2548828125, -2835.8447265625, 10.199999809265, 0, 0, 0);
	CreateObject(3095, 1718.2646484375, -2835.8447265625, 10.199999809265, 0, 0, 0);
 	
 	Tele = CreateMenu("Tele's!", 1, 50.0, 180.0, 200.0, 200.0);
    SetMenuColumnHeader(Tele, 0, "Tele");
    AddMenuItem(Tele, 0, "LS");
    AddMenuItem(Tele, 0, "SF");
  	AddMenuItem(Tele, 0, "LV");
   	AddMenuItem(Tele, 0, "Exit");
    UsePlayerPedAnims();
    Logo = TextDrawCreate(585, 430, "v2.6");
	TextDrawAlignment(Logo, 1);
	TextDrawFont(Logo, 1);
	TextDrawLetterSize(Logo, 0.4, 1.2);
	TextDrawColor(Logo, COLOR_ORANGE);
	TextDrawUseBox(Logo, 1);
	Name = TextDrawCreate(95,425, "rock-gaming.com");
	TextDrawAlignment(Name, 2);
	TextDrawFont(Name, 1);
	TextDrawLetterSize(Name, 0.4, 1.2);
	TextDrawColor(Name, COLOR_WHITE);
	Xp = TextDrawCreate(250,250, "+ 10 Xp for that kill");
	TextDrawAlignment(Xp, 2);
	TextDrawFont(Xp, 1);
	TextDrawLetterSize(Xp, 0.4, 1.2);
	TextDrawColor(Xp, COLOR_YELLOW);
	
	//grove skin 1
	GroveSkin1 = TextDrawCreate(341,410,"SMG, Deagle, AK47");
	TextDrawUseBox(GroveSkin1 , 1);
	TextDrawBoxColor(GroveSkin1 , COLOR_CONTROL);
	TextDrawFont(GroveSkin1,1);
	TextDrawColor(GroveSkin1, COLOR_RED);
	TextDrawLetterSize(GroveSkin1,0.599999,1.000000);
	TextDrawSetOutline(GroveSkin1,0);
	TextDrawSetShadow(GroveSkin1,0);
	TextDrawSetProportional(GroveSkin1,1);
	TextDrawBackgroundColor(GroveSkin1,0x000000ff);
	
	//grove skin 2
	GroveSkin2 = TextDrawCreate(341,410,"Tec9, Deagle, SMG ");
	TextDrawUseBox(GroveSkin2 , 1);
	TextDrawBoxColor(GroveSkin2 , COLOR_CONTROL);
	TextDrawFont(GroveSkin2,1);
	TextDrawColor(GroveSkin2, COLOR_RED);
	TextDrawLetterSize(GroveSkin2,0.599999,1.000000);
	TextDrawSetOutline(GroveSkin2,0);
	TextDrawSetShadow(GroveSkin2,0);
	TextDrawSetProportional(GroveSkin2,1);
	TextDrawBackgroundColor(GroveSkin2,0x000000ff);
	
	//grove skin 3
	GroveSkin3 = TextDrawCreate(341,410,"AK47, Deagle, Tec9");
	TextDrawUseBox(GroveSkin3 , 1);
	TextDrawBoxColor(GroveSkin3 , COLOR_CONTROL);
	TextDrawFont(GroveSkin3,1);
	TextDrawColor(GroveSkin3, COLOR_RED);
	TextDrawLetterSize(GroveSkin3,0.599999,1.000000);
	TextDrawSetOutline(GroveSkin3,0);
	TextDrawSetShadow(GroveSkin3,0);
	TextDrawSetProportional(GroveSkin3,1);
	TextDrawBackgroundColor(GroveSkin3,0x000000ff);
	
	//grove skin 4
	GroveSkin4 = TextDrawCreate(341,410,"Tec9, Deagle, AK47");
	TextDrawUseBox(GroveSkin4 , 1);
	TextDrawBoxColor(GroveSkin4 , COLOR_CONTROL);
	TextDrawFont(GroveSkin4,1);
	TextDrawColor(GroveSkin4, COLOR_RED);
	TextDrawLetterSize(GroveSkin4,0.599999,1.000000);
	TextDrawSetOutline(GroveSkin4,0);
	TextDrawSetShadow(GroveSkin4,0);
	TextDrawSetProportional(GroveSkin4,1);
	TextDrawBackgroundColor(GroveSkin4,0x000000ff);
	
	//grove Skin 5
	GroveSkin5 = TextDrawCreate(341,410,"AK47, Deagle, SMG");
	TextDrawUseBox(GroveSkin5 , 1);
	TextDrawBoxColor(GroveSkin5 , COLOR_CONTROL);
	TextDrawFont(GroveSkin5,1);
	TextDrawColor(GroveSkin5, COLOR_RED);
	TextDrawLetterSize(GroveSkin5,0.599999,1.000000);
	TextDrawSetOutline(GroveSkin5,0);
	TextDrawSetShadow(GroveSkin5,0);
	TextDrawSetProportional(GroveSkin5,1);
	TextDrawBackgroundColor(GroveSkin5,0x000000ff);
	
	//LSPD Skin 1
	LSPDSkin1 = TextDrawCreate(341,410,"Deagle, Shotgun, Tec9");
	TextDrawUseBox(LSPDSkin1 , 1);
	TextDrawBoxColor(GroveSkin5 , COLOR_CONTROL);
	TextDrawFont(LSPDSkin1,1);
	TextDrawColor(LSPDSkin1, COLOR_RED);
	TextDrawLetterSize(LSPDSkin1,0.599999,1.000000);
	TextDrawSetOutline(LSPDSkin1,0);
	TextDrawSetShadow(LSPDSkin1,0);
	TextDrawSetProportional(LSPDSkin1,1);
	TextDrawBackgroundColor(LSPDSkin1,0x000000ff);
	
	//LSPD SKin 2
	LSPDSkin2 = TextDrawCreate(341,410,"Deagle, M4, Micro SMG");
	TextDrawUseBox(LSPDSkin2 , 1);
	TextDrawBoxColor(LSPDSkin2 , COLOR_CONTROL);
	TextDrawFont(LSPDSkin2,1);
	TextDrawColor(LSPDSkin2, COLOR_RED);
	TextDrawLetterSize(LSPDSkin2,0.599999,1.000000);
	TextDrawSetOutline(LSPDSkin2,0);
	TextDrawSetShadow(LSPDSkin2,0);
	TextDrawSetProportional(LSPDSkin2,1);
	TextDrawBackgroundColor(LSPDSkin2,0x000000ff);
	
	//LSPD SKin 3
	LSPDSkin3 = TextDrawCreate(341,410,"Deagle, M4, Tec9");
	TextDrawUseBox(LSPDSkin3 , 1);
	TextDrawBoxColor(LSPDSkin3 , COLOR_CONTROL);
	TextDrawFont(LSPDSkin3,1);
	TextDrawColor(LSPDSkin3, COLOR_RED);
	TextDrawLetterSize(LSPDSkin3,0.599999,1.000000);
	TextDrawSetOutline(LSPDSkin3,0);
	TextDrawSetShadow(LSPDSkin3,0);
	TextDrawSetProportional(LSPDSkin3,1);
	TextDrawBackgroundColor(LSPDSkin3,0x000000ff);

	//LSPD SKin 4
	LSPDSkin4 = TextDrawCreate(341,410,"Deagle, Shotgun, Micro SMG");
	TextDrawUseBox(LSPDSkin4 , 1);
	TextDrawBoxColor(LSPDSkin4 , COLOR_CONTROL);
	TextDrawFont(LSPDSkin4,1);
	TextDrawColor(LSPDSkin4, COLOR_RED);
	TextDrawLetterSize(LSPDSkin4,0.599999,1.000000);
	TextDrawSetOutline(LSPDSkin4,0);
	TextDrawSetShadow(LSPDSkin4,0);
	TextDrawSetProportional(LSPDSkin4,1);
	TextDrawBackgroundColor(LSPDSkin4,0x000000ff);
	
	//LSPD Skin 5
    LSPDSkin5 = TextDrawCreate(341,410,"Deagle, M4, Sniper");
    TextDrawUseBox(LSPDSkin5 , 1);
    TextDrawBoxColor(LSPDSkin5 , COLOR_CONTROL);
	TextDrawFont(LSPDSkin5,1);
	TextDrawColor(LSPDSkin5, COLOR_RED);
	TextDrawLetterSize(LSPDSkin5,0.599999,1.000000);
	TextDrawSetOutline(LSPDSkin5,0);
	TextDrawSetShadow(LSPDSkin5,0);
	TextDrawSetProportional(LSPDSkin5,1);
	TextDrawBackgroundColor(LSPDSkin5,0x000000ff);

	DisableInteriorEnterExits();




	SetGameModeText("Van Theift v3.0");

	AddPlayerClass(105, 2492.0483,-1670.5323,13.3359,269.1425,28,300,24,300,30,600); // grove // 0
	AddPlayerClass(107, 2492.0483,-1670.5323,13.3359,269.1425,32,300,24,300,29,300); // grove //1
	AddPlayerClass(106, 2492.0483,-1670.5323,13.3359,269.1425,30,600,24,300,32,300); // grove //2
	AddPlayerClass(104, 2492.0483,-1670.5323,13.3359,269.1425,32,600,24,300,30,300); // premium silver //3
	AddPlayerClass(103, 2492.0483,-1670.5323,13.3359,269.1425,30,600,24,300,29,300); // premium gold //4

	AddPlayerClass(280,1569.0049,-1692.7749,5.8906,176.4184,24,400,25,100,32,400); // Lspd //5
	AddPlayerClass(281,1569.0049,-1692.7749,5.8906,176.4184,24,400,31,600,28,400); // Lspd //6
	AddPlayerClass(282,1569.0049,-1692.7749,5.8906,176.4184,24,400,31,600,32,400); // Lspd //7
    AddPlayerClass(288,1569.0049,-1692.7749,5.8906,176.4184,24,400,27,100,28,400); // Lspd Silver //8
    AddPlayerClass(283,1569.0049,-1692.7749,5.8906,176.4184,24,400,31,600,34,40); // premium Gold //9



	//TEXTDRAWS  SIDE
    Textdraw0 = TextDrawCreate(218.000000,133.000000,"LSPD");
	Textdraw1 = TextDrawCreate(217.000000,134.000000,"Balla Groves");
	TextDrawAlignment(Textdraw0,0);
	TextDrawAlignment(Textdraw1,0);
	TextDrawBackgroundColor(Textdraw0,0x00ffff66);
	TextDrawBackgroundColor(Textdraw1,0xff000033);
	TextDrawFont(Textdraw0,1);
	TextDrawLetterSize(Textdraw0,1.200000,2.699999);
	TextDrawFont(Textdraw1,1);
	TextDrawLetterSize(Textdraw1,1.300000,2.399999);
	TextDrawColor(Textdraw0,0xff000099);
	TextDrawColor(Textdraw1,0xffff0099);
	TextDrawSetOutline(Textdraw0,1);
	TextDrawSetOutline(Textdraw1,1);
	TextDrawSetProportional(Textdraw0,1);
	TextDrawSetProportional(Textdraw1,1);
	TextDrawSetShadow(Textdraw0,1);
	TextDrawSetShadow(Textdraw1,1);




	gate1 = CreateObject( 985 , -2595.839599 , 687.406921 , 27.812500 , 0.000000 , 0.000000 , 3870.000000 );
	gate2 =	CreateObject( 986 , -2595.835693 , 682.120056 , 27.812500 , 0.000000 , 0.000000 , 630.000000 );





//North

	AddStaticVehicle(596,1587.4305,-1710.9326,5.5972,1.7876,0,1); // lspdcar1
	AddStaticVehicle(596,1582.9833,-1710.9541,5.6183,0.7722,0,1); // lspdcar2
	AddStaticVehicle(596,1578.3617,-1710.5529,5.6161,356.6664,0,1); // lspdcar3
	AddStaticVehicle(596,1574.3677,-1710.6119,5.6163,1.6794,0,1); // lspdcar4
	AddStaticVehicle(596,1569.9928,-1710.0658,5.6177,359.6660,0,1); // lspdcar5
	AddStaticVehicle(596,1558.6478,-1710.8904,5.6136,1.0859,0,1); // lspdcar6
	AddStaticVehicle(596,1591.2694,-1711.6799,5.6111,180.4210,0,1); // lspdcar7
	AddStaticVehicle(596,1595.7546,-1710.7708,5.6119,1.5265,0,1); // lspdcar8
	AddStaticVehicle(427,1543.4862,-1707.5106,6.0225,228.7751,0,1); // lspd1
	AddStaticVehicle(427,1538.2045,-1701.6082,6.0241,40.9151,0,1); // lspd2
	AddStaticVehicle(599,1531.2767,-1688.3004,6.0813,88.9912,0,1); // lspd3
	AddStaticVehicle(599,1530.1799,-1684.4818,6.0846,92.2371,0,1); // lspd4
	AddStaticVehicle(598,1544.4994,-1684.6188,5.6364,276.1196,0,1); // lspd5
	AddStaticVehicle(598,1545.1376,-1675.6116,5.6361,268.6592,0,1); // lspd6
	AddStaticVehicle(528,1545.9136,-1672.4215,5.9348,274.8994,0,1); // lspd7



//North Van's Checpoint
	LSPDVan1 = AddStaticVehicle(582,1566.3512,-1711.0979,5.9571,181.2645,1,0); // lspdvan1
	LSPDVan2 = AddStaticVehicle(582,1562.7231,-1709.9984,5.9478,0.7544,1,0); // lspdvan2

//South

	AddStaticVehicle(560,2516.9092,-1672.5718,13.7017,57.9889,252,252); // LSGrovecar1
	AddStaticVehicle(560,2506.8035,-1678.2732,13.1661,320.2823,252,252); // LSGrovecar2
	AddStaticVehicle(565,2490.7271,-1684.5458,13.0441,271.0564,252,252); // LSGrovecar3
	AddStaticVehicle(567,2500.4810,-1655.0674,13.3105,62.8931,252,252); // LSGrovecar4
	AddStaticVehicle(575,2479.0542,-1685.0123,13.0629,264.3429,252,252); // LSGrovecar5
	AddStaticVehicle(579,2473.2759,-1697.3511,13.4485,1.4708,252,252); // LSGrovecar6
	AddStaticVehicle(587,2472.1130,-1677.3715,13.1089,38.8951,252,252); // LSGrovecar7
	AddStaticVehicle(589,2485.6377,-1653.4220,13.0526,261.2041,252,252); // LSGrovecar8



//South Van Checpoint
	GroveVan1 = AddStaticVehicle(582,2438.5525,-1671.1232,13.6284,92.0186,54,54); // LSGrove van1
	GroveVan2 = AddStaticVehicle(582,2439.6985,-1674.7965,13.6965,89.0063,54,54); // LSGrove van2

	//Some random cars
	AddStaticVehicle(491,-1958.7042,297.1240,35.2405,47.2156,1,1); // wangcars 1
	AddStaticVehicle(489,-1948.6471,258.5208,35.2388,124.8893,22,0); // wangcars 2
	AddStaticVehicle(415,-1955.0096,273.7706,35.2399,41.7769,11,3); // wangcars 3
	AddStaticVehicle(415,-1947.9985,258.6733,40.8193,109.9782,3,12); // wangcars 4
	AddStaticVehicle(496,-1954.6007,298.2916,40.8181,293.5039,1,1); // wangcars 5
	AddStaticVehicle(432,-2146.0767,-190.4421,35.3303,179.0522,0,0); // Tank South
	AddStaticVehicle(432,-2645.3081,1447.7024,7.1698,270.3715,0,0); // Tank North
	AddStaticVehicle(487,-1753.4126,943.0128,24.8906,270.3715,0,0); // Tank North

//Militery base Vehicles

	AddStaticVehicle(411,-2591.9451,635.4395,27.5396,293.1169,0,0); //
	AddStaticVehicle(411,-2591.2747,639.9130,27.5396,299.8578,0,0); //
	AddStaticVehicle(411,-2591.5364,645.1406,27.5396,304.0476,0,0); //
	AddStaticVehicle(522,-2593.0581,660.0720,27.3758,295.5248,0,1); //
	AddStaticVehicle(522,-2593.5039,663.6098,27.3741,302.0868,0,1); //
	AddStaticVehicle(522,-2593.6016,665.8616,27.3845,306.3330,0,1); //
	AddStaticVehicle(571,-2586.3767,623.2172,27.0962,1.7135,0,1); //
	AddStaticVehicle(571,-2582.7566,622.7252,27.0967,0.9895,0,1); //
	AddStaticVehicle(571,-2579.2983,622.8036,27.0965,0.6027,0,1); //
	AddStaticVehicle(425,-2568.2800,682.4373,28.3844,78.1141,2,2); //
	AddStaticVehicle(425,-2556.3599,672.5569,28.3979,79.7621,2,2); //
	AddStaticVehicle(520,-2548.9143,655.0162,28.5301,47.3027,5,5); //
	AddStaticVehicle(520,-2550.1575,640.5393,28.5436,45.7631,5,5); //


	return 1;
}


public OnGameModeExit()
{
	return 1;
}
public OnPlayerRequestClass(playerid, classid)
{
	SetPlayerPos(playerid, player_x,player_y,player_z);
	SetPlayerFacingAngle(playerid, player_angle);
	SetPlayerCameraPos(playerid, camera_x,camera_y,camera_z);
	SetPlayerCameraLookAt(playerid, player_x,player_y,player_z);
	ApplyAnimation(playerid,"DANCING","DNCE_M_B",4.0,1,0,0,0,-1); //smooth dancing. It's most fitting to the music
	PlayerPlaySound(playerid, 1097,-119.9460,23.1096,12.2238); //music, duh
	//making sure the timer gets executed only once, so the camera doesn't go to fast
	if (PlayerInfo[playerid][SpawnDance]) PlayerInfo[playerid][SpawnTimer] = SetTimerEx("MoveCamera", moving_speed, true, "i", playerid);
	PlayerInfo[playerid][SpawnDance] = false; //preventing the timer to execute again
 	if (classid == 0) //Grove 1
	{
	        TextDrawHideForPlayer(playerid, LSPDSkin5);
	        TextDrawHideForPlayer(playerid, LSPDSkin1);
	        TextDrawHideForPlayer(playerid, LSPDSkin2);
	        TextDrawHideForPlayer(playerid, LSPDSkin3);
	        TextDrawHideForPlayer(playerid, LSPDSkin4);
	        TextDrawHideForPlayer(playerid, GroveSkin2);
	        TextDrawHideForPlayer(playerid, GroveSkin3);
	        TextDrawHideForPlayer(playerid, GroveSkin4);
	        TextDrawHideForPlayer(playerid, GroveSkin5);
			TextDrawShowForPlayer(playerid, GroveSkin1);
			TextDrawHideForPlayer(playerid, Textdraw0);
			TextDrawShowForPlayer(playerid, Textdraw1);
			Classid[playerid] = 0;
			return 1;
	}
	else if (classid == 1) //Grove 2
	{
 			TextDrawHideForPlayer(playerid, LSPDSkin1);
	        TextDrawHideForPlayer(playerid, LSPDSkin2);
	        TextDrawHideForPlayer(playerid, LSPDSkin3);
	        TextDrawHideForPlayer(playerid, LSPDSkin4);
			TextDrawHideForPlayer(playerid, LSPDSkin5);
	        TextDrawHideForPlayer(playerid, GroveSkin1);
	        TextDrawHideForPlayer(playerid, GroveSkin3);
	        TextDrawHideForPlayer(playerid, GroveSkin4);
	        TextDrawHideForPlayer(playerid, GroveSkin5);

			TextDrawShowForPlayer(playerid,GroveSkin2);
			TextDrawHideForPlayer(playerid, Textdraw0);
			TextDrawShowForPlayer(playerid, Textdraw1);
			Classid[playerid] = 1;
			return 1;
	}
	else if (classid == 2) //Grove 3
	{
 			TextDrawHideForPlayer(playerid, LSPDSkin1);
	        TextDrawHideForPlayer(playerid, LSPDSkin2);
	        TextDrawHideForPlayer(playerid, LSPDSkin3);
	        TextDrawHideForPlayer(playerid, LSPDSkin4);
         	TextDrawHideForPlayer(playerid, LSPDSkin5);
	        TextDrawHideForPlayer(playerid, GroveSkin1);
	        TextDrawHideForPlayer(playerid, GroveSkin2);
	        TextDrawHideForPlayer(playerid, GroveSkin4);
	        TextDrawHideForPlayer(playerid, GroveSkin5);

	        TextDrawShowForPlayer(playerid,GroveSkin3);
	        TextDrawHideForPlayer(playerid, Textdraw0);
			TextDrawShowForPlayer(playerid, Textdraw1);
			Classid[playerid] = 2;
			return 1;
	}
	else if (classid == 3) //grove 4
	{
 			TextDrawHideForPlayer(playerid, LSPDSkin1);
	        TextDrawHideForPlayer(playerid, LSPDSkin2);
	        TextDrawHideForPlayer(playerid, LSPDSkin3);
	        TextDrawHideForPlayer(playerid, LSPDSkin4);
	        TextDrawHideForPlayer(playerid, LSPDSkin5);
         	TextDrawHideForPlayer(playerid, GroveSkin1);
	        TextDrawHideForPlayer(playerid, GroveSkin2);
	        TextDrawHideForPlayer(playerid, GroveSkin3);
	        TextDrawHideForPlayer(playerid, GroveSkin5);


			TextDrawShowForPlayer(playerid,GroveSkin4);
	        TextDrawHideForPlayer(playerid, Textdraw0);
			TextDrawShowForPlayer(playerid, Textdraw1);
			Classid[playerid] = 3;
			return 1;
	}
	else if (classid == 4) //Grove 5
	{
 			TextDrawHideForPlayer(playerid, LSPDSkin2);
	        TextDrawHideForPlayer(playerid, LSPDSkin3);
	        TextDrawHideForPlayer(playerid, LSPDSkin4);
	        TextDrawHideForPlayer(playerid, LSPDSkin5);
	        TextDrawHideForPlayer(playerid, GroveSkin2);
	        TextDrawHideForPlayer(playerid, GroveSkin3);
	        TextDrawHideForPlayer(playerid, GroveSkin4);

	        TextDrawShowForPlayer(playerid, GroveSkin5);
			TextDrawHideForPlayer(playerid, Textdraw0);
			TextDrawShowForPlayer(playerid, Textdraw1);
			Classid[playerid] = 4;
			return 1;
	}
 	else if (classid == 5) //LSPD 1
	{
 			TextDrawHideForPlayer(playerid, LSPDSkin2);
	        TextDrawHideForPlayer(playerid, LSPDSkin3);
	        TextDrawHideForPlayer(playerid, LSPDSkin4);
	        TextDrawHideForPlayer(playerid, GroveSkin1);
	        TextDrawHideForPlayer(playerid, GroveSkin2);
	        TextDrawHideForPlayer(playerid, GroveSkin3);
	        TextDrawHideForPlayer(playerid, GroveSkin4);
	        TextDrawHideForPlayer(playerid, GroveSkin5);

			TextDrawShowForPlayer(playerid, LSPDSkin1);
			TextDrawHideForPlayer(playerid, Textdraw1);
			TextDrawShowForPlayer(playerid, Textdraw0);
			Classid[playerid] = 5;
			return 1;
	}
	else if (classid == 6) //LSPD 2
	{
 			TextDrawHideForPlayer(playerid, LSPDSkin1);
	        TextDrawHideForPlayer(playerid, LSPDSkin3);
	        TextDrawHideForPlayer(playerid, LSPDSkin4);
	        TextDrawHideForPlayer(playerid, LSPDSkin5);
	        TextDrawHideForPlayer(playerid, GroveSkin1);
	        TextDrawHideForPlayer(playerid, GroveSkin2);
	        TextDrawHideForPlayer(playerid, GroveSkin3);
	        TextDrawHideForPlayer(playerid, GroveSkin4);
	        TextDrawHideForPlayer(playerid, GroveSkin5);


			TextDrawShowForPlayer(playerid, LSPDSkin2);
	
			TextDrawHideForPlayer(playerid, Textdraw1);
			TextDrawShowForPlayer(playerid, Textdraw0);
			Classid[playerid] = 6;
			return 1;
	}
	else if (classid == 7) //LSPD 3
	{
	        TextDrawHideForPlayer(playerid, LSPDSkin1);
	        TextDrawHideForPlayer(playerid, LSPDSkin2);
	        TextDrawHideForPlayer(playerid, LSPDSkin4);
	        TextDrawHideForPlayer(playerid, LSPDSkin5);
	        TextDrawHideForPlayer(playerid, GroveSkin1);
	        TextDrawHideForPlayer(playerid, GroveSkin2);
	        TextDrawHideForPlayer(playerid, GroveSkin3);
	        TextDrawHideForPlayer(playerid, GroveSkin4);
	        TextDrawHideForPlayer(playerid, GroveSkin5);


			TextDrawShowForPlayer(playerid, LSPDSkin3);
	        TextDrawHideForPlayer(playerid, Textdraw0);
			TextDrawShowForPlayer(playerid, Textdraw1);
			Classid[playerid] = 7;
			return 1;
	}
	else if (classid == 8) //LSPD 4
	{
	        TextDrawHideForPlayer(playerid, LSPDSkin5);
			TextDrawHideForPlayer(playerid, LSPDSkin1);
	        TextDrawHideForPlayer(playerid, LSPDSkin2);
	        TextDrawHideForPlayer(playerid, LSPDSkin3);
	        TextDrawHideForPlayer(playerid, GroveSkin1);
	        TextDrawHideForPlayer(playerid, GroveSkin2);
	        TextDrawHideForPlayer(playerid, GroveSkin3);
	        TextDrawHideForPlayer(playerid, GroveSkin4);
	        TextDrawHideForPlayer(playerid, GroveSkin5);

			TextDrawShowForPlayer(playerid, LSPDSkin4);
	
			TextDrawHideForPlayer(playerid, Textdraw0);
			TextDrawShowForPlayer(playerid, Textdraw1);
			Classid[playerid] = 8;
			return 1;
	}
	else if (classid == 9) //LSPD 5
	{
	       	TextDrawHideForPlayer(playerid, LSPDSkin1);
	        TextDrawHideForPlayer(playerid, LSPDSkin2);
	        TextDrawHideForPlayer(playerid, LSPDSkin3);
	        TextDrawHideForPlayer(playerid, LSPDSkin4);
	        TextDrawHideForPlayer(playerid, GroveSkin1);
	        TextDrawHideForPlayer(playerid, GroveSkin2);
	        TextDrawHideForPlayer(playerid, GroveSkin3);
	        TextDrawHideForPlayer(playerid, GroveSkin4);
	        TextDrawHideForPlayer(playerid, GroveSkin5);


			TextDrawShowForPlayer(playerid, LSPDSkin5);
	        TextDrawHideForPlayer(playerid, Textdraw0);
			TextDrawShowForPlayer(playerid, Textdraw1);
			Classid[playerid] = 9;
			return 1;
	}
	return 1;
}

public OnPlayerRequestSpawn(playerid)
{

	
	if(Classid[playerid] == 0 || Classid[playerid] == 1 || Classid[playerid] == 2 || Classid[playerid] == 3 || Classid[playerid] == 4)
	{
	    if(TeamGrove > TeamLSPD && GroveTeam[playerid] == 0)
	    {
			SendClientMessage(playerid,COLOR_RED, "[SYSTEM] In order to balance the teams, You Must Choose The LSPD");
			return 0;
 		}
    	return 1;
	}
	if(Classid[playerid] == 5 || Classid[playerid] == 6 || Classid[playerid] == 7 || Classid[playerid] == 8 || Classid[playerid] == 9 || Classid[playerid] == 10)
	{
		if(TeamLSPD > TeamGrove && LSPDTeam[playerid] == 0)
		{
			SendClientMessage(playerid,COLOR_RED, "[SYSTEM] In order to balance the teams, You Must Choose The Grove Street");
			return 0;
 		}
    	return 1;
	}
	if(Classid[playerid] == 3)
	{
	    if(PlayerInfo[playerid][pPremium] < 1)
	    {
	        SendClientMessage(playerid, COLOR_RED, " You are not a Silver Or Gold Member. you cannot select this class");
       		return 0;
		}
	    if(PlayerInfo[playerid][pPremium] >= 1)
	    {
	        SpawnPlayer(playerid);
       		return 1;
		}
    	return 1;
	}
	if(Classid[playerid] == 4)
	{
	    if(PlayerInfo[playerid][pPremium] < 2)
	    {
	        SendClientMessage(playerid, COLOR_RED, " You are not a Gold Member. you cannot select this class");
       		return 0;
		}
	    if(PlayerInfo[playerid][pPremium] >= 2)
	    {
	        SpawnPlayer(playerid);
	        return 1;
		}
		return 1;
	}
	if(Classid[playerid] == 9)
	{
	    if(PlayerInfo[playerid][pPremium] < 1)
	    {
     		SendClientMessage(playerid, COLOR_RED, " You are not a Silver or Gold Premium member. you cannot select this class");
     		return 0;
		}
	    if(PlayerInfo[playerid][pPremium] >= 1)
	    {
	        SpawnPlayer(playerid);
	        return 1;
		}
		return 1;
	}
	if(Classid[playerid] == 10)
	{
	    if(PlayerInfo[playerid][pPremium] < 2)
	    {
	        SendClientMessage(playerid, COLOR_RED, " You are not a Gold Premium member. you cannot select this class");
	        return 0;
		}
	    if(PlayerInfo[playerid][pPremium] >= 2)
	    {
	        SpawnPlayer(playerid);
	        return 1;
		}
		return 1;
	}
	return 1;
}

public OnPlayerConnect(playerid)
{

	new
    string[128],
    PlayerName[24];
	GetPlayerName(playerid, PlayerName, sizeof(PlayerName));


    TextDrawShowForPlayer(playerid, Wesbite);
    TextDrawShowForPlayer(playerid, Logo);
    TextDrawShowForPlayer(playerid, Name);
	new pName[MAX_PLAYER_NAME];
    GetPlayerName(playerid, pName, sizeof(pName));
    format(string, sizeof(string), "%s has joined the server.", pName);
    SendClientMessageToAll(COLOR_CRIMSON, string);

    SendClientMessage(playerid, LIGHTGREEN, "[NotimeBot(v1.1)]: Starting up Notime Defense System...");
    SetTimerEx("NTDSstart", 10000, 0, "i", playerid);
    Report[playerid] = 0;

	SetWeather(10);


	new playername[MAX_PLAYER_NAME];
	GetPlayerName(playerid, playername, sizeof(playername));
	format(string, sizeof(string), "Welcome to Gang Wars %s. To get started do /help",playername);
	SendClientMessage(playerid, COLOR_GREEN,string);
	SendClientMessage(playerid, COLOR_RED, "If Your Stats Are Gone Try Re-Loggging Before Reporting it");

    LastMoney[playerid] = 0;
	GroveTeam[playerid] = 0;
	LSPDTeam[playerid] = 0;
	Spawned[playerid] = 0;
	CurrentMoney[playerid] = 0;
	PlayerInfo[playerid][pAdmin] = 0;
	PlayerInfo[playerid][pGM] = 0;
	PlayerInfo[playerid][pPremium] = 0;
	PlayerInfo[playerid][pDeaths] = 0;
	PlayerInfo[playerid][pKills] = 0;
	PlayerInfo[playerid][pTKills] = 0;
	PlayerInfo[playerid][pExp] = 0;
	PlayerInfo[playerid][pVan] = 0;
	PlayerInfo[playerid][pRank] = 0;
	PlayerInfo[playerid][pReborn] = 0;
	PlayerInfo[playerid][pCash] = 0;
	PlayerInfo[playerid][pWarns] = 0;
	PlayerInfo[playerid][pGrenadekill] = 0;
	PlayerInfo[playerid][pMp5kill] = 0;
	PlayerInfo[playerid][pKnucklekill] = 0;
 	PlayerInfo[playerid][pMenugoal] = 0;
	PlayerInfo[playerid][pHeligoal] = 0;
	PlayerInfo[playerid][pArmourgoal] = 0;
	PlayerInfo[playerid][pMapgoal] = 0;
	PlayerInfo[playerid][pJail] = 0;
 	Death[playerid] = 0;
	Killer[playerid] = 0;
	Mute[playerid] = 0;
	AdminOnDuty[playerid] = 0;
	PKOff[playerid] = 0;


	PreloadAnimLib(playerid,"BOMBER");
   	PreloadAnimLib(playerid,"RAPPING");
   	PreloadAnimLib(playerid,"SHOP");
   	PreloadAnimLib(playerid,"BEACH");
   	PreloadAnimLib(playerid,"SMOKING");
   	PreloadAnimLib(playerid,"FOOD");
   	PreloadAnimLib(playerid,"ON_LOOKERS");
   	PreloadAnimLib(playerid,"DEALER");
	PreloadAnimLib(playerid,"CRACK");
	PreloadAnimLib(playerid,"CARRY");
	PreloadAnimLib(playerid,"COP_AMBIENT");
	PreloadAnimLib(playerid,"PARK");
	PreloadAnimLib(playerid,"INT_HOUSE");
	PreloadAnimLib(playerid,"FOOD");
	PreloadAnimLib(playerid,"PED");
	//so the timer can be executed again
	PlayerInfo[playerid][SpawnDance] = true;
	
	PlayerDualWatching[playerid] = 0;
	InventationSent[playerid] = -1;
	Inventation[playerid] = -1;
	return 1;
}
public OnPlayerText(playerid, text[])
{
	if(Mute[playerid] == 1)
	{
	    SendClientMessage(playerid, COLOR_RED, "[ERROR] You have been muted!");
	    return 0;
 	}
  	new string[2][MAX_PLAYER_NAME];
	GetPlayerName(playerid,string[0],sizeof(string[]));
	GetPlayerName(playerid,string[1],sizeof(string[]));
	format(string[0],sizeof(string[]),"[%d]%s",playerid,string[0]);
	SetPlayerName(playerid,string[0]);
	SendPlayerMessageToAll(playerid,text);
	SetPlayerName(playerid,string[1]);
 	return 0;
}

public OnPlayerDisconnect(playerid, reason)
{

	return 1;
}

public OnPlayerSpawn(playerid)
{
	PlayerInfo[playerid][SpawnAngle] = 0.0; //so when you leave and another player comes, the camera will start from start
    PlayerInfo[playerid][SpawnDance] = true; //to not execute to much timers
	KillTimer(PlayerInfo[playerid][SpawnTimer] ); //to kill it, since its useless now
	PlayerPlaySound(playerid, 1186, 0.0, 0.0, 0.0); // (blank sound) to shut the music up
 	SetCameraBehindPlayer(playerid); //to prevent some bugs
	SetPlayerInterior(playerid, 0);
	TextDrawHideForPlayer(playerid, Textdraw1);
	TextDrawHideForPlayer(playerid, Textdraw0);
	TextDrawHideForPlayer(playerid, Textdraw1);
	TextDrawHideForPlayer(playerid, Textdraw0);
	TextDrawHideForPlayer(playerid, GroveSkin1);
	TextDrawHideForPlayer(playerid, GroveSkin2);
	TextDrawHideForPlayer(playerid, GroveSkin3);
	TextDrawHideForPlayer(playerid, GroveSkin4);
	TextDrawHideForPlayer(playerid, GroveSkin5);
	TextDrawHideForPlayer(playerid, LSPDSkin1);
	TextDrawHideForPlayer(playerid, LSPDSkin2);
	TextDrawHideForPlayer(playerid, LSPDSkin3);
	TextDrawHideForPlayer(playerid, LSPDSkin4);
	TextDrawHideForPlayer(playerid, LSPDSkin5);
 	if(Classid[playerid] == 0 || Classid[playerid] == 1 || Classid[playerid] == 2 || Classid[playerid] == 3 || Classid[playerid] == 4)
	{
	    if(Death[playerid] == 1)
		{
			SetPlayerInterior(playerid, 0);
	  		new killerid = Killer[playerid];
	    	new name[MAX_PLAYER_NAME];
	   		new string[128];
		    GetPlayerName(killerid, name, sizeof(name));
		    format(string, sizeof(string), "~w~ %s ~r~: Owned You", name);
		    GameTextForPlayer(playerid, string, 10000, 1);
			TogglePlayerSpectating(playerid, 1);
			PlayerSpectatePlayer(playerid, killerid);
			SetTimerEx("spectateofftimer", 10000, 0, "i", playerid);
		}
		if(Death[playerid] == 0)
		{
			LSPDTeam[playerid] = 0;
			GroveTeam[playerid] = 1;
			TeamGrove++;
			Spawned[playerid] = 1;
			SendClientMessage(playerid,COLOR_RED,"Grove Street Got A Gangsta");
			SetPlayerColor(playerid,COLOR_GREEN);
			SetPlayerTeam(playerid, 4);
 			if (PlayerInfo[playerid][pRank] == 2 || PlayerInfo[playerid][pRank] == 3)
			{
				PlayerInfo[playerid][pMenugoal] = 1;
				return 1;
			}
			if(PlayerInfo[playerid][pRank] == 4 || PlayerInfo[playerid][pRank] == 5)
			{
    			PlayerInfo[playerid][pMenugoal] = 1;
				PlayerInfo[playerid][pHeligoal] = 1;
				return 1;
    		}
    		if(PlayerInfo[playerid][pRank] == 6 || PlayerInfo[playerid][pRank] == 7)
			{
				SetPlayerArmour(playerid,100);
    			PlayerInfo[playerid][pMenugoal] = 1;
				PlayerInfo[playerid][pHeligoal] = 1;
				PlayerInfo[playerid][pArmourgoal] = 1;
				return 1;
			}
			if (PlayerInfo[playerid][pRank] >= 8)
			{
				SetPlayerArmour(playerid,100);
		 		PlayerInfo[playerid][pMenugoal] = 1;
				PlayerInfo[playerid][pHeligoal] = 1;
				PlayerInfo[playerid][pArmourgoal] = 1;
				PlayerInfo[playerid][pMapgoal] = 1;
				return 1;
     		}
    	}
   	}
	if(Classid[playerid] == 5 || Classid[playerid] == 6 || Classid[playerid] == 7 || Classid[playerid] == 8 || Classid[playerid] == 9 || Classid[playerid] == 10)
   	{
    	if(Death[playerid] == 1)
    	{
			SetPlayerInterior(playerid, 0);
			new killerid = Killer[playerid];
		    new name[MAX_PLAYER_NAME];
		   	new string[128];
	 		GetPlayerName(killerid, name, sizeof(name));
	   		format(string, sizeof(string), "~w~ %s ~r~: Owned You", name);
	     	GameTextForPlayer(playerid, string, 10000, 1);
		    TogglePlayerSpectating(playerid, 1);
		    PlayerSpectatePlayer(playerid, killerid);
		    SetTimerEx("spectateofftimer", 10000, 0, "i", playerid);
	    }
    	if(Death[playerid] == 0)
	    {
			LSPDTeam[playerid] = 1;
			GroveTeam[playerid] = 0;
			TeamLSPD++;
			Spawned[playerid] = 1;
			SendClientMessage(playerid,COLOR_RED,"10-8");
	    	SetPlayerColor(playerid,COLOR_LIGHTBLUE);
	    	SetPlayerTeam(playerid, 8);
        	if (PlayerInfo[playerid][pRank] == 2 || PlayerInfo[playerid][pRank] == 3)
			{
				PlayerInfo[playerid][pMenugoal] = 1;
				return 1;
			}
			if(PlayerInfo[playerid][pRank] == 4 || PlayerInfo[playerid][pRank] == 5)
			{
    			PlayerInfo[playerid][pMenugoal] = 1;
				PlayerInfo[playerid][pHeligoal] = 1;
				return 1;
    		}
    		if(PlayerInfo[playerid][pRank] == 6 || PlayerInfo[playerid][pRank] == 7)
			{
				SetPlayerArmour(playerid,100);
    			PlayerInfo[playerid][pMenugoal] = 1;
				PlayerInfo[playerid][pHeligoal] = 1;
				PlayerInfo[playerid][pArmourgoal] = 1;
				return 1;
			}
			if (PlayerInfo[playerid][pRank] >= 8)
			{
				SetPlayerArmour(playerid,100);
		 		PlayerInfo[playerid][pMenugoal] = 1;
				PlayerInfo[playerid][pHeligoal] = 1;
				PlayerInfo[playerid][pArmourgoal] = 1;
				PlayerInfo[playerid][pMapgoal] = 1;
				return 1;
			}
		}

	}
	if(Classid[playerid] == 0 || Classid[playerid] == 1 || Classid[playerid] == 2 || Classid[playerid] == 3 || Classid[playerid] == 4)
	{
	    SetPlayerInterior(playerid, 0);
		SetPlayerPos(playerid, 2492.0483,-1670.5323,13.3359);
 		ResetPlayerWeapons(playerid);
		GivePlayerWeapon(playerid,31,350);
		GivePlayerWeapon(playerid,22, 100);
		GivePlayerWeapon(playerid,1, 0);
	}
	if(Classid[playerid] == 5 || Classid[playerid] == 6 || Classid[playerid] == 7 || Classid[playerid] == 8 || Classid[playerid] == 9 || Classid[playerid] == 10)
   	{
   	    SetPlayerInterior(playerid, 0);
		SetPlayerPos(playerid, 1569.0049,-1692.7749,5.8906);
 		ResetPlayerWeapons(playerid);
		GivePlayerWeapon(playerid,30,260);
		GivePlayerWeapon(playerid,29,230);
		GivePlayerWeapon(playerid,9, 0);
	}
	return 1;
}

public OnPlayerDeath(playerid, killerid, reason)
{
	if(InDual[playerid] == 1)
	{
		new string[256];
		new killername[MAX_PLAYER_NAME];
		new playername[MAX_PLAYER_NAME];
		GetPlayerName(killerid, killername, sizeof(killername));
		GetPlayerName(playerid, playername, sizeof(playername));
		if(DualRoom1 == playerid || DualRoom1 == killerid)
		{
		    PlayerInfo[killerid][pExp] = PlayerInfo[killerid][pExp]+100;
			PlayerInfo[playerid][pDeaths] = PlayerInfo[playerid][pDeaths]+1;
			PlayerInfo[killerid][pKills] = PlayerInfo[killerid][pKills] + 1;
		    Inventation[playerid] = -1;
		    InventationSent[playerid] = -1;
		    Inventation[killerid] = -1;
		    InventationSent[killerid] = -1;
		    InDual[playerid] = 0;
		    InDual[killerid] = 0;
		    format(string, sizeof(string), "%s defeated %s in a dual and wins $%d", killername, playername, DualRoom1price);
		    SendClientMessageToAll(GREEN, string);
		    GivePlayerMoney(killerid, DualRoom1price);
		    SpawnPlayer(killerid);
		    SendDeathMessage(killerid, playerid, reason);
		    DualRoom1 = -1;
		    return 1;
		}
		if(DualRoom2 == playerid || DualRoom2 == killerid)
		{
		    PlayerInfo[killerid][pExp] = PlayerInfo[killerid][pExp]+100;
			PlayerInfo[playerid][pDeaths] = PlayerInfo[playerid][pDeaths]+1;
			PlayerInfo[killerid][pKills] = PlayerInfo[killerid][pKills] + 1;
		    Inventation[playerid] = -1;
		    InventationSent[playerid] = -1;
		    Inventation[killerid] = -1;
		    InventationSent[killerid] = -1;
		    InDual[playerid] = 0;
		    InDual[killerid] = 0;
            format(string, sizeof(string), "%s defeated %s in a dual and wins $%d", killername, playername, DualRoom2price);
		    SendClientMessageToAll(GREEN, string);
		    GivePlayerMoney(killerid, DualRoom2price);
		    SpawnPlayer(killerid);
		    SendDeathMessage(killerid, playerid, reason);
		    DualRoom2 = -1;
		    return 1;
		}
		if(DualRoom3 == playerid || DualRoom3 == killerid)
		{
		    PlayerInfo[killerid][pExp] = PlayerInfo[killerid][pExp]+100;
			PlayerInfo[playerid][pDeaths] = PlayerInfo[playerid][pDeaths]+1;
			PlayerInfo[killerid][pKills] = PlayerInfo[killerid][pKills] + 1;
		    Inventation[playerid] = -1;
		    InventationSent[playerid] = -1;
		    Inventation[killerid] = -1;
		    InventationSent[killerid] = -1;
		    InDual[playerid] = 0;
		    InDual[killerid] = 0;
            format(string, sizeof(string), "%s defeated %s in a dual and wins $%d", killername, playername, DualRoom3price);
		    SendClientMessageToAll(GREEN, string);
		    GivePlayerMoney(killerid, DualRoom3price);
		    SpawnPlayer(killerid);
		    SendDeathMessage(killerid, playerid, reason);
		    DualRoom3 = -1;
		    return 1;
		}
		if(DualRoom4 == playerid || DualRoom4 == killerid)
		{
		    PlayerInfo[killerid][pExp] = PlayerInfo[killerid][pExp]+100;
			PlayerInfo[playerid][pDeaths] = PlayerInfo[playerid][pDeaths]+1;
			PlayerInfo[killerid][pKills] = PlayerInfo[killerid][pKills] + 1;
		    Inventation[playerid] = -1;
		    InventationSent[playerid] = -1;
		    Inventation[killerid] = -1;
		    InventationSent[killerid] = -1;
		    InDual[playerid] = 0;
		    InDual[killerid] = 0;
            format(string, sizeof(string), "%s defeated %s in a dual and wins $%d", killername, playername, DualRoom4price);
		    SendClientMessageToAll(GREEN, string);
		    GivePlayerMoney(killerid, DualRoom4price);
		    SpawnPlayer(killerid);
		    SendDeathMessage(killerid, playerid, reason);
		    DualRoom4 = -1;
		    return 1;
		}
		return 1;
	}
	if(InDual[playerid] == 0)
	{
		new string[256];
		if(LSPDTeam[playerid] == 1)
		{
		TeamLSPD--;
		Spawned[playerid] = 0;
		format(string, sizeof(string), "Officer Down");
		SendClientMessageToNorth(COLOR_RED, string);
		}
		if(GroveTeam[playerid] == 1)
		{
		TeamGrove--;
		Spawned[playerid] = 0;
		format(string, sizeof(string), "Grove Street Lost A Gangsta");
		SendClientMessageToSouth(COLOR_RED, string);
		}
		SendDeathMessage(killerid,playerid,reason);
	    {
		}
		if(GroveTeam[playerid] && GroveTeam[killerid])
		{
	 		new killername[24], name[24];
			GetPlayerName(killerid,killername,24);
			GetPlayerName(playerid,name,24);
		    format(string, sizeof(string), "[NotimeBot(v1.1)]: %s[id:%d] teamkilled %s[id:%d]", killername, killerid, name, playerid);
			SendClientMessageToAdmins(COLOR_PINK, string);
		    return 1;
		}
		if(LSPDTeam[playerid] && LSPDTeam[killerid])
		{
	 		new killername[24], name[24];
			GetPlayerName(killerid,killername,24);
			GetPlayerName(playerid,name,24);
		    format(string, sizeof(string), "[NotimeBot(v1.1)]: %s[id:%d] teamkilled %s[id:%d]", killername, killerid, name, playerid);
			SendClientMessageToAdmins(COLOR_PINK, string);
		    return 1;
		}
		if (GroveTeam[killerid] && LSPDTeam[playerid]) //South Kill North
		{
			PlayerInfo[killerid][pExp] += 10;
			PlayerInfo[playerid][pDeaths] += 1;
			PlayerInfo[killerid][pKills] = PlayerInfo[killerid][pKills] + 1;
			TextDrawShowForPlayer(killerid, Xp);
			SetTimerEx("Exitxp", 5000, 0, "i", killerid);
			SetPlayerScore(playerid,1);
			Death[playerid] = 1;
			Killer[playerid] = killerid;
			if(reason == 16)
			{
				if(IsPlayerConnected(killerid))
				{
				PlayerInfo[killerid][pGrenadekill]++;
				}
				if (PlayerInfo[killerid][pGrenadekill] == 25)
				{
	   			SendClientMessage(killerid,COLOR_YELLOW," Well done you Got 25 Grenade kills!! (You got 7500 Dollars and 1200 Exp)");
				new sendername[MAX_PLAYER_NAME];
			    GetPlayerName(playerid, sendername, sizeof(sendername));
				format(string, sizeof(string), "+7500 %s GOT 25 GRENADE KILLS!!", sendername);
				SendClientMessageToAll(COLOR_LIGHTGREEN, string);
				GivePlayerMoney(killerid,7500);
				PlayerInfo[killerid][pExp] += 1200;
				}
			}
			else if(reason == 29)
			{
				if(IsPlayerConnected(killerid))
				{
				PlayerInfo[killerid][pMp5kill]++;
				}
				if (PlayerInfo[killerid][pMp5kill] == 100)
				{
	   			SendClientMessage(killerid,COLOR_YELLOW," Well done you Got 100 MP5 kills!! (You got 5000 Dollars and 1000 Exp)");
	            new sendername[MAX_PLAYER_NAME];
			    GetPlayerName(playerid, sendername, sizeof(sendername));
				format(string, sizeof(string), "+5000 %s GOT 100 MP5 KILLS!!", sendername);
				SendClientMessageToAll(COLOR_LIGHTGREEN, string);
				GivePlayerMoney(killerid,5000);
				PlayerInfo[killerid][pExp] += 1000;
				}
			}
			else if(reason == 1)
			{
				if(IsPlayerConnected(killerid))
				{
				PlayerInfo[killerid][pKnucklekill]++;
				}
	   			if (PlayerInfo[killerid][pKnucklekill] == 15)
				{
	   			SendClientMessage(killerid,COLOR_YELLOW," Well done you Got 15 Knuckle Duster kills!! (You got 8000 Dollars and 1500 Exp)");
	   			new sendername[MAX_PLAYER_NAME];
			    GetPlayerName(playerid, sendername, sizeof(sendername));
				format(string, sizeof(string), "+8000 %s GOT 15 KNUCKLE DUSTER KILLS!!", sendername);
				SendClientMessageToAll(COLOR_LIGHTGREEN, string);
				GivePlayerMoney(killerid,8000);
				PlayerInfo[killerid][pExp] += 1500;
				}
			}
			}
		if (LSPDTeam[killerid] && GroveTeam[playerid]==1) // North Kill South
		{
			PlayerInfo[killerid][pExp] += 10;
			PlayerInfo[playerid][pDeaths] += 1;
			PlayerInfo[killerid][pKills] = PlayerInfo[killerid][pKills] + 1;
			TextDrawShowForPlayer(killerid, Xp);
			SetTimerEx("Exitxp", 5000, 0, "i", killerid);
			SetPlayerScore(playerid,1);
			Death[playerid] = 1;
			Killer[playerid] = killerid;
			if(reason == 16)
			{
				if(IsPlayerConnected(killerid))
				{
				PlayerInfo[killerid][pGrenadekill] += 1;
				}
	   			if (PlayerInfo[killerid][pGrenadekill] == 25)
				{
	   			SendClientMessage(killerid,COLOR_YELLOW," Well done you Got 25 Grenade kills!! (You got 7500 Dollars and 350 Exp)");
	   			new sendername[MAX_PLAYER_NAME];
			    GetPlayerName(playerid, sendername, sizeof(sendername));
				format(string, sizeof(string), "+7500 %s GOT 25 GRENADE KILLS!!", sendername);
				SendClientMessageToAll(COLOR_LIGHTGREEN, string);
				GivePlayerMoney(killerid,7500);
				PlayerInfo[killerid][pExp] += 350;
				}
			}
			else if(reason == 29)
			{
				if(IsPlayerConnected(killerid))
				{
				PlayerInfo[killerid][pMp5kill] += 1;
				}
	   			if (PlayerInfo[killerid][pMp5kill] == 100)
				{
	      		SendClientMessage(killerid,COLOR_YELLOW," Well done you Got 100 MP5 kills!! (You got 5000 Dollars and 200 Exp)");
				new sendername[MAX_PLAYER_NAME];
			    GetPlayerName(playerid, sendername, sizeof(sendername));
				format(string, sizeof(string), "+5000 %s GOT 100 MP5 KILLS!!", sendername);
				SendClientMessageToAll(COLOR_LIGHTGREEN, string);
				GivePlayerMoney(killerid,5000);
				PlayerInfo[killerid][pExp] += 200;
				}
			}
			else if(reason == 1)
			{
				if(IsPlayerConnected(killerid))
				{
				PlayerInfo[killerid][pKnucklekill] += 1;
			 }
	   			if (PlayerInfo[killerid][pKnucklekill] == 15)
				{
	   			SendClientMessage(killerid,COLOR_YELLOW," Well done you Got 15 Knuckle Duster kills!! (You got 8000 Dollars and 400 Exp)");
				new sendername[MAX_PLAYER_NAME];
			    GetPlayerName(playerid, sendername, sizeof(sendername));
				format(string, sizeof(string), "+8000 %s GOT 15 KNUCKLE DUSTER KILLS!!", sendername);
				SendClientMessageToAll(COLOR_LIGHTGREEN, string);
				GivePlayerMoney(killerid,8000);
				PlayerInfo[killerid][pExp] += 400;
				}
	  			}
	  			}
	    if (GroveTeam[playerid] && GroveTeam[killerid] ) // South Team Kill
	   		 {
	         SendClientMessage(killerid, COLOR_RED, "Do not Team Kill (-1000$)");
	         GivePlayerMoney(killerid,-1000);
	         return 1;
	         }
	    if (LSPDTeam[playerid] && LSPDTeam[killerid] ) // North Team Kill
	         {
	         SendClientMessage(killerid, COLOR_RED, "Do not Team Kill(-1000$)");
	         GivePlayerMoney(killerid,-1000);
	         return 1;
	         }
	 }
	return 1;
}
public OnPlayerPickUpPickup(playerid, pickupid)
{
    if(pickupid == healthpickup0,healthpickup1,healthpickup2,healthpickup3,healthpickup4,healthpickup5,healthpickup6,healthpickup7,healthpickup8,healthpickup9,healthpickup10,healthpickup11,healthpickup12,healthpickup13,healthpickup14, healthpickup15,healthpickup16)
    {
    	SetPlayerHealth(playerid, 100);
	}
	return 1;

}

public OnPlayerEnterCheckpoint(playerid)
{
	new vehicleid = GetPlayerVehicleID(playerid);
	if(PCheckpoint[playerid] == LSPDHQ1)
	{
		if(LSPDTeam[playerid] == 1)
		{
			if(vehicleid == GroveVan1)
			{
				if(GetPlayerState(playerid) == PLAYER_STATE_DRIVER)
				{
				    new name[ 24 ];
					GetPlayerName( playerid, name, 24 );
				    new string[256];
					format(string, sizeof(string), "%s Stole one of the grove Street vans and brought it to the LSPD, he/she gets 5500$ and gets 500$ for there team", name);
					SendClientMessageToAll(COLOR_LIGHTGREEN, string);
					format( string, sizeof(string), "~w~%s Succesfully! Stole One Of The ~g~ Grove Street Vans!", name );
	    			GameTextForAll( string, 5000, 5 );
				    PCheckpoint[playerid] = NOCP;
					SetVehicleToRespawn(GroveVan1);
					GivePlayerMoney(playerid, 5500);
					PlayerInfo[playerid][pVan] += 1;
					DisablePlayerCheckpoint(playerid);
	    			PlayerInfo[playerid][pExp] = PlayerInfo[playerid][pExp] + 50;
					for(new i = 0; i < MAX_PLAYERS; i++)
					{
						if(LSPDTeam[i] == 1)
						{
							GivePlayerMoney(i, 500);
							PlayerInfo[i][pExp] = PlayerInfo[i][pExp] + 50;
							return 1;
						}
					}
					return 1;
				}
				else return SendClientMessage(playerid, COLOR_RED, "ERROR: Your not the driver of this van");
			}
			if(vehicleid == GroveVan2)
			{
			    if(GetPlayerState(playerid) == PLAYER_STATE_DRIVER)
				{
				    new name[24];
					GetPlayerName(playerid, name,24);
				    new string[256];
					format(string, sizeof(string), "%s Stole one of the Grove Street vans and brought it to the LSPD, he/she gets 5500$ and gets 500$ for there team", name);
					SendClientMessageToAll(COLOR_LIGHTGREEN, string);
					format( string, sizeof(string), "~w~%s Succesfully Stole One Of The ~g~ Grove Street Vans!", name );
	    			GameTextForAll( string, 5000, 5 );
				    PCheckpoint[playerid] = NOCP;
					SetVehicleToRespawn(GroveVan2);
					GivePlayerMoney(playerid, 5500);
					PlayerInfo[playerid][pVan] += 1;
					DisablePlayerCheckpoint(playerid);
					PlayerInfo[playerid][pExp] = PlayerInfo[playerid][pExp] + 50;
					for(new i = 0; i < MAX_PLAYERS; i++)
					{
						if(LSPDTeam[i] == 1)
						{
							GivePlayerMoney(i, 500);
							PlayerInfo[i][pExp] = PlayerInfo[i][pExp] + 50;
							return 1;
						}
					}
					return 1;
				}
				else return SendClientMessage(playerid, COLOR_RED, "ERROR: Your not the driver of this van");
			}
			else return SendClientMessage(playerid, COLOR_RED, "ERROR: Your not in one of the others teams van");
		}
		else return SendClientMessage(playerid, COLOR_RED, "ERROR: your not in the ~b~ LSPD");
	}
	if(PCheckpoint[playerid] == GroveHQ1)
	{
		if(GroveTeam[playerid] == 1)
		{
			if(vehicleid == LSPDVan1)
			{
			    new sendername[MAX_PLAYER_NAME];
			    GetPlayerName(playerid, sendername, sizeof(sendername));
			    new string[256];
				format(string, sizeof(string), "%s Stole one of the LSPD vans and brought it to Grove Street, he/she gets 5500$ and gets 500$ for there team", sendername);
				SendClientMessageToAll(COLOR_LIGHTGREEN, string);
				new name[ 24 ];
				GetPlayerName( playerid, name, 24 );
				format( string, sizeof(string), "~w~%s Succesfully Stole One Of The ~b~ LSPD Vans!", name );
    			GameTextForAll( string, 5000, 5 );
			    PCheckpoint[playerid] = NOCP;
				SetVehicleToRespawn(LSPDVan1);
				GivePlayerMoney(playerid, 5500);
				PlayerInfo[playerid][pVan] += 1;
				DisablePlayerCheckpoint(playerid);
				PlayerInfo[playerid][pExp] = PlayerInfo[playerid][pExp] + 20;
				for(new i = 0; i < MAX_PLAYERS; i++)
				{
					if(GroveTeam[i] == 1)
					{
						GivePlayerMoney(i, 500);
						PlayerInfo[i][pExp] = PlayerInfo[i][pExp] + 20;
						return 1;
					}
				}
				return 1;
			}
			if(vehicleid == LSPDVan2)
			{
			    new sendername[MAX_PLAYER_NAME];
			    GetPlayerName(playerid, sendername, sizeof(sendername));
			    new string[256];
				format(string, sizeof(string), "%s Stole one of the LSPD vans and brought it to Grove Street, he/she gets 5500$ and gets 500$ for there team", sendername);
				SendClientMessageToAll(COLOR_LIGHTGREEN, string);
				new name[ 24 ];
				GetPlayerName( playerid, name, 24 );
				format( string, sizeof(string), "~w~%s Succesfully Stole One Of The ~b~ LSPD Vans!", name );
    			GameTextForAll( string, 5000, 5 );
			    PCheckpoint[playerid] = NOCP;
				SetVehicleToRespawn(LSPDVan2);
				GivePlayerMoney(playerid, 5500);
				PlayerInfo[playerid][pVan] += 1;
				DisablePlayerCheckpoint(playerid);
				PlayerInfo[playerid][pExp] = PlayerInfo[playerid][pExp] + 20;
				for(new i = 0; i < MAX_PLAYERS; i++)
				{
					if(GroveTeam[i] == 1)
					{
						GivePlayerMoney(i, 500);
						PlayerInfo[i][pExp] = PlayerInfo[i][pExp] + 20;
						return 1;
					}
				}
				return 1;
			}
			else return SendClientMessage(playerid, COLOR_RED, "ERROR: Your not in one of the others teams van");

		}
		else return SendClientMessage(playerid, COLOR_RED, "ERROR: your not on the Grove Street Gangs");
	}
	return 1;
}

public OnPlayerStateChange(playerid, newstate, oldstate)
{
	if(newstate == PLAYER_STATE_DRIVER)
	{
	    	new string[128];
			new vehicle = GetPlayerVehicleID(playerid);
	    	if(vInfo[vehicle][vBuyAble] == 1)
	    	{
	        	new EngineStatus[MAX_VEHICLES];
	        	TogglePlayerControllable(playerid,0);
	        	EngineStatus[GetPlayerVehicleID(playerid)] = 0;
	        	format(string,sizeof(string),"This vehicle is for sale, you can buy it for %d$ (/buyvehicle)",vInfo[vehicle][vPrice]);
	        	SendClientMessage(playerid,0x33CCFFFF,string);
	        	SendClientMessage(playerid, COLOR_ORANGE, "To Cancel Type /cancel");
				return 1;
	    	}
			if(vInfo[vehicle][vBuyAble] == 2 && PlayerInfo[playerid][pSQLId] != vInfo[vehicle][vOwnerId])
			{
				SendClientMessage(playerid, COLOR_RED, "This is not your vehicle");
				RemovePlayerFromVehicle(playerid);
				TogglePlayerControllable(playerid,1);
				return 1;
			}
 			else if(vInfo[vehicle][vBuyAble] == 2 && PlayerInfo[playerid][pSQLId] == vInfo[vehicle][vOwnerId])
	    	{
   				SendClientMessage(playerid,0x33CCFFFF,"Welcome to your vehicle.");
				return 1;
	    	}
			return 1;
	}
	return 1;
}
public OnPlayerCommandText(playerid, cmdtext[])
{
    dcmd(kill,4,cmdtext);
	dcmd(cancel,6,cmdtext);
    dcmd(disarm, 6, cmdtext);
    dcmd(freeze, 6, cmdtext);
    dcmd(unfreeze, 8, cmdtext);
    dcmd(slap, 4, cmdtext);
    dcmd(sethp, 5, cmdtext);
    dcmd(amsg, 4, cmdtext);
    dcmd(whois, 5, cmdtext);
	dcmd(ac,2,cmdtext);
	dcmd(t,1,cmdtext);
	dcmd(spec,4,cmdtext);
	dcmd(specoff,7,cmdtext);
	dcmd(mute,4,cmdtext);
	dcmd(unmute,6,cmdtext);
	dcmd(meto, 4, cmdtext);
	dcmd(tome, 4, cmdtext);
	dcmd(flip,4,cmdtext);
	dcmd(destroyveh,10,cmdtext);
	dcmd(madmin, 6, cmdtext);
	dcmd(setreborn,9,cmdtext);
	dcmd(changeskin,10,cmdtext);
	dcmd(setarmour,9,cmdtext);
	dcmd(aod,3,cmdtext);
	dcmd(l,1,cmdtext);
	dcmd(say,3,cmdtext);
	dcmd(anticheat,9,cmdtext);
	dcmd(pm,2,cmdtext);
	dcmd(setrank,7,cmdtext);
	dcmd(report,6,cmdtext);


	
	//dual system commands
	dcmd(watchduals,10,cmdtext);
	dcmd(leavewatch,10,cmdtext);
	dcmd(dual,4,cmdtext);
	dcmd(acceptdual,10,cmdtext);
	dcmd(declinedual,11,cmdtext);

//-----------------------------/cchat-------------------------------------------------------------------
	new cmd[256];
    new idx;
	cmd = strtok(cmdtext, idx);
	if(strcmp(cmdtext, "/cchat", true) == 0)
	{
		if (PlayerInfo[playerid][pAdmin] >= 3)
		{
			for(new i = 1; i <= 49; i++)
			{
				SendClientMessageToAll(0, "\n");
			}
            SendClientMessageToAll(COLOR_LIGHTGREEN, "The ChatBox Was Cleared.");
			return true;
		}
  		else return SendClientMessage(playerid, COLOR_DARKRED,"[VT ERROR] This is an admin (level 1-3) command only");
	}
//------------------------------------/sa--------------------------------------------------------------------------------

   	new tmp[256];
	if (strcmp("/sa", cmdtext, true, 10) == 0)
	{
	    if(IsPlayerAdmin(playerid))
	    {
			SetTimer("Announcements", 700000, 1);
		}
		else
		{
		    SendClientMessage(playerid, COLOR_WHITE, "[VT ERROR] You are not logged into rcon.");
		}
		return 1;
//-------------------------------------Command Help--------------------------------------------------------------------------
	}
	if (strcmp("/commands", cmdtext, true, 10) == 0)
	{
	    SendClientMessage(playerid, COLOR_WHITE, "___________Commands____________________");
	    SendClientMessage(playerid, COLOR_ORANGE, "These are the the commands:");
    	SendClientMessage(playerid, COLOR_ORANGE, "/register :: /login :: /stats :: /goals :: /reborn :: /menu");
    	SendClientMessage(playerid, COLOR_ORANGE, "/l for local chat");
    	SendClientMessage(playerid, COLOR_ORANGE, "/help :: /ahelp(admins only)");
    	SendClientMessage(playerid, COLOR_ORANGE, "/kills,::/ranking::/rinfo");
    	SendClientMessage(playerid, COLOR_ORANGE, "/admins(shows available Admins Online)");
		SendClientMessage(playerid, COLOR_ORANGE, "/t (team chat)");
		SendClientMessage(playerid, COLOR_ORANGE, "/sinfo (Server's Info [read it])");
		SendClientMessage(playerid, COLOR_ORANGE, "/report - Send The Admins A Report");
		SendClientMessage(playerid, COLOR_WHITE, "__________Commands_____________________");

		return 1;
	}
	if (strcmp("/help", cmdtext, true, 10) == 0)
	{
	    SendClientMessage(playerid, COLOR_GREEN, "_______________________________HELP___________________________________________________");
		SendClientMessage(playerid, COLOR_ORANGE, "Welcome to the server.");
		SendClientMessage(playerid, COLOR_YELLOW, "Please view the rules before you start by typing /rules");
		SendClientMessage(playerid, COLOR_LAWNGREEN, "Type /commands for a list of commands");
		SendClientMessage(playerid, COLOR_YELLOW, "Type /gamepoint to see what you have to do");
  		SendClientMessage(playerid, COLOR_GREEN, "_______________________________HELP___________________________________________________");
		return 1;
	}
	if (strcmp("/reborn", cmdtext, true, 10) == 0)
	{
	    SendClientMessage(playerid, COLOR_GREEN, "_______________________________REBORN___________________________________________________");
		SendClientMessage(playerid, COLOR_ORANGE, "Reborn is when you reset all of your goals and go back to rank 0.  ");
		SendClientMessage(playerid, COLOR_YELLOW, "Although after you have done this you can do stuff that other people cannot do. ");
		SendClientMessage(playerid, COLOR_LAWNGREEN, "Before you decide to Reborn your character, CMD: /rreborn");
  		SendClientMessage(playerid, COLOR_GREEN, "_______________________________REBORN___________________________________________________");
		return 1;
	}
	if (strcmp("/goals", cmdtext, true, 10) == 0)
	{
	    SendClientMessage(playerid, COLOR_LIGHTGREEN, "|________________ Goals ________________________________________________________________|");
		SendClientMessage(playerid, COLOR_YELLOW, "In this server there is many different goals you can do, When you complete goals");
		SendClientMessage(playerid, COLOR_YELLOW, "you can earn yourself different things in the server that give you an advantage in the game.");
		SendClientMessage(playerid, COLOR_YELLOW, "The different categories for Goals are as followed: /kills::/Ranking::/vans");
        SendClientMessage(playerid, COLOR_LIGHTGREEN, "|________________ Goals ________________________________________________________________|");
		return 1;
	}
	if (strcmp("/carhelp", cmdtext, true, 10) == 0)
	{
	    SendClientMessage(playerid, COLOR_LIGHTGREEN, "|________________ Car Buying ________________________________________________________________|");
		SendClientMessage(playerid, COLOR_YELLOW, "Heres the Differnt Car Coomands:");
		SendClientMessage(playerid, COLOR_YELLOW, "/buyvehicle, /sellvehicle, /park, /rcar");
		SendClientMessage(playerid, COLOR_YELLOW, "Have Fun!");
        SendClientMessage(playerid, COLOR_LIGHTGREEN, "|________________ Car Buying ________________________________________________________________|");
		return 1;
	}
	if(strcmp(cmd,"/ranking",true)==0)
    {
        if(IsPlayerConnected(playerid))
	    {
	        new string[128];
			SendClientMessage(playerid, COLOR_LIGHTGREEN, "|________________ Ranking Goals ________________|");
			format(string, sizeof(string), "** Rank 4 - Helicopter Usage: %s.", CCN[PlayerInfo[playerid][pHeligoal]]);
			SendClientMessage(playerid, COLOR_GREEN, string);
			format(string, sizeof(string), "** Rank 6 - Armour Bar: %s.", CCN[PlayerInfo[playerid][pArmourgoal]]);
			SendClientMessage(playerid, COLOR_GREEN, string);
			format(string, sizeof(string), "** Rank 8 - /Mapvis Command: %s.", CCN[PlayerInfo[playerid][pMapgoal]]);
			SendClientMessage(playerid, COLOR_GREEN, string);
			SendClientMessage(playerid, COLOR_LIGHTGREEN, "|_______________________________________________|");
		}
	    return 1;
 	}
//---------------------------------------------------------------/kills-------------------------------------------------------------------
	if(strcmp(cmd,"/kills",true)==0)
    {
        if(IsPlayerConnected(playerid))
	    {
	        new grkills = PlayerInfo[playerid][pGrenadekill];
	        new mpkills = PlayerInfo[playerid][pMp5kill];
	        new knkills = PlayerInfo[playerid][pKnucklekill];
	        new string[128];
	        new text1[20];
	        new text2[20];
			new text3[20];
	        if(PlayerInfo[playerid][pGrenadekill] == 25) { text1 = "Complete!"; } else { text1 = "Not Complete"; }
            if(PlayerInfo[playerid][pMp5kill] == 100) { text2 = "Complete!"; } else { text2 = "Not Complete"; }
            if(PlayerInfo[playerid][pKnucklekill] == 15) { text3 = "Complete!"; } else { text3 = "Not Complete"; }
	        SendClientMessage(playerid, COLOR_LIGHTGREEN, "|________________ Kills Goals ________________|");
	        format(string, sizeof(string), "** %d /25 Grenades kills: %s.",grkills, text1);
			SendClientMessage(playerid, COLOR_WHITE, string);
			format(string, sizeof(string), "** %d /100 MP5 kills: %s.",mpkills, text2);
			SendClientMessage(playerid, COLOR_YELLOW, string);
			format(string, sizeof(string), "** %d /15 Knuckle Duster kills: %s.",knkills, text3);
			SendClientMessage(playerid, COLOR_GOLD, string);
			SendClientMessage(playerid, COLOR_LIGHTGREEN, "|______________________________________________|");
		}
	    return 1;
 	}
 	
//-------------------------------------------------/vans----------------------------------------------------------------------------------------
	if(strcmp(cmd,"/vans",true)==0)
    {
        if(IsPlayerConnected(playerid))
	    {
	        new string[128];
	        new text1[20];
	        new text2[20];
	        if(PlayerInfo[playerid][pMenugoal]) { text1 = "Complete!"; } else { text1 = "Not Complete"; }
            if(PlayerInfo[playerid][pHeligoal]) { text2 = "Complete!"; } else { text2 = "Not Complete"; }
	        SendClientMessage(playerid, COLOR_BLACK, "|______________ Stolen Van Goals ______________|");
	        format(string, sizeof(string), "** : %s.", text1);
			SendClientMessage(playerid, COLOR_GREEN, string);
			format(string, sizeof(string), "** : %s.", text2);
			SendClientMessage(playerid, COLOR_GREEN, string);
			SendClientMessage(playerid, COLOR_BLACK, "|______________________________________________|");
		}
	    return 1;
 	}
 	
//------------------------------------------------/menu------------------------------------------------------------------------------------------
	if(strcmp(cmdtext, "/Menu", true) == 0)
	{
		if(PlayerInfo[playerid][pRank] >= 0)
		{
        	SendClientMessage(playerid,COLOR_RED,"This Command Has Been Disabled");
		}
		return 1;
	}
	
//----------------------------------------------/tele----------------------------------------------------------------------------------------
	
	if(strcmp(cmdtext, "/tele", true) == 0)
	{
		if(PlayerInfo[playerid][pAdmin] >= 2)
		{
        	ShowMenuForPlayer(Tele, playerid);
		}
		else
		{
			SendClientMessage(playerid,COLOR_DARKRED,"[VT ERROR] Sorry, You can't Use this Cmd");
		}
		return 1;
	}
	
//----------------------------------------------Player Help----------------------------------------------------------------------------------------------

	if (strcmp("/rules", cmdtext, true, 10) == 0)
	{
		SendClientMessage(playerid, COLOR_ORANGERED, "Just Before you get going. Take these rules into account....");
		SendClientMessage(playerid, COLOR_ORANGERED, "NO Powergaming - Don't abuse bugs/glitches");
		SendClientMessage(playerid, COLOR_ORANGERED, "NO spamming -- NO swearing");
		SendClientMessage(playerid, COLOR_ORANGERED, "NO TEAMKILLING -- Do Not Abuse Admins");
		SendClientMessage(playerid, COLOR_ORANGERED, "No Hackin -- Do Not SpawnKill");
		SendClientMessage(playerid, COLOR_ORANGERED, "Allways speak English");
		SendClientMessage(playerid, COLOR_ORANGERED, "Do Not Ever Advertise Here, This Will GET YOU BANNED (NO EXCEPTIONS)");
		SendClientMessage(playerid, COLOR_ORANGERED, "Do Not Ever Ask To Be Admin On The Server,Or you Will Get Kicked(NO EXCEPTIONS)");
		SendClientMessage(playerid, COLOR_ORANGERED, "If you see anyone breaking these rules, please report or post on our forums at rock-gaming.com/vantheift");
		return 1;

	}
	if (strcmp("/gamepoint", cmdtext, true, 10) == 0)
	{
	SendClientMessage(playerid, COLOR_RED, "***********************************************HAVE FUN****************************************************************");
	SendClientMessage(playerid, COLOR_WHITE, "The aim of this server is to steal the other gangs vans that are full of meth and coke (marked in yellow in the map).");
	SendClientMessage(playerid, COLOR_WHITE, "Your team also has vans to protect that are packed full of drugs");
	SendClientMessage(playerid, COLOR_WHITE, "Each team has two vans, The Player Who Steals one of the two Vans Will Receive 2000$ and Will Set Their team 500$ !");
	SendClientMessage(playerid, COLOR_WHITE, "You can use /stats to check your kills and deaths");
	SendClientMessage(playerid, COLOR_RED, "**********************************************HAVE FUN!*****************************************************************");
	return 1;

	}
	if(strcmp(cmdtext,"/rinfo", true) == 0)
	{
	SendClientMessage(playerid, COLOR_LIGHTGREEN, "|______________ Rank Info ______________|");
	SendClientMessage(playerid, COLOR_WHITE, "Rank 1 = 1200 Exp");
	SendClientMessage(playerid, COLOR_YELLOW, "Rank 2 = 4800 Exp ");
	SendClientMessage(playerid, COLOR_LIGHTGREEN, "|______________ Rank Info ______________|");
	return 1;
	}
	if(strcmp(cmdtext,"/sinfo", true) == 0)
	{
		SendClientMessage(playerid,COLOR_YELLOW,"**_________________________________Server's Info__________________________________________**");
  		SendClientMessage(playerid,COLOR_WHITE,"This Server is Owned By 'Rock-Gaming:Santos War'");
		SendClientMessage(playerid,COLOR_WHITE,"Our Website is santoswar.rock-gaming.com");
		SendClientMessage(playerid,COLOR_WHITE,"The Website and Server is presented by the Rock Gaming Community (Rock-gaming.com)");
        SendClientMessage(playerid,COLOR_WHITE,"If You have Any Question Register @ santoswar.rock-gaming.com");
		SendClientMessage(playerid,COLOR_WHITE,"This Script Belongs to us. 2009.Copyright.");
		SendClientMessage(playerid,COLOR_YELLOW, "**_________________________________Server's Info__________________________________________**");
		return 1;
	}
	if(strcmp(cmdtext,"/ahelp", true) == 0)
	{
		if(PlayerInfo[playerid][pAdmin] >= 1)
  		{
  		    SendClientMessage(playerid,COLOR_YELLOW,"_________________________________Admin's Help__________________________________________");
  		    SendClientMessage(playerid,COLOR_LAWNGREEN, "    *|* Administrator Commands *|*");
			SendClientMessage(playerid,COLOR_WHITE, "Level 1+: /jail, /spec, /specoff, /specvehicle, /kick, /(un)freeze, /warn, /ac, /check, /slap, /disarm, /flip, /aod, /meto, /tome");
			SendClientMessage(playerid,COLOR_YELLOW,"Level 2+: /whois, /amsg, /(un)mute, /og, /changeskin, /tele");
			SendClientMessage(playerid,COLOR_GREEN, "Level 3+: /setarmour, /sethp,  /destroyveh, /cchat, /ann, /ban");
   			SendClientMessage(playerid,COLOR_GREEN, "Lead+(4): /madmin, /veh, /makeprem, /rmoney, /givegun, /rcon login, /setreborn, /anticheat, /sa, /setrank");
   			SendClientMessage(playerid,COLOR_GREEN, "RCON: /addcar, /cartype, /carprice, /setcar, /carcolor, /killcar, /respawnall, /wipecars ");
			SendClientMessage(playerid,COLOR_YELLOW,"_______________________________________________________________________________________");
			return true;
		}
		else return SendClientMessage(playerid,COLOR_DARKRED,"[VT ERROR] You Cannot Use This Command, Admins Only!!");
	}

//---------------------------------------------/mapvis(bugged)-----------------------------------------------------------------------------------
/*	if(strcmp(cmdtext,"/mapvis", true) == 0)
	{
			if(PlayerInfo[playerid][pRank] >= 8)
			{
				if(MapVis[playerid] == 0)
				{
					for(new i = 0; i<MAX_PLAYERS; i++)
					{
						SetPlayerMarkerForPlayer(i, playerid, 0xFFFFFF00);
						SendClientMessage(playerid, WHITE, "SERVER: Mapvis turned on");
						MapVis[playerid] = 1;
					}
				}
				if(MapVis[playerid] == 1)
				{
					if(LSPDTeam[playerid] == 1)
    				{
						SetPlayerColor(playerid, COLOR_GREEN);
						SendClientMessage(playerid, WHITE, "SERVER: Mapvis turned off");
						MapVis[playerid] = 0;
						return 1;
					}
					if(GroveTeam[playerid] == 1)
					{
						SetPlayerColor(playerid, COLOR_GREEN);
						SendClientMessage(playerid, WHITE, "SERVER: Mapvis turned off");
						MapVis[playerid] = 0;
						return 1;
					}
					return 1;
				}
				return 1;
			}
			else return SendClientMessage(playerid, RED, "[ERROR]: You are not rank 8!");
		}
*/

//---------------------------------------------------Reborn CMD---------------------------------------------------------------------------------
	if(strcmp(cmdtext,"/rreborn", true) == 0)
	{
	    if(PlayerInfo[playerid][pRank] >= 15)
		{
		    PlayerInfo[playerid][pReborn]++;
		    PlayerInfo[playerid][pRank] = 0;
		    PlayerInfo[playerid][pExp] = 0;
		    PlayerInfo[playerid][pMp5kill] = 0; // Do not remove kills, these are the kills for mp5 goal e.t.c.
		    PlayerInfo[playerid][pGrenadekill] = 0;
		    PlayerInfo[playerid][pKnucklekill] = 0;
		    PlayerInfo[playerid][pMenugoal] = 0;
		    PlayerInfo[playerid][pHeligoal] = 0;
		    PlayerInfo[playerid][pArmourgoal] = 0;
		    PlayerInfo[playerid][pMapgoal] = 0;
	    	SendClientMessage(playerid, COLOR_GREEN, "_________Congratsulations - You have now been reborn!_________");
   			//reborn Message to all
			new pName[MAX_PLAYER_NAME];
			new string[128];
			new rebornl = PlayerInfo[playerid][pRank];
    		GetPlayerName(playerid, pName, sizeof(pName));
    		format(string, sizeof(string), "Congratulations to %s on getting getting Reborn (%d times).", pName,rebornl);
    		SendClientMessageToAll(COLOR_LIGHTGREEN, string);
			return 1;
		}
		else return SendClientMessage(playerid, RED, "[VT ERROR]: You are not rank 15!");
}
//---------------------------------------------Admin Gate SF----------------------------------------------------------------------------------------
	if (strcmp(cmd, "/og", true) == 0)
	{
		if (PlayerInfo[playerid][pAdmin] >= 1)
	    {
			MoveObject(gate1,-2595.839599 , 687.406921 , 17.812500,5.0);
  			MoveObject(gate2,-2595.835693 , 682.120056 , 17.812500,5.0);
			SetTimerEx( "Closegate", 10000, false, "i", playerid );
			SendClientMessage(playerid, COLOR_RED,"[VT NOTICE] The Gate Will Close In 10 seconds");
		}
		return 1;
	}


//---------------------------[Local (l)]-------------------------------------------------------------------------------------------------------
	if (strcmp(cmd, "/stats", true) == 0)
	{
	    if(IsPlayerConnected(playerid))
	    {
			if (gPlayerLogged[playerid] != 0)
			{
				ShowStats(playerid,playerid);
			}
			else
			{
				SendClientMessage(playerid, COLOR_MEDIUMSEAGREEN, "[VT ERROR] You are not Logged in !");
			}
		}
		return 1;
	}

//-----------------------------------------------------BAN-----------------------------------------------------------------------------------------
	if(strcmp(cmd, "/ban", true) == 0)
	{
	    new giveplayerid;
	    giveplayerid = ReturnUser(tmp);
	    new giveplayer[MAX_PLAYER_NAME];
	    new string[256];
		new sendername[MAX_PLAYER_NAME];

	    if(IsPlayerConnected(playerid))
	    {
	    	tmp = strtok(cmdtext, idx);
			if(!strlen(tmp))
			{
				SendClientMessage(playerid, COLOR_DARKORCHID, "[VT ERROR] USAGE: /ban [playerid/PartOfName] [reason]");
				return 1;
			}
			giveplayerid = ReturnUser(tmp);
			if (PlayerInfo[playerid][pAdmin] >= 3)
			{
			    if(IsPlayerConnected(giveplayerid))
			    {
			        if(giveplayerid != INVALID_PLAYER_ID)
			        {
					    GetPlayerName(giveplayerid, giveplayer, sizeof(giveplayer));
						GetPlayerName(playerid, sendername, sizeof(sendername));
						new length = strlen(cmdtext);
						while ((idx < length) && (cmdtext[idx] <= ' '))
						{
							idx++;
						}
						new offset = idx;
						new result[64];
						while ((idx < length) && ((idx - offset) < (sizeof(result) - 1)))
						{
							result[idx - offset] = cmdtext[idx];
							idx++;
						}
						result[idx - offset] = EOS;
						if(!strlen(result))
						{
							SendClientMessage(playerid, COLOR_DARKORCHID, "{VT ERROR] USAGE: /ban [playerid/PartOfName] [reason]");
							return 1;
						}
						new year, month,day;
						getdate(year, month, day);
						format(string, sizeof(string), " %s was banned by %s, reason: %s (%d-%d-%d)", giveplayer, sendername, (result),month,day,year);
						BanLog(string);
						SendClientMessageToAll(COLOR_CRIMSON, string);
						format(string, sizeof(string), "In Game Name: %s", giveplayer);
						SendClientMessage(giveplayerid,COLOR_YELLOW,string);
						format(string, sizeof(string), "Who Banned You: %s", sendername);
						SendClientMessage(giveplayerid,COLOR_YELLOW,string);
						format(string, sizeof(string), "Fill This Infomation Above In At rock-gaming.com in the ban-appeal section");
						SendClientMessage(giveplayerid,COLOR_GREEN,string);
						Ban(giveplayerid);
						return 1;
					}
				}
				else
				{
					format(string, sizeof(string), "[VT ERROR] %d is not an active player.", giveplayerid);
					SendClientMessage(playerid, COLOR_MEDIUMSEAGREEN, string);
				}
			}
			else return SendClientMessage(playerid, COLOR_DARKRED, "[VT ERROR] You are not an admin");
		}
		return 1;
	}
//-----------------------------------------------------report-----------------------------------------------------------------------------------------
//-----------------------------------------------------Warn----------------------------------------------------------------------------------------
	if(strcmp(cmd, "/warn", true) == 0)
	{
 		new giveplayerid;
	    giveplayerid = ReturnUser(tmp);
	    new giveplayer[MAX_PLAYER_NAME];
	    new string[256];
		new sendername[MAX_PLAYER_NAME];
	    if(IsPlayerConnected(playerid))
	    {
	    	tmp = strtok(cmdtext, idx);
			if(!strlen(tmp))
			{
				SendClientMessage(playerid, COLOR_DARKORCHID, "[VT ERROR]USAGE: /warn [playerid/PartOfName] [reason]");
				return 1;
			}
			giveplayerid = ReturnUser(tmp);
			if (PlayerInfo[playerid][pAdmin] >= 1)
			{
			    if(IsPlayerConnected(giveplayerid))
			    {
			        if(giveplayerid != INVALID_PLAYER_ID)
			        {
					    GetPlayerName(giveplayerid, giveplayer, sizeof(giveplayer));
						GetPlayerName(playerid, sendername, sizeof(sendername));
						new length = strlen(cmdtext);
						while ((idx < length) && (cmdtext[idx] <= ' '))
						{
							idx++;
						}
						new offset = idx;
						new result[64];
						while ((idx < length) && ((idx - offset) < (sizeof(result) - 1)))
						{
							result[idx - offset] = cmdtext[idx];
							idx++;
						}
						result[idx - offset] = EOS;
						if(!strlen(result))
						{
							SendClientMessage(playerid, COLOR_DARKORCHID, "[VT ERROR]USAGE: /warn [playerid/PartOfName] [reason]");
							return 1;
						}
						PlayerInfo[giveplayerid][pWarns] += 1;
						if(PlayerInfo[giveplayerid][pWarns] == 3)
						{
							format(string, sizeof(string), " %s was kicked by %s (had 3 Warnings), reason: %s", giveplayer, sendername, (result));
							SendClientMessageToAll(COLOR_CRIMSON, string);
							Kick(giveplayerid);
							return 1;
						}
						format(string, sizeof(string), "You warned %s, reason: %s", giveplayer, (result));
						SendClientMessage(playerid, COLOR_ORANGE, string);
						format(string, sizeof(string), "You were warned by %s, reason: %s", sendername, (result));
						SendClientMessage(giveplayerid, COLOR_CRIMSON, string);
						return 1;
					}
				}//not connected
			}
			else
			{
				format(string, sizeof(string), "[VT ERROR]   %d is not an active player.", giveplayerid);
				SendClientMessage(playerid, COLOR_MEDIUMSEAGREEN, string);
			}
		}
		return 1;
	}
	

//-------------------------------[Check]----------------------------------------------------------------------------------------------------
	if (strcmp(cmd, "/check", true) == 0)
	{
	    if(IsPlayerConnected(playerid))
	    {
	        new giveplayerid;
			if (PlayerInfo[playerid][pAdmin] >= 1)
			{
				tmp = strtok(cmdtext, idx);
				if(!strlen(tmp))
				{
					SendClientMessage(playerid, COLOR_MEDIUMSEAGREEN, "[VT ERROR]USAGE: /check [playerid/PartOfName]");
					return 1;
				}
				//giveplayerid = strval(tmp);
	            giveplayerid = ReturnUser(tmp);
				if(IsPlayerConnected(giveplayerid))
				{
				    if(giveplayerid != INVALID_PLAYER_ID)
				    {
						ShowStats(playerid,giveplayerid);
					}
				}
				else
				{
					SendClientMessage(playerid, COLOR_MEDIUMSEAGREEN, "[VT ERROR]No Such Player");
				}
			}
			else
			{
				SendClientMessage(playerid, COLOR_MEDIUMSEAGREEN, "[VT ERROR] You are not an admin");
			}
		}
		return 1;
	}
//-----------------------------------------------------/veh-----------------------------------------------------------------------------------------
	if(strcmp(cmd, "/veh", true) == 0)
	{
	    if(IsPlayerConnected(playerid))
	    {
	        if (PlayerInfo[playerid][pAdmin] <= 2)
			{
			    SendClientMessage(playerid, COLOR_MEDIUMSEAGREEN, "[VT ERROR] You are not authorized to use that command!");
			    return 1;
			}
			tmp = strtok(cmdtext, idx);
			if(!strlen(tmp))
			{
				SendClientMessage(playerid, COLOR_DARKORCHID, "[VT ERROR]USAGE: /veh [carid] [color1] [color2]");
				return 1;
			}
			new car;
			car = strval(tmp);
			if(car < 400 || car > 611) { SendClientMessage(playerid, COLOR_DARKRED, "[VT ERROR] Vehicle Number can't be below 400 or above 611 !"); return 1; }
			tmp = strtok(cmdtext, idx);
			if(!strlen(tmp))
			{
				SendClientMessage(playerid, COLOR_DARKORCHID, "[VT ERROR]USAGE: /veh [carid] [color1] [color2]");
				return 1;
			}
			new color1;
			color1 = strval(tmp);
			if(color1 < 0 || color1 > 126) { SendClientMessage(playerid, COLOR_DARKRED, "[VT ERROR]Color Number can't be below 0 or above 126 !"); return 1; }
			tmp = strtok(cmdtext, idx);
			if(!strlen(tmp))
			{
				SendClientMessage(playerid, COLOR_DARKORCHID, "[VT ERROR]USAGE: /veh [carid] [color1] [color2]");
				return 1;
			}
			new color2;
			color2 = strval(tmp);
			if(color2 < 0 || color2 > 126) { SendClientMessage(playerid, COLOR_DARKRED, "[VT ERROR]Color Number can't be below 0 or above 126 !"); return 1; }
			new Float:X,Float:Y,Float:Z;
			GetPlayerPos(playerid, X,Y,Z);
			new carid = CreateVehicle(car, X,Y,Z, 0.0, color1, color2, 60000);
			CreatedCars[CreatedCar] = carid;
			CreatedCar ++;
			new string[256];
			format(string, sizeof(string), "[SERVER]Vehicle %d spawned.", carid);
			SendClientMessage(playerid, COLOR_DARKRED, string);
		}
		return 1;
	}
//-----------------------------------------------------/players-----------------------------------------------------------------------------------------
	if(strcmp(cmd, "/players", true) == 0)
	{
	    if(IsPlayerConnected(playerid))
	    {
	        if (PlayerInfo[playerid][pAdmin] <= 1)
			{
			    SendClientMessage(playerid, COLOR_MEDIUMSEAGREEN, "[VT ERROR] You are not authorized to use that command!");
			    return 1;
			}
			new string[128];
			new team1 = TeamGrove;
			new team2 = TeamLSPD;
       		format(string,sizeof(string),"[SERVER]Players online: Grove Team[%d] - LSPD Team[%d]",team1,team2);
    		SendClientMessage(playerid,COLOR_SPRINGGREEN,string);
		}
		return 1;
	}
//-----------------------------------------------------Teambalancer-----------------------------------------------------------------------------------------
	if(strcmp(cmd, "/bug", true) == 0)
	{
	    if(IsPlayerConnected(playerid))
	    {
	        if (PlayerInfo[playerid][pAdmin] <= 1)
			{
			    SendClientMessage(playerid, COLOR_BISQUE, "[VT ERROR] Command for Admins 2+");
			    return 1;
			}
			SendClientMessage(playerid,COLOR_GREEN,"[SYSTEM]If for whatever reason the team balancer is bugging and peoople");
			SendClientMessage(playerid,COLOR_GREEN,"[SYSTEM]are having difficulty to spawn and stuff like that. Please use the");
			SendClientMessage(playerid,COLOR_GREEN,"[SYSTEM]command /teambalancerbug - I have made this command so that while the");
			SendClientMessage(playerid,COLOR_GREEN,"[SYSTEM]Team balancer is in testing, hopefulyl this will mean people can log into their");
			SendClientMessage(playerid,COLOR_GREEN,"[SYSTEM]characters on the server while im not online - any bugs must be report to");
			SendClientMessage(playerid,COLOR_GREEN,"[SYSTEM]Me ASAP....PS, /teambalancerbug may have to be used over and over");
			SendClientMessage(playerid,COLOR_GREEN,"[SYSTEM]but Please do not use it unless NEEDED, it reset's player count to 0.");
		}
		return 1;
	}
	if(strcmp(cmd, "/teambalancerbug", true) == 0)
	{
	    if(IsPlayerConnected(playerid))
	    {
	        if (PlayerInfo[playerid][pAdmin] <= 1)
			{
			    SendClientMessage(playerid, COLOR_BISQUE, "[VT ERROR] Command for Admins 2+");
			    return 1;
			}
			TeamLSPD = 0;
			TeamGrove = 0;
			SendClientMessage(playerid,COLOR_RED,"[SYSTEM]North and South player count set to 0!(/players)");
			SendClientMessage(playerid,COLOR_YELLOW,"[ADMIN] For more information on this command, see /bug");
		}
		return 1;
	}

	
//----------------------------------[GiveGun]-------------------------------------------------------------------------------------------------
	if(strcmp(cmd, "/givegun", true) == 0)
	{
	    if(IsPlayerConnected(playerid))
	    {
			tmp = strtok(cmdtext, idx);
			if(!strlen(tmp))
			{
				SendClientMessage(playerid, COLOR_DARKORCHID, "USAGE: /givegun [playerid/PartOfName] [weaponid(eg. 46 = Parachute)] [ammo]");
				return 1;
			}


			new playa;
			new gun;
			new ammo;
			playa = ReturnUser(tmp);
			tmp = strtok(cmdtext, idx);
			gun = strval(tmp);
			if(!strlen(tmp))
			{
				SendClientMessage(playerid, COLOR_BISQUE, "USAGE: /givegun [playerid/PartOfName] [weaponid] [ammo]");
				SendClientMessage(playerid, COLOR_HONEYDEW, "3(Club) 4(knife) 5(bat) 6(Shovel) 7(Cue) 8(Katana) 10-13(Dildo) 14(Flowers) 16(Grenades) 18(Molotovs) 22(Pistol) 23(SPistol)");
				SendClientMessage(playerid, COLOR_DARKORCHID, "24(Eagle) 25(shotgun) 29(MP5) 30(AK47) 31(M4) 33(Rifle) 34(Sniper) 37(Flamethrower) 41(spray) 42(exting) 43(Camera) 46(Parachute)");
				return 1;
			}
			if(gun < 1||gun > 46||gun==1||gun==2||gun==9||gun==17||gun==19||gun==20||gun==21||gun==36||gun==38||gun==44||gun==45)
			{ SendClientMessage(playerid, COLOR_BISQUE, "   wrong WeaponID!"); return 1; }
			tmp = strtok(cmdtext, idx);
			ammo = strval(tmp);
			if(ammo <1||ammo > 999)
			{ SendClientMessage(playerid, COLOR_BISQUE, "   dont go below 1 or above 999 bullets!"); return 1; }
			if (PlayerInfo[playerid][pAdmin] >= 3)
			{
			    if(AdminOnDuty[playerid] == 0)
			    {
				    if(IsPlayerConnected(playa))
				    {
				        if(playa != INVALID_PLAYER_ID)
				        {
							GivePlayerWeapon(playa, gun, ammo);
						}
					}
				}
				else return SendClientMessage(playerid, RED, "u cant use this command when ur onduty as an admin");
			}
			else
			{
				SendClientMessage(playerid, COLOR_RED, "[VT ERROR] Admin level 3+ are only allowed to use this command!");
			}
		}
		return 1;
	}
	
//----------------------------------[Kick]---------------------------------------------------------------------------------------
    if(strcmp(cmd, "/kick", true) == 0)
	{
 		new string[256];
 		new giveplayerid;
 		new giveplayer[MAX_PLAYER_NAME];
		new sendername[MAX_PLAYER_NAME];
		GetPlayerName(playerid, sendername, sizeof(sendername));
	    if(IsPlayerConnected(playerid))
	    {
	    	tmp = strtok(cmdtext, idx);
			if(!strlen(tmp))
			{
				SendClientMessage(playerid, COLOR_DARKORCHID, "[VT ERROR]USAGE: /kick [playerid/PartOfName] [reason]");
				return 1;
			}
			giveplayerid = ReturnUser(tmp);
			if (PlayerInfo[playerid][pAdmin] >= 1)
			{
				if(IsPlayerConnected(giveplayerid))
				{
				    if(giveplayerid != INVALID_PLAYER_ID)
				    {
					    GetPlayerName(giveplayerid, giveplayer, sizeof(giveplayer));
						GetPlayerName(playerid, sendername, sizeof(sendername));
						new length = strlen(cmdtext);
						while ((idx < length) && (cmdtext[idx] <= ' '))
						{
							idx++;
						}
						new offset = idx;
						new result[64];
						while ((idx < length) && ((idx - offset) < (sizeof(result) - 1)))
						{
							result[idx - offset] = cmdtext[idx];
							idx++;
						}
						result[idx - offset] = EOS;
						if(!strlen(result))
						{
							SendClientMessage(playerid, COLOR_DARKORCHID, "[VT ERROR]USAGE: /kick [playerid/PartOfName] [reason]");
							return 1;
						}
						format(string, sizeof(string), "[SERVER] %s was kicked by %s, reason: %s", giveplayer, sendername, (result));
						SendClientMessageToAll(COLOR_CRIMSON, string);
						Kick(giveplayerid);
						return 1;

					}
				}
			}

			else
			{
				format(string, sizeof(string), "[VT ERROR] %d is not an active player.", giveplayerid);
				SendClientMessage(playerid, COLOR_BISQUE, string);
			}
		}
		return 1;
	}

//----------------------------------[MAKEpre-m]-------------------------------------------------------------------------------------------------
	if(strcmp(cmd, "/makeprem", true) == 0)
	{
	    if(IsPlayerConnected(playerid))
	    {
	        new string[256];
	        new giveplayer[MAX_PLAYER_NAME];
			new sendername[MAX_PLAYER_NAME];
			GetPlayerName(playerid, sendername, sizeof(sendername));
			tmp = strtok(cmdtext, idx);
			if(!strlen(tmp))
			{
				SendClientMessage(playerid, COLOR_DARKORCHID, "[VT ERROR]USAGE: /makeprem [playerid/PartOfName] [level(1-3)]");
				return 1;
			}
			new para1;
			new level;
			para1 = ReturnUser(tmp);
			tmp = strtok(cmdtext, idx);
			level = strval(tmp);
			if (PlayerInfo[playerid][pAdmin] >= 3)
			{
			    if(IsPlayerConnected(para1))
			    {
			        if(para1 != INVALID_PLAYER_ID)
			        {
						GetPlayerName(para1, giveplayer, sizeof(giveplayer));
						GetPlayerName(playerid, sendername, sizeof(sendername));
						PlayerInfo[para1][pPremium] = level;
						printf("AdmCmd: %s has Given %s Level %d Premium level.", sendername, giveplayer, level);
						format(string, sizeof(string), "   You have been give level %d Premium by %s", level, sendername);
						SendClientMessage(para1, COLOR_LIGHTBLUE, string);
						format(string, sizeof(string), "   You have given %s level %d Premium.", giveplayer,level);
						SendClientMessage(playerid, COLOR_LIGHTBLUE, string);
					}
				}
			}
			else
			{
				SendClientMessage(playerid, COLOR_BISQUE, "[VT ERROR]You are not authorized to use that command!");
			}
		}
		return 1;
	}
//----------------------------------[Money]------------------------------------------------
	if(strcmp(cmd, "/rmoney", true) == 0)
	{
	    if(IsPlayerConnected(playerid))
	    {
			tmp = strtok(cmdtext, idx);
			if(!strlen(tmp))
			{
				SendClientMessage(playerid, COLOR_DARKORCHID, "[VT ERROR]USAGE: /money [playerid/PartOfName] [money]");
				return 1;
			}
			new playa;
			new money;
			playa = ReturnUser(tmp);
			tmp = strtok(cmdtext, idx);
			money = strval(tmp);
			if (PlayerInfo[playerid][pAdmin] >= 3)
			{
			    if(IsPlayerConnected(playa))
			    {
			        if(playa != INVALID_PLAYER_ID)
			        {
						ResetPlayerMoney(playa);
						GivePlayerMoney(playa, money);


					}
				}
			}
			else
			{
				SendClientMessage(playerid, COLOR_BISQUE, "[VT ERROR] You are not authorized to use that command!");
			}
		}
		return 1;
	}
//----------------------------------[GiveMoney]------------------------------------------------
	if(strcmp(cmd, "/givemoney", true) == 0)
	{
	    if(IsPlayerConnected(playerid))
	    {
			tmp = strtok(cmdtext, idx);
			if(!strlen(tmp))
			{
				SendClientMessage(playerid, COLOR_DARKORCHID, "[VT ERROR]USAGE: /givemoney [playerid/PartOfName] [money]");
				return 1;
			}
			new playa;
			new money;
			playa = ReturnUser(tmp);
			tmp = strtok(cmdtext, idx);
			money = strval(tmp);
			if (PlayerInfo[playerid][pAdmin] >= 3)
			{
			    if(IsPlayerConnected(playa))
			    {
			        if(playa != INVALID_PLAYER_ID)
			        {
						GivePlayerMoney(playa, money);
					}
				}
			}
			else
			{
				SendClientMessage(playerid, COLOR_BISQUE, "[VT ERROR] You are not authorized to use that command!");
			}
		}
		return 1;
	}
	if (strcmp(cmd, "/admins", true) == 0)
	{
        if(IsPlayerConnected(playerid))
	    {

			SendClientMessage(playerid, COLOR_GREEN, "[SERVER]Admins Online Right Now:");
			for(new i = 0; i < MAX_PLAYERS; i++)
			{
			new rrank = PlayerInfo[i][pAdmin];
			if(IsPlayerConnected(i))
			{
				    new string[256];
  					new sendername[MAX_PLAYER_NAME];
					GetPlayerName(playerid, sendername, sizeof(sendername));
					if(AdminOnDuty[i] == 1)
					{
					    if(PlayerInfo[i][pAdmin] >= 1 && PlayerInfo[i][pAdmin] < 1338)
					    {

							GetPlayerName(i, sendername, sizeof(sendername));
							format(string, 256, "%s [%d]", sendername,rrank);
							SendClientMessage(playerid, COLOR_WHITE, string);


						}
					}
				}
			}
		}
		return 1;
	}
	return 0;
}
//-----------------------------------------------------AOD-----------------------------------------------------------------------------------------
dcmd_aod(playerid, params[])
{
	#pragma unused params
	if (PlayerInfo[playerid][pAdmin] >= 1)
	{
	    if(AdminOnDuty[playerid] == 0)
	    {
			new pName[MAX_PLAYER_NAME];
			new string[256];
			GetPlayerName(playerid, pName, sizeof(pName));
			SendClientMessage(playerid, LIGHTGREEN, "[SERVER]: You went onduty as admin, use /aod again to go offduty");
			format(string, sizeof(string), "[SERVER]: Admin [level:%d] %s [%d] is on-duty as admin, PM him or do /report", PlayerInfo[playerid][pAdmin],pName, playerid);
	   		SendClientMessageToAll(COLOR_CRIMSON, string);
	   		AdminOnDuty[playerid] = 1;
	   		ResetPlayerWeapons(playerid);
	   		SetPlayerHealth(playerid, 10000);
			return 1;
		}
		if(AdminOnDuty[playerid] == 1)
	    {
			new pName[MAX_PLAYER_NAME];
			new string[256];
			GetPlayerName(playerid, pName, sizeof(pName));
			SendClientMessage(playerid, LIGHTGREEN, "[SERVER]: You went offduty as admin, use /aod again to go onduty");
			format(string, sizeof(string), "[SERVER]: Admin [level:%d] %s [%d] is off-duty as admin", PlayerInfo[playerid][pAdmin],pName, playerid);
	   		SendClientMessageToAll(COLOR_CRIMSON, string);
	   		AdminOnDuty[playerid] = 0;
	   		SpawnPlayer(playerid);
	   		SetPlayerHealth(playerid, 100);
			return 1;
		}
		return 1;
	}
	else return SendClientMessage(playerid ,COLOR_RED, "[VT ERROR] You are not an admin");
}
//-----------------------------------------------------Local----------------------------------------------------------------------------------------
dcmd_l(playerid, params[])
{
    new string[128];
	if(!strlen(params)) return SendClientMessage(playerid, COLOR_DARKRED, "[VT ERROR]Right Usage: /l [text]");
	new Float:Pos[3];
	GetPlayerPos(playerid, Pos[0], Pos[1], Pos[2]);
	GetPlayerName(playerid, string, MAX_PLAYER_NAME);
	format(string, sizeof string, "[Local]%s says: %s", string, params);
	for(new i = 0; i < MAX_PLAYERS; i++)
		if(PlayerToPoint(15.0, i, Pos[0], Pos[1], Pos[2]))
			SendClientMessage(i, GREY, string);
	return true;
}
//-----------------------------------------------------Say-----------------------------------------------------------------------------------------
dcmd_say(playerid, params[])
{
    new string[128];
	if(!strlen(params)) return SendClientMessage(playerid, COLOR_DARKRED, "[VT ERROR]Right Usage: /say [text]");
	new Float:Pos[3];
	GetPlayerPos(playerid, Pos[0], Pos[1], Pos[2]);
	GetPlayerName(playerid, string, MAX_PLAYER_NAME);
	format(string, sizeof string, "[Local]%s says: %s", string, params);
	for(new i = 0; i < MAX_PLAYERS; i++)
		if(PlayerToPoint(15.0, i, Pos[0], Pos[1], Pos[2]))
			SendClientMessage(i, GREY, string);
	return true;
}
//-----------------------------------------------------Disarm-----------------------------------------------------------------------------------------
dcmd_disarm(playerid, params[])
{
	if(PlayerInfo[playerid][pAdmin] >= 1)
	{
	    new giveplayerid;
	    if(sscanf(params, "i", giveplayerid)) return SendClientMessage(playerid, COLOR_YELLOW, "Right Usage: /disarm [playerid]");
	    else if (!IsPlayerConnected(giveplayerid)) return SendClientMessage(playerid, COLOR_RED, "ERROR: Player not found");
	    else
	    {
            ResetPlayerWeapons(giveplayerid);
	        SendClientMessage(playerid, COLOR_LIGHTGREEN, "[SERVER]: Players weapons reset!");
	        return 1;
		}
	}
	else return SendClientMessage(playerid, COLOR_RED, "[VT ERROR]: You are not an admin");
}
//-----------------------------------------------------Spec on-----------------------------------------------------------------------------------------
dcmd_spec(playerid, params[])
{
	if(PlayerInfo[playerid][pAdmin] >= 1)
	{
	    new giveplayerid;
	    if (sscanf(params, "i", giveplayerid)) return SendClientMessage(playerid, COLOR_YELLOW, "[VT ERROR]Right Usage: /spec [playerid]");
	    else if (!IsPlayerConnected(giveplayerid)) return SendClientMessage(playerid, COLOR_RED, "[VT ERROR]Player not found");
		else
		{
		
  		if(LSPDTeam[playerid] == 1)
    	{
	 		TeamLSPD--;
	 		Spawned[playerid] = 0;
	 		SendClientMessage(playerid,COLOR_RED,"Officer Down");
  		}
		if(GroveTeam[playerid] == 1)
    	{
	 		TeamGrove--;
	 		Spawned[playerid] = 0;
	 		SendClientMessage(playerid,COLOR_RED,"Gangsta Down ");
    	}
	    TogglePlayerSpectating(playerid, 1);
	    PlayerSpectatePlayer(playerid, giveplayerid);
	    SendClientMessage(playerid, COLOR_LIGHTGREEN, "[SERVER]: you are spectating, use /spec off to stop spectating");
	    Report[giveplayerid] = 0;
	    return 1;
		}
	}
	else return SendClientMessage(playerid ,COLOR_RED, "[VT ERROR] You are not an admin");
}
//-----------------------------------------------------Spec off----------------------------------------------------------------------------------------
dcmd_specoff(playerid, params[])
{
	#pragma unused params
	if(PlayerInfo[playerid][pAdmin] >= 1)
	{
		    TogglePlayerSpectating(playerid, 0);
		    SendClientMessage(playerid, COLOR_LIGHTGREEN, "[SERVER] You stopped spectating");
		    return 1;

	}
	else return SendClientMessage(playerid ,COLOR_RED, "[VT ERROR]You are not an admin");
}
//-----------------------------------------------------Mute-----------------------------------------------------------------------------------------
dcmd_mute(playerid, params[])
{
	if(PlayerInfo[playerid][pAdmin] >= 2)
	{
	    new giveplayerid;
	    if (sscanf(params, "i", giveplayerid)) return SendClientMessage(playerid, COLOR_YELLOW, "[VT ERROR] Right Usage: /mute [playerid]");
	    else if (!IsPlayerConnected(giveplayerid)) return SendClientMessage(playerid, COLOR_RED, "[VT ERROR] Player not found");
		else
		{
		    new name[MAX_PLAYER_NAME];
	    	new string[128];
	    	new pname[28];
		    GetPlayerName(giveplayerid, name, sizeof(name));
		    GetPlayerName(playerid, pname, 28);
            Mute[giveplayerid] = 1;
		    format(string, sizeof(string), "[SERVER] %s has been muted by %s.", name, pname);
		    SendClientMessageToAll(COLOR_PURPLE, string);
		    return 1;
		}
	}
	else return SendClientMessage(playerid ,COLOR_RED, "[ERROR] You are not an level 2 admin");
}
//-----------------------------------------------------Un-Mute-----------------------------------------------------------------------------------------
dcmd_unmute(playerid, params[])
{
	if(PlayerInfo[playerid][pAdmin] >= 2)
	{
	    new giveplayerid;
	    if (sscanf(params, "i", giveplayerid)) return SendClientMessage(playerid, COLOR_YELLOW, "[VT ERROR]Right Usage: /unmute [playerid]");
	    else if (!IsPlayerConnected(giveplayerid)) return SendClientMessage(playerid, COLOR_RED, "[VT ERROR] Player not found");
		else
		{
		    new name[MAX_PLAYER_NAME];
	    	new string[128];
	    	new pname[28];
		    GetPlayerName(giveplayerid, name, sizeof(name));
		    GetPlayerName(playerid, pname, 28);
            Mute[giveplayerid] = 0;
		    format(string, sizeof(string), "[SERVER] %s has been unmuted by %s.", name, pname);
		    SendClientMessageToAll(COLOR_PURPLE, string);
		    return 1;
		}
	}
	else return SendClientMessage(playerid ,COLOR_RED, "[VT ERROR] You are not a level 2 admin");
}
//---------------------------------------------------------exit-------------------------------------------------------------------------------------
dcmd_cancel(playerid, params[])
{
    #pragma unused params
	if(IsPlayerInAnyVehicle(playerid))
 	{
		SendClientMessage(playerid, COLOR_RED, "[SERVER]You Left The Vehicle");
		RemovePlayerFromVehicle(playerid);
		TogglePlayerControllable(playerid,1);
	}
	return 1;
}
//-----------------------------------------------------Kill-----------------------------------------------------------------------------------------
dcmd_kill(playerid, params[])//new
{
	#pragma unused params
	if(InDual[playerid] == 0)
	{
	    SetPlayerHealth(playerid, 0.0);
	    return 1;
	}
	else return SendClientMessage(playerid, RED, "[VT ERROR] You cant use /kill during a dual");
}
//-----------------------------------------------------freeze-----------------------------------------------------------------------------------------
dcmd_freeze(playerid,params[])
{
   if(PlayerInfo[playerid][pAdmin] >= 1)
   {
   new tmp[256],idx;
   tmp = strtok(params,idx);
   if(!strlen(tmp))
   {
      SendClientMessage(playerid,COLOR_DARKRED,"[VT ERROR]Usage: /freeze [playerid]");
      return true;
   }
   new pid = strval(tmp);
   if(!IsPlayerConnected(pid))
   {
      SendClientMessage(playerid,COLOR_DARKRED,"[VT ERROR] Incorrect playerid.");
      return true;
   }
   new pname[MAX_PLAYER_NAME],pname2[MAX_PLAYER_NAME],string[256];
   GetPlayerName(pid,pname,sizeof(pname));
   GetPlayerName(playerid,pname2,sizeof(pname2));
   format(string,sizeof(string),"[SERVER] %s has been frozen by Administrator %s.",pname,pname2);
   SendClientMessage(playerid,COLOR_WHITE,string);
   TogglePlayerControllable(pid,0);
   return true;
   }
   else return SendClientMessage(playerid,COLOR_DARKRED,"[VT ERROR] This is an admin (level 1-3) command only.");
}
//-----------------------------------------------------Un-Freeze-----------------------------------------------------------------------------------------
dcmd_unfreeze(playerid,params[])
{
	if(PlayerInfo[playerid][pAdmin] >= 1)
	{
	    if(!strlen(params))
		return
		SendClientMessage(playerid,COLOR_DARKRED,"[VT ERROR]Usage: /unfreeze [playerid]");
   		new pid;
		if(!IsNumeric(params))
		pid = ReturnUser(params);
		else
		pid = strval(params);
		if(IsPlayerConnected(pid) && pid != INVALID_PLAYER_ID)
		{
			new pname[MAX_PLAYER_NAME],pname2[MAX_PLAYER_NAME],string[256];
   			GetPlayerName(pid,pname,sizeof(pname));
  			GetPlayerName(playerid,pname2,sizeof(pname2));
			format(string,256,"[SERVER]%s has been unfreezed by Administrator %s.",pname,pname2);
			SendClientMessage(playerid,COLOR_WHITE,string);
			return
			TogglePlayerControllable(pid,1);
		}
		else return SendClientMessage(playerid,COLOR_DARKRED,"[VT ERROR]Incorrect playerid.");
	}
	else return SendClientMessage(playerid,COLOR_DARKRED,"[VT ERROR]: This is an admin command only.");
}
//-----------------------------------------------------Slap----------------------------------------------------------------------------------------
dcmd_slap(playerid,params[])
{
  	if(PlayerInfo[playerid][pAdmin] >= 1)
	{
	new tmp[256],idx;
	tmp = strtok(params,idx);
    new pid = strval(tmp);
    if(!strlen(tmp))
	{
		SendClientMessage(playerid, COLOR_DARKRED, "[VT ERROR]Usage: /slap [playerid]");
		return true;
	}
	if(IsPlayerConnected(pid))
    {
        new Float:posX, Float:posY, Float:posZ, Float:health;
		new pname[MAX_PLAYER_NAME], pname2[MAX_PLAYER_NAME], string[256];
		GetPlayerName(pid,pname,sizeof(pname));
		GetPlayerName(playerid,pname2,sizeof(pname2));
		GetPlayerHealth(pid, health);
		SetPlayerHealth(pid, health-5);
		GetPlayerPos(pid, posX, posY, posZ);
		SetPlayerPos(pid, posX, posY, posZ+5);
		SetCameraBehindPlayer(pid);
		format(string,sizeof(string),"%s has been slapped by Administrator %s.",pname,pname2);
		SendClientMessageToAdmins(COLOR_WHITE, string);
		return true;
	}
	else return SendClientMessage(playerid, COLOR_DARKRED, "[VT ERROR]Incorrect playerid.");
	}
	else return SendClientMessage(playerid, COLOR_DARKRED, "[VT ERROR] This is an admin (level 3) command only.");
}
//-----------------------------------------------------Set HP-----------------------------------------------------------------------------------------
dcmd_sethp(playerid,params[])
{
	if(PlayerInfo[playerid][pAdmin] >= 3)
	{
	new tmp[256],idx;
	tmp = strtok(params,idx);
	if(!strlen(tmp))
	{
		 SendClientMessage(playerid,COLOR_DARKRED,"[VT ERROR] Usage: /sethp [playerid] [amount]");
		 return true;
	}
	new pid = strval(tmp);
	if(!IsPlayerConnected(pid))
	{
		SendClientMessage(playerid,COLOR_DARKRED,"[VT ERROR] Incorrect playerid.");
		return true;
	}
	tmp = strtok(params,idx);
	if(!strlen(tmp))
	{
		 SendClientMessage(playerid,COLOR_DARKRED,"[VT ERROR] Usage: /sethp [playerid] [amount]");
		 return true;
	}
    new newhealth = strval(tmp),string[256],pname[MAX_PLAYER_NAME],pname2[MAX_PLAYER_NAME];
	GetPlayerName(pid,pname,sizeof(pname));
	GetPlayerName(playerid,pname2,sizeof(pname2));
    format(string,sizeof(string),"[SERVER]Your health has been set to %d by Administrator %s.",newhealth, pname2);
    SendClientMessage(pid, COLOR_WHITE,string);
    ABroadCast(COLOR_INDIGO,string,1);
	SetPlayerHealth(pid,newhealth);
	return true;
    }
    else return SendClientMessage(playerid,COLOR_DARKRED,"N[VT ERROR] This is an admin (level 2-3) command only.");
}
//-----------------------------------------------------AMSG-----------------------------------------------------------------------------------------
dcmd_amsg(playerid,params[])
{
    if(PlayerInfo[playerid][pAdmin] >= 2)
	{
	    new tmp[256], idx;
		new string[256];
		tmp = strtok(params, idx);
    	if(!strlen(params))
		return
		SendClientMessage(playerid, COLOR_DARKRED,"[VT ERROR] Usage: /amsg [text]");
		format(string, sizeof(string), " %s", params);
		SendClientMessageToAll(COLOR_CORAL, string);
		return true;
    }
	else return SendClientMessage(playerid, COLOR_DARKRED,"[VT ERROR] This is an admin (level 3) command only.");
}
//-----------------------------------------------------WHOIS-----------------------------------------------------------------------------------------
dcmd_whois(playerid,params[])
{
	if(PlayerInfo[playerid][pAdmin] >= 2)
	{
	new tmp[256],idx;
	tmp = strtok(params,idx);
	if(!strlen(tmp))
	{
		SendClientMessage(playerid,COLOR_DARKRED,"[VT ERROR] Usage: /whois [playerid]");
		return true;
	}
	new pid = strval(tmp);
	if(!IsPlayerConnected(pid))
	{
		SendClientMessage(playerid,COLOR_DARKRED,"[VT ERROR]Incorrect playerid.");
		return true;
	}
    new Float:armour, Float:health;
	new string[256], vehicleid, pname[MAX_PLAYER_NAME], IP[15], pname2[MAX_PLAYER_NAME];
	GetPlayerName(pid,pname,sizeof(pname));
	GetPlayerName(playerid,pname2,sizeof(pname2));
	GetPlayerArmour(pid,armour);
	GetPlayerHealth(pid,health);
	GetPlayerIp(pid, IP, 15);
	vehicleid = GetVehicleModel(vehicleid);
	format(string,sizeof(string), " Player name: %s ",pname);
	SendClientMessage(playerid, COLOR_DARKRED,string);
	format(string,sizeof(string), " IP: %s || Ping: %d", IP, GetPlayerPing(pid));
	SendClientMessage(playerid, COLOR_DARKRED,string);
    format(string,sizeof(string), " Skin ID: %d || Money: $%d",GetPlayerSkin(pid), GetPlayerMoney(pid));
    SendClientMessage(playerid, COLOR_DARKRED,string);
    format(string,sizeof(string), " Armour: %0.0f || Health: %0.0f", armour, health);
    SendClientMessage(playerid, COLOR_DARKRED,string);
	return true;
    }
    else return SendClientMessage(playerid,COLOR_DARKRED,"[VT ERROR] This is an admin (level 2-3) command only.");
}
//----------------------------------------------------Admin Chat----------------------------------------------------------------------------------------
dcmd_ac(playerid, params[])
{
    new string[128];
	if (PlayerInfo[playerid][pAdmin] >= 1)
	{
	    new sendername[MAX_PLAYER_NAME];
		if(!strlen(params)) return SendClientMessage(playerid, COLOR_DARKRED, "[VT ERROR] USAGE: /ac [text]"), SendClientMessage(playerid, COLOR_DARKRED, "HELP: Example: /ac Howdy");
		GetPlayerName(playerid, sendername, sizeof(sendername));
	    format(string, sizeof(string), "[^%d] %s: %s" ,PlayerInfo[playerid][pAdmin],sendername, params);
  		SendClientMessageToAdmins(COLOR_HOTPINK, string);
		return 1;
	}
	else return SendClientMessage(playerid, COLOR_RED, "[VT ERROR] Your not a part of the administrator staff!");
}
//-----------------------------------------------------Team Chat-----------------------------------------------------------------------------------------
dcmd_t(playerid, params[])
{
    new string[128];
	if (LSPDTeam[playerid] >= 1)
	{
	    if(Mute[playerid] == 0)
	    {
		    new sendername[MAX_PLAYER_NAME];
			if(!strlen(params)) return SendClientMessage(playerid, COLOR_DARKRED, "[VT ERROR] USAGE: /t [text]"), SendClientMessage(playerid, COLOR_DARKRED, "HELP: Example: /t Howdy");
			GetPlayerName(playerid, sendername, sizeof(sendername));
		    format(string, sizeof(string), "[North]%s: %s",sendername, params);
	  		SendClientMessageToNorth(COLOR_WHITE, string);
			return 1;
		}
		else return SendClientMessage(playerid, COLOR_RED, "[VT ERROR] You cannot talk, you are muted");
	}
	if (GroveTeam[playerid] >= 1)
	{
	    if(Mute[playerid] == 0)
	    {
		    new sendername[MAX_PLAYER_NAME];
			if(!strlen(params)) return SendClientMessage(playerid, COLOR_DARKRED, "[VT ERROR] USAGE: /t [text]"), SendClientMessage(playerid, COLOR_DARKRED, "HELP: Example: /t Howdy");
			GetPlayerName(playerid, sendername, sizeof(sendername));
		    format(string, sizeof(string), "[South]%s: %s",sendername, params);
	  		SendClientMessageToSouth(COLOR_WHITE, string);
			return 1;
        }
		else return SendClientMessage(playerid, COLOR_RED, "[VT ERROR] You cannot talk, you are muted");
	}
	else return SendClientMessage(playerid, COLOR_RED, "[VT ERROR] Your not a part of a Team!");
}
//-----------------------------------------------------Destory VEH-----------------------------------------------------------------------------------------
dcmd_destroyveh(playerid, params[])
{
	#pragma unused params
    if(PlayerInfo[playerid][pAdmin] >= 3)
  	{
  		new vehicleid = GetPlayerVehicleID(playerid);
		DestroyVehicle(vehicleid);
		SendClientMessage(playerid, COLOR_LIGHTGREEN, "[VT ERROR] You destroyved the vehicle");
		return 1;
  	}
  	return 1;
}
//-----------------------------------------------------METO-----------------------------------------------------------------------------------------
dcmd_meto(playerid, params[])
{
	if(PlayerInfo[playerid][pAdmin] >= 1 || IsPlayerAdmin(playerid) == 1)
	{
	    new giveplayerid;
		if (sscanf(params, "i", giveplayerid)) SendClientMessage(playerid, 0xFF0000AA, "[VT ERROR] Usage: /meto [id]");
		else
 		{
	    	new Float:pX,Float:pY,Float:pZ;
			if (GetPlayerState(playerid) == PLAYER_STATE_DRIVER)
	  		{
		  		GetPlayerPos(giveplayerid,pX,pY,pZ);
				SetVehiclePos(GetPlayerVehicleID(playerid),pX,pY,pZ+2);
			}
			else
			{
			   	GetPlayerPos(giveplayerid,pX,pY,pZ);
			   	SetPlayerPos(playerid,pX,pY,pZ+2);
			}
			SetPlayerInterior(playerid,GetPlayerInterior(giveplayerid));
		}
	}
	return 1;
}
//-----------------------------------------------------TOME-----------------------------------------------------------------------------------------
dcmd_tome(playerid, params[])
{
	if (PlayerInfo[playerid][pAdmin] >= 1 || IsPlayerAdmin(playerid) == 1)
	{
    	new giveplayerid;
		if (sscanf(params, "i", giveplayerid)) SendClientMessage(playerid, 0xFF0000AA, "[VT ERROR] Usage: /tome [id]");
		else
 		{
    		new Float:pX,Float:pY,Float:pZ;
	    	if (GetPlayerState(giveplayerid) == PLAYER_STATE_DRIVER)
	    	{
	    		GetPlayerPos(playerid,pX,pY,pZ);
	    		SetVehiclePos(GetPlayerVehicleID(giveplayerid),pX,pY,pZ+2);
  			}
 			else
  			{
	    		GetPlayerPos(playerid,pX,pY,pZ);
	    		SetPlayerPos(giveplayerid,pX,pY,pZ+2);
	    	}
	    	SetPlayerInterior(giveplayerid,GetPlayerInterior(playerid));
		}
	}
	return 1;
}
//-----------------------------------------------------Flip-----------------------------------------------------------------------------------------
dcmd_flip(playerid, params[])
{
	#pragma unused params
	if(PlayerInfo[playerid][pAdmin] >= 1)
	{
	    if(IsPlayerInAnyVehicle(playerid))
		{
			new Float:X,Float:Y,Float:Z,Float:Angle;
			GetVehiclePos(GetPlayerVehicleID(playerid),X,Y,Z);
			GetVehicleZAngle(GetPlayerVehicleID(playerid),Angle);
			SetVehiclePos(GetPlayerVehicleID(playerid),X,Y,Z);
			SetVehicleZAngle(GetPlayerVehicleID(playerid),Angle);
			return 1;
     	}
		else return SendClientMessage(playerid,RED,"[VT ERROR] You need to be in a vehicle.");
	}
	else return SendClientMessage(playerid, RED, "[VT ERROR] You're not an admin");
}
//-----------------------------------------------------Notime bot, anticheat-----------------------------------------------------------------------------------------
dcmd_anticheat(playerid, params[])
{
	#pragma unused params
    if(PlayerInfo[playerid][pAdmin] >= 4)
	{
	    if(NTDSTurnedOff == 0)
	    {
	        SendClientMessageToAll(RED, "[SERVER]: The Notime Defense System has been disabled by an admin");
	        NTDSTurnedOff = 1;
	        return 1;
		}
		if(NTDSTurnedOff == 1)
	    {
	        SendClientMessageToAll(LIGHTGREEN, "[SERVER]: The Notime Defense System has been enabled by an admin");
	        NTDSTurnedOff = 0;
	        return 1;
		}
		return 1;
	}
	else return SendClientMessage(playerid, RED, "[VT ERROR]: You are not a Lead+ admin");
}
//-----------------------------------------------------Madmin-----------------------------------------------------------------------------------------
dcmd_madmin(playerid,params[])
{
	if(PlayerInfo[playerid][pAdmin] >= 4)
	{
	new tmp[256],idx;
	tmp = strtok(params,idx);
	if(!strlen(tmp))
	{
		SendClientMessage(playerid,COLOR_DARKRED,"[VT ERROR]Usage: /madmin [playerid] [level]");
		return true;
	}
    new pid = strval(tmp);
	if(!IsPlayerConnected(pid))
	{
		SendClientMessage(playerid,COLOR_DARKRED,"[VT ERROR]Incorrect playerid.");
		return true;
	}
	tmp = strtok(params,idx);
	if(!strlen(tmp))
	{
		SendClientMessage(playerid,COLOR_DARKRED,"[VT ERROR]Usage: /madmin[playerid] [level]");
		return true;
	}
	new level = strval(tmp);
	if(level > 4)
	{
	   SendClientMessage(playerid,COLOR_DARKRED,"[VT ERROR] Maximum level = 4");
	   return true;
	}
    new string[256], pname[MAX_PLAYER_NAME], pname2[MAX_PLAYER_NAME];
    GetPlayerName(pid,pname,sizeof(pname));
	GetPlayerName(playerid,pname2,sizeof(pname2));
    format(string,sizeof(string),"Congratulations, %s has made you an administrator (Level: %d)",pname2,level);
    SendClientMessage(pid,COLOR_SPRINGGREEN,string);
    format(string,sizeof(string),"You have set %s As An Admin (Level: %d)",pname2,level);
    SendClientMessage(playerid,COLOR_SPRINGGREEN,string);
	PlayerInfo[pid][pAdmin] = level;
	return true;
    }
    else return SendClientMessage(playerid,COLOR_DARKRED,"[VT ERROR] This is an Lead+ Admin command only.");
}//-----------------------------------------------------setreborn-----------------------------------------------------------------------------------------
dcmd_setreborn(playerid,params[])
{
	if(PlayerInfo[playerid][pAdmin] >= 4)
	{
	new tmp[256],idx;
	tmp = strtok(params,idx);
	if(!strlen(tmp))
	{
		SendClientMessage(playerid,COLOR_DARKRED,"[VT ERROR] Usage: /setreborn [playerid] [level]");
		return true;
	}
    new pid = strval(tmp);
	if(!IsPlayerConnected(pid))
	{
		SendClientMessage(playerid,COLOR_DARKRED,"[VT ERROR] Incorrect playerid.");
		return true;
	}
	tmp = strtok(params,idx);
	if(!strlen(tmp))
	{
		SendClientMessage(playerid,COLOR_DARKRED,"[VT ERROR] Usage: /setreborn[playerid] [level]");
		return true;
	}
	new level = strval(tmp);
    new string[256], pname[MAX_PLAYER_NAME], pname2[MAX_PLAYER_NAME];
    GetPlayerName(pid,pname,sizeof(pname));
	GetPlayerName(playerid,pname2,sizeof(pname2));
    format(string,sizeof(string),"Congratulations, %s has made you reborn (Level: %d)",pname2,level);
    SendClientMessage(pid,COLOR_SPRINGGREEN,string);
    format(string,sizeof(string),"You have set %s reborn (Level: %d)",pname2,level);
    SendClientMessage(pid,COLOR_SPRINGGREEN,string);
	PlayerInfo[pid][pReborn] = level;
	return true;
    }
    else return SendClientMessage(playerid,COLOR_DARKRED,"[VT ERROR] This is an admin (level 4) command only.");
}
//-----------------------------------------------------Changeskin-----------------------------------------------------------------------------------------
dcmd_changeskin(playerid, params[])
{
    if(PlayerInfo[playerid][pAdmin] >= 2)
    {
		new giveplayerid, skinid;
		if(sscanf(params, "ii", giveplayerid, skinid)) return SendClientMessage(playerid, COLOR_DARKRED, "[VT ERROR] Right Usage: /changeskin [id] [skinid]");
		else
		{
		    SetPlayerSkin(giveplayerid, skinid);
		    return 1;
		}
	}
	else return SendClientMessage(playerid,COLOR_DARKRED,"[VT ERROR] This is an admin (level 2) command only.");
}

//-----------------------------------------------------SetArmour-----------------------------------------------------------------------------------------
dcmd_setarmour(playerid,params[])
{
	if(PlayerInfo[playerid][pAdmin] >= 3)
	{
	new tmp[256],idx;
	tmp = strtok(params,idx);
	if(!strlen(tmp))
	{
	 	SendClientMessage(playerid,COLOR_DARKRED,"[VT ERROR] Usage: /setarmour [playerid] [amount]");
		return true;
	}
	new pid = strval(tmp);
	if(!IsPlayerConnected(pid))
	{
		SendClientMessage(playerid,COLOR_DARKRED,"[VT ERROR] Incorrect playerid.");
		return true;
	}
	tmp = strtok(params,idx);
	if(!strlen(tmp))
	{
		SendClientMessage(playerid,COLOR_DARKRED,"[VT ERROR]Usage: /setarmour [playerid] [amount]");
		return true;
	}
    new newarmour = strval(tmp),string[256],pname[MAX_PLAYER_NAME],pname2[MAX_PLAYER_NAME];
	GetPlayerName(pid,pname,sizeof(pname));
	GetPlayerName(playerid,pname2,sizeof(pname2));
    format(string,sizeof(string),"Your armour has been set to %d by Administrator %s.",newarmour, pname2);
    SendClientMessage(pid, COLOR_WHITE,string);
    ABroadCast(COLOR_INDIGO,string,1);
	SetPlayerArmour(pid,newarmour);
	return true;
    }
    else return SendClientMessage(playerid,COLOR_DARKRED,"[VT ERROR] This is an admin (level 2-3) command only.");
}

//--------------------------------------------------------------PM-----------------------------------------------------------------------------------------
dcmd_pm(playerid, params[])
{
    new
		giveplayerid,
		text[256];
    if (sscanf(params, "is", giveplayerid,text)) return SendClientMessage(playerid, COLOR_YELLOW, "[VT ERROR] Right Usage: /pm [playerid] [text]");
	else
	{
	    if(IsPlayerConnected(giveplayerid))
	    {
	        new Float:X, Float:Y, Float:Z;
	        new sendername[MAX_PLAYER_NAME];
	        new giveplayername[MAX_PLAYER_NAME];
	        GetPlayerName(playerid, sendername, sizeof(sendername));
	        GetPlayerName(giveplayerid, giveplayername, sizeof(giveplayername));
	        new string[256];
	        format(string, sizeof(string), "PM sent to %s(%d): %s", giveplayername, giveplayerid, text);
	        SendClientMessage(playerid, YELLOW, string);
	        format(string, sizeof(string), "PM received from %s(%d): %s", sendername, playerid, text);
	        SendClientMessage(giveplayerid, YELLOW, string);
	        GetPlayerPos(giveplayerid, X, Y, Z);
	        PlayerPlaySound(giveplayerid, 1056, X, Y, Z);
	        return 1;
	    }
	    else return SendClientMessage(playerid, RED, "[VT ERROR] Player is not connected");
	}
}

//-----------------------------------------------------Set Rank---------------------------------------------------------------------------------------
dcmd_setrank(playerid, params[])
{
	if(PlayerInfo[playerid][pAdmin] >= 4 || IsPlayerAdmin(playerid)) 
	{
	    new
			giveplayerid,
			rank;
	    if (sscanf(params, "ii", giveplayerid,rank)) return SendClientMessage(playerid, COLOR_YELLOW, "[VT ERROR] Right Usage: /setrank [playerid] [rank]");
		else
		{
		    if(IsPlayerConnected(giveplayerid))
		    {
		        new string[256];
		        new sendername[MAX_PLAYER_NAME];
		        new giveplayername[MAX_PLAYER_NAME];
		        GetPlayerName(playerid, sendername, sizeof(sendername));
		        GetPlayerName(giveplayerid, giveplayername, sizeof(giveplayername));
		        format(string, sizeof(string), "You gave %s rank %d", giveplayername, rank);
		        SendClientMessage(playerid, YELLOW, string);
		        format(string, sizeof(string), "Administrator %s gave you rank %d", sendername, rank);
		        SendClientMessage(giveplayerid, YELLOW, string);
				PlayerInfo[giveplayerid][pExp] = 1200*rank;
				PlayerInfo[giveplayerid][pRank] = rank;
				SetPlayerScore(giveplayerid, rank);
		        return 1;
		    }
		    else return SendClientMessage(playerid, RED, "[VT ERROR] Player is not connected");
		}
	}
	else return SendClientMessage(playerid, RED, "[VT ERROR] You are not allowed to use this command");
}

dcmd_report(playerid, params[])
{
	if (sscanf(params, "s", params)) return SendClientMessage(playerid, COLOR_YELLOW, "[VT ERROR] Right Usage: /report [reason]");
	else
	{
    	new string[128];
    	new pname[28];
	    GetPlayerName(playerid, pname, 28);
	    format(string, sizeof(string), "REPORT: %s has reported: %s", pname, params);
	    ABroadCast(COLOR_INDIGO,string,1);
	    return 1;
	}
}

dcmd_watchduals(playerid, params[])
{
	#pragma unused params
	if(PlayerDualWatching[playerid] == 0)
	{
		SetPlayerPos(playerid, 1731.8315,-2864.7705,6.5554);
		SetPlayerFacingAngle(playerid, 1.8901);
		ResetPlayerWeapons(playerid);
		SetPlayerHealth(playerid, 1000000000);
		PlayerDualWatching[playerid] = 1;
		SendClientMessage(playerid, YELLOW, "You are not watching the player duals, Death Match is NOT allowed in this area");
		return 1;
	}
	else return SendClientMessage(playerid, RED, "[VT ERROR] You are already watching the dual fights, /leavewatch to leave this place.");
}

dcmd_leavewatch(playerid, params[])
{
	#pragma unused params
	if(PlayerDualWatching[playerid] == 1)
	{
		SetPlayerHealth(playerid, 100);
		SpawnPlayer(playerid);
		SendClientMessage(playerid, YELLOW, "You left the player dual watching, you can now continue with Van theft");
		PlayerDualWatching[playerid] = 0;
		return 1;
	}
	else return SendClientMessage(playerid, RED, "[VT ERROR] You are not watching the dual fights, /watchduals to watch.");
}

dcmd_dual(playerid, params[])
{
	new
	    giveplayerid,
		weapon[128],
		price;
    new string[256];
    new sendername[MAX_PLAYER_NAME];
    new giveplayername[MAX_PLAYER_NAME];
    if (sscanf(params, "isi", giveplayerid,weapon,price))
	{
		SendClientMessage(playerid, COLOR_YELLOW, "[VT ERROR] Right Usage: /dual [playerid] [weapon] [amount]");
		SendClientMessage(playerid, COLOR_YELLOW, "Dual weapons: deagle, mp5, chainsaw, silpist, combatsg, shotgun");
		return 1;
	}
	else
	{
	    GetPlayerName(playerid, sendername, sizeof(sendername));
	    GetPlayerName(playerid, giveplayername, sizeof(giveplayername));
	    if(strcmp("deagle", weapon, true, 6) == 0)
    	{
    	    if(GetPlayerMoney(playerid) >= price)
    	    {
    	        if(Inventation[giveplayerid] == -1)
    	        {
    	            if(InventationSent[playerid] == -1)
    	            {
	    	            if(InDual[playerid] == 0)
	    	            {
	    	                if(InDual[giveplayerid] == 0)
	    	                {
			    	            if(DualRoom1 == -1)
			    	            {
			    	                SetTimerEx("inventationremove", 30000, 0, "i", playerid);
			    	                format(string, sizeof(string), "%s has sent you a 1 vs. 1 dual with a desert eagle for %d, /acceptdual or /declinedual", sendername, price);
			    	                SendClientMessage(giveplayerid, GREEN, string);
			    	                format(string, sizeof(string), "you sent %s a 1 vs. 1 dual with a desert eagle for %d", giveplayername, price);
			    	                SendClientMessage(playerid, GREEN, string);
			    	                InventationSent[playerid] = giveplayerid;
									Inventation[giveplayerid] = playerid;
									Inventationprice[giveplayerid] = price;
									DualRoom1price = price;
									DualRoom1 = playerid;
									WeaponDualRoom1 = 24;
									return 1;
			    	            }
			    	            else if(DualRoom2 == -1)
			    	            {
			    	                SetTimerEx("inventationremove", 30000, 0, "i", playerid);
                                    format(string, sizeof(string), "%s has sent you a 1 vs. 1 dual with a desert eagle for %d", sendername, price);
			    	                SendClientMessage(giveplayerid, GREEN, string);
			    	                format(string, sizeof(string), "you sent %s a 1 vs. 1 dual with a desert eagle for %d", giveplayername, price);
			    	                SendClientMessage(playerid, GREEN, string);
			    	                InventationSent[playerid] = giveplayerid;
									Inventation[giveplayerid] = playerid;
									DualRoom2price = price;
									DualRoom2 = playerid;
									WeaponDualRoom2 = 24;
									return 1;
			    	            }
			    	            else if(DualRoom3 == -1)
			    	            {
			    	                SetTimerEx("inventationremove", 30000, 0, "i", playerid);
                                    format(string, sizeof(string), "%s has sent you a 1 vs. 1 dual with a desert eagle for %d", sendername, price);
			    	                SendClientMessage(giveplayerid, GREEN, string);
			    	                format(string, sizeof(string), "you sent %s a 1 vs. 1 dual with a desert eagle for %d", giveplayername, price);
			    	                SendClientMessage(playerid, GREEN, string);
			    	                InventationSent[playerid] = giveplayerid;
									Inventation[giveplayerid] = playerid;
									DualRoom3price = price;
									DualRoom3 = playerid;
									WeaponDualRoom3 = 24;
									return 1;
			    	            }
			    	            else if(DualRoom4 == -1)
			    	            {
			    	                SetTimerEx("inventationremove", 30000, 0, "i", playerid);
                                    format(string, sizeof(string), "%s has sent you a 1 vs. 1 dual with a desert eagle for %d", sendername, price);
			    	                SendClientMessage(giveplayerid, GREEN, string);
			    	                format(string, sizeof(string), "you sent %s a 1 vs. 1 dual with a desert eagle for %d", giveplayername, price);
			    	                SendClientMessage(playerid, GREEN, string);
			    	                InventationSent[playerid] = giveplayerid;
									Inventation[giveplayerid] = playerid;
									DualRoom4price = price;
									DualRoom4 = playerid;
									WeaponDualRoom4 = 24;
									return 1;
			    	            }
			    	            else return SendClientMessage(playerid, RED, "there are no dual rooms free, wait till a dual ends");
							}
							else return SendClientMessage(playerid, RED, "This player is already in a dual");
						}
						else return SendClientMessage(playerid, RED, "you are still in a dual, end it first");
					}
					else return SendClientMessage(playerid, RED, "You already sent an inventation, wait 30 seconds or wait till the other player declines");
				}
    	        else return SendClientMessage(playerid, RED, "This player already got an inventation");
    	    }
    	    else return SendClientMessage(playerid, RED, "You can't afford the dual fee");
    	}
    	if(strcmp("mp5", weapon, true, 3) == 0)
    	{
    	    if(GetPlayerMoney(playerid) >= price)
    	    {
    	        if(Inventation[giveplayerid] == -1)
    	        {
    	            if(InventationSent[playerid] == -1)
    	            {
	    	            if(InDual[playerid] == 0)
	    	            {
	    	                if(InDual[giveplayerid] == 0)
	    	                {
	    	                    SetTimerEx("inventationremove", 30000, 0, "i", playerid);
			    	            if(DualRoom1 == -1)
			    	            {
			    	                format(string, sizeof(string), "%s has sent you a 1 vs. 1 dual with a mp5 for %d, /acceptdual or /declinedual", sendername, price);
			    	                SendClientMessage(giveplayerid, GREEN, string);
			    	                format(string, sizeof(string), "you sent %s a 1 vs. 1 dual with a mp5 for %d", giveplayername, price);
			    	                SendClientMessage(playerid, GREEN, string);
			    	                InventationSent[playerid] = giveplayerid;
									Inventation[giveplayerid] = playerid;
									Inventationprice[giveplayerid] = price;
									DualRoom1price = price;
									DualRoom1 = playerid;
									WeaponDualRoom1 = 29;
									return 1;
			    	            }
			    	            else if(DualRoom2 == -1)
			    	            {
                                    format(string, sizeof(string), "%s has sent you a 1 vs. 1 dual with a mp5 for %d", sendername, price);
			    	                SendClientMessage(giveplayerid, GREEN, string);
			    	                format(string, sizeof(string), "you sent %s a 1 vs. 1 dual with a mp5 for %d", giveplayername, price);
			    	                SendClientMessage(playerid, GREEN, string);
			    	                InventationSent[playerid] = giveplayerid;
									Inventation[giveplayerid] = playerid;
									DualRoom2price = price;
									DualRoom2 = playerid;
									WeaponDualRoom2 = 29;
									return 1;
			    	            }
			    	            else if(DualRoom3 == -1)
			    	            {
                                    format(string, sizeof(string), "%s has sent you a 1 vs. 1 dual with a mp5 for %d", sendername, price);
			    	                SendClientMessage(giveplayerid, GREEN, string);
			    	                format(string, sizeof(string), "you sent %s a 1 vs. 1 dual with a mp5 for %d", giveplayername, price);
			    	                SendClientMessage(playerid, GREEN, string);
			    	                InventationSent[playerid] = giveplayerid;
									Inventation[giveplayerid] = playerid;
									DualRoom3price = price;
									DualRoom3 = playerid;
									WeaponDualRoom3 = 29;
									return 1;
			    	            }
			    	            else if(DualRoom4 == -1)
			    	            {
                                    format(string, sizeof(string), "%s has sent you a 1 vs. 1 dual with a mp5 for %d", sendername, price);
			    	                SendClientMessage(giveplayerid, GREEN, string);
			    	                format(string, sizeof(string), "you sent %s a 1 vs. 1 dual with a mp5 for %d", giveplayername, price);
			    	                SendClientMessage(playerid, GREEN, string);
			    	                InventationSent[playerid] = giveplayerid;
									Inventation[giveplayerid] = playerid;
									DualRoom4price = price;
									DualRoom4 = playerid;
									WeaponDualRoom4 = 29;
									return 1;
			    	            }
			    	            else return SendClientMessage(playerid, RED, "there are no dual rooms free, wait till a dual ends");
							}
							else return SendClientMessage(playerid, RED, "This player is already in a dual");
						}
						else return SendClientMessage(playerid, RED, "you are still in a dual, end it first");
					}
					else return SendClientMessage(playerid, RED, "You already sent an inventation, wait 30 seconds or wait till the other player declines");
				}
    	        else return SendClientMessage(playerid, RED, "This player already got an inventation");
    	    }
    	    else return SendClientMessage(playerid, RED, "You can't afford the dual fee");
    	}
    	if(strcmp("chainsaw", weapon, true, 8) == 0)
    	{
    	    if(GetPlayerMoney(playerid) >= price)
    	    {
    	        if(Inventation[giveplayerid] == -1)
    	        {
    	            if(InventationSent[playerid] == -1)
    	            {
	    	            if(InDual[playerid] == 0)
	    	            {
	    	                if(InDual[giveplayerid] == 0)
	    	                {
	    	                    SetTimerEx("inventationremove", 30000, 0, "i", playerid);
			    	            if(DualRoom1 == -1)
			    	            {
			    	                format(string, sizeof(string), "%s has sent you a 1 vs. 1 dual with a chainsaw for %d, /acceptdual or /declinedual", sendername, price);
			    	                SendClientMessage(giveplayerid, GREEN, string);
			    	                format(string, sizeof(string), "you sent %s a 1 vs. 1 dual with a chainsaw for %d", giveplayername, price);
			    	                SendClientMessage(playerid, GREEN, string);
			    	                InventationSent[playerid] = giveplayerid;
									Inventation[giveplayerid] = playerid;
									Inventationprice[giveplayerid] = price;
									DualRoom1price = price;
									DualRoom1 = playerid;
									WeaponDualRoom1 = 9;
									return 1;
			    	            }
			    	            else if(DualRoom2 == -1)
			    	            {
                                    format(string, sizeof(string), "%s has sent you a 1 vs. 1 dual with a chainsaw for %d", sendername, price);
			    	                SendClientMessage(giveplayerid, GREEN, string);
			    	                format(string, sizeof(string), "you sent %s a 1 vs. 1 dual with a chainsaw for %d", giveplayername, price);
			    	                SendClientMessage(playerid, GREEN, string);
			    	                InventationSent[playerid] = giveplayerid;
									Inventation[giveplayerid] = playerid;
									DualRoom2price = price;
									DualRoom2 = playerid;
									WeaponDualRoom2 = 9;
									return 1;
			    	            }
			    	            else if(DualRoom3 == -1)
			    	            {
                                    format(string, sizeof(string), "%s has sent you a 1 vs. 1 dual with a chainsaw for %d", sendername, price);
			    	                SendClientMessage(giveplayerid, GREEN, string);
			    	                format(string, sizeof(string), "you sent %s a 1 vs. 1 dual with a chainsaw for %d", giveplayername, price);
			    	                SendClientMessage(playerid, GREEN, string);
			    	                InventationSent[playerid] = giveplayerid;
									Inventation[giveplayerid] = playerid;
									DualRoom3price = price;
									DualRoom3 = playerid;
									WeaponDualRoom3 = 9;
									return 1;
			    	            }
			    	            else if(DualRoom4 == -1)
			    	            {
                                    format(string, sizeof(string), "%s has sent you a 1 vs. 1 dual with a chainsaw for %d", sendername, price);
			    	                SendClientMessage(giveplayerid, GREEN, string);
			    	                format(string, sizeof(string), "you sent %s a 1 vs. 1 dual with a chainsaw for %d", giveplayername, price);
			    	                SendClientMessage(playerid, GREEN, string);
			    	                InventationSent[playerid] = giveplayerid;
									Inventation[giveplayerid] = playerid;
									DualRoom4price = price;
									DualRoom4 = playerid;
									WeaponDualRoom4 = 9;
									return 1;
			    	            }
			    	            else return SendClientMessage(playerid, RED, "there are no dual rooms free, wait till a dual ends");
							}
							else return SendClientMessage(playerid, RED, "This player is already in a dual");
						}
						else return SendClientMessage(playerid, RED, "you are still in a dual, end it first");
					}
					else return SendClientMessage(playerid, RED, "You already sent an inventation, wait 30 seconds or wait till the other player declines");
				}
    	        else return SendClientMessage(playerid, RED, "This player already got an inventation");
    	    }
    	    else return SendClientMessage(playerid, RED, "You can't afford the dual fee");
    	}
    	if(strcmp("silpist", weapon, true, 7) == 0)
    	{
    	    if(GetPlayerMoney(playerid) >= price)
    	    {
    	        if(Inventation[giveplayerid] == -1)
    	        {
    	            if(InventationSent[playerid] == -1)
    	            {
	    	            if(InDual[playerid] == 0)
	    	            {
	    	                if(InDual[giveplayerid] == 0)
	    	                {
	    	                    SetTimerEx("inventationremove", 30000, 0, "i", playerid);
			    	            if(DualRoom1 == -1)
			    	            {
			    	                format(string, sizeof(string), "%s has sent you a 1 vs. 1 dual with a silence pistol for %d, /acceptdual or /declinedual", sendername, price);
			    	                SendClientMessage(giveplayerid, GREEN, string);
			    	                format(string, sizeof(string), "you sent %s a 1 vs. 1 dual with a silence pistol for %d", giveplayername, price);
			    	                SendClientMessage(playerid, GREEN, string);
			    	                InventationSent[playerid] = giveplayerid;
									Inventation[giveplayerid] = playerid;
									Inventationprice[giveplayerid] = price;
									DualRoom1price = price;
									DualRoom1 = playerid;
									WeaponDualRoom1 = 23;
									return 1;
			    	            }
			    	            else if(DualRoom2 == -1)
			    	            {
                                    format(string, sizeof(string), "%s has sent you a 1 vs. 1 dual with a silence pistol for %d", sendername, price);
			    	                SendClientMessage(giveplayerid, GREEN, string);
			    	                format(string, sizeof(string), "you sent %s a 1 vs. 1 dual with a silence pistol for %d", giveplayername, price);
			    	                SendClientMessage(playerid, GREEN, string);
			    	                InventationSent[playerid] = giveplayerid;
									Inventation[giveplayerid] = playerid;
									DualRoom2price = price;
									DualRoom2 = playerid;
									WeaponDualRoom2 = 23;
									return 1;
			    	            }
			    	            else if(DualRoom3 == -1)
			    	            {
                                    format(string, sizeof(string), "%s has sent you a 1 vs. 1 dual with a silence pistol for %d", sendername, price);
			    	                SendClientMessage(giveplayerid, GREEN, string);
			    	                format(string, sizeof(string), "you sent %s a 1 vs. 1 dual with a silence pistol for %d", giveplayername, price);
			    	                SendClientMessage(playerid, GREEN, string);
			    	                InventationSent[playerid] = giveplayerid;
									Inventation[giveplayerid] = playerid;
									DualRoom3price = price;
									DualRoom3 = playerid;
									WeaponDualRoom3 = 23;
									return 1;
			    	            }
			    	            else if(DualRoom4 == -1)
			    	            {
                                    format(string, sizeof(string), "%s has sent you a 1 vs. 1 dual with a silence pistol for %d", sendername, price);
			    	                SendClientMessage(giveplayerid, GREEN, string);
			    	                format(string, sizeof(string), "you sent %s a 1 vs. 1 dual with a silence pistol for %d", giveplayername, price);
			    	                SendClientMessage(playerid, GREEN, string);
			    	                InventationSent[playerid] = giveplayerid;
									Inventation[giveplayerid] = playerid;
									DualRoom4price = price;
									DualRoom4 = playerid;
									WeaponDualRoom4 = 23;
									return 1;
			    	            }
			    	            else return SendClientMessage(playerid, RED, "there are no dual rooms free, wait till a dual ends");
							}
							else return SendClientMessage(playerid, RED, "This player is already in a dual");
						}
						else return SendClientMessage(playerid, RED, "you are still in a dual, end it first");
					}
					else return SendClientMessage(playerid, RED, "You already sent an inventation, wait 30 seconds or wait till the other player declines");
				}
    	        else return SendClientMessage(playerid, RED, "This player already got an inventation");
    	    }
    	    else return SendClientMessage(playerid, RED, "You can't afford the dual fee");
    	}
    	if(strcmp("combatsg", weapon, true, 8) == 0)
    	{
    	    if(GetPlayerMoney(playerid) >= price)
    	    {
    	        if(Inventation[giveplayerid] == -1)
    	        {
    	            if(InventationSent[playerid] == -1)
    	            {
	    	            if(InDual[playerid] == 0)
	    	            {
	    	                if(InDual[giveplayerid] == 0)
	    	                {
	    	                    SetTimerEx("inventationremove", 30000, 0, "i", playerid);
			    	            if(DualRoom1 == -1)
			    	            {
			    	                format(string, sizeof(string), "%s has sent you a 1 vs. 1 dual with a Combat Shotgun for %d, /acceptdual or /declinedual", sendername, price);
			    	                SendClientMessage(giveplayerid, GREEN, string);
			    	                format(string, sizeof(string), "you sent %s a 1 vs. 1 dual with a Combat Shotgun for %d", giveplayername, price);
			    	                SendClientMessage(playerid, GREEN, string);
			    	                InventationSent[playerid] = giveplayerid;
									Inventation[giveplayerid] = playerid;
									Inventationprice[giveplayerid] = price;
									DualRoom1price = price;
									DualRoom1 = playerid;
									WeaponDualRoom1 = 27;
									return 1;
			    	            }
			    	            else if(DualRoom2 == -1)
			    	            {
                                    format(string, sizeof(string), "%s has sent you a 1 vs. 1 dual with a Combat Shotgun for %d", sendername, price);
			    	                SendClientMessage(giveplayerid, GREEN, string);
			    	                format(string, sizeof(string), "you sent %s a 1 vs. 1 dual with a Combat Shotgun for %d", giveplayername, price);
			    	                SendClientMessage(playerid, GREEN, string);
			    	                InventationSent[playerid] = giveplayerid;
									Inventation[giveplayerid] = playerid;
									DualRoom2price = price;
									DualRoom2 = playerid;
									WeaponDualRoom2 = 27;
									return 1;
			    	            }
			    	            else if(DualRoom3 == -1)
			    	            {
                                    format(string, sizeof(string), "%s has sent you a 1 vs. 1 dual with a Combat Shotgun for %d", sendername, price);
			    	                SendClientMessage(giveplayerid, GREEN, string);
			    	                format(string, sizeof(string), "you sent %s a 1 vs. 1 dual with a Combat Shotgun for %d", giveplayername, price);
			    	                SendClientMessage(playerid, GREEN, string);
			    	                InventationSent[playerid] = giveplayerid;
									Inventation[giveplayerid] = playerid;
									DualRoom3price = price;
									DualRoom3 = playerid;
									WeaponDualRoom3 = 27;
									return 1;
			    	            }
			    	            else if(DualRoom4 == -1)
			    	            {
                                    format(string, sizeof(string), "%s has sent you a 1 vs. 1 dual with a Combat Shotgun for %d", sendername, price);
			    	                SendClientMessage(giveplayerid, GREEN, string);
			    	                format(string, sizeof(string), "you sent %s a 1 vs. 1 dual with a Combat Shotgun for %d", giveplayername, price);
			    	                SendClientMessage(playerid, GREEN, string);
			    	                InventationSent[playerid] = giveplayerid;
									Inventation[giveplayerid] = playerid;
									DualRoom4price = price;
									DualRoom4 = playerid;
									WeaponDualRoom4 = 27;
									return 1;
			    	            }
			    	            else return SendClientMessage(playerid, RED, "there are no dual rooms free, wait till a dual ends");
							}
							else return SendClientMessage(playerid, RED, "This player is already in a dual");
						}
						else return SendClientMessage(playerid, RED, "you are still in a dual, end it first");
					}
					else return SendClientMessage(playerid, RED, "You already sent an inventation, wait 30 seconds or wait till the other player declines");
				}
    	        else return SendClientMessage(playerid, RED, "This player already got an inventation");
    	    }
    	    else return SendClientMessage(playerid, RED, "You can't afford the dual fee");
    	}
    	if(strcmp("shotgun", weapon, true, 7) == 0)
    	{
    	    if(GetPlayerMoney(playerid) >= price)
    	    {
    	        if(Inventation[giveplayerid] == -1)
    	        {
    	            if(InventationSent[playerid] == -1)
    	            {
	    	            if(InDual[playerid] == 0)
	    	            {
	    	                if(InDual[giveplayerid] == 0)
	    	                {
	    	                    SetTimerEx("inventationremove", 30000, 0, "i", playerid);
			    	            if(DualRoom1 == -1)
			    	            {
			    	                format(string, sizeof(string), "%s has sent you a 1 vs. 1 dual with a Shotgun for %d, /acceptdual or /declinedual", sendername, price);
			    	                SendClientMessage(giveplayerid, GREEN, string);
			    	                format(string, sizeof(string), "you sent %s a 1 vs. 1 dual with a Shotgun for %d", giveplayername, price);
			    	                SendClientMessage(playerid, GREEN, string);
			    	                InventationSent[playerid] = giveplayerid;
									Inventation[giveplayerid] = playerid;
									Inventationprice[giveplayerid] = price;
									DualRoom1price = price;
									DualRoom1 = playerid;
									WeaponDualRoom1 = 25;
									return 1;
			    	            }
			    	            else if(DualRoom2 == -1)
			    	            {
                                    format(string, sizeof(string), "%s has sent you a 1 vs. 1 dual with a Shotgun for %d", sendername, price);
			    	                SendClientMessage(giveplayerid, GREEN, string);
			    	                format(string, sizeof(string), "you sent %s a 1 vs. 1 dual with a Shotgun for %d", giveplayername, price);
			    	                SendClientMessage(playerid, GREEN, string);
			    	                InventationSent[playerid] = giveplayerid;
									Inventation[giveplayerid] = playerid;
									DualRoom2price = price;
									DualRoom2 = playerid;
									WeaponDualRoom2 = 25;
									return 1;
			    	            }
			    	            else if(DualRoom3 == -1)
			    	            {
                                    format(string, sizeof(string), "%s has sent you a 1 vs. 1 dual with a Shotgun for %d", sendername, price);
			    	                SendClientMessage(giveplayerid, GREEN, string);
			    	                format(string, sizeof(string), "you sent %s a 1 vs. 1 dual with a Shotgun for %d", giveplayername, price);
			    	                SendClientMessage(playerid, GREEN, string);
			    	                InventationSent[playerid] = giveplayerid;
									Inventation[giveplayerid] = playerid;
									DualRoom3price = price;
									DualRoom3 = playerid;
									WeaponDualRoom3 = 25;
									return 1;
			    	            }
			    	            else if(DualRoom4 == -1)
			    	            {
                                    format(string, sizeof(string), "%s has sent you a 1 vs. 1 dual with a Shotgun for %d", sendername, price);
			    	                SendClientMessage(giveplayerid, GREEN, string);
			    	                format(string, sizeof(string), "you sent %s a 1 vs. 1 dual with a Shotgun for %d", giveplayername, price);
			    	                SendClientMessage(playerid, GREEN, string);
			    	                InventationSent[playerid] = giveplayerid;
									Inventation[giveplayerid] = playerid;
									DualRoom4price = price;
									DualRoom4 = playerid;
									WeaponDualRoom4 = 25;
									return 1;
			    	            }
			    	            else return SendClientMessage(playerid, RED, "there are no dual rooms free, wait till a dual ends");
							}
							else return SendClientMessage(playerid, RED, "This player is already in a dual");
						}
						else return SendClientMessage(playerid, RED, "you are still in a dual, end it first");
					}
					else return SendClientMessage(playerid, RED, "You already sent an inventation, wait 30 seconds or wait till the other player declines");
				}
    	        else return SendClientMessage(playerid, RED, "This player already got an inventation");
    	    }
    	    else return SendClientMessage(playerid, RED, "You can't afford the dual fee");
    	}
    	else return SendClientMessage(playerid, COLOR_YELLOW, "Right Usage: /dual [playerid] [weapon] [amount]");
	}
}

dcmd_acceptdual(playerid, params[])
{
	#pragma unused params
	if(Inventation[playerid] >= 0)
	{
	    if(GetPlayerMoney(playerid) >= Inventationprice[playerid])
	    {
	        if(DualRoom1 == Inventation[playerid])
	        {
	            SetPlayerTeam(playerid, 1);
	            SetPlayerTeam(Inventation[playerid], 2);
	            InDual[Inventation[playerid]] = 1;
	            InDual[playerid] = 1;
	            GivePlayerWeapon(playerid, WeaponDualRoom1, 500);
	            GivePlayerWeapon(Inventation[playerid], WeaponDualRoom1, 500);
	            SetPlayerPos(playerid, 1715.5034,-2865.0405,6.5554);
	            SetPlayerFacingAngle(playerid,317.1064);
	            SetPlayerPos(Inventation[playerid], 1723.2203,-2856.0315,6.5554);
	            SetPlayerFacingAngle(Inventation[playerid],140.0715);
	            SetPlayerHealth(playerid, 100);
	            SetPlayerArmour(playerid, 100);
	            SetPlayerHealth(Inventation[playerid], 100);
	            SetPlayerArmour(Inventation[playerid], 100);
	            GivePlayerMoney(playerid, -DualRoom1price);
	            GivePlayerMoney(Inventation[playerid], -DualRoom1price);
	            SendClientMessage(playerid, GREEN, "LET THE BATTLE BEGIN!");
	            SendClientMessage(Inventation[playerid], GREEN, "LET THE BATTLE BEGIN!");
	            TogglePlayerControllable(playerid, 0);
	            TogglePlayerControllable(Inventation[playerid], 0);
				CountDown(playerid, 3);
				CountDown(Inventation[playerid], 3);
	        }
	        if(DualRoom2 == Inventation[playerid])
	        {
                SetPlayerTeam(playerid, 1);
	            SetPlayerTeam(Inventation[playerid], 2);
	            InDual[Inventation[playerid]] = 1;
	            InDual[playerid] = 1;
	            GivePlayerWeapon(playerid, WeaponDualRoom2, 500);
	            GivePlayerWeapon(Inventation[playerid], WeaponDualRoom2, 500);
	            SetPlayerPos(playerid, 1747.7878,-2864.6843,6.5554);
	            SetPlayerFacingAngle(playerid,47.0340);
	            SetPlayerPos(Inventation[playerid], 1740.1650,-2858.3879,6.5554);
	            SetPlayerFacingAngle(Inventation[playerid],228.1190);
	            SetPlayerHealth(playerid, 100);
	            SetPlayerArmour(playerid, 100);
	            SetPlayerHealth(Inventation[playerid], 100);
	            SetPlayerArmour(Inventation[playerid], 100);
	            GivePlayerMoney(playerid, -DualRoom2price);
	            GivePlayerMoney(Inventation[playerid], -DualRoom2price);
	            SendClientMessage(playerid, GREEN, "LET THE BATTLE BEGIN!");
	            SendClientMessage(Inventation[playerid], GREEN, "LET THE BATTLE BEGIN!");
	            TogglePlayerControllable(playerid, 0);
	            TogglePlayerControllable(Inventation[playerid], 0);
	            CountDown(playerid, 3);
				CountDown(Inventation[playerid], 3);
				return 1;
	        }
	        if(DualRoom3 == Inventation[playerid])
	        {
                SetPlayerTeam(playerid, 1);
	            SetPlayerTeam(Inventation[playerid], 2);
	            InDual[Inventation[playerid]] = 1;
	            InDual[playerid] = 1;
	            GivePlayerWeapon(playerid, WeaponDualRoom3, 500);
	            GivePlayerWeapon(Inventation[playerid], WeaponDualRoom3, 500);
	            SetPlayerPos(playerid, 1748.3942,-2832.6250,6.5554);
	            SetPlayerFacingAngle(playerid,141.3482);
	            SetPlayerPos(Inventation[playerid], 1741.1982,-2839.9243,6.5554);
	            SetPlayerFacingAngle(Inventation[playerid],315.8531);
	            SetPlayerHealth(playerid, 100);
	            SetPlayerArmour(playerid, 100);
	            SetPlayerHealth(Inventation[playerid], 100);
	            SetPlayerArmour(Inventation[playerid], 100);
	            GivePlayerMoney(playerid, -DualRoom3price);
	            GivePlayerMoney(Inventation[playerid], -DualRoom3price);
	            SendClientMessage(playerid, GREEN, "LET THE BATTLE BEGIN!");
	            SendClientMessage(Inventation[playerid], GREEN, "LET THE BATTLE BEGIN!");
	            TogglePlayerControllable(playerid, 0);
	            TogglePlayerControllable(Inventation[playerid], 0);
	            CountDown(playerid, 3);
				CountDown(Inventation[playerid], 3);
	            return 1;
	        }
	        if(DualRoom4 == Inventation[playerid])
	        {
                SetPlayerTeam(playerid, 1);
	            SetPlayerTeam(Inventation[playerid], 2);
	            InDual[Inventation[playerid]] = 1;
	            InDual[playerid] = 1;
	            GivePlayerWeapon(playerid, WeaponDualRoom4, 500);
	            GivePlayerWeapon(Inventation[playerid], WeaponDualRoom4, 500);
	            SetPlayerPos(playerid, 1716.7450,-2832.7969,6.5554);
	            SetPlayerFacingAngle(playerid,229.7091);
	            SetPlayerPos(Inventation[playerid], 1722.3630,-2840.2034,6.5554);
	            SetPlayerFacingAngle(Inventation[playerid],45.7807);
	            SetPlayerHealth(playerid, 100);
	            SetPlayerArmour(playerid, 100);
	            SetPlayerHealth(Inventation[playerid], 100);
	            SetPlayerArmour(Inventation[playerid], 100);
	            GivePlayerMoney(playerid, -DualRoom4price);
	            GivePlayerMoney(Inventation[playerid], -DualRoom4price);
	            SendClientMessage(playerid, GREEN, "LET THE BATTLE BEGIN!");
	            SendClientMessage(Inventation[playerid], GREEN, "LET THE BATTLE BEGIN!");
	            TogglePlayerControllable(playerid, 0);
	            TogglePlayerControllable(Inventation[playerid], 0);
	            CountDown(playerid, 3);
				CountDown(Inventation[playerid], 3);
	            return 1;
	        }
	        return 1;
	    }
	    else return SendClientMessage(playerid, RED, "You dont have enough money to accept the dual use /declinedual please.");
	}
	else return SendClientMessage(playerid, RED, "You didnt receive a dual inventation");
}

dcmd_declinedual(playerid, params[])
{
	#pragma unused params
	SendClientMessage(playerid, RED, "You decline the dual inventation");
    SendClientMessage(Inventation[playerid], RED, "your dual inventation got declined.");
	Inventation[InventationSent[playerid]] = -1;
	InventationSent[playerid] = -1;
	if(DualRoom1 == playerid)
	{
	    DualRoom1 = -1;
	}
	if(DualRoom2 == playerid)
	{
        DualRoom2 = -1;
	}
	if(DualRoom3 == playerid)
	{
        DualRoom3 = -1;
	}
	if(DualRoom3 == playerid)
	{
        DualRoom4 = -1;
	}
	return 1;
}

stock GetXYBehindPlayer(playerid,&Float:x,&Float:y,Float:dis)
{
	new Float:pos[3];
	GetPlayerPos(playerid,pos[0],pos[1],pos[2]);
	GetPlayerFacingAngle(playerid,pos[2]);
	GetXYBehindPoint(pos[0],pos[1],x,y,pos[2],dis);
}

stock GetXYBehindPoint(Float:x,Float:y,&Float:x2,&Float:y2,Float:angle,Float:distance)
{
	x2 = x - (distance * floatsin(-angle,degrees));
	y2 = y - (distance * floatcos(-angle,degrees));
}
stock GetXYInFrontOfPlayer(playerid,&Float:x,&Float:y,Float:dis)
{
	new Float:pos[3];
	GetPlayerPos(playerid,pos[0],pos[1],pos[2]);
	GetPlayerFacingAngle(playerid,pos[2]);
	GetXYInFrontOfPoint(pos[0],pos[1],x,y,pos[2],dis);
}

stock GetXYInFrontOfPoint(Float:x,Float:y,&Float:x2,&Float:y2,Float:angle,Float:distance)
{
	x2 = x + (distance * floatsin(-angle,degrees));
	y2 = y + (distance * floatcos(-angle,degrees));
}

public Encrypt(string[])
{
	for(new x=0; x < strlen(string); x++)
	  {
		  string[x] += (3^x) * (x % 15);
		  if(string[x] > (0xff))
		  {
			  string[x] -= 64;
		  }
	  }
	return 1;
}
public OnPlayerExitVehicle(playerid, vehicleid)
{
    return 1;
}
public OnPlayerEnterVehicle(playerid, vehicleid, ispassenger)
{
	if(GetVehicleModel(vehicleid) == 432)
	{
 		if(PlayerInfo[playerid][pReborn] <= 4)
   		{
    		SendClientMessage(playerid,COLOR_RED,"[ERROR]sorry, you need to be reborn 5 times for a tank!");
			TogglePlayerControllable(playerid,0);
			TogglePlayerControllable(playerid,1);
		}
		else{ }
 	}
	if(LSPDTeam[playerid] == 1)
	{
  		if(vehicleid == GroveVan1 || vehicleid == GroveVan2)
		{
  			new name[24], string[128];
			GetPlayerName( playerid, name, 24 );
			format( string, sizeof(string), "~w~%s Is Stealing a ~b~ Grove Street Van!", name );
			GameTextForAll( string, 5000, 5 );
			GameTextForPlayer(playerid,"~w~Bring The Van To Your ~b~]Base]",3000,5);
   			SetPlayerCheckpoint(playerid, 1542.1636,-1699.3094,5.8906, 10);
      		PCheckpoint[playerid] = LSPDHQ1;
        	return 1;
      	}
   		return 1;
 	}
	if(GroveTeam[playerid] == 1)
   	{
   		if(vehicleid == LSPDVan1 || vehicleid == LSPDVan2)
     	{
      		new name[24], string[128];
			GetPlayerName( playerid, name, 24 );
			format( string, sizeof(string), "~w~%s Is Stealing a ~b~ LSPD Van!", name );
   			GameTextForAll( string, 5000, 5 );
   			GameTextForPlayer(playerid,"~w~Bring The Van To Your ~g~]Base]",3000,5);
   			SetPlayerCheckpoint(playerid, 2495.5579,-1689.8242,14.6723, 10);
   			PCheckpoint[playerid] = GroveHQ1;
   			return 1;
      	}
   		return 1;
 	}
	return 1;
}
public  OnPlayerTeamPrivmsg( playerid, text[] )
{
	return 1;
}
public OnPlayerPrivmsg( playerid, recieverid, text[] )
{
	return 1;
}
public Announcements(playerid)
{
	// Here choose what you want, and what you don't want. Comment the lines you don't want.
    SendClientMessageToAll(COLOR_ORANGE, "Use /help For Help");
    SendClientMessageToAll(COLOR_ORANGE, "This Server Is Owned By Rock Gaming");
    SendClientMessageToAll(COLOR_ORANGE, "Visit rock-gaming.com");

}
public RankTimer()
{
	for(new i=0; i<MAX_PLAYERS; i++)
	{
		if(IsPlayerConnected(i) && gPlayerLogged[i])
		{
			new string[50];
			new nxtlevel = PlayerInfo[i][pRank]+1;
			new costlevel = nxtlevel*rankcost;//1000 for testing purposes
			if (PlayerInfo[i][pExp] >= costlevel) //Start of raning up code
			{
			new rank = PlayerInfo[i][pRank];
			PlayerInfo[i][pRank]++;
			format(string, sizeof(string), "~g~Ranked Up~n~~w~You Are Now Rank %d", rank);
			PlayerPlaySound(i, 1052, 0.0, 0.0, 0.0);
			PlayerPlayMusic(i);
			GivePlayerMoney(i, 10000);
			SetPlayerScore(i, rank);


			//Ranking Message to all
			new pName[MAX_PLAYER_NAME];
			new Rrank = PlayerInfo[i][pRank];
    		GetPlayerName(i, pName, sizeof(pName));
    		format(string, sizeof(string), "Congratulations to %s on getting to Rank %d.", pName,Rrank);
    		SendClientMessageToAll(COLOR_LIGHTGREEN, string);


			//Ranking New feature message
			if (PlayerInfo[i][pRank] == 2)
			{
			PlayerInfo[i][pMenugoal] = 1;
			SendClientMessage(i,COLOR_GREEN,"You are Rank 2 and Can now use the /menu Command");
			}

   			if (PlayerInfo[i][pRank] == 4)
			{
			PlayerInfo[i][pHeligoal] = 1;
			SendClientMessage(i,COLOR_GREEN,"You are Rank 4 and Can now use the Helicopters!");
			}

   			if (PlayerInfo[i][pRank] == 6)
			{
			PlayerInfo[i][pArmourgoal] = 1;
			SendClientMessage(i,COLOR_GREEN,"You are Rank 6 and now have a Armour Bar!");
			}

			if (PlayerInfo[i][pRank] == 8)
			{
			PlayerInfo[i][pMapgoal] = 1;
			SendClientMessage(i,COLOR_GREEN,"You are Rank 8 and Can now use the /mapvis Command");
			}
			}//End of Ranking up code
			if (PlayerInfo[i][pRank] == 2)
			{
			PlayerInfo[i][pMenugoal] = 1;
			}

   			if (PlayerInfo[i][pRank] == 4)
			{
			PlayerInfo[i][pHeligoal] = 1;
			}

   			if (PlayerInfo[i][pRank] == 6)
			{
			PlayerInfo[i][pArmourgoal] = 1;
			}

   			if (PlayerInfo[i][pRank] == 8)
			{
			PlayerInfo[i][pMapgoal] = 1;
			}
		}
	}
	return 1;
}

public OnPlayerUpdate(playerid)
{
	return 1;
}
stock ini_GetKey( line[] )
{
	new keyRes[128];
	keyRes[0] = 0;
    if ( strfind( line , "=" , true ) == -1 ) return keyRes;
    strmid( keyRes , line , 0 , strfind( line , "=" , true ) , sizeof( keyRes) );
    return keyRes;
}

stock ini_GetValue( line[] )
{
	new valRes[128];
	valRes[0]=0;
	if ( strfind( line , "=" , true ) == -1 ) return valRes;
	strmid( valRes , line , strfind( line , "=" , true )+1 , strlen( line ) , sizeof( valRes ) );
	return valRes;
}
public PlayerPlayMusic(playerid)
{
	if(IsPlayerConnected(playerid))
	{
		SetTimer("StopMusic", 5000, 0);
		PlayerPlaySound(playerid, 1068, 0.0, 0.0, 0.0);
	}
}

public StopMusic()
{
	for(new i = 0; i < MAX_PLAYERS; i++)
	{
		if(IsPlayerConnected(i))
		{
			PlayerPlaySound(i, 1069, 0.0, 0.0, 0.0);
		}
	}
}
public PlayerToPoint(Float:radi, playerid, Float:x, Float:y, Float:z)
{
    if(IsPlayerConnected(playerid))
	{
		new Float:oldposx, Float:oldposy, Float:oldposz;
		new Float:tempposx, Float:tempposy, Float:tempposz;
		GetPlayerPos(playerid, oldposx, oldposy, oldposz);
		tempposx = (oldposx -x);
		tempposy = (oldposy -y);
		tempposz = (oldposz -z);
		//printf("DEBUG: X:%f Y:%f Z:%f",posx,posy,posz);
		if (((tempposx < radi) && (tempposx > -radi)) && ((tempposy < radi) && (tempposy > -radi)) && ((tempposz < radi) && (tempposz > -radi)))
		{
			return 1;
		}
	}
	return 0;
}
public ProxDetector(Float:radi, playerid, string[],col1,col2,col3,col4,col5)
{
	if(IsPlayerConnected(playerid))
	{
		new Float:oldposx, Float:oldposy, Float:oldposz;
		new Float:tempposx, Float:tempposy, Float:tempposz;
		GetPlayerPos(playerid, oldposx, oldposy, oldposz);
		//radi = 2.0; //Trigger Radius
		for(new i = 0; i < MAX_PLAYERS; i++)
		{
			if(IsPlayerConnected(i))
			{

					if (((tempposx < radi/16) && (tempposx > -radi/16)) && ((tempposy < radi/16) && (tempposy > -radi/16)) && ((tempposz < radi/16) && (tempposz > -radi/16)))
					{
						SendClientMessage(i, col1, string);
					}
					else if (((tempposx < radi/8) && (tempposx > -radi/8)) && ((tempposy < radi/8) && (tempposy > -radi/8)) && ((tempposz < radi/8) && (tempposz > -radi/8)))
					{
						SendClientMessage(i, col2, string);
					}
					else if (((tempposx < radi/4) && (tempposx > -radi/4)) && ((tempposy < radi/4) && (tempposy > -radi/4)) && ((tempposz < radi/4) && (tempposz > -radi/4)))
					{
						SendClientMessage(i, col3, string);
					}
					else if (((tempposx < radi/2) && (tempposx > -radi/2)) && ((tempposy < radi/2) && (tempposy > -radi/2)) && ((tempposz < radi/2) && (tempposz > -radi/2)))
					{
						SendClientMessage(i, col4, string);
					}
					else if (((tempposx < radi) && (tempposx > -radi)) && ((tempposy < radi) && (tempposy > -radi)) && ((tempposz < radi) && (tempposz > -radi)))
					{
						SendClientMessage(i, col5, string);
					}
				}
				else
				{
					SendClientMessage(i, col1, string);
				}
		}
	}//not connected
	return 1;
}
public OnPlayerSelectedMenuRow(playerid, row)
{
    new Menu:CurrentMenu = GetPlayerMenu(playerid);
    new money = GetPlayerMoney(playerid);
    if(CurrentMenu == spending)
    {
        switch(row)
        {
            case 0:
			{
			ShowMenuForPlayer(Gunsmenu, playerid);
			}
         	case 1:
			{
			ShowMenuForPlayer(Othermenu, playerid);
            }
         	case 2:
			{
                HideMenuForPlayer(spending, playerid);
                TogglePlayerControllable(playerid, 1);
            }
        }
    }
    else if(CurrentMenu == Gunsmenu)
    {
        switch(row)
        {
            case 0: // Grenades
			{
			if (money >=500)
			{
			GivePlayerMoney(playerid, -500);
			GivePlayerWeapon(playerid,16,5);
			}
			}
         	case 1: // Shotgun
			{
			if (money >=7000)
			{
			GivePlayerMoney(playerid, -7000);
            GivePlayerWeapon(playerid,27,100);
			}

            }
         	case 2: // MP5
			{
   			if (money >=5500)
			{
			GivePlayerMoney(playerid, -5500);
            GivePlayerWeapon(playerid,29,200);
			}
            }
         	case 3: // Tec9
			{
            if (money >=5500)
			{
			GivePlayerMoney(playerid, -5500);
            GivePlayerWeapon(playerid,32,200);
			}
            }
         	case 4: //Brass knuckles
			{
   			if (money >=200)
			{
			GivePlayerMoney(playerid, -200);
            GivePlayerWeapon(playerid,1,1);
			}
            }
         	case 5: // Detonator Bomb
			{
   			if (money >=15000)
			{
			GivePlayerMoney(playerid, -15000);
            GivePlayerWeapon(playerid,39,15);
			}
            }
         	case 6: //Exit
			{
                HideMenuForPlayer(Gunsmenu, playerid);
                TogglePlayerControllable(playerid, 1);
            }
        }
    }
    if(CurrentMenu == Othermenu)
    {
        switch(row)
        {
            case 0: //HP
			{
			if (money >=1000)
			{
			GivePlayerMoney(playerid, -1000);
			SetPlayerHealth(playerid,100);
			}
			}
           	case 1: //Armour
			{
			if (money >=1000)
			{
			GivePlayerMoney(playerid, -1000);
			SetPlayerArmour(playerid,100);
			}
			}
         	case 2:
			{
                HideMenuForPlayer(Othermenu, playerid);
                TogglePlayerControllable(playerid, 1);
            }
        }
    }
    if(CurrentMenu == Tele)
    {
        switch(row)
        {
            case 0:
			{
			SetPlayerPos(playerid,2505.2639,-1684.1050,13.5469);
			SendClientMessage(playerid,COLOR_YELLOW,"Welcome To LS");
			}
         	case 1:
			{
			SetPlayerPos(playerid,-2021.7690,157.2182,28.8154);
			SendClientMessage(playerid,COLOR_YELLOW,"Welcome To SF");
            }
         	case 2:
			{
			SetPlayerPos(playerid,2031.3354,1340.9868,10.8203);
			SendClientMessage(playerid,COLOR_YELLOW,"Welcome To LV");
            }
         	case 3:
			{
                HideMenuForPlayer(Tele, playerid);
                TogglePlayerControllable(playerid, 1);
            }
        }
    }
	return 1;
}
public ShowStats(playerid,targetid)
{
    if(IsPlayerConnected(playerid)&&IsPlayerConnected(targetid))
	{
		new Premium[20];
		if(PlayerInfo[targetid][pPremium] == 0) { Premium = "Nothing"; }
		else if(PlayerInfo[targetid][pPremium] == 1) { Premium = "Silver"; }
		else if(PlayerInfo[targetid][pPremium] == 2) { Premium = "Gold"; }
		new nxtlevel = PlayerInfo[targetid][pRank]+1;
		new costlevel = nxtlevel*rankcost;
		new cash =  GetPlayerMoney(targetid);
		new deaths = PlayerInfo[targetid][pDeaths];
		new Admin = PlayerInfo[targetid][pAdmin];
		new kills = PlayerInfo[targetid][pKills];
		new Tkills = PlayerInfo[targetid][pTKills];
		new rank = PlayerInfo[targetid][pRank];
		new reborn = PlayerInfo[targetid][pReborn];
		new exp = PlayerInfo[targetid][pExp];
		new togo = nxtlevel*costlevel;
		new van = PlayerInfo[targetid][pVan];
		new name[MAX_PLAYER_NAME];
		new Float:ratio = floatdiv(PlayerInfo[targetid][pKills] , PlayerInfo[targetid][pDeaths]);
		GetPlayerName(targetid, name, sizeof(name));
		new Float:px,Float:py,Float:pz;
		GetPlayerPos(targetid, px, py, pz);
		new coordsstring[256];
		SendClientMessage(playerid, COLOR_RED,"________________________________________");
		format(coordsstring, sizeof(coordsstring),"*** %s || Times Reborn:[%d] ***",name,reborn);
		SendClientMessage(playerid, COLOR_WHITE,coordsstring);
		format(coordsstring, sizeof(coordsstring), "| Rank:[%d] | Experience:[%d] Exp_Needed:[%d] | Cash:[$%d] | AdminLevel:[%d] |",rank,exp,togo,cash,Admin);
		SendClientMessage(playerid, COLOR_LIGHTSEAGREEN,coordsstring);
		format(coordsstring, sizeof(coordsstring), "| Kills:[%d] | TKills:[%d] | Deaths:[%d] | Kill/Death Ratio: [%f] |",kills,Tkills,deaths, ratio);
		SendClientMessage(playerid, COLOR_LIGHTSEAGREEN,coordsstring);
		format(coordsstring, sizeof(coordsstring), "| Vans Stolen:[%d] | Premium_Position:[%s] |",van,Premium);
		SendClientMessage(playerid, COLOR_LIGHTSEAGREEN,coordsstring);
		SendClientMessage(playerid, COLOR_RED,"________________________________________");
	}
}
stock strtok(const string[], &index)
{
	new length = strlen(string);
	while ((index < length) && (string[index] <= ' '))
	{
		index++;
	}

	new offset = index;
	new result[20];
	while ((index < length) && (string[index] > ' ') && ((index - offset) < (sizeof(result) - 1)))
	{
		result[index - offset] = string[index];
		index++;
	}
	result[index - offset] = EOS;
	return result;
}

stock GetPlayerNameEx(playerid)
{
    new string[24];
    GetPlayerName(playerid,string,24);
    new str[24];
    strmid(str,string,0,strlen(string),24);
    for(new i = 0; i < MAX_PLAYER_NAME; i++)
    {
        if (str[i] == '_') str[i] = ' ';
    }
    return str;
}

stock IsNumeric(const string[])
{
	for (new i = 0, j = strlen(string); i < j; i++)
	if (string[i] > '9' || string[i] < '0')
    return 0;
	return 1;
}

ReturnUser(text[], playerid = INVALID_PLAYER_ID)
{
	new pos = 0;
	while (text[pos] < 0x21)
	{
		if (text[pos] == 0) return INVALID_PLAYER_ID;
		pos++;
	}
	new userid = INVALID_PLAYER_ID;
	if (IsNumeric(text[pos]))
	{
		userid = strval(text[pos]);
		if (userid >=0 && userid < MAX_PLAYERS)
		{
			if(!IsPlayerConnected(userid))
				userid = INVALID_PLAYER_ID;
			else return userid;
		}
	}
	new len = strlen(text[pos]);
	new count = 0;
	new pname[MAX_PLAYER_NAME];
	for (new i = 0; i < MAX_PLAYERS; i++)
	{
		if (IsPlayerConnected(i))
		{
			GetPlayerName(i, pname, sizeof (pname));
			if (strcmp(pname, text[pos], true, len) == 0)
			{
				if (len == strlen(pname)) return i;
				else
				{
					count++;
					userid = i;
				}
			}
		}
	}
	if (count != 1)
	{
		if (playerid != INVALID_PLAYER_ID)
		{
			if (count) SendClientMessage(playerid, COLOR_YELLOW, "There are multiple users, enter full playername.");
			else SendClientMessage(playerid, COLOR_RED, "Playername not found.");
		}
		userid = INVALID_PLAYER_ID;
	}
	return userid;
}
public BanLog(string[])
{
	new entry[256];
	format(entry, sizeof(entry), "%s\n",string);
	new File:hFile;
	hFile = fopen("ban.log", io_append);
	fwrite(hFile, entry);
	fclose(hFile);
}
public ABroadCast(color,const string[],level)
{
	for(new i = 0; i < MAX_PLAYERS; i++)
	{
		if(IsPlayerConnected(i))
		{
			if (PlayerInfo[i][pAdmin] >= level)
			{
				SendClientMessage(i, color, string);
				printf("%s", string);
			}
		}
	}
	return 1;
}


stock sscanf(string[], format[], {Float,_}:...)
{
	#if defined isnull
		if (isnull(string))
	#else
		if (string[0] == 0 || (string[0] == 1 && string[1] == 0))
	#endif
		{
			return format[0];
		}
	#pragma tabsize 4
	new
		formatPos = 0,
		stringPos = 0,
		paramPos = 2,
		paramCount = numargs(),
		delim = ' ';
	while (string[stringPos] && string[stringPos] <= ' ')
	{
		stringPos++;
	}
	while (paramPos < paramCount && string[stringPos])
	{
		switch (format[formatPos++])
		{
			case '\0':
			{
				return 0;
			}
			case 'i', 'd':
			{
				new
					neg = 1,
					num = 0,
					ch = string[stringPos];
				if (ch == '-')
				{
					neg = -1;
					ch = string[++stringPos];
				}
				do
				{
					stringPos++;
					if ('0' <= ch <= '9')
					{
						num = (num * 10) + (ch - '0');
					}
					else
					{
						return -1;
					}
				}
				while ((ch = string[stringPos]) > ' ' && ch != delim);
				setarg(paramPos, 0, num * neg);
			}
			case 'h', 'x':
			{
				new
					num = 0,
					ch = string[stringPos];
				do
				{
					stringPos++;
					switch (ch)
					{
						case 'x', 'X':
						{
							num = 0;
							continue;
						}
						case '0' .. '9':
						{
							num = (num << 4) | (ch - '0');
						}
						case 'a' .. 'f':
						{
							num = (num << 4) | (ch - ('a' - 10));
						}
						case 'A' .. 'F':
						{
							num = (num << 4) | (ch - ('A' - 10));
						}
						default:
						{
							return -1;
						}
					}
				}
				while ((ch = string[stringPos]) > ' ' && ch != delim);
				setarg(paramPos, 0, num);
			}
			case 'c':
			{
				setarg(paramPos, 0, string[stringPos++]);
			}
			case 'f':
			{
			    new changestr[16], changepos = 0, strpos = stringPos;
				while(changepos < 16 && string[strpos] && string[strpos] != delim)
				{
			        changestr[changepos++] = string[strpos++];
			    }
			    changestr[changepos] = '\0';
			    setarg(paramPos,0,_:floatstr(changestr));
			}
			case 'p':
			{
				delim = format[formatPos++];
				continue;
			}
			case '\'':
			{
				new
					end = formatPos - 1,
					ch;
				while ((ch = format[++end]) && ch != '\'') {}
				if (!ch)
				{
					return -1;
				}
				format[end] = '\0';
				if ((ch = strfind(string, format[formatPos], false, stringPos)) == -1)
				{
					if (format[end + 1])
					{
						return -1;
					}
					return 0;
				}
				format[end] = '\'';
				stringPos = ch + (end - formatPos);
				formatPos = end + 1;
			}
			case 'u':
			{
				new
					end = stringPos - 1,
					id = 0,
					bool:num = true,
					ch;
				while ((ch = string[++end]) && ch != delim)
				{
					if (num)
					{
						if ('0' <= ch <= '9')
						{
							id = (id * 10) + (ch - '0');
						}
						else
						{
							num = false;
						}
					}
				}
				if (num && IsPlayerConnected(id))
				{
					setarg(paramPos, 0, id);
				}
				else
				{
					#if !defined foreach
						#define foreach(%1,%2) for (new %2 = 0; %2 < MAX_PLAYERS; %2++) if (IsPlayerConnected(%2))
						#define __SSCANF_FOREACH__
					#endif
					string[end] = '\0';
					num = false;
					new
						name[MAX_PLAYER_NAME];
					id = end - stringPos;
					foreach (Player, playerid)
					{
						GetPlayerName(playerid, name, sizeof (name));
						if (!strcmp(name, string[stringPos], true, id))
						{
							setarg(paramPos, 0, playerid);
							num = true;
							break;
						}
					}
					if (!num)
					{
						setarg(paramPos, 0, INVALID_PLAYER_ID);
					}
					string[end] = ch;
					#if defined __SSCANF_FOREACH__
						#undef foreach
						#undef __SSCANF_FOREACH__
					#endif
				}
				stringPos = end;
			}
			case 's', 'z':
			{
				new
					i = 0,
					ch;
				if (format[formatPos])
				{
					while ((ch = string[stringPos++]) && ch != delim)
					{
						setarg(paramPos, i++, ch);
					}
					if (!i)
					{
						return -1;
					}
				}
				else
				{
					while ((ch = string[stringPos++]))
					{
						setarg(paramPos, i++, ch);
					}
				}
				stringPos--;
				setarg(paramPos, i, '\0');
			}
			default:
			{
				continue;
			}
		}
		while (string[stringPos] && string[stringPos] != delim && string[stringPos] > ' ')
		{
			stringPos++;
		}
		while (string[stringPos] && (string[stringPos] == delim || string[stringPos] <= ' '))
		{
			stringPos++;
		}
		paramPos++;
	}
	do
	{
		if ((delim = format[formatPos++]) > ' ')
		{
			if (delim == '\'')
			{
				while ((delim = format[formatPos++]) && delim != '\'') {}
			}
			else if (delim != 'z')
			{
				return delim;
			}
		}
	}
	while (delim > ' ');
	return 0;
}

public OnDialogResponse(playerid, dialogid, response, listitem, inputtext[])
{
	switch(dialogid)
	{
	    case 1:
	    {
	        if(response)
	        {
	            if(5 < strlen(inputtext) < 20)
	            {
	          
	            }
	            else
	            {
				    SendClientMessage(playerid,COLOR_WHITE,"SERVER: Password cannot be nothing or shorter than 5 or longer than 20 characters!");
					ShowRegDialog(playerid);
	            }
	        }
		}
		case 2:
		{
		    if(response)
		    {
		        if(5 < strlen(inputtext) < 20)
		        {
		           
		        }
		        else return ShowLoginDialog(playerid);
      		}
		    else return SendClientMessage(playerid, RED, "Your stats wont save now your not logged in");
		}
		default: return SendClientMessage(playerid,COLOR_WHITE,"SERVER: This dialog ID doesn't exist.");
	}
  	return 1;
}
public OnPlayerClickPlayer(playerid, clickedplayerid, source)
{
	return 1;
}

public ShowLoginDialog(playerid)
{
	return ShowPlayerDialog(playerid,2,1,"Login","That name is registered, please login", "Login","Quit");
}
public ShowRegDialog(playerid)
{
	return ShowPlayerDialog(playerid,1,1,"Please Register","That name is available.\nTo register, type in a password and press Register.","Register","Quit");
}


forward MoveCamera(playerid);
public MoveCamera(playerid)
{
	//this is called trigonometry. It makes the camera spin
	//you can experiment with this line. Just change the values 2, 10 and 3 to make different effects
    SetPlayerCameraPos(playerid, player_x - 2 * floatsin(-PlayerInfo[playerid][SpawnAngle], degrees), player_y - 10 * floatcos(-PlayerInfo[playerid][SpawnAngle], degrees), player_z + 3);
    SetPlayerCameraLookAt(playerid, player_x, player_y, player_z + 0.5);

	//changing the angle a little
    PlayerInfo[playerid][SpawnAngle] += 0.5;

    if (PlayerInfo[playerid][SpawnAngle] >= 360.0)
        PlayerInfo[playerid][SpawnAngle] = 0.0;

}
