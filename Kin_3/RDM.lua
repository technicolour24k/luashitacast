-- local config= {}
-- config.ver="main"

-- local http = require("socket.http")

-- -- Function to fetch and load a remote Lua file
-- local function fetch_and_load(url)
--     local response, status = http.request(url)
--     if status == 200 then
--         local chunk, err = loadstring(response)
--         if not chunk then
--             error("Error loading chunk: " .. err)
--         end
--         return chunk()
--     else
--         error("Failed to fetch remote file: HTTP status " .. status)
--     end
-- end

-- -- URL of the remote Lua file
-- local remote_file_url = "https://raw.githubusercontent.com/technicolour24k/luashitacast/"..config.ver.."/includes/common-functions.lua"

-- -- Fetch and execute the remote file
-- fetch_and_load(remote_file_url)


local profile = {};
local sets = {
};
profile.Sets = sets;

profile.Packer = {
};

profile.OnLoad = function()
    gSettings.AllowAddSet = true;

    -- infoLog("I'm loading via HTTP call out.")
end

profile.OnUnload = function()
end

profile.HandleCommand = function(args)
    
end

profile.HandleDefault = function()
end

profile.HandleAbility = function()
end

profile.HandleItem = function()
end

profile.HandlePrecast = function()
end

profile.HandleMidcast = function()
end

profile.HandlePreshot = function()
end

profile.HandleMidshot = function()
end

profile.HandleWeaponskill = function()
end

return profile;