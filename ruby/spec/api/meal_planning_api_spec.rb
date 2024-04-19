=begin
#spoonacular API

#The spoonacular Nutrition, Recipe, and Food API allows you to access over thousands of recipes, thousands of ingredients, 800,000 food products, over 100,000 menu items, and restaurants. Our food ontology and semantic recipe search engine makes it possible to search for recipes using natural language queries, such as \"gluten free brownies without sugar\" or \"low fat vegan cupcakes.\" You can automatically calculate the nutritional information for any recipe, analyze recipe costs, visualize ingredient lists, find recipes for what's in your fridge, find recipes based on special diets, nutritional requirements, or favorite ingredients, classify recipes into types and cuisines, convert ingredient amounts, or even compute an entire meal plan. With our powerful API, you can create many kinds of food and especially nutrition apps.  Special diets/dietary requirements currently available include: vegan, vegetarian, pescetarian, gluten free, grain free, dairy free, high protein, whole 30, low sodium, low carb, Paleo, ketogenic, FODMAP, and Primal.

The version of the OpenAPI document: 1.1
Contact: mail@spoonacular.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.3.0

=end

require 'spec_helper'
require 'json'

# Unit tests for OpenapiClient::MealPlanningApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'MealPlanningApi' do
  before do
    # run before each test
    @api_instance = OpenapiClient::MealPlanningApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of MealPlanningApi' do
    it 'should create an instance of MealPlanningApi' do
      expect(@api_instance).to be_instance_of(OpenapiClient::MealPlanningApi)
    end
  end

  # unit tests for add_meal_plan_template
  # Add Meal Plan Template
  # Add a meal plan template for a user.
  # @param username The username.
  # @param hash The private hash for the username.
  # @param [Hash] opts the optional parameters
  # @return [AddMealPlanTemplate200Response]
  describe 'add_meal_plan_template test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for add_to_meal_plan
  # Add to Meal Plan
  # Add an item to the user&#39;s meal plan.
  # @param username The username.
  # @param hash The private hash for the username.
  # @param add_to_meal_plan_request 
  # @param [Hash] opts the optional parameters
  # @return [Object]
  describe 'add_to_meal_plan test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for add_to_shopping_list
  # Add to Shopping List
  # Add an item to the current shopping list of a user.
  # @param username The username.
  # @param hash The private hash for the username.
  # @param add_to_shopping_list_request 
  # @param [Hash] opts the optional parameters
  # @return [GenerateShoppingList200Response]
  describe 'add_to_shopping_list test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for clear_meal_plan_day
  # Clear Meal Plan Day
  # Delete all planned items from the user&#39;s meal plan for a specific day.
  # @param username The username.
  # @param date The date in the format yyyy-mm-dd.
  # @param hash The private hash for the username.
  # @param [Hash] opts the optional parameters
  # @return [Object]
  describe 'clear_meal_plan_day test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for connect_user
  # Connect User
  # In order to call user-specific endpoints, you need to connect your app&#39;s users to spoonacular users.
  # @param connect_user_request 
  # @param [Hash] opts the optional parameters
  # @return [ConnectUser200Response]
  describe 'connect_user test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_from_meal_plan
  # Delete from Meal Plan
  # Delete an item from the user&#39;s meal plan.
  # @param username The username.
  # @param id The shopping list item id.
  # @param hash The private hash for the username.
  # @param [Hash] opts the optional parameters
  # @return [Object]
  describe 'delete_from_meal_plan test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_from_shopping_list
  # Delete from Shopping List
  # Delete an item from the current shopping list of the user.
  # @param username The username.
  # @param id The item&#39;s id.
  # @param hash The private hash for the username.
  # @param [Hash] opts the optional parameters
  # @return [Object]
  describe 'delete_from_shopping_list test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_meal_plan_template
  # Delete Meal Plan Template
  # Delete a meal plan template for a user.
  # @param username The username.
  # @param id The item&#39;s id.
  # @param hash The private hash for the username.
  # @param [Hash] opts the optional parameters
  # @return [Object]
  describe 'delete_meal_plan_template test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for generate_meal_plan
  # Generate Meal Plan
  # Generate a meal plan with three meals per day (breakfast, lunch, and dinner).
  # @param [Hash] opts the optional parameters
  # @option opts [String] :time_frame Either for one \&quot;day\&quot; or an entire \&quot;week\&quot;.
  # @option opts [Float] :target_calories What is the caloric target for one day? The meal plan generator will try to get as close as possible to that goal.
  # @option opts [String] :diet Enter a diet that the meal plan has to adhere to. See a full list of supported diets.
  # @option opts [String] :exclude A comma-separated list of allergens or ingredients that must be excluded.
  # @return [GenerateMealPlan200Response]
  describe 'generate_meal_plan test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for generate_shopping_list
  # Generate Shopping List
  # Generate the shopping list for a user from the meal planner in a given time frame.
  # @param username The username.
  # @param start_date The start date in the format yyyy-mm-dd.
  # @param end_date The end date in the format yyyy-mm-dd.
  # @param hash The private hash for the username.
  # @param [Hash] opts the optional parameters
  # @return [GenerateShoppingList200Response]
  describe 'generate_shopping_list test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_meal_plan_template
  # Get Meal Plan Template
  # Get information about a meal plan template.
  # @param username The username.
  # @param id The item&#39;s id.
  # @param hash The private hash for the username.
  # @param [Hash] opts the optional parameters
  # @return [GetMealPlanTemplate200Response]
  describe 'get_meal_plan_template test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_meal_plan_templates
  # Get Meal Plan Templates
  # Get meal plan templates from user or public ones.
  # @param username The username.
  # @param hash The private hash for the username.
  # @param [Hash] opts the optional parameters
  # @return [GetMealPlanTemplates200Response]
  describe 'get_meal_plan_templates test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_meal_plan_week
  # Get Meal Plan Week
  # Retrieve a meal planned week for the given user. The username must be a spoonacular user and the hash must the the user&#39;s hash that can be found in his/her account.
  # @param username The username.
  # @param start_date The start date of the meal planned week in the format yyyy-mm-dd.
  # @param hash The private hash for the username.
  # @param [Hash] opts the optional parameters
  # @return [GetMealPlanWeek200Response]
  describe 'get_meal_plan_week test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_shopping_list
  # Get Shopping List
  # Get the current shopping list for the given user.
  # @param username The username.
  # @param hash The private hash for the username.
  # @param [Hash] opts the optional parameters
  # @return [GetShoppingList200Response]
  describe 'get_shopping_list test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
