

--
-- Complete the 'kangaroo' function below.
--
-- The function is expected to return a STRING.
-- The function accepts following parameters:
--  1. INTEGER x1
--  2. INTEGER v1
--  3. INTEGER x2
--  4. INTEGER v2
--

function kangaroo(x1, v1, x2, v2)
    -- Write your code here
    local answer = ""
    local a = x2 - x1
    local b = v1 - v2
    
    if b <= 0 then
        return "NO"
    end
    
    if (a % b == 0) then
        answer = "YES"
    else
        answer = "NO"
    end
    
    return answer
end

local fptr = io.open(os.getenv("OUTPUT_PATH"), "w")

local firstmultipleinput = {}
for token in string.gmatch(io.stdin:read("*l"):gsub("%s+$", ""), "[^%s]+") do
    table.insert(firstmultipleinput, token)
end

local x1 = tonumber(firstmultipleinput[1]:match("^%s*(.-)%s*$"))

local v1 = tonumber(firstmultipleinput[2]:match("^%s*(.-)%s*$"))

local x2 = tonumber(firstmultipleinput[3]:match("^%s*(.-)%s*$"))

local v2 = tonumber(firstmultipleinput[4]:match("^%s*(.-)%s*$"))

local result = kangaroo(x1, v1, x2, v2)

fptr:write(result, "\n")

fptr:close()
