# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create([{name: 'Fred', email: 'fred@gmail.com', password: 'password', password_confirmation: 'password', admin:true},
             {name: 'James', email: 'james@gmail.com', password: 'password', password_confirmation: 'password'},
             {name: 'Sarah', email: 'sarah@gmail.com', password: 'password', password_confirmation: 'password'},
             {name: 'Lynda', email: 'lynda@gmail.com', password: 'password', password_confirmation: 'password'}])

Post.create([{caption: "Wolf wolf", image_file_name: "samples/1.jpg", user_id: 1, likes: 40, image: File.open("samples/1.jpg")},
             {caption: "Treat pls", image_file_name: "samples/2.jpg", user_id: 1, likes: 32, image: File.open("samples/2.jpg")},
             {caption: "Hiiii", image_file_name: "samples/3.jpg", user_id: 2, likes: 4, image: File.open("samples/3.jpg")},
             {caption: "Frankie", image_file_name: "samples/4.jpg", user_id: 3, likes: 3, image: File.open("samples/4.jpg")},
             {caption: "thong", image_file_name: "samples/5.jpeg", user_id: 3, likes: 1, image: File.open("samples/5.jpeg")},
             {caption: "Jennifer", image_file_name: "samples/6.jpeg", user_id: 1, likes: 34, image: File.open("samples/6.jpeg")},
             {caption: "Grassy day", image_file_name: "samples/7.jpeg", user_id: 2, likes: 50, image: File.open("samples/7.jpeg")},
             {caption: "Love", image_file_name: "samples/8.jpg", user_id: 3, likes: 78, image: File.open("samples/8.jpg")},
             {caption: "Yay!", image_file_name: "samples/9.jpeg", user_id:2, likes: 9, image: File.open("samples/9.jpeg")}])
