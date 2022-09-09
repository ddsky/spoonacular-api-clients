# SearchRecipesByIngredients200ResponseInner

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **int32** |  | 
**Image** | **string** |  | 
**ImageType** | **string** |  | 
**Likes** | **int32** |  | 
**MissedIngredientCount** | **int32** |  | 
**MissedIngredients** | [**[]SearchRecipesByIngredients200ResponseInnerMissedIngredientsInner**](SearchRecipesByIngredients200ResponseInnerMissedIngredientsInner.md) |  | 
**Title** | **string** |  | 
**UnusedIngredients** | **[]map[string]interface{}** |  | 
**UsedIngredientCount** | **float32** |  | 
**UsedIngredients** | [**[]SearchRecipesByIngredients200ResponseInnerMissedIngredientsInner**](SearchRecipesByIngredients200ResponseInnerMissedIngredientsInner.md) |  | 

## Methods

### NewSearchRecipesByIngredients200ResponseInner

`func NewSearchRecipesByIngredients200ResponseInner(id int32, image string, imageType string, likes int32, missedIngredientCount int32, missedIngredients []SearchRecipesByIngredients200ResponseInnerMissedIngredientsInner, title string, unusedIngredients []map[string]interface{}, usedIngredientCount float32, usedIngredients []SearchRecipesByIngredients200ResponseInnerMissedIngredientsInner, ) *SearchRecipesByIngredients200ResponseInner`

NewSearchRecipesByIngredients200ResponseInner instantiates a new SearchRecipesByIngredients200ResponseInner object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewSearchRecipesByIngredients200ResponseInnerWithDefaults

`func NewSearchRecipesByIngredients200ResponseInnerWithDefaults() *SearchRecipesByIngredients200ResponseInner`

NewSearchRecipesByIngredients200ResponseInnerWithDefaults instantiates a new SearchRecipesByIngredients200ResponseInner object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetId

`func (o *SearchRecipesByIngredients200ResponseInner) GetId() int32`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *SearchRecipesByIngredients200ResponseInner) GetIdOk() (*int32, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *SearchRecipesByIngredients200ResponseInner) SetId(v int32)`

SetId sets Id field to given value.


### GetImage

`func (o *SearchRecipesByIngredients200ResponseInner) GetImage() string`

GetImage returns the Image field if non-nil, zero value otherwise.

### GetImageOk

`func (o *SearchRecipesByIngredients200ResponseInner) GetImageOk() (*string, bool)`

GetImageOk returns a tuple with the Image field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetImage

`func (o *SearchRecipesByIngredients200ResponseInner) SetImage(v string)`

SetImage sets Image field to given value.


### GetImageType

`func (o *SearchRecipesByIngredients200ResponseInner) GetImageType() string`

GetImageType returns the ImageType field if non-nil, zero value otherwise.

### GetImageTypeOk

`func (o *SearchRecipesByIngredients200ResponseInner) GetImageTypeOk() (*string, bool)`

GetImageTypeOk returns a tuple with the ImageType field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetImageType

`func (o *SearchRecipesByIngredients200ResponseInner) SetImageType(v string)`

SetImageType sets ImageType field to given value.


### GetLikes

`func (o *SearchRecipesByIngredients200ResponseInner) GetLikes() int32`

GetLikes returns the Likes field if non-nil, zero value otherwise.

### GetLikesOk

`func (o *SearchRecipesByIngredients200ResponseInner) GetLikesOk() (*int32, bool)`

GetLikesOk returns a tuple with the Likes field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLikes

`func (o *SearchRecipesByIngredients200ResponseInner) SetLikes(v int32)`

SetLikes sets Likes field to given value.


### GetMissedIngredientCount

`func (o *SearchRecipesByIngredients200ResponseInner) GetMissedIngredientCount() int32`

GetMissedIngredientCount returns the MissedIngredientCount field if non-nil, zero value otherwise.

### GetMissedIngredientCountOk

`func (o *SearchRecipesByIngredients200ResponseInner) GetMissedIngredientCountOk() (*int32, bool)`

GetMissedIngredientCountOk returns a tuple with the MissedIngredientCount field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMissedIngredientCount

`func (o *SearchRecipesByIngredients200ResponseInner) SetMissedIngredientCount(v int32)`

SetMissedIngredientCount sets MissedIngredientCount field to given value.


### GetMissedIngredients

`func (o *SearchRecipesByIngredients200ResponseInner) GetMissedIngredients() []SearchRecipesByIngredients200ResponseInnerMissedIngredientsInner`

GetMissedIngredients returns the MissedIngredients field if non-nil, zero value otherwise.

### GetMissedIngredientsOk

`func (o *SearchRecipesByIngredients200ResponseInner) GetMissedIngredientsOk() (*[]SearchRecipesByIngredients200ResponseInnerMissedIngredientsInner, bool)`

GetMissedIngredientsOk returns a tuple with the MissedIngredients field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMissedIngredients

`func (o *SearchRecipesByIngredients200ResponseInner) SetMissedIngredients(v []SearchRecipesByIngredients200ResponseInnerMissedIngredientsInner)`

SetMissedIngredients sets MissedIngredients field to given value.


### GetTitle

`func (o *SearchRecipesByIngredients200ResponseInner) GetTitle() string`

GetTitle returns the Title field if non-nil, zero value otherwise.

### GetTitleOk

`func (o *SearchRecipesByIngredients200ResponseInner) GetTitleOk() (*string, bool)`

GetTitleOk returns a tuple with the Title field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTitle

`func (o *SearchRecipesByIngredients200ResponseInner) SetTitle(v string)`

SetTitle sets Title field to given value.


### GetUnusedIngredients

`func (o *SearchRecipesByIngredients200ResponseInner) GetUnusedIngredients() []map[string]interface{}`

GetUnusedIngredients returns the UnusedIngredients field if non-nil, zero value otherwise.

### GetUnusedIngredientsOk

`func (o *SearchRecipesByIngredients200ResponseInner) GetUnusedIngredientsOk() (*[]map[string]interface{}, bool)`

GetUnusedIngredientsOk returns a tuple with the UnusedIngredients field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUnusedIngredients

`func (o *SearchRecipesByIngredients200ResponseInner) SetUnusedIngredients(v []map[string]interface{})`

SetUnusedIngredients sets UnusedIngredients field to given value.


### GetUsedIngredientCount

`func (o *SearchRecipesByIngredients200ResponseInner) GetUsedIngredientCount() float32`

GetUsedIngredientCount returns the UsedIngredientCount field if non-nil, zero value otherwise.

### GetUsedIngredientCountOk

`func (o *SearchRecipesByIngredients200ResponseInner) GetUsedIngredientCountOk() (*float32, bool)`

GetUsedIngredientCountOk returns a tuple with the UsedIngredientCount field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUsedIngredientCount

`func (o *SearchRecipesByIngredients200ResponseInner) SetUsedIngredientCount(v float32)`

SetUsedIngredientCount sets UsedIngredientCount field to given value.


### GetUsedIngredients

`func (o *SearchRecipesByIngredients200ResponseInner) GetUsedIngredients() []SearchRecipesByIngredients200ResponseInnerMissedIngredientsInner`

GetUsedIngredients returns the UsedIngredients field if non-nil, zero value otherwise.

### GetUsedIngredientsOk

`func (o *SearchRecipesByIngredients200ResponseInner) GetUsedIngredientsOk() (*[]SearchRecipesByIngredients200ResponseInnerMissedIngredientsInner, bool)`

GetUsedIngredientsOk returns a tuple with the UsedIngredients field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUsedIngredients

`func (o *SearchRecipesByIngredients200ResponseInner) SetUsedIngredients(v []SearchRecipesByIngredients200ResponseInnerMissedIngredientsInner)`

SetUsedIngredients sets UsedIngredients field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


