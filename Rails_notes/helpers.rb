# In order to not clog up your html views with extra code, 
# you can create helpers that move the useful ruby code in
# a different location and then pysh the results to the views

# example of views >  about.html.erb
# the title "About" is provided to the next step in application.html.erb
<% provide(:title, "About") %>


# example of views > application.html.erb
# The title "about" is passed into the full_title method found in the
# application helper
<html>
  <head>
    <title><%= full_title(yield(:title)) %> </title> 


# example of app > helpers > application_helper.rb
# Because "about" is provided we use the else statement
def full_title(page_title = '')
  base_title = "Ruby on Rails Tutorial" 
  if page_title.empty?
      base_title
  else
      "#{page_title} | #{base_title}"
  end
end 




