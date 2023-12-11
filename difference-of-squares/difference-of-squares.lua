local function square_of_sum(n)
  if (n==0) then return 0 end
  local function sum(n)
    if(n==1) then
      return 1
    else
      return n+sum(n-1)
    end
  end
  
  return sum(n)^2
end

local function sum_of_squares(n)
  if (n==0) then return 0 end
  if (n==1) then
    return 1
  else
    return n^2 + sum_of_squares(n-1)
  end

end

local function difference_of_squares(n)
  return square_of_sum(n)-sum_of_squares(n)
end

return {
  square_of_sum = square_of_sum,
  sum_of_squares = sum_of_squares,
  difference_of_squares = difference_of_squares
}
