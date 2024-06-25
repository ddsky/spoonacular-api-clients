# AnalyzeRecipeRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**title** | **str** |  | [optional] 
**servings** | **int** |  | [optional] 
**ingredients** | **List[str]** |  | [optional] 
**instructions** | **str** |  | [optional] 

## Example

```python
from spoonacular.models.analyze_recipe_request import AnalyzeRecipeRequest

# TODO update the JSON string below
json = "{}"
# create an instance of AnalyzeRecipeRequest from a JSON string
analyze_recipe_request_instance = AnalyzeRecipeRequest.from_json(json)
# print the JSON string representation of the object
print(AnalyzeRecipeRequest.to_json())

# convert the object into a dict
analyze_recipe_request_dict = analyze_recipe_request_instance.to_dict()
# create an instance of AnalyzeRecipeRequest from a dict
analyze_recipe_request_from_dict = AnalyzeRecipeRequest.from_dict(analyze_recipe_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


