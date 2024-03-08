# SearchRestaurants200ResponseRestaurantsInner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | [optional] 
**name** | **str** |  | [optional] 
**phone_number** | **int** |  | [optional] 
**address** | [**SearchRestaurants200ResponseRestaurantsInnerAddress**](SearchRestaurants200ResponseRestaurantsInnerAddress.md) |  | [optional] 
**type** | **str** |  | [optional] 
**description** | **str** |  | [optional] 
**local_hours** | [**SearchRestaurants200ResponseRestaurantsInnerLocalHours**](SearchRestaurants200ResponseRestaurantsInnerLocalHours.md) |  | [optional] 
**cuisines** | **List[str]** |  | [optional] 
**food_photos** | **List[str]** |  | [optional] 
**logo_photos** | **List[str]** |  | [optional] 
**store_photos** | **List[object]** |  | [optional] 
**dollar_signs** | **int** |  | [optional] 
**pickup_enabled** | **bool** |  | [optional] 
**delivery_enabled** | **bool** |  | [optional] 
**is_open** | **bool** |  | [optional] 
**offers_first_party_delivery** | **bool** |  | [optional] 
**offers_third_party_delivery** | **bool** |  | [optional] 
**miles** | **float** |  | [optional] 
**weighted_rating_value** | **float** |  | [optional] 
**aggregated_rating_count** | **int** |  | [optional] 

## Example

```python
from spoonacular.models.search_restaurants200_response_restaurants_inner import SearchRestaurants200ResponseRestaurantsInner

# TODO update the JSON string below
json = "{}"
# create an instance of SearchRestaurants200ResponseRestaurantsInner from a JSON string
search_restaurants200_response_restaurants_inner_instance = SearchRestaurants200ResponseRestaurantsInner.from_json(json)
# print the JSON string representation of the object
print SearchRestaurants200ResponseRestaurantsInner.to_json()

# convert the object into a dict
search_restaurants200_response_restaurants_inner_dict = search_restaurants200_response_restaurants_inner_instance.to_dict()
# create an instance of SearchRestaurants200ResponseRestaurantsInner from a dict
search_restaurants200_response_restaurants_inner_form_dict = search_restaurants200_response_restaurants_inner.from_dict(search_restaurants200_response_restaurants_inner_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


