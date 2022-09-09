# ImageAnalysisByURL200Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Nutrition** | [**ImageAnalysisByURL200ResponseNutrition**](ImageAnalysisByURL200ResponseNutrition.md) |  | 
**Category** | [**ImageAnalysisByURL200ResponseCategory**](ImageAnalysisByURL200ResponseCategory.md) |  | 
**Recipes** | [**[]ImageAnalysisByURL200ResponseRecipesInner**](ImageAnalysisByURL200ResponseRecipesInner.md) |  | 

## Methods

### NewImageAnalysisByURL200Response

`func NewImageAnalysisByURL200Response(nutrition ImageAnalysisByURL200ResponseNutrition, category ImageAnalysisByURL200ResponseCategory, recipes []ImageAnalysisByURL200ResponseRecipesInner, ) *ImageAnalysisByURL200Response`

NewImageAnalysisByURL200Response instantiates a new ImageAnalysisByURL200Response object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewImageAnalysisByURL200ResponseWithDefaults

`func NewImageAnalysisByURL200ResponseWithDefaults() *ImageAnalysisByURL200Response`

NewImageAnalysisByURL200ResponseWithDefaults instantiates a new ImageAnalysisByURL200Response object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetNutrition

`func (o *ImageAnalysisByURL200Response) GetNutrition() ImageAnalysisByURL200ResponseNutrition`

GetNutrition returns the Nutrition field if non-nil, zero value otherwise.

### GetNutritionOk

`func (o *ImageAnalysisByURL200Response) GetNutritionOk() (*ImageAnalysisByURL200ResponseNutrition, bool)`

GetNutritionOk returns a tuple with the Nutrition field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetNutrition

`func (o *ImageAnalysisByURL200Response) SetNutrition(v ImageAnalysisByURL200ResponseNutrition)`

SetNutrition sets Nutrition field to given value.


### GetCategory

`func (o *ImageAnalysisByURL200Response) GetCategory() ImageAnalysisByURL200ResponseCategory`

GetCategory returns the Category field if non-nil, zero value otherwise.

### GetCategoryOk

`func (o *ImageAnalysisByURL200Response) GetCategoryOk() (*ImageAnalysisByURL200ResponseCategory, bool)`

GetCategoryOk returns a tuple with the Category field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCategory

`func (o *ImageAnalysisByURL200Response) SetCategory(v ImageAnalysisByURL200ResponseCategory)`

SetCategory sets Category field to given value.


### GetRecipes

`func (o *ImageAnalysisByURL200Response) GetRecipes() []ImageAnalysisByURL200ResponseRecipesInner`

GetRecipes returns the Recipes field if non-nil, zero value otherwise.

### GetRecipesOk

`func (o *ImageAnalysisByURL200Response) GetRecipesOk() (*[]ImageAnalysisByURL200ResponseRecipesInner, bool)`

GetRecipesOk returns a tuple with the Recipes field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRecipes

`func (o *ImageAnalysisByURL200Response) SetRecipes(v []ImageAnalysisByURL200ResponseRecipesInner)`

SetRecipes sets Recipes field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


