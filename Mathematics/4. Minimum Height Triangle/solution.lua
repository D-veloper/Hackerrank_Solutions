

--
-- Complete the 'lowestTriangle' function below.
--
-- The function is expected to return an INTEGER.
-- The function accepts following parameters:
--  1. INTEGER trianglebase
--  2. INTEGER area
--

function lowestTriangle(trianglebase, area)
    -- Write your code here
    local height = (2.0 * area)/trianglebase
    return math.ceil(height)

end

local fptr = io.open(os.getenv("OUTPUT_PATH"), "w")

local firstmultipleinput = {}
for token in string.gmatch(io.stdin:read("*l"):gsub("%s+$", ""), "[^%s]+") do
    table.insert(firstmultipleinput, token)
end

local trianglebase = tonumber(firstmultipleinput[1]:match("^%s*(.-)%s*$"))

local area = tonumber(firstmultipleinput[2]:match("^%s*(.-)%s*$"))

local height = lowestTriangle(trianglebase, area)

fptr:write(height, "\n")

fptr:close()
