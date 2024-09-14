-- FPS Limiter Settings

print("Worked")

local targetFPS = 300 -- Set this to limit FPS (2 FPS in this case)
local frameDelay = 1 / targetFPS

-- RunService to handle frame updates
local RunService = game:GetService("RunService")
local lastUpdate = tick()

RunService.RenderStepped:Connect(function()
    if (tick() - lastUpdate) >= frameDelay then
        -- Update frame
        lastUpdate = tick()
    else
        -- Wait to simulate low FPS
        RunService.RenderStepped:Wait()
    end
end)
