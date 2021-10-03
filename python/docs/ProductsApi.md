# spoonacular.ProductsApi

All URIs are relative to *https://api.spoonacular.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**autocomplete_product_search**](ProductsApi.md#autocomplete_product_search) | **GET** /food/products/suggest | Autocomplete Product Search
[**classify_grocery_product**](ProductsApi.md#classify_grocery_product) | **POST** /food/products/classify | Classify Grocery Product
[**classify_grocery_product_bulk**](ProductsApi.md#classify_grocery_product_bulk) | **POST** /food/products/classifyBatch | Classify Grocery Product Bulk
[**get_comparable_products**](ProductsApi.md#get_comparable_products) | **GET** /food/products/upc/{upc}/comparable | Get Comparable Products
[**get_product_information**](ProductsApi.md#get_product_information) | **GET** /food/products/{id} | Get Product Information
[**product_nutrition_by_id_image**](ProductsApi.md#product_nutrition_by_id_image) | **GET** /food/products/{id}/nutritionWidget.png | Product Nutrition by ID Image
[**product_nutrition_label_image**](ProductsApi.md#product_nutrition_label_image) | **GET** /food/products/{id}/nutritionLabel.png | Product Nutrition Label Image
[**product_nutrition_label_widget**](ProductsApi.md#product_nutrition_label_widget) | **GET** /food/products/{id}/nutritionLabel | Product Nutrition Label Widget
[**search_grocery_products**](ProductsApi.md#search_grocery_products) | **GET** /food/products/search | Search Grocery Products
[**search_grocery_products_by_upc**](ProductsApi.md#search_grocery_products_by_upc) | **GET** /food/products/upc/{upc} | Search Grocery Products by UPC
[**visualize_product_nutrition_by_id**](ProductsApi.md#visualize_product_nutrition_by_id) | **GET** /food/products/{id}/nutritionWidget | Product Nutrition by ID Widget


# **autocomplete_product_search**
> InlineResponse20032 autocomplete_product_search(query, number=number)

Autocomplete Product Search

Generate suggestions for grocery products based on a (partial) query. The matches will be found by looking in the title only.

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
api_instance = spoonacular.ProductsApi(spoonacular.ApiClient(configuration))
query = 'chicke' # str | The (partial) search query.
number = 10 # int | The number of results to return (between 1 and 25). (optional)

try:
    # Autocomplete Product Search
    api_response = api_instance.autocomplete_product_search(query, number=number)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling ProductsApi->autocomplete_product_search: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **str**| The (partial) search query. | 
 **number** | **int**| The number of results to return (between 1 and 25). | [optional] 

### Return type

[**InlineResponse20032**](InlineResponse20032.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **classify_grocery_product**
> InlineResponse20033 classify_grocery_product(inline_object1, locale=locale)

Classify Grocery Product

This endpoint allows you to match a packaged food to a basic category, e.g. a specific brand of milk to the category milk.

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
api_instance = spoonacular.ProductsApi(spoonacular.ApiClient(configuration))
inline_object1 = spoonacular.InlineObject1() # InlineObject1 | 
locale = 'en_US' # str | The display name of the returned category, supported is en_US (for American English) and en_GB (for British English). (optional)

try:
    # Classify Grocery Product
    api_response = api_instance.classify_grocery_product(inline_object1, locale=locale)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling ProductsApi->classify_grocery_product: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inline_object1** | [**InlineObject1**](InlineObject1.md)|  | 
 **locale** | **str**| The display name of the returned category, supported is en_US (for American English) and en_GB (for British English). | [optional] 

### Return type

[**InlineResponse20033**](InlineResponse20033.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **classify_grocery_product_bulk**
> list[InlineResponse20033] classify_grocery_product_bulk(inline_object, locale=locale)

Classify Grocery Product Bulk

Provide a set of product jsons, get back classified products.

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
api_instance = spoonacular.ProductsApi(spoonacular.ApiClient(configuration))
inline_object = [{"title":"Kroger Vitamin A & D Reduced Fat 2% Milk","upc":"","plu_code":""}] # list[InlineObject] | 
locale = 'en_US' # str | The display name of the returned category, supported is en_US (for American English) and en_GB (for British English). (optional)

try:
    # Classify Grocery Product Bulk
    api_response = api_instance.classify_grocery_product_bulk(inline_object, locale=locale)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling ProductsApi->classify_grocery_product_bulk: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inline_object** | [**list[InlineObject]**](list.md)|  | 
 **locale** | **str**| The display name of the returned category, supported is en_US (for American English) and en_GB (for British English). | [optional] 

### Return type

[**list[InlineResponse20033]**](InlineResponse20033.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_comparable_products**
> InlineResponse20031 get_comparable_products(upc)

Get Comparable Products

Find comparable products to the given one.

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
api_instance = spoonacular.ProductsApi(spoonacular.ApiClient(configuration))
upc = 33698816271 # float | The UPC of the product for which you want to find comparable products.

try:
    # Get Comparable Products
    api_response = api_instance.get_comparable_products(upc)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling ProductsApi->get_comparable_products: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **upc** | **float**| The UPC of the product for which you want to find comparable products. | 

### Return type

[**InlineResponse20031**](InlineResponse20031.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_product_information**
> InlineResponse20030 get_product_information(id)

Get Product Information

Use a product id to get full information about a product, such as ingredients, nutrition, etc. The nutritional information is per serving.

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
api_instance = spoonacular.ProductsApi(spoonacular.ApiClient(configuration))
id = 1 # int | The item's id.

try:
    # Get Product Information
    api_response = api_instance.get_product_information(id)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling ProductsApi->get_product_information: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The item&#39;s id. | 

### Return type

[**InlineResponse20030**](InlineResponse20030.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **product_nutrition_by_id_image**
> object product_nutrition_by_id_image(id)

Product Nutrition by ID Image

Visualize a product's nutritional information as an image.

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
api_instance = spoonacular.ProductsApi(spoonacular.ApiClient(configuration))
id = 7657 # float | The id of the product.

try:
    # Product Nutrition by ID Image
    api_response = api_instance.product_nutrition_by_id_image(id)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling ProductsApi->product_nutrition_by_id_image: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **float**| The id of the product. | 

### Return type

**object**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: image/png

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **product_nutrition_label_image**
> object product_nutrition_label_image(id, show_optional_nutrients=show_optional_nutrients, show_zero_values=show_zero_values, show_ingredients=show_ingredients)

Product Nutrition Label Image

Get a product's nutrition label as an image.

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
api_instance = spoonacular.ProductsApi(spoonacular.ApiClient(configuration))
id = 22347 # float | The product id.
show_optional_nutrients = false # bool | Whether to show optional nutrients. (optional)
show_zero_values = false # bool | Whether to show zero values. (optional)
show_ingredients = false # bool | Whether to show a list of ingredients. (optional)

try:
    # Product Nutrition Label Image
    api_response = api_instance.product_nutrition_label_image(id, show_optional_nutrients=show_optional_nutrients, show_zero_values=show_zero_values, show_ingredients=show_ingredients)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling ProductsApi->product_nutrition_label_image: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **float**| The product id. | 
 **show_optional_nutrients** | **bool**| Whether to show optional nutrients. | [optional] 
 **show_zero_values** | **bool**| Whether to show zero values. | [optional] 
 **show_ingredients** | **bool**| Whether to show a list of ingredients. | [optional] 

### Return type

**object**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: image/png

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **product_nutrition_label_widget**
> str product_nutrition_label_widget(id, default_css=default_css, show_optional_nutrients=show_optional_nutrients, show_zero_values=show_zero_values, show_ingredients=show_ingredients)

Product Nutrition Label Widget

Get a product's nutrition label as an HTML widget.

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
api_instance = spoonacular.ProductsApi(spoonacular.ApiClient(configuration))
id = 22347 # float | The product id.
default_css = True # bool | Whether the default CSS should be added to the response. (optional) (default to True)
show_optional_nutrients = false # bool | Whether to show optional nutrients. (optional)
show_zero_values = false # bool | Whether to show zero values. (optional)
show_ingredients = false # bool | Whether to show a list of ingredients. (optional)

try:
    # Product Nutrition Label Widget
    api_response = api_instance.product_nutrition_label_widget(id, default_css=default_css, show_optional_nutrients=show_optional_nutrients, show_zero_values=show_zero_values, show_ingredients=show_ingredients)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling ProductsApi->product_nutrition_label_widget: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **float**| The product id. | 
 **default_css** | **bool**| Whether the default CSS should be added to the response. | [optional] [default to True]
 **show_optional_nutrients** | **bool**| Whether to show optional nutrients. | [optional] 
 **show_zero_values** | **bool**| Whether to show zero values. | [optional] 
 **show_ingredients** | **bool**| Whether to show a list of ingredients. | [optional] 

### Return type

**str**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **search_grocery_products**
> InlineResponse20027 search_grocery_products(query=query, min_calories=min_calories, max_calories=max_calories, min_carbs=min_carbs, max_carbs=max_carbs, min_protein=min_protein, max_protein=max_protein, min_fat=min_fat, max_fat=max_fat, add_product_information=add_product_information, offset=offset, number=number)

Search Grocery Products

Search packaged food products, such as frozen pizza or Greek yogurt.

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
api_instance = spoonacular.ProductsApi(spoonacular.ApiClient(configuration))
query = 'burger' # str | The (natural language) search query. (optional)
min_calories = 50 # float | The minimum amount of calories the product must have. (optional)
max_calories = 800 # float | The maximum amount of calories the product can have. (optional)
min_carbs = 10 # float | The minimum amount of carbohydrates in grams the product must have. (optional)
max_carbs = 100 # float | The maximum amount of carbohydrates in grams the product can have. (optional)
min_protein = 10 # float | The minimum amount of protein in grams the product must have. (optional)
max_protein = 100 # float | The maximum amount of protein in grams the product can have. (optional)
min_fat = 1 # float | The minimum amount of fat in grams the product must have. (optional)
max_fat = 100 # float | The maximum amount of fat in grams the product can have. (optional)
add_product_information = true # bool | If set to true, you get more information about the products returned. (optional)
offset = 56 # int | The number of results to skip (between 0 and 900). (optional)
number = 10 # int | The maximum number of items to return (between 1 and 100). Defaults to 10. (optional) (default to 10)

try:
    # Search Grocery Products
    api_response = api_instance.search_grocery_products(query=query, min_calories=min_calories, max_calories=max_calories, min_carbs=min_carbs, max_carbs=max_carbs, min_protein=min_protein, max_protein=max_protein, min_fat=min_fat, max_fat=max_fat, add_product_information=add_product_information, offset=offset, number=number)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling ProductsApi->search_grocery_products: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **str**| The (natural language) search query. | [optional] 
 **min_calories** | **float**| The minimum amount of calories the product must have. | [optional] 
 **max_calories** | **float**| The maximum amount of calories the product can have. | [optional] 
 **min_carbs** | **float**| The minimum amount of carbohydrates in grams the product must have. | [optional] 
 **max_carbs** | **float**| The maximum amount of carbohydrates in grams the product can have. | [optional] 
 **min_protein** | **float**| The minimum amount of protein in grams the product must have. | [optional] 
 **max_protein** | **float**| The maximum amount of protein in grams the product can have. | [optional] 
 **min_fat** | **float**| The minimum amount of fat in grams the product must have. | [optional] 
 **max_fat** | **float**| The maximum amount of fat in grams the product can have. | [optional] 
 **add_product_information** | **bool**| If set to true, you get more information about the products returned. | [optional] 
 **offset** | **int**| The number of results to skip (between 0 and 900). | [optional] 
 **number** | **int**| The maximum number of items to return (between 1 and 100). Defaults to 10. | [optional] [default to 10]

### Return type

[**InlineResponse20027**](InlineResponse20027.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **search_grocery_products_by_upc**
> InlineResponse20028 search_grocery_products_by_upc(upc)

Search Grocery Products by UPC

Get information about a packaged food using its UPC.

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
api_instance = spoonacular.ProductsApi(spoonacular.ApiClient(configuration))
upc = 41631000564 # float | The product's UPC.

try:
    # Search Grocery Products by UPC
    api_response = api_instance.search_grocery_products_by_upc(upc)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling ProductsApi->search_grocery_products_by_upc: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **upc** | **float**| The product&#39;s UPC. | 

### Return type

[**InlineResponse20028**](InlineResponse20028.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **visualize_product_nutrition_by_id**
> str visualize_product_nutrition_by_id(id, default_css=default_css, accept=accept)

Product Nutrition by ID Widget

Visualize a product's nutritional information as HTML including CSS.

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
api_instance = spoonacular.ProductsApi(spoonacular.ApiClient(configuration))
id = 1 # int | The item's id.
default_css = True # bool | Whether the default CSS should be added to the response. (optional) (default to True)
accept = 'application/json' # str | Accept header. (optional)

try:
    # Product Nutrition by ID Widget
    api_response = api_instance.visualize_product_nutrition_by_id(id, default_css=default_css, accept=accept)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling ProductsApi->visualize_product_nutrition_by_id: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The item&#39;s id. | 
 **default_css** | **bool**| Whether the default CSS should be added to the response. | [optional] [default to True]
 **accept** | **str**| Accept header. | [optional] 

### Return type

**str**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

