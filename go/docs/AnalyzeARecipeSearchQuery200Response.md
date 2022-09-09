# AnalyzeARecipeSearchQuery200Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Dishes** | [**[]AnalyzeARecipeSearchQuery200ResponseDishesInner**](AnalyzeARecipeSearchQuery200ResponseDishesInner.md) |  | 
**Ingredients** | [**[]AnalyzeARecipeSearchQuery200ResponseIngredientsInner**](AnalyzeARecipeSearchQuery200ResponseIngredientsInner.md) |  | 
**Cuisines** | **[]string** |  | 
**Modifiers** | **[]string** |  | 

## Methods

### NewAnalyzeARecipeSearchQuery200Response

`func NewAnalyzeARecipeSearchQuery200Response(dishes []AnalyzeARecipeSearchQuery200ResponseDishesInner, ingredients []AnalyzeARecipeSearchQuery200ResponseIngredientsInner, cuisines []string, modifiers []string, ) *AnalyzeARecipeSearchQuery200Response`

NewAnalyzeARecipeSearchQuery200Response instantiates a new AnalyzeARecipeSearchQuery200Response object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewAnalyzeARecipeSearchQuery200ResponseWithDefaults

`func NewAnalyzeARecipeSearchQuery200ResponseWithDefaults() *AnalyzeARecipeSearchQuery200Response`

NewAnalyzeARecipeSearchQuery200ResponseWithDefaults instantiates a new AnalyzeARecipeSearchQuery200Response object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetDishes

`func (o *AnalyzeARecipeSearchQuery200Response) GetDishes() []AnalyzeARecipeSearchQuery200ResponseDishesInner`

GetDishes returns the Dishes field if non-nil, zero value otherwise.

### GetDishesOk

`func (o *AnalyzeARecipeSearchQuery200Response) GetDishesOk() (*[]AnalyzeARecipeSearchQuery200ResponseDishesInner, bool)`

GetDishesOk returns a tuple with the Dishes field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDishes

`func (o *AnalyzeARecipeSearchQuery200Response) SetDishes(v []AnalyzeARecipeSearchQuery200ResponseDishesInner)`

SetDishes sets Dishes field to given value.


### GetIngredients

`func (o *AnalyzeARecipeSearchQuery200Response) GetIngredients() []AnalyzeARecipeSearchQuery200ResponseIngredientsInner`

GetIngredients returns the Ingredients field if non-nil, zero value otherwise.

### GetIngredientsOk

`func (o *AnalyzeARecipeSearchQuery200Response) GetIngredientsOk() (*[]AnalyzeARecipeSearchQuery200ResponseIngredientsInner, bool)`

GetIngredientsOk returns a tuple with the Ingredients field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIngredients

`func (o *AnalyzeARecipeSearchQuery200Response) SetIngredients(v []AnalyzeARecipeSearchQuery200ResponseIngredientsInner)`

SetIngredients sets Ingredients field to given value.


### GetCuisines

`func (o *AnalyzeARecipeSearchQuery200Response) GetCuisines() []string`

GetCuisines returns the Cuisines field if non-nil, zero value otherwise.

### GetCuisinesOk

`func (o *AnalyzeARecipeSearchQuery200Response) GetCuisinesOk() (*[]string, bool)`

GetCuisinesOk returns a tuple with the Cuisines field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCuisines

`func (o *AnalyzeARecipeSearchQuery200Response) SetCuisines(v []string)`

SetCuisines sets Cuisines field to given value.


### GetModifiers

`func (o *AnalyzeARecipeSearchQuery200Response) GetModifiers() []string`

GetModifiers returns the Modifiers field if non-nil, zero value otherwise.

### GetModifiersOk

`func (o *AnalyzeARecipeSearchQuery200Response) GetModifiersOk() (*[]string, bool)`

GetModifiersOk returns a tuple with the Modifiers field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetModifiers

`func (o *AnalyzeARecipeSearchQuery200Response) SetModifiers(v []string)`

SetModifiers sets Modifiers field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


