# GenerateMealPlan200Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Meals** | [**[]GetSimilarRecipes200ResponseInner**](GetSimilarRecipes200ResponseInner.md) |  | 
**Nutrients** | [**GenerateMealPlan200ResponseNutrients**](GenerateMealPlan200ResponseNutrients.md) |  | 

## Methods

### NewGenerateMealPlan200Response

`func NewGenerateMealPlan200Response(meals []GetSimilarRecipes200ResponseInner, nutrients GenerateMealPlan200ResponseNutrients, ) *GenerateMealPlan200Response`

NewGenerateMealPlan200Response instantiates a new GenerateMealPlan200Response object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewGenerateMealPlan200ResponseWithDefaults

`func NewGenerateMealPlan200ResponseWithDefaults() *GenerateMealPlan200Response`

NewGenerateMealPlan200ResponseWithDefaults instantiates a new GenerateMealPlan200Response object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetMeals

`func (o *GenerateMealPlan200Response) GetMeals() []GetSimilarRecipes200ResponseInner`

GetMeals returns the Meals field if non-nil, zero value otherwise.

### GetMealsOk

`func (o *GenerateMealPlan200Response) GetMealsOk() (*[]GetSimilarRecipes200ResponseInner, bool)`

GetMealsOk returns a tuple with the Meals field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMeals

`func (o *GenerateMealPlan200Response) SetMeals(v []GetSimilarRecipes200ResponseInner)`

SetMeals sets Meals field to given value.


### GetNutrients

`func (o *GenerateMealPlan200Response) GetNutrients() GenerateMealPlan200ResponseNutrients`

GetNutrients returns the Nutrients field if non-nil, zero value otherwise.

### GetNutrientsOk

`func (o *GenerateMealPlan200Response) GetNutrientsOk() (*GenerateMealPlan200ResponseNutrients, bool)`

GetNutrientsOk returns a tuple with the Nutrients field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetNutrients

`func (o *GenerateMealPlan200Response) SetNutrients(v GenerateMealPlan200ResponseNutrients)`

SetNutrients sets Nutrients field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


