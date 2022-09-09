# GetRecipeInformation200ResponseWinePairing

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**PairedWines** | **[]string** |  | 
**PairingText** | **string** |  | 
**ProductMatches** | [**[]GetRecipeInformation200ResponseWinePairingProductMatchesInner**](GetRecipeInformation200ResponseWinePairingProductMatchesInner.md) |  | 

## Methods

### NewGetRecipeInformation200ResponseWinePairing

`func NewGetRecipeInformation200ResponseWinePairing(pairedWines []string, pairingText string, productMatches []GetRecipeInformation200ResponseWinePairingProductMatchesInner, ) *GetRecipeInformation200ResponseWinePairing`

NewGetRecipeInformation200ResponseWinePairing instantiates a new GetRecipeInformation200ResponseWinePairing object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewGetRecipeInformation200ResponseWinePairingWithDefaults

`func NewGetRecipeInformation200ResponseWinePairingWithDefaults() *GetRecipeInformation200ResponseWinePairing`

NewGetRecipeInformation200ResponseWinePairingWithDefaults instantiates a new GetRecipeInformation200ResponseWinePairing object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetPairedWines

`func (o *GetRecipeInformation200ResponseWinePairing) GetPairedWines() []string`

GetPairedWines returns the PairedWines field if non-nil, zero value otherwise.

### GetPairedWinesOk

`func (o *GetRecipeInformation200ResponseWinePairing) GetPairedWinesOk() (*[]string, bool)`

GetPairedWinesOk returns a tuple with the PairedWines field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPairedWines

`func (o *GetRecipeInformation200ResponseWinePairing) SetPairedWines(v []string)`

SetPairedWines sets PairedWines field to given value.


### GetPairingText

`func (o *GetRecipeInformation200ResponseWinePairing) GetPairingText() string`

GetPairingText returns the PairingText field if non-nil, zero value otherwise.

### GetPairingTextOk

`func (o *GetRecipeInformation200ResponseWinePairing) GetPairingTextOk() (*string, bool)`

GetPairingTextOk returns a tuple with the PairingText field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPairingText

`func (o *GetRecipeInformation200ResponseWinePairing) SetPairingText(v string)`

SetPairingText sets PairingText field to given value.


### GetProductMatches

`func (o *GetRecipeInformation200ResponseWinePairing) GetProductMatches() []GetRecipeInformation200ResponseWinePairingProductMatchesInner`

GetProductMatches returns the ProductMatches field if non-nil, zero value otherwise.

### GetProductMatchesOk

`func (o *GetRecipeInformation200ResponseWinePairing) GetProductMatchesOk() (*[]GetRecipeInformation200ResponseWinePairingProductMatchesInner, bool)`

GetProductMatchesOk returns a tuple with the ProductMatches field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetProductMatches

`func (o *GetRecipeInformation200ResponseWinePairing) SetProductMatches(v []GetRecipeInformation200ResponseWinePairingProductMatchesInner)`

SetProductMatches sets ProductMatches field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


