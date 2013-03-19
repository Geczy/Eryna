require 'java'

FOODS = {}

class Food

 attr_reader :item, :points

  def initialize(item, points)
    @item = item
    @points = points
  end

end

def append_food(food)
  FOODS[food.item] = food
end

append_food Food.new(379, 5)
append_food Food.new(1963, 2)
append_food Food.new(1985, 2)
append_food Food.new(2126, 2)
append_food Food.new(247, 2)
append_food Food.new(2120, 2)
append_food Food.new(2120, 2)
append_food Food.new(2108, 2)
append_food Food.new(7072, 2)
append_food Food.new(1969, 2)
append_food Food.new(1982, 2)
append_food Food.new(2142, 3)
append_food Food.new(4293, 3)
append_food Food.new(2140, 3)
append_food Food.new(4291, 3)
append_food Food.new(1973, 3)
append_food Food.new(3151, 3)
append_food Food.new(315, 3)
append_food Food.new(1861, 3)
append_food Food.new(6701, 4)
append_food Food.new(325, 4)
append_food Food.new(2309, 5)
append_food Food.new(7062, 5)
append_food Food.new(3228, 5)
append_food Food.new(347, 5)
append_food Food.new(7082, 5)
append_food Food.new(7084, 5)
append_food Food.new(7078, 5)
append_food Food.new(355, 6)
append_food Food.new(2213, 7)
append_food Food.new(2209, 7)
append_food Food.new(2239, 7)
append_food Food.new(339, 7)
append_food Food.new(7223, 7)
append_food Food.new(333, 7)
append_food Food.new(7064, 8)
append_food Food.new(5972, 8)
append_food Food.new(6883, 8)
append_food Food.new(351, 8)
append_food Food.new(2217, 8)
append_food Food.new(2244, 8)
append_food Food.new(2205, 8)
append_food Food.new(2237, 8)
append_food Food.new(329, 9)
append_food Food.new(2878, 10)
append_food Food.new(7228, 10)
append_food Food.new(361, 10)
append_food Food.new(2259, 11)
append_food Food.new(7530, 11)
append_food Food.new(2149, 11)
append_food Food.new(2277, 11)
append_food Food.new(7066, 11)
append_food Food.new(2003, 11)
append_food Food.new(2255, 11)
append_food Food.new(2281, 11)
append_food Food.new(2253, 11)
append_food Food.new(739, 12)
append_food Food.new(2195, 12)
append_food Food.new(2191, 12)
append_food Food.new(365, 13)
append_food Food.new(7068, 13)
append_food Food.new(705, 14)
append_food Food.new(2345, 14)
append_food Food.new(6703, 14)
append_food Food.new(373, 14)
append_food Food.new(2185, 15)
append_food Food.new(7568, 15)
append_food Food.new(2187, 15)
append_food Food.new(7056, 16)
append_food Food.new(7946, 16)
append_food Food.new(6705, 16)
append_food Food.new(3144, 18)
append_food Food.new(3147, 18)
append_food Food.new(2011, 19)
append_food Food.new(1883, 19)
append_food Food.new(1885, 19)
append_food Food.new(7058, 20)
append_food Food.new(385, 20)
append_food Food.new(397, 21)
append_food Food.new(391, 22)
append_food Food.new(7060, 22)