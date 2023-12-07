local PopCount = {}

function PopCount.egg_count(number)
    if (number==0) then return 0 end

    --recursive function to have a string binary representation of a decimal number
    function DecimalToBin(number, initStr)
        if (number==1) then
            return ((initStr or "").."1"):reverse()
        else
            return DecimalToBin(math.floor(number/2), (initStr or "")..(number%2==0 and "0" or "1"))
        end
    end

    local binaryString = DecimalToBin(number)
    local totalEgg = 0
    
    for i=1, #binaryString do
        if binaryString:sub(i,i)=="1" then
            totalEgg = totalEgg +1
        end
    end
    

    return totalEgg
end



return PopCount
