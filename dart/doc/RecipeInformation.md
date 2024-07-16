# openapi.model.RecipeInformation

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  | 
**title** | **String** |  | 
**image** | **String** |  | 
**imageType** | **String** |  | [optional] 
**servings** | **num** |  | 
**readyInMinutes** | **int** |  | 
**preparationMinutes** | **int** |  | [optional] 
**cookingMinutes** | **int** |  | [optional] 
**license** | **String** |  | [optional] 
**sourceName** | **String** |  | 
**sourceUrl** | **String** |  | 
**spoonacularSourceUrl** | **String** |  | 
**aggregateLikes** | **int** |  | 
**healthScore** | **num** |  | 
**spoonacularScore** | **num** |  | 
**pricePerServing** | **num** |  | 
**analyzedInstructions** | [**List<Object>**](Object.md) |  | [default to const []]
**cheap** | **bool** |  | 
**creditsText** | **String** |  | 
**cuisines** | **List<String>** |  | [default to const []]
**dairyFree** | **bool** |  | 
**diets** | **List<String>** |  | [default to const []]
**gaps** | **String** |  | 
**glutenFree** | **bool** |  | 
**instructions** | **String** |  | 
**lowFodmap** | **bool** |  | 
**occasions** | **List<String>** |  | [default to const []]
**sustainable** | **bool** |  | 
**vegan** | **bool** |  | 
**vegetarian** | **bool** |  | 
**veryHealthy** | **bool** |  | 
**veryPopular** | **bool** |  | 
**weightWatcherSmartPoints** | **num** |  | 
**dishTypes** | **List<String>** |  | [default to const []]
**extendedIngredients** | [**Set<RecipeInformationExtendedIngredientsInner>**](RecipeInformationExtendedIngredientsInner.md) |  | [default to const {}]
**summary** | **String** |  | 
**winePairing** | [**RecipeInformationWinePairing**](RecipeInformationWinePairing.md) |  | [optional] 
**taste** | [**TasteInformation**](TasteInformation.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


