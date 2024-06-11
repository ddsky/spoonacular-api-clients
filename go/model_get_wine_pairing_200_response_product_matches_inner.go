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

// checks if the GetWinePairing200ResponseProductMatchesInner type satisfies the MappedNullable interface at compile time
var _ MappedNullable = &GetWinePairing200ResponseProductMatchesInner{}

// GetWinePairing200ResponseProductMatchesInner struct for GetWinePairing200ResponseProductMatchesInner
type GetWinePairing200ResponseProductMatchesInner struct {
	Id int32 `json:"id"`
	Title string `json:"title"`
	AverageRating float32 `json:"averageRating"`
	Description *string `json:"description,omitempty"`
	ImageUrl string `json:"imageUrl"`
	Link string `json:"link"`
	Price string `json:"price"`
	RatingCount int32 `json:"ratingCount"`
	Score float32 `json:"score"`
}

type _GetWinePairing200ResponseProductMatchesInner GetWinePairing200ResponseProductMatchesInner

// NewGetWinePairing200ResponseProductMatchesInner instantiates a new GetWinePairing200ResponseProductMatchesInner object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewGetWinePairing200ResponseProductMatchesInner(id int32, title string, averageRating float32, imageUrl string, link string, price string, ratingCount int32, score float32) *GetWinePairing200ResponseProductMatchesInner {
	this := GetWinePairing200ResponseProductMatchesInner{}
	this.Id = id
	this.Title = title
	this.AverageRating = averageRating
	this.ImageUrl = imageUrl
	this.Link = link
	this.Price = price
	this.RatingCount = ratingCount
	this.Score = score
	return &this
}

// NewGetWinePairing200ResponseProductMatchesInnerWithDefaults instantiates a new GetWinePairing200ResponseProductMatchesInner object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewGetWinePairing200ResponseProductMatchesInnerWithDefaults() *GetWinePairing200ResponseProductMatchesInner {
	this := GetWinePairing200ResponseProductMatchesInner{}
	return &this
}

// GetId returns the Id field value
func (o *GetWinePairing200ResponseProductMatchesInner) GetId() int32 {
	if o == nil {
		var ret int32
		return ret
	}

	return o.Id
}

// GetIdOk returns a tuple with the Id field value
// and a boolean to check if the value has been set.
func (o *GetWinePairing200ResponseProductMatchesInner) GetIdOk() (*int32, bool) {
	if o == nil {
		return nil, false
	}
	return &o.Id, true
}

// SetId sets field value
func (o *GetWinePairing200ResponseProductMatchesInner) SetId(v int32) {
	o.Id = v
}

// GetTitle returns the Title field value
func (o *GetWinePairing200ResponseProductMatchesInner) GetTitle() string {
	if o == nil {
		var ret string
		return ret
	}

	return o.Title
}

// GetTitleOk returns a tuple with the Title field value
// and a boolean to check if the value has been set.
func (o *GetWinePairing200ResponseProductMatchesInner) GetTitleOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return &o.Title, true
}

// SetTitle sets field value
func (o *GetWinePairing200ResponseProductMatchesInner) SetTitle(v string) {
	o.Title = v
}

// GetAverageRating returns the AverageRating field value
func (o *GetWinePairing200ResponseProductMatchesInner) GetAverageRating() float32 {
	if o == nil {
		var ret float32
		return ret
	}

	return o.AverageRating
}

// GetAverageRatingOk returns a tuple with the AverageRating field value
// and a boolean to check if the value has been set.
func (o *GetWinePairing200ResponseProductMatchesInner) GetAverageRatingOk() (*float32, bool) {
	if o == nil {
		return nil, false
	}
	return &o.AverageRating, true
}

// SetAverageRating sets field value
func (o *GetWinePairing200ResponseProductMatchesInner) SetAverageRating(v float32) {
	o.AverageRating = v
}

// GetDescription returns the Description field value if set, zero value otherwise.
func (o *GetWinePairing200ResponseProductMatchesInner) GetDescription() string {
	if o == nil || IsNil(o.Description) {
		var ret string
		return ret
	}
	return *o.Description
}

// GetDescriptionOk returns a tuple with the Description field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *GetWinePairing200ResponseProductMatchesInner) GetDescriptionOk() (*string, bool) {
	if o == nil || IsNil(o.Description) {
		return nil, false
	}
	return o.Description, true
}

// HasDescription returns a boolean if a field has been set.
func (o *GetWinePairing200ResponseProductMatchesInner) HasDescription() bool {
	if o != nil && !IsNil(o.Description) {
		return true
	}

	return false
}

// SetDescription gets a reference to the given string and assigns it to the Description field.
func (o *GetWinePairing200ResponseProductMatchesInner) SetDescription(v string) {
	o.Description = &v
}

// GetImageUrl returns the ImageUrl field value
func (o *GetWinePairing200ResponseProductMatchesInner) GetImageUrl() string {
	if o == nil {
		var ret string
		return ret
	}

	return o.ImageUrl
}

// GetImageUrlOk returns a tuple with the ImageUrl field value
// and a boolean to check if the value has been set.
func (o *GetWinePairing200ResponseProductMatchesInner) GetImageUrlOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return &o.ImageUrl, true
}

// SetImageUrl sets field value
func (o *GetWinePairing200ResponseProductMatchesInner) SetImageUrl(v string) {
	o.ImageUrl = v
}

// GetLink returns the Link field value
func (o *GetWinePairing200ResponseProductMatchesInner) GetLink() string {
	if o == nil {
		var ret string
		return ret
	}

	return o.Link
}

// GetLinkOk returns a tuple with the Link field value
// and a boolean to check if the value has been set.
func (o *GetWinePairing200ResponseProductMatchesInner) GetLinkOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return &o.Link, true
}

// SetLink sets field value
func (o *GetWinePairing200ResponseProductMatchesInner) SetLink(v string) {
	o.Link = v
}

// GetPrice returns the Price field value
func (o *GetWinePairing200ResponseProductMatchesInner) GetPrice() string {
	if o == nil {
		var ret string
		return ret
	}

	return o.Price
}

// GetPriceOk returns a tuple with the Price field value
// and a boolean to check if the value has been set.
func (o *GetWinePairing200ResponseProductMatchesInner) GetPriceOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return &o.Price, true
}

// SetPrice sets field value
func (o *GetWinePairing200ResponseProductMatchesInner) SetPrice(v string) {
	o.Price = v
}

// GetRatingCount returns the RatingCount field value
func (o *GetWinePairing200ResponseProductMatchesInner) GetRatingCount() int32 {
	if o == nil {
		var ret int32
		return ret
	}

	return o.RatingCount
}

// GetRatingCountOk returns a tuple with the RatingCount field value
// and a boolean to check if the value has been set.
func (o *GetWinePairing200ResponseProductMatchesInner) GetRatingCountOk() (*int32, bool) {
	if o == nil {
		return nil, false
	}
	return &o.RatingCount, true
}

// SetRatingCount sets field value
func (o *GetWinePairing200ResponseProductMatchesInner) SetRatingCount(v int32) {
	o.RatingCount = v
}

// GetScore returns the Score field value
func (o *GetWinePairing200ResponseProductMatchesInner) GetScore() float32 {
	if o == nil {
		var ret float32
		return ret
	}

	return o.Score
}

// GetScoreOk returns a tuple with the Score field value
// and a boolean to check if the value has been set.
func (o *GetWinePairing200ResponseProductMatchesInner) GetScoreOk() (*float32, bool) {
	if o == nil {
		return nil, false
	}
	return &o.Score, true
}

// SetScore sets field value
func (o *GetWinePairing200ResponseProductMatchesInner) SetScore(v float32) {
	o.Score = v
}

func (o GetWinePairing200ResponseProductMatchesInner) MarshalJSON() ([]byte, error) {
	toSerialize,err := o.ToMap()
	if err != nil {
		return []byte{}, err
	}
	return json.Marshal(toSerialize)
}

func (o GetWinePairing200ResponseProductMatchesInner) ToMap() (map[string]interface{}, error) {
	toSerialize := map[string]interface{}{}
	toSerialize["id"] = o.Id
	toSerialize["title"] = o.Title
	toSerialize["averageRating"] = o.AverageRating
	if !IsNil(o.Description) {
		toSerialize["description"] = o.Description
	}
	toSerialize["imageUrl"] = o.ImageUrl
	toSerialize["link"] = o.Link
	toSerialize["price"] = o.Price
	toSerialize["ratingCount"] = o.RatingCount
	toSerialize["score"] = o.Score
	return toSerialize, nil
}

func (o *GetWinePairing200ResponseProductMatchesInner) UnmarshalJSON(data []byte) (err error) {
	// This validates that all required properties are included in the JSON object
	// by unmarshalling the object into a generic map with string keys and checking
	// that every required field exists as a key in the generic map.
	requiredProperties := []string{
		"id",
		"title",
		"averageRating",
		"imageUrl",
		"link",
		"price",
		"ratingCount",
		"score",
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

	varGetWinePairing200ResponseProductMatchesInner := _GetWinePairing200ResponseProductMatchesInner{}

	decoder := json.NewDecoder(bytes.NewReader(data))
	decoder.DisallowUnknownFields()
	err = decoder.Decode(&varGetWinePairing200ResponseProductMatchesInner)

	if err != nil {
		return err
	}

	*o = GetWinePairing200ResponseProductMatchesInner(varGetWinePairing200ResponseProductMatchesInner)

	return err
}

type NullableGetWinePairing200ResponseProductMatchesInner struct {
	value *GetWinePairing200ResponseProductMatchesInner
	isSet bool
}

func (v NullableGetWinePairing200ResponseProductMatchesInner) Get() *GetWinePairing200ResponseProductMatchesInner {
	return v.value
}

func (v *NullableGetWinePairing200ResponseProductMatchesInner) Set(val *GetWinePairing200ResponseProductMatchesInner) {
	v.value = val
	v.isSet = true
}

func (v NullableGetWinePairing200ResponseProductMatchesInner) IsSet() bool {
	return v.isSet
}

func (v *NullableGetWinePairing200ResponseProductMatchesInner) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableGetWinePairing200ResponseProductMatchesInner(val *GetWinePairing200ResponseProductMatchesInner) *NullableGetWinePairing200ResponseProductMatchesInner {
	return &NullableGetWinePairing200ResponseProductMatchesInner{value: val, isSet: true}
}

func (v NullableGetWinePairing200ResponseProductMatchesInner) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableGetWinePairing200ResponseProductMatchesInner) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


