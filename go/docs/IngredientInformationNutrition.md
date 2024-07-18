# IngredientInformationNutrition

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Nutrients** | [**[]SearchGroceryProductsByUPC200ResponseNutritionNutrientsInner**](SearchGroceryProductsByUPC200ResponseNutritionNutrientsInner.md) |  | 
**Properties** | [**[]IngredientInformationNutritionPropertiesInner**](IngredientInformationNutritionPropertiesInner.md) |  | 
**CaloricBreakdown** | [**SearchGroceryProductsByUPC200ResponseNutritionCaloricBreakdown**](SearchGroceryProductsByUPC200ResponseNutritionCaloricBreakdown.md) |  | 
**WeightPerServing** | [**GetShoppingList200ResponseAislesInnerItemsInnerMeasuresOriginal**](GetShoppingList200ResponseAislesInnerItemsInnerMeasuresOriginal.md) |  | 

## Methods

### NewIngredientInformationNutrition

`func NewIngredientInformationNutrition(nutrients []SearchGroceryProductsByUPC200ResponseNutritionNutrientsInner, properties []IngredientInformationNutritionPropertiesInner, caloricBreakdown SearchGroceryProductsByUPC200ResponseNutritionCaloricBreakdown, weightPerServing GetShoppingList200ResponseAislesInnerItemsInnerMeasuresOriginal, ) *IngredientInformationNutrition`

NewIngredientInformationNutrition instantiates a new IngredientInformationNutrition object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewIngredientInformationNutritionWithDefaults

`func NewIngredientInformationNutritionWithDefaults() *IngredientInformationNutrition`

NewIngredientInformationNutritionWithDefaults instantiates a new IngredientInformationNutrition object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetNutrients

`func (o *IngredientInformationNutrition) GetNutrients() []SearchGroceryProductsByUPC200ResponseNutritionNutrientsInner`

GetNutrients returns the Nutrients field if non-nil, zero value otherwise.

### GetNutrientsOk

`func (o *IngredientInformationNutrition) GetNutrientsOk() (*[]SearchGroceryProductsByUPC200ResponseNutritionNutrientsInner, bool)`

GetNutrientsOk returns a tuple with the Nutrients field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetNutrients

`func (o *IngredientInformationNutrition) SetNutrients(v []SearchGroceryProductsByUPC200ResponseNutritionNutrientsInner)`

SetNutrients sets Nutrients field to given value.


### GetProperties

`func (o *IngredientInformationNutrition) GetProperties() []IngredientInformationNutritionPropertiesInner`

GetProperties returns the Properties field if non-nil, zero value otherwise.

### GetPropertiesOk

`func (o *IngredientInformationNutrition) GetPropertiesOk() (*[]IngredientInformationNutritionPropertiesInner, bool)`

GetPropertiesOk returns a tuple with the Properties field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetProperties

`func (o *IngredientInformationNutrition) SetProperties(v []IngredientInformationNutritionPropertiesInner)`

SetProperties sets Properties field to given value.


### GetCaloricBreakdown

`func (o *IngredientInformationNutrition) GetCaloricBreakdown() SearchGroceryProductsByUPC200ResponseNutritionCaloricBreakdown`

GetCaloricBreakdown returns the CaloricBreakdown field if non-nil, zero value otherwise.

### GetCaloricBreakdownOk

`func (o *IngredientInformationNutrition) GetCaloricBreakdownOk() (*SearchGroceryProductsByUPC200ResponseNutritionCaloricBreakdown, bool)`

GetCaloricBreakdownOk returns a tuple with the CaloricBreakdown field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCaloricBreakdown

`func (o *IngredientInformationNutrition) SetCaloricBreakdown(v SearchGroceryProductsByUPC200ResponseNutritionCaloricBreakdown)`

SetCaloricBreakdown sets CaloricBreakdown field to given value.


### GetWeightPerServing

`func (o *IngredientInformationNutrition) GetWeightPerServing() GetShoppingList200ResponseAislesInnerItemsInnerMeasuresOriginal`

GetWeightPerServing returns the WeightPerServing field if non-nil, zero value otherwise.

### GetWeightPerServingOk

`func (o *IngredientInformationNutrition) GetWeightPerServingOk() (*GetShoppingList200ResponseAislesInnerItemsInnerMeasuresOriginal, bool)`

GetWeightPerServingOk returns a tuple with the WeightPerServing field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetWeightPerServing

`func (o *IngredientInformationNutrition) SetWeightPerServing(v GetShoppingList200ResponseAislesInnerItemsInnerMeasuresOriginal)`

SetWeightPerServing sets WeightPerServing field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


