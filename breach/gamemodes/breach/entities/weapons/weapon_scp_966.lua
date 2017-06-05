AddCSLuaFile()

if CLIENT then
	SWEP.WepSelectIcon 	= surface.GetTextureID("breach/wep_966")
	SWEP.BounceWeaponIcon = false
end

SWEP.Author			= "Kanade"
SWEP.Contact		= "Look at this gamemode in workshop and search for creators"
SWEP.Purpose		= "Kill humans"
SWEP.Instructions	= ""

SWEP.ViewModelFOV	= 62
SWEP.ViewModelFlip	= false
SWEP.ViewModel		= "models/vinrax/props/keycard.mdl"
SWEP.WorldModel		= "models/vinrax/props/keycard.mdl"
SWEP.PrintName		= "SCP-966"
SWEP.Slot			= 0
SWEP.SlotPos		= 0
SWEP.DrawAmmo		= false
SWEP.DrawCrosshair	= true
SWEP.HoldType		= "normal"
SWEP.Spawnable		= false
SWEP.AdminSpawnable	= false

SWEP.ISSCP = true
SWEP.droppable				= false
SWEP.teams					= {1}
SWEP.Primary.Ammo			= "none"
SWEP.Primary.ClipSize		= -1
SWEP.Primary.DefaultClip	= -1
SWEP.Primary.Automatic		= false

SWEP.Secondary.Ammo			= "none"
SWEP.Secondary.ClipSize		= -1
SWEP.Secondary.DefaultClip	= -1
SWEP.Secondary.Automatic	= false

function SWEP:Deploy()
	self.Owner:DrawViewModel( false )
end
function SWEP:DrawWorldModel()
end
function SWEP:Initialize()
	self:SetHoldType("normal")
end

function SWEP:Reload()
end

SWEP.AttackDelay			= 0.8
SWEP.NextAttackW			= 0
function SWEP:PrimaryAttack()
	if not IsFirstTimePredicted() then return end
	if self.NextAttackW > CurTime() then return end
	self.NextAttackW = CurTime() + self.AttackDelay
	if SERVER then
		local ent = nil
		local hullsize = 20
		local tr = util.TraceHull( {
			start = self.Owner:GetShootPos(),
			endpos = self.Owner:GetShootPos() + ( self.Owner:GetAimVector() * 160 ),
			filter = self.Owner,
			mins = Vector( -hullsize, -hullsize, -hullsize ),
			maxs = Vector( hullsize, hullsize, hullsize ),
			mask = MASK_SHOT_HULL
		} )
		ent = tr.Entity
		if IsValid(ent) then
			if ent:IsPlayer() then
				if ent:GTeam() == TEAM_SPEC then return end
				if ent:GTeam() == TEAM_SCP then return end
				if ent:Alive() then
					ent:TakeDamage( 48, self.Owner, self.Owner )
					self.Owner:EmitSound("Damage4.ogg")
				end
			else
				if ent:GetClass() == "func_breakable" then
					ent:TakeDamage( 48, self.Owner, self.Owner )
					self.Owner:EmitSound("Damage4.ogg")
				end
			end
		end
	end
end

function SWEP:SecondaryAttack()
end

function SWEP:CanPrimaryAttack()
	return true
end