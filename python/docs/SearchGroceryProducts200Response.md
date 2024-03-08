# SearchGroceryProducts200Response



## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**products** | [**List[AutocompleteRecipeSearch200ResponseInner]**](AutocompleteRecipeSearch200ResponseInner.md) |  | 
**total_products** | **int** |  | 
**type** | **str** |  | 
**offset** | **int** |  | 
**number** | **int** |  | 

## Example

```python
from spoonacular.models.search_grocery_products200_response import SearchGroceryProducts200Response

# TODO update the JSON string below
json = "{}"
# create an instance of SearchGroceryProducts200Response from a JSON string
search_grocery_products200_response_instance = SearchGroceryProducts200Response.from_json(json)
# print the JSON string representation of the object
print SearchGroceryProducts200Response.to_json()

# convert the object into a dict
search_grocery_products200_response_dict = search_grocery_products200_response_instance.to_dict()
# create an instance of SearchGroceryProducts200Response from a dict
search_grocery_products200_response_form_dict = search_grocery_products200_response.from_dict(search_grocery_products200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


