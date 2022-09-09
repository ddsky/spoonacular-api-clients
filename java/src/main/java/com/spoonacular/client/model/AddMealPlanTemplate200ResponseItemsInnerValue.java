/*
 * spoonacular API
 * The spoonacular Nutrition, Recipe, and Food API allows you to access over 380,000 recipes, thousands of ingredients, 800,000 food products, and 100,000 menu items. Our food ontology and semantic recipe search engine makes it possible to search for recipes using natural language queries, such as \"gluten free brownies without sugar\" or \"low fat vegan cupcakes.\" You can automatically calculate the nutritional information for any recipe, analyze recipe costs, visualize ingredient lists, find recipes for what's in your fridge, find recipes based on special diets, nutritional requirements, or favorite ingredients, classify recipes into types and cuisines, convert ingredient amounts, or even compute an entire meal plan. With our powerful API, you can create many kinds of food and especially nutrition apps.  Special diets/dietary requirements currently available include: vegan, vegetarian, pescetarian, gluten free, grain free, dairy free, high protein, whole 30, low sodium, low carb, Paleo, ketogenic, FODMAP, and Primal.
 *
 * The version of the OpenAPI document: 1.1
 * Contact: mail@spoonacular.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */


package com.spoonacular.client.model;

import java.util.Objects;
import java.util.Arrays;
import com.google.gson.TypeAdapter;
import com.google.gson.annotations.JsonAdapter;
import com.google.gson.annotations.SerializedName;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.io.IOException;
import java.math.BigDecimal;

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

import java.lang.reflect.Type;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

import com.spoonacular.client.JSON;

/**
 * AddMealPlanTemplate200ResponseItemsInnerValue
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", date = "2022-09-09T18:25:28.115+02:00[Europe/Berlin]")
public class AddMealPlanTemplate200ResponseItemsInnerValue {
  public static final String SERIALIZED_NAME_ID = "id";
  @SerializedName(SERIALIZED_NAME_ID)
  private Integer id;

  public static final String SERIALIZED_NAME_SERVINGS = "servings";
  @SerializedName(SERIALIZED_NAME_SERVINGS)
  private BigDecimal servings;

  public static final String SERIALIZED_NAME_TITLE = "title";
  @SerializedName(SERIALIZED_NAME_TITLE)
  private String title;

  public static final String SERIALIZED_NAME_IMAGE_TYPE = "imageType";
  @SerializedName(SERIALIZED_NAME_IMAGE_TYPE)
  private String imageType;

  public AddMealPlanTemplate200ResponseItemsInnerValue() { 
  }

  public AddMealPlanTemplate200ResponseItemsInnerValue id(Integer id) {
    
    this.id = id;
    return this;
  }

   /**
   * Get id
   * @return id
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public Integer getId() {
    return id;
  }


  public void setId(Integer id) {
    this.id = id;
  }


  public AddMealPlanTemplate200ResponseItemsInnerValue servings(BigDecimal servings) {
    
    this.servings = servings;
    return this;
  }

   /**
   * Get servings
   * @return servings
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public BigDecimal getServings() {
    return servings;
  }


  public void setServings(BigDecimal servings) {
    this.servings = servings;
  }


  public AddMealPlanTemplate200ResponseItemsInnerValue title(String title) {
    
    this.title = title;
    return this;
  }

   /**
   * Get title
   * @return title
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public String getTitle() {
    return title;
  }


  public void setTitle(String title) {
    this.title = title;
  }


  public AddMealPlanTemplate200ResponseItemsInnerValue imageType(String imageType) {
    
    this.imageType = imageType;
    return this;
  }

   /**
   * Get imageType
   * @return imageType
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public String getImageType() {
    return imageType;
  }


  public void setImageType(String imageType) {
    this.imageType = imageType;
  }



  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    AddMealPlanTemplate200ResponseItemsInnerValue addMealPlanTemplate200ResponseItemsInnerValue = (AddMealPlanTemplate200ResponseItemsInnerValue) o;
    return Objects.equals(this.id, addMealPlanTemplate200ResponseItemsInnerValue.id) &&
        Objects.equals(this.servings, addMealPlanTemplate200ResponseItemsInnerValue.servings) &&
        Objects.equals(this.title, addMealPlanTemplate200ResponseItemsInnerValue.title) &&
        Objects.equals(this.imageType, addMealPlanTemplate200ResponseItemsInnerValue.imageType);
  }

  @Override
  public int hashCode() {
    return Objects.hash(id, servings, title, imageType);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class AddMealPlanTemplate200ResponseItemsInnerValue {\n");
    sb.append("    id: ").append(toIndentedString(id)).append("\n");
    sb.append("    servings: ").append(toIndentedString(servings)).append("\n");
    sb.append("    title: ").append(toIndentedString(title)).append("\n");
    sb.append("    imageType: ").append(toIndentedString(imageType)).append("\n");
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
    openapiFields.add("id");
    openapiFields.add("servings");
    openapiFields.add("title");
    openapiFields.add("imageType");

    // a set of required properties/fields (JSON key names)
    openapiRequiredFields = new HashSet<String>();
  }

 /**
  * Validates the JSON Object and throws an exception if issues found
  *
  * @param jsonObj JSON Object
  * @throws IOException if the JSON Object is invalid with respect to AddMealPlanTemplate200ResponseItemsInnerValue
  */
  public static void validateJsonObject(JsonObject jsonObj) throws IOException {
      if (jsonObj == null) {
        if (AddMealPlanTemplate200ResponseItemsInnerValue.openapiRequiredFields.isEmpty()) {
          return;
        } else { // has required fields
          throw new IllegalArgumentException(String.format("The required field(s) %s in AddMealPlanTemplate200ResponseItemsInnerValue is not found in the empty JSON string", AddMealPlanTemplate200ResponseItemsInnerValue.openapiRequiredFields.toString()));
        }
      }

      Set<Entry<String, JsonElement>> entries = jsonObj.entrySet();
      // check to see if the JSON string contains additional fields
      for (Entry<String, JsonElement> entry : entries) {
        if (!AddMealPlanTemplate200ResponseItemsInnerValue.openapiFields.contains(entry.getKey())) {
          throw new IllegalArgumentException(String.format("The field `%s` in the JSON string is not defined in the `AddMealPlanTemplate200ResponseItemsInnerValue` properties. JSON: %s", entry.getKey(), jsonObj.toString()));
        }
      }
      if (jsonObj.get("title") != null && !jsonObj.get("title").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `title` to be a primitive type in the JSON string but got `%s`", jsonObj.get("title").toString()));
      }
      if (jsonObj.get("imageType") != null && !jsonObj.get("imageType").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `imageType` to be a primitive type in the JSON string but got `%s`", jsonObj.get("imageType").toString()));
      }
  }

  public static class CustomTypeAdapterFactory implements TypeAdapterFactory {
    @SuppressWarnings("unchecked")
    @Override
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> type) {
       if (!AddMealPlanTemplate200ResponseItemsInnerValue.class.isAssignableFrom(type.getRawType())) {
         return null; // this class only serializes 'AddMealPlanTemplate200ResponseItemsInnerValue' and its subtypes
       }
       final TypeAdapter<JsonElement> elementAdapter = gson.getAdapter(JsonElement.class);
       final TypeAdapter<AddMealPlanTemplate200ResponseItemsInnerValue> thisAdapter
                        = gson.getDelegateAdapter(this, TypeToken.get(AddMealPlanTemplate200ResponseItemsInnerValue.class));

       return (TypeAdapter<T>) new TypeAdapter<AddMealPlanTemplate200ResponseItemsInnerValue>() {
           @Override
           public void write(JsonWriter out, AddMealPlanTemplate200ResponseItemsInnerValue value) throws IOException {
             JsonObject obj = thisAdapter.toJsonTree(value).getAsJsonObject();
             elementAdapter.write(out, obj);
           }

           @Override
           public AddMealPlanTemplate200ResponseItemsInnerValue read(JsonReader in) throws IOException {
             JsonObject jsonObj = elementAdapter.read(in).getAsJsonObject();
             validateJsonObject(jsonObj);
             return thisAdapter.fromJsonTree(jsonObj);
           }

       }.nullSafe();
    }
  }

 /**
  * Create an instance of AddMealPlanTemplate200ResponseItemsInnerValue given an JSON string
  *
  * @param jsonString JSON string
  * @return An instance of AddMealPlanTemplate200ResponseItemsInnerValue
  * @throws IOException if the JSON string is invalid with respect to AddMealPlanTemplate200ResponseItemsInnerValue
  */
  public static AddMealPlanTemplate200ResponseItemsInnerValue fromJson(String jsonString) throws IOException {
    return JSON.getGson().fromJson(jsonString, AddMealPlanTemplate200ResponseItemsInnerValue.class);
  }

 /**
  * Convert an instance of AddMealPlanTemplate200ResponseItemsInnerValue to an JSON string
  *
  * @return JSON string
  */
  public String toJson() {
    return JSON.getGson().toJson(this);
  }
}

