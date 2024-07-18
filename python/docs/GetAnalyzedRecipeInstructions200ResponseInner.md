# GetAnalyzedRecipeInstructions200ResponseInner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** |  | 
**steps** | [**List[GetAnalyzedRecipeInstructions200ResponseInnerStepsInner]**](GetAnalyzedRecipeInstructions200ResponseInnerStepsInner.md) |  | [optional] 

## Example

```python
from spoonacular.models.get_analyzed_recipe_instructions200_response_inner import GetAnalyzedRecipeInstructions200ResponseInner

# TODO update the JSON string below
json = "{}"
# create an instance of GetAnalyzedRecipeInstructions200ResponseInner from a JSON string
get_analyzed_recipe_instructions200_response_inner_instance = GetAnalyzedRecipeInstructions200ResponseInner.from_json(json)
# print the JSON string representation of the object
print(GetAnalyzedRecipeInstructions200ResponseInner.to_json())

# convert the object into a dict
get_analyzed_recipe_instructions200_response_inner_dict = get_analyzed_recipe_instructions200_response_inner_instance.to_dict()
# create an instance of GetAnalyzedRecipeInstructions200ResponseInner from a dict
get_analyzed_recipe_instructions200_response_inner_from_dict = GetAnalyzedRecipeInstructions200ResponseInner.from_dict(get_analyzed_recipe_instructions200_response_inner_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


