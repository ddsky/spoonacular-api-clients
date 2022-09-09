# GetRandomRecipes200ResponseRecipesInner

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
**AggregateLikes** | **float32** |  | 
**HealthScore** | **float32** |  | 
**SpoonacularScore** | **float32** |  | 
**PricePerServing** | **float32** |  | 
**AnalyzedInstructions** | Pointer to **[]map[string]interface{}** |  | [optional] 
**Cheap** | **bool** |  | 
**CreditsText** | **string** |  | 
**Cuisines** | Pointer to **[]string** |  | [optional] 
**DairyFree** | **bool** |  | 
**Diets** | Pointer to **[]string** |  | [optional] 
**Gaps** | **string** |  | 
**GlutenFree** | **bool** |  | 
**Instructions** | **string** |  | 
**Ketogenic** | **bool** |  | 
**LowFodmap** | **bool** |  | 
**Occasions** | Pointer to **[]string** |  | [optional] 
**Sustainable** | **bool** |  | 
**Vegan** | **bool** |  | 
**Vegetarian** | **bool** |  | 
**VeryHealthy** | **bool** |  | 
**VeryPopular** | **bool** |  | 
**Whole30** | **bool** |  | 
**WeightWatcherSmartPoints** | **float32** |  | 
**DishTypes** | Pointer to **[]string** |  | [optional] 
**ExtendedIngredients** | Pointer to [**[]GetRecipeInformation200ResponseExtendedIngredientsInner**](GetRecipeInformation200ResponseExtendedIngredientsInner.md) |  | [optional] 
**Summary** | **string** |  | 
**WinePairing** | Pointer to [**GetRecipeInformation200ResponseWinePairing**](GetRecipeInformation200ResponseWinePairing.md) |  | [optional] 

## Methods

### NewGetRandomRecipes200ResponseRecipesInner

`func NewGetRandomRecipes200ResponseRecipesInner(id int32, title string, image string, imageType string, servings float32, readyInMinutes int32, license string, sourceName string, sourceUrl string, spoonacularSourceUrl string, aggregateLikes float32, healthScore float32, spoonacularScore float32, pricePerServing float32, cheap bool, creditsText string, dairyFree bool, gaps string, glutenFree bool, instructions string, ketogenic bool, lowFodmap bool, sustainable bool, vegan bool, vegetarian bool, veryHealthy bool, veryPopular bool, whole30 bool, weightWatcherSmartPoints float32, summary string, ) *GetRandomRecipes200ResponseRecipesInner`

NewGetRandomRecipes200ResponseRecipesInner instantiates a new GetRandomRecipes200ResponseRecipesInner object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewGetRandomRecipes200ResponseRecipesInnerWithDefaults

`func NewGetRandomRecipes200ResponseRecipesInnerWithDefaults() *GetRandomRecipes200ResponseRecipesInner`

NewGetRandomRecipes200ResponseRecipesInnerWithDefaults instantiates a new GetRandomRecipes200ResponseRecipesInner object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetId

`func (o *GetRandomRecipes200ResponseRecipesInner) GetId() int32`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *GetRandomRecipes200ResponseRecipesInner) GetIdOk() (*int32, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *GetRandomRecipes200ResponseRecipesInner) SetId(v int32)`

SetId sets Id field to given value.


### GetTitle

`func (o *GetRandomRecipes200ResponseRecipesInner) GetTitle() string`

GetTitle returns the Title field if non-nil, zero value otherwise.

### GetTitleOk

`func (o *GetRandomRecipes200ResponseRecipesInner) GetTitleOk() (*string, bool)`

GetTitleOk returns a tuple with the Title field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTitle

`func (o *GetRandomRecipes200ResponseRecipesInner) SetTitle(v string)`

SetTitle sets Title field to given value.


### GetImage

`func (o *GetRandomRecipes200ResponseRecipesInner) GetImage() string`

GetImage returns the Image field if non-nil, zero value otherwise.

### GetImageOk

`func (o *GetRandomRecipes200ResponseRecipesInner) GetImageOk() (*string, bool)`

GetImageOk returns a tuple with the Image field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetImage

`func (o *GetRandomRecipes200ResponseRecipesInner) SetImage(v string)`

SetImage sets Image field to given value.


### GetImageType

`func (o *GetRandomRecipes200ResponseRecipesInner) GetImageType() string`

GetImageType returns the ImageType field if non-nil, zero value otherwise.

### GetImageTypeOk

`func (o *GetRandomRecipes200ResponseRecipesInner) GetImageTypeOk() (*string, bool)`

GetImageTypeOk returns a tuple with the ImageType field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetImageType

`func (o *GetRandomRecipes200ResponseRecipesInner) SetImageType(v string)`

SetImageType sets ImageType field to given value.


### GetServings

`func (o *GetRandomRecipes200ResponseRecipesInner) GetServings() float32`

GetServings returns the Servings field if non-nil, zero value otherwise.

### GetServingsOk

`func (o *GetRandomRecipes200ResponseRecipesInner) GetServingsOk() (*float32, bool)`

GetServingsOk returns a tuple with the Servings field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetServings

`func (o *GetRandomRecipes200ResponseRecipesInner) SetServings(v float32)`

SetServings sets Servings field to given value.


### GetReadyInMinutes

`func (o *GetRandomRecipes200ResponseRecipesInner) GetReadyInMinutes() int32`

GetReadyInMinutes returns the ReadyInMinutes field if non-nil, zero value otherwise.

### GetReadyInMinutesOk

`func (o *GetRandomRecipes200ResponseRecipesInner) GetReadyInMinutesOk() (*int32, bool)`

GetReadyInMinutesOk returns a tuple with the ReadyInMinutes field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetReadyInMinutes

`func (o *GetRandomRecipes200ResponseRecipesInner) SetReadyInMinutes(v int32)`

SetReadyInMinutes sets ReadyInMinutes field to given value.


### GetLicense

`func (o *GetRandomRecipes200ResponseRecipesInner) GetLicense() string`

GetLicense returns the License field if non-nil, zero value otherwise.

### GetLicenseOk

`func (o *GetRandomRecipes200ResponseRecipesInner) GetLicenseOk() (*string, bool)`

GetLicenseOk returns a tuple with the License field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLicense

`func (o *GetRandomRecipes200ResponseRecipesInner) SetLicense(v string)`

SetLicense sets License field to given value.


### GetSourceName

`func (o *GetRandomRecipes200ResponseRecipesInner) GetSourceName() string`

GetSourceName returns the SourceName field if non-nil, zero value otherwise.

### GetSourceNameOk

`func (o *GetRandomRecipes200ResponseRecipesInner) GetSourceNameOk() (*string, bool)`

GetSourceNameOk returns a tuple with the SourceName field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSourceName

`func (o *GetRandomRecipes200ResponseRecipesInner) SetSourceName(v string)`

SetSourceName sets SourceName field to given value.


### GetSourceUrl

`func (o *GetRandomRecipes200ResponseRecipesInner) GetSourceUrl() string`

GetSourceUrl returns the SourceUrl field if non-nil, zero value otherwise.

### GetSourceUrlOk

`func (o *GetRandomRecipes200ResponseRecipesInner) GetSourceUrlOk() (*string, bool)`

GetSourceUrlOk returns a tuple with the SourceUrl field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSourceUrl

`func (o *GetRandomRecipes200ResponseRecipesInner) SetSourceUrl(v string)`

SetSourceUrl sets SourceUrl field to given value.


### GetSpoonacularSourceUrl

`func (o *GetRandomRecipes200ResponseRecipesInner) GetSpoonacularSourceUrl() string`

GetSpoonacularSourceUrl returns the SpoonacularSourceUrl field if non-nil, zero value otherwise.

### GetSpoonacularSourceUrlOk

`func (o *GetRandomRecipes200ResponseRecipesInner) GetSpoonacularSourceUrlOk() (*string, bool)`

GetSpoonacularSourceUrlOk returns a tuple with the SpoonacularSourceUrl field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSpoonacularSourceUrl

`func (o *GetRandomRecipes200ResponseRecipesInner) SetSpoonacularSourceUrl(v string)`

SetSpoonacularSourceUrl sets SpoonacularSourceUrl field to given value.


### GetAggregateLikes

`func (o *GetRandomRecipes200ResponseRecipesInner) GetAggregateLikes() float32`

GetAggregateLikes returns the AggregateLikes field if non-nil, zero value otherwise.

### GetAggregateLikesOk

`func (o *GetRandomRecipes200ResponseRecipesInner) GetAggregateLikesOk() (*float32, bool)`

GetAggregateLikesOk returns a tuple with the AggregateLikes field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAggregateLikes

`func (o *GetRandomRecipes200ResponseRecipesInner) SetAggregateLikes(v float32)`

SetAggregateLikes sets AggregateLikes field to given value.


### GetHealthScore

`func (o *GetRandomRecipes200ResponseRecipesInner) GetHealthScore() float32`

GetHealthScore returns the HealthScore field if non-nil, zero value otherwise.

### GetHealthScoreOk

`func (o *GetRandomRecipes200ResponseRecipesInner) GetHealthScoreOk() (*float32, bool)`

GetHealthScoreOk returns a tuple with the HealthScore field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetHealthScore

`func (o *GetRandomRecipes200ResponseRecipesInner) SetHealthScore(v float32)`

SetHealthScore sets HealthScore field to given value.


### GetSpoonacularScore

`func (o *GetRandomRecipes200ResponseRecipesInner) GetSpoonacularScore() float32`

GetSpoonacularScore returns the SpoonacularScore field if non-nil, zero value otherwise.

### GetSpoonacularScoreOk

`func (o *GetRandomRecipes200ResponseRecipesInner) GetSpoonacularScoreOk() (*float32, bool)`

GetSpoonacularScoreOk returns a tuple with the SpoonacularScore field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSpoonacularScore

`func (o *GetRandomRecipes200ResponseRecipesInner) SetSpoonacularScore(v float32)`

SetSpoonacularScore sets SpoonacularScore field to given value.


### GetPricePerServing

`func (o *GetRandomRecipes200ResponseRecipesInner) GetPricePerServing() float32`

GetPricePerServing returns the PricePerServing field if non-nil, zero value otherwise.

### GetPricePerServingOk

`func (o *GetRandomRecipes200ResponseRecipesInner) GetPricePerServingOk() (*float32, bool)`

GetPricePerServingOk returns a tuple with the PricePerServing field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPricePerServing

`func (o *GetRandomRecipes200ResponseRecipesInner) SetPricePerServing(v float32)`

SetPricePerServing sets PricePerServing field to given value.


### GetAnalyzedInstructions

`func (o *GetRandomRecipes200ResponseRecipesInner) GetAnalyzedInstructions() []map[string]interface{}`

GetAnalyzedInstructions returns the AnalyzedInstructions field if non-nil, zero value otherwise.

### GetAnalyzedInstructionsOk

`func (o *GetRandomRecipes200ResponseRecipesInner) GetAnalyzedInstructionsOk() (*[]map[string]interface{}, bool)`

GetAnalyzedInstructionsOk returns a tuple with the AnalyzedInstructions field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAnalyzedInstructions

`func (o *GetRandomRecipes200ResponseRecipesInner) SetAnalyzedInstructions(v []map[string]interface{})`

SetAnalyzedInstructions sets AnalyzedInstructions field to given value.

### HasAnalyzedInstructions

`func (o *GetRandomRecipes200ResponseRecipesInner) HasAnalyzedInstructions() bool`

HasAnalyzedInstructions returns a boolean if a field has been set.

### GetCheap

`func (o *GetRandomRecipes200ResponseRecipesInner) GetCheap() bool`

GetCheap returns the Cheap field if non-nil, zero value otherwise.

### GetCheapOk

`func (o *GetRandomRecipes200ResponseRecipesInner) GetCheapOk() (*bool, bool)`

GetCheapOk returns a tuple with the Cheap field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCheap

`func (o *GetRandomRecipes200ResponseRecipesInner) SetCheap(v bool)`

SetCheap sets Cheap field to given value.


### GetCreditsText

`func (o *GetRandomRecipes200ResponseRecipesInner) GetCreditsText() string`

GetCreditsText returns the CreditsText field if non-nil, zero value otherwise.

### GetCreditsTextOk

`func (o *GetRandomRecipes200ResponseRecipesInner) GetCreditsTextOk() (*string, bool)`

GetCreditsTextOk returns a tuple with the CreditsText field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCreditsText

`func (o *GetRandomRecipes200ResponseRecipesInner) SetCreditsText(v string)`

SetCreditsText sets CreditsText field to given value.


### GetCuisines

`func (o *GetRandomRecipes200ResponseRecipesInner) GetCuisines() []string`

GetCuisines returns the Cuisines field if non-nil, zero value otherwise.

### GetCuisinesOk

`func (o *GetRandomRecipes200ResponseRecipesInner) GetCuisinesOk() (*[]string, bool)`

GetCuisinesOk returns a tuple with the Cuisines field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCuisines

`func (o *GetRandomRecipes200ResponseRecipesInner) SetCuisines(v []string)`

SetCuisines sets Cuisines field to given value.

### HasCuisines

`func (o *GetRandomRecipes200ResponseRecipesInner) HasCuisines() bool`

HasCuisines returns a boolean if a field has been set.

### GetDairyFree

`func (o *GetRandomRecipes200ResponseRecipesInner) GetDairyFree() bool`

GetDairyFree returns the DairyFree field if non-nil, zero value otherwise.

### GetDairyFreeOk

`func (o *GetRandomRecipes200ResponseRecipesInner) GetDairyFreeOk() (*bool, bool)`

GetDairyFreeOk returns a tuple with the DairyFree field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDairyFree

`func (o *GetRandomRecipes200ResponseRecipesInner) SetDairyFree(v bool)`

SetDairyFree sets DairyFree field to given value.


### GetDiets

`func (o *GetRandomRecipes200ResponseRecipesInner) GetDiets() []string`

GetDiets returns the Diets field if non-nil, zero value otherwise.

### GetDietsOk

`func (o *GetRandomRecipes200ResponseRecipesInner) GetDietsOk() (*[]string, bool)`

GetDietsOk returns a tuple with the Diets field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDiets

`func (o *GetRandomRecipes200ResponseRecipesInner) SetDiets(v []string)`

SetDiets sets Diets field to given value.

### HasDiets

`func (o *GetRandomRecipes200ResponseRecipesInner) HasDiets() bool`

HasDiets returns a boolean if a field has been set.

### GetGaps

`func (o *GetRandomRecipes200ResponseRecipesInner) GetGaps() string`

GetGaps returns the Gaps field if non-nil, zero value otherwise.

### GetGapsOk

`func (o *GetRandomRecipes200ResponseRecipesInner) GetGapsOk() (*string, bool)`

GetGapsOk returns a tuple with the Gaps field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetGaps

`func (o *GetRandomRecipes200ResponseRecipesInner) SetGaps(v string)`

SetGaps sets Gaps field to given value.


### GetGlutenFree

`func (o *GetRandomRecipes200ResponseRecipesInner) GetGlutenFree() bool`

GetGlutenFree returns the GlutenFree field if non-nil, zero value otherwise.

### GetGlutenFreeOk

`func (o *GetRandomRecipes200ResponseRecipesInner) GetGlutenFreeOk() (*bool, bool)`

GetGlutenFreeOk returns a tuple with the GlutenFree field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetGlutenFree

`func (o *GetRandomRecipes200ResponseRecipesInner) SetGlutenFree(v bool)`

SetGlutenFree sets GlutenFree field to given value.


### GetInstructions

`func (o *GetRandomRecipes200ResponseRecipesInner) GetInstructions() string`

GetInstructions returns the Instructions field if non-nil, zero value otherwise.

### GetInstructionsOk

`func (o *GetRandomRecipes200ResponseRecipesInner) GetInstructionsOk() (*string, bool)`

GetInstructionsOk returns a tuple with the Instructions field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetInstructions

`func (o *GetRandomRecipes200ResponseRecipesInner) SetInstructions(v string)`

SetInstructions sets Instructions field to given value.


### GetKetogenic

`func (o *GetRandomRecipes200ResponseRecipesInner) GetKetogenic() bool`

GetKetogenic returns the Ketogenic field if non-nil, zero value otherwise.

### GetKetogenicOk

`func (o *GetRandomRecipes200ResponseRecipesInner) GetKetogenicOk() (*bool, bool)`

GetKetogenicOk returns a tuple with the Ketogenic field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetKetogenic

`func (o *GetRandomRecipes200ResponseRecipesInner) SetKetogenic(v bool)`

SetKetogenic sets Ketogenic field to given value.


### GetLowFodmap

`func (o *GetRandomRecipes200ResponseRecipesInner) GetLowFodmap() bool`

GetLowFodmap returns the LowFodmap field if non-nil, zero value otherwise.

### GetLowFodmapOk

`func (o *GetRandomRecipes200ResponseRecipesInner) GetLowFodmapOk() (*bool, bool)`

GetLowFodmapOk returns a tuple with the LowFodmap field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLowFodmap

`func (o *GetRandomRecipes200ResponseRecipesInner) SetLowFodmap(v bool)`

SetLowFodmap sets LowFodmap field to given value.


### GetOccasions

`func (o *GetRandomRecipes200ResponseRecipesInner) GetOccasions() []string`

GetOccasions returns the Occasions field if non-nil, zero value otherwise.

### GetOccasionsOk

`func (o *GetRandomRecipes200ResponseRecipesInner) GetOccasionsOk() (*[]string, bool)`

GetOccasionsOk returns a tuple with the Occasions field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOccasions

`func (o *GetRandomRecipes200ResponseRecipesInner) SetOccasions(v []string)`

SetOccasions sets Occasions field to given value.

### HasOccasions

`func (o *GetRandomRecipes200ResponseRecipesInner) HasOccasions() bool`

HasOccasions returns a boolean if a field has been set.

### GetSustainable

`func (o *GetRandomRecipes200ResponseRecipesInner) GetSustainable() bool`

GetSustainable returns the Sustainable field if non-nil, zero value otherwise.

### GetSustainableOk

`func (o *GetRandomRecipes200ResponseRecipesInner) GetSustainableOk() (*bool, bool)`

GetSustainableOk returns a tuple with the Sustainable field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSustainable

`func (o *GetRandomRecipes200ResponseRecipesInner) SetSustainable(v bool)`

SetSustainable sets Sustainable field to given value.


### GetVegan

`func (o *GetRandomRecipes200ResponseRecipesInner) GetVegan() bool`

GetVegan returns the Vegan field if non-nil, zero value otherwise.

### GetVeganOk

`func (o *GetRandomRecipes200ResponseRecipesInner) GetVeganOk() (*bool, bool)`

GetVeganOk returns a tuple with the Vegan field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVegan

`func (o *GetRandomRecipes200ResponseRecipesInner) SetVegan(v bool)`

SetVegan sets Vegan field to given value.


### GetVegetarian

`func (o *GetRandomRecipes200ResponseRecipesInner) GetVegetarian() bool`

GetVegetarian returns the Vegetarian field if non-nil, zero value otherwise.

### GetVegetarianOk

`func (o *GetRandomRecipes200ResponseRecipesInner) GetVegetarianOk() (*bool, bool)`

GetVegetarianOk returns a tuple with the Vegetarian field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVegetarian

`func (o *GetRandomRecipes200ResponseRecipesInner) SetVegetarian(v bool)`

SetVegetarian sets Vegetarian field to given value.


### GetVeryHealthy

`func (o *GetRandomRecipes200ResponseRecipesInner) GetVeryHealthy() bool`

GetVeryHealthy returns the VeryHealthy field if non-nil, zero value otherwise.

### GetVeryHealthyOk

`func (o *GetRandomRecipes200ResponseRecipesInner) GetVeryHealthyOk() (*bool, bool)`

GetVeryHealthyOk returns a tuple with the VeryHealthy field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVeryHealthy

`func (o *GetRandomRecipes200ResponseRecipesInner) SetVeryHealthy(v bool)`

SetVeryHealthy sets VeryHealthy field to given value.


### GetVeryPopular

`func (o *GetRandomRecipes200ResponseRecipesInner) GetVeryPopular() bool`

GetVeryPopular returns the VeryPopular field if non-nil, zero value otherwise.

### GetVeryPopularOk

`func (o *GetRandomRecipes200ResponseRecipesInner) GetVeryPopularOk() (*bool, bool)`

GetVeryPopularOk returns a tuple with the VeryPopular field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVeryPopular

`func (o *GetRandomRecipes200ResponseRecipesInner) SetVeryPopular(v bool)`

SetVeryPopular sets VeryPopular field to given value.


### GetWhole30

`func (o *GetRandomRecipes200ResponseRecipesInner) GetWhole30() bool`

GetWhole30 returns the Whole30 field if non-nil, zero value otherwise.

### GetWhole30Ok

`func (o *GetRandomRecipes200ResponseRecipesInner) GetWhole30Ok() (*bool, bool)`

GetWhole30Ok returns a tuple with the Whole30 field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetWhole30

`func (o *GetRandomRecipes200ResponseRecipesInner) SetWhole30(v bool)`

SetWhole30 sets Whole30 field to given value.


### GetWeightWatcherSmartPoints

`func (o *GetRandomRecipes200ResponseRecipesInner) GetWeightWatcherSmartPoints() float32`

GetWeightWatcherSmartPoints returns the WeightWatcherSmartPoints field if non-nil, zero value otherwise.

### GetWeightWatcherSmartPointsOk

`func (o *GetRandomRecipes200ResponseRecipesInner) GetWeightWatcherSmartPointsOk() (*float32, bool)`

GetWeightWatcherSmartPointsOk returns a tuple with the WeightWatcherSmartPoints field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetWeightWatcherSmartPoints

`func (o *GetRandomRecipes200ResponseRecipesInner) SetWeightWatcherSmartPoints(v float32)`

SetWeightWatcherSmartPoints sets WeightWatcherSmartPoints field to given value.


### GetDishTypes

`func (o *GetRandomRecipes200ResponseRecipesInner) GetDishTypes() []string`

GetDishTypes returns the DishTypes field if non-nil, zero value otherwise.

### GetDishTypesOk

`func (o *GetRandomRecipes200ResponseRecipesInner) GetDishTypesOk() (*[]string, bool)`

GetDishTypesOk returns a tuple with the DishTypes field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDishTypes

`func (o *GetRandomRecipes200ResponseRecipesInner) SetDishTypes(v []string)`

SetDishTypes sets DishTypes field to given value.

### HasDishTypes

`func (o *GetRandomRecipes200ResponseRecipesInner) HasDishTypes() bool`

HasDishTypes returns a boolean if a field has been set.

### GetExtendedIngredients

`func (o *GetRandomRecipes200ResponseRecipesInner) GetExtendedIngredients() []GetRecipeInformation200ResponseExtendedIngredientsInner`

GetExtendedIngredients returns the ExtendedIngredients field if non-nil, zero value otherwise.

### GetExtendedIngredientsOk

`func (o *GetRandomRecipes200ResponseRecipesInner) GetExtendedIngredientsOk() (*[]GetRecipeInformation200ResponseExtendedIngredientsInner, bool)`

GetExtendedIngredientsOk returns a tuple with the ExtendedIngredients field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetExtendedIngredients

`func (o *GetRandomRecipes200ResponseRecipesInner) SetExtendedIngredients(v []GetRecipeInformation200ResponseExtendedIngredientsInner)`

SetExtendedIngredients sets ExtendedIngredients field to given value.

### HasExtendedIngredients

`func (o *GetRandomRecipes200ResponseRecipesInner) HasExtendedIngredients() bool`

HasExtendedIngredients returns a boolean if a field has been set.

### GetSummary

`func (o *GetRandomRecipes200ResponseRecipesInner) GetSummary() string`

GetSummary returns the Summary field if non-nil, zero value otherwise.

### GetSummaryOk

`func (o *GetRandomRecipes200ResponseRecipesInner) GetSummaryOk() (*string, bool)`

GetSummaryOk returns a tuple with the Summary field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSummary

`func (o *GetRandomRecipes200ResponseRecipesInner) SetSummary(v string)`

SetSummary sets Summary field to given value.


### GetWinePairing

`func (o *GetRandomRecipes200ResponseRecipesInner) GetWinePairing() GetRecipeInformation200ResponseWinePairing`

GetWinePairing returns the WinePairing field if non-nil, zero value otherwise.

### GetWinePairingOk

`func (o *GetRandomRecipes200ResponseRecipesInner) GetWinePairingOk() (*GetRecipeInformation200ResponseWinePairing, bool)`

GetWinePairingOk returns a tuple with the WinePairing field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetWinePairing

`func (o *GetRandomRecipes200ResponseRecipesInner) SetWinePairing(v GetRecipeInformation200ResponseWinePairing)`

SetWinePairing sets WinePairing field to given value.

### HasWinePairing

`func (o *GetRandomRecipes200ResponseRecipesInner) HasWinePairing() bool`

HasWinePairing returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


