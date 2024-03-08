# SearchMenuItems200ResponseMenuItemsInner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  | 
**title** | **str** |  | 
**restaurant_chain** | **str** |  | 
**image** | **str** |  | 
**image_type** | **str** |  | 
**servings** | [**SearchGroceryProductsByUPC200ResponseServings**](SearchGroceryProductsByUPC200ResponseServings.md) |  | [optional] 

## Example

```python
from spoonacular.models.search_menu_items200_response_menu_items_inner import SearchMenuItems200ResponseMenuItemsInner

# TODO update the JSON string below
json = "{}"
# create an instance of SearchMenuItems200ResponseMenuItemsInner from a JSON string
search_menu_items200_response_menu_items_inner_instance = SearchMenuItems200ResponseMenuItemsInner.from_json(json)
# print the JSON string representation of the object
print SearchMenuItems200ResponseMenuItemsInner.to_json()

# convert the object into a dict
search_menu_items200_response_menu_items_inner_dict = search_menu_items200_response_menu_items_inner_instance.to_dict()
# create an instance of SearchMenuItems200ResponseMenuItemsInner from a dict
search_menu_items200_response_menu_items_inner_form_dict = search_menu_items200_response_menu_items_inner.from_dict(search_menu_items200_response_menu_items_inner_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


