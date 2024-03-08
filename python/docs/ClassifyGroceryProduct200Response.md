# ClassifyGroceryProduct200Response



## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**clean_title** | **str** |  | 
**image** | **str** |  | 
**category** | **str** |  | 
**breadcrumbs** | **List[str]** |  | 
**usda_code** | **int** |  | 

## Example

```python
from spoonacular.models.classify_grocery_product200_response import ClassifyGroceryProduct200Response

# TODO update the JSON string below
json = "{}"
# create an instance of ClassifyGroceryProduct200Response from a JSON string
classify_grocery_product200_response_instance = ClassifyGroceryProduct200Response.from_json(json)
# print the JSON string representation of the object
print ClassifyGroceryProduct200Response.to_json()

# convert the object into a dict
classify_grocery_product200_response_dict = classify_grocery_product200_response_instance.to_dict()
# create an instance of ClassifyGroceryProduct200Response from a dict
classify_grocery_product200_response_form_dict = classify_grocery_product200_response.from_dict(classify_grocery_product200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


