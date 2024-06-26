/*
 * spoonacular API
 * The spoonacular Nutrition, Recipe, and Food API allows you to access over thousands of recipes, thousands of ingredients, 800,000 food products, over 100,000 menu items, and restaurants. Our food ontology and semantic recipe search engine makes it possible to search for recipes using natural language queries, such as \"gluten free brownies without sugar\" or \"low fat vegan cupcakes.\" You can automatically calculate the nutritional information for any recipe, analyze recipe costs, visualize ingredient lists, find recipes for what's in your fridge, find recipes based on special diets, nutritional requirements, or favorite ingredients, classify recipes into types and cuisines, convert ingredient amounts, or even compute an entire meal plan. With our powerful API, you can create many kinds of food and especially nutrition apps.  Special diets/dietary requirements currently available include: vegan, vegetarian, pescetarian, gluten free, grain free, dairy free, high protein, whole 30, low sodium, low carb, Paleo, ketogenic, FODMAP, and Primal.
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
import com.google.gson.TypeAdapter;
import com.google.gson.annotations.JsonAdapter;
import com.google.gson.annotations.SerializedName;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.math.BigDecimal;
import java.util.Arrays;

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
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", comments = "Generator version: 7.7.0-SNAPSHOT")
public class ConvertAmounts200Response {
  public static final String SERIALIZED_NAME_SOURCE_AMOUNT = "sourceAmount";
  @SerializedName(SERIALIZED_NAME_SOURCE_AMOUNT)
  private BigDecimal sourceAmount;

  public static final String SERIALIZED_NAME_SOURCE_UNIT = "sourceUnit";
  @SerializedName(SERIALIZED_NAME_SOURCE_UNIT)
  private String sourceUnit;

  public static final String SERIALIZED_NAME_TARGET_AMOUNT = "targetAmount";
  @SerializedName(SERIALIZED_NAME_TARGET_AMOUNT)
  private BigDecimal targetAmount;

  public static final String SERIALIZED_NAME_TARGET_UNIT = "targetUnit";
  @SerializedName(SERIALIZED_NAME_TARGET_UNIT)
  private String targetUnit;

  public static final String SERIALIZED_NAME_ANSWER = "answer";
  @SerializedName(SERIALIZED_NAME_ANSWER)
  private String answer;

  public ConvertAmounts200Response() {
  }

  public ConvertAmounts200Response sourceAmount(BigDecimal sourceAmount) {
    this.sourceAmount = sourceAmount;
    return this;
  }

  /**
   * Get sourceAmount
   * @return sourceAmount
   */
  @javax.annotation.Nonnull
  public BigDecimal getSourceAmount() {
    return sourceAmount;
  }

  public void setSourceAmount(BigDecimal sourceAmount) {
    this.sourceAmount = sourceAmount;
  }


  public ConvertAmounts200Response sourceUnit(String sourceUnit) {
    this.sourceUnit = sourceUnit;
    return this;
  }

  /**
   * Get sourceUnit
   * @return sourceUnit
   */
  @javax.annotation.Nonnull
  public String getSourceUnit() {
    return sourceUnit;
  }

  public void setSourceUnit(String sourceUnit) {
    this.sourceUnit = sourceUnit;
  }


  public ConvertAmounts200Response targetAmount(BigDecimal targetAmount) {
    this.targetAmount = targetAmount;
    return this;
  }

  /**
   * Get targetAmount
   * @return targetAmount
   */
  @javax.annotation.Nonnull
  public BigDecimal getTargetAmount() {
    return targetAmount;
  }

  public void setTargetAmount(BigDecimal targetAmount) {
    this.targetAmount = targetAmount;
  }


  public ConvertAmounts200Response targetUnit(String targetUnit) {
    this.targetUnit = targetUnit;
    return this;
  }

  /**
   * Get targetUnit
   * @return targetUnit
   */
  @javax.annotation.Nonnull
  public String getTargetUnit() {
    return targetUnit;
  }

  public void setTargetUnit(String targetUnit) {
    this.targetUnit = targetUnit;
  }


  public ConvertAmounts200Response answer(String answer) {
    this.answer = answer;
    return this;
  }

  /**
   * Get answer
   * @return answer
   */
  @javax.annotation.Nonnull
  public String getAnswer() {
    return answer;
  }

  public void setAnswer(String answer) {
    this.answer = answer;
  }



  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    ConvertAmounts200Response convertAmounts200Response = (ConvertAmounts200Response) o;
    return Objects.equals(this.sourceAmount, convertAmounts200Response.sourceAmount) &&
        Objects.equals(this.sourceUnit, convertAmounts200Response.sourceUnit) &&
        Objects.equals(this.targetAmount, convertAmounts200Response.targetAmount) &&
        Objects.equals(this.targetUnit, convertAmounts200Response.targetUnit) &&
        Objects.equals(this.answer, convertAmounts200Response.answer);
  }

  @Override
  public int hashCode() {
    return Objects.hash(sourceAmount, sourceUnit, targetAmount, targetUnit, answer);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ConvertAmounts200Response {\n");
    sb.append("    sourceAmount: ").append(toIndentedString(sourceAmount)).append("\n");
    sb.append("    sourceUnit: ").append(toIndentedString(sourceUnit)).append("\n");
    sb.append("    targetAmount: ").append(toIndentedString(targetAmount)).append("\n");
    sb.append("    targetUnit: ").append(toIndentedString(targetUnit)).append("\n");
    sb.append("    answer: ").append(toIndentedString(answer)).append("\n");
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
    openapiFields.add("sourceAmount");
    openapiFields.add("sourceUnit");
    openapiFields.add("targetAmount");
    openapiFields.add("targetUnit");
    openapiFields.add("answer");

    // a set of required properties/fields (JSON key names)
    openapiRequiredFields = new HashSet<String>();
    openapiRequiredFields.add("sourceAmount");
    openapiRequiredFields.add("sourceUnit");
    openapiRequiredFields.add("targetAmount");
    openapiRequiredFields.add("targetUnit");
    openapiRequiredFields.add("answer");
  }

  /**
   * Validates the JSON Element and throws an exception if issues found
   *
   * @param jsonElement JSON Element
   * @throws IOException if the JSON Element is invalid with respect to ConvertAmounts200Response
   */
  public static void validateJsonElement(JsonElement jsonElement) throws IOException {
      if (jsonElement == null) {
        if (!ConvertAmounts200Response.openapiRequiredFields.isEmpty()) { // has required fields but JSON element is null
          throw new IllegalArgumentException(String.format("The required field(s) %s in ConvertAmounts200Response is not found in the empty JSON string", ConvertAmounts200Response.openapiRequiredFields.toString()));
        }
      }

      Set<Map.Entry<String, JsonElement>> entries = jsonElement.getAsJsonObject().entrySet();
      // check to see if the JSON string contains additional fields
      for (Map.Entry<String, JsonElement> entry : entries) {
        if (!ConvertAmounts200Response.openapiFields.contains(entry.getKey())) {
          throw new IllegalArgumentException(String.format("The field `%s` in the JSON string is not defined in the `ConvertAmounts200Response` properties. JSON: %s", entry.getKey(), jsonElement.toString()));
        }
      }

      // check to make sure all required properties/fields are present in the JSON string
      for (String requiredField : ConvertAmounts200Response.openapiRequiredFields) {
        if (jsonElement.getAsJsonObject().get(requiredField) == null) {
          throw new IllegalArgumentException(String.format("The required field `%s` is not found in the JSON string: %s", requiredField, jsonElement.toString()));
        }
      }
        JsonObject jsonObj = jsonElement.getAsJsonObject();
      if (!jsonObj.get("sourceUnit").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `sourceUnit` to be a primitive type in the JSON string but got `%s`", jsonObj.get("sourceUnit").toString()));
      }
      if (!jsonObj.get("targetUnit").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `targetUnit` to be a primitive type in the JSON string but got `%s`", jsonObj.get("targetUnit").toString()));
      }
      if (!jsonObj.get("answer").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `answer` to be a primitive type in the JSON string but got `%s`", jsonObj.get("answer").toString()));
      }
  }

  public static class CustomTypeAdapterFactory implements TypeAdapterFactory {
    @SuppressWarnings("unchecked")
    @Override
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> type) {
       if (!ConvertAmounts200Response.class.isAssignableFrom(type.getRawType())) {
         return null; // this class only serializes 'ConvertAmounts200Response' and its subtypes
       }
       final TypeAdapter<JsonElement> elementAdapter = gson.getAdapter(JsonElement.class);
       final TypeAdapter<ConvertAmounts200Response> thisAdapter
                        = gson.getDelegateAdapter(this, TypeToken.get(ConvertAmounts200Response.class));

       return (TypeAdapter<T>) new TypeAdapter<ConvertAmounts200Response>() {
           @Override
           public void write(JsonWriter out, ConvertAmounts200Response value) throws IOException {
             JsonObject obj = thisAdapter.toJsonTree(value).getAsJsonObject();
             elementAdapter.write(out, obj);
           }

           @Override
           public ConvertAmounts200Response read(JsonReader in) throws IOException {
             JsonElement jsonElement = elementAdapter.read(in);
             validateJsonElement(jsonElement);
             return thisAdapter.fromJsonTree(jsonElement);
           }

       }.nullSafe();
    }
  }

  /**
   * Create an instance of ConvertAmounts200Response given an JSON string
   *
   * @param jsonString JSON string
   * @return An instance of ConvertAmounts200Response
   * @throws IOException if the JSON string is invalid with respect to ConvertAmounts200Response
   */
  public static ConvertAmounts200Response fromJson(String jsonString) throws IOException {
    return JSON.getGson().fromJson(jsonString, ConvertAmounts200Response.class);
  }

  /**
   * Convert an instance of ConvertAmounts200Response to an JSON string
   *
   * @return JSON string
   */
  public String toJson() {
    return JSON.getGson().toJson(this);
  }
}

