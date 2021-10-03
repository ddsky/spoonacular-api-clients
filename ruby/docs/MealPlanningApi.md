# OpenapiClient::MealPlanningApi

All URIs are relative to *https://api.spoonacular.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_meal_plan_template**](MealPlanningApi.md#add_meal_plan_template) | **POST** /mealplanner/{username}/templates | Add Meal Plan Template
[**add_to_meal_plan**](MealPlanningApi.md#add_to_meal_plan) | **POST** /mealplanner/{username}/items | Add to Meal Plan
[**add_to_shopping_list**](MealPlanningApi.md#add_to_shopping_list) | **POST** /mealplanner/{username}/shopping-list/items | Add to Shopping List
[**clear_meal_plan_day**](MealPlanningApi.md#clear_meal_plan_day) | **DELETE** /mealplanner/{username}/day/{date} | Clear Meal Plan Day
[**connect_user**](MealPlanningApi.md#connect_user) | **POST** /users/connect | Connect User
[**delete_from_meal_plan**](MealPlanningApi.md#delete_from_meal_plan) | **DELETE** /mealplanner/{username}/items/{id} | Delete from Meal Plan
[**delete_from_shopping_list**](MealPlanningApi.md#delete_from_shopping_list) | **DELETE** /mealplanner/{username}/shopping-list/items/{id} | Delete from Shopping List
[**delete_meal_plan_template**](MealPlanningApi.md#delete_meal_plan_template) | **DELETE** /mealplanner/{username}/templates/{id} | Delete Meal Plan Template
[**generate_meal_plan**](MealPlanningApi.md#generate_meal_plan) | **GET** /mealplanner/generate | Generate Meal Plan
[**generate_shopping_list**](MealPlanningApi.md#generate_shopping_list) | **POST** /mealplanner/{username}/shopping-list/{start-date}/{end-date} | Generate Shopping List
[**get_meal_plan_template**](MealPlanningApi.md#get_meal_plan_template) | **GET** /mealplanner/{username}/templates/{id} | Get Meal Plan Template
[**get_meal_plan_templates**](MealPlanningApi.md#get_meal_plan_templates) | **GET** /mealplanner/{username}/templates | Get Meal Plan Templates
[**get_meal_plan_week**](MealPlanningApi.md#get_meal_plan_week) | **GET** /mealplanner/{username}/week/{start-date} | Get Meal Plan Week
[**get_shopping_list**](MealPlanningApi.md#get_shopping_list) | **GET** /mealplanner/{username}/shopping-list | Get Shopping List



## add_meal_plan_template

> InlineResponse20040 add_meal_plan_template(username, hash, inline_object6)

Add Meal Plan Template

Add a meal plan template for a user.

### Example

```ruby
# load the gem
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: apiKeyScheme
  config.api_key['apiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['apiKey'] = 'Bearer'
end

api_instance = OpenapiClient::MealPlanningApi.new
username = 'dsky' # String | The username.
hash = '4b5v4398573406' # String | The private hash for the username.
inline_object6 = OpenapiClient::InlineObject6.new # InlineObject6 | 

begin
  #Add Meal Plan Template
  result = api_instance.add_meal_plan_template(username, hash, inline_object6)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling MealPlanningApi->add_meal_plan_template: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**| The username. | 
 **hash** | **String**| The private hash for the username. | 
 **inline_object6** | [**InlineObject6**](InlineObject6.md)|  | 

### Return type

[**InlineResponse20040**](InlineResponse20040.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: 
- **Accept**: application/json


## add_to_meal_plan

> Object add_to_meal_plan(username, hash, inline_object4)

Add to Meal Plan

Add an item to the user's meal plan.

### Example

```ruby
# load the gem
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: apiKeyScheme
  config.api_key['apiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['apiKey'] = 'Bearer'
end

api_instance = OpenapiClient::MealPlanningApi.new
username = 'dsky' # String | The username.
hash = 'hash_example' # String | The private hash for the username.
inline_object4 = OpenapiClient::InlineObject4.new # InlineObject4 | 

begin
  #Add to Meal Plan
  result = api_instance.add_to_meal_plan(username, hash, inline_object4)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling MealPlanningApi->add_to_meal_plan: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**| The username. | 
 **hash** | **String**| The private hash for the username. | 
 **inline_object4** | [**InlineObject4**](InlineObject4.md)|  | 

### Return type

**Object**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: , application/json
- **Accept**: application/json


## add_to_shopping_list

> InlineResponse20042 add_to_shopping_list(username, hash, inline_object9)

Add to Shopping List

Add an item to the current shopping list of a user.

### Example

```ruby
# load the gem
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: apiKeyScheme
  config.api_key['apiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['apiKey'] = 'Bearer'
end

api_instance = OpenapiClient::MealPlanningApi.new
username = 'dsky' # String | The username.
hash = 'hash_example' # String | The private hash for the username.
inline_object9 = OpenapiClient::InlineObject9.new # InlineObject9 | 

begin
  #Add to Shopping List
  result = api_instance.add_to_shopping_list(username, hash, inline_object9)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling MealPlanningApi->add_to_shopping_list: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**| The username. | 
 **hash** | **String**| The private hash for the username. | 
 **inline_object9** | [**InlineObject9**](InlineObject9.md)|  | 

### Return type

[**InlineResponse20042**](InlineResponse20042.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: , application/json
- **Accept**: application/json


## clear_meal_plan_day

> Object clear_meal_plan_day(username, date, hash, inline_object3)

Clear Meal Plan Day

Delete all planned items from the user's meal plan for a specific day.

### Example

```ruby
# load the gem
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: apiKeyScheme
  config.api_key['apiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['apiKey'] = 'Bearer'
end

api_instance = OpenapiClient::MealPlanningApi.new
username = 'dsky' # String | The username.
date = '2020-06-01' # String | The date in the format yyyy-mm-dd.
hash = 'hash_example' # String | The private hash for the username.
inline_object3 = OpenapiClient::InlineObject3.new # InlineObject3 | 

begin
  #Clear Meal Plan Day
  result = api_instance.clear_meal_plan_day(username, date, hash, inline_object3)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling MealPlanningApi->clear_meal_plan_day: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**| The username. | 
 **date** | **String**| The date in the format yyyy-mm-dd. | 
 **hash** | **String**| The private hash for the username. | 
 **inline_object3** | [**InlineObject3**](InlineObject3.md)|  | 

### Return type

**Object**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: 
- **Accept**: application/json


## connect_user

> InlineResponse20043 connect_user(body)

Connect User

In order to call user-specific endpoints, you need to connect your app's users to spoonacular users.

### Example

```ruby
# load the gem
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: apiKeyScheme
  config.api_key['apiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['apiKey'] = 'Bearer'
end

api_instance = OpenapiClient::MealPlanningApi.new
body = nil # Object | 

begin
  #Connect User
  result = api_instance.connect_user(body)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling MealPlanningApi->connect_user: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | **Object**|  | 

### Return type

[**InlineResponse20043**](InlineResponse20043.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: , application/json
- **Accept**: application/json


## delete_from_meal_plan

> Object delete_from_meal_plan(username, id, hash, inline_object5)

Delete from Meal Plan

Delete an item from the user's meal plan.

### Example

```ruby
# load the gem
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: apiKeyScheme
  config.api_key['apiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['apiKey'] = 'Bearer'
end

api_instance = OpenapiClient::MealPlanningApi.new
username = 'dsky' # String | The username.
id = 15678 # Float | The shopping list item id.
hash = 'hash_example' # String | The private hash for the username.
inline_object5 = OpenapiClient::InlineObject5.new # InlineObject5 | 

begin
  #Delete from Meal Plan
  result = api_instance.delete_from_meal_plan(username, id, hash, inline_object5)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling MealPlanningApi->delete_from_meal_plan: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**| The username. | 
 **id** | **Float**| The shopping list item id. | 
 **hash** | **String**| The private hash for the username. | 
 **inline_object5** | [**InlineObject5**](InlineObject5.md)|  | 

### Return type

**Object**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: 
- **Accept**: application/json


## delete_from_shopping_list

> Object delete_from_shopping_list(username, id, hash, inline_object10)

Delete from Shopping List

Delete an item from the current shopping list of the user.

### Example

```ruby
# load the gem
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: apiKeyScheme
  config.api_key['apiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['apiKey'] = 'Bearer'
end

api_instance = OpenapiClient::MealPlanningApi.new
username = 'dsky' # String | The username.
id = 1 # Integer | The item's id.
hash = 'hash_example' # String | The private hash for the username.
inline_object10 = OpenapiClient::InlineObject10.new # InlineObject10 | 

begin
  #Delete from Shopping List
  result = api_instance.delete_from_shopping_list(username, id, hash, inline_object10)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling MealPlanningApi->delete_from_shopping_list: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**| The username. | 
 **id** | **Integer**| The item&#39;s id. | 
 **hash** | **String**| The private hash for the username. | 
 **inline_object10** | [**InlineObject10**](InlineObject10.md)|  | 

### Return type

**Object**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: 
- **Accept**: application/json


## delete_meal_plan_template

> Object delete_meal_plan_template(username, id, hash, inline_object7)

Delete Meal Plan Template

Delete a meal plan template for a user.

### Example

```ruby
# load the gem
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: apiKeyScheme
  config.api_key['apiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['apiKey'] = 'Bearer'
end

api_instance = OpenapiClient::MealPlanningApi.new
username = 'dsky' # String | The username.
id = 1 # Integer | The item's id.
hash = '4b5v4398573406' # String | The private hash for the username.
inline_object7 = OpenapiClient::InlineObject7.new # InlineObject7 | 

begin
  #Delete Meal Plan Template
  result = api_instance.delete_meal_plan_template(username, id, hash, inline_object7)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling MealPlanningApi->delete_meal_plan_template: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**| The username. | 
 **id** | **Integer**| The item&#39;s id. | 
 **hash** | **String**| The private hash for the username. | 
 **inline_object7** | [**InlineObject7**](InlineObject7.md)|  | 

### Return type

**Object**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: 
- **Accept**: application/json


## generate_meal_plan

> InlineResponse20037 generate_meal_plan(opts)

Generate Meal Plan

Generate a meal plan with three meals per day (breakfast, lunch, and dinner).

### Example

```ruby
# load the gem
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: apiKeyScheme
  config.api_key['apiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['apiKey'] = 'Bearer'
end

api_instance = OpenapiClient::MealPlanningApi.new
opts = {
  time_frame: 'day', # String | Either for one \"day\" or an entire \"week\".
  target_calories: 2000, # Float | What is the caloric target for one day? The meal plan generator will try to get as close as possible to that goal.
  diet: 'vegetarian', # String | Enter a diet that the meal plan has to adhere to. See a full list of supported diets.
  exclude: 'shellfish, olives' # String | A comma-separated list of allergens or ingredients that must be excluded.
}

begin
  #Generate Meal Plan
  result = api_instance.generate_meal_plan(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling MealPlanningApi->generate_meal_plan: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **time_frame** | **String**| Either for one \&quot;day\&quot; or an entire \&quot;week\&quot;. | [optional] 
 **target_calories** | **Float**| What is the caloric target for one day? The meal plan generator will try to get as close as possible to that goal. | [optional] 
 **diet** | **String**| Enter a diet that the meal plan has to adhere to. See a full list of supported diets. | [optional] 
 **exclude** | **String**| A comma-separated list of allergens or ingredients that must be excluded. | [optional] 

### Return type

[**InlineResponse20037**](InlineResponse20037.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## generate_shopping_list

> InlineResponse20042 generate_shopping_list(username, start_date, end_date, hash, inline_object8)

Generate Shopping List

Generate the shopping list for a user from the meal planner in a given time frame.

### Example

```ruby
# load the gem
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: apiKeyScheme
  config.api_key['apiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['apiKey'] = 'Bearer'
end

api_instance = OpenapiClient::MealPlanningApi.new
username = 'dsky' # String | The username.
start_date = '2020-06-01' # String | The start date in the format yyyy-mm-dd.
end_date = '2020-06-07' # String | The end date in the format yyyy-mm-dd.
hash = 'hash_example' # String | The private hash for the username.
inline_object8 = OpenapiClient::InlineObject8.new # InlineObject8 | 

begin
  #Generate Shopping List
  result = api_instance.generate_shopping_list(username, start_date, end_date, hash, inline_object8)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling MealPlanningApi->generate_shopping_list: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**| The username. | 
 **start_date** | **String**| The start date in the format yyyy-mm-dd. | 
 **end_date** | **String**| The end date in the format yyyy-mm-dd. | 
 **hash** | **String**| The private hash for the username. | 
 **inline_object8** | [**InlineObject8**](InlineObject8.md)|  | 

### Return type

[**InlineResponse20042**](InlineResponse20042.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: 
- **Accept**: application/json


## get_meal_plan_template

> InlineResponse20041 get_meal_plan_template(username, id, hash)

Get Meal Plan Template

Get information about a meal plan template.

### Example

```ruby
# load the gem
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: apiKeyScheme
  config.api_key['apiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['apiKey'] = 'Bearer'
end

api_instance = OpenapiClient::MealPlanningApi.new
username = 'dsky' # String | The username.
id = 1 # Integer | The item's id.
hash = 'hash_example' # String | The private hash for the username.

begin
  #Get Meal Plan Template
  result = api_instance.get_meal_plan_template(username, id, hash)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling MealPlanningApi->get_meal_plan_template: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**| The username. | 
 **id** | **Integer**| The item&#39;s id. | 
 **hash** | **String**| The private hash for the username. | 

### Return type

[**InlineResponse20041**](InlineResponse20041.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_meal_plan_templates

> InlineResponse20039 get_meal_plan_templates(username, hash)

Get Meal Plan Templates

Get meal plan templates from user or public ones.

### Example

```ruby
# load the gem
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: apiKeyScheme
  config.api_key['apiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['apiKey'] = 'Bearer'
end

api_instance = OpenapiClient::MealPlanningApi.new
username = 'dsky' # String | The username.
hash = 'hash_example' # String | The private hash for the username.

begin
  #Get Meal Plan Templates
  result = api_instance.get_meal_plan_templates(username, hash)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling MealPlanningApi->get_meal_plan_templates: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**| The username. | 
 **hash** | **String**| The private hash for the username. | 

### Return type

[**InlineResponse20039**](InlineResponse20039.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_meal_plan_week

> InlineResponse20038 get_meal_plan_week(username, start_date, hash)

Get Meal Plan Week

Retrieve a meal planned week for the given user. The username must be a spoonacular user and the hash must the the user's hash that can be found in his/her account.

### Example

```ruby
# load the gem
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: apiKeyScheme
  config.api_key['apiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['apiKey'] = 'Bearer'
end

api_instance = OpenapiClient::MealPlanningApi.new
username = 'dsky' # String | The username.
start_date = '2020-06-01' # String | The start date of the meal planned week in the format yyyy-mm-dd.
hash = 'hash_example' # String | The private hash for the username.

begin
  #Get Meal Plan Week
  result = api_instance.get_meal_plan_week(username, start_date, hash)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling MealPlanningApi->get_meal_plan_week: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**| The username. | 
 **start_date** | **String**| The start date of the meal planned week in the format yyyy-mm-dd. | 
 **hash** | **String**| The private hash for the username. | 

### Return type

[**InlineResponse20038**](InlineResponse20038.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_shopping_list

> InlineResponse20042 get_shopping_list(username, hash)

Get Shopping List

Get the current shopping list for the given user.

### Example

```ruby
# load the gem
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: apiKeyScheme
  config.api_key['apiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['apiKey'] = 'Bearer'
end

api_instance = OpenapiClient::MealPlanningApi.new
username = 'dsky' # String | The username.
hash = 'hash_example' # String | The private hash for the username.

begin
  #Get Shopping List
  result = api_instance.get_shopping_list(username, hash)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling MealPlanningApi->get_shopping_list: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**| The username. | 
 **hash** | **String**| The private hash for the username. | 

### Return type

[**InlineResponse20042**](InlineResponse20042.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

