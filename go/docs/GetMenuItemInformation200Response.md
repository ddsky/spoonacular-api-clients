# GetMenuItemInformation200Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **int32** |  | 
**Title** | **string** |  | 
**RestaurantChain** | **string** |  | 
**Nutrition** | [**SearchGroceryProductsByUPC200ResponseNutrition**](SearchGroceryProductsByUPC200ResponseNutrition.md) |  | 
**Badges** | **[]string** |  | 
**Breadcrumbs** | **[]string** |  | 
**GeneratedText** | Pointer to **string** |  | [optional] 
**ImageType** | **string** |  | 
**Likes** | **float32** |  | 
**Servings** | [**SearchGroceryProductsByUPC200ResponseServings**](SearchGroceryProductsByUPC200ResponseServings.md) |  | 
**Price** | Pointer to **float32** |  | [optional] 
**SpoonacularScore** | Pointer to **float32** |  | [optional] 

## Methods

### NewGetMenuItemInformation200Response

`func NewGetMenuItemInformation200Response(id int32, title string, restaurantChain string, nutrition SearchGroceryProductsByUPC200ResponseNutrition, badges []string, breadcrumbs []string, imageType string, likes float32, servings SearchGroceryProductsByUPC200ResponseServings, ) *GetMenuItemInformation200Response`

NewGetMenuItemInformation200Response instantiates a new GetMenuItemInformation200Response object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewGetMenuItemInformation200ResponseWithDefaults

`func NewGetMenuItemInformation200ResponseWithDefaults() *GetMenuItemInformation200Response`

NewGetMenuItemInformation200ResponseWithDefaults instantiates a new GetMenuItemInformation200Response object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetId

`func (o *GetMenuItemInformation200Response) GetId() int32`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *GetMenuItemInformation200Response) GetIdOk() (*int32, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *GetMenuItemInformation200Response) SetId(v int32)`

SetId sets Id field to given value.


### GetTitle

`func (o *GetMenuItemInformation200Response) GetTitle() string`

GetTitle returns the Title field if non-nil, zero value otherwise.

### GetTitleOk

`func (o *GetMenuItemInformation200Response) GetTitleOk() (*string, bool)`

GetTitleOk returns a tuple with the Title field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTitle

`func (o *GetMenuItemInformation200Response) SetTitle(v string)`

SetTitle sets Title field to given value.


### GetRestaurantChain

`func (o *GetMenuItemInformation200Response) GetRestaurantChain() string`

GetRestaurantChain returns the RestaurantChain field if non-nil, zero value otherwise.

### GetRestaurantChainOk

`func (o *GetMenuItemInformation200Response) GetRestaurantChainOk() (*string, bool)`

GetRestaurantChainOk returns a tuple with the RestaurantChain field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRestaurantChain

`func (o *GetMenuItemInformation200Response) SetRestaurantChain(v string)`

SetRestaurantChain sets RestaurantChain field to given value.


### GetNutrition

`func (o *GetMenuItemInformation200Response) GetNutrition() SearchGroceryProductsByUPC200ResponseNutrition`

GetNutrition returns the Nutrition field if non-nil, zero value otherwise.

### GetNutritionOk

`func (o *GetMenuItemInformation200Response) GetNutritionOk() (*SearchGroceryProductsByUPC200ResponseNutrition, bool)`

GetNutritionOk returns a tuple with the Nutrition field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetNutrition

`func (o *GetMenuItemInformation200Response) SetNutrition(v SearchGroceryProductsByUPC200ResponseNutrition)`

SetNutrition sets Nutrition field to given value.


### GetBadges

`func (o *GetMenuItemInformation200Response) GetBadges() []string`

GetBadges returns the Badges field if non-nil, zero value otherwise.

### GetBadgesOk

`func (o *GetMenuItemInformation200Response) GetBadgesOk() (*[]string, bool)`

GetBadgesOk returns a tuple with the Badges field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBadges

`func (o *GetMenuItemInformation200Response) SetBadges(v []string)`

SetBadges sets Badges field to given value.


### GetBreadcrumbs

`func (o *GetMenuItemInformation200Response) GetBreadcrumbs() []string`

GetBreadcrumbs returns the Breadcrumbs field if non-nil, zero value otherwise.

### GetBreadcrumbsOk

`func (o *GetMenuItemInformation200Response) GetBreadcrumbsOk() (*[]string, bool)`

GetBreadcrumbsOk returns a tuple with the Breadcrumbs field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBreadcrumbs

`func (o *GetMenuItemInformation200Response) SetBreadcrumbs(v []string)`

SetBreadcrumbs sets Breadcrumbs field to given value.


### GetGeneratedText

`func (o *GetMenuItemInformation200Response) GetGeneratedText() string`

GetGeneratedText returns the GeneratedText field if non-nil, zero value otherwise.

### GetGeneratedTextOk

`func (o *GetMenuItemInformation200Response) GetGeneratedTextOk() (*string, bool)`

GetGeneratedTextOk returns a tuple with the GeneratedText field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetGeneratedText

`func (o *GetMenuItemInformation200Response) SetGeneratedText(v string)`

SetGeneratedText sets GeneratedText field to given value.

### HasGeneratedText

`func (o *GetMenuItemInformation200Response) HasGeneratedText() bool`

HasGeneratedText returns a boolean if a field has been set.

### GetImageType

`func (o *GetMenuItemInformation200Response) GetImageType() string`

GetImageType returns the ImageType field if non-nil, zero value otherwise.

### GetImageTypeOk

`func (o *GetMenuItemInformation200Response) GetImageTypeOk() (*string, bool)`

GetImageTypeOk returns a tuple with the ImageType field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetImageType

`func (o *GetMenuItemInformation200Response) SetImageType(v string)`

SetImageType sets ImageType field to given value.


### GetLikes

`func (o *GetMenuItemInformation200Response) GetLikes() float32`

GetLikes returns the Likes field if non-nil, zero value otherwise.

### GetLikesOk

`func (o *GetMenuItemInformation200Response) GetLikesOk() (*float32, bool)`

GetLikesOk returns a tuple with the Likes field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLikes

`func (o *GetMenuItemInformation200Response) SetLikes(v float32)`

SetLikes sets Likes field to given value.


### GetServings

`func (o *GetMenuItemInformation200Response) GetServings() SearchGroceryProductsByUPC200ResponseServings`

GetServings returns the Servings field if non-nil, zero value otherwise.

### GetServingsOk

`func (o *GetMenuItemInformation200Response) GetServingsOk() (*SearchGroceryProductsByUPC200ResponseServings, bool)`

GetServingsOk returns a tuple with the Servings field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetServings

`func (o *GetMenuItemInformation200Response) SetServings(v SearchGroceryProductsByUPC200ResponseServings)`

SetServings sets Servings field to given value.


### GetPrice

`func (o *GetMenuItemInformation200Response) GetPrice() float32`

GetPrice returns the Price field if non-nil, zero value otherwise.

### GetPriceOk

`func (o *GetMenuItemInformation200Response) GetPriceOk() (*float32, bool)`

GetPriceOk returns a tuple with the Price field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPrice

`func (o *GetMenuItemInformation200Response) SetPrice(v float32)`

SetPrice sets Price field to given value.

### HasPrice

`func (o *GetMenuItemInformation200Response) HasPrice() bool`

HasPrice returns a boolean if a field has been set.

### GetSpoonacularScore

`func (o *GetMenuItemInformation200Response) GetSpoonacularScore() float32`

GetSpoonacularScore returns the SpoonacularScore field if non-nil, zero value otherwise.

### GetSpoonacularScoreOk

`func (o *GetMenuItemInformation200Response) GetSpoonacularScoreOk() (*float32, bool)`

GetSpoonacularScoreOk returns a tuple with the SpoonacularScore field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSpoonacularScore

`func (o *GetMenuItemInformation200Response) SetSpoonacularScore(v float32)`

SetSpoonacularScore sets SpoonacularScore field to given value.

### HasSpoonacularScore

`func (o *GetMenuItemInformation200Response) HasSpoonacularScore() bool`

HasSpoonacularScore returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


