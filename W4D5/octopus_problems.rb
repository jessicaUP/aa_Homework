
# O(n^2) -- SLUGGISH OCTOPUS => BUBBLE SORT 
#Find the longest fish in O(n^2) time. Do this by comparing all fish lengths to all other fish lengths

fishes = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']

def long_fish(array)  
    sorted = false

    until sorted
        sorted = true
        (0...array.length-1).each do |idx|
            ele1 = array[idx]
            ele2 = array[idx+1]
            if ele1.length > ele2.length
                array[idx], array[idx+1] = array[idx+1], array[idx]
                sorted = false
            end
        end
    end
   array[-1]
end

p long_fish(fishes)


#  O(n log n) -- DOMINANT OCTOPUS => QUICKSORT  
#Find the longest fish in O(n log n) time. Hint: You saw a sorting algorithm that runs in O(n log n) in the Sorting Complexity Demo. Remember that Big O is classified by the dominant term.

def dom_fish(array)  
    return [] if array.length  == 0
    return [array] if array.length == 1
    
    pivot = array[0]
    remaining = array[1..-1]

    less = remaining.select { |fish| fish.length < pivot.length }
    more = remaining.select { |fish| fish.length > pivot.length } #dup are not important here

    dom_fish(less) + [pivot] + dom_fish(more)
    array[-1]
end

p dom_fish(fishes)

def clever(array)
    long_fish = array[0]
    array.each { |fish| long_fish = fish if long_fish.length < fish.length }
    long_fish
end

p clever(fishes)