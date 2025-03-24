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
)

// checks if the SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational type satisfies the MappedNullable interface at compile time
var _ MappedNullable = &SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational{}

// SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational struct for SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational
type SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational struct {
	Monday *string `json:"Monday,omitempty"`
	Tuesday *string `json:"Tuesday,omitempty"`
	Wednesday *string `json:"Wednesday,omitempty"`
	Thursday *string `json:"Thursday,omitempty"`
	Friday *string `json:"Friday,omitempty"`
	Saturday *string `json:"Saturday,omitempty"`
	Sunday *string `json:"Sunday,omitempty"`
}

// NewSearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational instantiates a new SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewSearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational() *SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational {
	this := SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational{}
	return &this
}

// NewSearchRestaurants200ResponseRestaurantsInnerLocalHoursOperationalWithDefaults instantiates a new SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewSearchRestaurants200ResponseRestaurantsInnerLocalHoursOperationalWithDefaults() *SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational {
	this := SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational{}
	return &this
}

// GetMonday returns the Monday field value if set, zero value otherwise.
func (o *SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational) GetMonday() string {
	if o == nil || IsNil(o.Monday) {
		var ret string
		return ret
	}
	return *o.Monday
}

// GetMondayOk returns a tuple with the Monday field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational) GetMondayOk() (*string, bool) {
	if o == nil || IsNil(o.Monday) {
		return nil, false
	}
	return o.Monday, true
}

// HasMonday returns a boolean if a field has been set.
func (o *SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational) HasMonday() bool {
	if o != nil && !IsNil(o.Monday) {
		return true
	}

	return false
}

// SetMonday gets a reference to the given string and assigns it to the Monday field.
func (o *SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational) SetMonday(v string) {
	o.Monday = &v
}

// GetTuesday returns the Tuesday field value if set, zero value otherwise.
func (o *SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational) GetTuesday() string {
	if o == nil || IsNil(o.Tuesday) {
		var ret string
		return ret
	}
	return *o.Tuesday
}

// GetTuesdayOk returns a tuple with the Tuesday field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational) GetTuesdayOk() (*string, bool) {
	if o == nil || IsNil(o.Tuesday) {
		return nil, false
	}
	return o.Tuesday, true
}

// HasTuesday returns a boolean if a field has been set.
func (o *SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational) HasTuesday() bool {
	if o != nil && !IsNil(o.Tuesday) {
		return true
	}

	return false
}

// SetTuesday gets a reference to the given string and assigns it to the Tuesday field.
func (o *SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational) SetTuesday(v string) {
	o.Tuesday = &v
}

// GetWednesday returns the Wednesday field value if set, zero value otherwise.
func (o *SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational) GetWednesday() string {
	if o == nil || IsNil(o.Wednesday) {
		var ret string
		return ret
	}
	return *o.Wednesday
}

// GetWednesdayOk returns a tuple with the Wednesday field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational) GetWednesdayOk() (*string, bool) {
	if o == nil || IsNil(o.Wednesday) {
		return nil, false
	}
	return o.Wednesday, true
}

// HasWednesday returns a boolean if a field has been set.
func (o *SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational) HasWednesday() bool {
	if o != nil && !IsNil(o.Wednesday) {
		return true
	}

	return false
}

// SetWednesday gets a reference to the given string and assigns it to the Wednesday field.
func (o *SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational) SetWednesday(v string) {
	o.Wednesday = &v
}

// GetThursday returns the Thursday field value if set, zero value otherwise.
func (o *SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational) GetThursday() string {
	if o == nil || IsNil(o.Thursday) {
		var ret string
		return ret
	}
	return *o.Thursday
}

// GetThursdayOk returns a tuple with the Thursday field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational) GetThursdayOk() (*string, bool) {
	if o == nil || IsNil(o.Thursday) {
		return nil, false
	}
	return o.Thursday, true
}

// HasThursday returns a boolean if a field has been set.
func (o *SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational) HasThursday() bool {
	if o != nil && !IsNil(o.Thursday) {
		return true
	}

	return false
}

// SetThursday gets a reference to the given string and assigns it to the Thursday field.
func (o *SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational) SetThursday(v string) {
	o.Thursday = &v
}

// GetFriday returns the Friday field value if set, zero value otherwise.
func (o *SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational) GetFriday() string {
	if o == nil || IsNil(o.Friday) {
		var ret string
		return ret
	}
	return *o.Friday
}

// GetFridayOk returns a tuple with the Friday field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational) GetFridayOk() (*string, bool) {
	if o == nil || IsNil(o.Friday) {
		return nil, false
	}
	return o.Friday, true
}

// HasFriday returns a boolean if a field has been set.
func (o *SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational) HasFriday() bool {
	if o != nil && !IsNil(o.Friday) {
		return true
	}

	return false
}

// SetFriday gets a reference to the given string and assigns it to the Friday field.
func (o *SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational) SetFriday(v string) {
	o.Friday = &v
}

// GetSaturday returns the Saturday field value if set, zero value otherwise.
func (o *SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational) GetSaturday() string {
	if o == nil || IsNil(o.Saturday) {
		var ret string
		return ret
	}
	return *o.Saturday
}

// GetSaturdayOk returns a tuple with the Saturday field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational) GetSaturdayOk() (*string, bool) {
	if o == nil || IsNil(o.Saturday) {
		return nil, false
	}
	return o.Saturday, true
}

// HasSaturday returns a boolean if a field has been set.
func (o *SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational) HasSaturday() bool {
	if o != nil && !IsNil(o.Saturday) {
		return true
	}

	return false
}

// SetSaturday gets a reference to the given string and assigns it to the Saturday field.
func (o *SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational) SetSaturday(v string) {
	o.Saturday = &v
}

// GetSunday returns the Sunday field value if set, zero value otherwise.
func (o *SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational) GetSunday() string {
	if o == nil || IsNil(o.Sunday) {
		var ret string
		return ret
	}
	return *o.Sunday
}

// GetSundayOk returns a tuple with the Sunday field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational) GetSundayOk() (*string, bool) {
	if o == nil || IsNil(o.Sunday) {
		return nil, false
	}
	return o.Sunday, true
}

// HasSunday returns a boolean if a field has been set.
func (o *SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational) HasSunday() bool {
	if o != nil && !IsNil(o.Sunday) {
		return true
	}

	return false
}

// SetSunday gets a reference to the given string and assigns it to the Sunday field.
func (o *SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational) SetSunday(v string) {
	o.Sunday = &v
}

func (o SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational) MarshalJSON() ([]byte, error) {
	toSerialize,err := o.ToMap()
	if err != nil {
		return []byte{}, err
	}
	return json.Marshal(toSerialize)
}

func (o SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational) ToMap() (map[string]interface{}, error) {
	toSerialize := map[string]interface{}{}
	if !IsNil(o.Monday) {
		toSerialize["Monday"] = o.Monday
	}
	if !IsNil(o.Tuesday) {
		toSerialize["Tuesday"] = o.Tuesday
	}
	if !IsNil(o.Wednesday) {
		toSerialize["Wednesday"] = o.Wednesday
	}
	if !IsNil(o.Thursday) {
		toSerialize["Thursday"] = o.Thursday
	}
	if !IsNil(o.Friday) {
		toSerialize["Friday"] = o.Friday
	}
	if !IsNil(o.Saturday) {
		toSerialize["Saturday"] = o.Saturday
	}
	if !IsNil(o.Sunday) {
		toSerialize["Sunday"] = o.Sunday
	}
	return toSerialize, nil
}

type NullableSearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational struct {
	value *SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational
	isSet bool
}

func (v NullableSearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational) Get() *SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational {
	return v.value
}

func (v *NullableSearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational) Set(val *SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational) {
	v.value = val
	v.isSet = true
}

func (v NullableSearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational) IsSet() bool {
	return v.isSet
}

func (v *NullableSearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableSearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational(val *SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational) *NullableSearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational {
	return &NullableSearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational{value: val, isSet: true}
}

func (v NullableSearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableSearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


