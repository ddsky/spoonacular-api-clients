# GetRecipeInformation200Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **int32** |  | 
**Title** | **string** |  | 
**Image** | **string** |  | 
**ImageType** | **string** |  | 
**Servings** | **float32** |  | 
**ReadyInMinutes** | **int32** |  | 
**License** | **string** |  | 
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
**Instructions** | **string** |  | 
**Ketogenic** | **bool** |  | 
**LowFodmap** | **bool** |  | 
**Occasions** | **[]string** |  | 
**Sustainable** | **bool** |  | 
**Vegan** | **bool** |  | 
**Vegetarian** | **bool** |  | 
**VeryHealthy** | **bool** |  | 
**VeryPopular** | **bool** |  | 
**Whole30** | **bool** |  | 
**WeightWatcherSmartPoints** | **float32** |  | 
**DishTypes** | **[]string** |  | 
**ExtendedIngredients** | [**[]GetRecipeInformation200ResponseExtendedIngredientsInner**](GetRecipeInformation200ResponseExtendedIngredientsInner.md) |  | 
**Summary** | **string** |  | 
**WinePairing** | [**GetRecipeInformation200ResponseWinePairing**](GetRecipeInformation200ResponseWinePairing.md) |  | 

## Methods

### NewGetRecipeInformation200Response

`func NewGetRecipeInformation200Response(id int32, title string, image string, imageType string, servings float32, readyInMinutes int32, license string, sourceName string, sourceUrl string, spoonacularSourceUrl string, aggregateLikes int32, healthScore float32, spoonacularScore float32, pricePerServing float32, analyzedInstructions []map[string]interface{}, cheap bool, creditsText string, cuisines []string, dairyFree bool, diets []string, gaps string, glutenFree bool, instructions string, ketogenic bool, lowFodmap bool, occasions []string, sustainable bool, vegan bool, vegetarian bool, veryHealthy bool, veryPopular bool, whole30 bool, weightWatcherSmartPoints float32, dishTypes []string, extendedIngredients []GetRecipeInformation200ResponseExtendedIngredientsInner, summary string, winePairing GetRecipeInformation200ResponseWinePairing, ) *GetRecipeInformation200Response`

NewGetRecipeInformation200Response instantiates a new GetRecipeInformation200Response object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewGetRecipeInformation200ResponseWithDefaults

`func NewGetRecipeInformation200ResponseWithDefaults() *GetRecipeInformation200Response`

NewGetRecipeInformation200ResponseWithDefaults instantiates a new GetRecipeInformation200Response object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetId

`func (o *GetRecipeInformation200Response) GetId() int32`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *GetRecipeInformation200Response) GetIdOk() (*int32, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *GetRecipeInformation200Response) SetId(v int32)`

SetId sets Id field to given value.


### GetTitle

`func (o *GetRecipeInformation200Response) GetTitle() string`

GetTitle returns the Title field if non-nil, zero value otherwise.

### GetTitleOk

`func (o *GetRecipeInformation200Response) GetTitleOk() (*string, bool)`

GetTitleOk returns a tuple with the Title field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTitle

`func (o *GetRecipeInformation200Response) SetTitle(v string)`

SetTitle sets Title field to given value.


### GetImage

`func (o *GetRecipeInformation200Response) GetImage() string`

GetImage returns the Image field if non-nil, zero value otherwise.

### GetImageOk

`func (o *GetRecipeInformation200Response) GetImageOk() (*string, bool)`

GetImageOk returns a tuple with the Image field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetImage

`func (o *GetRecipeInformation200Response) SetImage(v string)`

SetImage sets Image field to given value.


### GetImageType

`func (o *GetRecipeInformation200Response) GetImageType() string`

GetImageType returns the ImageType field if non-nil, zero value otherwise.

### GetImageTypeOk

`func (o *GetRecipeInformation200Response) GetImageTypeOk() (*string, bool)`

GetImageTypeOk returns a tuple with the ImageType field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetImageType

`func (o *GetRecipeInformation200Response) SetImageType(v string)`

SetImageType sets ImageType field to given value.


### GetServings

`func (o *GetRecipeInformation200Response) GetServings() float32`

GetServings returns the Servings field if non-nil, zero value otherwise.

### GetServingsOk

`func (o *GetRecipeInformation200Response) GetServingsOk() (*float32, bool)`

GetServingsOk returns a tuple with the Servings field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetServings

`func (o *GetRecipeInformation200Response) SetServings(v float32)`

SetServings sets Servings field to given value.


### GetReadyInMinutes

`func (o *GetRecipeInformation200Response) GetReadyInMinutes() int32`

GetReadyInMinutes returns the ReadyInMinutes field if non-nil, zero value otherwise.

### GetReadyInMinutesOk

`func (o *GetRecipeInformation200Response) GetReadyInMinutesOk() (*int32, bool)`

GetReadyInMinutesOk returns a tuple with the ReadyInMinutes field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetReadyInMinutes

`func (o *GetRecipeInformation200Response) SetReadyInMinutes(v int32)`

SetReadyInMinutes sets ReadyInMinutes field to given value.


### GetLicense

`func (o *GetRecipeInformation200Response) GetLicense() string`

GetLicense returns the License field if non-nil, zero value otherwise.

### GetLicenseOk

`func (o *GetRecipeInformation200Response) GetLicenseOk() (*string, bool)`

GetLicenseOk returns a tuple with the License field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLicense

`func (o *GetRecipeInformation200Response) SetLicense(v string)`

SetLicense sets License field to given value.


### GetSourceName

`func (o *GetRecipeInformation200Response) GetSourceName() string`

GetSourceName returns the SourceName field if non-nil, zero value otherwise.

### GetSourceNameOk

`func (o *GetRecipeInformation200Response) GetSourceNameOk() (*string, bool)`

GetSourceNameOk returns a tuple with the SourceName field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSourceName

`func (o *GetRecipeInformation200Response) SetSourceName(v string)`

SetSourceName sets SourceName field to given value.


### GetSourceUrl

`func (o *GetRecipeInformation200Response) GetSourceUrl() string`

GetSourceUrl returns the SourceUrl field if non-nil, zero value otherwise.

### GetSourceUrlOk

`func (o *GetRecipeInformation200Response) GetSourceUrlOk() (*string, bool)`

GetSourceUrlOk returns a tuple with the SourceUrl field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSourceUrl

`func (o *GetRecipeInformation200Response) SetSourceUrl(v string)`

SetSourceUrl sets SourceUrl field to given value.


### GetSpoonacularSourceUrl

`func (o *GetRecipeInformation200Response) GetSpoonacularSourceUrl() string`

GetSpoonacularSourceUrl returns the SpoonacularSourceUrl field if non-nil, zero value otherwise.

### GetSpoonacularSourceUrlOk

`func (o *GetRecipeInformation200Response) GetSpoonacularSourceUrlOk() (*string, bool)`

GetSpoonacularSourceUrlOk returns a tuple with the SpoonacularSourceUrl field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSpoonacularSourceUrl

`func (o *GetRecipeInformation200Response) SetSpoonacularSourceUrl(v string)`

SetSpoonacularSourceUrl sets SpoonacularSourceUrl field to given value.


### GetAggregateLikes

`func (o *GetRecipeInformation200Response) GetAggregateLikes() int32`

GetAggregateLikes returns the AggregateLikes field if non-nil, zero value otherwise.

### GetAggregateLikesOk

`func (o *GetRecipeInformation200Response) GetAggregateLikesOk() (*int32, bool)`

GetAggregateLikesOk returns a tuple with the AggregateLikes field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAggregateLikes

`func (o *GetRecipeInformation200Response) SetAggregateLikes(v int32)`

SetAggregateLikes sets AggregateLikes field to given value.


### GetHealthScore

`func (o *GetRecipeInformation200Response) GetHealthScore() float32`

GetHealthScore returns the HealthScore field if non-nil, zero value otherwise.

### GetHealthScoreOk

`func (o *GetRecipeInformation200Response) GetHealthScoreOk() (*float32, bool)`

GetHealthScoreOk returns a tuple with the HealthScore field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetHealthScore

`func (o *GetRecipeInformation200Response) SetHealthScore(v float32)`

SetHealthScore sets HealthScore field to given value.


### GetSpoonacularScore

`func (o *GetRecipeInformation200Response) GetSpoonacularScore() float32`

GetSpoonacularScore returns the SpoonacularScore field if non-nil, zero value otherwise.

### GetSpoonacularScoreOk

`func (o *GetRecipeInformation200Response) GetSpoonacularScoreOk() (*float32, bool)`

GetSpoonacularScoreOk returns a tuple with the SpoonacularScore field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSpoonacularScore

`func (o *GetRecipeInformation200Response) SetSpoonacularScore(v float32)`

SetSpoonacularScore sets SpoonacularScore field to given value.


### GetPricePerServing

`func (o *GetRecipeInformation200Response) GetPricePerServing() float32`

GetPricePerServing returns the PricePerServing field if non-nil, zero value otherwise.

### GetPricePerServingOk

`func (o *GetRecipeInformation200Response) GetPricePerServingOk() (*float32, bool)`

GetPricePerServingOk returns a tuple with the PricePerServing field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPricePerServing

`func (o *GetRecipeInformation200Response) SetPricePerServing(v float32)`

SetPricePerServing sets PricePerServing field to given value.


### GetAnalyzedInstructions

`func (o *GetRecipeInformation200Response) GetAnalyzedInstructions() []map[string]interface{}`

GetAnalyzedInstructions returns the AnalyzedInstructions field if non-nil, zero value otherwise.

### GetAnalyzedInstructionsOk

`func (o *GetRecipeInformation200Response) GetAnalyzedInstructionsOk() (*[]map[string]interface{}, bool)`

GetAnalyzedInstructionsOk returns a tuple with the AnalyzedInstructions field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAnalyzedInstructions

`func (o *GetRecipeInformation200Response) SetAnalyzedInstructions(v []map[string]interface{})`

SetAnalyzedInstructions sets AnalyzedInstructions field to given value.


### GetCheap

`func (o *GetRecipeInformation200Response) GetCheap() bool`

GetCheap returns the Cheap field if non-nil, zero value otherwise.

### GetCheapOk

`func (o *GetRecipeInformation200Response) GetCheapOk() (*bool, bool)`

GetCheapOk returns a tuple with the Cheap field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCheap

`func (o *GetRecipeInformation200Response) SetCheap(v bool)`

SetCheap sets Cheap field to given value.


### GetCreditsText

`func (o *GetRecipeInformation200Response) GetCreditsText() string`

GetCreditsText returns the CreditsText field if non-nil, zero value otherwise.

### GetCreditsTextOk

`func (o *GetRecipeInformation200Response) GetCreditsTextOk() (*string, bool)`

GetCreditsTextOk returns a tuple with the CreditsText field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCreditsText

`func (o *GetRecipeInformation200Response) SetCreditsText(v string)`

SetCreditsText sets CreditsText field to given value.


### GetCuisines

`func (o *GetRecipeInformation200Response) GetCuisines() []string`

GetCuisines returns the Cuisines field if non-nil, zero value otherwise.

### GetCuisinesOk

`func (o *GetRecipeInformation200Response) GetCuisinesOk() (*[]string, bool)`

GetCuisinesOk returns a tuple with the Cuisines field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCuisines

`func (o *GetRecipeInformation200Response) SetCuisines(v []string)`

SetCuisines sets Cuisines field to given value.


### GetDairyFree

`func (o *GetRecipeInformation200Response) GetDairyFree() bool`

GetDairyFree returns the DairyFree field if non-nil, zero value otherwise.

### GetDairyFreeOk

`func (o *GetRecipeInformation200Response) GetDairyFreeOk() (*bool, bool)`

GetDairyFreeOk returns a tuple with the DairyFree field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDairyFree

`func (o *GetRecipeInformation200Response) SetDairyFree(v bool)`

SetDairyFree sets DairyFree field to given value.


### GetDiets

`func (o *GetRecipeInformation200Response) GetDiets() []string`

GetDiets returns the Diets field if non-nil, zero value otherwise.

### GetDietsOk

`func (o *GetRecipeInformation200Response) GetDietsOk() (*[]string, bool)`

GetDietsOk returns a tuple with the Diets field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDiets

`func (o *GetRecipeInformation200Response) SetDiets(v []string)`

SetDiets sets Diets field to given value.


### GetGaps

`func (o *GetRecipeInformation200Response) GetGaps() string`

GetGaps returns the Gaps field if non-nil, zero value otherwise.

### GetGapsOk

`func (o *GetRecipeInformation200Response) GetGapsOk() (*string, bool)`

GetGapsOk returns a tuple with the Gaps field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetGaps

`func (o *GetRecipeInformation200Response) SetGaps(v string)`

SetGaps sets Gaps field to given value.


### GetGlutenFree

`func (o *GetRecipeInformation200Response) GetGlutenFree() bool`

GetGlutenFree returns the GlutenFree field if non-nil, zero value otherwise.

### GetGlutenFreeOk

`func (o *GetRecipeInformation200Response) GetGlutenFreeOk() (*bool, bool)`

GetGlutenFreeOk returns a tuple with the GlutenFree field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetGlutenFree

`func (o *GetRecipeInformation200Response) SetGlutenFree(v bool)`

SetGlutenFree sets GlutenFree field to given value.


### GetInstructions

`func (o *GetRecipeInformation200Response) GetInstructions() string`

GetInstructions returns the Instructions field if non-nil, zero value otherwise.

### GetInstructionsOk

`func (o *GetRecipeInformation200Response) GetInstructionsOk() (*string, bool)`

GetInstructionsOk returns a tuple with the Instructions field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetInstructions

`func (o *GetRecipeInformation200Response) SetInstructions(v string)`

SetInstructions sets Instructions field to given value.


### GetKetogenic

`func (o *GetRecipeInformation200Response) GetKetogenic() bool`

GetKetogenic returns the Ketogenic field if non-nil, zero value otherwise.

### GetKetogenicOk

`func (o *GetRecipeInformation200Response) GetKetogenicOk() (*bool, bool)`

GetKetogenicOk returns a tuple with the Ketogenic field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetKetogenic

`func (o *GetRecipeInformation200Response) SetKetogenic(v bool)`

SetKetogenic sets Ketogenic field to given value.


### GetLowFodmap

`func (o *GetRecipeInformation200Response) GetLowFodmap() bool`

GetLowFodmap returns the LowFodmap field if non-nil, zero value otherwise.

### GetLowFodmapOk

`func (o *GetRecipeInformation200Response) GetLowFodmapOk() (*bool, bool)`

GetLowFodmapOk returns a tuple with the LowFodmap field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLowFodmap

`func (o *GetRecipeInformation200Response) SetLowFodmap(v bool)`

SetLowFodmap sets LowFodmap field to given value.


### GetOccasions

`func (o *GetRecipeInformation200Response) GetOccasions() []string`

GetOccasions returns the Occasions field if non-nil, zero value otherwise.

### GetOccasionsOk

`func (o *GetRecipeInformation200Response) GetOccasionsOk() (*[]string, bool)`

GetOccasionsOk returns a tuple with the Occasions field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOccasions

`func (o *GetRecipeInformation200Response) SetOccasions(v []string)`

SetOccasions sets Occasions field to given value.


### GetSustainable

`func (o *GetRecipeInformation200Response) GetSustainable() bool`

GetSustainable returns the Sustainable field if non-nil, zero value otherwise.

### GetSustainableOk

`func (o *GetRecipeInformation200Response) GetSustainableOk() (*bool, bool)`

GetSustainableOk returns a tuple with the Sustainable field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSustainable

`func (o *GetRecipeInformation200Response) SetSustainable(v bool)`

SetSustainable sets Sustainable field to given value.


### GetVegan

`func (o *GetRecipeInformation200Response) GetVegan() bool`

GetVegan returns the Vegan field if non-nil, zero value otherwise.

### GetVeganOk

`func (o *GetRecipeInformation200Response) GetVeganOk() (*bool, bool)`

GetVeganOk returns a tuple with the Vegan field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVegan

`func (o *GetRecipeInformation200Response) SetVegan(v bool)`

SetVegan sets Vegan field to given value.


### GetVegetarian

`func (o *GetRecipeInformation200Response) GetVegetarian() bool`

GetVegetarian returns the Vegetarian field if non-nil, zero value otherwise.

### GetVegetarianOk

`func (o *GetRecipeInformation200Response) GetVegetarianOk() (*bool, bool)`

GetVegetarianOk returns a tuple with the Vegetarian field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVegetarian

`func (o *GetRecipeInformation200Response) SetVegetarian(v bool)`

SetVegetarian sets Vegetarian field to given value.


### GetVeryHealthy

`func (o *GetRecipeInformation200Response) GetVeryHealthy() bool`

GetVeryHealthy returns the VeryHealthy field if non-nil, zero value otherwise.

### GetVeryHealthyOk

`func (o *GetRecipeInformation200Response) GetVeryHealthyOk() (*bool, bool)`

GetVeryHealthyOk returns a tuple with the VeryHealthy field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVeryHealthy

`func (o *GetRecipeInformation200Response) SetVeryHealthy(v bool)`

SetVeryHealthy sets VeryHealthy field to given value.


### GetVeryPopular

`func (o *GetRecipeInformation200Response) GetVeryPopular() bool`

GetVeryPopular returns the VeryPopular field if non-nil, zero value otherwise.

### GetVeryPopularOk

`func (o *GetRecipeInformation200Response) GetVeryPopularOk() (*bool, bool)`

GetVeryPopularOk returns a tuple with the VeryPopular field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVeryPopular

`func (o *GetRecipeInformation200Response) SetVeryPopular(v bool)`

SetVeryPopular sets VeryPopular field to given value.


### GetWhole30

`func (o *GetRecipeInformation200Response) GetWhole30() bool`

GetWhole30 returns the Whole30 field if non-nil, zero value otherwise.

### GetWhole30Ok

`func (o *GetRecipeInformation200Response) GetWhole30Ok() (*bool, bool)`

GetWhole30Ok returns a tuple with the Whole30 field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetWhole30

`func (o *GetRecipeInformation200Response) SetWhole30(v bool)`

SetWhole30 sets Whole30 field to given value.


### GetWeightWatcherSmartPoints

`func (o *GetRecipeInformation200Response) GetWeightWatcherSmartPoints() float32`

GetWeightWatcherSmartPoints returns the WeightWatcherSmartPoints field if non-nil, zero value otherwise.

### GetWeightWatcherSmartPointsOk

`func (o *GetRecipeInformation200Response) GetWeightWatcherSmartPointsOk() (*float32, bool)`

GetWeightWatcherSmartPointsOk returns a tuple with the WeightWatcherSmartPoints field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetWeightWatcherSmartPoints

`func (o *GetRecipeInformation200Response) SetWeightWatcherSmartPoints(v float32)`

SetWeightWatcherSmartPoints sets WeightWatcherSmartPoints field to given value.


### GetDishTypes

`func (o *GetRecipeInformation200Response) GetDishTypes() []string`

GetDishTypes returns the DishTypes field if non-nil, zero value otherwise.

### GetDishTypesOk

`func (o *GetRecipeInformation200Response) GetDishTypesOk() (*[]string, bool)`

GetDishTypesOk returns a tuple with the DishTypes field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDishTypes

`func (o *GetRecipeInformation200Response) SetDishTypes(v []string)`

SetDishTypes sets DishTypes field to given value.


### GetExtendedIngredients

`func (o *GetRecipeInformation200Response) GetExtendedIngredients() []GetRecipeInformation200ResponseExtendedIngredientsInner`

GetExtendedIngredients returns the ExtendedIngredients field if non-nil, zero value otherwise.

### GetExtendedIngredientsOk

`func (o *GetRecipeInformation200Response) GetExtendedIngredientsOk() (*[]GetRecipeInformation200ResponseExtendedIngredientsInner, bool)`

GetExtendedIngredientsOk returns a tuple with the ExtendedIngredients field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetExtendedIngredients

`func (o *GetRecipeInformation200Response) SetExtendedIngredients(v []GetRecipeInformation200ResponseExtendedIngredientsInner)`

SetExtendedIngredients sets ExtendedIngredients field to given value.


### GetSummary

`func (o *GetRecipeInformation200Response) GetSummary() string`

GetSummary returns the Summary field if non-nil, zero value otherwise.

### GetSummaryOk

`func (o *GetRecipeInformation200Response) GetSummaryOk() (*string, bool)`

GetSummaryOk returns a tuple with the Summary field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSummary

`func (o *GetRecipeInformation200Response) SetSummary(v string)`

SetSummary sets Summary field to given value.


### GetWinePairing

`func (o *GetRecipeInformation200Response) GetWinePairing() GetRecipeInformation200ResponseWinePairing`

GetWinePairing returns the WinePairing field if non-nil, zero value otherwise.

### GetWinePairingOk

`func (o *GetRecipeInformation200Response) GetWinePairingOk() (*GetRecipeInformation200ResponseWinePairing, bool)`

GetWinePairingOk returns a tuple with the WinePairing field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetWinePairing

`func (o *GetRecipeInformation200Response) SetWinePairing(v GetRecipeInformation200ResponseWinePairing)`

SetWinePairing sets WinePairing field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


