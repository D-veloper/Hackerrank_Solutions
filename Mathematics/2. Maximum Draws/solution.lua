

--
-- Complete the 'maximumDraws' function below.
--
-- The function is expected to return an INTEGER.
-- The function accepts INTEGER n as parameter.
--

function maximumDraws(n)
    -- Write your code here
    local max = n + 1
    return max

end

local fptr = io.open(os.getenv("OUTPUT_PATH"), "w")

local t = io.stdin:read("*n", "*l")

for titr = 1, t do
    local n = io.stdin:read("*n", "*l")

    local result = maximumDraws(n)

    fptr:write(result, "\n")
end

fptr:close()
