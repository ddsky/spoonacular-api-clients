# GetWinePairing200Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**PairedWines** | **[]string** |  | 
**PairingText** | **string** |  | 
**ProductMatches** | [**[]GetWinePairing200ResponseProductMatchesInner**](GetWinePairing200ResponseProductMatchesInner.md) |  | 

## Methods

### NewGetWinePairing200Response

`func NewGetWinePairing200Response(pairedWines []string, pairingText string, productMatches []GetWinePairing200ResponseProductMatchesInner, ) *GetWinePairing200Response`

NewGetWinePairing200Response instantiates a new GetWinePairing200Response object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewGetWinePairing200ResponseWithDefaults

`func NewGetWinePairing200ResponseWithDefaults() *GetWinePairing200Response`

NewGetWinePairing200ResponseWithDefaults instantiates a new GetWinePairing200Response object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetPairedWines

`func (o *GetWinePairing200Response) GetPairedWines() []string`

GetPairedWines returns the PairedWines field if non-nil, zero value otherwise.

### GetPairedWinesOk

`func (o *GetWinePairing200Response) GetPairedWinesOk() (*[]string, bool)`

GetPairedWinesOk returns a tuple with the PairedWines field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPairedWines

`func (o *GetWinePairing200Response) SetPairedWines(v []string)`

SetPairedWines sets PairedWines field to given value.


### GetPairingText

`func (o *GetWinePairing200Response) GetPairingText() string`

GetPairingText returns the PairingText field if non-nil, zero value otherwise.

### GetPairingTextOk

`func (o *GetWinePairing200Response) GetPairingTextOk() (*string, bool)`

GetPairingTextOk returns a tuple with the PairingText field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPairingText

`func (o *GetWinePairing200Response) SetPairingText(v string)`

SetPairingText sets PairingText field to given value.


### GetProductMatches

`func (o *GetWinePairing200Response) GetProductMatches() []GetWinePairing200ResponseProductMatchesInner`

GetProductMatches returns the ProductMatches field if non-nil, zero value otherwise.

### GetProductMatchesOk

`func (o *GetWinePairing200Response) GetProductMatchesOk() (*[]GetWinePairing200ResponseProductMatchesInner, bool)`

GetProductMatchesOk returns a tuple with the ProductMatches field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetProductMatches

`func (o *GetWinePairing200Response) SetProductMatches(v []GetWinePairing200ResponseProductMatchesInner)`

SetProductMatches sets ProductMatches field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


