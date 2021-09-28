# OpenapiClient::InlineResponse2001

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** |  | 
**image** | **String** |  | 
**image_type** | **String** |  | 
**likes** | **Integer** |  | 
**missed_ingredient_count** | **Integer** |  | 
**missed_ingredients** | [**Array&lt;RecipesFindByIngredientsMissedIngredients&gt;**](RecipesFindByIngredientsMissedIngredients.md) |  | 
**title** | **String** |  | 
**unused_ingredients** | **Array&lt;Object&gt;** |  | 
**used_ingredient_count** | **Float** |  | 
**used_ingredients** | [**Array&lt;RecipesFindByIngredientsMissedIngredients&gt;**](RecipesFindByIngredientsMissedIngredients.md) |  | 
**** | **String** |  | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::InlineResponse2001.new(id: null,
                                 image: null,
                                 image_type: null,
                                 likes: null,
                                 missed_ingredient_count: null,
                                 missed_ingredients: null,
                                 title: null,
                                 unused_ingredients: null,
                                 used_ingredient_count: null,
                                 used_ingredients: null,
                                 : null)
```


