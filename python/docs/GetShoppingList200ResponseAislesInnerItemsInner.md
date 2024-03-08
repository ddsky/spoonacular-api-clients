# GetShoppingList200ResponseAislesInnerItemsInner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  | 
**name** | **str** |  | 
**measures** | [**GetShoppingList200ResponseAislesInnerItemsInnerMeasures**](GetShoppingList200ResponseAislesInnerItemsInnerMeasures.md) |  | [optional] 
**pantry_item** | **bool** |  | 
**aisle** | **str** |  | 
**cost** | **float** |  | 
**ingredient_id** | **int** |  | 

## Example

```python
from spoonacular.models.get_shopping_list200_response_aisles_inner_items_inner import GetShoppingList200ResponseAislesInnerItemsInner

# TODO update the JSON string below
json = "{}"
# create an instance of GetShoppingList200ResponseAislesInnerItemsInner from a JSON string
get_shopping_list200_response_aisles_inner_items_inner_instance = GetShoppingList200ResponseAislesInnerItemsInner.from_json(json)
# print the JSON string representation of the object
print GetShoppingList200ResponseAislesInnerItemsInner.to_json()

# convert the object into a dict
get_shopping_list200_response_aisles_inner_items_inner_dict = get_shopping_list200_response_aisles_inner_items_inner_instance.to_dict()
# create an instance of GetShoppingList200ResponseAislesInnerItemsInner from a dict
get_shopping_list200_response_aisles_inner_items_inner_form_dict = get_shopping_list200_response_aisles_inner_items_inner.from_dict(get_shopping_list200_response_aisles_inner_items_inner_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


