local Spawn = function(Types,Qua,wai)
	for i in Types do
		for j = 0, Qua[i]-1,1 do
			local Obj = Types[i]:Clone()
			Obj.Parent = workspace.Wawes.Entity
			Obj.Position = Vector3.new(3, 5, -52)
			Obj.Start.Value = true
			wait(wai)
		end
	end
end

local AddMoney = function(MonW,AddPerWawe,W)
	for ply in game.Players:GetChildren() do
		game.Players:GetChildren()[ply].Coins.Value = game.Players:GetChildren()[ply].Coins.Value + MonW + (AddPerWawe*W)
	end
	workspace.CWawe.Value = workspace.CWawe.Value + 1
end

local SWawe = function(MonW,AddPerWawe)
	--W1
	local W = workspace.CWawe.Value
	Spawn({workspace.GameCubes.Cube.Cube10Hp},{10},1.5)
	wait(20)
	AddMoney(MonW,AddPerWawe,W)
	--W2
	Spawn({workspace.GameCubes.Cube.Cube10Hp,workspace.GameCubes.Cube.Cube20Hp},{5,5},1.5)
	wait(20)
	W = workspace.CWawe.Value
	AddMoney(MonW,AddPerWawe,W)
	--W3
	Spawn({workspace.GameCubes.Cube.Cube10Hp,workspace.GameCubes.Cube.Cube20Hp,workspace.GameCubes.Cube.Cube35Hp},{5,5,5},1.5)
	wait(20)
	W = workspace.CWawe.Value
	AddMoney(MonW,AddPerWawe,W)
end
wait(5)
SWawe(50,10)


--[[local Spawn = function(L,Wai:number)
	for i = #L:GetChildren(),1,-1 do
		local StChile = L:GetChildren()[i]
		for j in StChile:GetChildren() do
			local Items = StChile:GetChildren()[j]
			if Items.Name == "Start" then
				Items.Value = true
				wait(Wai)
			end
		end
	end
end]]--