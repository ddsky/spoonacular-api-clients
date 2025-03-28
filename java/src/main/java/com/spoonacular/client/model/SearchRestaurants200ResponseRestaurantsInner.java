/*
 * spoonacular API
 * The spoonacular Nutrition, Recipe, and Food API allows you to access over thousands of recipes, thousands of ingredients, 800,000 food products, over 100,000 menu items, and restaurants. Our food ontology and semantic recipe search engine makes it possible to search for recipes using natural language queries, such as \"gluten free brownies without sugar\" or \"low fat vegan cupcakes.\" You can automatically calculate the nutritional information for any recipe, analyze recipe costs, visualize ingredient lists, find recipes for what's in your fridge, find recipes based on special diets, nutritional requirements, or favorite ingredients, classify recipes into types and cuisines, convert ingredient amounts, or even compute an entire meal plan. With our powerful API, you can create many kinds of food and especially nutrition apps.  Special diets/dietary requirements currently available include: vegan, vegetarian, pescetarian, gluten free, grain free, dairy free, high protein, whole 30, low sodium, low carb, Paleo, ketogenic, FODMAP, and Primal.
 *
 * The version of the OpenAPI document: 2.0.2
 * Contact: mail@spoonacular.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */


package com.spoonacular.client.model;

import java.util.Objects;
import com.google.gson.TypeAdapter;
import com.google.gson.annotations.JsonAdapter;
import com.google.gson.annotations.SerializedName;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import com.spoonacular.client.model.SearchRestaurants200ResponseRestaurantsInnerAddress;
import com.spoonacular.client.model.SearchRestaurants200ResponseRestaurantsInnerLocalHours;
import java.io.IOException;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonArray;
import com.google.gson.JsonDeserializationContext;
import com.google.gson.JsonDeserializer;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParseException;
import com.google.gson.TypeAdapterFactory;
import com.google.gson.reflect.TypeToken;
import com.google.gson.TypeAdapter;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;

import java.lang.reflect.Type;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import com.spoonacular.client.JSON;

/**
 * SearchRestaurants200ResponseRestaurantsInner
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", comments = "Generator version: 7.8.0-SNAPSHOT")
public class SearchRestaurants200ResponseRestaurantsInner {
  public static final String SERIALIZED_NAME_ID = "_id";
  @SerializedName(SERIALIZED_NAME_ID)
  private String id;

  public static final String SERIALIZED_NAME_NAME = "name";
  @SerializedName(SERIALIZED_NAME_NAME)
  private String name;

  public static final String SERIALIZED_NAME_PHONE_NUMBER = "phone_number";
  @SerializedName(SERIALIZED_NAME_PHONE_NUMBER)
  private Integer phoneNumber;

  public static final String SERIALIZED_NAME_ADDRESS = "address";
  @SerializedName(SERIALIZED_NAME_ADDRESS)
  private SearchRestaurants200ResponseRestaurantsInnerAddress address;

  public static final String SERIALIZED_NAME_TYPE = "type";
  @SerializedName(SERIALIZED_NAME_TYPE)
  private String type;

  public static final String SERIALIZED_NAME_DESCRIPTION = "description";
  @SerializedName(SERIALIZED_NAME_DESCRIPTION)
  private String description;

  public static final String SERIALIZED_NAME_LOCAL_HOURS = "local_hours";
  @SerializedName(SERIALIZED_NAME_LOCAL_HOURS)
  private SearchRestaurants200ResponseRestaurantsInnerLocalHours localHours;

  public static final String SERIALIZED_NAME_CUISINES = "cuisines";
  @SerializedName(SERIALIZED_NAME_CUISINES)
  private List<String> cuisines = new ArrayList<>();

  public static final String SERIALIZED_NAME_FOOD_PHOTOS = "food_photos";
  @SerializedName(SERIALIZED_NAME_FOOD_PHOTOS)
  private List<String> foodPhotos = new ArrayList<>();

  public static final String SERIALIZED_NAME_LOGO_PHOTOS = "logo_photos";
  @SerializedName(SERIALIZED_NAME_LOGO_PHOTOS)
  private List<String> logoPhotos = new ArrayList<>();

  public static final String SERIALIZED_NAME_STORE_PHOTOS = "store_photos";
  @SerializedName(SERIALIZED_NAME_STORE_PHOTOS)
  private List<String> storePhotos = new ArrayList<>();

  public static final String SERIALIZED_NAME_DOLLAR_SIGNS = "dollar_signs";
  @SerializedName(SERIALIZED_NAME_DOLLAR_SIGNS)
  private Integer dollarSigns;

  public static final String SERIALIZED_NAME_PICKUP_ENABLED = "pickup_enabled";
  @SerializedName(SERIALIZED_NAME_PICKUP_ENABLED)
  private Boolean pickupEnabled;

  public static final String SERIALIZED_NAME_DELIVERY_ENABLED = "delivery_enabled";
  @SerializedName(SERIALIZED_NAME_DELIVERY_ENABLED)
  private Boolean deliveryEnabled;

  public static final String SERIALIZED_NAME_IS_OPEN = "is_open";
  @SerializedName(SERIALIZED_NAME_IS_OPEN)
  private Boolean isOpen;

  public static final String SERIALIZED_NAME_OFFERS_FIRST_PARTY_DELIVERY = "offers_first_party_delivery";
  @SerializedName(SERIALIZED_NAME_OFFERS_FIRST_PARTY_DELIVERY)
  private Boolean offersFirstPartyDelivery;

  public static final String SERIALIZED_NAME_OFFERS_THIRD_PARTY_DELIVERY = "offers_third_party_delivery";
  @SerializedName(SERIALIZED_NAME_OFFERS_THIRD_PARTY_DELIVERY)
  private Boolean offersThirdPartyDelivery;

  public static final String SERIALIZED_NAME_MILES = "miles";
  @SerializedName(SERIALIZED_NAME_MILES)
  private BigDecimal miles;

  public static final String SERIALIZED_NAME_WEIGHTED_RATING_VALUE = "weighted_rating_value";
  @SerializedName(SERIALIZED_NAME_WEIGHTED_RATING_VALUE)
  private BigDecimal weightedRatingValue;

  public static final String SERIALIZED_NAME_AGGREGATED_RATING_COUNT = "aggregated_rating_count";
  @SerializedName(SERIALIZED_NAME_AGGREGATED_RATING_COUNT)
  private Integer aggregatedRatingCount;

  public SearchRestaurants200ResponseRestaurantsInner() {
  }

  public SearchRestaurants200ResponseRestaurantsInner id(String id) {
    this.id = id;
    return this;
  }

  /**
   * Get id
   * @return id
   */
  @javax.annotation.Nullable
  public String getId() {
    return id;
  }

  public void setId(String id) {
    this.id = id;
  }


  public SearchRestaurants200ResponseRestaurantsInner name(String name) {
    this.name = name;
    return this;
  }

  /**
   * Get name
   * @return name
   */
  @javax.annotation.Nullable
  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }


  public SearchRestaurants200ResponseRestaurantsInner phoneNumber(Integer phoneNumber) {
    this.phoneNumber = phoneNumber;
    return this;
  }

  /**
   * Get phoneNumber
   * @return phoneNumber
   */
  @javax.annotation.Nullable
  public Integer getPhoneNumber() {
    return phoneNumber;
  }

  public void setPhoneNumber(Integer phoneNumber) {
    this.phoneNumber = phoneNumber;
  }


  public SearchRestaurants200ResponseRestaurantsInner address(SearchRestaurants200ResponseRestaurantsInnerAddress address) {
    this.address = address;
    return this;
  }

  /**
   * Get address
   * @return address
   */
  @javax.annotation.Nullable
  public SearchRestaurants200ResponseRestaurantsInnerAddress getAddress() {
    return address;
  }

  public void setAddress(SearchRestaurants200ResponseRestaurantsInnerAddress address) {
    this.address = address;
  }


  public SearchRestaurants200ResponseRestaurantsInner type(String type) {
    this.type = type;
    return this;
  }

  /**
   * Get type
   * @return type
   */
  @javax.annotation.Nullable
  public String getType() {
    return type;
  }

  public void setType(String type) {
    this.type = type;
  }


  public SearchRestaurants200ResponseRestaurantsInner description(String description) {
    this.description = description;
    return this;
  }

  /**
   * Get description
   * @return description
   */
  @javax.annotation.Nullable
  public String getDescription() {
    return description;
  }

  public void setDescription(String description) {
    this.description = description;
  }


  public SearchRestaurants200ResponseRestaurantsInner localHours(SearchRestaurants200ResponseRestaurantsInnerLocalHours localHours) {
    this.localHours = localHours;
    return this;
  }

  /**
   * Get localHours
   * @return localHours
   */
  @javax.annotation.Nullable
  public SearchRestaurants200ResponseRestaurantsInnerLocalHours getLocalHours() {
    return localHours;
  }

  public void setLocalHours(SearchRestaurants200ResponseRestaurantsInnerLocalHours localHours) {
    this.localHours = localHours;
  }


  public SearchRestaurants200ResponseRestaurantsInner cuisines(List<String> cuisines) {
    this.cuisines = cuisines;
    return this;
  }

  public SearchRestaurants200ResponseRestaurantsInner addCuisinesItem(String cuisinesItem) {
    if (this.cuisines == null) {
      this.cuisines = new ArrayList<>();
    }
    this.cuisines.add(cuisinesItem);
    return this;
  }

  /**
   * Get cuisines
   * @return cuisines
   */
  @javax.annotation.Nullable
  public List<String> getCuisines() {
    return cuisines;
  }

  public void setCuisines(List<String> cuisines) {
    this.cuisines = cuisines;
  }


  public SearchRestaurants200ResponseRestaurantsInner foodPhotos(List<String> foodPhotos) {
    this.foodPhotos = foodPhotos;
    return this;
  }

  public SearchRestaurants200ResponseRestaurantsInner addFoodPhotosItem(String foodPhotosItem) {
    if (this.foodPhotos == null) {
      this.foodPhotos = new ArrayList<>();
    }
    this.foodPhotos.add(foodPhotosItem);
    return this;
  }

  /**
   * Get foodPhotos
   * @return foodPhotos
   */
  @javax.annotation.Nullable
  public List<String> getFoodPhotos() {
    return foodPhotos;
  }

  public void setFoodPhotos(List<String> foodPhotos) {
    this.foodPhotos = foodPhotos;
  }


  public SearchRestaurants200ResponseRestaurantsInner logoPhotos(List<String> logoPhotos) {
    this.logoPhotos = logoPhotos;
    return this;
  }

  public SearchRestaurants200ResponseRestaurantsInner addLogoPhotosItem(String logoPhotosItem) {
    if (this.logoPhotos == null) {
      this.logoPhotos = new ArrayList<>();
    }
    this.logoPhotos.add(logoPhotosItem);
    return this;
  }

  /**
   * Get logoPhotos
   * @return logoPhotos
   */
  @javax.annotation.Nullable
  public List<String> getLogoPhotos() {
    return logoPhotos;
  }

  public void setLogoPhotos(List<String> logoPhotos) {
    this.logoPhotos = logoPhotos;
  }


  public SearchRestaurants200ResponseRestaurantsInner storePhotos(List<String> storePhotos) {
    this.storePhotos = storePhotos;
    return this;
  }

  public SearchRestaurants200ResponseRestaurantsInner addStorePhotosItem(String storePhotosItem) {
    if (this.storePhotos == null) {
      this.storePhotos = new ArrayList<>();
    }
    this.storePhotos.add(storePhotosItem);
    return this;
  }

  /**
   * Get storePhotos
   * @return storePhotos
   */
  @javax.annotation.Nullable
  public List<String> getStorePhotos() {
    return storePhotos;
  }

  public void setStorePhotos(List<String> storePhotos) {
    this.storePhotos = storePhotos;
  }


  public SearchRestaurants200ResponseRestaurantsInner dollarSigns(Integer dollarSigns) {
    this.dollarSigns = dollarSigns;
    return this;
  }

  /**
   * Get dollarSigns
   * @return dollarSigns
   */
  @javax.annotation.Nullable
  public Integer getDollarSigns() {
    return dollarSigns;
  }

  public void setDollarSigns(Integer dollarSigns) {
    this.dollarSigns = dollarSigns;
  }


  public SearchRestaurants200ResponseRestaurantsInner pickupEnabled(Boolean pickupEnabled) {
    this.pickupEnabled = pickupEnabled;
    return this;
  }

  /**
   * Get pickupEnabled
   * @return pickupEnabled
   */
  @javax.annotation.Nullable
  public Boolean getPickupEnabled() {
    return pickupEnabled;
  }

  public void setPickupEnabled(Boolean pickupEnabled) {
    this.pickupEnabled = pickupEnabled;
  }


  public SearchRestaurants200ResponseRestaurantsInner deliveryEnabled(Boolean deliveryEnabled) {
    this.deliveryEnabled = deliveryEnabled;
    return this;
  }

  /**
   * Get deliveryEnabled
   * @return deliveryEnabled
   */
  @javax.annotation.Nullable
  public Boolean getDeliveryEnabled() {
    return deliveryEnabled;
  }

  public void setDeliveryEnabled(Boolean deliveryEnabled) {
    this.deliveryEnabled = deliveryEnabled;
  }


  public SearchRestaurants200ResponseRestaurantsInner isOpen(Boolean isOpen) {
    this.isOpen = isOpen;
    return this;
  }

  /**
   * Get isOpen
   * @return isOpen
   */
  @javax.annotation.Nullable
  public Boolean getIsOpen() {
    return isOpen;
  }

  public void setIsOpen(Boolean isOpen) {
    this.isOpen = isOpen;
  }


  public SearchRestaurants200ResponseRestaurantsInner offersFirstPartyDelivery(Boolean offersFirstPartyDelivery) {
    this.offersFirstPartyDelivery = offersFirstPartyDelivery;
    return this;
  }

  /**
   * Get offersFirstPartyDelivery
   * @return offersFirstPartyDelivery
   */
  @javax.annotation.Nullable
  public Boolean getOffersFirstPartyDelivery() {
    return offersFirstPartyDelivery;
  }

  public void setOffersFirstPartyDelivery(Boolean offersFirstPartyDelivery) {
    this.offersFirstPartyDelivery = offersFirstPartyDelivery;
  }


  public SearchRestaurants200ResponseRestaurantsInner offersThirdPartyDelivery(Boolean offersThirdPartyDelivery) {
    this.offersThirdPartyDelivery = offersThirdPartyDelivery;
    return this;
  }

  /**
   * Get offersThirdPartyDelivery
   * @return offersThirdPartyDelivery
   */
  @javax.annotation.Nullable
  public Boolean getOffersThirdPartyDelivery() {
    return offersThirdPartyDelivery;
  }

  public void setOffersThirdPartyDelivery(Boolean offersThirdPartyDelivery) {
    this.offersThirdPartyDelivery = offersThirdPartyDelivery;
  }


  public SearchRestaurants200ResponseRestaurantsInner miles(BigDecimal miles) {
    this.miles = miles;
    return this;
  }

  /**
   * Get miles
   * @return miles
   */
  @javax.annotation.Nullable
  public BigDecimal getMiles() {
    return miles;
  }

  public void setMiles(BigDecimal miles) {
    this.miles = miles;
  }


  public SearchRestaurants200ResponseRestaurantsInner weightedRatingValue(BigDecimal weightedRatingValue) {
    this.weightedRatingValue = weightedRatingValue;
    return this;
  }

  /**
   * Get weightedRatingValue
   * @return weightedRatingValue
   */
  @javax.annotation.Nullable
  public BigDecimal getWeightedRatingValue() {
    return weightedRatingValue;
  }

  public void setWeightedRatingValue(BigDecimal weightedRatingValue) {
    this.weightedRatingValue = weightedRatingValue;
  }


  public SearchRestaurants200ResponseRestaurantsInner aggregatedRatingCount(Integer aggregatedRatingCount) {
    this.aggregatedRatingCount = aggregatedRatingCount;
    return this;
  }

  /**
   * Get aggregatedRatingCount
   * @return aggregatedRatingCount
   */
  @javax.annotation.Nullable
  public Integer getAggregatedRatingCount() {
    return aggregatedRatingCount;
  }

  public void setAggregatedRatingCount(Integer aggregatedRatingCount) {
    this.aggregatedRatingCount = aggregatedRatingCount;
  }



  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    SearchRestaurants200ResponseRestaurantsInner searchRestaurants200ResponseRestaurantsInner = (SearchRestaurants200ResponseRestaurantsInner) o;
    return Objects.equals(this.id, searchRestaurants200ResponseRestaurantsInner.id) &&
        Objects.equals(this.name, searchRestaurants200ResponseRestaurantsInner.name) &&
        Objects.equals(this.phoneNumber, searchRestaurants200ResponseRestaurantsInner.phoneNumber) &&
        Objects.equals(this.address, searchRestaurants200ResponseRestaurantsInner.address) &&
        Objects.equals(this.type, searchRestaurants200ResponseRestaurantsInner.type) &&
        Objects.equals(this.description, searchRestaurants200ResponseRestaurantsInner.description) &&
        Objects.equals(this.localHours, searchRestaurants200ResponseRestaurantsInner.localHours) &&
        Objects.equals(this.cuisines, searchRestaurants200ResponseRestaurantsInner.cuisines) &&
        Objects.equals(this.foodPhotos, searchRestaurants200ResponseRestaurantsInner.foodPhotos) &&
        Objects.equals(this.logoPhotos, searchRestaurants200ResponseRestaurantsInner.logoPhotos) &&
        Objects.equals(this.storePhotos, searchRestaurants200ResponseRestaurantsInner.storePhotos) &&
        Objects.equals(this.dollarSigns, searchRestaurants200ResponseRestaurantsInner.dollarSigns) &&
        Objects.equals(this.pickupEnabled, searchRestaurants200ResponseRestaurantsInner.pickupEnabled) &&
        Objects.equals(this.deliveryEnabled, searchRestaurants200ResponseRestaurantsInner.deliveryEnabled) &&
        Objects.equals(this.isOpen, searchRestaurants200ResponseRestaurantsInner.isOpen) &&
        Objects.equals(this.offersFirstPartyDelivery, searchRestaurants200ResponseRestaurantsInner.offersFirstPartyDelivery) &&
        Objects.equals(this.offersThirdPartyDelivery, searchRestaurants200ResponseRestaurantsInner.offersThirdPartyDelivery) &&
        Objects.equals(this.miles, searchRestaurants200ResponseRestaurantsInner.miles) &&
        Objects.equals(this.weightedRatingValue, searchRestaurants200ResponseRestaurantsInner.weightedRatingValue) &&
        Objects.equals(this.aggregatedRatingCount, searchRestaurants200ResponseRestaurantsInner.aggregatedRatingCount);
  }

  @Override
  public int hashCode() {
    return Objects.hash(id, name, phoneNumber, address, type, description, localHours, cuisines, foodPhotos, logoPhotos, storePhotos, dollarSigns, pickupEnabled, deliveryEnabled, isOpen, offersFirstPartyDelivery, offersThirdPartyDelivery, miles, weightedRatingValue, aggregatedRatingCount);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class SearchRestaurants200ResponseRestaurantsInner {\n");
    sb.append("    id: ").append(toIndentedString(id)).append("\n");
    sb.append("    name: ").append(toIndentedString(name)).append("\n");
    sb.append("    phoneNumber: ").append(toIndentedString(phoneNumber)).append("\n");
    sb.append("    address: ").append(toIndentedString(address)).append("\n");
    sb.append("    type: ").append(toIndentedString(type)).append("\n");
    sb.append("    description: ").append(toIndentedString(description)).append("\n");
    sb.append("    localHours: ").append(toIndentedString(localHours)).append("\n");
    sb.append("    cuisines: ").append(toIndentedString(cuisines)).append("\n");
    sb.append("    foodPhotos: ").append(toIndentedString(foodPhotos)).append("\n");
    sb.append("    logoPhotos: ").append(toIndentedString(logoPhotos)).append("\n");
    sb.append("    storePhotos: ").append(toIndentedString(storePhotos)).append("\n");
    sb.append("    dollarSigns: ").append(toIndentedString(dollarSigns)).append("\n");
    sb.append("    pickupEnabled: ").append(toIndentedString(pickupEnabled)).append("\n");
    sb.append("    deliveryEnabled: ").append(toIndentedString(deliveryEnabled)).append("\n");
    sb.append("    isOpen: ").append(toIndentedString(isOpen)).append("\n");
    sb.append("    offersFirstPartyDelivery: ").append(toIndentedString(offersFirstPartyDelivery)).append("\n");
    sb.append("    offersThirdPartyDelivery: ").append(toIndentedString(offersThirdPartyDelivery)).append("\n");
    sb.append("    miles: ").append(toIndentedString(miles)).append("\n");
    sb.append("    weightedRatingValue: ").append(toIndentedString(weightedRatingValue)).append("\n");
    sb.append("    aggregatedRatingCount: ").append(toIndentedString(aggregatedRatingCount)).append("\n");
    sb.append("}");
    return sb.toString();
  }

  /**
   * Convert the given object to string with each line indented by 4 spaces
   * (except the first line).
   */
  private String toIndentedString(Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }


  public static HashSet<String> openapiFields;
  public static HashSet<String> openapiRequiredFields;

  static {
    // a set of all properties/fields (JSON key names)
    openapiFields = new HashSet<String>();
    openapiFields.add("_id");
    openapiFields.add("name");
    openapiFields.add("phone_number");
    openapiFields.add("address");
    openapiFields.add("type");
    openapiFields.add("description");
    openapiFields.add("local_hours");
    openapiFields.add("cuisines");
    openapiFields.add("food_photos");
    openapiFields.add("logo_photos");
    openapiFields.add("store_photos");
    openapiFields.add("dollar_signs");
    openapiFields.add("pickup_enabled");
    openapiFields.add("delivery_enabled");
    openapiFields.add("is_open");
    openapiFields.add("offers_first_party_delivery");
    openapiFields.add("offers_third_party_delivery");
    openapiFields.add("miles");
    openapiFields.add("weighted_rating_value");
    openapiFields.add("aggregated_rating_count");

    // a set of required properties/fields (JSON key names)
    openapiRequiredFields = new HashSet<String>();
  }

  /**
   * Validates the JSON Element and throws an exception if issues found
   *
   * @param jsonElement JSON Element
   * @throws IOException if the JSON Element is invalid with respect to SearchRestaurants200ResponseRestaurantsInner
   */
  public static void validateJsonElement(JsonElement jsonElement) throws IOException {
      if (jsonElement == null) {
        if (!SearchRestaurants200ResponseRestaurantsInner.openapiRequiredFields.isEmpty()) { // has required fields but JSON element is null
          throw new IllegalArgumentException(String.format("The required field(s) %s in SearchRestaurants200ResponseRestaurantsInner is not found in the empty JSON string", SearchRestaurants200ResponseRestaurantsInner.openapiRequiredFields.toString()));
        }
      }

      Set<Map.Entry<String, JsonElement>> entries = jsonElement.getAsJsonObject().entrySet();
      // check to see if the JSON string contains additional fields
      for (Map.Entry<String, JsonElement> entry : entries) {
        if (!SearchRestaurants200ResponseRestaurantsInner.openapiFields.contains(entry.getKey())) {
          throw new IllegalArgumentException(String.format("The field `%s` in the JSON string is not defined in the `SearchRestaurants200ResponseRestaurantsInner` properties. JSON: %s", entry.getKey(), jsonElement.toString()));
        }
      }
        JsonObject jsonObj = jsonElement.getAsJsonObject();
      if ((jsonObj.get("_id") != null && !jsonObj.get("_id").isJsonNull()) && !jsonObj.get("_id").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `_id` to be a primitive type in the JSON string but got `%s`", jsonObj.get("_id").toString()));
      }
      if ((jsonObj.get("name") != null && !jsonObj.get("name").isJsonNull()) && !jsonObj.get("name").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `name` to be a primitive type in the JSON string but got `%s`", jsonObj.get("name").toString()));
      }
      // validate the optional field `address`
      if (jsonObj.get("address") != null && !jsonObj.get("address").isJsonNull()) {
        SearchRestaurants200ResponseRestaurantsInnerAddress.validateJsonElement(jsonObj.get("address"));
      }
      if ((jsonObj.get("type") != null && !jsonObj.get("type").isJsonNull()) && !jsonObj.get("type").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `type` to be a primitive type in the JSON string but got `%s`", jsonObj.get("type").toString()));
      }
      if ((jsonObj.get("description") != null && !jsonObj.get("description").isJsonNull()) && !jsonObj.get("description").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `description` to be a primitive type in the JSON string but got `%s`", jsonObj.get("description").toString()));
      }
      // validate the optional field `local_hours`
      if (jsonObj.get("local_hours") != null && !jsonObj.get("local_hours").isJsonNull()) {
        SearchRestaurants200ResponseRestaurantsInnerLocalHours.validateJsonElement(jsonObj.get("local_hours"));
      }
      // ensure the optional json data is an array if present
      if (jsonObj.get("cuisines") != null && !jsonObj.get("cuisines").isJsonNull() && !jsonObj.get("cuisines").isJsonArray()) {
        throw new IllegalArgumentException(String.format("Expected the field `cuisines` to be an array in the JSON string but got `%s`", jsonObj.get("cuisines").toString()));
      }
      // ensure the optional json data is an array if present
      if (jsonObj.get("food_photos") != null && !jsonObj.get("food_photos").isJsonNull() && !jsonObj.get("food_photos").isJsonArray()) {
        throw new IllegalArgumentException(String.format("Expected the field `food_photos` to be an array in the JSON string but got `%s`", jsonObj.get("food_photos").toString()));
      }
      // ensure the optional json data is an array if present
      if (jsonObj.get("logo_photos") != null && !jsonObj.get("logo_photos").isJsonNull() && !jsonObj.get("logo_photos").isJsonArray()) {
        throw new IllegalArgumentException(String.format("Expected the field `logo_photos` to be an array in the JSON string but got `%s`", jsonObj.get("logo_photos").toString()));
      }
      // ensure the optional json data is an array if present
      if (jsonObj.get("store_photos") != null && !jsonObj.get("store_photos").isJsonNull() && !jsonObj.get("store_photos").isJsonArray()) {
        throw new IllegalArgumentException(String.format("Expected the field `store_photos` to be an array in the JSON string but got `%s`", jsonObj.get("store_photos").toString()));
      }
  }

  public static class CustomTypeAdapterFactory implements TypeAdapterFactory {
    @SuppressWarnings("unchecked")
    @Override
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> type) {
       if (!SearchRestaurants200ResponseRestaurantsInner.class.isAssignableFrom(type.getRawType())) {
         return null; // this class only serializes 'SearchRestaurants200ResponseRestaurantsInner' and its subtypes
       }
       final TypeAdapter<JsonElement> elementAdapter = gson.getAdapter(JsonElement.class);
       final TypeAdapter<SearchRestaurants200ResponseRestaurantsInner> thisAdapter
                        = gson.getDelegateAdapter(this, TypeToken.get(SearchRestaurants200ResponseRestaurantsInner.class));

       return (TypeAdapter<T>) new TypeAdapter<SearchRestaurants200ResponseRestaurantsInner>() {
           @Override
           public void write(JsonWriter out, SearchRestaurants200ResponseRestaurantsInner value) throws IOException {
             JsonObject obj = thisAdapter.toJsonTree(value).getAsJsonObject();
             elementAdapter.write(out, obj);
           }

           @Override
           public SearchRestaurants200ResponseRestaurantsInner read(JsonReader in) throws IOException {
             JsonElement jsonElement = elementAdapter.read(in);
             validateJsonElement(jsonElement);
             return thisAdapter.fromJsonTree(jsonElement);
           }

       }.nullSafe();
    }
  }

  /**
   * Create an instance of SearchRestaurants200ResponseRestaurantsInner given an JSON string
   *
   * @param jsonString JSON string
   * @return An instance of SearchRestaurants200ResponseRestaurantsInner
   * @throws IOException if the JSON string is invalid with respect to SearchRestaurants200ResponseRestaurantsInner
   */
  public static SearchRestaurants200ResponseRestaurantsInner fromJson(String jsonString) throws IOException {
    return JSON.getGson().fromJson(jsonString, SearchRestaurants200ResponseRestaurantsInner.class);
  }

  /**
   * Convert an instance of SearchRestaurants200ResponseRestaurantsInner to an JSON string
   *
   * @return JSON string
   */
  public String toJson() {
    return JSON.getGson().toJson(this);
  }
}

