# ProductInformation

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **int32** |  | 
**Title** | **string** |  | 
**Upc** | Pointer to **NullableString** |  | [optional] 
**UsdaCode** | Pointer to **NullableString** |  | [optional] 
**Breadcrumbs** | **[]string** |  | 
**ImageType** | **string** |  | 
**Badges** | **[]string** |  | 
**ImportantBadges** | **[]string** |  | 
**IngredientCount** | **int32** |  | 
**GeneratedText** | Pointer to **NullableString** |  | [optional] 
**IngredientList** | **string** |  | 
**Ingredients** | [**[]IngredientBasics**](IngredientBasics.md) |  | 
**Likes** | **float32** |  | 
**Aisle** | **NullableString** |  | 
**Credits** | Pointer to [**ProductInformationCredits**](ProductInformationCredits.md) |  | [optional] 
**Nutrition** | [**SearchGroceryProductsByUPC200ResponseNutrition**](SearchGroceryProductsByUPC200ResponseNutrition.md) |  | 
**Price** | **float32** |  | 
**Servings** | [**SearchGroceryProductsByUPC200ResponseServings**](SearchGroceryProductsByUPC200ResponseServings.md) |  | 
**SpoonacularScore** | **float32** |  | 

## Methods

### NewProductInformation

`func NewProductInformation(id int32, title string, breadcrumbs []string, imageType string, badges []string, importantBadges []string, ingredientCount int32, ingredientList string, ingredients []IngredientBasics, likes float32, aisle NullableString, nutrition SearchGroceryProductsByUPC200ResponseNutrition, price float32, servings SearchGroceryProductsByUPC200ResponseServings, spoonacularScore float32, ) *ProductInformation`

NewProductInformation instantiates a new ProductInformation object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewProductInformationWithDefaults

`func NewProductInformationWithDefaults() *ProductInformation`

NewProductInformationWithDefaults instantiates a new ProductInformation object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetId

`func (o *ProductInformation) GetId() int32`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *ProductInformation) GetIdOk() (*int32, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *ProductInformation) SetId(v int32)`

SetId sets Id field to given value.


### GetTitle

`func (o *ProductInformation) GetTitle() string`

GetTitle returns the Title field if non-nil, zero value otherwise.

### GetTitleOk

`func (o *ProductInformation) GetTitleOk() (*string, bool)`

GetTitleOk returns a tuple with the Title field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTitle

`func (o *ProductInformation) SetTitle(v string)`

SetTitle sets Title field to given value.


### GetUpc

`func (o *ProductInformation) GetUpc() string`

GetUpc returns the Upc field if non-nil, zero value otherwise.

### GetUpcOk

`func (o *ProductInformation) GetUpcOk() (*string, bool)`

GetUpcOk returns a tuple with the Upc field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUpc

`func (o *ProductInformation) SetUpc(v string)`

SetUpc sets Upc field to given value.

### HasUpc

`func (o *ProductInformation) HasUpc() bool`

HasUpc returns a boolean if a field has been set.

### SetUpcNil

`func (o *ProductInformation) SetUpcNil(b bool)`

 SetUpcNil sets the value for Upc to be an explicit nil

### UnsetUpc
`func (o *ProductInformation) UnsetUpc()`

UnsetUpc ensures that no value is present for Upc, not even an explicit nil
### GetUsdaCode

`func (o *ProductInformation) GetUsdaCode() string`

GetUsdaCode returns the UsdaCode field if non-nil, zero value otherwise.

### GetUsdaCodeOk

`func (o *ProductInformation) GetUsdaCodeOk() (*string, bool)`

GetUsdaCodeOk returns a tuple with the UsdaCode field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUsdaCode

`func (o *ProductInformation) SetUsdaCode(v string)`

SetUsdaCode sets UsdaCode field to given value.

### HasUsdaCode

`func (o *ProductInformation) HasUsdaCode() bool`

HasUsdaCode returns a boolean if a field has been set.

### SetUsdaCodeNil

`func (o *ProductInformation) SetUsdaCodeNil(b bool)`

 SetUsdaCodeNil sets the value for UsdaCode to be an explicit nil

### UnsetUsdaCode
`func (o *ProductInformation) UnsetUsdaCode()`

UnsetUsdaCode ensures that no value is present for UsdaCode, not even an explicit nil
### GetBreadcrumbs

`func (o *ProductInformation) GetBreadcrumbs() []string`

GetBreadcrumbs returns the Breadcrumbs field if non-nil, zero value otherwise.

### GetBreadcrumbsOk

`func (o *ProductInformation) GetBreadcrumbsOk() (*[]string, bool)`

GetBreadcrumbsOk returns a tuple with the Breadcrumbs field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBreadcrumbs

`func (o *ProductInformation) SetBreadcrumbs(v []string)`

SetBreadcrumbs sets Breadcrumbs field to given value.


### GetImageType

`func (o *ProductInformation) GetImageType() string`

GetImageType returns the ImageType field if non-nil, zero value otherwise.

### GetImageTypeOk

`func (o *ProductInformation) GetImageTypeOk() (*string, bool)`

GetImageTypeOk returns a tuple with the ImageType field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetImageType

`func (o *ProductInformation) SetImageType(v string)`

SetImageType sets ImageType field to given value.


### GetBadges

`func (o *ProductInformation) GetBadges() []string`

GetBadges returns the Badges field if non-nil, zero value otherwise.

### GetBadgesOk

`func (o *ProductInformation) GetBadgesOk() (*[]string, bool)`

GetBadgesOk returns a tuple with the Badges field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBadges

`func (o *ProductInformation) SetBadges(v []string)`

SetBadges sets Badges field to given value.


### GetImportantBadges

`func (o *ProductInformation) GetImportantBadges() []string`

GetImportantBadges returns the ImportantBadges field if non-nil, zero value otherwise.

### GetImportantBadgesOk

`func (o *ProductInformation) GetImportantBadgesOk() (*[]string, bool)`

GetImportantBadgesOk returns a tuple with the ImportantBadges field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetImportantBadges

`func (o *ProductInformation) SetImportantBadges(v []string)`

SetImportantBadges sets ImportantBadges field to given value.


### GetIngredientCount

`func (o *ProductInformation) GetIngredientCount() int32`

GetIngredientCount returns the IngredientCount field if non-nil, zero value otherwise.

### GetIngredientCountOk

`func (o *ProductInformation) GetIngredientCountOk() (*int32, bool)`

GetIngredientCountOk returns a tuple with the IngredientCount field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIngredientCount

`func (o *ProductInformation) SetIngredientCount(v int32)`

SetIngredientCount sets IngredientCount field to given value.


### GetGeneratedText

`func (o *ProductInformation) GetGeneratedText() string`

GetGeneratedText returns the GeneratedText field if non-nil, zero value otherwise.

### GetGeneratedTextOk

`func (o *ProductInformation) GetGeneratedTextOk() (*string, bool)`

GetGeneratedTextOk returns a tuple with the GeneratedText field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetGeneratedText

`func (o *ProductInformation) SetGeneratedText(v string)`

SetGeneratedText sets GeneratedText field to given value.

### HasGeneratedText

`func (o *ProductInformation) HasGeneratedText() bool`

HasGeneratedText returns a boolean if a field has been set.

### SetGeneratedTextNil

`func (o *ProductInformation) SetGeneratedTextNil(b bool)`

 SetGeneratedTextNil sets the value for GeneratedText to be an explicit nil

### UnsetGeneratedText
`func (o *ProductInformation) UnsetGeneratedText()`

UnsetGeneratedText ensures that no value is present for GeneratedText, not even an explicit nil
### GetIngredientList

`func (o *ProductInformation) GetIngredientList() string`

GetIngredientList returns the IngredientList field if non-nil, zero value otherwise.

### GetIngredientListOk

`func (o *ProductInformation) GetIngredientListOk() (*string, bool)`

GetIngredientListOk returns a tuple with the IngredientList field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIngredientList

`func (o *ProductInformation) SetIngredientList(v string)`

SetIngredientList sets IngredientList field to given value.


### GetIngredients

`func (o *ProductInformation) GetIngredients() []IngredientBasics`

GetIngredients returns the Ingredients field if non-nil, zero value otherwise.

### GetIngredientsOk

`func (o *ProductInformation) GetIngredientsOk() (*[]IngredientBasics, bool)`

GetIngredientsOk returns a tuple with the Ingredients field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIngredients

`func (o *ProductInformation) SetIngredients(v []IngredientBasics)`

SetIngredients sets Ingredients field to given value.


### GetLikes

`func (o *ProductInformation) GetLikes() float32`

GetLikes returns the Likes field if non-nil, zero value otherwise.

### GetLikesOk

`func (o *ProductInformation) GetLikesOk() (*float32, bool)`

GetLikesOk returns a tuple with the Likes field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLikes

`func (o *ProductInformation) SetLikes(v float32)`

SetLikes sets Likes field to given value.


### GetAisle

`func (o *ProductInformation) GetAisle() string`

GetAisle returns the Aisle field if non-nil, zero value otherwise.

### GetAisleOk

`func (o *ProductInformation) GetAisleOk() (*string, bool)`

GetAisleOk returns a tuple with the Aisle field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAisle

`func (o *ProductInformation) SetAisle(v string)`

SetAisle sets Aisle field to given value.


### SetAisleNil

`func (o *ProductInformation) SetAisleNil(b bool)`

 SetAisleNil sets the value for Aisle to be an explicit nil

### UnsetAisle
`func (o *ProductInformation) UnsetAisle()`

UnsetAisle ensures that no value is present for Aisle, not even an explicit nil
### GetCredits

`func (o *ProductInformation) GetCredits() ProductInformationCredits`

GetCredits returns the Credits field if non-nil, zero value otherwise.

### GetCreditsOk

`func (o *ProductInformation) GetCreditsOk() (*ProductInformationCredits, bool)`

GetCreditsOk returns a tuple with the Credits field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCredits

`func (o *ProductInformation) SetCredits(v ProductInformationCredits)`

SetCredits sets Credits field to given value.

### HasCredits

`func (o *ProductInformation) HasCredits() bool`

HasCredits returns a boolean if a field has been set.

### GetNutrition

`func (o *ProductInformation) GetNutrition() SearchGroceryProductsByUPC200ResponseNutrition`

GetNutrition returns the Nutrition field if non-nil, zero value otherwise.

### GetNutritionOk

`func (o *ProductInformation) GetNutritionOk() (*SearchGroceryProductsByUPC200ResponseNutrition, bool)`

GetNutritionOk returns a tuple with the Nutrition field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetNutrition

`func (o *ProductInformation) SetNutrition(v SearchGroceryProductsByUPC200ResponseNutrition)`

SetNutrition sets Nutrition field to given value.


### GetPrice

`func (o *ProductInformation) GetPrice() float32`

GetPrice returns the Price field if non-nil, zero value otherwise.

### GetPriceOk

`func (o *ProductInformation) GetPriceOk() (*float32, bool)`

GetPriceOk returns a tuple with the Price field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPrice

`func (o *ProductInformation) SetPrice(v float32)`

SetPrice sets Price field to given value.


### GetServings

`func (o *ProductInformation) GetServings() SearchGroceryProductsByUPC200ResponseServings`

GetServings returns the Servings field if non-nil, zero value otherwise.

### GetServingsOk

`func (o *ProductInformation) GetServingsOk() (*SearchGroceryProductsByUPC200ResponseServings, bool)`

GetServingsOk returns a tuple with the Servings field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetServings

`func (o *ProductInformation) SetServings(v SearchGroceryProductsByUPC200ResponseServings)`

SetServings sets Servings field to given value.


### GetSpoonacularScore

`func (o *ProductInformation) GetSpoonacularScore() float32`

GetSpoonacularScore returns the SpoonacularScore field if non-nil, zero value otherwise.

### GetSpoonacularScoreOk

`func (o *ProductInformation) GetSpoonacularScoreOk() (*float32, bool)`

GetSpoonacularScoreOk returns a tuple with the SpoonacularScore field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSpoonacularScore

`func (o *ProductInformation) SetSpoonacularScore(v float32)`

SetSpoonacularScore sets SpoonacularScore field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


