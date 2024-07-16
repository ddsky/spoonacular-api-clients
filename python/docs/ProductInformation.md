# ProductInformation



## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  | 
**title** | **str** |  | 
**upc** | **str** |  | [optional] 
**usda_code** | **str** |  | [optional] 
**breadcrumbs** | **List[str]** |  | 
**image_type** | **str** |  | 
**badges** | **List[str]** |  | 
**important_badges** | **List[str]** |  | 
**ingredient_count** | **int** |  | 
**generated_text** | **str** |  | [optional] 
**ingredient_list** | **str** |  | 
**ingredients** | [**List[IngredientBasics]**](IngredientBasics.md) |  | 
**likes** | **float** |  | 
**aisle** | **str** |  | 
**credits** | [**ProductInformationCredits**](ProductInformationCredits.md) |  | [optional] 
**nutrition** | [**SearchGroceryProductsByUPC200ResponseNutrition**](SearchGroceryProductsByUPC200ResponseNutrition.md) |  | 
**price** | **float** |  | 
**servings** | [**SearchGroceryProductsByUPC200ResponseServings**](SearchGroceryProductsByUPC200ResponseServings.md) |  | 
**spoonacular_score** | **float** |  | 

## Example

```python
from spoonacular.models.product_information import ProductInformation

# TODO update the JSON string below
json = "{}"
# create an instance of ProductInformation from a JSON string
product_information_instance = ProductInformation.from_json(json)
# print the JSON string representation of the object
print(ProductInformation.to_json())

# convert the object into a dict
product_information_dict = product_information_instance.to_dict()
# create an instance of ProductInformation from a dict
product_information_from_dict = ProductInformation.from_dict(product_information_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


