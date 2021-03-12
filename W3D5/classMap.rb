class Map

    def initialize
        @hash_arr = []
    end

    def set(key, value)
        @hash_arr.each { |sub_arr| return false if sub_arr[0] == key }
        @hash_arr << [key, value]
    end
        
        
    def get(key)
        @hash_arr.each { |sub_arr| return sub_arr[-1] if sub_arr[0] == key }
    end
        
        
    def delete(key)
        new_arr = []
        @hash_arr.each { |sub_arr| @hash_arr << sub_arr if sub_arr[0] != key }
        new_arr
    end


    def show
        @hash_arr
    end


end 


map_new = Map.new
map_new.set("jessica", "uphoff")
map_new.set(2, 7)
p map_new.show
p map_new.get("jessica")
p map_new.delete(2)
p map_new.show
