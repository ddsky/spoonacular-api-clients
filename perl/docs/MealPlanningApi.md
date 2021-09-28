# WWW::OpenAPIClient::MealPlanningApi

## Load the API package
```perl
use WWW::OpenAPIClient::Object::MealPlanningApi;
```

All URIs are relative to *https://api.spoonacular.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_to_meal_plan**](MealPlanningApi.md#add_to_meal_plan) | **POST** /mealplanner/{username}/items | Add to Meal Plan
[**add_to_shopping_list**](MealPlanningApi.md#add_to_shopping_list) | **POST** /mealplanner/{username}/shopping-list/items | Add to Shopping List
[**clear_meal_plan_day**](MealPlanningApi.md#clear_meal_plan_day) | **DELETE** /mealplanner/{username}/day/{date} | Clear Meal Plan Day
[**connect_user**](MealPlanningApi.md#connect_user) | **POST** /users/connect | Connect User
[**delete_from_meal_plan**](MealPlanningApi.md#delete_from_meal_plan) | **DELETE** /mealplanner/{username}/items/{id} | Delete from Meal Plan
[**delete_from_shopping_list**](MealPlanningApi.md#delete_from_shopping_list) | **DELETE** /mealplanner/{username}/shopping-list/items/{id} | Delete from Shopping List
[**generate_meal_plan**](MealPlanningApi.md#generate_meal_plan) | **GET** /mealplanner/generate | Generate Meal Plan
[**generate_shopping_list**](MealPlanningApi.md#generate_shopping_list) | **POST** /mealplanner/{username}/shopping-list/{start-date}/{end-date} | Generate Shopping List
[**get_meal_plan_template**](MealPlanningApi.md#get_meal_plan_template) | **GET** /mealplanner/{username}/templates/{id} | Get Meal Plan Template
[**get_meal_plan_templates**](MealPlanningApi.md#get_meal_plan_templates) | **GET** /mealplanner/{username}/templates | Get Meal Plan Templates
[**get_meal_plan_week**](MealPlanningApi.md#get_meal_plan_week) | **GET** /mealplanner/{username}/week/{start-date} | Get Meal Plan Week
[**get_shopping_list**](MealPlanningApi.md#get_shopping_list) | **GET** /mealplanner/{username}/shopping-list | Get Shopping List


# **add_to_meal_plan**
> object add_to_meal_plan(username => $username, hash => $hash, inline_object4 => $inline_object4)

Add to Meal Plan

Add an item to the user's meal plan.

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::MealPlanningApi;
my $api_instance = WWW::OpenAPIClient::MealPlanningApi->new(

    # Configure API key authorization: apiKeyScheme
    api_key => {'apiKey' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'apiKey' => 'Bearer'},
);

my $username = dsky; # string | The username.
my $hash = "hash_example"; # string | The private hash for the username.
my $inline_object4 = WWW::OpenAPIClient::Object::InlineObject4->new(); # InlineObject4 | 

eval { 
    my $result = $api_instance->add_to_meal_plan(username => $username, hash => $hash, inline_object4 => $inline_object4);
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
 **inline_object4** | [**InlineObject4**](InlineObject4.md)|  | 

### Return type

**object**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: , application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **add_to_shopping_list**
> InlineResponse20041 add_to_shopping_list(username => $username, hash => $hash, inline_object7 => $inline_object7)

Add to Shopping List

Add an item to the current shopping list of a user.

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::MealPlanningApi;
my $api_instance = WWW::OpenAPIClient::MealPlanningApi->new(

    # Configure API key authorization: apiKeyScheme
    api_key => {'apiKey' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'apiKey' => 'Bearer'},
);

my $username = dsky; # string | The username.
my $hash = "hash_example"; # string | The private hash for the username.
my $inline_object7 = WWW::OpenAPIClient::Object::InlineObject7->new(); # InlineObject7 | 

eval { 
    my $result = $api_instance->add_to_shopping_list(username => $username, hash => $hash, inline_object7 => $inline_object7);
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
 **inline_object7** | [**InlineObject7**](InlineObject7.md)|  | 

### Return type

[**InlineResponse20041**](InlineResponse20041.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: , application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **clear_meal_plan_day**
> object clear_meal_plan_day(username => $username, date => $date, hash => $hash, inline_object3 => $inline_object3)

Clear Meal Plan Day

Delete all planned items from the user's meal plan for a specific day.

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::MealPlanningApi;
my $api_instance = WWW::OpenAPIClient::MealPlanningApi->new(

    # Configure API key authorization: apiKeyScheme
    api_key => {'apiKey' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'apiKey' => 'Bearer'},
);

my $username = dsky; # string | The username.
my $date = 2020-06-01; # string | The date in the format yyyy-mm-dd.
my $hash = "hash_example"; # string | The private hash for the username.
my $inline_object3 = WWW::OpenAPIClient::Object::InlineObject3->new(); # InlineObject3 | 

eval { 
    my $result = $api_instance->clear_meal_plan_day(username => $username, date => $date, hash => $hash, inline_object3 => $inline_object3);
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
 **inline_object3** | [**InlineObject3**](InlineObject3.md)|  | 

### Return type

**object**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: 
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **connect_user**
> InlineResponse20042 connect_user(body => $body)

Connect User

In order to call user-specific endpoints, you need to connect your app's users to spoonacular users.

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::MealPlanningApi;
my $api_instance = WWW::OpenAPIClient::MealPlanningApi->new(

    # Configure API key authorization: apiKeyScheme
    api_key => {'apiKey' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'apiKey' => 'Bearer'},
);

my $body = WWW::OpenAPIClient::Object::object->new(); # object | 

eval { 
    my $result = $api_instance->connect_user(body => $body);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MealPlanningApi->connect_user: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | **object**|  | 

### Return type

[**InlineResponse20042**](InlineResponse20042.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: , application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_from_meal_plan**
> object delete_from_meal_plan(username => $username, id => $id, hash => $hash, inline_object5 => $inline_object5)

Delete from Meal Plan

Delete an item from the user's meal plan.

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::MealPlanningApi;
my $api_instance = WWW::OpenAPIClient::MealPlanningApi->new(

    # Configure API key authorization: apiKeyScheme
    api_key => {'apiKey' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'apiKey' => 'Bearer'},
);

my $username = dsky; # string | The username.
my $id = 15678; # double | The shopping list item id.
my $hash = "hash_example"; # string | The private hash for the username.
my $inline_object5 = WWW::OpenAPIClient::Object::InlineObject5->new(); # InlineObject5 | 

eval { 
    my $result = $api_instance->delete_from_meal_plan(username => $username, id => $id, hash => $hash, inline_object5 => $inline_object5);
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
 **inline_object5** | [**InlineObject5**](InlineObject5.md)|  | 

### Return type

**object**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: 
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_from_shopping_list**
> object delete_from_shopping_list(username => $username, id => $id, hash => $hash, inline_object8 => $inline_object8)

Delete from Shopping List

Delete an item from the current shopping list of the user.

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::MealPlanningApi;
my $api_instance = WWW::OpenAPIClient::MealPlanningApi->new(

    # Configure API key authorization: apiKeyScheme
    api_key => {'apiKey' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'apiKey' => 'Bearer'},
);

my $username = dsky; # string | The username.
my $id = 1; # int | The item's id.
my $hash = "hash_example"; # string | The private hash for the username.
my $inline_object8 = WWW::OpenAPIClient::Object::InlineObject8->new(); # InlineObject8 | 

eval { 
    my $result = $api_instance->delete_from_shopping_list(username => $username, id => $id, hash => $hash, inline_object8 => $inline_object8);
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
 **inline_object8** | [**InlineObject8**](InlineObject8.md)|  | 

### Return type

**object**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: 
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **generate_meal_plan**
> InlineResponse20037 generate_meal_plan(time_frame => $time_frame, target_calories => $target_calories, diet => $diet, exclude => $exclude)

Generate Meal Plan

Generate a meal plan with three meals per day (breakfast, lunch, and dinner).

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::MealPlanningApi;
my $api_instance = WWW::OpenAPIClient::MealPlanningApi->new(

    # Configure API key authorization: apiKeyScheme
    api_key => {'apiKey' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'apiKey' => 'Bearer'},
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

[**InlineResponse20037**](InlineResponse20037.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **generate_shopping_list**
> InlineResponse20041 generate_shopping_list(username => $username, start_date => $start_date, end_date => $end_date, hash => $hash, inline_object6 => $inline_object6)

Generate Shopping List

Generate the shopping list for a user from the meal planner in a given time frame.

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::MealPlanningApi;
my $api_instance = WWW::OpenAPIClient::MealPlanningApi->new(

    # Configure API key authorization: apiKeyScheme
    api_key => {'apiKey' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'apiKey' => 'Bearer'},
);

my $username = dsky; # string | The username.
my $start_date = 2020-06-01; # string | The start date in the format yyyy-mm-dd.
my $end_date = 2020-06-07; # string | The end date in the format yyyy-mm-dd.
my $hash = "hash_example"; # string | The private hash for the username.
my $inline_object6 = WWW::OpenAPIClient::Object::InlineObject6->new(); # InlineObject6 | 

eval { 
    my $result = $api_instance->generate_shopping_list(username => $username, start_date => $start_date, end_date => $end_date, hash => $hash, inline_object6 => $inline_object6);
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
 **inline_object6** | [**InlineObject6**](InlineObject6.md)|  | 

### Return type

[**InlineResponse20041**](InlineResponse20041.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: 
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_meal_plan_template**
> InlineResponse20040 get_meal_plan_template(username => $username, id => $id, hash => $hash)

Get Meal Plan Template

Get information about a meal plan template.

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::MealPlanningApi;
my $api_instance = WWW::OpenAPIClient::MealPlanningApi->new(

    # Configure API key authorization: apiKeyScheme
    api_key => {'apiKey' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'apiKey' => 'Bearer'},
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

[**InlineResponse20040**](InlineResponse20040.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_meal_plan_templates**
> InlineResponse20039 get_meal_plan_templates(username => $username, hash => $hash)

Get Meal Plan Templates

Get meal plan templates from user or public ones.

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::MealPlanningApi;
my $api_instance = WWW::OpenAPIClient::MealPlanningApi->new(

    # Configure API key authorization: apiKeyScheme
    api_key => {'apiKey' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'apiKey' => 'Bearer'},
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

[**InlineResponse20039**](InlineResponse20039.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_meal_plan_week**
> InlineResponse20038 get_meal_plan_week(username => $username, start_date => $start_date, hash => $hash)

Get Meal Plan Week

Retrieve a meal planned week for the given user. The username must be a spoonacular user and the hash must the the user's hash that can be found in his/her account.

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::MealPlanningApi;
my $api_instance = WWW::OpenAPIClient::MealPlanningApi->new(

    # Configure API key authorization: apiKeyScheme
    api_key => {'apiKey' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'apiKey' => 'Bearer'},
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

[**InlineResponse20038**](InlineResponse20038.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_shopping_list**
> InlineResponse20041 get_shopping_list(username => $username, hash => $hash)

Get Shopping List

Get the current shopping list for the given user.

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::MealPlanningApi;
my $api_instance = WWW::OpenAPIClient::MealPlanningApi->new(

    # Configure API key authorization: apiKeyScheme
    api_key => {'apiKey' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'apiKey' => 'Bearer'},
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

[**InlineResponse20041**](InlineResponse20041.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

