EFFECT.TracerFired = true -- this is flipped

function EFFECT:Init(data)

	self.Attachment = data:GetAttachment()
	self.StartPos = self:GetTracerShootPos(data:GetStart(), data:GetEntity(), self.Attachment)

	util.ParticleTracerEx("mw2019_tracer", self.StartPos, data:GetOrigin(), false, data:GetEntity():EntIndex(), self.Attachment)
	self.TracerFired = false
end

function EFFECT:Think()
	return self.TracerFired
end

function EFFECT:Render() 
	
end