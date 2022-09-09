# openapi_client.ProductsApi

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
> AutocompleteProductSearch200Response autocomplete_product_search(query)

Autocomplete Product Search

Generate suggestions for grocery products based on a (partial) query. The matches will be found by looking in the title only.

### Example

* Api Key Authentication (apiKeyScheme):

```python
import time
import openapi_client
from com.spoonacular import products_api
from openapi_client.model.autocomplete_product_search200_response import AutocompleteProductSearch200Response
from pprint import pprint
# Defining the host is optional and defaults to https://api.spoonacular.com
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://api.spoonacular.com"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKeyScheme
configuration.api_key['apiKeyScheme'] = 'YOUR_API_KEY'

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyScheme'] = 'Bearer'

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = products_api.ProductsApi(api_client)
    query = "chicke" # str | The (partial) search query.
    number = 10 # int | The number of results to return (between 1 and 25). (optional)

    # example passing only required values which don't have defaults set
    try:
        # Autocomplete Product Search
        api_response = api_instance.autocomplete_product_search(query)
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling ProductsApi->autocomplete_product_search: %s\n" % e)

    # example passing only required values which don't have defaults set
    # and optional values
    try:
        # Autocomplete Product Search
        api_response = api_instance.autocomplete_product_search(query, number=number)
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling ProductsApi->autocomplete_product_search: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **str**| The (partial) search query. |
 **number** | **int**| The number of results to return (between 1 and 25). | [optional]

### Return type

[**AutocompleteProductSearch200Response**](AutocompleteProductSearch200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**401** | Unauthorized |  -  |
**403** | Forbidden |  -  |
**404** | Not Found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **classify_grocery_product**
> ClassifyGroceryProduct200Response classify_grocery_product(classify_grocery_product_request)

Classify Grocery Product

This endpoint allows you to match a packaged food to a basic category, e.g. a specific brand of milk to the category milk.

### Example

* Api Key Authentication (apiKeyScheme):

```python
import time
import openapi_client
from com.spoonacular import products_api
from openapi_client.model.classify_grocery_product_request import ClassifyGroceryProductRequest
from openapi_client.model.classify_grocery_product200_response import ClassifyGroceryProduct200Response
from pprint import pprint
# Defining the host is optional and defaults to https://api.spoonacular.com
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://api.spoonacular.com"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKeyScheme
configuration.api_key['apiKeyScheme'] = 'YOUR_API_KEY'

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyScheme'] = 'Bearer'

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = products_api.ProductsApi(api_client)
    classify_grocery_product_request = ClassifyGroceryProductRequest(
        title="title_example",
        upc="upc_example",
        plu_code="plu_code_example",
    ) # ClassifyGroceryProductRequest | 
    locale = "en_US" # str | The display name of the returned category, supported is en_US (for American English) and en_GB (for British English). (optional)

    # example passing only required values which don't have defaults set
    try:
        # Classify Grocery Product
        api_response = api_instance.classify_grocery_product(classify_grocery_product_request)
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling ProductsApi->classify_grocery_product: %s\n" % e)

    # example passing only required values which don't have defaults set
    # and optional values
    try:
        # Classify Grocery Product
        api_response = api_instance.classify_grocery_product(classify_grocery_product_request, locale=locale)
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling ProductsApi->classify_grocery_product: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **classify_grocery_product_request** | [**ClassifyGroceryProductRequest**](ClassifyGroceryProductRequest.md)|  |
 **locale** | **str**| The display name of the returned category, supported is en_US (for American English) and en_GB (for British English). | [optional]

### Return type

[**ClassifyGroceryProduct200Response**](ClassifyGroceryProduct200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**401** | Unauthorized |  -  |
**403** | Forbidden |  -  |
**404** | Not Found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **classify_grocery_product_bulk**
> [ClassifyGroceryProductBulk200ResponseInner] classify_grocery_product_bulk(classify_grocery_product_bulk_request_inner)

Classify Grocery Product Bulk

Provide a set of product jsons, get back classified products.

### Example

* Api Key Authentication (apiKeyScheme):

```python
import time
import openapi_client
from com.spoonacular import products_api
from openapi_client.model.classify_grocery_product_bulk_request_inner import ClassifyGroceryProductBulkRequestInner
from openapi_client.model.classify_grocery_product_bulk200_response_inner import ClassifyGroceryProductBulk200ResponseInner
from pprint import pprint
# Defining the host is optional and defaults to https://api.spoonacular.com
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://api.spoonacular.com"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKeyScheme
configuration.api_key['apiKeyScheme'] = 'YOUR_API_KEY'

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyScheme'] = 'Bearer'

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = products_api.ProductsApi(api_client)
    classify_grocery_product_bulk_request_inner = [
        ClassifyGroceryProductBulkRequestInner(
            title="title_example",
            upc="upc_example",
            plu_code="plu_code_example",
        ),
    ] # [ClassifyGroceryProductBulkRequestInner] | 
    locale = "en_US" # str | The display name of the returned category, supported is en_US (for American English) and en_GB (for British English). (optional)

    # example passing only required values which don't have defaults set
    try:
        # Classify Grocery Product Bulk
        api_response = api_instance.classify_grocery_product_bulk(classify_grocery_product_bulk_request_inner)
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling ProductsApi->classify_grocery_product_bulk: %s\n" % e)

    # example passing only required values which don't have defaults set
    # and optional values
    try:
        # Classify Grocery Product Bulk
        api_response = api_instance.classify_grocery_product_bulk(classify_grocery_product_bulk_request_inner, locale=locale)
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling ProductsApi->classify_grocery_product_bulk: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **classify_grocery_product_bulk_request_inner** | [**[ClassifyGroceryProductBulkRequestInner]**](ClassifyGroceryProductBulkRequestInner.md)|  |
 **locale** | **str**| The display name of the returned category, supported is en_US (for American English) and en_GB (for British English). | [optional]

### Return type

[**[ClassifyGroceryProductBulk200ResponseInner]**](ClassifyGroceryProductBulk200ResponseInner.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**401** | Unauthorized |  -  |
**403** | Forbidden |  -  |
**404** | Not Found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_comparable_products**
> GetComparableProducts200Response get_comparable_products(upc)

Get Comparable Products

Find comparable products to the given one.

### Example

* Api Key Authentication (apiKeyScheme):

```python
import time
import openapi_client
from com.spoonacular import products_api
from openapi_client.model.get_comparable_products200_response import GetComparableProducts200Response
from pprint import pprint
# Defining the host is optional and defaults to https://api.spoonacular.com
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://api.spoonacular.com"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKeyScheme
configuration.api_key['apiKeyScheme'] = 'YOUR_API_KEY'

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyScheme'] = 'Bearer'

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = products_api.ProductsApi(api_client)
    upc = 33698816271 # float | The UPC of the product for which you want to find comparable products.

    # example passing only required values which don't have defaults set
    try:
        # Get Comparable Products
        api_response = api_instance.get_comparable_products(upc)
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling ProductsApi->get_comparable_products: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **upc** | **float**| The UPC of the product for which you want to find comparable products. |

### Return type

[**GetComparableProducts200Response**](GetComparableProducts200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**401** | Unauthorized |  -  |
**403** | Forbidden |  -  |
**404** | Not Found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_product_information**
> GetProductInformation200Response get_product_information(id)

Get Product Information

Use a product id to get full information about a product, such as ingredients, nutrition, etc. The nutritional information is per serving.

### Example

* Api Key Authentication (apiKeyScheme):

```python
import time
import openapi_client
from com.spoonacular import products_api
from openapi_client.model.get_product_information200_response import GetProductInformation200Response
from pprint import pprint
# Defining the host is optional and defaults to https://api.spoonacular.com
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://api.spoonacular.com"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKeyScheme
configuration.api_key['apiKeyScheme'] = 'YOUR_API_KEY'

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyScheme'] = 'Bearer'

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = products_api.ProductsApi(api_client)
    id = 1 # int | The item's id.

    # example passing only required values which don't have defaults set
    try:
        # Get Product Information
        api_response = api_instance.get_product_information(id)
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling ProductsApi->get_product_information: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The item&#39;s id. |

### Return type

[**GetProductInformation200Response**](GetProductInformation200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**401** | Unauthorized |  -  |
**403** | Forbidden |  -  |
**404** | Not Found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **product_nutrition_by_id_image**
> {str: (bool, date, datetime, dict, float, int, list, str, none_type)} product_nutrition_by_id_image(id)

Product Nutrition by ID Image

Visualize a product's nutritional information as an image.

### Example

* Api Key Authentication (apiKeyScheme):

```python
import time
import openapi_client
from com.spoonacular import products_api
from pprint import pprint
# Defining the host is optional and defaults to https://api.spoonacular.com
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://api.spoonacular.com"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKeyScheme
configuration.api_key['apiKeyScheme'] = 'YOUR_API_KEY'

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyScheme'] = 'Bearer'

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = products_api.ProductsApi(api_client)
    id = 7657 # float | The id of the product.

    # example passing only required values which don't have defaults set
    try:
        # Product Nutrition by ID Image
        api_response = api_instance.product_nutrition_by_id_image(id)
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling ProductsApi->product_nutrition_by_id_image: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **float**| The id of the product. |

### Return type

**{str: (bool, date, datetime, dict, float, int, list, str, none_type)}**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: image/png


### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**401** | Unauthorized |  -  |
**403** | Forbidden |  -  |
**404** | Not Found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **product_nutrition_label_image**
> {str: (bool, date, datetime, dict, float, int, list, str, none_type)} product_nutrition_label_image(id)

Product Nutrition Label Image

Get a product's nutrition label as an image.

### Example

* Api Key Authentication (apiKeyScheme):

```python
import time
import openapi_client
from com.spoonacular import products_api
from pprint import pprint
# Defining the host is optional and defaults to https://api.spoonacular.com
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://api.spoonacular.com"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKeyScheme
configuration.api_key['apiKeyScheme'] = 'YOUR_API_KEY'

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyScheme'] = 'Bearer'

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = products_api.ProductsApi(api_client)
    id = 22347 # float | The product id.
    show_optional_nutrients = False # bool | Whether to show optional nutrients. (optional)
    show_zero_values = False # bool | Whether to show zero values. (optional)
    show_ingredients = False # bool | Whether to show a list of ingredients. (optional)

    # example passing only required values which don't have defaults set
    try:
        # Product Nutrition Label Image
        api_response = api_instance.product_nutrition_label_image(id)
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling ProductsApi->product_nutrition_label_image: %s\n" % e)

    # example passing only required values which don't have defaults set
    # and optional values
    try:
        # Product Nutrition Label Image
        api_response = api_instance.product_nutrition_label_image(id, show_optional_nutrients=show_optional_nutrients, show_zero_values=show_zero_values, show_ingredients=show_ingredients)
        pprint(api_response)
    except openapi_client.ApiException as e:
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

**{str: (bool, date, datetime, dict, float, int, list, str, none_type)}**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: image/png


### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**401** | Unauthorized |  -  |
**403** | Forbidden |  -  |
**404** | Not Found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **product_nutrition_label_widget**
> str product_nutrition_label_widget(id)

Product Nutrition Label Widget

Get a product's nutrition label as an HTML widget.

### Example

* Api Key Authentication (apiKeyScheme):

```python
import time
import openapi_client
from com.spoonacular import products_api
from pprint import pprint
# Defining the host is optional and defaults to https://api.spoonacular.com
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://api.spoonacular.com"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKeyScheme
configuration.api_key['apiKeyScheme'] = 'YOUR_API_KEY'

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyScheme'] = 'Bearer'

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = products_api.ProductsApi(api_client)
    id = 22347 # float | The product id.
    default_css = False # bool | Whether the default CSS should be added to the response. (optional) if omitted the server will use the default value of True
    show_optional_nutrients = False # bool | Whether to show optional nutrients. (optional)
    show_zero_values = False # bool | Whether to show zero values. (optional)
    show_ingredients = False # bool | Whether to show a list of ingredients. (optional)

    # example passing only required values which don't have defaults set
    try:
        # Product Nutrition Label Widget
        api_response = api_instance.product_nutrition_label_widget(id)
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling ProductsApi->product_nutrition_label_widget: %s\n" % e)

    # example passing only required values which don't have defaults set
    # and optional values
    try:
        # Product Nutrition Label Widget
        api_response = api_instance.product_nutrition_label_widget(id, default_css=default_css, show_optional_nutrients=show_optional_nutrients, show_zero_values=show_zero_values, show_ingredients=show_ingredients)
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling ProductsApi->product_nutrition_label_widget: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **float**| The product id. |
 **default_css** | **bool**| Whether the default CSS should be added to the response. | [optional] if omitted the server will use the default value of True
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


### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**401** | Unauthorized |  -  |
**403** | Forbidden |  -  |
**404** | Not Found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **search_grocery_products**
> SearchGroceryProducts200Response search_grocery_products()

Search Grocery Products

Search packaged food products, such as frozen pizza or Greek yogurt.

### Example

* Api Key Authentication (apiKeyScheme):

```python
import time
import openapi_client
from com.spoonacular import products_api
from openapi_client.model.search_grocery_products200_response import SearchGroceryProducts200Response
from pprint import pprint
# Defining the host is optional and defaults to https://api.spoonacular.com
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://api.spoonacular.com"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKeyScheme
configuration.api_key['apiKeyScheme'] = 'YOUR_API_KEY'

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyScheme'] = 'Bearer'

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = products_api.ProductsApi(api_client)
    query = "burger" # str | The (natural language) search query. (optional)
    min_calories = 50 # float | The minimum amount of calories the product must have. (optional)
    max_calories = 800 # float | The maximum amount of calories the product can have. (optional)
    min_carbs = 10 # float | The minimum amount of carbohydrates in grams the product must have. (optional)
    max_carbs = 100 # float | The maximum amount of carbohydrates in grams the product can have. (optional)
    min_protein = 10 # float | The minimum amount of protein in grams the product must have. (optional)
    max_protein = 100 # float | The maximum amount of protein in grams the product can have. (optional)
    min_fat = 1 # float | The minimum amount of fat in grams the product must have. (optional)
    max_fat = 100 # float | The maximum amount of fat in grams the product can have. (optional)
    add_product_information = True # bool | If set to true, you get more information about the products returned. (optional)
    offset = 0 # int | The number of results to skip (between 0 and 900). (optional)
    number = 10 # int | The maximum number of items to return (between 1 and 100). Defaults to 10. (optional) if omitted the server will use the default value of 10

    # example passing only required values which don't have defaults set
    # and optional values
    try:
        # Search Grocery Products
        api_response = api_instance.search_grocery_products(query=query, min_calories=min_calories, max_calories=max_calories, min_carbs=min_carbs, max_carbs=max_carbs, min_protein=min_protein, max_protein=max_protein, min_fat=min_fat, max_fat=max_fat, add_product_information=add_product_information, offset=offset, number=number)
        pprint(api_response)
    except openapi_client.ApiException as e:
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
 **number** | **int**| The maximum number of items to return (between 1 and 100). Defaults to 10. | [optional] if omitted the server will use the default value of 10

### Return type

[**SearchGroceryProducts200Response**](SearchGroceryProducts200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**401** | Unauthorized |  -  |
**403** | Forbidden |  -  |
**404** | Not Found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **search_grocery_products_by_upc**
> SearchGroceryProductsByUPC200Response search_grocery_products_by_upc(upc)

Search Grocery Products by UPC

Get information about a packaged food using its UPC.

### Example

* Api Key Authentication (apiKeyScheme):

```python
import time
import openapi_client
from com.spoonacular import products_api
from openapi_client.model.search_grocery_products_by_upc200_response import SearchGroceryProductsByUPC200Response
from pprint import pprint
# Defining the host is optional and defaults to https://api.spoonacular.com
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://api.spoonacular.com"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKeyScheme
configuration.api_key['apiKeyScheme'] = 'YOUR_API_KEY'

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyScheme'] = 'Bearer'

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = products_api.ProductsApi(api_client)
    upc = 41631000564 # float | The product's UPC.

    # example passing only required values which don't have defaults set
    try:
        # Search Grocery Products by UPC
        api_response = api_instance.search_grocery_products_by_upc(upc)
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling ProductsApi->search_grocery_products_by_upc: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **upc** | **float**| The product&#39;s UPC. |

### Return type

[**SearchGroceryProductsByUPC200Response**](SearchGroceryProductsByUPC200Response.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**401** | Unauthorized |  -  |
**403** | Forbidden |  -  |
**404** | Not Found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **visualize_product_nutrition_by_id**
> str visualize_product_nutrition_by_id(id)

Product Nutrition by ID Widget

Visualize a product's nutritional information as HTML including CSS.

### Example

* Api Key Authentication (apiKeyScheme):

```python
import time
import openapi_client
from com.spoonacular import products_api
from pprint import pprint
# Defining the host is optional and defaults to https://api.spoonacular.com
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://api.spoonacular.com"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKeyScheme
configuration.api_key['apiKeyScheme'] = 'YOUR_API_KEY'

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyScheme'] = 'Bearer'

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = products_api.ProductsApi(api_client)
    id = 1 # int | The item's id.
    default_css = False # bool | Whether the default CSS should be added to the response. (optional) if omitted the server will use the default value of True
    accept = "application/json" # str | Accept header. (optional)

    # example passing only required values which don't have defaults set
    try:
        # Product Nutrition by ID Widget
        api_response = api_instance.visualize_product_nutrition_by_id(id)
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling ProductsApi->visualize_product_nutrition_by_id: %s\n" % e)

    # example passing only required values which don't have defaults set
    # and optional values
    try:
        # Product Nutrition by ID Widget
        api_response = api_instance.visualize_product_nutrition_by_id(id, default_css=default_css, accept=accept)
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling ProductsApi->visualize_product_nutrition_by_id: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The item&#39;s id. |
 **default_css** | **bool**| Whether the default CSS should be added to the response. | [optional] if omitted the server will use the default value of True
 **accept** | **str**| Accept header. | [optional]

### Return type

**str**

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html


### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**401** | Unauthorized |  -  |
**403** | Forbidden |  -  |
**404** | Not Found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

