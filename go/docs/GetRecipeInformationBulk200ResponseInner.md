# GetRecipeInformationBulk200ResponseInner

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
**AnalyzedInstructions** | **[]string** |  | 
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

### NewGetRecipeInformationBulk200ResponseInner

`func NewGetRecipeInformationBulk200ResponseInner(id int32, title string, image string, imageType string, servings float32, readyInMinutes int32, license string, sourceName string, sourceUrl string, spoonacularSourceUrl string, aggregateLikes int32, healthScore float32, spoonacularScore float32, pricePerServing float32, analyzedInstructions []string, cheap bool, creditsText string, cuisines []string, dairyFree bool, diets []string, gaps string, glutenFree bool, instructions string, ketogenic bool, lowFodmap bool, occasions []string, sustainable bool, vegan bool, vegetarian bool, veryHealthy bool, veryPopular bool, whole30 bool, weightWatcherSmartPoints float32, dishTypes []string, extendedIngredients []GetRecipeInformation200ResponseExtendedIngredientsInner, summary string, winePairing GetRecipeInformation200ResponseWinePairing, ) *GetRecipeInformationBulk200ResponseInner`

NewGetRecipeInformationBulk200ResponseInner instantiates a new GetRecipeInformationBulk200ResponseInner object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewGetRecipeInformationBulk200ResponseInnerWithDefaults

`func NewGetRecipeInformationBulk200ResponseInnerWithDefaults() *GetRecipeInformationBulk200ResponseInner`

NewGetRecipeInformationBulk200ResponseInnerWithDefaults instantiates a new GetRecipeInformationBulk200ResponseInner object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetId

`func (o *GetRecipeInformationBulk200ResponseInner) GetId() int32`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *GetRecipeInformationBulk200ResponseInner) GetIdOk() (*int32, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *GetRecipeInformationBulk200ResponseInner) SetId(v int32)`

SetId sets Id field to given value.


### GetTitle

`func (o *GetRecipeInformationBulk200ResponseInner) GetTitle() string`

GetTitle returns the Title field if non-nil, zero value otherwise.

### GetTitleOk

`func (o *GetRecipeInformationBulk200ResponseInner) GetTitleOk() (*string, bool)`

GetTitleOk returns a tuple with the Title field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTitle

`func (o *GetRecipeInformationBulk200ResponseInner) SetTitle(v string)`

SetTitle sets Title field to given value.


### GetImage

`func (o *GetRecipeInformationBulk200ResponseInner) GetImage() string`

GetImage returns the Image field if non-nil, zero value otherwise.

### GetImageOk

`func (o *GetRecipeInformationBulk200ResponseInner) GetImageOk() (*string, bool)`

GetImageOk returns a tuple with the Image field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetImage

`func (o *GetRecipeInformationBulk200ResponseInner) SetImage(v string)`

SetImage sets Image field to given value.


### GetImageType

`func (o *GetRecipeInformationBulk200ResponseInner) GetImageType() string`

GetImageType returns the ImageType field if non-nil, zero value otherwise.

### GetImageTypeOk

`func (o *GetRecipeInformationBulk200ResponseInner) GetImageTypeOk() (*string, bool)`

GetImageTypeOk returns a tuple with the ImageType field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetImageType

`func (o *GetRecipeInformationBulk200ResponseInner) SetImageType(v string)`

SetImageType sets ImageType field to given value.


### GetServings

`func (o *GetRecipeInformationBulk200ResponseInner) GetServings() float32`

GetServings returns the Servings field if non-nil, zero value otherwise.

### GetServingsOk

`func (o *GetRecipeInformationBulk200ResponseInner) GetServingsOk() (*float32, bool)`

GetServingsOk returns a tuple with the Servings field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetServings

`func (o *GetRecipeInformationBulk200ResponseInner) SetServings(v float32)`

SetServings sets Servings field to given value.


### GetReadyInMinutes

`func (o *GetRecipeInformationBulk200ResponseInner) GetReadyInMinutes() int32`

GetReadyInMinutes returns the ReadyInMinutes field if non-nil, zero value otherwise.

### GetReadyInMinutesOk

`func (o *GetRecipeInformationBulk200ResponseInner) GetReadyInMinutesOk() (*int32, bool)`

GetReadyInMinutesOk returns a tuple with the ReadyInMinutes field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetReadyInMinutes

`func (o *GetRecipeInformationBulk200ResponseInner) SetReadyInMinutes(v int32)`

SetReadyInMinutes sets ReadyInMinutes field to given value.


### GetLicense

`func (o *GetRecipeInformationBulk200ResponseInner) GetLicense() string`

GetLicense returns the License field if non-nil, zero value otherwise.

### GetLicenseOk

`func (o *GetRecipeInformationBulk200ResponseInner) GetLicenseOk() (*string, bool)`

GetLicenseOk returns a tuple with the License field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLicense

`func (o *GetRecipeInformationBulk200ResponseInner) SetLicense(v string)`

SetLicense sets License field to given value.


### GetSourceName

`func (o *GetRecipeInformationBulk200ResponseInner) GetSourceName() string`

GetSourceName returns the SourceName field if non-nil, zero value otherwise.

### GetSourceNameOk

`func (o *GetRecipeInformationBulk200ResponseInner) GetSourceNameOk() (*string, bool)`

GetSourceNameOk returns a tuple with the SourceName field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSourceName

`func (o *GetRecipeInformationBulk200ResponseInner) SetSourceName(v string)`

SetSourceName sets SourceName field to given value.


### GetSourceUrl

`func (o *GetRecipeInformationBulk200ResponseInner) GetSourceUrl() string`

GetSourceUrl returns the SourceUrl field if non-nil, zero value otherwise.

### GetSourceUrlOk

`func (o *GetRecipeInformationBulk200ResponseInner) GetSourceUrlOk() (*string, bool)`

GetSourceUrlOk returns a tuple with the SourceUrl field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSourceUrl

`func (o *GetRecipeInformationBulk200ResponseInner) SetSourceUrl(v string)`

SetSourceUrl sets SourceUrl field to given value.


### GetSpoonacularSourceUrl

`func (o *GetRecipeInformationBulk200ResponseInner) GetSpoonacularSourceUrl() string`

GetSpoonacularSourceUrl returns the SpoonacularSourceUrl field if non-nil, zero value otherwise.

### GetSpoonacularSourceUrlOk

`func (o *GetRecipeInformationBulk200ResponseInner) GetSpoonacularSourceUrlOk() (*string, bool)`

GetSpoonacularSourceUrlOk returns a tuple with the SpoonacularSourceUrl field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSpoonacularSourceUrl

`func (o *GetRecipeInformationBulk200ResponseInner) SetSpoonacularSourceUrl(v string)`

SetSpoonacularSourceUrl sets SpoonacularSourceUrl field to given value.


### GetAggregateLikes

`func (o *GetRecipeInformationBulk200ResponseInner) GetAggregateLikes() int32`

GetAggregateLikes returns the AggregateLikes field if non-nil, zero value otherwise.

### GetAggregateLikesOk

`func (o *GetRecipeInformationBulk200ResponseInner) GetAggregateLikesOk() (*int32, bool)`

GetAggregateLikesOk returns a tuple with the AggregateLikes field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAggregateLikes

`func (o *GetRecipeInformationBulk200ResponseInner) SetAggregateLikes(v int32)`

SetAggregateLikes sets AggregateLikes field to given value.


### GetHealthScore

`func (o *GetRecipeInformationBulk200ResponseInner) GetHealthScore() float32`

GetHealthScore returns the HealthScore field if non-nil, zero value otherwise.

### GetHealthScoreOk

`func (o *GetRecipeInformationBulk200ResponseInner) GetHealthScoreOk() (*float32, bool)`

GetHealthScoreOk returns a tuple with the HealthScore field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetHealthScore

`func (o *GetRecipeInformationBulk200ResponseInner) SetHealthScore(v float32)`

SetHealthScore sets HealthScore field to given value.


### GetSpoonacularScore

`func (o *GetRecipeInformationBulk200ResponseInner) GetSpoonacularScore() float32`

GetSpoonacularScore returns the SpoonacularScore field if non-nil, zero value otherwise.

### GetSpoonacularScoreOk

`func (o *GetRecipeInformationBulk200ResponseInner) GetSpoonacularScoreOk() (*float32, bool)`

GetSpoonacularScoreOk returns a tuple with the SpoonacularScore field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSpoonacularScore

`func (o *GetRecipeInformationBulk200ResponseInner) SetSpoonacularScore(v float32)`

SetSpoonacularScore sets SpoonacularScore field to given value.


### GetPricePerServing

`func (o *GetRecipeInformationBulk200ResponseInner) GetPricePerServing() float32`

GetPricePerServing returns the PricePerServing field if non-nil, zero value otherwise.

### GetPricePerServingOk

`func (o *GetRecipeInformationBulk200ResponseInner) GetPricePerServingOk() (*float32, bool)`

GetPricePerServingOk returns a tuple with the PricePerServing field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPricePerServing

`func (o *GetRecipeInformationBulk200ResponseInner) SetPricePerServing(v float32)`

SetPricePerServing sets PricePerServing field to given value.


### GetAnalyzedInstructions

`func (o *GetRecipeInformationBulk200ResponseInner) GetAnalyzedInstructions() []string`

GetAnalyzedInstructions returns the AnalyzedInstructions field if non-nil, zero value otherwise.

### GetAnalyzedInstructionsOk

`func (o *GetRecipeInformationBulk200ResponseInner) GetAnalyzedInstructionsOk() (*[]string, bool)`

GetAnalyzedInstructionsOk returns a tuple with the AnalyzedInstructions field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAnalyzedInstructions

`func (o *GetRecipeInformationBulk200ResponseInner) SetAnalyzedInstructions(v []string)`

SetAnalyzedInstructions sets AnalyzedInstructions field to given value.


### GetCheap

`func (o *GetRecipeInformationBulk200ResponseInner) GetCheap() bool`

GetCheap returns the Cheap field if non-nil, zero value otherwise.

### GetCheapOk

`func (o *GetRecipeInformationBulk200ResponseInner) GetCheapOk() (*bool, bool)`

GetCheapOk returns a tuple with the Cheap field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCheap

`func (o *GetRecipeInformationBulk200ResponseInner) SetCheap(v bool)`

SetCheap sets Cheap field to given value.


### GetCreditsText

`func (o *GetRecipeInformationBulk200ResponseInner) GetCreditsText() string`

GetCreditsText returns the CreditsText field if non-nil, zero value otherwise.

### GetCreditsTextOk

`func (o *GetRecipeInformationBulk200ResponseInner) GetCreditsTextOk() (*string, bool)`

GetCreditsTextOk returns a tuple with the CreditsText field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCreditsText

`func (o *GetRecipeInformationBulk200ResponseInner) SetCreditsText(v string)`

SetCreditsText sets CreditsText field to given value.


### GetCuisines

`func (o *GetRecipeInformationBulk200ResponseInner) GetCuisines() []string`

GetCuisines returns the Cuisines field if non-nil, zero value otherwise.

### GetCuisinesOk

`func (o *GetRecipeInformationBulk200ResponseInner) GetCuisinesOk() (*[]string, bool)`

GetCuisinesOk returns a tuple with the Cuisines field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCuisines

`func (o *GetRecipeInformationBulk200ResponseInner) SetCuisines(v []string)`

SetCuisines sets Cuisines field to given value.


### GetDairyFree

`func (o *GetRecipeInformationBulk200ResponseInner) GetDairyFree() bool`

GetDairyFree returns the DairyFree field if non-nil, zero value otherwise.

### GetDairyFreeOk

`func (o *GetRecipeInformationBulk200ResponseInner) GetDairyFreeOk() (*bool, bool)`

GetDairyFreeOk returns a tuple with the DairyFree field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDairyFree

`func (o *GetRecipeInformationBulk200ResponseInner) SetDairyFree(v bool)`

SetDairyFree sets DairyFree field to given value.


### GetDiets

`func (o *GetRecipeInformationBulk200ResponseInner) GetDiets() []string`

GetDiets returns the Diets field if non-nil, zero value otherwise.

### GetDietsOk

`func (o *GetRecipeInformationBulk200ResponseInner) GetDietsOk() (*[]string, bool)`

GetDietsOk returns a tuple with the Diets field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDiets

`func (o *GetRecipeInformationBulk200ResponseInner) SetDiets(v []string)`

SetDiets sets Diets field to given value.


### GetGaps

`func (o *GetRecipeInformationBulk200ResponseInner) GetGaps() string`

GetGaps returns the Gaps field if non-nil, zero value otherwise.

### GetGapsOk

`func (o *GetRecipeInformationBulk200ResponseInner) GetGapsOk() (*string, bool)`

GetGapsOk returns a tuple with the Gaps field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetGaps

`func (o *GetRecipeInformationBulk200ResponseInner) SetGaps(v string)`

SetGaps sets Gaps field to given value.


### GetGlutenFree

`func (o *GetRecipeInformationBulk200ResponseInner) GetGlutenFree() bool`

GetGlutenFree returns the GlutenFree field if non-nil, zero value otherwise.

### GetGlutenFreeOk

`func (o *GetRecipeInformationBulk200ResponseInner) GetGlutenFreeOk() (*bool, bool)`

GetGlutenFreeOk returns a tuple with the GlutenFree field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetGlutenFree

`func (o *GetRecipeInformationBulk200ResponseInner) SetGlutenFree(v bool)`

SetGlutenFree sets GlutenFree field to given value.


### GetInstructions

`func (o *GetRecipeInformationBulk200ResponseInner) GetInstructions() string`

GetInstructions returns the Instructions field if non-nil, zero value otherwise.

### GetInstructionsOk

`func (o *GetRecipeInformationBulk200ResponseInner) GetInstructionsOk() (*string, bool)`

GetInstructionsOk returns a tuple with the Instructions field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetInstructions

`func (o *GetRecipeInformationBulk200ResponseInner) SetInstructions(v string)`

SetInstructions sets Instructions field to given value.


### GetKetogenic

`func (o *GetRecipeInformationBulk200ResponseInner) GetKetogenic() bool`

GetKetogenic returns the Ketogenic field if non-nil, zero value otherwise.

### GetKetogenicOk

`func (o *GetRecipeInformationBulk200ResponseInner) GetKetogenicOk() (*bool, bool)`

GetKetogenicOk returns a tuple with the Ketogenic field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetKetogenic

`func (o *GetRecipeInformationBulk200ResponseInner) SetKetogenic(v bool)`

SetKetogenic sets Ketogenic field to given value.


### GetLowFodmap

`func (o *GetRecipeInformationBulk200ResponseInner) GetLowFodmap() bool`

GetLowFodmap returns the LowFodmap field if non-nil, zero value otherwise.

### GetLowFodmapOk

`func (o *GetRecipeInformationBulk200ResponseInner) GetLowFodmapOk() (*bool, bool)`

GetLowFodmapOk returns a tuple with the LowFodmap field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLowFodmap

`func (o *GetRecipeInformationBulk200ResponseInner) SetLowFodmap(v bool)`

SetLowFodmap sets LowFodmap field to given value.


### GetOccasions

`func (o *GetRecipeInformationBulk200ResponseInner) GetOccasions() []string`

GetOccasions returns the Occasions field if non-nil, zero value otherwise.

### GetOccasionsOk

`func (o *GetRecipeInformationBulk200ResponseInner) GetOccasionsOk() (*[]string, bool)`

GetOccasionsOk returns a tuple with the Occasions field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOccasions

`func (o *GetRecipeInformationBulk200ResponseInner) SetOccasions(v []string)`

SetOccasions sets Occasions field to given value.


### GetSustainable

`func (o *GetRecipeInformationBulk200ResponseInner) GetSustainable() bool`

GetSustainable returns the Sustainable field if non-nil, zero value otherwise.

### GetSustainableOk

`func (o *GetRecipeInformationBulk200ResponseInner) GetSustainableOk() (*bool, bool)`

GetSustainableOk returns a tuple with the Sustainable field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSustainable

`func (o *GetRecipeInformationBulk200ResponseInner) SetSustainable(v bool)`

SetSustainable sets Sustainable field to given value.


### GetVegan

`func (o *GetRecipeInformationBulk200ResponseInner) GetVegan() bool`

GetVegan returns the Vegan field if non-nil, zero value otherwise.

### GetVeganOk

`func (o *GetRecipeInformationBulk200ResponseInner) GetVeganOk() (*bool, bool)`

GetVeganOk returns a tuple with the Vegan field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVegan

`func (o *GetRecipeInformationBulk200ResponseInner) SetVegan(v bool)`

SetVegan sets Vegan field to given value.


### GetVegetarian

`func (o *GetRecipeInformationBulk200ResponseInner) GetVegetarian() bool`

GetVegetarian returns the Vegetarian field if non-nil, zero value otherwise.

### GetVegetarianOk

`func (o *GetRecipeInformationBulk200ResponseInner) GetVegetarianOk() (*bool, bool)`

GetVegetarianOk returns a tuple with the Vegetarian field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVegetarian

`func (o *GetRecipeInformationBulk200ResponseInner) SetVegetarian(v bool)`

SetVegetarian sets Vegetarian field to given value.


### GetVeryHealthy

`func (o *GetRecipeInformationBulk200ResponseInner) GetVeryHealthy() bool`

GetVeryHealthy returns the VeryHealthy field if non-nil, zero value otherwise.

### GetVeryHealthyOk

`func (o *GetRecipeInformationBulk200ResponseInner) GetVeryHealthyOk() (*bool, bool)`

GetVeryHealthyOk returns a tuple with the VeryHealthy field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVeryHealthy

`func (o *GetRecipeInformationBulk200ResponseInner) SetVeryHealthy(v bool)`

SetVeryHealthy sets VeryHealthy field to given value.


### GetVeryPopular

`func (o *GetRecipeInformationBulk200ResponseInner) GetVeryPopular() bool`

GetVeryPopular returns the VeryPopular field if non-nil, zero value otherwise.

### GetVeryPopularOk

`func (o *GetRecipeInformationBulk200ResponseInner) GetVeryPopularOk() (*bool, bool)`

GetVeryPopularOk returns a tuple with the VeryPopular field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVeryPopular

`func (o *GetRecipeInformationBulk200ResponseInner) SetVeryPopular(v bool)`

SetVeryPopular sets VeryPopular field to given value.


### GetWhole30

`func (o *GetRecipeInformationBulk200ResponseInner) GetWhole30() bool`

GetWhole30 returns the Whole30 field if non-nil, zero value otherwise.

### GetWhole30Ok

`func (o *GetRecipeInformationBulk200ResponseInner) GetWhole30Ok() (*bool, bool)`

GetWhole30Ok returns a tuple with the Whole30 field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetWhole30

`func (o *GetRecipeInformationBulk200ResponseInner) SetWhole30(v bool)`

SetWhole30 sets Whole30 field to given value.


### GetWeightWatcherSmartPoints

`func (o *GetRecipeInformationBulk200ResponseInner) GetWeightWatcherSmartPoints() float32`

GetWeightWatcherSmartPoints returns the WeightWatcherSmartPoints field if non-nil, zero value otherwise.

### GetWeightWatcherSmartPointsOk

`func (o *GetRecipeInformationBulk200ResponseInner) GetWeightWatcherSmartPointsOk() (*float32, bool)`

GetWeightWatcherSmartPointsOk returns a tuple with the WeightWatcherSmartPoints field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetWeightWatcherSmartPoints

`func (o *GetRecipeInformationBulk200ResponseInner) SetWeightWatcherSmartPoints(v float32)`

SetWeightWatcherSmartPoints sets WeightWatcherSmartPoints field to given value.


### GetDishTypes

`func (o *GetRecipeInformationBulk200ResponseInner) GetDishTypes() []string`

GetDishTypes returns the DishTypes field if non-nil, zero value otherwise.

### GetDishTypesOk

`func (o *GetRecipeInformationBulk200ResponseInner) GetDishTypesOk() (*[]string, bool)`

GetDishTypesOk returns a tuple with the DishTypes field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDishTypes

`func (o *GetRecipeInformationBulk200ResponseInner) SetDishTypes(v []string)`

SetDishTypes sets DishTypes field to given value.


### GetExtendedIngredients

`func (o *GetRecipeInformationBulk200ResponseInner) GetExtendedIngredients() []GetRecipeInformation200ResponseExtendedIngredientsInner`

GetExtendedIngredients returns the ExtendedIngredients field if non-nil, zero value otherwise.

### GetExtendedIngredientsOk

`func (o *GetRecipeInformationBulk200ResponseInner) GetExtendedIngredientsOk() (*[]GetRecipeInformation200ResponseExtendedIngredientsInner, bool)`

GetExtendedIngredientsOk returns a tuple with the ExtendedIngredients field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetExtendedIngredients

`func (o *GetRecipeInformationBulk200ResponseInner) SetExtendedIngredients(v []GetRecipeInformation200ResponseExtendedIngredientsInner)`

SetExtendedIngredients sets ExtendedIngredients field to given value.


### GetSummary

`func (o *GetRecipeInformationBulk200ResponseInner) GetSummary() string`

GetSummary returns the Summary field if non-nil, zero value otherwise.

### GetSummaryOk

`func (o *GetRecipeInformationBulk200ResponseInner) GetSummaryOk() (*string, bool)`

GetSummaryOk returns a tuple with the Summary field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSummary

`func (o *GetRecipeInformationBulk200ResponseInner) SetSummary(v string)`

SetSummary sets Summary field to given value.


### GetWinePairing

`func (o *GetRecipeInformationBulk200ResponseInner) GetWinePairing() GetRecipeInformation200ResponseWinePairing`

GetWinePairing returns the WinePairing field if non-nil, zero value otherwise.

### GetWinePairingOk

`func (o *GetRecipeInformationBulk200ResponseInner) GetWinePairingOk() (*GetRecipeInformation200ResponseWinePairing, bool)`

GetWinePairingOk returns a tuple with the WinePairing field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetWinePairing

`func (o *GetRecipeInformationBulk200ResponseInner) SetWinePairing(v GetRecipeInformation200ResponseWinePairing)`

SetWinePairing sets WinePairing field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


