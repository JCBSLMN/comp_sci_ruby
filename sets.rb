def intersection(set1, set2)

    arr1 = []
    set1.each do |i|
        set2.each do |i2|
        if i == i2
            arr1 << i
        end
        end
    end
    return arr1

end
    
def union(set1, set2) 
    n1 = set1.dup
    n2 = set2.dup
            n1.each do |i|
                n2.each_with_index do |i2, index|
                    if i == i2
                        n2.delete_at(index)
                    end
                end
            end
    return n1 + n2
end


    
def symmetric_difference(set1, set2)
       
       arr2 = []

       set1.each_with_index do |i|
            if set2.include? i

            else
                arr2 << i
            end
        end

        set2.each_with_index do |i|
            if set1.include? i

            else
                arr2 << i
            end
        end

        return arr2
end



    # set1 = [1,2,3]
    # set2 = [3,4,5]
    set1 = ["a", "b", "c"]
    set2 = ["c", "d", "e"]

    puts intersection(set1, set2)
    puts "-" * 10
    puts union(set1, set2) 
    puts "-" * 10
    puts symmetric_difference(set1, set2)
   