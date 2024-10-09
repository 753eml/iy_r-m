-- For Solara V3, Synapse X Remake and other Executors
-- Please name your autoexecute file after any of the possibleFiles names, and in .txt/.lua/.luau
local currentFilePath = getfolder()
local possibleFiles = {"iyautoload", "iy", "infinite yield", "infiniteyield", "infyield", "iyr", "infinite-yield"}
local function isInAutoExecFile(filePath)
    for _, fileName in ipairs(possibleFiles) do
        if string.find(filePath:lower(), fileName:lower() .. ".lua") or
           string.find(filePath:lower(), fileName:lower() .. ".luau") or
           string.find(filePath:lower(), fileName:lower() .. ".txt") then
            return true
        end
    end
    return false
end
local function isInAutoExecFolder(directory)
    return string.find(directory:lower(), "autoexec") or string.find(directory:lower(), "autoexecute")
end
if isInAutoExecFile(currentFilePath) and isInAutoExecFolder(currentFilePath) then
    wait(5)
        loadstring(game:HttpGet('https://raw.githubusercontent.com/753eml/iy_r-m/refs/heads/main/iyrm.lua', true))()
else
        loadstring(game:HttpGet('https://raw.githubusercontent.com/753eml/iy_r-m/refs/heads/main/iyrm.lua', true))()
end
