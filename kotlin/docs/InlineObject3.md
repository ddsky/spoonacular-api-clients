
# InlineObject3

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**title** | **kotlin.String** | The title of the recipe. | 
**image** | [**java.io.File**](java.io.File.md) | The binary image of the recipe as jpg. | 
**ingredients** | **kotlin.String** | The ingredient list of the recipe, one ingredient per line (separate lines with \\n). | 
**instructions** | **kotlin.String** | The instructions to make the recipe. One step per line (separate lines with \\n). | 
**readyInMinutes** | [**java.math.BigDecimal**](java.math.BigDecimal.md) | The number of minutes it takes to get the recipe on the table. | 
**servings** | [**java.math.BigDecimal**](java.math.BigDecimal.md) | The number of servings that you can make from the ingredients. | 
**mask** | **kotlin.String** | The mask to put over the recipe image (\&quot;ellipseMask\&quot;, \&quot;diamondMask\&quot;, \&quot;diamondMask\&quot;, \&quot;starMask\&quot;, \&quot;heartMask\&quot;, \&quot;potMask\&quot;, \&quot;fishMask\&quot;). | 
**backgroundImage** | **kotlin.String** | The background image (\&quot;none\&quot;,\&quot;background1\&quot;, or \&quot;background2\&quot;). | 
**author** | **kotlin.String** | The author of the recipe. |  [optional]
**backgroundColor** | **kotlin.String** | The background color on the recipe card as a hex-string. |  [optional]
**fontColor** | **kotlin.String** | The font color on the recipe card as a hex-string. |  [optional]
**source** | **kotlin.String** | The source of the recipe. |  [optional]



