class Orange_tree
    
    def initialize
        @height = 300 + rand(50)
        @age = rand(7) 
        @fruit = 0
        @dead = false
    end
        
    def height
        puts "This Tree is " + @height.to_s + " cm tall"
    end
    
    def oneYearPasses
        puts "The tree is now " + @age.to_s + " years old."
        @fruit = 0
        @height = @height + 15
        @age = @age + 1
        if @age >= 4
            @produce = true
            produce
        else
            @produce = false
        end
        dead
        if @dead == true
            puts "oh no, this tree has died..."
        end
    end
        
    def produce
        if @produce == true
            @fruit = rand(40)
        else
            @fruit = 0
        end
    end
        
    def countTheFruit
        puts "The tree has " + @fruit.to_s + " fruit on it."
    end
        
    def pickFruit
        if @fruit > 0
            @fruit = @fruit - 1
        else
            puts "This tree has no fruit to pick."
        end
    end
    
    
    def dead
        if @age >= 15
            @dead = true
        end
    end
    
end
        
# tree1 = Orange_tree.new
# tree1.height
# tree1.countTheFruit
# tree1.pickFruit
# tree1.oneYearPasses
# tree1.height
# tree1.countTheFruit
# tree1.pickFruit
# tree1.countTheFruit
# tree2 = Orange_tree.new
# tree2.height
# tree2.oneYearPasses
# tree2.countTheFruit
tree1= Orange_tree.new



while tree1.dead != true do
puts @dead
puts "Please input your choice (height, year, count, pick)"
choice = gets.chomp
case choice
    when "height" then tree1.height
    when "year" then tree1.oneYearPasses
    when "count" then tree1.countTheFruit
    when "pick" then tree1.pickFruit
    else puts "Not sure what you want to do."
 end   
 end
puts "Sorry the tree is dead" 