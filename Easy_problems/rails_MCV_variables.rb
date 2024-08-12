# Create the User model which creates the database schema

create_table "users", force: :cascade do |t|
  t.string "name"
  t.string "email"
  t.datetime "created_at", null: false
  t.datetime "updated_at", null: false
end

# Routes (notice the :users syntax)
# A resource in Rails is a collection of routes that map HTTP requests to 
# controller actions. The resource name typically corresponds to a model.
# resources :users generates a standard set of RESTful routes for the users 
#resource. This includes routes for common actions like index, show, new, edit, 
# create, update, and destroy.
Rails.application.routes.draw do
  resources :users
  root 'users#index'
end

# When you navigate to root, it pulls users index action in the controller
# The index action asks the User model to retrieve all users (User.all).
# Notice: User is a class so is capitalized in User.all. 
class UsersController < ApplicationController
  def index
    @users = User.all
  end
end

# The User model pulls all the users from the database.
# :name and :email represent the rows (or attribute) in the database for the User Model
class User < ApplicationRecord
  validates :name, presence: true, length: { maximum: 50 }
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
end

# The User model returns the list of users to the controller.

# The controller captures the users in the @users variable,which is passed to the index view.
class UsersController < ApplicationController
  def index
    @users = User.all
  end
end

# The view uses embedded Ruby to render the page as HTML.
<div id="users">
  <% @users.each do |user| %>
    <%= render user %>
    <p>
      <%= link_to "Show this user", user %>
    </p>
  <% end %>
</div>

# The controller passes the HTML back to the browser.