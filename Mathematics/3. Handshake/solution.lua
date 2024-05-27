

--
-- Complete the 'handshake' function below.
--
-- The function is expected to return an INTEGER.
-- The function accepts INTEGER n as parameter.
--

function handshake(n)
    -- Write your code here
    local all_shakes = n * (n - 1)
    -- hand shakes are counted both ways so the number of shakes is half the total handshake combinations
    local num_shakes = all_shakes/2
    return num_shakes

end

local fptr = io.open(os.getenv("OUTPUT_PATH"), "w")

local t = io.stdin:read("*n", "*l")

for titr = 1, t do
    local n = io.stdin:read("*n", "*l")

    local result = handshake(n)

    fptr:write(result, "\n")
end

fptr:close()
