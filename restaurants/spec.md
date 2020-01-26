# Specifications for the Sinatra Assessment

Specs:
- [x] Use Sinatra to build the app
      required 'sinatra' gem in Gemfile and used sinatra conventions and methods;
- [x] Use ActiveRecord for storing information in a database
      required 'activerecord' gem in Gemfile and made classes to inherit from ActiveRecords;
- [x] Include more than one model class (e.g. User, Post, Category)
      two classes: User and Restaurant
- [x] Include at least one has_many relationship on your User model (e.g. User has_many Posts)
      User has_many Restaurants;
- [x] Include at least one belongs_to relationship on another model (e.g. Post belongs_to User)
      Restaurant belongs_to User
- [x] Include user accounts with unique login attribute (username or email)
      User class includes :username and :password 
- [x] Ensure that the belongs_to resource has routes for Creating, Reading, Updating and Destroying
      Class Restaurant has CRUD controllers 
- [x] Ensure that users can't modify content created by other users
      Users only can modify restaursnts that belongs_to those Users.
- [x] Include user input validations
      'validates' method included in User class, the username/password cannot be blank-the precense for both is required
- [x] BONUS - not required - Display validation failures to user with error message (example form URL e.g. /posts/new)
      If account already exists, the error message appears.
- [x] Your README.md includes a short description, install instructions, a contributors guide and a link to the license for your code

Confirm
- [x] You have a large number of small Git commits
- [x] Your commit messages are meaningful
- [x] You made the changes in a commit that relate to the commit message
- [x] You don't include changes in a commit that aren't related to the commit message