-- Archivo: lobby.lua

local lobbyCoords = vector3(115.5748, -1069.4093, 29.1924)  -- Reemplaza con las coordenadas deseadas

RegisterCommand("lobby", function()
    local playerPed = GetPlayerPed(-1)
    
    if DoesEntityExist(playerPed) and not IsEntityDead(playerPed) then
        SetEntityCoordsNoOffset(playerPed, lobbyCoords.x, lobbyCoords.y, lobbyCoords.z, true, true, true)
        TriggerEvent("chatMessage", "WEST ACADEMY", {255, 0, 0}, "¡Teletransportado al lobby!")
    end
end, false)
