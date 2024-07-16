# WWW::OpenAPIClient::Object::ProductInformation

## Load the model package
```perl
use WWW::OpenAPIClient::Object::ProductInformation;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  | 
**title** | **string** |  | 
**upc** | **string** |  | [optional] 
**usda_code** | **string** |  | [optional] 
**breadcrumbs** | **ARRAY[string]** |  | 
**image_type** | **string** |  | 
**badges** | **ARRAY[string]** |  | 
**important_badges** | **ARRAY[string]** |  | 
**ingredient_count** | **int** |  | 
**generated_text** | **string** |  | [optional] 
**ingredient_list** | **string** |  | 
**ingredients** | [**ARRAY[IngredientBasics]**](IngredientBasics.md) |  | 
**likes** | **double** |  | 
**aisle** | **string** |  | 
**credits** | [**ProductInformationCredits**](ProductInformationCredits.md) |  | [optional] 
**nutrition** | [**SearchGroceryProductsByUPC200ResponseNutrition**](SearchGroceryProductsByUPC200ResponseNutrition.md) |  | 
**price** | **double** |  | 
**servings** | [**SearchGroceryProductsByUPC200ResponseServings**](SearchGroceryProductsByUPC200ResponseServings.md) |  | 
**spoonacular_score** | **double** |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


