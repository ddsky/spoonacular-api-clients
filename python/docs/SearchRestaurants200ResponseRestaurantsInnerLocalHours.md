# SearchRestaurants200ResponseRestaurantsInnerLocalHours


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**operational** | [**SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational**](SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational.md) |  | [optional] 
**delivery** | [**SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational**](SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational.md) |  | [optional] 
**pickup** | [**SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational**](SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational.md) |  | [optional] 
**dine_in** | [**SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational**](SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational.md) |  | [optional] 

## Example

```python
from spoonacular.models.search_restaurants200_response_restaurants_inner_local_hours import SearchRestaurants200ResponseRestaurantsInnerLocalHours

# TODO update the JSON string below
json = "{}"
# create an instance of SearchRestaurants200ResponseRestaurantsInnerLocalHours from a JSON string
search_restaurants200_response_restaurants_inner_local_hours_instance = SearchRestaurants200ResponseRestaurantsInnerLocalHours.from_json(json)
# print the JSON string representation of the object
print SearchRestaurants200ResponseRestaurantsInnerLocalHours.to_json()

# convert the object into a dict
search_restaurants200_response_restaurants_inner_local_hours_dict = search_restaurants200_response_restaurants_inner_local_hours_instance.to_dict()
# create an instance of SearchRestaurants200ResponseRestaurantsInnerLocalHours from a dict
search_restaurants200_response_restaurants_inner_local_hours_form_dict = search_restaurants200_response_restaurants_inner_local_hours.from_dict(search_restaurants200_response_restaurants_inner_local_hours_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


