# OpenapiClient::InlineResponse20030

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** |  | 
**title** | **String** |  | 
**breadcrumbs** | **Array&lt;String&gt;** |  | 
**image_type** | **String** |  | 
**badges** | **Array&lt;String&gt;** |  | 
**important_badges** | **Array&lt;String&gt;** |  | 
**ingredient_count** | **Integer** |  | 
**generated_text** | **Object** |  | [optional] 
**ingredient_list** | **String** |  | 
**ingredients** | [**Array&lt;InlineResponse20030Ingredients&gt;**](InlineResponse20030Ingredients.md) |  | 
**likes** | **Float** |  | 
**aisle** | **String** |  | 
**nutrition** | [**InlineResponse20028Nutrition**](InlineResponse20028Nutrition.md) |  | 
**price** | **Float** |  | 
**servings** | [**InlineResponse20028Servings**](InlineResponse20028Servings.md) |  | 
**spoonacular_score** | **Float** |  | 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::InlineResponse20030.new(id: null,
                                 title: null,
                                 breadcrumbs: null,
                                 image_type: null,
                                 badges: null,
                                 important_badges: null,
                                 ingredient_count: null,
                                 generated_text: null,
                                 ingredient_list: null,
                                 ingredients: null,
                                 likes: null,
                                 aisle: null,
                                 nutrition: null,
                                 price: null,
                                 servings: null,
                                 spoonacular_score: null)
```


