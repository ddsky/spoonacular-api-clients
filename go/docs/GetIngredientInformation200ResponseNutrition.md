# GetIngredientInformation200ResponseNutrition

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Nutrients** | [**[]ParseIngredients200ResponseInnerNutritionNutrientsInner**](ParseIngredients200ResponseInnerNutritionNutrientsInner.md) |  | 
**Properties** | [**[]ParseIngredients200ResponseInnerNutritionPropertiesInner**](ParseIngredients200ResponseInnerNutritionPropertiesInner.md) |  | 
**CaloricBreakdown** | [**ParseIngredients200ResponseInnerNutritionCaloricBreakdown**](ParseIngredients200ResponseInnerNutritionCaloricBreakdown.md) |  | 
**WeightPerServing** | [**ParseIngredients200ResponseInnerNutritionWeightPerServing**](ParseIngredients200ResponseInnerNutritionWeightPerServing.md) |  | 

## Methods

### NewGetIngredientInformation200ResponseNutrition

`func NewGetIngredientInformation200ResponseNutrition(nutrients []ParseIngredients200ResponseInnerNutritionNutrientsInner, properties []ParseIngredients200ResponseInnerNutritionPropertiesInner, caloricBreakdown ParseIngredients200ResponseInnerNutritionCaloricBreakdown, weightPerServing ParseIngredients200ResponseInnerNutritionWeightPerServing, ) *GetIngredientInformation200ResponseNutrition`

NewGetIngredientInformation200ResponseNutrition instantiates a new GetIngredientInformation200ResponseNutrition object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewGetIngredientInformation200ResponseNutritionWithDefaults

`func NewGetIngredientInformation200ResponseNutritionWithDefaults() *GetIngredientInformation200ResponseNutrition`

NewGetIngredientInformation200ResponseNutritionWithDefaults instantiates a new GetIngredientInformation200ResponseNutrition object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetNutrients

`func (o *GetIngredientInformation200ResponseNutrition) GetNutrients() []ParseIngredients200ResponseInnerNutritionNutrientsInner`

GetNutrients returns the Nutrients field if non-nil, zero value otherwise.

### GetNutrientsOk

`func (o *GetIngredientInformation200ResponseNutrition) GetNutrientsOk() (*[]ParseIngredients200ResponseInnerNutritionNutrientsInner, bool)`

GetNutrientsOk returns a tuple with the Nutrients field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetNutrients

`func (o *GetIngredientInformation200ResponseNutrition) SetNutrients(v []ParseIngredients200ResponseInnerNutritionNutrientsInner)`

SetNutrients sets Nutrients field to given value.


### GetProperties

`func (o *GetIngredientInformation200ResponseNutrition) GetProperties() []ParseIngredients200ResponseInnerNutritionPropertiesInner`

GetProperties returns the Properties field if non-nil, zero value otherwise.

### GetPropertiesOk

`func (o *GetIngredientInformation200ResponseNutrition) GetPropertiesOk() (*[]ParseIngredients200ResponseInnerNutritionPropertiesInner, bool)`

GetPropertiesOk returns a tuple with the Properties field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetProperties

`func (o *GetIngredientInformation200ResponseNutrition) SetProperties(v []ParseIngredients200ResponseInnerNutritionPropertiesInner)`

SetProperties sets Properties field to given value.


### GetCaloricBreakdown

`func (o *GetIngredientInformation200ResponseNutrition) GetCaloricBreakdown() ParseIngredients200ResponseInnerNutritionCaloricBreakdown`

GetCaloricBreakdown returns the CaloricBreakdown field if non-nil, zero value otherwise.

### GetCaloricBreakdownOk

`func (o *GetIngredientInformation200ResponseNutrition) GetCaloricBreakdownOk() (*ParseIngredients200ResponseInnerNutritionCaloricBreakdown, bool)`

GetCaloricBreakdownOk returns a tuple with the CaloricBreakdown field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCaloricBreakdown

`func (o *GetIngredientInformation200ResponseNutrition) SetCaloricBreakdown(v ParseIngredients200ResponseInnerNutritionCaloricBreakdown)`

SetCaloricBreakdown sets CaloricBreakdown field to given value.


### GetWeightPerServing

`func (o *GetIngredientInformation200ResponseNutrition) GetWeightPerServing() ParseIngredients200ResponseInnerNutritionWeightPerServing`

GetWeightPerServing returns the WeightPerServing field if non-nil, zero value otherwise.

### GetWeightPerServingOk

`func (o *GetIngredientInformation200ResponseNutrition) GetWeightPerServingOk() (*ParseIngredients200ResponseInnerNutritionWeightPerServing, bool)`

GetWeightPerServingOk returns a tuple with the WeightPerServing field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetWeightPerServing

`func (o *GetIngredientInformation200ResponseNutrition) SetWeightPerServing(v ParseIngredients200ResponseInnerNutritionWeightPerServing)`

SetWeightPerServing sets WeightPerServing field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


