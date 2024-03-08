# GetMenuItemInformation200Response



## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  | 
**title** | **str** |  | 
**restaurant_chain** | **str** |  | 
**nutrition** | [**SearchGroceryProductsByUPC200ResponseNutrition**](SearchGroceryProductsByUPC200ResponseNutrition.md) |  | 
**badges** | **List[str]** |  | 
**breadcrumbs** | **List[str]** |  | 
**generated_text** | **str** |  | [optional] 
**image_type** | **str** |  | 
**likes** | **float** |  | 
**servings** | [**SearchGroceryProductsByUPC200ResponseServings**](SearchGroceryProductsByUPC200ResponseServings.md) |  | 
**price** | **float** |  | [optional] 
**spoonacular_score** | **float** |  | [optional] 

## Example

```python
from spoonacular.models.get_menu_item_information200_response import GetMenuItemInformation200Response

# TODO update the JSON string below
json = "{}"
# create an instance of GetMenuItemInformation200Response from a JSON string
get_menu_item_information200_response_instance = GetMenuItemInformation200Response.from_json(json)
# print the JSON string representation of the object
print GetMenuItemInformation200Response.to_json()

# convert the object into a dict
get_menu_item_information200_response_dict = get_menu_item_information200_response_instance.to_dict()
# create an instance of GetMenuItemInformation200Response from a dict
get_menu_item_information200_response_form_dict = get_menu_item_information200_response.from_dict(get_menu_item_information200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


