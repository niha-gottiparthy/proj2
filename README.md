# Title: Berkeley’s Top Dog
TA: Howard
Email: howardxchen@gmail.com

Team Members: Thong Dinh, Allen Wang, Niha Gottiparthy

Github Repo: https://github.com/niha-gottiparthy/proj2

Demo Link: _________

## Idea: 

There is no doubt that people often go crazy when it comes to animals here at Cal. Whether it’s a dog-sitting request on free-and-for-sale, or a stress-relief event with puppy meet-and-greets, students adore everything about our furry friends. As a means to further encourage stress-relief and relaxation time for students, here is an application whose sole purpose is for students to share random photos of their beloved pet puppies or dogs for everyone else to enjoy because who doesn’t love a spontaneous pet photo to start off the day. Users will be able to post photos as well as like/comment on each other’s photos. The photo with the highest amount of likes will be featured at the top of everyone’s feed (Top Dog of the Day).

## Web Design:
1. home
 Cover photo will feature the top dog. This will be done through iterating through the posts in ```Post.all``` while keeping reference to the ```@top``` post that is ranked by ```Post.likes```. Below will contain the other top posts calculated in a similar matter. We can also keep the database sorted by ```Post.likes```. Each photo can be clicked to be redirected to the user. 
2. profile
 This will contain a list of posts and comments by the user and display all of them. It'll give the user the feature to delete a post and all other users the ability to like and comment on the post.
3. new post
 This will generate a new post for the user. This will require the user to be logged in, upload a photo, and add a caption for it.
2. users
 Lists all users with their name and a link to their profile. This uses a get request that redirects to a webpage with ```/@name```.
3. login/logout
 Allows the user to login and logout using devise. 

##Models and Description:
###User
```r
validates_format_of :email, :with => Devise.email_regexp, presence: true, uniqueness: true
validates :name, presence: true, uniqueness: true
has_many :Posts
```
Each user will have a unique username, unique email, and privilege. Using devise, we'll validate a proper email. We'll also require a unique name. Each user will have a relationship of having many posts.

###Post
```r
has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/ 
belongs_to: User
has_many :Comments
```

Each post must contain a unique id, a single photo, and a caption. We'll be using paperclip to implement most of this model. For a guide on what we did, click the link beolow.
[For reference on uploading a photo.]: http://www.peoplecancode.com/tutorials/users-avatars-uploading-images-using-paperclip

###Comment

This will be made using react and will belong to each post. 
  
##Gems
https://github.com/reactjs/react-rails for comments

https://github.com/thoughtbot/paperclip# models for images

Deploying on Heroku using ImageMagick alongside paperclip gem
https://github.com/ello/heroku-buildpack-imagemagick-cedar-14

##Bootstrap template
http://blackrockdigital.github.io/startbootstrap-clean-blog/post.html for template

#Commands Run to Generate Models
  * rails generate devise User
  * rails generate model Post
  * rails generate migration AddPrivilegeToUser privilege:integer
  * rails generate paperclip post image
  * rails generate migration AddLikesToPost likes:integer
  * rails generate migration AddCaptionToPost caption:string
  * rails generate migration AddUserToPost user:user

##Features:
  * Users can log in
  * Users can like and post photos
  * Users can comment on photos
  * Users share a feed to post photos to
  * Users also have their own page with only their own content
  * Users can modify or remove their own content
  * Admins can modify or remove anyone’s content

##Division of Labor:
  * Thong: Set up user model, set up paperclip for images and posts, set up users page, set up profile page, worked on overall design of models. 
  * Allen: Generated seeds, set up design for pages, set up home page, assisted with setting up gems, worked on overall design of models.
  * Niha: Set up react, set up screencast, set up comment model, deployed to Heroku. 

