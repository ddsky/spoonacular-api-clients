# RecipeInformation

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **int32** |  | 
**Title** | **string** |  | 
**Image** | **NullableString** |  | 
**ImageType** | Pointer to **string** |  | [optional] 
**Servings** | **float32** |  | 
**ReadyInMinutes** | **int32** |  | 
**PreparationMinutes** | Pointer to **NullableInt32** |  | [optional] 
**CookingMinutes** | Pointer to **NullableInt32** |  | [optional] 
**License** | Pointer to **string** |  | [optional] 
**SourceName** | **string** |  | 
**SourceUrl** | **string** |  | 
**SpoonacularSourceUrl** | **string** |  | 
**AggregateLikes** | **int32** |  | 
**HealthScore** | **float32** |  | 
**SpoonacularScore** | **float32** |  | 
**PricePerServing** | **float32** |  | 
**AnalyzedInstructions** | **[]map[string]interface{}** |  | 
**Cheap** | **bool** |  | 
**CreditsText** | **string** |  | 
**Cuisines** | **[]string** |  | 
**DairyFree** | **bool** |  | 
**Diets** | **[]string** |  | 
**Gaps** | **string** |  | 
**GlutenFree** | **bool** |  | 
**Instructions** | **NullableString** |  | 
**LowFodmap** | **bool** |  | 
**Occasions** | **[]string** |  | 
**Sustainable** | **bool** |  | 
**Vegan** | **bool** |  | 
**Vegetarian** | **bool** |  | 
**VeryHealthy** | **bool** |  | 
**VeryPopular** | **bool** |  | 
**WeightWatcherSmartPoints** | **float32** |  | 
**DishTypes** | **[]string** |  | 
**ExtendedIngredients** | [**[]RecipeInformationExtendedIngredientsInner**](RecipeInformationExtendedIngredientsInner.md) |  | 
**Summary** | **string** |  | 
**WinePairing** | Pointer to [**RecipeInformationWinePairing**](RecipeInformationWinePairing.md) |  | [optional] 
**Taste** | Pointer to [**TasteInformation**](TasteInformation.md) |  | [optional] 

## Methods

### NewRecipeInformation

`func NewRecipeInformation(id int32, title string, image NullableString, servings float32, readyInMinutes int32, sourceName string, sourceUrl string, spoonacularSourceUrl string, aggregateLikes int32, healthScore float32, spoonacularScore float32, pricePerServing float32, analyzedInstructions []map[string]interface{}, cheap bool, creditsText string, cuisines []string, dairyFree bool, diets []string, gaps string, glutenFree bool, instructions NullableString, lowFodmap bool, occasions []string, sustainable bool, vegan bool, vegetarian bool, veryHealthy bool, veryPopular bool, weightWatcherSmartPoints float32, dishTypes []string, extendedIngredients []RecipeInformationExtendedIngredientsInner, summary string, ) *RecipeInformation`

NewRecipeInformation instantiates a new RecipeInformation object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewRecipeInformationWithDefaults

`func NewRecipeInformationWithDefaults() *RecipeInformation`

NewRecipeInformationWithDefaults instantiates a new RecipeInformation object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetId

`func (o *RecipeInformation) GetId() int32`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *RecipeInformation) GetIdOk() (*int32, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *RecipeInformation) SetId(v int32)`

SetId sets Id field to given value.


### GetTitle

`func (o *RecipeInformation) GetTitle() string`

GetTitle returns the Title field if non-nil, zero value otherwise.

### GetTitleOk

`func (o *RecipeInformation) GetTitleOk() (*string, bool)`

GetTitleOk returns a tuple with the Title field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTitle

`func (o *RecipeInformation) SetTitle(v string)`

SetTitle sets Title field to given value.


### GetImage

`func (o *RecipeInformation) GetImage() string`

GetImage returns the Image field if non-nil, zero value otherwise.

### GetImageOk

`func (o *RecipeInformation) GetImageOk() (*string, bool)`

GetImageOk returns a tuple with the Image field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetImage

`func (o *RecipeInformation) SetImage(v string)`

SetImage sets Image field to given value.


### SetImageNil

`func (o *RecipeInformation) SetImageNil(b bool)`

 SetImageNil sets the value for Image to be an explicit nil

### UnsetImage
`func (o *RecipeInformation) UnsetImage()`

UnsetImage ensures that no value is present for Image, not even an explicit nil
### GetImageType

`func (o *RecipeInformation) GetImageType() string`

GetImageType returns the ImageType field if non-nil, zero value otherwise.

### GetImageTypeOk

`func (o *RecipeInformation) GetImageTypeOk() (*string, bool)`

GetImageTypeOk returns a tuple with the ImageType field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetImageType

`func (o *RecipeInformation) SetImageType(v string)`

SetImageType sets ImageType field to given value.

### HasImageType

`func (o *RecipeInformation) HasImageType() bool`

HasImageType returns a boolean if a field has been set.

### GetServings

`func (o *RecipeInformation) GetServings() float32`

GetServings returns the Servings field if non-nil, zero value otherwise.

### GetServingsOk

`func (o *RecipeInformation) GetServingsOk() (*float32, bool)`

GetServingsOk returns a tuple with the Servings field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetServings

`func (o *RecipeInformation) SetServings(v float32)`

SetServings sets Servings field to given value.


### GetReadyInMinutes

`func (o *RecipeInformation) GetReadyInMinutes() int32`

GetReadyInMinutes returns the ReadyInMinutes field if non-nil, zero value otherwise.

### GetReadyInMinutesOk

`func (o *RecipeInformation) GetReadyInMinutesOk() (*int32, bool)`

GetReadyInMinutesOk returns a tuple with the ReadyInMinutes field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetReadyInMinutes

`func (o *RecipeInformation) SetReadyInMinutes(v int32)`

SetReadyInMinutes sets ReadyInMinutes field to given value.


### GetPreparationMinutes

`func (o *RecipeInformation) GetPreparationMinutes() int32`

GetPreparationMinutes returns the PreparationMinutes field if non-nil, zero value otherwise.

### GetPreparationMinutesOk

`func (o *RecipeInformation) GetPreparationMinutesOk() (*int32, bool)`

GetPreparationMinutesOk returns a tuple with the PreparationMinutes field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPreparationMinutes

`func (o *RecipeInformation) SetPreparationMinutes(v int32)`

SetPreparationMinutes sets PreparationMinutes field to given value.

### HasPreparationMinutes

`func (o *RecipeInformation) HasPreparationMinutes() bool`

HasPreparationMinutes returns a boolean if a field has been set.

### SetPreparationMinutesNil

`func (o *RecipeInformation) SetPreparationMinutesNil(b bool)`

 SetPreparationMinutesNil sets the value for PreparationMinutes to be an explicit nil

### UnsetPreparationMinutes
`func (o *RecipeInformation) UnsetPreparationMinutes()`

UnsetPreparationMinutes ensures that no value is present for PreparationMinutes, not even an explicit nil
### GetCookingMinutes

`func (o *RecipeInformation) GetCookingMinutes() int32`

GetCookingMinutes returns the CookingMinutes field if non-nil, zero value otherwise.

### GetCookingMinutesOk

`func (o *RecipeInformation) GetCookingMinutesOk() (*int32, bool)`

GetCookingMinutesOk returns a tuple with the CookingMinutes field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCookingMinutes

`func (o *RecipeInformation) SetCookingMinutes(v int32)`

SetCookingMinutes sets CookingMinutes field to given value.

### HasCookingMinutes

`func (o *RecipeInformation) HasCookingMinutes() bool`

HasCookingMinutes returns a boolean if a field has been set.

### SetCookingMinutesNil

`func (o *RecipeInformation) SetCookingMinutesNil(b bool)`

 SetCookingMinutesNil sets the value for CookingMinutes to be an explicit nil

### UnsetCookingMinutes
`func (o *RecipeInformation) UnsetCookingMinutes()`

UnsetCookingMinutes ensures that no value is present for CookingMinutes, not even an explicit nil
### GetLicense

`func (o *RecipeInformation) GetLicense() string`

GetLicense returns the License field if non-nil, zero value otherwise.

### GetLicenseOk

`func (o *RecipeInformation) GetLicenseOk() (*string, bool)`

GetLicenseOk returns a tuple with the License field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLicense

`func (o *RecipeInformation) SetLicense(v string)`

SetLicense sets License field to given value.

### HasLicense

`func (o *RecipeInformation) HasLicense() bool`

HasLicense returns a boolean if a field has been set.

### GetSourceName

`func (o *RecipeInformation) GetSourceName() string`

GetSourceName returns the SourceName field if non-nil, zero value otherwise.

### GetSourceNameOk

`func (o *RecipeInformation) GetSourceNameOk() (*string, bool)`

GetSourceNameOk returns a tuple with the SourceName field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSourceName

`func (o *RecipeInformation) SetSourceName(v string)`

SetSourceName sets SourceName field to given value.


### GetSourceUrl

`func (o *RecipeInformation) GetSourceUrl() string`

GetSourceUrl returns the SourceUrl field if non-nil, zero value otherwise.

### GetSourceUrlOk

`func (o *RecipeInformation) GetSourceUrlOk() (*string, bool)`

GetSourceUrlOk returns a tuple with the SourceUrl field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSourceUrl

`func (o *RecipeInformation) SetSourceUrl(v string)`

SetSourceUrl sets SourceUrl field to given value.


### GetSpoonacularSourceUrl

`func (o *RecipeInformation) GetSpoonacularSourceUrl() string`

GetSpoonacularSourceUrl returns the SpoonacularSourceUrl field if non-nil, zero value otherwise.

### GetSpoonacularSourceUrlOk

`func (o *RecipeInformation) GetSpoonacularSourceUrlOk() (*string, bool)`

GetSpoonacularSourceUrlOk returns a tuple with the SpoonacularSourceUrl field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSpoonacularSourceUrl

`func (o *RecipeInformation) SetSpoonacularSourceUrl(v string)`

SetSpoonacularSourceUrl sets SpoonacularSourceUrl field to given value.


### GetAggregateLikes

`func (o *RecipeInformation) GetAggregateLikes() int32`

GetAggregateLikes returns the AggregateLikes field if non-nil, zero value otherwise.

### GetAggregateLikesOk

`func (o *RecipeInformation) GetAggregateLikesOk() (*int32, bool)`

GetAggregateLikesOk returns a tuple with the AggregateLikes field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAggregateLikes

`func (o *RecipeInformation) SetAggregateLikes(v int32)`

SetAggregateLikes sets AggregateLikes field to given value.


### GetHealthScore

`func (o *RecipeInformation) GetHealthScore() float32`

GetHealthScore returns the HealthScore field if non-nil, zero value otherwise.

### GetHealthScoreOk

`func (o *RecipeInformation) GetHealthScoreOk() (*float32, bool)`

GetHealthScoreOk returns a tuple with the HealthScore field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetHealthScore

`func (o *RecipeInformation) SetHealthScore(v float32)`

SetHealthScore sets HealthScore field to given value.


### GetSpoonacularScore

`func (o *RecipeInformation) GetSpoonacularScore() float32`

GetSpoonacularScore returns the SpoonacularScore field if non-nil, zero value otherwise.

### GetSpoonacularScoreOk

`func (o *RecipeInformation) GetSpoonacularScoreOk() (*float32, bool)`

GetSpoonacularScoreOk returns a tuple with the SpoonacularScore field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSpoonacularScore

`func (o *RecipeInformation) SetSpoonacularScore(v float32)`

SetSpoonacularScore sets SpoonacularScore field to given value.


### GetPricePerServing

`func (o *RecipeInformation) GetPricePerServing() float32`

GetPricePerServing returns the PricePerServing field if non-nil, zero value otherwise.

### GetPricePerServingOk

`func (o *RecipeInformation) GetPricePerServingOk() (*float32, bool)`

GetPricePerServingOk returns a tuple with the PricePerServing field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPricePerServing

`func (o *RecipeInformation) SetPricePerServing(v float32)`

SetPricePerServing sets PricePerServing field to given value.


### GetAnalyzedInstructions

`func (o *RecipeInformation) GetAnalyzedInstructions() []map[string]interface{}`

GetAnalyzedInstructions returns the AnalyzedInstructions field if non-nil, zero value otherwise.

### GetAnalyzedInstructionsOk

`func (o *RecipeInformation) GetAnalyzedInstructionsOk() (*[]map[string]interface{}, bool)`

GetAnalyzedInstructionsOk returns a tuple with the AnalyzedInstructions field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAnalyzedInstructions

`func (o *RecipeInformation) SetAnalyzedInstructions(v []map[string]interface{})`

SetAnalyzedInstructions sets AnalyzedInstructions field to given value.


### GetCheap

`func (o *RecipeInformation) GetCheap() bool`

GetCheap returns the Cheap field if non-nil, zero value otherwise.

### GetCheapOk

`func (o *RecipeInformation) GetCheapOk() (*bool, bool)`

GetCheapOk returns a tuple with the Cheap field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCheap

`func (o *RecipeInformation) SetCheap(v bool)`

SetCheap sets Cheap field to given value.


### GetCreditsText

`func (o *RecipeInformation) GetCreditsText() string`

GetCreditsText returns the CreditsText field if non-nil, zero value otherwise.

### GetCreditsTextOk

`func (o *RecipeInformation) GetCreditsTextOk() (*string, bool)`

GetCreditsTextOk returns a tuple with the CreditsText field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCreditsText

`func (o *RecipeInformation) SetCreditsText(v string)`

SetCreditsText sets CreditsText field to given value.


### GetCuisines

`func (o *RecipeInformation) GetCuisines() []string`

GetCuisines returns the Cuisines field if non-nil, zero value otherwise.

### GetCuisinesOk

`func (o *RecipeInformation) GetCuisinesOk() (*[]string, bool)`

GetCuisinesOk returns a tuple with the Cuisines field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCuisines

`func (o *RecipeInformation) SetCuisines(v []string)`

SetCuisines sets Cuisines field to given value.


### GetDairyFree

`func (o *RecipeInformation) GetDairyFree() bool`

GetDairyFree returns the DairyFree field if non-nil, zero value otherwise.

### GetDairyFreeOk

`func (o *RecipeInformation) GetDairyFreeOk() (*bool, bool)`

GetDairyFreeOk returns a tuple with the DairyFree field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDairyFree

`func (o *RecipeInformation) SetDairyFree(v bool)`

SetDairyFree sets DairyFree field to given value.


### GetDiets

`func (o *RecipeInformation) GetDiets() []string`

GetDiets returns the Diets field if non-nil, zero value otherwise.

### GetDietsOk

`func (o *RecipeInformation) GetDietsOk() (*[]string, bool)`

GetDietsOk returns a tuple with the Diets field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDiets

`func (o *RecipeInformation) SetDiets(v []string)`

SetDiets sets Diets field to given value.


### GetGaps

`func (o *RecipeInformation) GetGaps() string`

GetGaps returns the Gaps field if non-nil, zero value otherwise.

### GetGapsOk

`func (o *RecipeInformation) GetGapsOk() (*string, bool)`

GetGapsOk returns a tuple with the Gaps field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetGaps

`func (o *RecipeInformation) SetGaps(v string)`

SetGaps sets Gaps field to given value.


### GetGlutenFree

`func (o *RecipeInformation) GetGlutenFree() bool`

GetGlutenFree returns the GlutenFree field if non-nil, zero value otherwise.

### GetGlutenFreeOk

`func (o *RecipeInformation) GetGlutenFreeOk() (*bool, bool)`

GetGlutenFreeOk returns a tuple with the GlutenFree field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetGlutenFree

`func (o *RecipeInformation) SetGlutenFree(v bool)`

SetGlutenFree sets GlutenFree field to given value.


### GetInstructions

`func (o *RecipeInformation) GetInstructions() string`

GetInstructions returns the Instructions field if non-nil, zero value otherwise.

### GetInstructionsOk

`func (o *RecipeInformation) GetInstructionsOk() (*string, bool)`

GetInstructionsOk returns a tuple with the Instructions field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetInstructions

`func (o *RecipeInformation) SetInstructions(v string)`

SetInstructions sets Instructions field to given value.


### SetInstructionsNil

`func (o *RecipeInformation) SetInstructionsNil(b bool)`

 SetInstructionsNil sets the value for Instructions to be an explicit nil

### UnsetInstructions
`func (o *RecipeInformation) UnsetInstructions()`

UnsetInstructions ensures that no value is present for Instructions, not even an explicit nil
### GetLowFodmap

`func (o *RecipeInformation) GetLowFodmap() bool`

GetLowFodmap returns the LowFodmap field if non-nil, zero value otherwise.

### GetLowFodmapOk

`func (o *RecipeInformation) GetLowFodmapOk() (*bool, bool)`

GetLowFodmapOk returns a tuple with the LowFodmap field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLowFodmap

`func (o *RecipeInformation) SetLowFodmap(v bool)`

SetLowFodmap sets LowFodmap field to given value.


### GetOccasions

`func (o *RecipeInformation) GetOccasions() []string`

GetOccasions returns the Occasions field if non-nil, zero value otherwise.

### GetOccasionsOk

`func (o *RecipeInformation) GetOccasionsOk() (*[]string, bool)`

GetOccasionsOk returns a tuple with the Occasions field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOccasions

`func (o *RecipeInformation) SetOccasions(v []string)`

SetOccasions sets Occasions field to given value.


### GetSustainable

`func (o *RecipeInformation) GetSustainable() bool`

GetSustainable returns the Sustainable field if non-nil, zero value otherwise.

### GetSustainableOk

`func (o *RecipeInformation) GetSustainableOk() (*bool, bool)`

GetSustainableOk returns a tuple with the Sustainable field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSustainable

`func (o *RecipeInformation) SetSustainable(v bool)`

SetSustainable sets Sustainable field to given value.


### GetVegan

`func (o *RecipeInformation) GetVegan() bool`

GetVegan returns the Vegan field if non-nil, zero value otherwise.

### GetVeganOk

`func (o *RecipeInformation) GetVeganOk() (*bool, bool)`

GetVeganOk returns a tuple with the Vegan field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVegan

`func (o *RecipeInformation) SetVegan(v bool)`

SetVegan sets Vegan field to given value.


### GetVegetarian

`func (o *RecipeInformation) GetVegetarian() bool`

GetVegetarian returns the Vegetarian field if non-nil, zero value otherwise.

### GetVegetarianOk

`func (o *RecipeInformation) GetVegetarianOk() (*bool, bool)`

GetVegetarianOk returns a tuple with the Vegetarian field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVegetarian

`func (o *RecipeInformation) SetVegetarian(v bool)`

SetVegetarian sets Vegetarian field to given value.


### GetVeryHealthy

`func (o *RecipeInformation) GetVeryHealthy() bool`

GetVeryHealthy returns the VeryHealthy field if non-nil, zero value otherwise.

### GetVeryHealthyOk

`func (o *RecipeInformation) GetVeryHealthyOk() (*bool, bool)`

GetVeryHealthyOk returns a tuple with the VeryHealthy field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVeryHealthy

`func (o *RecipeInformation) SetVeryHealthy(v bool)`

SetVeryHealthy sets VeryHealthy field to given value.


### GetVeryPopular

`func (o *RecipeInformation) GetVeryPopular() bool`

GetVeryPopular returns the VeryPopular field if non-nil, zero value otherwise.

### GetVeryPopularOk

`func (o *RecipeInformation) GetVeryPopularOk() (*bool, bool)`

GetVeryPopularOk returns a tuple with the VeryPopular field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVeryPopular

`func (o *RecipeInformation) SetVeryPopular(v bool)`

SetVeryPopular sets VeryPopular field to given value.


### GetWeightWatcherSmartPoints

`func (o *RecipeInformation) GetWeightWatcherSmartPoints() float32`

GetWeightWatcherSmartPoints returns the WeightWatcherSmartPoints field if non-nil, zero value otherwise.

### GetWeightWatcherSmartPointsOk

`func (o *RecipeInformation) GetWeightWatcherSmartPointsOk() (*float32, bool)`

GetWeightWatcherSmartPointsOk returns a tuple with the WeightWatcherSmartPoints field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetWeightWatcherSmartPoints

`func (o *RecipeInformation) SetWeightWatcherSmartPoints(v float32)`

SetWeightWatcherSmartPoints sets WeightWatcherSmartPoints field to given value.


### GetDishTypes

`func (o *RecipeInformation) GetDishTypes() []string`

GetDishTypes returns the DishTypes field if non-nil, zero value otherwise.

### GetDishTypesOk

`func (o *RecipeInformation) GetDishTypesOk() (*[]string, bool)`

GetDishTypesOk returns a tuple with the DishTypes field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDishTypes

`func (o *RecipeInformation) SetDishTypes(v []string)`

SetDishTypes sets DishTypes field to given value.


### GetExtendedIngredients

`func (o *RecipeInformation) GetExtendedIngredients() []RecipeInformationExtendedIngredientsInner`

GetExtendedIngredients returns the ExtendedIngredients field if non-nil, zero value otherwise.

### GetExtendedIngredientsOk

`func (o *RecipeInformation) GetExtendedIngredientsOk() (*[]RecipeInformationExtendedIngredientsInner, bool)`

GetExtendedIngredientsOk returns a tuple with the ExtendedIngredients field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetExtendedIngredients

`func (o *RecipeInformation) SetExtendedIngredients(v []RecipeInformationExtendedIngredientsInner)`

SetExtendedIngredients sets ExtendedIngredients field to given value.


### GetSummary

`func (o *RecipeInformation) GetSummary() string`

GetSummary returns the Summary field if non-nil, zero value otherwise.

### GetSummaryOk

`func (o *RecipeInformation) GetSummaryOk() (*string, bool)`

GetSummaryOk returns a tuple with the Summary field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSummary

`func (o *RecipeInformation) SetSummary(v string)`

SetSummary sets Summary field to given value.


### GetWinePairing

`func (o *RecipeInformation) GetWinePairing() RecipeInformationWinePairing`

GetWinePairing returns the WinePairing field if non-nil, zero value otherwise.

### GetWinePairingOk

`func (o *RecipeInformation) GetWinePairingOk() (*RecipeInformationWinePairing, bool)`

GetWinePairingOk returns a tuple with the WinePairing field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetWinePairing

`func (o *RecipeInformation) SetWinePairing(v RecipeInformationWinePairing)`

SetWinePairing sets WinePairing field to given value.

### HasWinePairing

`func (o *RecipeInformation) HasWinePairing() bool`

HasWinePairing returns a boolean if a field has been set.

### GetTaste

`func (o *RecipeInformation) GetTaste() TasteInformation`

GetTaste returns the Taste field if non-nil, zero value otherwise.

### GetTasteOk

`func (o *RecipeInformation) GetTasteOk() (*TasteInformation, bool)`

GetTasteOk returns a tuple with the Taste field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTaste

`func (o *RecipeInformation) SetTaste(v TasteInformation)`

SetTaste sets Taste field to given value.

### HasTaste

`func (o *RecipeInformation) HasTaste() bool`

HasTaste returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


