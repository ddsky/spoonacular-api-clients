# AnalyzeRecipeRequest1

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Title** | Pointer to **string** |  | [optional] 
**Servings** | Pointer to **int32** |  | [optional] 
**Ingredients** | Pointer to **[]string** |  | [optional] 
**Instructions** | Pointer to **string** |  | [optional] 

## Methods

### NewAnalyzeRecipeRequest1

`func NewAnalyzeRecipeRequest1() *AnalyzeRecipeRequest1`

NewAnalyzeRecipeRequest1 instantiates a new AnalyzeRecipeRequest1 object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewAnalyzeRecipeRequest1WithDefaults

`func NewAnalyzeRecipeRequest1WithDefaults() *AnalyzeRecipeRequest1`

NewAnalyzeRecipeRequest1WithDefaults instantiates a new AnalyzeRecipeRequest1 object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetTitle

`func (o *AnalyzeRecipeRequest1) GetTitle() string`

GetTitle returns the Title field if non-nil, zero value otherwise.

### GetTitleOk

`func (o *AnalyzeRecipeRequest1) GetTitleOk() (*string, bool)`

GetTitleOk returns a tuple with the Title field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTitle

`func (o *AnalyzeRecipeRequest1) SetTitle(v string)`

SetTitle sets Title field to given value.

### HasTitle

`func (o *AnalyzeRecipeRequest1) HasTitle() bool`

HasTitle returns a boolean if a field has been set.

### GetServings

`func (o *AnalyzeRecipeRequest1) GetServings() int32`

GetServings returns the Servings field if non-nil, zero value otherwise.

### GetServingsOk

`func (o *AnalyzeRecipeRequest1) GetServingsOk() (*int32, bool)`

GetServingsOk returns a tuple with the Servings field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetServings

`func (o *AnalyzeRecipeRequest1) SetServings(v int32)`

SetServings sets Servings field to given value.

### HasServings

`func (o *AnalyzeRecipeRequest1) HasServings() bool`

HasServings returns a boolean if a field has been set.

### GetIngredients

`func (o *AnalyzeRecipeRequest1) GetIngredients() []string`

GetIngredients returns the Ingredients field if non-nil, zero value otherwise.

### GetIngredientsOk

`func (o *AnalyzeRecipeRequest1) GetIngredientsOk() (*[]string, bool)`

GetIngredientsOk returns a tuple with the Ingredients field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIngredients

`func (o *AnalyzeRecipeRequest1) SetIngredients(v []string)`

SetIngredients sets Ingredients field to given value.

### HasIngredients

`func (o *AnalyzeRecipeRequest1) HasIngredients() bool`

HasIngredients returns a boolean if a field has been set.

### GetInstructions

`func (o *AnalyzeRecipeRequest1) GetInstructions() string`

GetInstructions returns the Instructions field if non-nil, zero value otherwise.

### GetInstructionsOk

`func (o *AnalyzeRecipeRequest1) GetInstructionsOk() (*string, bool)`

GetInstructionsOk returns a tuple with the Instructions field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetInstructions

`func (o *AnalyzeRecipeRequest1) SetInstructions(v string)`

SetInstructions sets Instructions field to given value.

### HasInstructions

`func (o *AnalyzeRecipeRequest1) HasInstructions() bool`

HasInstructions returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


