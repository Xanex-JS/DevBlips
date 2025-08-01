-- Blip configuration
local blips = {
    {
        title = "Mineshaft",
        colour = 1,
        id = 677,
        scale = 0.8,
        coords = {
            vector3(-596.8, 2090.23, 131.41)
        }
    },
    {
        title = "Bunker",
        colour = 5,
        id = 831,
        scale = 0.8,
        coords = {
            vector3(585.76, -2812.64, 6.06)
        }
    },
}

-- Create blips on map
CreateThread(function()
    for _, info in pairs(blips) do
        for _, coord in pairs(info.coords) do
            local blip = AddBlipForCoord(coord)

            SetBlipSprite(blip, info.id)
            SetBlipDisplay(blip, 4)
            SetBlipScale(blip, info.scale or 0.9)
            SetBlipColour(blip, info.colour)
            SetBlipAsShortRange(blip, true)

            BeginTextCommandSetBlipName("STRING")
            AddTextComponentString(info.title)
            EndTextCommandSetBlipName(blip)
        end
    end
end)
