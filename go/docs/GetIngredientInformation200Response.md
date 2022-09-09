# GetIngredientInformation200Response

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
**ShoppingListUnits** | **[]string** |  | 
**Aisle** | **string** |  | 
**Image** | **string** |  | 
**Meta** | **[]map[string]interface{}** |  | 
**Nutrition** | [**GetIngredientInformation200ResponseNutrition**](GetIngredientInformation200ResponseNutrition.md) |  | 
**CategoryPath** | **[]string** |  | 

## Methods

### NewGetIngredientInformation200Response

`func NewGetIngredientInformation200Response(id int32, original string, originalName string, name string, nameClean string, amount float32, unit string, unitShort string, unitLong string, possibleUnits []string, estimatedCost ParseIngredients200ResponseInnerEstimatedCost, consistency string, shoppingListUnits []string, aisle string, image string, meta []map[string]interface{}, nutrition GetIngredientInformation200ResponseNutrition, categoryPath []string, ) *GetIngredientInformation200Response`

NewGetIngredientInformation200Response instantiates a new GetIngredientInformation200Response object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewGetIngredientInformation200ResponseWithDefaults

`func NewGetIngredientInformation200ResponseWithDefaults() *GetIngredientInformation200Response`

NewGetIngredientInformation200ResponseWithDefaults instantiates a new GetIngredientInformation200Response object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetId

`func (o *GetIngredientInformation200Response) GetId() int32`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *GetIngredientInformation200Response) GetIdOk() (*int32, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *GetIngredientInformation200Response) SetId(v int32)`

SetId sets Id field to given value.


### GetOriginal

`func (o *GetIngredientInformation200Response) GetOriginal() string`

GetOriginal returns the Original field if non-nil, zero value otherwise.

### GetOriginalOk

`func (o *GetIngredientInformation200Response) GetOriginalOk() (*string, bool)`

GetOriginalOk returns a tuple with the Original field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOriginal

`func (o *GetIngredientInformation200Response) SetOriginal(v string)`

SetOriginal sets Original field to given value.


### GetOriginalName

`func (o *GetIngredientInformation200Response) GetOriginalName() string`

GetOriginalName returns the OriginalName field if non-nil, zero value otherwise.

### GetOriginalNameOk

`func (o *GetIngredientInformation200Response) GetOriginalNameOk() (*string, bool)`

GetOriginalNameOk returns a tuple with the OriginalName field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOriginalName

`func (o *GetIngredientInformation200Response) SetOriginalName(v string)`

SetOriginalName sets OriginalName field to given value.


### GetName

`func (o *GetIngredientInformation200Response) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *GetIngredientInformation200Response) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *GetIngredientInformation200Response) SetName(v string)`

SetName sets Name field to given value.


### GetNameClean

`func (o *GetIngredientInformation200Response) GetNameClean() string`

GetNameClean returns the NameClean field if non-nil, zero value otherwise.

### GetNameCleanOk

`func (o *GetIngredientInformation200Response) GetNameCleanOk() (*string, bool)`

GetNameCleanOk returns a tuple with the NameClean field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetNameClean

`func (o *GetIngredientInformation200Response) SetNameClean(v string)`

SetNameClean sets NameClean field to given value.


### GetAmount

`func (o *GetIngredientInformation200Response) GetAmount() float32`

GetAmount returns the Amount field if non-nil, zero value otherwise.

### GetAmountOk

`func (o *GetIngredientInformation200Response) GetAmountOk() (*float32, bool)`

GetAmountOk returns a tuple with the Amount field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAmount

`func (o *GetIngredientInformation200Response) SetAmount(v float32)`

SetAmount sets Amount field to given value.


### GetUnit

`func (o *GetIngredientInformation200Response) GetUnit() string`

GetUnit returns the Unit field if non-nil, zero value otherwise.

### GetUnitOk

`func (o *GetIngredientInformation200Response) GetUnitOk() (*string, bool)`

GetUnitOk returns a tuple with the Unit field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUnit

`func (o *GetIngredientInformation200Response) SetUnit(v string)`

SetUnit sets Unit field to given value.


### GetUnitShort

`func (o *GetIngredientInformation200Response) GetUnitShort() string`

GetUnitShort returns the UnitShort field if non-nil, zero value otherwise.

### GetUnitShortOk

`func (o *GetIngredientInformation200Response) GetUnitShortOk() (*string, bool)`

GetUnitShortOk returns a tuple with the UnitShort field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUnitShort

`func (o *GetIngredientInformation200Response) SetUnitShort(v string)`

SetUnitShort sets UnitShort field to given value.


### GetUnitLong

`func (o *GetIngredientInformation200Response) GetUnitLong() string`

GetUnitLong returns the UnitLong field if non-nil, zero value otherwise.

### GetUnitLongOk

`func (o *GetIngredientInformation200Response) GetUnitLongOk() (*string, bool)`

GetUnitLongOk returns a tuple with the UnitLong field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUnitLong

`func (o *GetIngredientInformation200Response) SetUnitLong(v string)`

SetUnitLong sets UnitLong field to given value.


### GetPossibleUnits

`func (o *GetIngredientInformation200Response) GetPossibleUnits() []string`

GetPossibleUnits returns the PossibleUnits field if non-nil, zero value otherwise.

### GetPossibleUnitsOk

`func (o *GetIngredientInformation200Response) GetPossibleUnitsOk() (*[]string, bool)`

GetPossibleUnitsOk returns a tuple with the PossibleUnits field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPossibleUnits

`func (o *GetIngredientInformation200Response) SetPossibleUnits(v []string)`

SetPossibleUnits sets PossibleUnits field to given value.


### GetEstimatedCost

`func (o *GetIngredientInformation200Response) GetEstimatedCost() ParseIngredients200ResponseInnerEstimatedCost`

GetEstimatedCost returns the EstimatedCost field if non-nil, zero value otherwise.

### GetEstimatedCostOk

`func (o *GetIngredientInformation200Response) GetEstimatedCostOk() (*ParseIngredients200ResponseInnerEstimatedCost, bool)`

GetEstimatedCostOk returns a tuple with the EstimatedCost field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEstimatedCost

`func (o *GetIngredientInformation200Response) SetEstimatedCost(v ParseIngredients200ResponseInnerEstimatedCost)`

SetEstimatedCost sets EstimatedCost field to given value.


### GetConsistency

`func (o *GetIngredientInformation200Response) GetConsistency() string`

GetConsistency returns the Consistency field if non-nil, zero value otherwise.

### GetConsistencyOk

`func (o *GetIngredientInformation200Response) GetConsistencyOk() (*string, bool)`

GetConsistencyOk returns a tuple with the Consistency field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetConsistency

`func (o *GetIngredientInformation200Response) SetConsistency(v string)`

SetConsistency sets Consistency field to given value.


### GetShoppingListUnits

`func (o *GetIngredientInformation200Response) GetShoppingListUnits() []string`

GetShoppingListUnits returns the ShoppingListUnits field if non-nil, zero value otherwise.

### GetShoppingListUnitsOk

`func (o *GetIngredientInformation200Response) GetShoppingListUnitsOk() (*[]string, bool)`

GetShoppingListUnitsOk returns a tuple with the ShoppingListUnits field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetShoppingListUnits

`func (o *GetIngredientInformation200Response) SetShoppingListUnits(v []string)`

SetShoppingListUnits sets ShoppingListUnits field to given value.


### GetAisle

`func (o *GetIngredientInformation200Response) GetAisle() string`

GetAisle returns the Aisle field if non-nil, zero value otherwise.

### GetAisleOk

`func (o *GetIngredientInformation200Response) GetAisleOk() (*string, bool)`

GetAisleOk returns a tuple with the Aisle field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAisle

`func (o *GetIngredientInformation200Response) SetAisle(v string)`

SetAisle sets Aisle field to given value.


### GetImage

`func (o *GetIngredientInformation200Response) GetImage() string`

GetImage returns the Image field if non-nil, zero value otherwise.

### GetImageOk

`func (o *GetIngredientInformation200Response) GetImageOk() (*string, bool)`

GetImageOk returns a tuple with the Image field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetImage

`func (o *GetIngredientInformation200Response) SetImage(v string)`

SetImage sets Image field to given value.


### GetMeta

`func (o *GetIngredientInformation200Response) GetMeta() []map[string]interface{}`

GetMeta returns the Meta field if non-nil, zero value otherwise.

### GetMetaOk

`func (o *GetIngredientInformation200Response) GetMetaOk() (*[]map[string]interface{}, bool)`

GetMetaOk returns a tuple with the Meta field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMeta

`func (o *GetIngredientInformation200Response) SetMeta(v []map[string]interface{})`

SetMeta sets Meta field to given value.


### GetNutrition

`func (o *GetIngredientInformation200Response) GetNutrition() GetIngredientInformation200ResponseNutrition`

GetNutrition returns the Nutrition field if non-nil, zero value otherwise.

### GetNutritionOk

`func (o *GetIngredientInformation200Response) GetNutritionOk() (*GetIngredientInformation200ResponseNutrition, bool)`

GetNutritionOk returns a tuple with the Nutrition field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetNutrition

`func (o *GetIngredientInformation200Response) SetNutrition(v GetIngredientInformation200ResponseNutrition)`

SetNutrition sets Nutrition field to given value.


### GetCategoryPath

`func (o *GetIngredientInformation200Response) GetCategoryPath() []string`

GetCategoryPath returns the CategoryPath field if non-nil, zero value otherwise.

### GetCategoryPathOk

`func (o *GetIngredientInformation200Response) GetCategoryPathOk() (*[]string, bool)`

GetCategoryPathOk returns a tuple with the CategoryPath field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCategoryPath

`func (o *GetIngredientInformation200Response) SetCategoryPath(v []string)`

SetCategoryPath sets CategoryPath field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


