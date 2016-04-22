# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create([{name: 'Fred', email: 'fred@gmail.com', password: 'password', password_confirmation: 'password'},
             {name: 'James', email: 'james@gmail.com', password: 'password', password_confirmation: 'password'},
             {name: 'Sarah', email: 'sarah@gmail.com', password: 'password', password_confirmation: 'password'},
             {name: 'Lynda', email: 'lynda@gmail.com', password: 'password', password_confirmation: 'password'}])
Post.create([{caption: "Wolf wolf", image: File.new("samples/1.jpg"), user_id: 0},
             {caption: "Treat pls", image: File.new("samples/2.jpg"), user_id: 1},
             {caption: "Hiiii", image: File.new("samples/3.jpg"), user_id: 2},
             {caption: "Frankie", image: File.new("samples/4.jpg"), user_id: 3},
             {caption: "thong", image: File.new("samples/5.jpeg"), user_id: 0},
             {caption: "Jennifer", image: File.new("samples/6.jpeg"), user_id: 1},
             {caption: "Grassy day", image: File.new("samples/7.jpeg"), user_id: 2},
             {caption: "Love", image: File.new("samples/8.jpg"), user_id: 3},
             {caption: "Yay!", image: File.new("samples/9.jpeg"), user_id: 0}])
