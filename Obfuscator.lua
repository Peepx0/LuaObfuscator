local value = 1
local function randomString(length)
    local random = ""
    local characters = {"a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"}
    for i=1, length do
        random = random..characters[math.random(1, #characters)]
    end
    return random
end
local function obfuscateScript(string)
    value = value + 1
    math.randomseed(os.time() + value)
    --//* Lua 5.1 Functions
    local printRandom = randomString(10)
    local gRandom = randomString(10)
    local versionRandom = randomString(10)
    local assertRandom = randomString(10)
    local collectgarbageRandom = randomString(10)
    local dofileRandom = randomString(10)
    local errorRandom = randomString(10)
    local getfenvRandom = randomString(10)
    local getmtRandom = randomString(10)
    local ipairsRandom = randomString(10)
    local loadRandom = randomString(10)
    local loadfRandom = randomString(10)
    local loadstringRandom = randomString(10)
    local moduleRandom = randomString(10)
    local nextRandom = randomString(10)
    local pairsRandom = randomString(10)
    local pcallRandom = randomString(10)
    local setmtRandom = randomString(10)
    --//* Functions End
    --//* New Variables
    local newPrint = "local "..printRandom.." = print\n"
    local newGRandom = "local "..gRandom.." = _G\n"
    local newVersionRandom = "local "..versionRandom.." = _VERSION\n"
    local newAssert = "local "..assertRandom.." = assert\n"
    local newCollectGarbage = "local "..collectgarbageRandom.." = collectgarbage\n"
    local newDoFile = "local "..dofileRandom.." = dofile\n"
    local newError = "local "..errorRandom.." = error\n"
    local newGetFenv = "local "..getfenvRandom.." = getfenv\n"
    local newGetMt = "local "..getmtRandom.." = getmetatable\n"
    local newIPairs = "local "..ipairsRandom.." = ipairs\n"
    local newLoad = "local "..loadRandom.." = load\n"
    local newLoadF = "local "..loadfRandom.." = loadfile\n"
    local newLoadS = "local "..loadstringRandom.." = loadstring\n"
    local newModule = "local "..moduleRandom.." = module\n"
    local newNext = "local "..nextRandom.." = next\n"
    local newPairs = "local "..pairsRandom.." = pairs\n"
    local newPcall = "local "..pcallRandom.." = pcall\n"
    local newSetMt = "local "..setmtRandom.." = setmetatable\n"
    --//* New Variables End
    --//* Pattern Search
    string = string.gsub(string, "print", printRandom)
    string = string.gsub(string, "_G", gRandom)
    string = string.gsub(string, "_VERSION", versionRandom)
    string = string.gsub(string, "assert", assertRandom)
    string = string.gsub(string, "collectgarbage", collectgarbageRandom)
    string = string.gsub(string, "dofile", dofileRandom)
    string = string.gsub(string, "error", errorRandom)
    string = string.gsub(string, "getfenv", getfenvRandom)
    string = string.gsub(string, "getmetatable", getmtRandom)
    string = string.gsub(string, "ipairs", ipairsRandom)
    string = string.gsub(string, "load", loadRandom)
    string = string.gsub(string, "loadfile", loadfRandom)
    string = string.gsub(string, "loadstring", loadstringRandom)
    string = string.gsub(string, "module", moduleRandom)
    string = string.gsub(string, "next", nextRandom)
    string = string.gsub(string, "pairs", pairsRandom)
    string = string.gsub(string, "pcall", pcallRandom)
    string = string.gsub(string, "setmetatable", setmtRandom)
    --//* Pattern Search End
    --//* Print Obfuscated Script
    print(newSetMt..newGetMt..newIPairs..newLoad..newLoadF..newLoadS..newModule..newNext..newPairs..newPcall..newPrint..newGRandom..newVersionRandom..newAssert..newCollectGarbage..newDoFile..newError..newGetFenv..string)
    --//* Print Obfuscated Script End
end
