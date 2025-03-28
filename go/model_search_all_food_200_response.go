/*
spoonacular API

The spoonacular Nutrition, Recipe, and Food API allows you to access over thousands of recipes, thousands of ingredients, 800,000 food products, over 100,000 menu items, and restaurants. Our food ontology and semantic recipe search engine makes it possible to search for recipes using natural language queries, such as \"gluten free brownies without sugar\" or \"low fat vegan cupcakes.\" You can automatically calculate the nutritional information for any recipe, analyze recipe costs, visualize ingredient lists, find recipes for what's in your fridge, find recipes based on special diets, nutritional requirements, or favorite ingredients, classify recipes into types and cuisines, convert ingredient amounts, or even compute an entire meal plan. With our powerful API, you can create many kinds of food and especially nutrition apps.  Special diets/dietary requirements currently available include: vegan, vegetarian, pescetarian, gluten free, grain free, dairy free, high protein, whole 30, low sodium, low carb, Paleo, ketogenic, FODMAP, and Primal.

API version: 2.0.2
Contact: mail@spoonacular.com
*/

// Code generated by OpenAPI Generator (https://openapi-generator.tech); DO NOT EDIT.

package spoonacular

import (
	"encoding/json"
	"bytes"
	"fmt"
)

// checks if the SearchAllFood200Response type satisfies the MappedNullable interface at compile time
var _ MappedNullable = &SearchAllFood200Response{}

// SearchAllFood200Response 
type SearchAllFood200Response struct {
	Query string `json:"query"`
	TotalResults int32 `json:"totalResults"`
	Limit int32 `json:"limit"`
	Offset int32 `json:"offset"`
	SearchResults []SearchAllFood200ResponseSearchResultsInner `json:"searchResults"`
}

type _SearchAllFood200Response SearchAllFood200Response

// NewSearchAllFood200Response instantiates a new SearchAllFood200Response object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewSearchAllFood200Response(query string, totalResults int32, limit int32, offset int32, searchResults []SearchAllFood200ResponseSearchResultsInner) *SearchAllFood200Response {
	this := SearchAllFood200Response{}
	this.Query = query
	this.TotalResults = totalResults
	this.Limit = limit
	this.Offset = offset
	this.SearchResults = searchResults
	return &this
}

// NewSearchAllFood200ResponseWithDefaults instantiates a new SearchAllFood200Response object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewSearchAllFood200ResponseWithDefaults() *SearchAllFood200Response {
	this := SearchAllFood200Response{}
	return &this
}

// GetQuery returns the Query field value
func (o *SearchAllFood200Response) GetQuery() string {
	if o == nil {
		var ret string
		return ret
	}

	return o.Query
}

// GetQueryOk returns a tuple with the Query field value
// and a boolean to check if the value has been set.
func (o *SearchAllFood200Response) GetQueryOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return &o.Query, true
}

// SetQuery sets field value
func (o *SearchAllFood200Response) SetQuery(v string) {
	o.Query = v
}

// GetTotalResults returns the TotalResults field value
func (o *SearchAllFood200Response) GetTotalResults() int32 {
	if o == nil {
		var ret int32
		return ret
	}

	return o.TotalResults
}

// GetTotalResultsOk returns a tuple with the TotalResults field value
// and a boolean to check if the value has been set.
func (o *SearchAllFood200Response) GetTotalResultsOk() (*int32, bool) {
	if o == nil {
		return nil, false
	}
	return &o.TotalResults, true
}

// SetTotalResults sets field value
func (o *SearchAllFood200Response) SetTotalResults(v int32) {
	o.TotalResults = v
}

// GetLimit returns the Limit field value
func (o *SearchAllFood200Response) GetLimit() int32 {
	if o == nil {
		var ret int32
		return ret
	}

	return o.Limit
}

// GetLimitOk returns a tuple with the Limit field value
// and a boolean to check if the value has been set.
func (o *SearchAllFood200Response) GetLimitOk() (*int32, bool) {
	if o == nil {
		return nil, false
	}
	return &o.Limit, true
}

// SetLimit sets field value
func (o *SearchAllFood200Response) SetLimit(v int32) {
	o.Limit = v
}

// GetOffset returns the Offset field value
func (o *SearchAllFood200Response) GetOffset() int32 {
	if o == nil {
		var ret int32
		return ret
	}

	return o.Offset
}

// GetOffsetOk returns a tuple with the Offset field value
// and a boolean to check if the value has been set.
func (o *SearchAllFood200Response) GetOffsetOk() (*int32, bool) {
	if o == nil {
		return nil, false
	}
	return &o.Offset, true
}

// SetOffset sets field value
func (o *SearchAllFood200Response) SetOffset(v int32) {
	o.Offset = v
}

// GetSearchResults returns the SearchResults field value
func (o *SearchAllFood200Response) GetSearchResults() []SearchAllFood200ResponseSearchResultsInner {
	if o == nil {
		var ret []SearchAllFood200ResponseSearchResultsInner
		return ret
	}

	return o.SearchResults
}

// GetSearchResultsOk returns a tuple with the SearchResults field value
// and a boolean to check if the value has been set.
func (o *SearchAllFood200Response) GetSearchResultsOk() ([]SearchAllFood200ResponseSearchResultsInner, bool) {
	if o == nil {
		return nil, false
	}
	return o.SearchResults, true
}

// SetSearchResults sets field value
func (o *SearchAllFood200Response) SetSearchResults(v []SearchAllFood200ResponseSearchResultsInner) {
	o.SearchResults = v
}

func (o SearchAllFood200Response) MarshalJSON() ([]byte, error) {
	toSerialize,err := o.ToMap()
	if err != nil {
		return []byte{}, err
	}
	return json.Marshal(toSerialize)
}

func (o SearchAllFood200Response) ToMap() (map[string]interface{}, error) {
	toSerialize := map[string]interface{}{}
	toSerialize["query"] = o.Query
	toSerialize["totalResults"] = o.TotalResults
	toSerialize["limit"] = o.Limit
	toSerialize["offset"] = o.Offset
	toSerialize["searchResults"] = o.SearchResults
	return toSerialize, nil
}

func (o *SearchAllFood200Response) UnmarshalJSON(data []byte) (err error) {
	// This validates that all required properties are included in the JSON object
	// by unmarshalling the object into a generic map with string keys and checking
	// that every required field exists as a key in the generic map.
	requiredProperties := []string{
		"query",
		"totalResults",
		"limit",
		"offset",
		"searchResults",
	}

	allProperties := make(map[string]interface{})

	err = json.Unmarshal(data, &allProperties)

	if err != nil {
		return err;
	}

	for _, requiredProperty := range(requiredProperties) {
		if _, exists := allProperties[requiredProperty]; !exists {
			return fmt.Errorf("no value given for required property %v", requiredProperty)
		}
	}

	varSearchAllFood200Response := _SearchAllFood200Response{}

	decoder := json.NewDecoder(bytes.NewReader(data))
	decoder.DisallowUnknownFields()
	err = decoder.Decode(&varSearchAllFood200Response)

	if err != nil {
		return err
	}

	*o = SearchAllFood200Response(varSearchAllFood200Response)

	return err
}

type NullableSearchAllFood200Response struct {
	value *SearchAllFood200Response
	isSet bool
}

func (v NullableSearchAllFood200Response) Get() *SearchAllFood200Response {
	return v.value
}

func (v *NullableSearchAllFood200Response) Set(val *SearchAllFood200Response) {
	v.value = val
	v.isSet = true
}

func (v NullableSearchAllFood200Response) IsSet() bool {
	return v.isSet
}

func (v *NullableSearchAllFood200Response) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableSearchAllFood200Response(val *SearchAllFood200Response) *NullableSearchAllFood200Response {
	return &NullableSearchAllFood200Response{value: val, isSet: true}
}

func (v NullableSearchAllFood200Response) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableSearchAllFood200Response) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


