local ArmstrongNumbers = {}

function ArmstrongNumbers.is_armstrong_number(number)
    local total=0
    for i=1, #(""..number) do
        total = total + (tonumber((""..number):sub(i,i)) ^ string.len((""..number)))
    end

    return total==number
end

return ArmstrongNumbers
