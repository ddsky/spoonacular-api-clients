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

// checks if the SearchAllFood200ResponseSearchResultsInner type satisfies the MappedNullable interface at compile time
var _ MappedNullable = &SearchAllFood200ResponseSearchResultsInner{}

// SearchAllFood200ResponseSearchResultsInner struct for SearchAllFood200ResponseSearchResultsInner
type SearchAllFood200ResponseSearchResultsInner struct {
	Name string `json:"name"`
	TotalResults int32 `json:"totalResults"`
	Results []SearchResult `json:"results,omitempty"`
}

type _SearchAllFood200ResponseSearchResultsInner SearchAllFood200ResponseSearchResultsInner

// NewSearchAllFood200ResponseSearchResultsInner instantiates a new SearchAllFood200ResponseSearchResultsInner object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewSearchAllFood200ResponseSearchResultsInner(name string, totalResults int32) *SearchAllFood200ResponseSearchResultsInner {
	this := SearchAllFood200ResponseSearchResultsInner{}
	this.Name = name
	this.TotalResults = totalResults
	return &this
}

// NewSearchAllFood200ResponseSearchResultsInnerWithDefaults instantiates a new SearchAllFood200ResponseSearchResultsInner object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewSearchAllFood200ResponseSearchResultsInnerWithDefaults() *SearchAllFood200ResponseSearchResultsInner {
	this := SearchAllFood200ResponseSearchResultsInner{}
	return &this
}

// GetName returns the Name field value
func (o *SearchAllFood200ResponseSearchResultsInner) GetName() string {
	if o == nil {
		var ret string
		return ret
	}

	return o.Name
}

// GetNameOk returns a tuple with the Name field value
// and a boolean to check if the value has been set.
func (o *SearchAllFood200ResponseSearchResultsInner) GetNameOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return &o.Name, true
}

// SetName sets field value
func (o *SearchAllFood200ResponseSearchResultsInner) SetName(v string) {
	o.Name = v
}

// GetTotalResults returns the TotalResults field value
func (o *SearchAllFood200ResponseSearchResultsInner) GetTotalResults() int32 {
	if o == nil {
		var ret int32
		return ret
	}

	return o.TotalResults
}

// GetTotalResultsOk returns a tuple with the TotalResults field value
// and a boolean to check if the value has been set.
func (o *SearchAllFood200ResponseSearchResultsInner) GetTotalResultsOk() (*int32, bool) {
	if o == nil {
		return nil, false
	}
	return &o.TotalResults, true
}

// SetTotalResults sets field value
func (o *SearchAllFood200ResponseSearchResultsInner) SetTotalResults(v int32) {
	o.TotalResults = v
}

// GetResults returns the Results field value if set, zero value otherwise.
func (o *SearchAllFood200ResponseSearchResultsInner) GetResults() []SearchResult {
	if o == nil || IsNil(o.Results) {
		var ret []SearchResult
		return ret
	}
	return o.Results
}

// GetResultsOk returns a tuple with the Results field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *SearchAllFood200ResponseSearchResultsInner) GetResultsOk() ([]SearchResult, bool) {
	if o == nil || IsNil(o.Results) {
		return nil, false
	}
	return o.Results, true
}

// HasResults returns a boolean if a field has been set.
func (o *SearchAllFood200ResponseSearchResultsInner) HasResults() bool {
	if o != nil && !IsNil(o.Results) {
		return true
	}

	return false
}

// SetResults gets a reference to the given []SearchResult and assigns it to the Results field.
func (o *SearchAllFood200ResponseSearchResultsInner) SetResults(v []SearchResult) {
	o.Results = v
}

func (o SearchAllFood200ResponseSearchResultsInner) MarshalJSON() ([]byte, error) {
	toSerialize,err := o.ToMap()
	if err != nil {
		return []byte{}, err
	}
	return json.Marshal(toSerialize)
}

func (o SearchAllFood200ResponseSearchResultsInner) ToMap() (map[string]interface{}, error) {
	toSerialize := map[string]interface{}{}
	toSerialize["name"] = o.Name
	toSerialize["totalResults"] = o.TotalResults
	if !IsNil(o.Results) {
		toSerialize["results"] = o.Results
	}
	return toSerialize, nil
}

func (o *SearchAllFood200ResponseSearchResultsInner) UnmarshalJSON(data []byte) (err error) {
	// This validates that all required properties are included in the JSON object
	// by unmarshalling the object into a generic map with string keys and checking
	// that every required field exists as a key in the generic map.
	requiredProperties := []string{
		"name",
		"totalResults",
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

	varSearchAllFood200ResponseSearchResultsInner := _SearchAllFood200ResponseSearchResultsInner{}

	decoder := json.NewDecoder(bytes.NewReader(data))
	decoder.DisallowUnknownFields()
	err = decoder.Decode(&varSearchAllFood200ResponseSearchResultsInner)

	if err != nil {
		return err
	}

	*o = SearchAllFood200ResponseSearchResultsInner(varSearchAllFood200ResponseSearchResultsInner)

	return err
}

type NullableSearchAllFood200ResponseSearchResultsInner struct {
	value *SearchAllFood200ResponseSearchResultsInner
	isSet bool
}

func (v NullableSearchAllFood200ResponseSearchResultsInner) Get() *SearchAllFood200ResponseSearchResultsInner {
	return v.value
}

func (v *NullableSearchAllFood200ResponseSearchResultsInner) Set(val *SearchAllFood200ResponseSearchResultsInner) {
	v.value = val
	v.isSet = true
}

func (v NullableSearchAllFood200ResponseSearchResultsInner) IsSet() bool {
	return v.isSet
}

func (v *NullableSearchAllFood200ResponseSearchResultsInner) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableSearchAllFood200ResponseSearchResultsInner(val *SearchAllFood200ResponseSearchResultsInner) *NullableSearchAllFood200ResponseSearchResultsInner {
	return &NullableSearchAllFood200ResponseSearchResultsInner{value: val, isSet: true}
}

func (v NullableSearchAllFood200ResponseSearchResultsInner) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableSearchAllFood200ResponseSearchResultsInner) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


