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
 * 
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", comments = "Generator version: 7.8.0-SNAPSHOT")
public class ClassifyCuisine200Response {
  public static final String SERIALIZED_NAME_CUISINE = "cuisine";
  @SerializedName(SERIALIZED_NAME_CUISINE)
  private String cuisine;

  public static final String SERIALIZED_NAME_CUISINES = "cuisines";
  @SerializedName(SERIALIZED_NAME_CUISINES)
  private List<String> cuisines = new ArrayList<>();

  public static final String SERIALIZED_NAME_CONFIDENCE = "confidence";
  @SerializedName(SERIALIZED_NAME_CONFIDENCE)
  private BigDecimal confidence;

  public ClassifyCuisine200Response() {
  }

  public ClassifyCuisine200Response cuisine(String cuisine) {
    this.cuisine = cuisine;
    return this;
  }

  /**
   * Get cuisine
   * @return cuisine
   */
  @javax.annotation.Nonnull
  public String getCuisine() {
    return cuisine;
  }

  public void setCuisine(String cuisine) {
    this.cuisine = cuisine;
  }


  public ClassifyCuisine200Response cuisines(List<String> cuisines) {
    this.cuisines = cuisines;
    return this;
  }

  public ClassifyCuisine200Response addCuisinesItem(String cuisinesItem) {
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
  @javax.annotation.Nonnull
  public List<String> getCuisines() {
    return cuisines;
  }

  public void setCuisines(List<String> cuisines) {
    this.cuisines = cuisines;
  }


  public ClassifyCuisine200Response confidence(BigDecimal confidence) {
    this.confidence = confidence;
    return this;
  }

  /**
   * Get confidence
   * @return confidence
   */
  @javax.annotation.Nonnull
  public BigDecimal getConfidence() {
    return confidence;
  }

  public void setConfidence(BigDecimal confidence) {
    this.confidence = confidence;
  }



  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    ClassifyCuisine200Response classifyCuisine200Response = (ClassifyCuisine200Response) o;
    return Objects.equals(this.cuisine, classifyCuisine200Response.cuisine) &&
        Objects.equals(this.cuisines, classifyCuisine200Response.cuisines) &&
        Objects.equals(this.confidence, classifyCuisine200Response.confidence);
  }

  @Override
  public int hashCode() {
    return Objects.hash(cuisine, cuisines, confidence);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ClassifyCuisine200Response {\n");
    sb.append("    cuisine: ").append(toIndentedString(cuisine)).append("\n");
    sb.append("    cuisines: ").append(toIndentedString(cuisines)).append("\n");
    sb.append("    confidence: ").append(toIndentedString(confidence)).append("\n");
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
    openapiFields.add("cuisine");
    openapiFields.add("cuisines");
    openapiFields.add("confidence");

    // a set of required properties/fields (JSON key names)
    openapiRequiredFields = new HashSet<String>();
    openapiRequiredFields.add("cuisine");
    openapiRequiredFields.add("cuisines");
    openapiRequiredFields.add("confidence");
  }

  /**
   * Validates the JSON Element and throws an exception if issues found
   *
   * @param jsonElement JSON Element
   * @throws IOException if the JSON Element is invalid with respect to ClassifyCuisine200Response
   */
  public static void validateJsonElement(JsonElement jsonElement) throws IOException {
      if (jsonElement == null) {
        if (!ClassifyCuisine200Response.openapiRequiredFields.isEmpty()) { // has required fields but JSON element is null
          throw new IllegalArgumentException(String.format("The required field(s) %s in ClassifyCuisine200Response is not found in the empty JSON string", ClassifyCuisine200Response.openapiRequiredFields.toString()));
        }
      }

      Set<Map.Entry<String, JsonElement>> entries = jsonElement.getAsJsonObject().entrySet();
      // check to see if the JSON string contains additional fields
      for (Map.Entry<String, JsonElement> entry : entries) {
        if (!ClassifyCuisine200Response.openapiFields.contains(entry.getKey())) {
          throw new IllegalArgumentException(String.format("The field `%s` in the JSON string is not defined in the `ClassifyCuisine200Response` properties. JSON: %s", entry.getKey(), jsonElement.toString()));
        }
      }

      // check to make sure all required properties/fields are present in the JSON string
      for (String requiredField : ClassifyCuisine200Response.openapiRequiredFields) {
        if (jsonElement.getAsJsonObject().get(requiredField) == null) {
          throw new IllegalArgumentException(String.format("The required field `%s` is not found in the JSON string: %s", requiredField, jsonElement.toString()));
        }
      }
        JsonObject jsonObj = jsonElement.getAsJsonObject();
      if (!jsonObj.get("cuisine").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `cuisine` to be a primitive type in the JSON string but got `%s`", jsonObj.get("cuisine").toString()));
      }
      // ensure the required json array is present
      if (jsonObj.get("cuisines") == null) {
        throw new IllegalArgumentException("Expected the field `linkedContent` to be an array in the JSON string but got `null`");
      } else if (!jsonObj.get("cuisines").isJsonArray()) {
        throw new IllegalArgumentException(String.format("Expected the field `cuisines` to be an array in the JSON string but got `%s`", jsonObj.get("cuisines").toString()));
      }
  }

  public static class CustomTypeAdapterFactory implements TypeAdapterFactory {
    @SuppressWarnings("unchecked")
    @Override
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> type) {
       if (!ClassifyCuisine200Response.class.isAssignableFrom(type.getRawType())) {
         return null; // this class only serializes 'ClassifyCuisine200Response' and its subtypes
       }
       final TypeAdapter<JsonElement> elementAdapter = gson.getAdapter(JsonElement.class);
       final TypeAdapter<ClassifyCuisine200Response> thisAdapter
                        = gson.getDelegateAdapter(this, TypeToken.get(ClassifyCuisine200Response.class));

       return (TypeAdapter<T>) new TypeAdapter<ClassifyCuisine200Response>() {
           @Override
           public void write(JsonWriter out, ClassifyCuisine200Response value) throws IOException {
             JsonObject obj = thisAdapter.toJsonTree(value).getAsJsonObject();
             elementAdapter.write(out, obj);
           }

           @Override
           public ClassifyCuisine200Response read(JsonReader in) throws IOException {
             JsonElement jsonElement = elementAdapter.read(in);
             validateJsonElement(jsonElement);
             return thisAdapter.fromJsonTree(jsonElement);
           }

       }.nullSafe();
    }
  }

  /**
   * Create an instance of ClassifyCuisine200Response given an JSON string
   *
   * @param jsonString JSON string
   * @return An instance of ClassifyCuisine200Response
   * @throws IOException if the JSON string is invalid with respect to ClassifyCuisine200Response
   */
  public static ClassifyCuisine200Response fromJson(String jsonString) throws IOException {
    return JSON.getGson().fromJson(jsonString, ClassifyCuisine200Response.class);
  }

  /**
   * Convert an instance of ClassifyCuisine200Response to an JSON string
   *
   * @return JSON string
   */
  public String toJson() {
    return JSON.getGson().toJson(this);
  }
}

