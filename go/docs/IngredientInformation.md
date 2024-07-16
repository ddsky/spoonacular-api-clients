# IngredientInformation

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **int32** |  | 
**Original** | **string** |  | 
**OriginalName** | **string** |  | 
**Name** | **string** |  | 
**Amount** | **float32** |  | 
**Unit** | **string** |  | 
**UnitShort** | **string** |  | 
**UnitLong** | **string** |  | 
**PossibleUnits** | **[]string** |  | 
**EstimatedCost** | [**IngredientInformationEstimatedCost**](IngredientInformationEstimatedCost.md) |  | 
**Consistency** | **string** |  | 
**ShoppingListUnits** | Pointer to **[]string** |  | [optional] 
**Aisle** | **string** |  | 
**Image** | **string** |  | 
**Meta** | **[]string** |  | 
**Nutrition** | Pointer to [**IngredientInformationNutrition**](IngredientInformationNutrition.md) |  | [optional] 
**CategoryPath** | Pointer to **[]string** |  | [optional] 

## Methods

### NewIngredientInformation

`func NewIngredientInformation(id int32, original string, originalName string, name string, amount float32, unit string, unitShort string, unitLong string, possibleUnits []string, estimatedCost IngredientInformationEstimatedCost, consistency string, aisle string, image string, meta []string, ) *IngredientInformation`

NewIngredientInformation instantiates a new IngredientInformation object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewIngredientInformationWithDefaults

`func NewIngredientInformationWithDefaults() *IngredientInformation`

NewIngredientInformationWithDefaults instantiates a new IngredientInformation object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetId

`func (o *IngredientInformation) GetId() int32`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *IngredientInformation) GetIdOk() (*int32, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *IngredientInformation) SetId(v int32)`

SetId sets Id field to given value.


### GetOriginal

`func (o *IngredientInformation) GetOriginal() string`

GetOriginal returns the Original field if non-nil, zero value otherwise.

### GetOriginalOk

`func (o *IngredientInformation) GetOriginalOk() (*string, bool)`

GetOriginalOk returns a tuple with the Original field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOriginal

`func (o *IngredientInformation) SetOriginal(v string)`

SetOriginal sets Original field to given value.


### GetOriginalName

`func (o *IngredientInformation) GetOriginalName() string`

GetOriginalName returns the OriginalName field if non-nil, zero value otherwise.

### GetOriginalNameOk

`func (o *IngredientInformation) GetOriginalNameOk() (*string, bool)`

GetOriginalNameOk returns a tuple with the OriginalName field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOriginalName

`func (o *IngredientInformation) SetOriginalName(v string)`

SetOriginalName sets OriginalName field to given value.


### GetName

`func (o *IngredientInformation) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *IngredientInformation) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *IngredientInformation) SetName(v string)`

SetName sets Name field to given value.


### GetAmount

`func (o *IngredientInformation) GetAmount() float32`

GetAmount returns the Amount field if non-nil, zero value otherwise.

### GetAmountOk

`func (o *IngredientInformation) GetAmountOk() (*float32, bool)`

GetAmountOk returns a tuple with the Amount field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAmount

`func (o *IngredientInformation) SetAmount(v float32)`

SetAmount sets Amount field to given value.


### GetUnit

`func (o *IngredientInformation) GetUnit() string`

GetUnit returns the Unit field if non-nil, zero value otherwise.

### GetUnitOk

`func (o *IngredientInformation) GetUnitOk() (*string, bool)`

GetUnitOk returns a tuple with the Unit field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUnit

`func (o *IngredientInformation) SetUnit(v string)`

SetUnit sets Unit field to given value.


### GetUnitShort

`func (o *IngredientInformation) GetUnitShort() string`

GetUnitShort returns the UnitShort field if non-nil, zero value otherwise.

### GetUnitShortOk

`func (o *IngredientInformation) GetUnitShortOk() (*string, bool)`

GetUnitShortOk returns a tuple with the UnitShort field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUnitShort

`func (o *IngredientInformation) SetUnitShort(v string)`

SetUnitShort sets UnitShort field to given value.


### GetUnitLong

`func (o *IngredientInformation) GetUnitLong() string`

GetUnitLong returns the UnitLong field if non-nil, zero value otherwise.

### GetUnitLongOk

`func (o *IngredientInformation) GetUnitLongOk() (*string, bool)`

GetUnitLongOk returns a tuple with the UnitLong field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUnitLong

`func (o *IngredientInformation) SetUnitLong(v string)`

SetUnitLong sets UnitLong field to given value.


### GetPossibleUnits

`func (o *IngredientInformation) GetPossibleUnits() []string`

GetPossibleUnits returns the PossibleUnits field if non-nil, zero value otherwise.

### GetPossibleUnitsOk

`func (o *IngredientInformation) GetPossibleUnitsOk() (*[]string, bool)`

GetPossibleUnitsOk returns a tuple with the PossibleUnits field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPossibleUnits

`func (o *IngredientInformation) SetPossibleUnits(v []string)`

SetPossibleUnits sets PossibleUnits field to given value.


### GetEstimatedCost

`func (o *IngredientInformation) GetEstimatedCost() IngredientInformationEstimatedCost`

GetEstimatedCost returns the EstimatedCost field if non-nil, zero value otherwise.

### GetEstimatedCostOk

`func (o *IngredientInformation) GetEstimatedCostOk() (*IngredientInformationEstimatedCost, bool)`

GetEstimatedCostOk returns a tuple with the EstimatedCost field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEstimatedCost

`func (o *IngredientInformation) SetEstimatedCost(v IngredientInformationEstimatedCost)`

SetEstimatedCost sets EstimatedCost field to given value.


### GetConsistency

`func (o *IngredientInformation) GetConsistency() string`

GetConsistency returns the Consistency field if non-nil, zero value otherwise.

### GetConsistencyOk

`func (o *IngredientInformation) GetConsistencyOk() (*string, bool)`

GetConsistencyOk returns a tuple with the Consistency field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetConsistency

`func (o *IngredientInformation) SetConsistency(v string)`

SetConsistency sets Consistency field to given value.


### GetShoppingListUnits

`func (o *IngredientInformation) GetShoppingListUnits() []string`

GetShoppingListUnits returns the ShoppingListUnits field if non-nil, zero value otherwise.

### GetShoppingListUnitsOk

`func (o *IngredientInformation) GetShoppingListUnitsOk() (*[]string, bool)`

GetShoppingListUnitsOk returns a tuple with the ShoppingListUnits field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetShoppingListUnits

`func (o *IngredientInformation) SetShoppingListUnits(v []string)`

SetShoppingListUnits sets ShoppingListUnits field to given value.

### HasShoppingListUnits

`func (o *IngredientInformation) HasShoppingListUnits() bool`

HasShoppingListUnits returns a boolean if a field has been set.

### GetAisle

`func (o *IngredientInformation) GetAisle() string`

GetAisle returns the Aisle field if non-nil, zero value otherwise.

### GetAisleOk

`func (o *IngredientInformation) GetAisleOk() (*string, bool)`

GetAisleOk returns a tuple with the Aisle field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAisle

`func (o *IngredientInformation) SetAisle(v string)`

SetAisle sets Aisle field to given value.


### GetImage

`func (o *IngredientInformation) GetImage() string`

GetImage returns the Image field if non-nil, zero value otherwise.

### GetImageOk

`func (o *IngredientInformation) GetImageOk() (*string, bool)`

GetImageOk returns a tuple with the Image field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetImage

`func (o *IngredientInformation) SetImage(v string)`

SetImage sets Image field to given value.


### GetMeta

`func (o *IngredientInformation) GetMeta() []string`

GetMeta returns the Meta field if non-nil, zero value otherwise.

### GetMetaOk

`func (o *IngredientInformation) GetMetaOk() (*[]string, bool)`

GetMetaOk returns a tuple with the Meta field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMeta

`func (o *IngredientInformation) SetMeta(v []string)`

SetMeta sets Meta field to given value.


### GetNutrition

`func (o *IngredientInformation) GetNutrition() IngredientInformationNutrition`

GetNutrition returns the Nutrition field if non-nil, zero value otherwise.

### GetNutritionOk

`func (o *IngredientInformation) GetNutritionOk() (*IngredientInformationNutrition, bool)`

GetNutritionOk returns a tuple with the Nutrition field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetNutrition

`func (o *IngredientInformation) SetNutrition(v IngredientInformationNutrition)`

SetNutrition sets Nutrition field to given value.

### HasNutrition

`func (o *IngredientInformation) HasNutrition() bool`

HasNutrition returns a boolean if a field has been set.

### GetCategoryPath

`func (o *IngredientInformation) GetCategoryPath() []string`

GetCategoryPath returns the CategoryPath field if non-nil, zero value otherwise.

### GetCategoryPathOk

`func (o *IngredientInformation) GetCategoryPathOk() (*[]string, bool)`

GetCategoryPathOk returns a tuple with the CategoryPath field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCategoryPath

`func (o *IngredientInformation) SetCategoryPath(v []string)`

SetCategoryPath sets CategoryPath field to given value.

### HasCategoryPath

`func (o *IngredientInformation) HasCategoryPath() bool`

HasCategoryPath returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


