local Upgrade = function(Ply,NewMoney,Hp,Money,Waits,Range)
	if Ply.Coins.Value >= script.Parent.Var.Upgrade.OnUpg.Value then
		Ply.Coins.Value = Ply.Coins.Value - script.Parent.Var.Upgrade.OnUpg.Value
		script.Parent.Var.Upgrade.OnUpg.Value = NewMoney
		script.Parent.Var.Upgrade.UpgLVL.Value = script.Parent.Var.Upgrade.UpgLVL.Value + 1

		script.Parent.Var.HP.Value = Hp
		script.Parent.Var.Money.Value = Money
		script.Parent.Var.Wait.Value = Waits
		script.Parent.Var.Range.Value = Range
	end
end

script.Parent.ClickDetector.MouseClick:Connect(function(Ply)
	if Ply.Name == script.Parent.Var.Owned.Value then
		local Valu = script.Parent.Var.Upgrade.UpgLVL.Value
		if Valu == 1 then
			Upgrade(Ply,75,0.9,10,0.6,21)
		elseif Valu == 2 then
			Upgrade(Ply,125,1.1,14,0.6,20)
		elseif Valu == 3 then
			Upgrade(Ply,150,1.1,14,0.5,20)
		elseif Valu == 4 then
			Upgrade(Ply,200,1,15,0.5,21)
		elseif Valu == 5 then
			Upgrade(Ply,325,1.1,16,0.4,22)
		end
	end
end)

while wait(0.5) do
	script.Parent.SurfaceGui.prim.Text = "Owner: "..script.Parent.Var.Owned.Value.." ,LVL: "..script.Parent.Var.Upgrade.UpgLVL.Value.." ,Next LVL: $"..script.Parent.Var.Upgrade.OnUpg.Value
	script.Parent.SurfaceGui.Upgrades.Text = "-"..script.Parent.Var.HP.Value.."/per: "..script.Parent.Var.Wait.Value..", Range: "..script.Parent.Var.Range.Value
end
