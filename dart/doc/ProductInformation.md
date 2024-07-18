# openapi.model.ProductInformation

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  | 
**title** | **String** |  | 
**upc** | **String** |  | [optional] 
**usdaCode** | **String** |  | [optional] 
**breadcrumbs** | **List<String>** |  | [default to const []]
**imageType** | **String** |  | 
**badges** | **List<String>** |  | [default to const []]
**importantBadges** | **List<String>** |  | [default to const []]
**ingredientCount** | **int** |  | 
**generatedText** | **String** |  | [optional] 
**ingredientList** | **String** |  | 
**ingredients** | [**List<IngredientBasics>**](IngredientBasics.md) |  | [default to const []]
**likes** | **num** |  | 
**aisle** | **String** |  | 
**credits** | [**ProductInformationCredits**](ProductInformationCredits.md) |  | [optional] 
**nutrition** | [**SearchGroceryProductsByUPC200ResponseNutrition**](SearchGroceryProductsByUPC200ResponseNutrition.md) |  | 
**price** | **num** |  | 
**servings** | [**SearchGroceryProductsByUPC200ResponseServings**](SearchGroceryProductsByUPC200ResponseServings.md) |  | 
**spoonacularScore** | **num** |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


