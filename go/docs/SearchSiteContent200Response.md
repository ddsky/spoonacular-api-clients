# SearchSiteContent200Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Articles** | [**[]SearchResult**](SearchResult.md) |  | 
**GroceryProducts** | [**[]SearchResult**](SearchResult.md) |  | 
**MenuItems** | [**[]SearchResult**](SearchResult.md) |  | 
**Recipes** | [**[]SearchResult**](SearchResult.md) |  | 

## Methods

### NewSearchSiteContent200Response

`func NewSearchSiteContent200Response(articles []SearchResult, groceryProducts []SearchResult, menuItems []SearchResult, recipes []SearchResult, ) *SearchSiteContent200Response`

NewSearchSiteContent200Response instantiates a new SearchSiteContent200Response object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewSearchSiteContent200ResponseWithDefaults

`func NewSearchSiteContent200ResponseWithDefaults() *SearchSiteContent200Response`

NewSearchSiteContent200ResponseWithDefaults instantiates a new SearchSiteContent200Response object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetArticles

`func (o *SearchSiteContent200Response) GetArticles() []SearchResult`

GetArticles returns the Articles field if non-nil, zero value otherwise.

### GetArticlesOk

`func (o *SearchSiteContent200Response) GetArticlesOk() (*[]SearchResult, bool)`

GetArticlesOk returns a tuple with the Articles field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetArticles

`func (o *SearchSiteContent200Response) SetArticles(v []SearchResult)`

SetArticles sets Articles field to given value.


### GetGroceryProducts

`func (o *SearchSiteContent200Response) GetGroceryProducts() []SearchResult`

GetGroceryProducts returns the GroceryProducts field if non-nil, zero value otherwise.

### GetGroceryProductsOk

`func (o *SearchSiteContent200Response) GetGroceryProductsOk() (*[]SearchResult, bool)`

GetGroceryProductsOk returns a tuple with the GroceryProducts field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetGroceryProducts

`func (o *SearchSiteContent200Response) SetGroceryProducts(v []SearchResult)`

SetGroceryProducts sets GroceryProducts field to given value.


### GetMenuItems

`func (o *SearchSiteContent200Response) GetMenuItems() []SearchResult`

GetMenuItems returns the MenuItems field if non-nil, zero value otherwise.

### GetMenuItemsOk

`func (o *SearchSiteContent200Response) GetMenuItemsOk() (*[]SearchResult, bool)`

GetMenuItemsOk returns a tuple with the MenuItems field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMenuItems

`func (o *SearchSiteContent200Response) SetMenuItems(v []SearchResult)`

SetMenuItems sets MenuItems field to given value.


### GetRecipes

`func (o *SearchSiteContent200Response) GetRecipes() []SearchResult`

GetRecipes returns the Recipes field if non-nil, zero value otherwise.

### GetRecipesOk

`func (o *SearchSiteContent200Response) GetRecipesOk() (*[]SearchResult, bool)`

GetRecipesOk returns a tuple with the Recipes field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRecipes

`func (o *SearchSiteContent200Response) SetRecipes(v []SearchResult)`

SetRecipes sets Recipes field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


