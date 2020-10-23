

def exclusive_or(num1, num2)

    arr1 =[]
    arr2 =[]

    bin1 = num1.to_s(2)

    bin2 = num2.to_s(2)

    bin1.each_char do |c|
      arr1 << c
    end

    bin2.each_char do |c|
      arr2 << c
    end
  
    if arr2.length < arr1.length
      until arr2.length == arr1.length do
      arr2.unshift(0.to_s)
        end
    end

    if arr1.length < arr2.length
        until arr1.length == arr2.length do
            arr1.unshift(0.to_s)
    end
    end

    result = []

    arr1.each_with_index do |val, i|
        if val.to_i + arr2[i].to_i == 0
            result << 0
        end
        if val.to_i + arr2[i].to_i == 2
            result << 0
        end
        if val.to_i + arr2[i].to_i == 1
            result << 1
        end
    
    end

    puts result.join("").to_i(2)

end



exclusive_or(10,11)