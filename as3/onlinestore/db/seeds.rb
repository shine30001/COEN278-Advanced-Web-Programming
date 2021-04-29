# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

contents = [
    [
        "Santa Cruz Shot", 
        "Shot at Santa Cruz on 06/23/2020.", 
        "DSCF5817-1.jpg", 
        "9.99"
    ], [
        "Lake Tahoe Shot", 
        "Shot at Lake Tahoe on 07/23/2020.", 
        "DSCF6520-1.jpg", 
        "9.59"
    ], [
        "Hooptopia Shot", 
        "Shot at Hooptopia on 11/02/2019.", 
        "DSCF3867-1.jpg", 
        "8.99"
    ], [
        "Twin Peak Shot", 
        "Shot at Twin Peak on 07/09/2020.", 
        "DSCF6314-1.jpg", 
        "10.99"
    ], [
        "Yosemite Shot", 
        "Shot at Yosemite on 10/30/2020.", 
        "DSCF8090_1.jpg", 
        "11.99"
    ]
]

contents.each do |name, description, image, price|
    Product.create(
        name: name, 
        description: description, 
        image: image, 
        price: price
    )
end