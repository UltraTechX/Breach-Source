english = {}

english.roundtype = "Round type: {type}"
english.preparing = "Prepare, round will start in {num} seconds"
english.round = "Game is live, good luck!"

english.lang_pldied = "{num} player(s) died"
english.lang_descaped = "{num} Class D(s) escaped"
english.lang_sescaped = "{num} SCP(s) escaped"
english.lang_rescaped = "{num} Researcher(s) escaped"
english.lang_dcaptured = "Chaos Insurgency captured {num} Class D(s)"
english.lang_rescorted = "MTF escorted {num} Researcher(s)"
english.lang_teleported = "SCP - 106 caputred {num} victim(s) to the Pocket Dimension "
english.lang_snapped = "{num} neck(s) were snapped by SCP173"
english.lang_zombies = 'SCP - 049 "cured the disease" {num} time(s) '
english.lang_secret_found = "Secret has been found"
english.lang_secret_nfound = "Secret has not been found"

english.class_unknown = "Unknown"

english.starttexts = {
	ROLE_SCP173 = {
		"You are the SCP-173",
		{"Your objective is to escape the facility",
		"You cannot move when someone is looking at you",
		"Remember, humans are blinking",
		"You have a special ability on RMB: blind everyone around you"}
	},
	ROLE_SCP106 = {
		"You are the SCP-106",
		{"Your objective is to escape the facility",
		"When you touch someone, they will teleport",
		"to your pocket dimension"}
	},
	ROLE_SCP966 = {
		"You are the SCP-966",
		{"Your objective is to escape then facility",
		"You are invisible, humans can only see you using a nvg"}
	},
	ROLE_SCP457 = {
		"You are the SCP-457",
		{"Your objective is to escape then facility",
		"You are always burning",
		"If you are close enough to a human, you will burn them"}
	},
	ROLE_SCP049 = {
		"You are the SCP-049",
		{"Your objective is to escape the facility",
		"If you touch someone, they will become SCP-049-2"}
	},
	ROLE_SCP0492 = {
		"You are the SCP-049-2",
		{"Your objective is to escape the facility",
		"Cooperate with SCP-049 to kill more people"}
	},
	ROLE_SCP0082 = {
		"You are the SCP-008-2",
		{"Your objective is to infect every MTF Guard",
		"If you attack someone, they will become 008-2 aswell"}
	},
	ROLE_RES = {
		"You are a Researcher",
		{"Your objective is to escape from the facility",
		"You need to find a MTF Guard that will help you",
		"Be on the look out of Class Ds as they might try to kill you"}
	},
	ROLE_MEDIC = {
		"You are a Medic",
		{"Your objective is to escape from the facility",
		"You need to find a MTF Guard that will help you",
		"Be on the look out of Class Ds as they might try to kill you",
		"If someone gets injured, heal them"}
	},
	ROLE_CLASSD = {
		"You are a Class D",
		{"Your objective is to escape from the facility",
		"You need to cooperate with other Class Ds",
		"Search for keycards and be aware of MTF and SCPs"}
	},
	ROLE_VETERAN = {
		"You are a Veteran Class D",
		{"Your objective is to escape from the facility",
		"You need to cooperate with other Class Ds",
		"Search for keycards and be aware of MTF and SCPs"}
	},
	ROLE_SECURITY = {
		"You are a Security Officer",
		{"Your objective is to find and rescue all",
		"of the researchers that are still in the facility",
		"You have to kill any Class D or SCP that you will find",
		"Listen to your boss's orders and stick to your team"}
	},
	ROLE_CSECURITY = {
		"You are a Security Chief",
		{"Your objective is to find and rescue all",
		"of the researchers that are still in the facility",
		"You have to kill any Class D or SCP that you will find",
		"Give orders to Security Officers and listen to your boss"}
	},
	ROLE_MTFGUARD = {
		"You are a MTF Guard",
		{"Your objective is to find and rescue all",
		"of the researchers that are still in the facility",
		"You have to kill any Class D or SCP that you will find",
		"Listen to MTF Commander's orders and stick to your team"}
	},
	ROLE_MTFMEDIC = {
		"You are a MTF Medic",
		{"Your objective is support your teammates",
		"If someone gets injured, heal them",
		"Listen to MTF Commander's orders and stick to your team"}
	},
	ROLE_HAZMAT = {
		"You are a Special MTF Unit",
		{"Your objective is to find and rescue all",
		"of the researchers that are still in the facility",
		"You have to kill any Class Ds or SCPs that you will find",
		"Listen to the MTF Commander and Site Director"}
	},
	ROLE_MTFL = {
		"You are a MTF Lieutenant",
		{"Your objective is to find and rescue all",
		"of the researchers that are still in the facility",
		"You have to kill any Class Ds or SCPs that you will find",
		"Give orders to Guards to simplify the task",
		"Listen to the MTF Commander and Site Director"}
	},
	ROLE_SD = {
		"You are a Site Director",
		{"Your objective is to give objectives",
		"You need to give objectives to the site security",
		"You need to keep the site secure, don't let any SCP or Class D escape"}
	},
	ROLE_MTFNTF = {
		"You are a MTF Unit Nine-Tailed Fox",
		{"Your objective is to find and rescue all",
		"of the researchers that are still in the facility",
		"You have to kill any Class D or SCP that you will find",
		"Go to the facility and help Guards to embrace a chaos"}
	},
	ROLE_MTFCOM = {
		"You are a MTF Commander",
		{"Your objective is to find and rescue all",
		"of the researchers that are still in the facility",
		"You have to kill any Class Ds or SCPs that you will find",
		"Give orders to Guards to simplify the task"}
	},
	ROLE_CHAOS = {
		"You are the Chaos Insurgency Soldier",
		{"Your objective is to capture as much Class Ds as it is possible",
		"Escort them to the helipad outisde of the facility",
		"You have to kill anyone who will stop you"}
	},
	ROLE_CHAOSSPY = {
		"You are the Chaos Insurgency Spy",
		{"Your objective is to kill all MTF Guards and capture the Class D",
		"They are unaware of your disguise",
		"Don't destroy your disguise",
		"If you find any class ds, try to escort them to the helipad"}
	},
	ROLE_CHAOSCOM = {
		"You are the Chaos Insurgency Commander",
		{"Your objective is to give objectives to your team",
		"Kill anyone who will stop you"}
	},
	ROLE_SPEC = {
		"You are a Spectator",
		{'Use command "br_spectate" to come back'}
	},
}

english.lang_end1 = "The game ends here"
english.lang_end2 = "Time limit has been reached"
english.lang_end3 = "Game ended due to the inability to continue"

english.escapemessages = {
	{
		main = "You escaped",
		txt = "You escaped the facility in {t} minutes, good job!",
		txt2 = "Try to get escorted by MTF next time to get bonus points.",
		clr = Color(237, 28, 63),
	},
	{
		main = "You escaped",
		txt = "You escaped the facility in {t} minutes, good job!",
		txt2 = "Try to get escorted by Chaos Insurgency Soldiers next time to get bonus points.",
		clr = Color(237, 28, 63),
	},
	{
		main = "You were escorted",
		txt = "You were escorted in {t} minutes, good job!",
		txt2 = "",
		clr = Color(237, 28, 63),
	},
	{
		main = "You escaped",
		txt = "You escaped in {t} minutes, good job!",
		txt2 = "",
		clr = Color(237, 28, 63),
	}
}



english.ROLES = {}
english.ROLES.ROLE_SCP173 = "SCP-173"
english.ROLES.ROLE_SCP106 = "SCP-106"
english.ROLES.ROLE_SCP049 = "SCP-049"
english.ROLES.ROLE_SCP457 = "SCP-457"
english.ROLES.ROLE_SCP966 = "SCP-966"
english.ROLES.ROLE_SCP0492 = "SCP-049-2"
english.ROLES.ROLE_SCP0082 = "SCP-008-2"

english.ROLES.ROLE_RES = "Researcher"
english.ROLES.ROLE_MEDIC = "Medic"

english.ROLES.ROLE_CLASSD = "Class D Personell"
english.ROLES.ROLE_VETERAN = "Class D Veteran"

english.ROLES.ROLE_SECURITY = "Security Officer"
english.ROLES.ROLE_MTFGUARD = "MTF Guard"
english.ROLES.ROLE_MTFMEDIC = "MTF Medic"
english.ROLES.ROLE_MTFL = "MTF Lieutenant"
english.ROLES.ROLE_HAZMAT = "MTF SCU"
english.ROLES.ROLE_MTFNTF = "MTF NTF"
english.ROLES.ROLE_CSECURITY = "Security Chief"
english.ROLES.ROLE_MTFCOM = "MTF Commander"
english.ROLES.ROLE_SD = "Site Director"

english.ROLES.ROLE_CHAOSSPY = "CI Spy"
english.ROLES.ROLE_CHAOS = "CI Soldier"
english.ROLES.ROLE_CHAOSCOM = "CI Commander"
english.ROLES.ROLE_SPEC = "Spectator"

ALLLANGUAGES.english = english
