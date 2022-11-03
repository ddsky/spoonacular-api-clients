# AnalyzeRecipeRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Language** | Pointer to **string** | The input language, either \&quot;en\&quot; or \&quot;de\&quot;. | [optional] 
**IncludeNutrition** | Pointer to **bool** | Whether nutrition data should be added to correctly parsed ingredients. | [optional] 
**IncludeTaste** | Pointer to **bool** | Whether taste data should be added to correctly parsed ingredients. | [optional] 

## Methods

### NewAnalyzeRecipeRequest

`func NewAnalyzeRecipeRequest() *AnalyzeRecipeRequest`

NewAnalyzeRecipeRequest instantiates a new AnalyzeRecipeRequest object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewAnalyzeRecipeRequestWithDefaults

`func NewAnalyzeRecipeRequestWithDefaults() *AnalyzeRecipeRequest`

NewAnalyzeRecipeRequestWithDefaults instantiates a new AnalyzeRecipeRequest object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetLanguage

`func (o *AnalyzeRecipeRequest) GetLanguage() string`

GetLanguage returns the Language field if non-nil, zero value otherwise.

### GetLanguageOk

`func (o *AnalyzeRecipeRequest) GetLanguageOk() (*string, bool)`

GetLanguageOk returns a tuple with the Language field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLanguage

`func (o *AnalyzeRecipeRequest) SetLanguage(v string)`

SetLanguage sets Language field to given value.

### HasLanguage

`func (o *AnalyzeRecipeRequest) HasLanguage() bool`

HasLanguage returns a boolean if a field has been set.

### GetIncludeNutrition

`func (o *AnalyzeRecipeRequest) GetIncludeNutrition() bool`

GetIncludeNutrition returns the IncludeNutrition field if non-nil, zero value otherwise.

### GetIncludeNutritionOk

`func (o *AnalyzeRecipeRequest) GetIncludeNutritionOk() (*bool, bool)`

GetIncludeNutritionOk returns a tuple with the IncludeNutrition field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIncludeNutrition

`func (o *AnalyzeRecipeRequest) SetIncludeNutrition(v bool)`

SetIncludeNutrition sets IncludeNutrition field to given value.

### HasIncludeNutrition

`func (o *AnalyzeRecipeRequest) HasIncludeNutrition() bool`

HasIncludeNutrition returns a boolean if a field has been set.

### GetIncludeTaste

`func (o *AnalyzeRecipeRequest) GetIncludeTaste() bool`

GetIncludeTaste returns the IncludeTaste field if non-nil, zero value otherwise.

### GetIncludeTasteOk

`func (o *AnalyzeRecipeRequest) GetIncludeTasteOk() (*bool, bool)`

GetIncludeTasteOk returns a tuple with the IncludeTaste field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIncludeTaste

`func (o *AnalyzeRecipeRequest) SetIncludeTaste(v bool)`

SetIncludeTaste sets IncludeTaste field to given value.

### HasIncludeTaste

`func (o *AnalyzeRecipeRequest) HasIncludeTaste() bool`

HasIncludeTaste returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


