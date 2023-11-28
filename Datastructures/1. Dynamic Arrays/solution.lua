

--
-- Complete the 'dynamicArray' function below.
--
-- The function is expected to return an INTEGER_ARRAY.
-- The function accepts following parameters:
--  1. INTEGER n
--  2. 2D_INTEGER_ARRAY queries
--

function dynamicArray(n, queries)
    -- Write your code here
    local arr = {}
    for i = 1, n do
        arr[i] = {}
    end
    local lastAnswer = 0
    local answers = {}
    
    local xor = bit32.bxor
    
    for i = 1, #queries do
        local new_query = queries[i]
        local x = new_query[2]
        local y = new_query[3]
        
       if new_query[1] == 1 then 
            local idx = xor(x, lastAnswer) % n
            if not arr[idx] then
                arr[idx] = {}  -- initialise array if nil. source of all my sorrows.
            end
            table.insert(arr[idx], y)
            
        elseif new_query[1] == 2 then
            local idx = xor(x, lastAnswer) % n
            lastAnswer = arr[idx][(y % #arr[idx]) + 1]
            table.insert(answers, lastAnswer)
        end
    end

    -- You can return the answers or use them as needed
    return answers
end

local fptr = io.open(os.getenv("OUTPUT_PATH"), "w")

local firstmultipleinput = {}
for token in string.gmatch(io.stdin:read("*l"):gsub("%s+$", ""), "[^%s]+") do
    table.insert(firstmultipleinput, token)
end

local n = tonumber(firstmultipleinput[1]:match("^%s*(.-)%s*$"))

local q = tonumber(firstmultipleinput[2]:match("^%s*(.-)%s*$"))

local queries = {}

for i = 1, q do
    queries[i] = {}

    for token in string.gmatch(io.stdin:read("*l"):gsub("%s+$", ""), "[^%s]+") do
        table.insert(queries[i], tonumber(token:match("(.-)%s*$")))
    end
end

local result = dynamicArray(n, queries)

fptr:write(table.concat(result, "\n"))

fptr:write("\n")

fptr:close()
