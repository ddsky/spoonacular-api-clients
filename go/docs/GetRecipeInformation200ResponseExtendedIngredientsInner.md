# GetRecipeInformation200ResponseExtendedIngredientsInner

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Aisle** | **string** |  | 
**Amount** | **float32** |  | 
**Consitency** | **string** |  | 
**Id** | **int32** |  | 
**Image** | **string** |  | 
**Measures** | Pointer to [**GetRecipeInformation200ResponseExtendedIngredientsInnerMeasures**](GetRecipeInformation200ResponseExtendedIngredientsInnerMeasures.md) |  | [optional] 
**Meta** | Pointer to **[]string** |  | [optional] 
**Name** | **string** |  | 
**Original** | **string** |  | 
**OriginalName** | **string** |  | 
**Unit** | **string** |  | 

## Methods

### NewGetRecipeInformation200ResponseExtendedIngredientsInner

`func NewGetRecipeInformation200ResponseExtendedIngredientsInner(aisle string, amount float32, consitency string, id int32, image string, name string, original string, originalName string, unit string, ) *GetRecipeInformation200ResponseExtendedIngredientsInner`

NewGetRecipeInformation200ResponseExtendedIngredientsInner instantiates a new GetRecipeInformation200ResponseExtendedIngredientsInner object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewGetRecipeInformation200ResponseExtendedIngredientsInnerWithDefaults

`func NewGetRecipeInformation200ResponseExtendedIngredientsInnerWithDefaults() *GetRecipeInformation200ResponseExtendedIngredientsInner`

NewGetRecipeInformation200ResponseExtendedIngredientsInnerWithDefaults instantiates a new GetRecipeInformation200ResponseExtendedIngredientsInner object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetAisle

`func (o *GetRecipeInformation200ResponseExtendedIngredientsInner) GetAisle() string`

GetAisle returns the Aisle field if non-nil, zero value otherwise.

### GetAisleOk

`func (o *GetRecipeInformation200ResponseExtendedIngredientsInner) GetAisleOk() (*string, bool)`

GetAisleOk returns a tuple with the Aisle field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAisle

`func (o *GetRecipeInformation200ResponseExtendedIngredientsInner) SetAisle(v string)`

SetAisle sets Aisle field to given value.


### GetAmount

`func (o *GetRecipeInformation200ResponseExtendedIngredientsInner) GetAmount() float32`

GetAmount returns the Amount field if non-nil, zero value otherwise.

### GetAmountOk

`func (o *GetRecipeInformation200ResponseExtendedIngredientsInner) GetAmountOk() (*float32, bool)`

GetAmountOk returns a tuple with the Amount field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAmount

`func (o *GetRecipeInformation200ResponseExtendedIngredientsInner) SetAmount(v float32)`

SetAmount sets Amount field to given value.


### GetConsitency

`func (o *GetRecipeInformation200ResponseExtendedIngredientsInner) GetConsitency() string`

GetConsitency returns the Consitency field if non-nil, zero value otherwise.

### GetConsitencyOk

`func (o *GetRecipeInformation200ResponseExtendedIngredientsInner) GetConsitencyOk() (*string, bool)`

GetConsitencyOk returns a tuple with the Consitency field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetConsitency

`func (o *GetRecipeInformation200ResponseExtendedIngredientsInner) SetConsitency(v string)`

SetConsitency sets Consitency field to given value.


### GetId

`func (o *GetRecipeInformation200ResponseExtendedIngredientsInner) GetId() int32`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *GetRecipeInformation200ResponseExtendedIngredientsInner) GetIdOk() (*int32, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *GetRecipeInformation200ResponseExtendedIngredientsInner) SetId(v int32)`

SetId sets Id field to given value.


### GetImage

`func (o *GetRecipeInformation200ResponseExtendedIngredientsInner) GetImage() string`

GetImage returns the Image field if non-nil, zero value otherwise.

### GetImageOk

`func (o *GetRecipeInformation200ResponseExtendedIngredientsInner) GetImageOk() (*string, bool)`

GetImageOk returns a tuple with the Image field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetImage

`func (o *GetRecipeInformation200ResponseExtendedIngredientsInner) SetImage(v string)`

SetImage sets Image field to given value.


### GetMeasures

`func (o *GetRecipeInformation200ResponseExtendedIngredientsInner) GetMeasures() GetRecipeInformation200ResponseExtendedIngredientsInnerMeasures`

GetMeasures returns the Measures field if non-nil, zero value otherwise.

### GetMeasuresOk

`func (o *GetRecipeInformation200ResponseExtendedIngredientsInner) GetMeasuresOk() (*GetRecipeInformation200ResponseExtendedIngredientsInnerMeasures, bool)`

GetMeasuresOk returns a tuple with the Measures field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMeasures

`func (o *GetRecipeInformation200ResponseExtendedIngredientsInner) SetMeasures(v GetRecipeInformation200ResponseExtendedIngredientsInnerMeasures)`

SetMeasures sets Measures field to given value.

### HasMeasures

`func (o *GetRecipeInformation200ResponseExtendedIngredientsInner) HasMeasures() bool`

HasMeasures returns a boolean if a field has been set.

### GetMeta

`func (o *GetRecipeInformation200ResponseExtendedIngredientsInner) GetMeta() []string`

GetMeta returns the Meta field if non-nil, zero value otherwise.

### GetMetaOk

`func (o *GetRecipeInformation200ResponseExtendedIngredientsInner) GetMetaOk() (*[]string, bool)`

GetMetaOk returns a tuple with the Meta field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMeta

`func (o *GetRecipeInformation200ResponseExtendedIngredientsInner) SetMeta(v []string)`

SetMeta sets Meta field to given value.

### HasMeta

`func (o *GetRecipeInformation200ResponseExtendedIngredientsInner) HasMeta() bool`

HasMeta returns a boolean if a field has been set.

### GetName

`func (o *GetRecipeInformation200ResponseExtendedIngredientsInner) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *GetRecipeInformation200ResponseExtendedIngredientsInner) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *GetRecipeInformation200ResponseExtendedIngredientsInner) SetName(v string)`

SetName sets Name field to given value.


### GetOriginal

`func (o *GetRecipeInformation200ResponseExtendedIngredientsInner) GetOriginal() string`

GetOriginal returns the Original field if non-nil, zero value otherwise.

### GetOriginalOk

`func (o *GetRecipeInformation200ResponseExtendedIngredientsInner) GetOriginalOk() (*string, bool)`

GetOriginalOk returns a tuple with the Original field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOriginal

`func (o *GetRecipeInformation200ResponseExtendedIngredientsInner) SetOriginal(v string)`

SetOriginal sets Original field to given value.


### GetOriginalName

`func (o *GetRecipeInformation200ResponseExtendedIngredientsInner) GetOriginalName() string`

GetOriginalName returns the OriginalName field if non-nil, zero value otherwise.

### GetOriginalNameOk

`func (o *GetRecipeInformation200ResponseExtendedIngredientsInner) GetOriginalNameOk() (*string, bool)`

GetOriginalNameOk returns a tuple with the OriginalName field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOriginalName

`func (o *GetRecipeInformation200ResponseExtendedIngredientsInner) SetOriginalName(v string)`

SetOriginalName sets OriginalName field to given value.


### GetUnit

`func (o *GetRecipeInformation200ResponseExtendedIngredientsInner) GetUnit() string`

GetUnit returns the Unit field if non-nil, zero value otherwise.

### GetUnitOk

`func (o *GetRecipeInformation200ResponseExtendedIngredientsInner) GetUnitOk() (*string, bool)`

GetUnitOk returns a tuple with the Unit field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUnit

`func (o *GetRecipeInformation200ResponseExtendedIngredientsInner) SetUnit(v string)`

SetUnit sets Unit field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


