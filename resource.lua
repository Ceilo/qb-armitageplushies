-- Server-side script (server.lua)

-- Define the plushie types with their respective model names and prices
local plushieTypes = {
    [1] = { name = "Plushie 1", model = "plushie_model_name_1", price = 10 },
    [2] = { name = "Plushie 2", model = "plushie_model_name_2", price = 15 },
    [3] = { name = "Plushie 3", model = "plushie_model_name_3", price = 20 },
    -- Add more plushie types as needed
}

-- Register the command to purchase a plushie
QBCore.Commands.Add("buyplushie", "Purchase a plushie from the cat cafe.", {}, false, function(source, args)
    local x, y, z = -- Set the coordinates where the plushie will spawn
    local plushieIndex = tonumber(args[1])

    -- Check if the plushie index is valid
    if plushieIndex and plushieTypes[plushieIndex] then
        local plushie = plushieTypes[plushieIndex]

        -- Check if the player has enough money to purchase the plushie
        if QBCore.Functions.GetPlayerData(source).money >= plushie.price then
            -- Deduct the price from the player's money
            QBCore.Functions.RemoveMoney(source, plushie.price, "cat-cafe-plushie")

            -- Spawn the plushie object in the world
            local plushieObject = CreateObject(GetHashKey(plushie.model), x, y, z, true, true, true)

            -- Attach the plushie object to a specific location, if needed
            -- AttachEntityToEntity(plushieObject, entityToAttachTo, boneIndex, offsetX, offsetY, offsetZ, rotX, rotY, rotZ, true, true, false, true, 2, true)

            -- Trigger a notification for the player
            TriggerClientEvent('QBCore:Notify', source, 'You have purchased a ' .. plushie.name .. ' for $' .. plushie.price .. '.')

            -- Do any additional logic here, such as saving the plushie data or notifying other clients

        else
            -- Trigger a notification if the player doesn't have enough money
            TriggerClientEvent('QBCore:Notify', source, 'You don\'t have enough money to purchase the plushie.')
        end
    else
        -- Trigger a notification if an invalid plushie index is provided
        TriggerClientEvent('QBCore:Notify', source, 'Invalid plushie index.')
    end
end)
