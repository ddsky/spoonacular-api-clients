# GetSimilarRecipes200ResponseInner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  | 
**title** | **str** |  | 
**image_type** | **str** |  | 
**ready_in_minutes** | **int** |  | 
**servings** | **float** |  | 
**source_url** | **str** |  | 

## Example

```python
from spoonacular.models.get_similar_recipes200_response_inner import GetSimilarRecipes200ResponseInner

# TODO update the JSON string below
json = "{}"
# create an instance of GetSimilarRecipes200ResponseInner from a JSON string
get_similar_recipes200_response_inner_instance = GetSimilarRecipes200ResponseInner.from_json(json)
# print the JSON string representation of the object
print GetSimilarRecipes200ResponseInner.to_json()

# convert the object into a dict
get_similar_recipes200_response_inner_dict = get_similar_recipes200_response_inner_instance.to_dict()
# create an instance of GetSimilarRecipes200ResponseInner from a dict
get_similar_recipes200_response_inner_form_dict = get_similar_recipes200_response_inner.from_dict(get_similar_recipes200_response_inner_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


