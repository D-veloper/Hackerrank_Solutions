

--
-- Complete the 'breakingRecords' function below.
--
-- The function is expected to return an INTEGER_ARRAY.
-- The function accepts INTEGER_ARRAY scores as parameter.
--


function breakingRecords(scores)
    local count = {0,0}
    
    local lowest = scores[1]
    local highest = lowest
    
    for i = 2, #scores do
        if scores[i] < lowest then
            count[2] = count[2] + 1
            lowest = scores[i]
        end
        
        if scores[i] > highest then
            count[1] = count[1] + 1
            highest = scores[i]
        end
    end
    
    return count
end

local fptr = io.open(os.getenv("OUTPUT_PATH"), "w")

local n = io.stdin:read("*n", "*l")

local scores = {}

for token in string.gmatch(io.stdin:read("*l"):gsub("%s+$", ""), "[^%s]+") do
    table.insert(scores, tonumber(token))
end

local result = breakingRecords(scores)

fptr:write(table.concat(result, " "))

fptr:write("\n")

fptr:close()
