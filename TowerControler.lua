local Tower = script.Parent

local Detect = function(Dis,obj)
	if Dis < script.Parent.Var.Range.Value then
		if obj.Value.Value > 0 then
			obj.Value.Value = obj.Value.Value - script.Parent.Var.HP.Value
		elseif obj.Value.Value <= 0 then
			local Money = obj.Money.Value
			obj:Destroy()
			for i in game.Players:GetChildren() do
				local player = game.Players:GetChildren()[i]
				if player.Name == script.Parent.Var.Owned.Value then
					player.Coins.Value = player.Coins.Value + script.Parent.Var.Money.Value - (Money/10)
				else
					player.Coins.Value = player.Coins.Value + script.Parent.Var.Money.Value - (Money/90)
				end
			end
		end
	end
end
wait(1)
while wait(script.Parent.Var.Wait.Value) do
	for i = #workspace.Wawes.Entity:GetChildren(),0,-1 do
		local Enn = workspace.Wawes.Entity:GetChildren()[i]
		if  Enn ~= nil then
			Detect((Enn.Position - Tower.Position).Magnitude,Enn)
		end	
	end
end