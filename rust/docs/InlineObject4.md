# InlineObject4

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**title** | **String** | The title of the recipe. | 
**image** | [***&std::path::Path**](&std::path::Path.md) | The binary image of the recipe as jpg. | 
**ingredients** | **String** | The ingredient list of the recipe, one ingredient per line (separate lines with \\n). | 
**instructions** | **String** | The instructions to make the recipe. One step per line (separate lines with \\n). | 
**ready_in_minutes** | **f32** | The number of minutes it takes to get the recipe on the table. | 
**servings** | **f32** | The number of servings the recipe makes. | 
**mask** | **String** | The mask to put over the recipe image (\"ellipseMask\", \"diamondMask\", \"starMask\", \"heartMask\", \"potMask\", \"fishMask\"). | 
**background_image** | **String** | The background image (\"none\",\"background1\", or \"background2\"). | 
**author** | **String** | The author of the recipe. | [optional] 
**background_color** | **String** | The background color for the recipe card as a hex-string. | [optional] 
**font_color** | **String** | The font color for the recipe card as a hex-string. | [optional] 
**source** | **String** | The source of the recipe. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


