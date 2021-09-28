# OpenapiClient::InlineResponse20028

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** |  | 
**title** | **String** |  | 
**badges** | **Array&lt;String&gt;** |  | 
**important_badges** | **Array&lt;String&gt;** |  | 
**breadcrumbs** | **Array&lt;String&gt;** |  | 
**generated_text** | **String** |  | 
**image_type** | **String** |  | 
**ingredient_count** | **Integer** |  | [optional] 
**ingredient_list** | **String** |  | 
**ingredients** | [**Array&lt;InlineResponse20028Ingredients&gt;**](InlineResponse20028Ingredients.md) |  | 
**likes** | **Float** |  | 
**nutrition** | [**InlineResponse20028Nutrition**](InlineResponse20028Nutrition.md) |  | 
**price** | **Float** |  | 
**servings** | [**InlineResponse20028Servings**](InlineResponse20028Servings.md) |  | 
**spoonacular_score** | **Float** |  | 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::InlineResponse20028.new(id: null,
                                 title: null,
                                 badges: null,
                                 important_badges: null,
                                 breadcrumbs: null,
                                 generated_text: null,
                                 image_type: null,
                                 ingredient_count: null,
                                 ingredient_list: null,
                                 ingredients: null,
                                 likes: null,
                                 nutrition: null,
                                 price: null,
                                 servings: null,
                                 spoonacular_score: null)
```


