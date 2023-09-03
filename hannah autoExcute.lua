--- credit to GODCLUTCHER

local LocalPlayer = game.Players.LocalPlayer

while task.wait() do
    for i, v in pairs(game.Players:GetChildren()) do
        if v:IsA("Player") and v.Character then
            local Args = {
                [1] = {
                    ["user"] = LocalPlayer,
                    ["victimEntity"] = v.Character
                }
            }
            
            game:GetService("ReplicatedStorage"):WaitForChild("rbxts_include"):WaitForChild("node_modules"):WaitForChild("@rbxts"):WaitForChild("net"):WaitForChild("out"):WaitForChild("_NetManaged"):WaitForChild("HannahPromptTrigger"):InvokeServer(unpack(Args))
        end
    end
end