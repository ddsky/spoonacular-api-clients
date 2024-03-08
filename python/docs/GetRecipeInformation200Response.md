# GetRecipeInformation200Response



## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  | 
**title** | **str** |  | 
**image** | **str** |  | 
**image_type** | **str** |  | 
**servings** | **float** |  | 
**ready_in_minutes** | **int** |  | 
**license** | **str** |  | 
**source_name** | **str** |  | 
**source_url** | **str** |  | 
**spoonacular_source_url** | **str** |  | 
**aggregate_likes** | **int** |  | 
**health_score** | **float** |  | 
**spoonacular_score** | **float** |  | 
**price_per_serving** | **float** |  | 
**analyzed_instructions** | **List[object]** |  | 
**cheap** | **bool** |  | 
**credits_text** | **str** |  | 
**cuisines** | **List[str]** |  | 
**dairy_free** | **bool** |  | 
**diets** | **List[str]** |  | 
**gaps** | **str** |  | 
**gluten_free** | **bool** |  | 
**instructions** | **str** |  | 
**ketogenic** | **bool** |  | 
**low_fodmap** | **bool** |  | 
**occasions** | **List[str]** |  | 
**sustainable** | **bool** |  | 
**vegan** | **bool** |  | 
**vegetarian** | **bool** |  | 
**very_healthy** | **bool** |  | 
**very_popular** | **bool** |  | 
**whole30** | **bool** |  | 
**weight_watcher_smart_points** | **float** |  | 
**dish_types** | **List[str]** |  | 
**extended_ingredients** | [**List[GetRecipeInformation200ResponseExtendedIngredientsInner]**](GetRecipeInformation200ResponseExtendedIngredientsInner.md) |  | 
**summary** | **str** |  | 
**wine_pairing** | [**GetRecipeInformation200ResponseWinePairing**](GetRecipeInformation200ResponseWinePairing.md) |  | 

## Example

```python
from spoonacular.models.get_recipe_information200_response import GetRecipeInformation200Response

# TODO update the JSON string below
json = "{}"
# create an instance of GetRecipeInformation200Response from a JSON string
get_recipe_information200_response_instance = GetRecipeInformation200Response.from_json(json)
# print the JSON string representation of the object
print GetRecipeInformation200Response.to_json()

# convert the object into a dict
get_recipe_information200_response_dict = get_recipe_information200_response_instance.to_dict()
# create an instance of GetRecipeInformation200Response from a dict
get_recipe_information200_response_form_dict = get_recipe_information200_response.from_dict(get_recipe_information200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


