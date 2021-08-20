Specs:

 X Using Ruby on Rails for the project
    I am using Ruby on Rails. I used the rails new generator to create my project.

 X Include at least one has_many relationship (x has_many y; e.g. User has_many Recipes)
    A giver has_many gifts.

 X Include at least one belongs_to relationship (x belongs_to y; e.g. Post belongs_to User)
    A gift belongs_to a giver.

 X Include at least two has_many through relationships (x has_many y through z; e.g. Recipe has_many Items through Ingredients)
    A giver has_many recipients through gifts.

 X Include at least one many-to-many relationship (x has_many y through z, y has_many x through z; e.g. Recipe has_many Items through Ingredients, Item has_many Recipes through Ingredients)
    A giver has_many recipients through gifts. A recipient has_many givers through gifts.

 X The "through" part of the has_many through includes at least one user submittable attribute, that is to say, some attribute other than its foreign keys that can be submitted by the app's user (attribute_name e.g. ingredients.quantity)
    The gift model is the join table, containing giver_ids and recipient_ids, and also has a "name" attribute.
 
 X Include reasonable validations for simple model objects (list of model objects with validations e.g. User, Recipe, Ingredient, Item)
   Validations are present on Giver, Gift and Recipient models.

 Include a class level ActiveRecord scope method (model object & class method name and URL to see the working feature e.g. User.most_recipes URL: /users/most_recipes)
 
 X Include signup
   A signup route leads to givers#new, which has a view and is handled by the Givers controller.

 X Include login
   The login route leads to sessions#new, which has a view and posts to sessions#create.

 X Include logout
   The logout route leads to sessions#destroy, which logs out the user by eliminating their user_id from the session hash.
   
 Include third party signup/login (how e.g. Devise/OmniAuth)
 Include nested resource show or index (URL e.g. users/2/recipes)
 Include nested resource "new" form (URL e.g. recipes/1/ingredients/new)
 Include form display of validation errors (form URL e.g. /recipes/new)
Confirm:

 The application is pretty DRY
 Limited logic in controllers
 Views use helper methods if appropriate
 Views use partials if appropriate