AddCSLuaFile()

if CLIENT then
    killicon.Add( "arc9_cod2019_thrownrock", "VGUI/killicons/cod2019_rock", Color(251, 85, 25, 255))
end

ENT.Type = "anim"
ENT.Base = "base_anim"
ENT.PrintName = "Rock"
ENT.Author = ""
ENT.Information = ""
ENT.Spawnable = false
ENT.AdminSpawnable = false
ENT.CollisionGroup = COLLISION_GROUP_PROJECTILE

ENT.Model = "models/weapons/w_rock_thrown.mdl"
ENT.FuseTime = 3.5

function ENT:Initialize()
    if SERVER then
        self:SetModel(self.Model)
        self:SetMoveType(MOVETYPE_VPHYSICS)
        self:SetSolid(SOLID_VPHYSICS)
        self:PhysicsInit(SOLID_VPHYSICS)

        local phys = self:GetPhysicsObject()
        if phys:IsValid() then
            phys:SetMass(1)
            phys:SetBuoyancyRatio(1)
            phys:SetDragCoefficient(1)
            phys:Wake()
        end

        self.SpawnTime = CurTime()
        -- if IsValid(self.Trail) then
        --     self.Trail:SetRenderMode(RENDERMODE_TRANSADD)
        --     self.Trail:SetRenderFX(kRenderFxNone)
        -- end
        self:SetPhysicsAttacker(self:GetOwner(), 10)
    end
end

function ENT:PhysicsCollide(data, physobj)
    if SERVER then
        if data.Speed > 75 then
            self:EmitSound(Sound("physics/concrete/rock_impact_hard" .. math.random(1,6) .. ".wav"))

            local tgt = data.HitEntity
            if IsValid(tgt) and tgt:GetClass() == "func_breakable_surf" then
                self:FireBullets({
                    Attacker = self:GetOwner(),
                    Inflictor = self,
                    Damage = 100,
                    Distance = 32,
                    Tracer = 0,
                    Src = self:GetPos(),
                    Dir = data.OurOldVelocity:GetNormalized(),
                })
                local pos, ang, vel = self:GetPos(), self:GetAngles(), data.OurOldVelocity
                self:SetAngles(ang)
                self:SetPos(pos)
                self:GetPhysicsObject():SetVelocityInstantaneous(vel * 0.5)
            elseif IsValid(tgt) and (self.NextHit or 0) < CurTime() then
                self.NextHit = CurTime() + 0.2
                local dmginfo = DamageInfo()
                dmginfo:SetDamageType(DMG_CLUB)
                local d = Lerp(data.Speed / 1000, 10, 45)
                dmginfo:SetDamage(d)
                dmginfo:SetAttacker(self:GetOwner())
                dmginfo:SetInflictor(self)
                dmginfo:SetDamageForce(data.OurOldVelocity * 20)
                dmginfo:SetDamagePosition(self:GetPos())
                tgt:TakeDamageInfo(dmginfo)
            end

        elseif data.Speed > 25 then
            self:EmitSound(Sound("physics/concrete/rock_impact_soft" .. math.random(1,3) .. ".wav"))
        end
        if not self.Hit then
            self.Hit = true
            SafeRemoveEntityDelayed(self, 3)
        end
    end
end

function ENT:DrawTranslucent()
    self:Draw()
end

function ENT:Draw()
    self:DrawModel()
end

hook.Add("OnEntityWaterLevelChanged", "arc9_cod2019_rock", function(ent, old, new)
    if ent:GetClass() == "arc9_cod2019_thrownrock" and old == 0 and new > 0 and ent.SpawnTime + 0.01 < CurTime() then
        local delta = Lerp(ent:GetVelocity():GetNormalized():Dot(Vector(0, 0, 1)) ^ 2, 1, 0.35)
        local v = ent:GetVelocity() - 2 * ent:GetVelocity():Dot(Vector(0, 0, 1)) * Vector(0, 0, 1) * math.Rand(0.9, 1.1) * delta
        ent:GetPhysicsObject():SetVelocityInstantaneous(v)
        local effectdata = EffectData()
        effectdata:SetOrigin(ent:GetPos())
        effectdata:SetScale(Lerp(ent:GetVelocity():Length2D() / 1000, 1, 10))
        util.Effect("watersplash", effectdata)
    end
end)