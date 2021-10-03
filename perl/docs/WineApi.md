# WWW::OpenAPIClient::WineApi

## Load the API package
```perl
use WWW::OpenAPIClient::Object::WineApi;
```

All URIs are relative to *https://api.spoonacular.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_dish_pairing_for_wine**](WineApi.md#get_dish_pairing_for_wine) | **GET** /food/wine/dishes | Dish Pairing for Wine
[**get_wine_description**](WineApi.md#get_wine_description) | **GET** /food/wine/description | Wine Description
[**get_wine_pairing**](WineApi.md#get_wine_pairing) | **GET** /food/wine/pairing | Wine Pairing
[**get_wine_recommendation**](WineApi.md#get_wine_recommendation) | **GET** /food/wine/recommendation | Wine Recommendation


# **get_dish_pairing_for_wine**
> InlineResponse20044 get_dish_pairing_for_wine(wine => $wine)

Dish Pairing for Wine

Find a dish that goes well with a given wine.

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::WineApi;
my $api_instance = WWW::OpenAPIClient::WineApi->new(

    # Configure API key authorization: apiKeyScheme
    api_key => {'apiKey' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'apiKey' => 'Bearer'},
);

my $wine = malbec; # string | The type of wine that should be paired, e.g. \"merlot\", \"riesling\", or \"malbec\".

eval { 
    my $result = $api_instance->get_dish_pairing_for_wine(wine => $wine);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling WineApi->get_dish_pairing_for_wine: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **wine** | **string**| The type of wine that should be paired, e.g. \&quot;merlot\&quot;, \&quot;riesling\&quot;, or \&quot;malbec\&quot;. | 

### Return type

[**InlineResponse20044**](InlineResponse20044.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_wine_description**
> InlineResponse20046 get_wine_description(wine => $wine)

Wine Description

Get a simple description of a certain wine, e.g. \"malbec\", \"riesling\", or \"merlot\".

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::WineApi;
my $api_instance = WWW::OpenAPIClient::WineApi->new(

    # Configure API key authorization: apiKeyScheme
    api_key => {'apiKey' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'apiKey' => 'Bearer'},
);

my $wine = merlot; # string | The name of the wine that should be paired, e.g. \"merlot\", \"riesling\", or \"malbec\".

eval { 
    my $result = $api_instance->get_wine_description(wine => $wine);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling WineApi->get_wine_description: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **wine** | **string**| The name of the wine that should be paired, e.g. \&quot;merlot\&quot;, \&quot;riesling\&quot;, or \&quot;malbec\&quot;. | 

### Return type

[**InlineResponse20046**](InlineResponse20046.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_wine_pairing**
> InlineResponse20045 get_wine_pairing(food => $food, max_price => $max_price)

Wine Pairing

Find a wine that goes well with a food. Food can be a dish name (\"steak\"), an ingredient name (\"salmon\"), or a cuisine (\"italian\").

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::WineApi;
my $api_instance = WWW::OpenAPIClient::WineApi->new(

    # Configure API key authorization: apiKeyScheme
    api_key => {'apiKey' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'apiKey' => 'Bearer'},
);

my $food = steak; # string | The food to get a pairing for. This can be a dish (\"steak\"), an ingredient (\"salmon\"), or a cuisine (\"italian\").
my $max_price = 50; # double | The maximum price for the specific wine recommendation in USD.

eval { 
    my $result = $api_instance->get_wine_pairing(food => $food, max_price => $max_price);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling WineApi->get_wine_pairing: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **food** | **string**| The food to get a pairing for. This can be a dish (\&quot;steak\&quot;), an ingredient (\&quot;salmon\&quot;), or a cuisine (\&quot;italian\&quot;). | 
 **max_price** | **double**| The maximum price for the specific wine recommendation in USD. | [optional] 

### Return type

[**InlineResponse20045**](InlineResponse20045.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_wine_recommendation**
> InlineResponse20047 get_wine_recommendation(wine => $wine, max_price => $max_price, min_rating => $min_rating, number => $number)

Wine Recommendation

Get a specific wine recommendation (concrete product) for a given wine type, e.g. \"merlot\".

### Example 
```perl
use Data::Dumper;
use WWW::OpenAPIClient::WineApi;
my $api_instance = WWW::OpenAPIClient::WineApi->new(

    # Configure API key authorization: apiKeyScheme
    api_key => {'apiKey' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'apiKey' => 'Bearer'},
);

my $wine = merlot; # string | The type of wine to get a specific product recommendation for.
my $max_price = 50; # double | The maximum price for the specific wine recommendation in USD.
my $min_rating = 0.7; # double | The minimum rating of the recommended wine between 0 and 1. For example, 0.8 equals 4 out of 5 stars.
my $number = 3; # double | The number of wine recommendations expected (between 1 and 100).

eval { 
    my $result = $api_instance->get_wine_recommendation(wine => $wine, max_price => $max_price, min_rating => $min_rating, number => $number);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling WineApi->get_wine_recommendation: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **wine** | **string**| The type of wine to get a specific product recommendation for. | 
 **max_price** | **double**| The maximum price for the specific wine recommendation in USD. | [optional] 
 **min_rating** | **double**| The minimum rating of the recommended wine between 0 and 1. For example, 0.8 equals 4 out of 5 stars. | [optional] 
 **number** | **double**| The number of wine recommendations expected (between 1 and 100). | [optional] [default to 10]

### Return type

[**InlineResponse20047**](InlineResponse20047.md)

### Authorization

[apiKeyScheme](../README.md#apiKeyScheme)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

