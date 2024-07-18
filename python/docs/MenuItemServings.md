# MenuItemServings


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**number** | **float** |  | 
**size** | **float** |  | 
**unit** | **str** |  | 

## Example

```python
from spoonacular.models.menu_item_servings import MenuItemServings

# TODO update the JSON string below
json = "{}"
# create an instance of MenuItemServings from a JSON string
menu_item_servings_instance = MenuItemServings.from_json(json)
# print the JSON string representation of the object
print(MenuItemServings.to_json())

# convert the object into a dict
menu_item_servings_dict = menu_item_servings_instance.to_dict()
# create an instance of MenuItemServings from a dict
menu_item_servings_from_dict = MenuItemServings.from_dict(menu_item_servings_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


