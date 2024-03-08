/*
spoonacular API

The spoonacular Nutrition, Recipe, and Food API allows you to access over thousands of recipes, thousands of ingredients, 800,000 food products, over 100,000 menu items, and restaurants. Our food ontology and semantic recipe search engine makes it possible to search for recipes using natural language queries, such as \"gluten free brownies without sugar\" or \"low fat vegan cupcakes.\" You can automatically calculate the nutritional information for any recipe, analyze recipe costs, visualize ingredient lists, find recipes for what's in your fridge, find recipes based on special diets, nutritional requirements, or favorite ingredients, classify recipes into types and cuisines, convert ingredient amounts, or even compute an entire meal plan. With our powerful API, you can create many kinds of food and especially nutrition apps.  Special diets/dietary requirements currently available include: vegan, vegetarian, pescetarian, gluten free, grain free, dairy free, high protein, whole 30, low sodium, low carb, Paleo, ketogenic, FODMAP, and Primal.

API version: 1.1
Contact: mail@spoonacular.com
*/

// Code generated by OpenAPI Generator (https://openapi-generator.tech); DO NOT EDIT.

package spoonacular

import (
	"encoding/json"
	"bytes"
	"fmt"
)

// checks if the GetRandomRecipes200Response type satisfies the MappedNullable interface at compile time
var _ MappedNullable = &GetRandomRecipes200Response{}

// GetRandomRecipes200Response 
type GetRandomRecipes200Response struct {
	Recipes []GetRandomRecipes200ResponseRecipesInner `json:"recipes"`
}

type _GetRandomRecipes200Response GetRandomRecipes200Response

// NewGetRandomRecipes200Response instantiates a new GetRandomRecipes200Response object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewGetRandomRecipes200Response(recipes []GetRandomRecipes200ResponseRecipesInner) *GetRandomRecipes200Response {
	this := GetRandomRecipes200Response{}
	this.Recipes = recipes
	return &this
}

// NewGetRandomRecipes200ResponseWithDefaults instantiates a new GetRandomRecipes200Response object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewGetRandomRecipes200ResponseWithDefaults() *GetRandomRecipes200Response {
	this := GetRandomRecipes200Response{}
	return &this
}

// GetRecipes returns the Recipes field value
func (o *GetRandomRecipes200Response) GetRecipes() []GetRandomRecipes200ResponseRecipesInner {
	if o == nil {
		var ret []GetRandomRecipes200ResponseRecipesInner
		return ret
	}

	return o.Recipes
}

// GetRecipesOk returns a tuple with the Recipes field value
// and a boolean to check if the value has been set.
func (o *GetRandomRecipes200Response) GetRecipesOk() ([]GetRandomRecipes200ResponseRecipesInner, bool) {
	if o == nil {
		return nil, false
	}
	return o.Recipes, true
}

// SetRecipes sets field value
func (o *GetRandomRecipes200Response) SetRecipes(v []GetRandomRecipes200ResponseRecipesInner) {
	o.Recipes = v
}

func (o GetRandomRecipes200Response) MarshalJSON() ([]byte, error) {
	toSerialize,err := o.ToMap()
	if err != nil {
		return []byte{}, err
	}
	return json.Marshal(toSerialize)
}

func (o GetRandomRecipes200Response) ToMap() (map[string]interface{}, error) {
	toSerialize := map[string]interface{}{}
	toSerialize["recipes"] = o.Recipes
	return toSerialize, nil
}

func (o *GetRandomRecipes200Response) UnmarshalJSON(data []byte) (err error) {
	// This validates that all required properties are included in the JSON object
	// by unmarshalling the object into a generic map with string keys and checking
	// that every required field exists as a key in the generic map.
	requiredProperties := []string{
		"recipes",
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

	varGetRandomRecipes200Response := _GetRandomRecipes200Response{}

	decoder := json.NewDecoder(bytes.NewReader(data))
	decoder.DisallowUnknownFields()
	err = decoder.Decode(&varGetRandomRecipes200Response)

	if err != nil {
		return err
	}

	*o = GetRandomRecipes200Response(varGetRandomRecipes200Response)

	return err
}

type NullableGetRandomRecipes200Response struct {
	value *GetRandomRecipes200Response
	isSet bool
}

func (v NullableGetRandomRecipes200Response) Get() *GetRandomRecipes200Response {
	return v.value
}

func (v *NullableGetRandomRecipes200Response) Set(val *GetRandomRecipes200Response) {
	v.value = val
	v.isSet = true
}

func (v NullableGetRandomRecipes200Response) IsSet() bool {
	return v.isSet
}

func (v *NullableGetRandomRecipes200Response) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableGetRandomRecipes200Response(val *GetRandomRecipes200Response) *NullableGetRandomRecipes200Response {
	return &NullableGetRandomRecipes200Response{value: val, isSet: true}
}

func (v NullableGetRandomRecipes200Response) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableGetRandomRecipes200Response) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


