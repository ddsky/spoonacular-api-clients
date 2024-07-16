# MenuItem

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **int32** |  | 
**Title** | **string** |  | 
**RestaurantChain** | **string** |  | 
**Nutrition** | Pointer to [**SearchGroceryProductsByUPC200ResponseNutrition**](SearchGroceryProductsByUPC200ResponseNutrition.md) |  | [optional] 
**Badges** | Pointer to **[]string** |  | [optional] 
**Breadcrumbs** | Pointer to **[]string** |  | [optional] 
**GeneratedText** | Pointer to **NullableString** |  | [optional] 
**ImageType** | Pointer to **string** |  | [optional] 
**Likes** | Pointer to **int32** |  | [optional] 
**Servings** | Pointer to [**MenuItemServings**](MenuItemServings.md) |  | [optional] 
**Price** | **NullableFloat32** |  | 
**SpoonacularScore** | **NullableFloat32** |  | 

## Methods

### NewMenuItem

`func NewMenuItem(id int32, title string, restaurantChain string, price NullableFloat32, spoonacularScore NullableFloat32, ) *MenuItem`

NewMenuItem instantiates a new MenuItem object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewMenuItemWithDefaults

`func NewMenuItemWithDefaults() *MenuItem`

NewMenuItemWithDefaults instantiates a new MenuItem object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetId

`func (o *MenuItem) GetId() int32`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *MenuItem) GetIdOk() (*int32, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *MenuItem) SetId(v int32)`

SetId sets Id field to given value.


### GetTitle

`func (o *MenuItem) GetTitle() string`

GetTitle returns the Title field if non-nil, zero value otherwise.

### GetTitleOk

`func (o *MenuItem) GetTitleOk() (*string, bool)`

GetTitleOk returns a tuple with the Title field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTitle

`func (o *MenuItem) SetTitle(v string)`

SetTitle sets Title field to given value.


### GetRestaurantChain

`func (o *MenuItem) GetRestaurantChain() string`

GetRestaurantChain returns the RestaurantChain field if non-nil, zero value otherwise.

### GetRestaurantChainOk

`func (o *MenuItem) GetRestaurantChainOk() (*string, bool)`

GetRestaurantChainOk returns a tuple with the RestaurantChain field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRestaurantChain

`func (o *MenuItem) SetRestaurantChain(v string)`

SetRestaurantChain sets RestaurantChain field to given value.


### GetNutrition

`func (o *MenuItem) GetNutrition() SearchGroceryProductsByUPC200ResponseNutrition`

GetNutrition returns the Nutrition field if non-nil, zero value otherwise.

### GetNutritionOk

`func (o *MenuItem) GetNutritionOk() (*SearchGroceryProductsByUPC200ResponseNutrition, bool)`

GetNutritionOk returns a tuple with the Nutrition field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetNutrition

`func (o *MenuItem) SetNutrition(v SearchGroceryProductsByUPC200ResponseNutrition)`

SetNutrition sets Nutrition field to given value.

### HasNutrition

`func (o *MenuItem) HasNutrition() bool`

HasNutrition returns a boolean if a field has been set.

### GetBadges

`func (o *MenuItem) GetBadges() []string`

GetBadges returns the Badges field if non-nil, zero value otherwise.

### GetBadgesOk

`func (o *MenuItem) GetBadgesOk() (*[]string, bool)`

GetBadgesOk returns a tuple with the Badges field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBadges

`func (o *MenuItem) SetBadges(v []string)`

SetBadges sets Badges field to given value.

### HasBadges

`func (o *MenuItem) HasBadges() bool`

HasBadges returns a boolean if a field has been set.

### GetBreadcrumbs

`func (o *MenuItem) GetBreadcrumbs() []string`

GetBreadcrumbs returns the Breadcrumbs field if non-nil, zero value otherwise.

### GetBreadcrumbsOk

`func (o *MenuItem) GetBreadcrumbsOk() (*[]string, bool)`

GetBreadcrumbsOk returns a tuple with the Breadcrumbs field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBreadcrumbs

`func (o *MenuItem) SetBreadcrumbs(v []string)`

SetBreadcrumbs sets Breadcrumbs field to given value.

### HasBreadcrumbs

`func (o *MenuItem) HasBreadcrumbs() bool`

HasBreadcrumbs returns a boolean if a field has been set.

### GetGeneratedText

`func (o *MenuItem) GetGeneratedText() string`

GetGeneratedText returns the GeneratedText field if non-nil, zero value otherwise.

### GetGeneratedTextOk

`func (o *MenuItem) GetGeneratedTextOk() (*string, bool)`

GetGeneratedTextOk returns a tuple with the GeneratedText field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetGeneratedText

`func (o *MenuItem) SetGeneratedText(v string)`

SetGeneratedText sets GeneratedText field to given value.

### HasGeneratedText

`func (o *MenuItem) HasGeneratedText() bool`

HasGeneratedText returns a boolean if a field has been set.

### SetGeneratedTextNil

`func (o *MenuItem) SetGeneratedTextNil(b bool)`

 SetGeneratedTextNil sets the value for GeneratedText to be an explicit nil

### UnsetGeneratedText
`func (o *MenuItem) UnsetGeneratedText()`

UnsetGeneratedText ensures that no value is present for GeneratedText, not even an explicit nil
### GetImageType

`func (o *MenuItem) GetImageType() string`

GetImageType returns the ImageType field if non-nil, zero value otherwise.

### GetImageTypeOk

`func (o *MenuItem) GetImageTypeOk() (*string, bool)`

GetImageTypeOk returns a tuple with the ImageType field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetImageType

`func (o *MenuItem) SetImageType(v string)`

SetImageType sets ImageType field to given value.

### HasImageType

`func (o *MenuItem) HasImageType() bool`

HasImageType returns a boolean if a field has been set.

### GetLikes

`func (o *MenuItem) GetLikes() int32`

GetLikes returns the Likes field if non-nil, zero value otherwise.

### GetLikesOk

`func (o *MenuItem) GetLikesOk() (*int32, bool)`

GetLikesOk returns a tuple with the Likes field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLikes

`func (o *MenuItem) SetLikes(v int32)`

SetLikes sets Likes field to given value.

### HasLikes

`func (o *MenuItem) HasLikes() bool`

HasLikes returns a boolean if a field has been set.

### GetServings

`func (o *MenuItem) GetServings() MenuItemServings`

GetServings returns the Servings field if non-nil, zero value otherwise.

### GetServingsOk

`func (o *MenuItem) GetServingsOk() (*MenuItemServings, bool)`

GetServingsOk returns a tuple with the Servings field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetServings

`func (o *MenuItem) SetServings(v MenuItemServings)`

SetServings sets Servings field to given value.

### HasServings

`func (o *MenuItem) HasServings() bool`

HasServings returns a boolean if a field has been set.

### GetPrice

`func (o *MenuItem) GetPrice() float32`

GetPrice returns the Price field if non-nil, zero value otherwise.

### GetPriceOk

`func (o *MenuItem) GetPriceOk() (*float32, bool)`

GetPriceOk returns a tuple with the Price field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPrice

`func (o *MenuItem) SetPrice(v float32)`

SetPrice sets Price field to given value.


### SetPriceNil

`func (o *MenuItem) SetPriceNil(b bool)`

 SetPriceNil sets the value for Price to be an explicit nil

### UnsetPrice
`func (o *MenuItem) UnsetPrice()`

UnsetPrice ensures that no value is present for Price, not even an explicit nil
### GetSpoonacularScore

`func (o *MenuItem) GetSpoonacularScore() float32`

GetSpoonacularScore returns the SpoonacularScore field if non-nil, zero value otherwise.

### GetSpoonacularScoreOk

`func (o *MenuItem) GetSpoonacularScoreOk() (*float32, bool)`

GetSpoonacularScoreOk returns a tuple with the SpoonacularScore field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSpoonacularScore

`func (o *MenuItem) SetSpoonacularScore(v float32)`

SetSpoonacularScore sets SpoonacularScore field to given value.


### SetSpoonacularScoreNil

`func (o *MenuItem) SetSpoonacularScoreNil(b bool)`

 SetSpoonacularScoreNil sets the value for SpoonacularScore to be an explicit nil

### UnsetSpoonacularScore
`func (o *MenuItem) UnsetSpoonacularScore()`

UnsetSpoonacularScore ensures that no value is present for SpoonacularScore, not even an explicit nil

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


