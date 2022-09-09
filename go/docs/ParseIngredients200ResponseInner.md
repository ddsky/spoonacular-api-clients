# ParseIngredients200ResponseInner

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **int32** |  | 
**Original** | **string** |  | 
**OriginalName** | **string** |  | 
**Name** | **string** |  | 
**NameClean** | **string** |  | 
**Amount** | **float32** |  | 
**Unit** | **string** |  | 
**UnitShort** | **string** |  | 
**UnitLong** | **string** |  | 
**PossibleUnits** | **[]string** |  | 
**EstimatedCost** | [**ParseIngredients200ResponseInnerEstimatedCost**](ParseIngredients200ResponseInnerEstimatedCost.md) |  | 
**Consistency** | **string** |  | 
**Aisle** | **string** |  | 
**Image** | **string** |  | 
**Meta** | **[]string** |  | 
**Nutrition** | [**ParseIngredients200ResponseInnerNutrition**](ParseIngredients200ResponseInnerNutrition.md) |  | 

## Methods

### NewParseIngredients200ResponseInner

`func NewParseIngredients200ResponseInner(id int32, original string, originalName string, name string, nameClean string, amount float32, unit string, unitShort string, unitLong string, possibleUnits []string, estimatedCost ParseIngredients200ResponseInnerEstimatedCost, consistency string, aisle string, image string, meta []string, nutrition ParseIngredients200ResponseInnerNutrition, ) *ParseIngredients200ResponseInner`

NewParseIngredients200ResponseInner instantiates a new ParseIngredients200ResponseInner object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewParseIngredients200ResponseInnerWithDefaults

`func NewParseIngredients200ResponseInnerWithDefaults() *ParseIngredients200ResponseInner`

NewParseIngredients200ResponseInnerWithDefaults instantiates a new ParseIngredients200ResponseInner object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetId

`func (o *ParseIngredients200ResponseInner) GetId() int32`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *ParseIngredients200ResponseInner) GetIdOk() (*int32, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *ParseIngredients200ResponseInner) SetId(v int32)`

SetId sets Id field to given value.


### GetOriginal

`func (o *ParseIngredients200ResponseInner) GetOriginal() string`

GetOriginal returns the Original field if non-nil, zero value otherwise.

### GetOriginalOk

`func (o *ParseIngredients200ResponseInner) GetOriginalOk() (*string, bool)`

GetOriginalOk returns a tuple with the Original field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOriginal

`func (o *ParseIngredients200ResponseInner) SetOriginal(v string)`

SetOriginal sets Original field to given value.


### GetOriginalName

`func (o *ParseIngredients200ResponseInner) GetOriginalName() string`

GetOriginalName returns the OriginalName field if non-nil, zero value otherwise.

### GetOriginalNameOk

`func (o *ParseIngredients200ResponseInner) GetOriginalNameOk() (*string, bool)`

GetOriginalNameOk returns a tuple with the OriginalName field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOriginalName

`func (o *ParseIngredients200ResponseInner) SetOriginalName(v string)`

SetOriginalName sets OriginalName field to given value.


### GetName

`func (o *ParseIngredients200ResponseInner) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *ParseIngredients200ResponseInner) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *ParseIngredients200ResponseInner) SetName(v string)`

SetName sets Name field to given value.


### GetNameClean

`func (o *ParseIngredients200ResponseInner) GetNameClean() string`

GetNameClean returns the NameClean field if non-nil, zero value otherwise.

### GetNameCleanOk

`func (o *ParseIngredients200ResponseInner) GetNameCleanOk() (*string, bool)`

GetNameCleanOk returns a tuple with the NameClean field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetNameClean

`func (o *ParseIngredients200ResponseInner) SetNameClean(v string)`

SetNameClean sets NameClean field to given value.


### GetAmount

`func (o *ParseIngredients200ResponseInner) GetAmount() float32`

GetAmount returns the Amount field if non-nil, zero value otherwise.

### GetAmountOk

`func (o *ParseIngredients200ResponseInner) GetAmountOk() (*float32, bool)`

GetAmountOk returns a tuple with the Amount field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAmount

`func (o *ParseIngredients200ResponseInner) SetAmount(v float32)`

SetAmount sets Amount field to given value.


### GetUnit

`func (o *ParseIngredients200ResponseInner) GetUnit() string`

GetUnit returns the Unit field if non-nil, zero value otherwise.

### GetUnitOk

`func (o *ParseIngredients200ResponseInner) GetUnitOk() (*string, bool)`

GetUnitOk returns a tuple with the Unit field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUnit

`func (o *ParseIngredients200ResponseInner) SetUnit(v string)`

SetUnit sets Unit field to given value.


### GetUnitShort

`func (o *ParseIngredients200ResponseInner) GetUnitShort() string`

GetUnitShort returns the UnitShort field if non-nil, zero value otherwise.

### GetUnitShortOk

`func (o *ParseIngredients200ResponseInner) GetUnitShortOk() (*string, bool)`

GetUnitShortOk returns a tuple with the UnitShort field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUnitShort

`func (o *ParseIngredients200ResponseInner) SetUnitShort(v string)`

SetUnitShort sets UnitShort field to given value.


### GetUnitLong

`func (o *ParseIngredients200ResponseInner) GetUnitLong() string`

GetUnitLong returns the UnitLong field if non-nil, zero value otherwise.

### GetUnitLongOk

`func (o *ParseIngredients200ResponseInner) GetUnitLongOk() (*string, bool)`

GetUnitLongOk returns a tuple with the UnitLong field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUnitLong

`func (o *ParseIngredients200ResponseInner) SetUnitLong(v string)`

SetUnitLong sets UnitLong field to given value.


### GetPossibleUnits

`func (o *ParseIngredients200ResponseInner) GetPossibleUnits() []string`

GetPossibleUnits returns the PossibleUnits field if non-nil, zero value otherwise.

### GetPossibleUnitsOk

`func (o *ParseIngredients200ResponseInner) GetPossibleUnitsOk() (*[]string, bool)`

GetPossibleUnitsOk returns a tuple with the PossibleUnits field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPossibleUnits

`func (o *ParseIngredients200ResponseInner) SetPossibleUnits(v []string)`

SetPossibleUnits sets PossibleUnits field to given value.


### GetEstimatedCost

`func (o *ParseIngredients200ResponseInner) GetEstimatedCost() ParseIngredients200ResponseInnerEstimatedCost`

GetEstimatedCost returns the EstimatedCost field if non-nil, zero value otherwise.

### GetEstimatedCostOk

`func (o *ParseIngredients200ResponseInner) GetEstimatedCostOk() (*ParseIngredients200ResponseInnerEstimatedCost, bool)`

GetEstimatedCostOk returns a tuple with the EstimatedCost field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEstimatedCost

`func (o *ParseIngredients200ResponseInner) SetEstimatedCost(v ParseIngredients200ResponseInnerEstimatedCost)`

SetEstimatedCost sets EstimatedCost field to given value.


### GetConsistency

`func (o *ParseIngredients200ResponseInner) GetConsistency() string`

GetConsistency returns the Consistency field if non-nil, zero value otherwise.

### GetConsistencyOk

`func (o *ParseIngredients200ResponseInner) GetConsistencyOk() (*string, bool)`

GetConsistencyOk returns a tuple with the Consistency field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetConsistency

`func (o *ParseIngredients200ResponseInner) SetConsistency(v string)`

SetConsistency sets Consistency field to given value.


### GetAisle

`func (o *ParseIngredients200ResponseInner) GetAisle() string`

GetAisle returns the Aisle field if non-nil, zero value otherwise.

### GetAisleOk

`func (o *ParseIngredients200ResponseInner) GetAisleOk() (*string, bool)`

GetAisleOk returns a tuple with the Aisle field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAisle

`func (o *ParseIngredients200ResponseInner) SetAisle(v string)`

SetAisle sets Aisle field to given value.


### GetImage

`func (o *ParseIngredients200ResponseInner) GetImage() string`

GetImage returns the Image field if non-nil, zero value otherwise.

### GetImageOk

`func (o *ParseIngredients200ResponseInner) GetImageOk() (*string, bool)`

GetImageOk returns a tuple with the Image field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetImage

`func (o *ParseIngredients200ResponseInner) SetImage(v string)`

SetImage sets Image field to given value.


### GetMeta

`func (o *ParseIngredients200ResponseInner) GetMeta() []string`

GetMeta returns the Meta field if non-nil, zero value otherwise.

### GetMetaOk

`func (o *ParseIngredients200ResponseInner) GetMetaOk() (*[]string, bool)`

GetMetaOk returns a tuple with the Meta field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMeta

`func (o *ParseIngredients200ResponseInner) SetMeta(v []string)`

SetMeta sets Meta field to given value.


### GetNutrition

`func (o *ParseIngredients200ResponseInner) GetNutrition() ParseIngredients200ResponseInnerNutrition`

GetNutrition returns the Nutrition field if non-nil, zero value otherwise.

### GetNutritionOk

`func (o *ParseIngredients200ResponseInner) GetNutritionOk() (*ParseIngredients200ResponseInnerNutrition, bool)`

GetNutritionOk returns a tuple with the Nutrition field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetNutrition

`func (o *ParseIngredients200ResponseInner) SetNutrition(v ParseIngredients200ResponseInnerNutrition)`

SetNutrition sets Nutrition field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


