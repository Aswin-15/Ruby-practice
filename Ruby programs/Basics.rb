person1 = [ {name: "Aswin", age:  20 },
            {name: "bala" , age:  18 }
          ]

person2 =  [ { "name" => "daisy", "age" => 22 },
             { "name" => "Ashira" , "age" => 18}
           ]

puts "person 1 :"
puts person1
puts "person 2 : "
puts person2

puts person1[0][:name]

puts person2[0]["name"]

puts "Deleted age"
person1[0].delete(:age)
puts "person 1 :"
puts person1

puts "Added age"

person1[0][:age] = 20
puts person1

puts person1[0].key?("Aswin")