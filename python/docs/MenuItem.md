# MenuItem



## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  | 
**title** | **str** |  | 
**restaurant_chain** | **str** |  | 
**nutrition** | [**SearchGroceryProductsByUPC200ResponseNutrition**](SearchGroceryProductsByUPC200ResponseNutrition.md) |  | [optional] 
**badges** | **List[str]** |  | [optional] 
**breadcrumbs** | **List[str]** |  | [optional] 
**generated_text** | **str** |  | [optional] 
**image_type** | **str** |  | [optional] 
**likes** | **int** |  | [optional] 
**servings** | [**MenuItemServings**](MenuItemServings.md) |  | [optional] 
**price** | **float** |  | 
**spoonacular_score** | **float** |  | 

## Example

```python
from spoonacular.models.menu_item import MenuItem

# TODO update the JSON string below
json = "{}"
# create an instance of MenuItem from a JSON string
menu_item_instance = MenuItem.from_json(json)
# print the JSON string representation of the object
print(MenuItem.to_json())

# convert the object into a dict
menu_item_dict = menu_item_instance.to_dict()
# create an instance of MenuItem from a dict
menu_item_from_dict = MenuItem.from_dict(menu_item_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


