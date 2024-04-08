

--
-- Complete the 'rotateLeft' function below.
--
-- The function is expected to return an INTEGER_ARRAY.
-- The function accepts following parameters:
--  1. INTEGER d
--  2. INTEGER_ARRAY arr
--

------------------------------------- MY SOLUTION ---------------------------------------------------------
function rotateLeft(d, arr)
    -- Write your code here
    local new_arr = {}
    local start = d + 1
    local end_pos = #arr
    table.move(arr, start, end_pos, 1, new_arr)
    
    local new_start = (#arr - d) + 1
    table.move(arr, 1, d, new_start, new_arr)
    return new_arr

end
--------------------------------- SOLUTION ENDS HERE ---------------------------------------------------

local fptr = io.open(os.getenv("OUTPUT_PATH"), "w")

local firstmultipleinput = {}
for token in string.gmatch(io.stdin:read("*l"):gsub("%s+$", ""), "[^%s]+") do
    table.insert(firstmultipleinput, token)
end

local n = tonumber(firstmultipleinput[1]:match("^%s*(.-)%s*$"))

local d = tonumber(firstmultipleinput[2]:match("^%s*(.-)%s*$"))

local arr = {}

for token in string.gmatch(io.stdin:read("*l"):gsub("%s+$", ""), "[^%s]+") do
    table.insert(arr, tonumber(token))
end

local result = rotateLeft(d, arr)

fptr:write(table.concat(result, " "))

fptr:write("\n")

fptr:close()
