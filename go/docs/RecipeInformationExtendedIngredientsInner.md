# RecipeInformationExtendedIngredientsInner

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Aisle** | **string** |  | 
**Amount** | **float32** |  | 
**Consistency** | **string** |  | 
**Id** | **int32** |  | 
**Image** | **string** |  | 
**Measures** | Pointer to [**RecipeInformationExtendedIngredientsInnerMeasures**](RecipeInformationExtendedIngredientsInnerMeasures.md) |  | [optional] 
**Meta** | Pointer to **[]string** |  | [optional] 
**Name** | **string** |  | 
**Original** | **string** |  | 
**OriginalName** | **string** |  | 
**Unit** | **string** |  | 

## Methods

### NewRecipeInformationExtendedIngredientsInner

`func NewRecipeInformationExtendedIngredientsInner(aisle string, amount float32, consistency string, id int32, image string, name string, original string, originalName string, unit string, ) *RecipeInformationExtendedIngredientsInner`

NewRecipeInformationExtendedIngredientsInner instantiates a new RecipeInformationExtendedIngredientsInner object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewRecipeInformationExtendedIngredientsInnerWithDefaults

`func NewRecipeInformationExtendedIngredientsInnerWithDefaults() *RecipeInformationExtendedIngredientsInner`

NewRecipeInformationExtendedIngredientsInnerWithDefaults instantiates a new RecipeInformationExtendedIngredientsInner object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetAisle

`func (o *RecipeInformationExtendedIngredientsInner) GetAisle() string`

GetAisle returns the Aisle field if non-nil, zero value otherwise.

### GetAisleOk

`func (o *RecipeInformationExtendedIngredientsInner) GetAisleOk() (*string, bool)`

GetAisleOk returns a tuple with the Aisle field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAisle

`func (o *RecipeInformationExtendedIngredientsInner) SetAisle(v string)`

SetAisle sets Aisle field to given value.


### GetAmount

`func (o *RecipeInformationExtendedIngredientsInner) GetAmount() float32`

GetAmount returns the Amount field if non-nil, zero value otherwise.

### GetAmountOk

`func (o *RecipeInformationExtendedIngredientsInner) GetAmountOk() (*float32, bool)`

GetAmountOk returns a tuple with the Amount field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAmount

`func (o *RecipeInformationExtendedIngredientsInner) SetAmount(v float32)`

SetAmount sets Amount field to given value.


### GetConsistency

`func (o *RecipeInformationExtendedIngredientsInner) GetConsistency() string`

GetConsistency returns the Consistency field if non-nil, zero value otherwise.

### GetConsistencyOk

`func (o *RecipeInformationExtendedIngredientsInner) GetConsistencyOk() (*string, bool)`

GetConsistencyOk returns a tuple with the Consistency field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetConsistency

`func (o *RecipeInformationExtendedIngredientsInner) SetConsistency(v string)`

SetConsistency sets Consistency field to given value.


### GetId

`func (o *RecipeInformationExtendedIngredientsInner) GetId() int32`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *RecipeInformationExtendedIngredientsInner) GetIdOk() (*int32, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *RecipeInformationExtendedIngredientsInner) SetId(v int32)`

SetId sets Id field to given value.


### GetImage

`func (o *RecipeInformationExtendedIngredientsInner) GetImage() string`

GetImage returns the Image field if non-nil, zero value otherwise.

### GetImageOk

`func (o *RecipeInformationExtendedIngredientsInner) GetImageOk() (*string, bool)`

GetImageOk returns a tuple with the Image field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetImage

`func (o *RecipeInformationExtendedIngredientsInner) SetImage(v string)`

SetImage sets Image field to given value.


### GetMeasures

`func (o *RecipeInformationExtendedIngredientsInner) GetMeasures() RecipeInformationExtendedIngredientsInnerMeasures`

GetMeasures returns the Measures field if non-nil, zero value otherwise.

### GetMeasuresOk

`func (o *RecipeInformationExtendedIngredientsInner) GetMeasuresOk() (*RecipeInformationExtendedIngredientsInnerMeasures, bool)`

GetMeasuresOk returns a tuple with the Measures field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMeasures

`func (o *RecipeInformationExtendedIngredientsInner) SetMeasures(v RecipeInformationExtendedIngredientsInnerMeasures)`

SetMeasures sets Measures field to given value.

### HasMeasures

`func (o *RecipeInformationExtendedIngredientsInner) HasMeasures() bool`

HasMeasures returns a boolean if a field has been set.

### GetMeta

`func (o *RecipeInformationExtendedIngredientsInner) GetMeta() []string`

GetMeta returns the Meta field if non-nil, zero value otherwise.

### GetMetaOk

`func (o *RecipeInformationExtendedIngredientsInner) GetMetaOk() (*[]string, bool)`

GetMetaOk returns a tuple with the Meta field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMeta

`func (o *RecipeInformationExtendedIngredientsInner) SetMeta(v []string)`

SetMeta sets Meta field to given value.

### HasMeta

`func (o *RecipeInformationExtendedIngredientsInner) HasMeta() bool`

HasMeta returns a boolean if a field has been set.

### GetName

`func (o *RecipeInformationExtendedIngredientsInner) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *RecipeInformationExtendedIngredientsInner) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *RecipeInformationExtendedIngredientsInner) SetName(v string)`

SetName sets Name field to given value.


### GetOriginal

`func (o *RecipeInformationExtendedIngredientsInner) GetOriginal() string`

GetOriginal returns the Original field if non-nil, zero value otherwise.

### GetOriginalOk

`func (o *RecipeInformationExtendedIngredientsInner) GetOriginalOk() (*string, bool)`

GetOriginalOk returns a tuple with the Original field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOriginal

`func (o *RecipeInformationExtendedIngredientsInner) SetOriginal(v string)`

SetOriginal sets Original field to given value.


### GetOriginalName

`func (o *RecipeInformationExtendedIngredientsInner) GetOriginalName() string`

GetOriginalName returns the OriginalName field if non-nil, zero value otherwise.

### GetOriginalNameOk

`func (o *RecipeInformationExtendedIngredientsInner) GetOriginalNameOk() (*string, bool)`

GetOriginalNameOk returns a tuple with the OriginalName field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOriginalName

`func (o *RecipeInformationExtendedIngredientsInner) SetOriginalName(v string)`

SetOriginalName sets OriginalName field to given value.


### GetUnit

`func (o *RecipeInformationExtendedIngredientsInner) GetUnit() string`

GetUnit returns the Unit field if non-nil, zero value otherwise.

### GetUnitOk

`func (o *RecipeInformationExtendedIngredientsInner) GetUnitOk() (*string, bool)`

GetUnitOk returns a tuple with the Unit field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUnit

`func (o *RecipeInformationExtendedIngredientsInner) SetUnit(v string)`

SetUnit sets Unit field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


