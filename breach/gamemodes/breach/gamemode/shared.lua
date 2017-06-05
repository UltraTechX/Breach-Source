// Shared file
GM.Name 	= "Breach"
GM.Author 	= "Kanade"
GM.Email 	= ""
GM.Website 	= ""

function GM:Initialize()
	self.BaseClass.Initialize( self )
end

TEAM_SCP = 1
TEAM_GUARD = 2
TEAM_CLASSD = 3
TEAM_SPEC = 4
TEAM_SCI = 5
TEAM_CHAOS = 6

MINPLAYERS = 2

// Team setup
team.SetUp( 1, "Default", Color(255, 255, 0) )
/* Replaced with GTeams
team.SetUp( TEAM_SCP, "SCPs", Color(237, 28, 63) )
team.SetUp( TEAM_GUARD, "MTF Guards", Color(0, 100, 255) )
team.SetUp( TEAM_CLASSD, "Class Ds", Color(255, 130, 0) )
team.SetUp( TEAM_SPEC, "Spectators", Color(141, 186, 160) )
team.SetUp( TEAM_SCI, "Scientists", Color(66, 188, 244) )
team.SetUp( TEAM_CHAOS, "Chaos Insurgency", Color(0, 100, 255) )
*/

function GetLangRole(rl)
	if clang == nil then return rl end
	local rolef = nil
	for k,v in pairs(ROLES) do
		if rl == v then
			rolef = k
		end
	end
	if rolef != nil then
		return clang.ROLES[rolef]
	else
		return rl
	end
end

ROLES = {}

// SCPS
ROLES.ROLE_SCP173 = "SCP-173"
ROLES.ROLE_SCP106 = "SCP-106"
ROLES.ROLE_SCP049 = "SCP-049"
ROLES.ROLE_SCP457 = "SCP-457"
ROLES.ROLE_SCP966 = "SCP-966"
ROLES.ROLE_SCP0492 = "SCP-049-2"
ROLES.ROLE_SCP0082 = "SCP-008-2"

// Researchers
ROLES.ROLE_RES = "Researcher"
ROLES.ROLE_MEDIC = "Medic"

// Class D Personell
ROLES.ROLE_CLASSD = "Class D Personell"
ROLES.ROLE_VETERAN = "Veteran"

// Security
ROLES.ROLE_SECURITY = "Security Officer"
ROLES.ROLE_MTFGUARD = "MTF Guard"
ROLES.ROLE_MTFMEDIC = "MTF Medic"
ROLES.ROLE_MTFL = "MTF Lieutenant"
ROLES.ROLE_HAZMAT = "MTF SCU"
ROLES.ROLE_MTFNTF = "MTF Nine Tailed Fox"
ROLES.ROLE_CSECURITY = "Security Chief"
ROLES.ROLE_MTFCOM = "MTF Commander"
ROLES.ROLE_SD = "Site Director"

// Chaos Insurgency
ROLES.ROLE_CHAOSSPY = "Chaos Insurgency Spy"
ROLES.ROLE_CHAOS = "Chaos Insurgency"
ROLES.ROLE_CHAOSCOM = "CI Commander"

// Other
ROLES.ROLE_SPEC = "Spectator"

if !ConVarExists("br_roundrestart") then CreateConVar( "br_roundrestart", "0", {FCVAR_SERVER_CAN_EXECUTE, FCVAR_NOTIFY}, "Restart the round" ) end
if !ConVarExists("br_time_preparing") then CreateConVar( "br_time_preparing", "60", {FCVAR_SERVER_CAN_EXECUTE, FCVAR_NOTIFY}, "Set preparing time" ) end
if !ConVarExists("br_time_round") then CreateConVar( "br_time_round", "780", {FCVAR_SERVER_CAN_EXECUTE, FCVAR_NOTIFY}, "Set round time" ) end
if !ConVarExists("br_time_postround") then CreateConVar( "br_time_postround", "30", {FCVAR_SERVER_CAN_EXECUTE, FCVAR_NOTIFY}, "Set postround time" ) end
//if !ConVarExists("br_time_gateopen") then CreateConVar( "br_time_gateopen", "180", {FCVAR_SERVER_CAN_EXECUTE, FCVAR_NOTIFY}, "Set gate open time" ) end
if !ConVarExists("br_time_ntfenter") then CreateConVar( "br_time_ntfenter", "360", {FCVAR_SERVER_CAN_EXECUTE, FCVAR_NOTIFY}, "Time that NTF units will enter the facility" ) end
if !ConVarExists("br_time_blink") then CreateConVar( "br_time_blink", "0.25", {FCVAR_SERVER_CAN_EXECUTE, FCVAR_NOTIFY}, "Blink timer" ) end
if !ConVarExists("br_time_blinkdelay") then CreateConVar( "br_time_blinkdelay", "5", {FCVAR_SERVER_CAN_EXECUTE, FCVAR_NOTIFY}, "Delay between blinks" ) end
//if !ConVarExists("br_opengatea_enabled") then CreateConVar( "br_opengatea_enabled", "0", {FCVAR_SERVER_CAN_EXECUTE, FCVAR_NOTIFY}, "Do you want to force opening gate A after x seconds?" ) end
if !ConVarExists("br_spawn_level4") then CreateConVar( "br_spawn_level4", "2", {FCVAR_SERVER_CAN_EXECUTE, FCVAR_NOTIFY}, "How many keycards level 4 you want to spawn?" ) end
if !ConVarExists("br_specialround_percentage") then CreateConVar( "br_specialround_percentage", "15", {FCVAR_SERVER_CAN_EXECUTE, FCVAR_NOTIFY}, "Set percentage of special rounds" ) end
if !ConVarExists("br_specialround_forcenext") then CreateConVar( "br_specialround_forcenext", "none", {FCVAR_SERVER_CAN_EXECUTE, FCVAR_NOTIFY}, "Force the next round to be a special round" ) end
if !ConVarExists("br_spawnzombies") then CreateConVar( "br_spawnzombies", "0", {FCVAR_SERVER_CAN_EXECUTE, FCVAR_NOTIFY}, "Do you want zombies?" ) end
if !ConVarExists("br_karma") then CreateConVar( "br_karma", "1", {FCVAR_SERVER_CAN_EXECUTE, FCVAR_NOTIFY}, "Do you want to enable karma system?" ) end
if !ConVarExists("br_karma_max") then CreateConVar( "br_karma_max", "1200", {FCVAR_SERVER_CAN_EXECUTE, FCVAR_NOTIFY}, "Max karma" ) end
if !ConVarExists("br_karma_starting") then CreateConVar( "br_karma_starting", "1000", {FCVAR_SERVER_CAN_EXECUTE, FCVAR_NOTIFY}, "Starting karma" ) end
if !ConVarExists("br_karma_save") then CreateConVar( "br_karma_save", "1", {FCVAR_SERVER_CAN_EXECUTE, FCVAR_NOTIFY}, "Do you want to save the karma?" ) end
if !ConVarExists("br_karma_round") then CreateConVar( "br_karma_round", "120", {FCVAR_SERVER_CAN_EXECUTE, FCVAR_NOTIFY}, "How much karma to add after a round" ) end
if !ConVarExists("br_karma_reduce") then CreateConVar( "br_karma_reduce", "30", {FCVAR_SERVER_CAN_EXECUTE, FCVAR_NOTIFY}, "How much karma to reduce after damaging someone" ) end
if !ConVarExists("br_scoreboardranks") then CreateConVar( "br_scoreboardranks", "0", {FCVAR_SERVER_CAN_EXECUTE, FCVAR_NOTIFY}, "" ) end
if !ConVarExists("br_defaultlanguage") then CreateConVar( "br_defaultlanguage", "english", {FCVAR_SERVER_CAN_EXECUTE, FCVAR_NOTIFY}, "" ) end
if !ConVarExists("br_expscale") then CreateConVar( "br_expscale", "1", {FCVAR_SERVER_CAN_EXECUTE, FCVAR_NOTIFY}, "" ) end

function KarmaReduce()
	return GetConVar("br_karma_reduce"):GetInt()
end

function KarmaRound()
	return GetConVar("br_karma_round"):GetInt()
end

function SaveKarma()
	return GetConVar("br_karma_save"):GetInt()
end

function MaxKarma()
	return GetConVar("br_karma_max"):GetInt()
end

function StartingKarma()
	return GetConVar("br_karma_starting"):GetInt()
end

function KarmaEnabled()
	return GetConVar("br_karma"):GetBool()
end

function GetPrepTime()
	return GetConVar("br_time_preparing"):GetInt()
end

function GetRoundTime()
	return GetConVar("br_time_round"):GetInt()
end

function GetPostTime()
	return GetConVar("br_time_postround"):GetInt()
end

function GetGateOpenTime()
	return GetConVar("br_time_gateopen"):GetInt()
end

function GetNTFEnterTime()
	return GetConVar("br_time_ntfenter"):GetInt()
end

function GM:PlayerFootstep( ply, pos, foot, sound, volume, rf )
	if not ply.GetNClass then
		player_manager.RunClass( ply, "SetupDataTables" )
	end
	if not ply.GetNClass then return end
	if ply:GetNClass() == ROLE_SCP173 then
		if ply.steps == nil then ply.steps = 0 end
		ply.steps = ply.steps + 1
		if ply.steps > 6 then
			ply.steps = 1
			if SERVER then
				ply:EmitSound( "173sound"..math.random(1,3)..".ogg", 300, 100, 1 )
			end
		end
		return true
	end
	return false
end

/*
function GM:ShouldCollide( ent1, ent2 )
	if ( IsValid( ent1 ) and IsValid( ent2 ) and ent1:IsPlayer() and ent2:IsPlayer() ) then return false end
	return true
end
*/

function GM:EntityTakeDamage( target, dmginfo )

	local at = dmginfo:GetAttacker()
	if at:IsNPC() then
		if at:GetClass() == "npc_fastzombie" then
			dmginfo:ScaleDamage( 4 )
		end
	elseif target:IsPlayer() then
		if target:Alive() then
			local dmgtype = dmginfo:GetDamageType()
			if dmgtype == 268435464 or dmgtype == 8 then
				if target:GTeam() == TEAM_SCP then
					dmginfo:SetDamage( 0 )
					return true
				elseif target.UsingArmor == "armor_fireproof" then
					dmginfo:ScaleDamage(0.75)
				end
			end
		end
	end
end

function GM:ScalePlayerDamage( ply, hitgroup, dmginfo )
	/*
	if SERVER then
		local at = dmginfo:Getat()
		if ply:GTeam() == at:GTeam() then
			at:TakeDamage( 25, at, at )
		end
	end
	*/
	local at = dmginfo:GetAttacker()
	local mul = 1
	local armormul = 1
	if SERVER then
		local rdm = false
		if at != ply then
			if at:IsPlayer() then
				if dmginfo:IsDamageType( DMG_BULLET ) then
					if ply.UsingArmor != nil then
						if ply.UsingArmor != "armor_fireproof" then
							armormul = 0.85
						end
					end
				end
				if postround == false then
					if at:GTeam() == TEAM_GUARD then
						if ply:GTeam() == TEAM_GUARD then 
							rdm = true
						elseif ply:GTeam() == TEAM_SCI then
							rdm = true
						end
					elseif at:GTeam() == TEAM_CHAOS then
						if ply:GTeam() == TEAM_CHAOS then
							rdm = trueGTeam
						end
					elseif at:GTeam() == TEAM_SCP then
						if ply:GTeam() == TEAM_SCP then
							rdm = true
						end
					elseif at:GTeam() == TEAM_CLASSD then
						if ply:GTeam() == TEAM_CLASSD then
							rdm = true
						end
					elseif at:GTeam() == TEAM_SCI then
						if ply:GTeam() == TEAM_GUARD or ply:GTeam() == TEAM_SCI then 
							rdm = true
						end
					end
				end
				if postround == false then
					if rdm then
						at:ReduceKarma(KarmaReduce())
					else
						at:AddExp( math.Round(dmginfo:GetDamage() / 4) )
					end
				end
			end
		end
	end
	
	if (hitgroup == HITGROUP_HEAD) then
		mul = 1.5
	end
	if (hitgroup == HITGROUP_LEFTARM or hitgroup == HITGROUP_RIGHTARM) then
		mul = 0.9
	end
	if (hitgroup == HITGROUP_LEFTLEG or hitgroup == HITGROUP_RIGHTLEG) then
		mul = 0.9
	end
	if (hitgroup == HITGROUP_GEAR) then
		mul = 0
	end
	if (hutgroup == HITGROUP_STOMACH) then
		mul = 1
	end
	if SERVER then
		if at:IsPlayer() then
			if at.GetNKarma then
				mul = mul * (at:GetNKarma() / StartingKarma())
			end
		end
		mul = mul * armormul
		//mul = math.Round(mul)
		//print("mul: " .. mul)
		dmginfo:ScaleDamage(mul)
	end
end


