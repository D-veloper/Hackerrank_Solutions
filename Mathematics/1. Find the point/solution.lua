

--
-- Complete the 'findPoint' function below.
--
-- The function is expected to return an INTEGER_ARRAY.
-- The function accepts following parameters:
--  1. INTEGER px
--  2. INTEGER py
--  3. INTEGER qx
--  4. INTEGER qy
--

function findPoint(px, py, qx, qy)
    -- Write your code here
    --the point r is the point that forms a line with point p, where q is the midpoint.
    --midpoint is calculated thus x1 + x2/2 and y1 + y2/2
    -- Since q is the mid point then qx = (rx + px)/2. Therefore rx = 2qx - px. Applying the same logic, ry = 2qy - py. 
    -- Conceptually, we are simply doubling the distance between p and q to get a point that is the same distance away from q as p in the opposite direction*/
    local new_point = {}
    local rx = (2 * qx) - px
    local ry = (2 * qy) - py
    
    table.insert(new_point, rx)
    table.insert(new_point, ry)
    
    return new_point

end

local fptr = io.open(os.getenv("OUTPUT_PATH"), "w")

local n = io.stdin:read("*n", "*l")

for nitr = 1, n do
    local firstmultipleinput = {}
    for token in string.gmatch(io.stdin:read("*l"):gsub("%s+$", ""), "[^%s]+") do
        table.insert(firstmultipleinput, token)
    end

    local px = tonumber(firstmultipleinput[1]:match("^%s*(.-)%s*$"))

    local py = tonumber(firstmultipleinput[2]:match("^%s*(.-)%s*$"))

    local qx = tonumber(firstmultipleinput[3]:match("^%s*(.-)%s*$"))

    local qy = tonumber(firstmultipleinput[4]:match("^%s*(.-)%s*$"))

    local result = findPoint(px, py, qx, qy)

    fptr:write(table.concat(result, " "))

    fptr:write("\n")
end

fptr:close()
