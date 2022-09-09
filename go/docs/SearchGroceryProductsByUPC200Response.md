# SearchGroceryProductsByUPC200Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **int32** |  | 
**Title** | **string** |  | 
**Badges** | **[]string** |  | 
**ImportantBadges** | **[]string** |  | 
**Breadcrumbs** | **[]string** |  | 
**GeneratedText** | **string** |  | 
**ImageType** | **string** |  | 
**IngredientCount** | Pointer to **int32** |  | [optional] 
**IngredientList** | **string** |  | 
**Ingredients** | [**[]SearchGroceryProductsByUPC200ResponseIngredientsInner**](SearchGroceryProductsByUPC200ResponseIngredientsInner.md) |  | 
**Likes** | **float32** |  | 
**Nutrition** | [**SearchGroceryProductsByUPC200ResponseNutrition**](SearchGroceryProductsByUPC200ResponseNutrition.md) |  | 
**Price** | **float32** |  | 
**Servings** | [**SearchGroceryProductsByUPC200ResponseServings**](SearchGroceryProductsByUPC200ResponseServings.md) |  | 
**SpoonacularScore** | **float32** |  | 

## Methods

### NewSearchGroceryProductsByUPC200Response

`func NewSearchGroceryProductsByUPC200Response(id int32, title string, badges []string, importantBadges []string, breadcrumbs []string, generatedText string, imageType string, ingredientList string, ingredients []SearchGroceryProductsByUPC200ResponseIngredientsInner, likes float32, nutrition SearchGroceryProductsByUPC200ResponseNutrition, price float32, servings SearchGroceryProductsByUPC200ResponseServings, spoonacularScore float32, ) *SearchGroceryProductsByUPC200Response`

NewSearchGroceryProductsByUPC200Response instantiates a new SearchGroceryProductsByUPC200Response object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewSearchGroceryProductsByUPC200ResponseWithDefaults

`func NewSearchGroceryProductsByUPC200ResponseWithDefaults() *SearchGroceryProductsByUPC200Response`

NewSearchGroceryProductsByUPC200ResponseWithDefaults instantiates a new SearchGroceryProductsByUPC200Response object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetId

`func (o *SearchGroceryProductsByUPC200Response) GetId() int32`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *SearchGroceryProductsByUPC200Response) GetIdOk() (*int32, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *SearchGroceryProductsByUPC200Response) SetId(v int32)`

SetId sets Id field to given value.


### GetTitle

`func (o *SearchGroceryProductsByUPC200Response) GetTitle() string`

GetTitle returns the Title field if non-nil, zero value otherwise.

### GetTitleOk

`func (o *SearchGroceryProductsByUPC200Response) GetTitleOk() (*string, bool)`

GetTitleOk returns a tuple with the Title field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTitle

`func (o *SearchGroceryProductsByUPC200Response) SetTitle(v string)`

SetTitle sets Title field to given value.


### GetBadges

`func (o *SearchGroceryProductsByUPC200Response) GetBadges() []string`

GetBadges returns the Badges field if non-nil, zero value otherwise.

### GetBadgesOk

`func (o *SearchGroceryProductsByUPC200Response) GetBadgesOk() (*[]string, bool)`

GetBadgesOk returns a tuple with the Badges field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBadges

`func (o *SearchGroceryProductsByUPC200Response) SetBadges(v []string)`

SetBadges sets Badges field to given value.


### GetImportantBadges

`func (o *SearchGroceryProductsByUPC200Response) GetImportantBadges() []string`

GetImportantBadges returns the ImportantBadges field if non-nil, zero value otherwise.

### GetImportantBadgesOk

`func (o *SearchGroceryProductsByUPC200Response) GetImportantBadgesOk() (*[]string, bool)`

GetImportantBadgesOk returns a tuple with the ImportantBadges field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetImportantBadges

`func (o *SearchGroceryProductsByUPC200Response) SetImportantBadges(v []string)`

SetImportantBadges sets ImportantBadges field to given value.


### GetBreadcrumbs

`func (o *SearchGroceryProductsByUPC200Response) GetBreadcrumbs() []string`

GetBreadcrumbs returns the Breadcrumbs field if non-nil, zero value otherwise.

### GetBreadcrumbsOk

`func (o *SearchGroceryProductsByUPC200Response) GetBreadcrumbsOk() (*[]string, bool)`

GetBreadcrumbsOk returns a tuple with the Breadcrumbs field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBreadcrumbs

`func (o *SearchGroceryProductsByUPC200Response) SetBreadcrumbs(v []string)`

SetBreadcrumbs sets Breadcrumbs field to given value.


### GetGeneratedText

`func (o *SearchGroceryProductsByUPC200Response) GetGeneratedText() string`

GetGeneratedText returns the GeneratedText field if non-nil, zero value otherwise.

### GetGeneratedTextOk

`func (o *SearchGroceryProductsByUPC200Response) GetGeneratedTextOk() (*string, bool)`

GetGeneratedTextOk returns a tuple with the GeneratedText field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetGeneratedText

`func (o *SearchGroceryProductsByUPC200Response) SetGeneratedText(v string)`

SetGeneratedText sets GeneratedText field to given value.


### GetImageType

`func (o *SearchGroceryProductsByUPC200Response) GetImageType() string`

GetImageType returns the ImageType field if non-nil, zero value otherwise.

### GetImageTypeOk

`func (o *SearchGroceryProductsByUPC200Response) GetImageTypeOk() (*string, bool)`

GetImageTypeOk returns a tuple with the ImageType field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetImageType

`func (o *SearchGroceryProductsByUPC200Response) SetImageType(v string)`

SetImageType sets ImageType field to given value.


### GetIngredientCount

`func (o *SearchGroceryProductsByUPC200Response) GetIngredientCount() int32`

GetIngredientCount returns the IngredientCount field if non-nil, zero value otherwise.

### GetIngredientCountOk

`func (o *SearchGroceryProductsByUPC200Response) GetIngredientCountOk() (*int32, bool)`

GetIngredientCountOk returns a tuple with the IngredientCount field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIngredientCount

`func (o *SearchGroceryProductsByUPC200Response) SetIngredientCount(v int32)`

SetIngredientCount sets IngredientCount field to given value.

### HasIngredientCount

`func (o *SearchGroceryProductsByUPC200Response) HasIngredientCount() bool`

HasIngredientCount returns a boolean if a field has been set.

### GetIngredientList

`func (o *SearchGroceryProductsByUPC200Response) GetIngredientList() string`

GetIngredientList returns the IngredientList field if non-nil, zero value otherwise.

### GetIngredientListOk

`func (o *SearchGroceryProductsByUPC200Response) GetIngredientListOk() (*string, bool)`

GetIngredientListOk returns a tuple with the IngredientList field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIngredientList

`func (o *SearchGroceryProductsByUPC200Response) SetIngredientList(v string)`

SetIngredientList sets IngredientList field to given value.


### GetIngredients

`func (o *SearchGroceryProductsByUPC200Response) GetIngredients() []SearchGroceryProductsByUPC200ResponseIngredientsInner`

GetIngredients returns the Ingredients field if non-nil, zero value otherwise.

### GetIngredientsOk

`func (o *SearchGroceryProductsByUPC200Response) GetIngredientsOk() (*[]SearchGroceryProductsByUPC200ResponseIngredientsInner, bool)`

GetIngredientsOk returns a tuple with the Ingredients field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIngredients

`func (o *SearchGroceryProductsByUPC200Response) SetIngredients(v []SearchGroceryProductsByUPC200ResponseIngredientsInner)`

SetIngredients sets Ingredients field to given value.


### GetLikes

`func (o *SearchGroceryProductsByUPC200Response) GetLikes() float32`

GetLikes returns the Likes field if non-nil, zero value otherwise.

### GetLikesOk

`func (o *SearchGroceryProductsByUPC200Response) GetLikesOk() (*float32, bool)`

GetLikesOk returns a tuple with the Likes field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLikes

`func (o *SearchGroceryProductsByUPC200Response) SetLikes(v float32)`

SetLikes sets Likes field to given value.


### GetNutrition

`func (o *SearchGroceryProductsByUPC200Response) GetNutrition() SearchGroceryProductsByUPC200ResponseNutrition`

GetNutrition returns the Nutrition field if non-nil, zero value otherwise.

### GetNutritionOk

`func (o *SearchGroceryProductsByUPC200Response) GetNutritionOk() (*SearchGroceryProductsByUPC200ResponseNutrition, bool)`

GetNutritionOk returns a tuple with the Nutrition field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetNutrition

`func (o *SearchGroceryProductsByUPC200Response) SetNutrition(v SearchGroceryProductsByUPC200ResponseNutrition)`

SetNutrition sets Nutrition field to given value.


### GetPrice

`func (o *SearchGroceryProductsByUPC200Response) GetPrice() float32`

GetPrice returns the Price field if non-nil, zero value otherwise.

### GetPriceOk

`func (o *SearchGroceryProductsByUPC200Response) GetPriceOk() (*float32, bool)`

GetPriceOk returns a tuple with the Price field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPrice

`func (o *SearchGroceryProductsByUPC200Response) SetPrice(v float32)`

SetPrice sets Price field to given value.


### GetServings

`func (o *SearchGroceryProductsByUPC200Response) GetServings() SearchGroceryProductsByUPC200ResponseServings`

GetServings returns the Servings field if non-nil, zero value otherwise.

### GetServingsOk

`func (o *SearchGroceryProductsByUPC200Response) GetServingsOk() (*SearchGroceryProductsByUPC200ResponseServings, bool)`

GetServingsOk returns a tuple with the Servings field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetServings

`func (o *SearchGroceryProductsByUPC200Response) SetServings(v SearchGroceryProductsByUPC200ResponseServings)`

SetServings sets Servings field to given value.


### GetSpoonacularScore

`func (o *SearchGroceryProductsByUPC200Response) GetSpoonacularScore() float32`

GetSpoonacularScore returns the SpoonacularScore field if non-nil, zero value otherwise.

### GetSpoonacularScoreOk

`func (o *SearchGroceryProductsByUPC200Response) GetSpoonacularScoreOk() (*float32, bool)`

GetSpoonacularScoreOk returns a tuple with the SpoonacularScore field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSpoonacularScore

`func (o *SearchGroceryProductsByUPC200Response) SetSpoonacularScore(v float32)`

SetSpoonacularScore sets SpoonacularScore field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


