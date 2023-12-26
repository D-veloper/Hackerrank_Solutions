

--
-- Complete the 'getTotalX' function below.
--
-- The function is expected to return an INTEGER.
-- The function accepts following parameters:
--  1. INTEGER_ARRAY a
--  2. INTEGER_ARRAY b
--

function getTotalX(a, b)
    local count = 0
    
    local all_factors = false
    local is_all_factor = false
    
    table.sort(b)
    
    max_num = b[#b]
    
    for i = 1, max_num, 1 do
        for j = 1, #a, 1 do
            if i % a[j] ~= 0 then
                all_factors = false
                break
            end     
            all_factors = true
        end
            
        for k = 1, #b, 1 do
            if b[k] % i ~= 0 then
                is_all_factor = false
                break
            end
            is_all_factor = true
        end
        
        if all_factors and is_all_factor then
            count = count + 1
        end
    end
    
    return count
end

local fptr = io.open(os.getenv("OUTPUT_PATH"), "w")

local firstmultipleinput = {}
for token in string.gmatch(io.stdin:read("*l"):gsub("%s+$", ""), "[^%s]+") do
    table.insert(firstmultipleinput, token)
end

local n = tonumber(firstmultipleinput[1]:match("^%s*(.-)%s*$"))

local m = tonumber(firstmultipleinput[2]:match("^%s*(.-)%s*$"))

local arr = {}

for token in string.gmatch(io.stdin:read("*l"):gsub("%s+$", ""), "[^%s]+") do
    table.insert(arr, tonumber(token))
end

local brr = {}

for token in string.gmatch(io.stdin:read("*l"):gsub("%s+$", ""), "[^%s]+") do
    table.insert(brr, tonumber(token))
end

local total = getTotalX(arr, brr)

fptr:write(total, "\n")

fptr:close()
