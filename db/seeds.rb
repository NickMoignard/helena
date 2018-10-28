# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
$groups = ['AA', 'CA', 'RA', 'FA']


$groups.each do |i|
    

    
    (0..9).each do |j|

        user = User.new
        user.username = "#{i}0#{j}"
        user.password = "test123"
        user.email = "test@test.com"
        user.save(validate: false)
    end


    (10..99).each do |j|
        user = User.new
        user.username = "#{i}#{j}"
        user.password = "test123"
        user.email = "test@test.com"
        user.save(validate: false)
    end

end



