# OpenapiClient::MealPlanningApi

All URIs are relative to *https://api.spoonacular.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_meal_plan_template**](MealPlanningApi.md#add_meal_plan_template) | **POST** /mealplanner/{username}/templates | Add Meal Plan Template |
| [**add_to_meal_plan**](MealPlanningApi.md#add_to_meal_plan) | **POST** /mealplanner/{username}/items | Add to Meal Plan |
| [**add_to_shopping_list**](MealPlanningApi.md#add_to_shopping_list) | **POST** /mealplanner/{username}/shopping-list/items | Add to Shopping List |
| [**clear_meal_plan_day**](MealPlanningApi.md#clear_meal_plan_day) | **DELETE** /mealplanner/{username}/day/{date} | Clear Meal Plan Day |
| [**connect_user**](MealPlanningApi.md#connect_user) | **POST** /users/connect | Connect User |
| [**delete_from_meal_plan**](MealPlanningApi.md#delete_from_meal_plan) | **DELETE** /mealplanner/{username}/items/{id} | Delete from Meal Plan |
| [**delete_from_shopping_list**](MealPlanningApi.md#delete_from_shopping_list) | **DELETE** /mealplanner/{username}/shopping-list/items/{id} | Delete from Shopping List |
| [**delete_meal_plan_template**](MealPlanningApi.md#delete_meal_plan_template) | **DELETE** /mealplanner/{username}/templates/{id} | Delete Meal Plan Template |
| [**generate_meal_plan**](MealPlanningApi.md#generate_meal_plan) | **GET** /mealplanner/generate | Generate Meal Plan |
| [**generate_shopping_list**](MealPlanningApi.md#generate_shopping_list) | **POST** /mealplanner/{username}/shopping-list/{start-date}/{end-date} | Generate Shopping List |
| [**get_meal_plan_template**](MealPlanningApi.md#get_meal_plan_template) | **GET** /mealplanner/{username}/templates/{id} | Get Meal Plan Template |
| [**get_meal_plan_templates**](MealPlanningApi.md#get_meal_plan_templates) | **GET** /mealplanner/{username}/templates | Get Meal Plan Templates |
| [**get_meal_plan_week**](MealPlanningApi.md#get_meal_plan_week) | **GET** /mealplanner/{username}/week/{start-date} | Get Meal Plan Week |
| [**get_shopping_list**](MealPlanningApi.md#get_shopping_list) | **GET** /mealplanner/{username}/shopping-list | Get Shopping List |


## add_meal_plan_template

> <AddMealPlanTemplate200Response> add_meal_plan_template(username, hash, add_to_meal_plan_request)

Add Meal Plan Template

Add a meal plan template for a user.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: apiKeyScheme
  config.api_key['apiKeyScheme'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['apiKeyScheme'] = 'Bearer'
end

api_instance = OpenapiClient::MealPlanningApi.new
username = 'dsky' # String | The username.
hash = '4b5v4398573406' # String | The private hash for the username.
add_to_meal_plan_request = OpenapiClient::AddToMealPlanRequest.new({username: 'dsky', hash: '4b5v4398573406'}) # AddToMealPlanRequest | 

begin
  # Add Meal Plan Template
  result = api_instance.add_meal_plan_template(username, hash, add_to_meal_plan_request)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling MealPlanningApi->add_meal_plan_template: #{e}"
end
```

#### Using the add_meal_plan_template_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AddMealPlanTemplate200Response>, Integer, Hash)> add_meal_plan_template_with_http_info(username, hash, add_to_meal_plan_request)

```ruby
begin
  # Add Meal Plan Template
  data, status_code, headers = api_instance.add_meal_plan_template_with_http_info(username, hash, add_to_meal_plan_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AddMealPlanTemplate200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling MealPlanningApi->add_meal_plan_template_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **username** | **String** | The username. |  |
| **hash** | **String** | The private hash for the username. |  |
| **add_to_meal_plan_request** | [**AddToMealPlanRequest**](AddToMealPlanRequest.md) |  |  |

### Return type

[**AddMealPlanTemplate200Response**](AddMealPlanTemplate200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: 
- **Accept**: application/json


## add_to_meal_plan

> Object add_to_meal_plan(username, hash, add_to_meal_plan_request)

Add to Meal Plan

Add an item to the user's meal plan.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: apiKeyScheme
  config.api_key['apiKeyScheme'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['apiKeyScheme'] = 'Bearer'
end

api_instance = OpenapiClient::MealPlanningApi.new
username = 'dsky' # String | The username.
hash = 'hash_example' # String | The private hash for the username.
add_to_meal_plan_request = OpenapiClient::AddToMealPlanRequest.new({username: 'dsky', hash: '4b5v4398573406'}) # AddToMealPlanRequest | 

begin
  # Add to Meal Plan
  result = api_instance.add_to_meal_plan(username, hash, add_to_meal_plan_request)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling MealPlanningApi->add_to_meal_plan: #{e}"
end
```

#### Using the add_to_meal_plan_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> add_to_meal_plan_with_http_info(username, hash, add_to_meal_plan_request)

```ruby
begin
  # Add to Meal Plan
  data, status_code, headers = api_instance.add_to_meal_plan_with_http_info(username, hash, add_to_meal_plan_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue OpenapiClient::ApiError => e
  puts "Error when calling MealPlanningApi->add_to_meal_plan_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **username** | **String** | The username. |  |
| **hash** | **String** | The private hash for the username. |  |
| **add_to_meal_plan_request** | [**AddToMealPlanRequest**](AddToMealPlanRequest.md) |  |  |

### Return type

**Object**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: , application/json
- **Accept**: application/json


## add_to_shopping_list

> <GenerateShoppingList200Response> add_to_shopping_list(username, hash, add_to_meal_plan_request)

Add to Shopping List

Add an item to the current shopping list of a user.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: apiKeyScheme
  config.api_key['apiKeyScheme'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['apiKeyScheme'] = 'Bearer'
end

api_instance = OpenapiClient::MealPlanningApi.new
username = 'dsky' # String | The username.
hash = 'hash_example' # String | The private hash for the username.
add_to_meal_plan_request = OpenapiClient::AddToMealPlanRequest.new({username: 'dsky', hash: '4b5v4398573406'}) # AddToMealPlanRequest | 

begin
  # Add to Shopping List
  result = api_instance.add_to_shopping_list(username, hash, add_to_meal_plan_request)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling MealPlanningApi->add_to_shopping_list: #{e}"
end
```

#### Using the add_to_shopping_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GenerateShoppingList200Response>, Integer, Hash)> add_to_shopping_list_with_http_info(username, hash, add_to_meal_plan_request)

```ruby
begin
  # Add to Shopping List
  data, status_code, headers = api_instance.add_to_shopping_list_with_http_info(username, hash, add_to_meal_plan_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GenerateShoppingList200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling MealPlanningApi->add_to_shopping_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **username** | **String** | The username. |  |
| **hash** | **String** | The private hash for the username. |  |
| **add_to_meal_plan_request** | [**AddToMealPlanRequest**](AddToMealPlanRequest.md) |  |  |

### Return type

[**GenerateShoppingList200Response**](GenerateShoppingList200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: , application/json
- **Accept**: application/json


## clear_meal_plan_day

> Object clear_meal_plan_day(username, date, hash, clear_meal_plan_day_request)

Clear Meal Plan Day

Delete all planned items from the user's meal plan for a specific day.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: apiKeyScheme
  config.api_key['apiKeyScheme'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['apiKeyScheme'] = 'Bearer'
end

api_instance = OpenapiClient::MealPlanningApi.new
username = 'dsky' # String | The username.
date = '2020-06-01' # String | The date in the format yyyy-mm-dd.
hash = 'hash_example' # String | The private hash for the username.
clear_meal_plan_day_request = OpenapiClient::ClearMealPlanDayRequest.new({username: 'dsky', date: '2020-06-01', hash: '4b5v4398573406'}) # ClearMealPlanDayRequest | 

begin
  # Clear Meal Plan Day
  result = api_instance.clear_meal_plan_day(username, date, hash, clear_meal_plan_day_request)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling MealPlanningApi->clear_meal_plan_day: #{e}"
end
```

#### Using the clear_meal_plan_day_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> clear_meal_plan_day_with_http_info(username, date, hash, clear_meal_plan_day_request)

```ruby
begin
  # Clear Meal Plan Day
  data, status_code, headers = api_instance.clear_meal_plan_day_with_http_info(username, date, hash, clear_meal_plan_day_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue OpenapiClient::ApiError => e
  puts "Error when calling MealPlanningApi->clear_meal_plan_day_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **username** | **String** | The username. |  |
| **date** | **String** | The date in the format yyyy-mm-dd. |  |
| **hash** | **String** | The private hash for the username. |  |
| **clear_meal_plan_day_request** | [**ClearMealPlanDayRequest**](ClearMealPlanDayRequest.md) |  |  |

### Return type

**Object**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: 
- **Accept**: application/json


## connect_user

> <ConnectUser200Response> connect_user(body)

Connect User

In order to call user-specific endpoints, you need to connect your app's users to spoonacular users.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: apiKeyScheme
  config.api_key['apiKeyScheme'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['apiKeyScheme'] = 'Bearer'
end

api_instance = OpenapiClient::MealPlanningApi.new
body = { ... } # Object | 

begin
  # Connect User
  result = api_instance.connect_user(body)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling MealPlanningApi->connect_user: #{e}"
end
```

#### Using the connect_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ConnectUser200Response>, Integer, Hash)> connect_user_with_http_info(body)

```ruby
begin
  # Connect User
  data, status_code, headers = api_instance.connect_user_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ConnectUser200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling MealPlanningApi->connect_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | **Object** |  |  |

### Return type

[**ConnectUser200Response**](ConnectUser200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: , application/json
- **Accept**: application/json


## delete_from_meal_plan

> Object delete_from_meal_plan(username, id, hash, delete_from_meal_plan_request)

Delete from Meal Plan

Delete an item from the user's meal plan.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: apiKeyScheme
  config.api_key['apiKeyScheme'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['apiKeyScheme'] = 'Bearer'
end

api_instance = OpenapiClient::MealPlanningApi.new
username = 'dsky' # String | The username.
id = 15678 # Float | The shopping list item id.
hash = 'hash_example' # String | The private hash for the username.
delete_from_meal_plan_request = OpenapiClient::DeleteFromMealPlanRequest.new({username: 'dsky', id: 15678, hash: '4b5v4398573406'}) # DeleteFromMealPlanRequest | 

begin
  # Delete from Meal Plan
  result = api_instance.delete_from_meal_plan(username, id, hash, delete_from_meal_plan_request)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling MealPlanningApi->delete_from_meal_plan: #{e}"
end
```

#### Using the delete_from_meal_plan_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> delete_from_meal_plan_with_http_info(username, id, hash, delete_from_meal_plan_request)

```ruby
begin
  # Delete from Meal Plan
  data, status_code, headers = api_instance.delete_from_meal_plan_with_http_info(username, id, hash, delete_from_meal_plan_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue OpenapiClient::ApiError => e
  puts "Error when calling MealPlanningApi->delete_from_meal_plan_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **username** | **String** | The username. |  |
| **id** | **Float** | The shopping list item id. |  |
| **hash** | **String** | The private hash for the username. |  |
| **delete_from_meal_plan_request** | [**DeleteFromMealPlanRequest**](DeleteFromMealPlanRequest.md) |  |  |

### Return type

**Object**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: 
- **Accept**: application/json


## delete_from_shopping_list

> Object delete_from_shopping_list(username, id, hash, delete_from_meal_plan_request)

Delete from Shopping List

Delete an item from the current shopping list of the user.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: apiKeyScheme
  config.api_key['apiKeyScheme'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['apiKeyScheme'] = 'Bearer'
end

api_instance = OpenapiClient::MealPlanningApi.new
username = 'dsky' # String | The username.
id = 1 # Integer | The item's id.
hash = 'hash_example' # String | The private hash for the username.
delete_from_meal_plan_request = OpenapiClient::DeleteFromMealPlanRequest.new({username: 'dsky', id: 15678, hash: '4b5v4398573406'}) # DeleteFromMealPlanRequest | 

begin
  # Delete from Shopping List
  result = api_instance.delete_from_shopping_list(username, id, hash, delete_from_meal_plan_request)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling MealPlanningApi->delete_from_shopping_list: #{e}"
end
```

#### Using the delete_from_shopping_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> delete_from_shopping_list_with_http_info(username, id, hash, delete_from_meal_plan_request)

```ruby
begin
  # Delete from Shopping List
  data, status_code, headers = api_instance.delete_from_shopping_list_with_http_info(username, id, hash, delete_from_meal_plan_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue OpenapiClient::ApiError => e
  puts "Error when calling MealPlanningApi->delete_from_shopping_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **username** | **String** | The username. |  |
| **id** | **Integer** | The item&#39;s id. |  |
| **hash** | **String** | The private hash for the username. |  |
| **delete_from_meal_plan_request** | [**DeleteFromMealPlanRequest**](DeleteFromMealPlanRequest.md) |  |  |

### Return type

**Object**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: 
- **Accept**: application/json


## delete_meal_plan_template

> Object delete_meal_plan_template(username, id, hash, delete_from_meal_plan_request)

Delete Meal Plan Template

Delete a meal plan template for a user.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: apiKeyScheme
  config.api_key['apiKeyScheme'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['apiKeyScheme'] = 'Bearer'
end

api_instance = OpenapiClient::MealPlanningApi.new
username = 'dsky' # String | The username.
id = 1 # Integer | The item's id.
hash = '4b5v4398573406' # String | The private hash for the username.
delete_from_meal_plan_request = OpenapiClient::DeleteFromMealPlanRequest.new({username: 'dsky', id: 15678, hash: '4b5v4398573406'}) # DeleteFromMealPlanRequest | 

begin
  # Delete Meal Plan Template
  result = api_instance.delete_meal_plan_template(username, id, hash, delete_from_meal_plan_request)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling MealPlanningApi->delete_meal_plan_template: #{e}"
end
```

#### Using the delete_meal_plan_template_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> delete_meal_plan_template_with_http_info(username, id, hash, delete_from_meal_plan_request)

```ruby
begin
  # Delete Meal Plan Template
  data, status_code, headers = api_instance.delete_meal_plan_template_with_http_info(username, id, hash, delete_from_meal_plan_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue OpenapiClient::ApiError => e
  puts "Error when calling MealPlanningApi->delete_meal_plan_template_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **username** | **String** | The username. |  |
| **id** | **Integer** | The item&#39;s id. |  |
| **hash** | **String** | The private hash for the username. |  |
| **delete_from_meal_plan_request** | [**DeleteFromMealPlanRequest**](DeleteFromMealPlanRequest.md) |  |  |

### Return type

**Object**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: 
- **Accept**: application/json


## generate_meal_plan

> <GenerateMealPlan200Response> generate_meal_plan(opts)

Generate Meal Plan

Generate a meal plan with three meals per day (breakfast, lunch, and dinner).

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: apiKeyScheme
  config.api_key['apiKeyScheme'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['apiKeyScheme'] = 'Bearer'
end

api_instance = OpenapiClient::MealPlanningApi.new
opts = {
  time_frame: 'day', # String | Either for one \"day\" or an entire \"week\".
  target_calories: 2000, # Float | What is the caloric target for one day? The meal plan generator will try to get as close as possible to that goal.
  diet: 'vegetarian', # String | Enter a diet that the meal plan has to adhere to. See a full list of supported diets.
  exclude: 'shellfish, olives' # String | A comma-separated list of allergens or ingredients that must be excluded.
}

begin
  # Generate Meal Plan
  result = api_instance.generate_meal_plan(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling MealPlanningApi->generate_meal_plan: #{e}"
end
```

#### Using the generate_meal_plan_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GenerateMealPlan200Response>, Integer, Hash)> generate_meal_plan_with_http_info(opts)

```ruby
begin
  # Generate Meal Plan
  data, status_code, headers = api_instance.generate_meal_plan_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GenerateMealPlan200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling MealPlanningApi->generate_meal_plan_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **time_frame** | **String** | Either for one \&quot;day\&quot; or an entire \&quot;week\&quot;. | [optional] |
| **target_calories** | **Float** | What is the caloric target for one day? The meal plan generator will try to get as close as possible to that goal. | [optional] |
| **diet** | **String** | Enter a diet that the meal plan has to adhere to. See a full list of supported diets. | [optional] |
| **exclude** | **String** | A comma-separated list of allergens or ingredients that must be excluded. | [optional] |

### Return type

[**GenerateMealPlan200Response**](GenerateMealPlan200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## generate_shopping_list

> <GenerateShoppingList200Response> generate_shopping_list(username, start_date, end_date, hash, generate_shopping_list_request)

Generate Shopping List

Generate the shopping list for a user from the meal planner in a given time frame.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: apiKeyScheme
  config.api_key['apiKeyScheme'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['apiKeyScheme'] = 'Bearer'
end

api_instance = OpenapiClient::MealPlanningApi.new
username = 'dsky' # String | The username.
start_date = '2020-06-01' # String | The start date in the format yyyy-mm-dd.
end_date = '2020-06-07' # String | The end date in the format yyyy-mm-dd.
hash = 'hash_example' # String | The private hash for the username.
generate_shopping_list_request = OpenapiClient::GenerateShoppingListRequest.new({username: 'dsky', start_date: '2020-06-01', end_date: '2020-06-07', hash: '4b5v4398573406'}) # GenerateShoppingListRequest | 

begin
  # Generate Shopping List
  result = api_instance.generate_shopping_list(username, start_date, end_date, hash, generate_shopping_list_request)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling MealPlanningApi->generate_shopping_list: #{e}"
end
```

#### Using the generate_shopping_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GenerateShoppingList200Response>, Integer, Hash)> generate_shopping_list_with_http_info(username, start_date, end_date, hash, generate_shopping_list_request)

```ruby
begin
  # Generate Shopping List
  data, status_code, headers = api_instance.generate_shopping_list_with_http_info(username, start_date, end_date, hash, generate_shopping_list_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GenerateShoppingList200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling MealPlanningApi->generate_shopping_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **username** | **String** | The username. |  |
| **start_date** | **String** | The start date in the format yyyy-mm-dd. |  |
| **end_date** | **String** | The end date in the format yyyy-mm-dd. |  |
| **hash** | **String** | The private hash for the username. |  |
| **generate_shopping_list_request** | [**GenerateShoppingListRequest**](GenerateShoppingListRequest.md) |  |  |

### Return type

[**GenerateShoppingList200Response**](GenerateShoppingList200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: 
- **Accept**: application/json


## get_meal_plan_template

> <GetMealPlanTemplate200Response> get_meal_plan_template(username, id, hash)

Get Meal Plan Template

Get information about a meal plan template.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: apiKeyScheme
  config.api_key['apiKeyScheme'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['apiKeyScheme'] = 'Bearer'
end

api_instance = OpenapiClient::MealPlanningApi.new
username = 'dsky' # String | The username.
id = 1 # Integer | The item's id.
hash = 'hash_example' # String | The private hash for the username.

begin
  # Get Meal Plan Template
  result = api_instance.get_meal_plan_template(username, id, hash)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling MealPlanningApi->get_meal_plan_template: #{e}"
end
```

#### Using the get_meal_plan_template_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetMealPlanTemplate200Response>, Integer, Hash)> get_meal_plan_template_with_http_info(username, id, hash)

```ruby
begin
  # Get Meal Plan Template
  data, status_code, headers = api_instance.get_meal_plan_template_with_http_info(username, id, hash)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetMealPlanTemplate200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling MealPlanningApi->get_meal_plan_template_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **username** | **String** | The username. |  |
| **id** | **Integer** | The item&#39;s id. |  |
| **hash** | **String** | The private hash for the username. |  |

### Return type

[**GetMealPlanTemplate200Response**](GetMealPlanTemplate200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_meal_plan_templates

> <GetMealPlanTemplates200Response> get_meal_plan_templates(username, hash)

Get Meal Plan Templates

Get meal plan templates from user or public ones.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: apiKeyScheme
  config.api_key['apiKeyScheme'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['apiKeyScheme'] = 'Bearer'
end

api_instance = OpenapiClient::MealPlanningApi.new
username = 'dsky' # String | The username.
hash = 'hash_example' # String | The private hash for the username.

begin
  # Get Meal Plan Templates
  result = api_instance.get_meal_plan_templates(username, hash)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling MealPlanningApi->get_meal_plan_templates: #{e}"
end
```

#### Using the get_meal_plan_templates_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetMealPlanTemplates200Response>, Integer, Hash)> get_meal_plan_templates_with_http_info(username, hash)

```ruby
begin
  # Get Meal Plan Templates
  data, status_code, headers = api_instance.get_meal_plan_templates_with_http_info(username, hash)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetMealPlanTemplates200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling MealPlanningApi->get_meal_plan_templates_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **username** | **String** | The username. |  |
| **hash** | **String** | The private hash for the username. |  |

### Return type

[**GetMealPlanTemplates200Response**](GetMealPlanTemplates200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_meal_plan_week

> <GetMealPlanWeek200Response> get_meal_plan_week(username, start_date, hash)

Get Meal Plan Week

Retrieve a meal planned week for the given user. The username must be a spoonacular user and the hash must the the user's hash that can be found in his/her account.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: apiKeyScheme
  config.api_key['apiKeyScheme'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['apiKeyScheme'] = 'Bearer'
end

api_instance = OpenapiClient::MealPlanningApi.new
username = 'dsky' # String | The username.
start_date = '2020-06-01' # String | The start date of the meal planned week in the format yyyy-mm-dd.
hash = 'hash_example' # String | The private hash for the username.

begin
  # Get Meal Plan Week
  result = api_instance.get_meal_plan_week(username, start_date, hash)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling MealPlanningApi->get_meal_plan_week: #{e}"
end
```

#### Using the get_meal_plan_week_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetMealPlanWeek200Response>, Integer, Hash)> get_meal_plan_week_with_http_info(username, start_date, hash)

```ruby
begin
  # Get Meal Plan Week
  data, status_code, headers = api_instance.get_meal_plan_week_with_http_info(username, start_date, hash)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetMealPlanWeek200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling MealPlanningApi->get_meal_plan_week_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **username** | **String** | The username. |  |
| **start_date** | **String** | The start date of the meal planned week in the format yyyy-mm-dd. |  |
| **hash** | **String** | The private hash for the username. |  |

### Return type

[**GetMealPlanWeek200Response**](GetMealPlanWeek200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_shopping_list

> <GetShoppingList200Response> get_shopping_list(username, hash)

Get Shopping List

Get the current shopping list for the given user.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: apiKeyScheme
  config.api_key['apiKeyScheme'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['apiKeyScheme'] = 'Bearer'
end

api_instance = OpenapiClient::MealPlanningApi.new
username = 'dsky' # String | The username.
hash = 'hash_example' # String | The private hash for the username.

begin
  # Get Shopping List
  result = api_instance.get_shopping_list(username, hash)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling MealPlanningApi->get_shopping_list: #{e}"
end
```

#### Using the get_shopping_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetShoppingList200Response>, Integer, Hash)> get_shopping_list_with_http_info(username, hash)

```ruby
begin
  # Get Shopping List
  data, status_code, headers = api_instance.get_shopping_list_with_http_info(username, hash)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetShoppingList200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling MealPlanningApi->get_shopping_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **username** | **String** | The username. |  |
| **hash** | **String** | The private hash for the username. |  |

### Return type

[**GetShoppingList200Response**](GetShoppingList200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

