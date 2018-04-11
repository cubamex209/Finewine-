# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#Wines in the database
Wine.delete_all
Wine.create(make:"Cabernet Sauvignon", year:2008, name:"Wente Vineyards", price:25)
Wine.create(make:"Merlot", year:2006, name:"Gallo Winery", price:32)
Wine.create(make:"Blend", year:2009, name:"Retlazff Winery", price:28)
Wine.create(make:"Port", year:2007, name:"Wente Vineyards", price:35)
Wine.create(make:"Pinot Gris", year:2016, name:"Hendry", price:20)
Wine.create(make:"Chardonay", year:2014, name:"Concannon Vineyard", price:26)
Wine.create(make:"Sauvignon Blanc", year:2012, name:"Page Mill Winery", price:22)
Wine.create(make:"Riesling", year:2013, name:"Retlazff Winery", price:30)
Wine.create(make:"Pinot Noir", year:2010, name:"Truchard Vineyards", price:40)
Wine.create(make:"Rose", year:2011, name:"Retzlaff Winery", price:18)

#Create the users
Speaker.create(first:"Omar",email:"omarh@gmail.com",password:"1234")

#Created questions
