# GetShoppingList200ResponseAislesInner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**aisle** | **str** |  | 
**items** | [**List[GetShoppingList200ResponseAislesInnerItemsInner]**](GetShoppingList200ResponseAislesInnerItemsInner.md) |  | [optional] 

## Example

```python
from spoonacular.models.get_shopping_list200_response_aisles_inner import GetShoppingList200ResponseAislesInner

# TODO update the JSON string below
json = "{}"
# create an instance of GetShoppingList200ResponseAislesInner from a JSON string
get_shopping_list200_response_aisles_inner_instance = GetShoppingList200ResponseAislesInner.from_json(json)
# print the JSON string representation of the object
print GetShoppingList200ResponseAislesInner.to_json()

# convert the object into a dict
get_shopping_list200_response_aisles_inner_dict = get_shopping_list200_response_aisles_inner_instance.to_dict()
# create an instance of GetShoppingList200ResponseAislesInner from a dict
get_shopping_list200_response_aisles_inner_form_dict = get_shopping_list200_response_aisles_inner.from_dict(get_shopping_list200_response_aisles_inner_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


