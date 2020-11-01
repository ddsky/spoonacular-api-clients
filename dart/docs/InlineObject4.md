# openapi.model.InlineObject4

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**title** | **String** | The title of the recipe. | [default to null]
**image** | [**MultipartFile**](File.md) | The binary image of the recipe as jpg. | [default to null]
**ingredients** | **String** | The ingredient list of the recipe, one ingredient per line (separate lines with \\n). | [default to null]
**instructions** | **String** | The instructions to make the recipe. One step per line (separate lines with \\n). | [default to null]
**readyInMinutes** | **num** | The number of minutes it takes to get the recipe on the table. | [default to null]
**servings** | **num** | The number of servings the recipe makes. | [default to null]
**mask** | **String** | The mask to put over the recipe image (\&quot;ellipseMask\&quot;, \&quot;diamondMask\&quot;, \&quot;starMask\&quot;, \&quot;heartMask\&quot;, \&quot;potMask\&quot;, \&quot;fishMask\&quot;). | [default to null]
**backgroundImage** | **String** | The background image (\&quot;none\&quot;,\&quot;background1\&quot;, or \&quot;background2\&quot;). | [default to null]
**author** | **String** | The author of the recipe. | [optional] [default to null]
**backgroundColor** | **String** | The background color for the recipe card as a hex-string. | [optional] [default to null]
**fontColor** | **String** | The font color for the recipe card as a hex-string. | [optional] [default to null]
**source** | **String** | The source of the recipe. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


