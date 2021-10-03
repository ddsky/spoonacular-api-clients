# spoonacular.MealPlanningApi

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


# **add_meal_plan_template**
> InlineResponse20040 add_meal_plan_template(username, hash, inline_object6)

Add Meal Plan Template

Add a meal plan template for a user.

### Example

* Api Key Authentication (apiKeyScheme):
```python
from __future__ import print_function
import time
import spoonacular
from spoonacular.rest import ApiException
from pprint import pprint
configuration = spoonacular.Configuration()
# Configure API key authorization: apiKeyScheme
configuration.api_key['apiKey'] = 'YOUR_API_KEY'
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKey'] = 'Bearer'

# create an instance of the API class
api_instance = spoonacular.MealPlanningApi(spoonacular.ApiClient(configuration))
username = 'dsky' # str | The username.
hash = '4b5v4398573406' # str | The private hash for the username.
inline_object6 = spoonacular.InlineObject6() # InlineObject6 | 

try:
    # Add Meal Plan Template
    api_response = api_instance.add_meal_plan_template(username, hash, inline_object6)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling MealPlanningApi->add_meal_plan_template: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **str**| The username. | 
 **hash** | **str**| The private hash for the username. | 
 **inline_object6** | [**InlineObject6**](InlineObject6.md)|  | 

### Return type

[**InlineResponse20040**](InlineResponse20040.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: 
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **add_to_meal_plan**
> object add_to_meal_plan(username, hash, inline_object4)

Add to Meal Plan

Add an item to the user's meal plan.

### Example

* Api Key Authentication (apiKeyScheme):
```python
from __future__ import print_function
import time
import spoonacular
from spoonacular.rest import ApiException
from pprint import pprint
configuration = spoonacular.Configuration()
# Configure API key authorization: apiKeyScheme
configuration.api_key['apiKey'] = 'YOUR_API_KEY'
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKey'] = 'Bearer'

# create an instance of the API class
api_instance = spoonacular.MealPlanningApi(spoonacular.ApiClient(configuration))
username = 'dsky' # str | The username.
hash = 'hash_example' # str | The private hash for the username.
inline_object4 = spoonacular.InlineObject4() # InlineObject4 | 

try:
    # Add to Meal Plan
    api_response = api_instance.add_to_meal_plan(username, hash, inline_object4)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling MealPlanningApi->add_to_meal_plan: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **str**| The username. | 
 **hash** | **str**| The private hash for the username. | 
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
> InlineResponse20042 add_to_shopping_list(username, hash, inline_object9)

Add to Shopping List

Add an item to the current shopping list of a user.

### Example

* Api Key Authentication (apiKeyScheme):
```python
from __future__ import print_function
import time
import spoonacular
from spoonacular.rest import ApiException
from pprint import pprint
configuration = spoonacular.Configuration()
# Configure API key authorization: apiKeyScheme
configuration.api_key['apiKey'] = 'YOUR_API_KEY'
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKey'] = 'Bearer'

# create an instance of the API class
api_instance = spoonacular.MealPlanningApi(spoonacular.ApiClient(configuration))
username = 'dsky' # str | The username.
hash = 'hash_example' # str | The private hash for the username.
inline_object9 = spoonacular.InlineObject9() # InlineObject9 | 

try:
    # Add to Shopping List
    api_response = api_instance.add_to_shopping_list(username, hash, inline_object9)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling MealPlanningApi->add_to_shopping_list: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **str**| The username. | 
 **hash** | **str**| The private hash for the username. | 
 **inline_object9** | [**InlineObject9**](InlineObject9.md)|  | 

### Return type

[**InlineResponse20042**](InlineResponse20042.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: , application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **clear_meal_plan_day**
> object clear_meal_plan_day(username, date, hash, inline_object3)

Clear Meal Plan Day

Delete all planned items from the user's meal plan for a specific day.

### Example

* Api Key Authentication (apiKeyScheme):
```python
from __future__ import print_function
import time
import spoonacular
from spoonacular.rest import ApiException
from pprint import pprint
configuration = spoonacular.Configuration()
# Configure API key authorization: apiKeyScheme
configuration.api_key['apiKey'] = 'YOUR_API_KEY'
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKey'] = 'Bearer'

# create an instance of the API class
api_instance = spoonacular.MealPlanningApi(spoonacular.ApiClient(configuration))
username = 'dsky' # str | The username.
date = '2020-06-01' # str | The date in the format yyyy-mm-dd.
hash = 'hash_example' # str | The private hash for the username.
inline_object3 = spoonacular.InlineObject3() # InlineObject3 | 

try:
    # Clear Meal Plan Day
    api_response = api_instance.clear_meal_plan_day(username, date, hash, inline_object3)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling MealPlanningApi->clear_meal_plan_day: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **str**| The username. | 
 **date** | **str**| The date in the format yyyy-mm-dd. | 
 **hash** | **str**| The private hash for the username. | 
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
> InlineResponse20043 connect_user(body)

Connect User

In order to call user-specific endpoints, you need to connect your app's users to spoonacular users.

### Example

* Api Key Authentication (apiKeyScheme):
```python
from __future__ import print_function
import time
import spoonacular
from spoonacular.rest import ApiException
from pprint import pprint
configuration = spoonacular.Configuration()
# Configure API key authorization: apiKeyScheme
configuration.api_key['apiKey'] = 'YOUR_API_KEY'
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKey'] = 'Bearer'

# create an instance of the API class
api_instance = spoonacular.MealPlanningApi(spoonacular.ApiClient(configuration))
body = None # object | 

try:
    # Connect User
    api_response = api_instance.connect_user(body)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling MealPlanningApi->connect_user: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | **object**|  | 

### Return type

[**InlineResponse20043**](InlineResponse20043.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: , application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_from_meal_plan**
> object delete_from_meal_plan(username, id, hash, inline_object5)

Delete from Meal Plan

Delete an item from the user's meal plan.

### Example

* Api Key Authentication (apiKeyScheme):
```python
from __future__ import print_function
import time
import spoonacular
from spoonacular.rest import ApiException
from pprint import pprint
configuration = spoonacular.Configuration()
# Configure API key authorization: apiKeyScheme
configuration.api_key['apiKey'] = 'YOUR_API_KEY'
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKey'] = 'Bearer'

# create an instance of the API class
api_instance = spoonacular.MealPlanningApi(spoonacular.ApiClient(configuration))
username = 'dsky' # str | The username.
id = 15678 # float | The shopping list item id.
hash = 'hash_example' # str | The private hash for the username.
inline_object5 = spoonacular.InlineObject5() # InlineObject5 | 

try:
    # Delete from Meal Plan
    api_response = api_instance.delete_from_meal_plan(username, id, hash, inline_object5)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling MealPlanningApi->delete_from_meal_plan: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **str**| The username. | 
 **id** | **float**| The shopping list item id. | 
 **hash** | **str**| The private hash for the username. | 
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
> object delete_from_shopping_list(username, id, hash, inline_object10)

Delete from Shopping List

Delete an item from the current shopping list of the user.

### Example

* Api Key Authentication (apiKeyScheme):
```python
from __future__ import print_function
import time
import spoonacular
from spoonacular.rest import ApiException
from pprint import pprint
configuration = spoonacular.Configuration()
# Configure API key authorization: apiKeyScheme
configuration.api_key['apiKey'] = 'YOUR_API_KEY'
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKey'] = 'Bearer'

# create an instance of the API class
api_instance = spoonacular.MealPlanningApi(spoonacular.ApiClient(configuration))
username = 'dsky' # str | The username.
id = 1 # int | The item's id.
hash = 'hash_example' # str | The private hash for the username.
inline_object10 = spoonacular.InlineObject10() # InlineObject10 | 

try:
    # Delete from Shopping List
    api_response = api_instance.delete_from_shopping_list(username, id, hash, inline_object10)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling MealPlanningApi->delete_from_shopping_list: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **str**| The username. | 
 **id** | **int**| The item&#39;s id. | 
 **hash** | **str**| The private hash for the username. | 
 **inline_object10** | [**InlineObject10**](InlineObject10.md)|  | 

### Return type

**object**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: 
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_meal_plan_template**
> object delete_meal_plan_template(username, id, hash, inline_object7)

Delete Meal Plan Template

Delete a meal plan template for a user.

### Example

* Api Key Authentication (apiKeyScheme):
```python
from __future__ import print_function
import time
import spoonacular
from spoonacular.rest import ApiException
from pprint import pprint
configuration = spoonacular.Configuration()
# Configure API key authorization: apiKeyScheme
configuration.api_key['apiKey'] = 'YOUR_API_KEY'
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKey'] = 'Bearer'

# create an instance of the API class
api_instance = spoonacular.MealPlanningApi(spoonacular.ApiClient(configuration))
username = 'dsky' # str | The username.
id = 1 # int | The item's id.
hash = '4b5v4398573406' # str | The private hash for the username.
inline_object7 = spoonacular.InlineObject7() # InlineObject7 | 

try:
    # Delete Meal Plan Template
    api_response = api_instance.delete_meal_plan_template(username, id, hash, inline_object7)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling MealPlanningApi->delete_meal_plan_template: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **str**| The username. | 
 **id** | **int**| The item&#39;s id. | 
 **hash** | **str**| The private hash for the username. | 
 **inline_object7** | [**InlineObject7**](InlineObject7.md)|  | 

### Return type

**object**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: 
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **generate_meal_plan**
> InlineResponse20037 generate_meal_plan(time_frame=time_frame, target_calories=target_calories, diet=diet, exclude=exclude)

Generate Meal Plan

Generate a meal plan with three meals per day (breakfast, lunch, and dinner).

### Example

* Api Key Authentication (apiKeyScheme):
```python
from __future__ import print_function
import time
import spoonacular
from spoonacular.rest import ApiException
from pprint import pprint
configuration = spoonacular.Configuration()
# Configure API key authorization: apiKeyScheme
configuration.api_key['apiKey'] = 'YOUR_API_KEY'
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKey'] = 'Bearer'

# create an instance of the API class
api_instance = spoonacular.MealPlanningApi(spoonacular.ApiClient(configuration))
time_frame = 'day' # str | Either for one \"day\" or an entire \"week\". (optional)
target_calories = 2000 # float | What is the caloric target for one day? The meal plan generator will try to get as close as possible to that goal. (optional)
diet = 'vegetarian' # str | Enter a diet that the meal plan has to adhere to. See a full list of supported diets. (optional)
exclude = 'shellfish, olives' # str | A comma-separated list of allergens or ingredients that must be excluded. (optional)

try:
    # Generate Meal Plan
    api_response = api_instance.generate_meal_plan(time_frame=time_frame, target_calories=target_calories, diet=diet, exclude=exclude)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling MealPlanningApi->generate_meal_plan: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **time_frame** | **str**| Either for one \&quot;day\&quot; or an entire \&quot;week\&quot;. | [optional] 
 **target_calories** | **float**| What is the caloric target for one day? The meal plan generator will try to get as close as possible to that goal. | [optional] 
 **diet** | **str**| Enter a diet that the meal plan has to adhere to. See a full list of supported diets. | [optional] 
 **exclude** | **str**| A comma-separated list of allergens or ingredients that must be excluded. | [optional] 

### Return type

[**InlineResponse20037**](InlineResponse20037.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **generate_shopping_list**
> InlineResponse20042 generate_shopping_list(username, start_date, end_date, hash, inline_object8)

Generate Shopping List

Generate the shopping list for a user from the meal planner in a given time frame.

### Example

* Api Key Authentication (apiKeyScheme):
```python
from __future__ import print_function
import time
import spoonacular
from spoonacular.rest import ApiException
from pprint import pprint
configuration = spoonacular.Configuration()
# Configure API key authorization: apiKeyScheme
configuration.api_key['apiKey'] = 'YOUR_API_KEY'
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKey'] = 'Bearer'

# create an instance of the API class
api_instance = spoonacular.MealPlanningApi(spoonacular.ApiClient(configuration))
username = 'dsky' # str | The username.
start_date = '2020-06-01' # str | The start date in the format yyyy-mm-dd.
end_date = '2020-06-07' # str | The end date in the format yyyy-mm-dd.
hash = 'hash_example' # str | The private hash for the username.
inline_object8 = spoonacular.InlineObject8() # InlineObject8 | 

try:
    # Generate Shopping List
    api_response = api_instance.generate_shopping_list(username, start_date, end_date, hash, inline_object8)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling MealPlanningApi->generate_shopping_list: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **str**| The username. | 
 **start_date** | **str**| The start date in the format yyyy-mm-dd. | 
 **end_date** | **str**| The end date in the format yyyy-mm-dd. | 
 **hash** | **str**| The private hash for the username. | 
 **inline_object8** | [**InlineObject8**](InlineObject8.md)|  | 

### Return type

[**InlineResponse20042**](InlineResponse20042.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: 
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_meal_plan_template**
> InlineResponse20041 get_meal_plan_template(username, id, hash)

Get Meal Plan Template

Get information about a meal plan template.

### Example

* Api Key Authentication (apiKeyScheme):
```python
from __future__ import print_function
import time
import spoonacular
from spoonacular.rest import ApiException
from pprint import pprint
configuration = spoonacular.Configuration()
# Configure API key authorization: apiKeyScheme
configuration.api_key['apiKey'] = 'YOUR_API_KEY'
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKey'] = 'Bearer'

# create an instance of the API class
api_instance = spoonacular.MealPlanningApi(spoonacular.ApiClient(configuration))
username = 'dsky' # str | The username.
id = 1 # int | The item's id.
hash = 'hash_example' # str | The private hash for the username.

try:
    # Get Meal Plan Template
    api_response = api_instance.get_meal_plan_template(username, id, hash)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling MealPlanningApi->get_meal_plan_template: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **str**| The username. | 
 **id** | **int**| The item&#39;s id. | 
 **hash** | **str**| The private hash for the username. | 

### Return type

[**InlineResponse20041**](InlineResponse20041.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_meal_plan_templates**
> InlineResponse20039 get_meal_plan_templates(username, hash)

Get Meal Plan Templates

Get meal plan templates from user or public ones.

### Example

* Api Key Authentication (apiKeyScheme):
```python
from __future__ import print_function
import time
import spoonacular
from spoonacular.rest import ApiException
from pprint import pprint
configuration = spoonacular.Configuration()
# Configure API key authorization: apiKeyScheme
configuration.api_key['apiKey'] = 'YOUR_API_KEY'
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKey'] = 'Bearer'

# create an instance of the API class
api_instance = spoonacular.MealPlanningApi(spoonacular.ApiClient(configuration))
username = 'dsky' # str | The username.
hash = 'hash_example' # str | The private hash for the username.

try:
    # Get Meal Plan Templates
    api_response = api_instance.get_meal_plan_templates(username, hash)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling MealPlanningApi->get_meal_plan_templates: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **str**| The username. | 
 **hash** | **str**| The private hash for the username. | 

### Return type

[**InlineResponse20039**](InlineResponse20039.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_meal_plan_week**
> InlineResponse20038 get_meal_plan_week(username, start_date, hash)

Get Meal Plan Week

Retrieve a meal planned week for the given user. The username must be a spoonacular user and the hash must the the user's hash that can be found in his/her account.

### Example

* Api Key Authentication (apiKeyScheme):
```python
from __future__ import print_function
import time
import spoonacular
from spoonacular.rest import ApiException
from pprint import pprint
configuration = spoonacular.Configuration()
# Configure API key authorization: apiKeyScheme
configuration.api_key['apiKey'] = 'YOUR_API_KEY'
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKey'] = 'Bearer'

# create an instance of the API class
api_instance = spoonacular.MealPlanningApi(spoonacular.ApiClient(configuration))
username = 'dsky' # str | The username.
start_date = '2020-06-01' # str | The start date of the meal planned week in the format yyyy-mm-dd.
hash = 'hash_example' # str | The private hash for the username.

try:
    # Get Meal Plan Week
    api_response = api_instance.get_meal_plan_week(username, start_date, hash)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling MealPlanningApi->get_meal_plan_week: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **str**| The username. | 
 **start_date** | **str**| The start date of the meal planned week in the format yyyy-mm-dd. | 
 **hash** | **str**| The private hash for the username. | 

### Return type

[**InlineResponse20038**](InlineResponse20038.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_shopping_list**
> InlineResponse20042 get_shopping_list(username, hash)

Get Shopping List

Get the current shopping list for the given user.

### Example

* Api Key Authentication (apiKeyScheme):
```python
from __future__ import print_function
import time
import spoonacular
from spoonacular.rest import ApiException
from pprint import pprint
configuration = spoonacular.Configuration()
# Configure API key authorization: apiKeyScheme
configuration.api_key['apiKey'] = 'YOUR_API_KEY'
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKey'] = 'Bearer'

# create an instance of the API class
api_instance = spoonacular.MealPlanningApi(spoonacular.ApiClient(configuration))
username = 'dsky' # str | The username.
hash = 'hash_example' # str | The private hash for the username.

try:
    # Get Shopping List
    api_response = api_instance.get_shopping_list(username, hash)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling MealPlanningApi->get_shopping_list: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **str**| The username. | 
 **hash** | **str**| The private hash for the username. | 

### Return type

[**InlineResponse20042**](InlineResponse20042.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

