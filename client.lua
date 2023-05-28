-- Configuration
local plushieSpawns = {
    { x = 123.45, y = 67.89, z = 10.0 },
    { x = 987.65, y = 43.21, z = 10.0 },
    -- Add more plushie spawn locations as needed
}

-- Function to spawn a plushie
function SpawnPlushie(modelName, position)
    -- Load the model
    RequestModel(modelName)
    while not HasModelLoaded(modelName) do
        Wait(1)
    end

    -- Create the plushie object
    local plushie = CreateObject(GetHashKey(modelName), position.x, position.y, position.z, true, true, true)
    SetModelAsNoLongerNeeded(modelName)
    PlaceObjectOnGroundProperly(plushie)
end

-- Event handler for spawning plushies
RegisterNetEvent('catcafe:spawnPlushie')
AddEventHandler('catcafe:spawnPlushie', function(plushieIndex)
    local modelName = 'plushie_model_name_' .. plushieIndex
    local spawnPos = plushieSpawns[plushieIndex]

    if spawnPos then
        SpawnPlushie(modelName, spawnPos)
    else
        print('Invalid plushie spawn index: ' .. plushieIndex)
    end
end)
