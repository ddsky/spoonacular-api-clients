# GetProductInformation200Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **int32** |  | 
**Title** | **string** |  | 
**Breadcrumbs** | **[]string** |  | 
**ImageType** | **string** |  | 
**Badges** | **[]string** |  | 
**ImportantBadges** | **[]string** |  | 
**IngredientCount** | **int32** |  | 
**GeneratedText** | Pointer to **interface{}** |  | [optional] 
**IngredientList** | **string** |  | 
**Ingredients** | [**[]GetProductInformation200ResponseIngredientsInner**](GetProductInformation200ResponseIngredientsInner.md) |  | 
**Likes** | **float32** |  | 
**Aisle** | **string** |  | 
**Nutrition** | [**SearchGroceryProductsByUPC200ResponseNutrition**](SearchGroceryProductsByUPC200ResponseNutrition.md) |  | 
**Price** | **float32** |  | 
**Servings** | [**SearchGroceryProductsByUPC200ResponseServings**](SearchGroceryProductsByUPC200ResponseServings.md) |  | 
**SpoonacularScore** | **float32** |  | 

## Methods

### NewGetProductInformation200Response

`func NewGetProductInformation200Response(id int32, title string, breadcrumbs []string, imageType string, badges []string, importantBadges []string, ingredientCount int32, ingredientList string, ingredients []GetProductInformation200ResponseIngredientsInner, likes float32, aisle string, nutrition SearchGroceryProductsByUPC200ResponseNutrition, price float32, servings SearchGroceryProductsByUPC200ResponseServings, spoonacularScore float32, ) *GetProductInformation200Response`

NewGetProductInformation200Response instantiates a new GetProductInformation200Response object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewGetProductInformation200ResponseWithDefaults

`func NewGetProductInformation200ResponseWithDefaults() *GetProductInformation200Response`

NewGetProductInformation200ResponseWithDefaults instantiates a new GetProductInformation200Response object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetId

`func (o *GetProductInformation200Response) GetId() int32`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *GetProductInformation200Response) GetIdOk() (*int32, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *GetProductInformation200Response) SetId(v int32)`

SetId sets Id field to given value.


### GetTitle

`func (o *GetProductInformation200Response) GetTitle() string`

GetTitle returns the Title field if non-nil, zero value otherwise.

### GetTitleOk

`func (o *GetProductInformation200Response) GetTitleOk() (*string, bool)`

GetTitleOk returns a tuple with the Title field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTitle

`func (o *GetProductInformation200Response) SetTitle(v string)`

SetTitle sets Title field to given value.


### GetBreadcrumbs

`func (o *GetProductInformation200Response) GetBreadcrumbs() []string`

GetBreadcrumbs returns the Breadcrumbs field if non-nil, zero value otherwise.

### GetBreadcrumbsOk

`func (o *GetProductInformation200Response) GetBreadcrumbsOk() (*[]string, bool)`

GetBreadcrumbsOk returns a tuple with the Breadcrumbs field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBreadcrumbs

`func (o *GetProductInformation200Response) SetBreadcrumbs(v []string)`

SetBreadcrumbs sets Breadcrumbs field to given value.


### GetImageType

`func (o *GetProductInformation200Response) GetImageType() string`

GetImageType returns the ImageType field if non-nil, zero value otherwise.

### GetImageTypeOk

`func (o *GetProductInformation200Response) GetImageTypeOk() (*string, bool)`

GetImageTypeOk returns a tuple with the ImageType field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetImageType

`func (o *GetProductInformation200Response) SetImageType(v string)`

SetImageType sets ImageType field to given value.


### GetBadges

`func (o *GetProductInformation200Response) GetBadges() []string`

GetBadges returns the Badges field if non-nil, zero value otherwise.

### GetBadgesOk

`func (o *GetProductInformation200Response) GetBadgesOk() (*[]string, bool)`

GetBadgesOk returns a tuple with the Badges field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBadges

`func (o *GetProductInformation200Response) SetBadges(v []string)`

SetBadges sets Badges field to given value.


### GetImportantBadges

`func (o *GetProductInformation200Response) GetImportantBadges() []string`

GetImportantBadges returns the ImportantBadges field if non-nil, zero value otherwise.

### GetImportantBadgesOk

`func (o *GetProductInformation200Response) GetImportantBadgesOk() (*[]string, bool)`

GetImportantBadgesOk returns a tuple with the ImportantBadges field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetImportantBadges

`func (o *GetProductInformation200Response) SetImportantBadges(v []string)`

SetImportantBadges sets ImportantBadges field to given value.


### GetIngredientCount

`func (o *GetProductInformation200Response) GetIngredientCount() int32`

GetIngredientCount returns the IngredientCount field if non-nil, zero value otherwise.

### GetIngredientCountOk

`func (o *GetProductInformation200Response) GetIngredientCountOk() (*int32, bool)`

GetIngredientCountOk returns a tuple with the IngredientCount field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIngredientCount

`func (o *GetProductInformation200Response) SetIngredientCount(v int32)`

SetIngredientCount sets IngredientCount field to given value.


### GetGeneratedText

`func (o *GetProductInformation200Response) GetGeneratedText() interface{}`

GetGeneratedText returns the GeneratedText field if non-nil, zero value otherwise.

### GetGeneratedTextOk

`func (o *GetProductInformation200Response) GetGeneratedTextOk() (*interface{}, bool)`

GetGeneratedTextOk returns a tuple with the GeneratedText field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetGeneratedText

`func (o *GetProductInformation200Response) SetGeneratedText(v interface{})`

SetGeneratedText sets GeneratedText field to given value.

### HasGeneratedText

`func (o *GetProductInformation200Response) HasGeneratedText() bool`

HasGeneratedText returns a boolean if a field has been set.

### SetGeneratedTextNil

`func (o *GetProductInformation200Response) SetGeneratedTextNil(b bool)`

 SetGeneratedTextNil sets the value for GeneratedText to be an explicit nil

### UnsetGeneratedText
`func (o *GetProductInformation200Response) UnsetGeneratedText()`

UnsetGeneratedText ensures that no value is present for GeneratedText, not even an explicit nil
### GetIngredientList

`func (o *GetProductInformation200Response) GetIngredientList() string`

GetIngredientList returns the IngredientList field if non-nil, zero value otherwise.

### GetIngredientListOk

`func (o *GetProductInformation200Response) GetIngredientListOk() (*string, bool)`

GetIngredientListOk returns a tuple with the IngredientList field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIngredientList

`func (o *GetProductInformation200Response) SetIngredientList(v string)`

SetIngredientList sets IngredientList field to given value.


### GetIngredients

`func (o *GetProductInformation200Response) GetIngredients() []GetProductInformation200ResponseIngredientsInner`

GetIngredients returns the Ingredients field if non-nil, zero value otherwise.

### GetIngredientsOk

`func (o *GetProductInformation200Response) GetIngredientsOk() (*[]GetProductInformation200ResponseIngredientsInner, bool)`

GetIngredientsOk returns a tuple with the Ingredients field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIngredients

`func (o *GetProductInformation200Response) SetIngredients(v []GetProductInformation200ResponseIngredientsInner)`

SetIngredients sets Ingredients field to given value.


### GetLikes

`func (o *GetProductInformation200Response) GetLikes() float32`

GetLikes returns the Likes field if non-nil, zero value otherwise.

### GetLikesOk

`func (o *GetProductInformation200Response) GetLikesOk() (*float32, bool)`

GetLikesOk returns a tuple with the Likes field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLikes

`func (o *GetProductInformation200Response) SetLikes(v float32)`

SetLikes sets Likes field to given value.


### GetAisle

`func (o *GetProductInformation200Response) GetAisle() string`

GetAisle returns the Aisle field if non-nil, zero value otherwise.

### GetAisleOk

`func (o *GetProductInformation200Response) GetAisleOk() (*string, bool)`

GetAisleOk returns a tuple with the Aisle field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAisle

`func (o *GetProductInformation200Response) SetAisle(v string)`

SetAisle sets Aisle field to given value.


### GetNutrition

`func (o *GetProductInformation200Response) GetNutrition() SearchGroceryProductsByUPC200ResponseNutrition`

GetNutrition returns the Nutrition field if non-nil, zero value otherwise.

### GetNutritionOk

`func (o *GetProductInformation200Response) GetNutritionOk() (*SearchGroceryProductsByUPC200ResponseNutrition, bool)`

GetNutritionOk returns a tuple with the Nutrition field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetNutrition

`func (o *GetProductInformation200Response) SetNutrition(v SearchGroceryProductsByUPC200ResponseNutrition)`

SetNutrition sets Nutrition field to given value.


### GetPrice

`func (o *GetProductInformation200Response) GetPrice() float32`

GetPrice returns the Price field if non-nil, zero value otherwise.

### GetPriceOk

`func (o *GetProductInformation200Response) GetPriceOk() (*float32, bool)`

GetPriceOk returns a tuple with the Price field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPrice

`func (o *GetProductInformation200Response) SetPrice(v float32)`

SetPrice sets Price field to given value.


### GetServings

`func (o *GetProductInformation200Response) GetServings() SearchGroceryProductsByUPC200ResponseServings`

GetServings returns the Servings field if non-nil, zero value otherwise.

### GetServingsOk

`func (o *GetProductInformation200Response) GetServingsOk() (*SearchGroceryProductsByUPC200ResponseServings, bool)`

GetServingsOk returns a tuple with the Servings field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetServings

`func (o *GetProductInformation200Response) SetServings(v SearchGroceryProductsByUPC200ResponseServings)`

SetServings sets Servings field to given value.


### GetSpoonacularScore

`func (o *GetProductInformation200Response) GetSpoonacularScore() float32`

GetSpoonacularScore returns the SpoonacularScore field if non-nil, zero value otherwise.

### GetSpoonacularScoreOk

`func (o *GetProductInformation200Response) GetSpoonacularScoreOk() (*float32, bool)`

GetSpoonacularScoreOk returns a tuple with the SpoonacularScore field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSpoonacularScore

`func (o *GetProductInformation200Response) SetSpoonacularScore(v float32)`

SetSpoonacularScore sets SpoonacularScore field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


