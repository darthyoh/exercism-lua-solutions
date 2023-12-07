local Hamming = {}

function Hamming.compute(a,b)
    if(string.len(a) ~= string.len(b)) then return -1 end

    local distance=0

    for i=1, #a do
        if a:sub(i,i)~=b:sub(i,i) then
            distance = distance +1
        end
    end
    return distance
end

return Hamming
