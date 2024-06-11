# WWW::OpenAPIClient::MealPlanningApi

## Load the API package
```perl
use WWW::OpenAPIClient::Object::MealPlanningApi;
```

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
[**generate_shopping_list**](MealPlanningApi.md#generate_shopping_list) | **POST** /mealplanner/{username}/shopping-list/{start_date}/{end_date} | Generate Shopping List
[**get_meal_plan_template**](MealPlanningApi.md#get_meal_plan_template) | **GET** /mealplanner/{username}/templates/{id} | Get Meal Plan Template
[**get_meal_plan_templates**](MealPlanningApi.md#get_meal_plan_templates) | **GET** /mealplanner/{username}/templates | Get Meal Plan Templates
[**get_meal_plan_week**](MealPlanningApi.md#get_meal_plan_week) | **GET** /mealplanner/{username}/week/{start_date} | Get Meal Plan Week
[**get_shopping_list**](MealPlanningApi.md#get_shopping_list) | **GET** /mealplanner/{username}/shopping-list | Get Shopping List


# **add_meal_plan_template**
> AddMealPlanTemplate200Response add_meal_plan_template(username => $username, hash => $hash)

Add Meal Plan Template

Add a meal plan template for a user.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::MealPlanningApi;
my $api_instance = WWW::OpenAPIClient::MealPlanningApi->new(

    # Configure API key authorization: apiKeyScheme
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $username = dsky; # string | The username.
my $hash = 4b5v4398573406; # string | The private hash for the username.

eval {
    my $result = $api_instance->add_meal_plan_template(username => $username, hash => $hash);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MealPlanningApi->add_meal_plan_template: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **string**| The username. | 
 **hash** | **string**| The private hash for the username. | 

### Return type

[**AddMealPlanTemplate200Response**](AddMealPlanTemplate200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **add_to_meal_plan**
> object add_to_meal_plan(username => $username, hash => $hash, add_to_meal_plan_request => $add_to_meal_plan_request)

Add to Meal Plan

Add an item to the user's meal plan.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::MealPlanningApi;
my $api_instance = WWW::OpenAPIClient::MealPlanningApi->new(

    # Configure API key authorization: apiKeyScheme
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $username = dsky; # string | The username.
my $hash = "hash_example"; # string | The private hash for the username.
my $add_to_meal_plan_request = WWW::OpenAPIClient::Object::AddToMealPlanRequest->new(); # AddToMealPlanRequest | 

eval {
    my $result = $api_instance->add_to_meal_plan(username => $username, hash => $hash, add_to_meal_plan_request => $add_to_meal_plan_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MealPlanningApi->add_to_meal_plan: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **string**| The username. | 
 **hash** | **string**| The private hash for the username. | 
 **add_to_meal_plan_request** | [**AddToMealPlanRequest**](AddToMealPlanRequest.md)|  | 

### Return type

**object**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **add_to_shopping_list**
> GenerateShoppingList200Response add_to_shopping_list(username => $username, hash => $hash, add_to_shopping_list_request => $add_to_shopping_list_request)

Add to Shopping List

Add an item to the current shopping list of a user.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::MealPlanningApi;
my $api_instance = WWW::OpenAPIClient::MealPlanningApi->new(

    # Configure API key authorization: apiKeyScheme
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $username = dsky; # string | The username.
my $hash = "hash_example"; # string | The private hash for the username.
my $add_to_shopping_list_request = WWW::OpenAPIClient::Object::AddToShoppingListRequest->new(); # AddToShoppingListRequest | 

eval {
    my $result = $api_instance->add_to_shopping_list(username => $username, hash => $hash, add_to_shopping_list_request => $add_to_shopping_list_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MealPlanningApi->add_to_shopping_list: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **string**| The username. | 
 **hash** | **string**| The private hash for the username. | 
 **add_to_shopping_list_request** | [**AddToShoppingListRequest**](AddToShoppingListRequest.md)|  | 

### Return type

[**GenerateShoppingList200Response**](GenerateShoppingList200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **clear_meal_plan_day**
> object clear_meal_plan_day(username => $username, date => $date, hash => $hash)

Clear Meal Plan Day

Delete all planned items from the user's meal plan for a specific day.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::MealPlanningApi;
my $api_instance = WWW::OpenAPIClient::MealPlanningApi->new(

    # Configure API key authorization: apiKeyScheme
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $username = dsky; # string | The username.
my $date = 2020-06-01; # string | The date in the format yyyy-mm-dd.
my $hash = "hash_example"; # string | The private hash for the username.

eval {
    my $result = $api_instance->clear_meal_plan_day(username => $username, date => $date, hash => $hash);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MealPlanningApi->clear_meal_plan_day: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **string**| The username. | 
 **date** | **string**| The date in the format yyyy-mm-dd. | 
 **hash** | **string**| The private hash for the username. | 

### Return type

**object**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **connect_user**
> ConnectUser200Response connect_user(connect_user_request => $connect_user_request)

Connect User

In order to call user-specific endpoints, you need to connect your app's users to spoonacular users.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::MealPlanningApi;
my $api_instance = WWW::OpenAPIClient::MealPlanningApi->new(

    # Configure API key authorization: apiKeyScheme
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $connect_user_request = WWW::OpenAPIClient::Object::ConnectUserRequest->new(); # ConnectUserRequest | 

eval {
    my $result = $api_instance->connect_user(connect_user_request => $connect_user_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MealPlanningApi->connect_user: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **connect_user_request** | [**ConnectUserRequest**](ConnectUserRequest.md)|  | 

### Return type

[**ConnectUser200Response**](ConnectUser200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_from_meal_plan**
> object delete_from_meal_plan(username => $username, id => $id, hash => $hash)

Delete from Meal Plan

Delete an item from the user's meal plan.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::MealPlanningApi;
my $api_instance = WWW::OpenAPIClient::MealPlanningApi->new(

    # Configure API key authorization: apiKeyScheme
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $username = dsky; # string | The username.
my $id = 15678; # double | The shopping list item id.
my $hash = "hash_example"; # string | The private hash for the username.

eval {
    my $result = $api_instance->delete_from_meal_plan(username => $username, id => $id, hash => $hash);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MealPlanningApi->delete_from_meal_plan: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **string**| The username. | 
 **id** | **double**| The shopping list item id. | 
 **hash** | **string**| The private hash for the username. | 

### Return type

**object**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_from_shopping_list**
> object delete_from_shopping_list(username => $username, id => $id, hash => $hash)

Delete from Shopping List

Delete an item from the current shopping list of the user.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::MealPlanningApi;
my $api_instance = WWW::OpenAPIClient::MealPlanningApi->new(

    # Configure API key authorization: apiKeyScheme
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $username = dsky; # string | The username.
my $id = 1; # int | The item's id.
my $hash = "hash_example"; # string | The private hash for the username.

eval {
    my $result = $api_instance->delete_from_shopping_list(username => $username, id => $id, hash => $hash);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MealPlanningApi->delete_from_shopping_list: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **string**| The username. | 
 **id** | **int**| The item&#39;s id. | 
 **hash** | **string**| The private hash for the username. | 

### Return type

**object**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_meal_plan_template**
> object delete_meal_plan_template(username => $username, id => $id, hash => $hash)

Delete Meal Plan Template

Delete a meal plan template for a user.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::MealPlanningApi;
my $api_instance = WWW::OpenAPIClient::MealPlanningApi->new(

    # Configure API key authorization: apiKeyScheme
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $username = dsky; # string | The username.
my $id = 1; # int | The item's id.
my $hash = 4b5v4398573406; # string | The private hash for the username.

eval {
    my $result = $api_instance->delete_meal_plan_template(username => $username, id => $id, hash => $hash);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MealPlanningApi->delete_meal_plan_template: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **string**| The username. | 
 **id** | **int**| The item&#39;s id. | 
 **hash** | **string**| The private hash for the username. | 

### Return type

**object**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **generate_meal_plan**
> GenerateMealPlan200Response generate_meal_plan(time_frame => $time_frame, target_calories => $target_calories, diet => $diet, exclude => $exclude)

Generate Meal Plan

Generate a meal plan with three meals per day (breakfast, lunch, and dinner).

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::MealPlanningApi;
my $api_instance = WWW::OpenAPIClient::MealPlanningApi->new(

    # Configure API key authorization: apiKeyScheme
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $time_frame = day; # string | Either for one \"day\" or an entire \"week\".
my $target_calories = 2000; # double | What is the caloric target for one day? The meal plan generator will try to get as close as possible to that goal.
my $diet = vegetarian; # string | Enter a diet that the meal plan has to adhere to. See a full list of supported diets.
my $exclude = shellfish, olives; # string | A comma-separated list of allergens or ingredients that must be excluded.

eval {
    my $result = $api_instance->generate_meal_plan(time_frame => $time_frame, target_calories => $target_calories, diet => $diet, exclude => $exclude);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MealPlanningApi->generate_meal_plan: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **time_frame** | **string**| Either for one \&quot;day\&quot; or an entire \&quot;week\&quot;. | [optional] 
 **target_calories** | **double**| What is the caloric target for one day? The meal plan generator will try to get as close as possible to that goal. | [optional] 
 **diet** | **string**| Enter a diet that the meal plan has to adhere to. See a full list of supported diets. | [optional] 
 **exclude** | **string**| A comma-separated list of allergens or ingredients that must be excluded. | [optional] 

### Return type

[**GenerateMealPlan200Response**](GenerateMealPlan200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **generate_shopping_list**
> GenerateShoppingList200Response generate_shopping_list(username => $username, start_date => $start_date, end_date => $end_date, hash => $hash)

Generate Shopping List

Generate the shopping list for a user from the meal planner in a given time frame.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::MealPlanningApi;
my $api_instance = WWW::OpenAPIClient::MealPlanningApi->new(

    # Configure API key authorization: apiKeyScheme
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $username = dsky; # string | The username.
my $start_date = 2020-06-01; # string | The start date in the format yyyy-mm-dd.
my $end_date = 2020-06-07; # string | The end date in the format yyyy-mm-dd.
my $hash = "hash_example"; # string | The private hash for the username.

eval {
    my $result = $api_instance->generate_shopping_list(username => $username, start_date => $start_date, end_date => $end_date, hash => $hash);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MealPlanningApi->generate_shopping_list: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **string**| The username. | 
 **start_date** | **string**| The start date in the format yyyy-mm-dd. | 
 **end_date** | **string**| The end date in the format yyyy-mm-dd. | 
 **hash** | **string**| The private hash for the username. | 

### Return type

[**GenerateShoppingList200Response**](GenerateShoppingList200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_meal_plan_template**
> GetMealPlanTemplate200Response get_meal_plan_template(username => $username, id => $id, hash => $hash)

Get Meal Plan Template

Get information about a meal plan template.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::MealPlanningApi;
my $api_instance = WWW::OpenAPIClient::MealPlanningApi->new(

    # Configure API key authorization: apiKeyScheme
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $username = dsky; # string | The username.
my $id = 1; # int | The item's id.
my $hash = "hash_example"; # string | The private hash for the username.

eval {
    my $result = $api_instance->get_meal_plan_template(username => $username, id => $id, hash => $hash);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MealPlanningApi->get_meal_plan_template: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **string**| The username. | 
 **id** | **int**| The item&#39;s id. | 
 **hash** | **string**| The private hash for the username. | 

### Return type

[**GetMealPlanTemplate200Response**](GetMealPlanTemplate200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_meal_plan_templates**
> GetMealPlanTemplates200Response get_meal_plan_templates(username => $username, hash => $hash)

Get Meal Plan Templates

Get meal plan templates from user or public ones.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::MealPlanningApi;
my $api_instance = WWW::OpenAPIClient::MealPlanningApi->new(

    # Configure API key authorization: apiKeyScheme
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $username = dsky; # string | The username.
my $hash = "hash_example"; # string | The private hash for the username.

eval {
    my $result = $api_instance->get_meal_plan_templates(username => $username, hash => $hash);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MealPlanningApi->get_meal_plan_templates: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **string**| The username. | 
 **hash** | **string**| The private hash for the username. | 

### Return type

[**GetMealPlanTemplates200Response**](GetMealPlanTemplates200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_meal_plan_week**
> GetMealPlanWeek200Response get_meal_plan_week(username => $username, start_date => $start_date, hash => $hash)

Get Meal Plan Week

Retrieve a meal planned week for the given user. The username must be a spoonacular user and the hash must the the user's hash that can be found in his/her account.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::MealPlanningApi;
my $api_instance = WWW::OpenAPIClient::MealPlanningApi->new(

    # Configure API key authorization: apiKeyScheme
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $username = dsky; # string | The username.
my $start_date = 2020-06-01; # string | The start date of the meal planned week in the format yyyy-mm-dd.
my $hash = "hash_example"; # string | The private hash for the username.

eval {
    my $result = $api_instance->get_meal_plan_week(username => $username, start_date => $start_date, hash => $hash);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MealPlanningApi->get_meal_plan_week: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **string**| The username. | 
 **start_date** | **string**| The start date of the meal planned week in the format yyyy-mm-dd. | 
 **hash** | **string**| The private hash for the username. | 

### Return type

[**GetMealPlanWeek200Response**](GetMealPlanWeek200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_shopping_list**
> GetShoppingList200Response get_shopping_list(username => $username, hash => $hash)

Get Shopping List

Get the current shopping list for the given user.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::MealPlanningApi;
my $api_instance = WWW::OpenAPIClient::MealPlanningApi->new(

    # Configure API key authorization: apiKeyScheme
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $username = dsky; # string | The username.
my $hash = "hash_example"; # string | The private hash for the username.

eval {
    my $result = $api_instance->get_shopping_list(username => $username, hash => $hash);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MealPlanningApi->get_shopping_list: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **string**| The username. | 
 **hash** | **string**| The private hash for the username. | 

### Return type

[**GetShoppingList200Response**](GetShoppingList200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

