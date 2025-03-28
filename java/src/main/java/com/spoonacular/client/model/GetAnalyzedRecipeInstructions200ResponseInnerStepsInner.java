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
import com.spoonacular.client.model.GetAnalyzedRecipeInstructions200ResponseInnerStepsInnerIngredientsInner;
import java.io.IOException;
import java.math.BigDecimal;
import java.util.Arrays;
import java.util.LinkedHashSet;
import java.util.Set;

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
 * GetAnalyzedRecipeInstructions200ResponseInnerStepsInner
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", comments = "Generator version: 7.8.0-SNAPSHOT")
public class GetAnalyzedRecipeInstructions200ResponseInnerStepsInner {
  public static final String SERIALIZED_NAME_NUMBER = "number";
  @SerializedName(SERIALIZED_NAME_NUMBER)
  private BigDecimal number;

  public static final String SERIALIZED_NAME_STEP = "step";
  @SerializedName(SERIALIZED_NAME_STEP)
  private String step;

  public static final String SERIALIZED_NAME_INGREDIENTS = "ingredients";
  @SerializedName(SERIALIZED_NAME_INGREDIENTS)
  private Set<GetAnalyzedRecipeInstructions200ResponseInnerStepsInnerIngredientsInner> ingredients = new LinkedHashSet<>();

  public static final String SERIALIZED_NAME_EQUIPMENT = "equipment";
  @SerializedName(SERIALIZED_NAME_EQUIPMENT)
  private Set<GetAnalyzedRecipeInstructions200ResponseInnerStepsInnerIngredientsInner> equipment = new LinkedHashSet<>();

  public GetAnalyzedRecipeInstructions200ResponseInnerStepsInner() {
  }

  public GetAnalyzedRecipeInstructions200ResponseInnerStepsInner number(BigDecimal number) {
    this.number = number;
    return this;
  }

  /**
   * Get number
   * @return number
   */
  @javax.annotation.Nonnull
  public BigDecimal getNumber() {
    return number;
  }

  public void setNumber(BigDecimal number) {
    this.number = number;
  }


  public GetAnalyzedRecipeInstructions200ResponseInnerStepsInner step(String step) {
    this.step = step;
    return this;
  }

  /**
   * Get step
   * @return step
   */
  @javax.annotation.Nonnull
  public String getStep() {
    return step;
  }

  public void setStep(String step) {
    this.step = step;
  }


  public GetAnalyzedRecipeInstructions200ResponseInnerStepsInner ingredients(Set<GetAnalyzedRecipeInstructions200ResponseInnerStepsInnerIngredientsInner> ingredients) {
    this.ingredients = ingredients;
    return this;
  }

  public GetAnalyzedRecipeInstructions200ResponseInnerStepsInner addIngredientsItem(GetAnalyzedRecipeInstructions200ResponseInnerStepsInnerIngredientsInner ingredientsItem) {
    if (this.ingredients == null) {
      this.ingredients = new LinkedHashSet<>();
    }
    this.ingredients.add(ingredientsItem);
    return this;
  }

  /**
   * Get ingredients
   * @return ingredients
   */
  @javax.annotation.Nullable
  public Set<GetAnalyzedRecipeInstructions200ResponseInnerStepsInnerIngredientsInner> getIngredients() {
    return ingredients;
  }

  public void setIngredients(Set<GetAnalyzedRecipeInstructions200ResponseInnerStepsInnerIngredientsInner> ingredients) {
    this.ingredients = ingredients;
  }


  public GetAnalyzedRecipeInstructions200ResponseInnerStepsInner equipment(Set<GetAnalyzedRecipeInstructions200ResponseInnerStepsInnerIngredientsInner> equipment) {
    this.equipment = equipment;
    return this;
  }

  public GetAnalyzedRecipeInstructions200ResponseInnerStepsInner addEquipmentItem(GetAnalyzedRecipeInstructions200ResponseInnerStepsInnerIngredientsInner equipmentItem) {
    if (this.equipment == null) {
      this.equipment = new LinkedHashSet<>();
    }
    this.equipment.add(equipmentItem);
    return this;
  }

  /**
   * Get equipment
   * @return equipment
   */
  @javax.annotation.Nullable
  public Set<GetAnalyzedRecipeInstructions200ResponseInnerStepsInnerIngredientsInner> getEquipment() {
    return equipment;
  }

  public void setEquipment(Set<GetAnalyzedRecipeInstructions200ResponseInnerStepsInnerIngredientsInner> equipment) {
    this.equipment = equipment;
  }



  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    GetAnalyzedRecipeInstructions200ResponseInnerStepsInner getAnalyzedRecipeInstructions200ResponseInnerStepsInner = (GetAnalyzedRecipeInstructions200ResponseInnerStepsInner) o;
    return Objects.equals(this.number, getAnalyzedRecipeInstructions200ResponseInnerStepsInner.number) &&
        Objects.equals(this.step, getAnalyzedRecipeInstructions200ResponseInnerStepsInner.step) &&
        Objects.equals(this.ingredients, getAnalyzedRecipeInstructions200ResponseInnerStepsInner.ingredients) &&
        Objects.equals(this.equipment, getAnalyzedRecipeInstructions200ResponseInnerStepsInner.equipment);
  }

  @Override
  public int hashCode() {
    return Objects.hash(number, step, ingredients, equipment);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class GetAnalyzedRecipeInstructions200ResponseInnerStepsInner {\n");
    sb.append("    number: ").append(toIndentedString(number)).append("\n");
    sb.append("    step: ").append(toIndentedString(step)).append("\n");
    sb.append("    ingredients: ").append(toIndentedString(ingredients)).append("\n");
    sb.append("    equipment: ").append(toIndentedString(equipment)).append("\n");
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
    openapiFields.add("number");
    openapiFields.add("step");
    openapiFields.add("ingredients");
    openapiFields.add("equipment");

    // a set of required properties/fields (JSON key names)
    openapiRequiredFields = new HashSet<String>();
    openapiRequiredFields.add("number");
    openapiRequiredFields.add("step");
  }

  /**
   * Validates the JSON Element and throws an exception if issues found
   *
   * @param jsonElement JSON Element
   * @throws IOException if the JSON Element is invalid with respect to GetAnalyzedRecipeInstructions200ResponseInnerStepsInner
   */
  public static void validateJsonElement(JsonElement jsonElement) throws IOException {
      if (jsonElement == null) {
        if (!GetAnalyzedRecipeInstructions200ResponseInnerStepsInner.openapiRequiredFields.isEmpty()) { // has required fields but JSON element is null
          throw new IllegalArgumentException(String.format("The required field(s) %s in GetAnalyzedRecipeInstructions200ResponseInnerStepsInner is not found in the empty JSON string", GetAnalyzedRecipeInstructions200ResponseInnerStepsInner.openapiRequiredFields.toString()));
        }
      }

      Set<Map.Entry<String, JsonElement>> entries = jsonElement.getAsJsonObject().entrySet();
      // check to see if the JSON string contains additional fields
      for (Map.Entry<String, JsonElement> entry : entries) {
        if (!GetAnalyzedRecipeInstructions200ResponseInnerStepsInner.openapiFields.contains(entry.getKey())) {
          throw new IllegalArgumentException(String.format("The field `%s` in the JSON string is not defined in the `GetAnalyzedRecipeInstructions200ResponseInnerStepsInner` properties. JSON: %s", entry.getKey(), jsonElement.toString()));
        }
      }

      // check to make sure all required properties/fields are present in the JSON string
      for (String requiredField : GetAnalyzedRecipeInstructions200ResponseInnerStepsInner.openapiRequiredFields) {
        if (jsonElement.getAsJsonObject().get(requiredField) == null) {
          throw new IllegalArgumentException(String.format("The required field `%s` is not found in the JSON string: %s", requiredField, jsonElement.toString()));
        }
      }
        JsonObject jsonObj = jsonElement.getAsJsonObject();
      if (!jsonObj.get("step").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `step` to be a primitive type in the JSON string but got `%s`", jsonObj.get("step").toString()));
      }
      if (jsonObj.get("ingredients") != null && !jsonObj.get("ingredients").isJsonNull()) {
        JsonArray jsonArrayingredients = jsonObj.getAsJsonArray("ingredients");
        if (jsonArrayingredients != null) {
          // ensure the json data is an array
          if (!jsonObj.get("ingredients").isJsonArray()) {
            throw new IllegalArgumentException(String.format("Expected the field `ingredients` to be an array in the JSON string but got `%s`", jsonObj.get("ingredients").toString()));
          }

          // validate the optional field `ingredients` (array)
          for (int i = 0; i < jsonArrayingredients.size(); i++) {
            GetAnalyzedRecipeInstructions200ResponseInnerStepsInnerIngredientsInner.validateJsonElement(jsonArrayingredients.get(i));
          };
        }
      }
      if (jsonObj.get("equipment") != null && !jsonObj.get("equipment").isJsonNull()) {
        JsonArray jsonArrayequipment = jsonObj.getAsJsonArray("equipment");
        if (jsonArrayequipment != null) {
          // ensure the json data is an array
          if (!jsonObj.get("equipment").isJsonArray()) {
            throw new IllegalArgumentException(String.format("Expected the field `equipment` to be an array in the JSON string but got `%s`", jsonObj.get("equipment").toString()));
          }

          // validate the optional field `equipment` (array)
          for (int i = 0; i < jsonArrayequipment.size(); i++) {
            GetAnalyzedRecipeInstructions200ResponseInnerStepsInnerIngredientsInner.validateJsonElement(jsonArrayequipment.get(i));
          };
        }
      }
  }

  public static class CustomTypeAdapterFactory implements TypeAdapterFactory {
    @SuppressWarnings("unchecked")
    @Override
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> type) {
       if (!GetAnalyzedRecipeInstructions200ResponseInnerStepsInner.class.isAssignableFrom(type.getRawType())) {
         return null; // this class only serializes 'GetAnalyzedRecipeInstructions200ResponseInnerStepsInner' and its subtypes
       }
       final TypeAdapter<JsonElement> elementAdapter = gson.getAdapter(JsonElement.class);
       final TypeAdapter<GetAnalyzedRecipeInstructions200ResponseInnerStepsInner> thisAdapter
                        = gson.getDelegateAdapter(this, TypeToken.get(GetAnalyzedRecipeInstructions200ResponseInnerStepsInner.class));

       return (TypeAdapter<T>) new TypeAdapter<GetAnalyzedRecipeInstructions200ResponseInnerStepsInner>() {
           @Override
           public void write(JsonWriter out, GetAnalyzedRecipeInstructions200ResponseInnerStepsInner value) throws IOException {
             JsonObject obj = thisAdapter.toJsonTree(value).getAsJsonObject();
             elementAdapter.write(out, obj);
           }

           @Override
           public GetAnalyzedRecipeInstructions200ResponseInnerStepsInner read(JsonReader in) throws IOException {
             JsonElement jsonElement = elementAdapter.read(in);
             validateJsonElement(jsonElement);
             return thisAdapter.fromJsonTree(jsonElement);
           }

       }.nullSafe();
    }
  }

  /**
   * Create an instance of GetAnalyzedRecipeInstructions200ResponseInnerStepsInner given an JSON string
   *
   * @param jsonString JSON string
   * @return An instance of GetAnalyzedRecipeInstructions200ResponseInnerStepsInner
   * @throws IOException if the JSON string is invalid with respect to GetAnalyzedRecipeInstructions200ResponseInnerStepsInner
   */
  public static GetAnalyzedRecipeInstructions200ResponseInnerStepsInner fromJson(String jsonString) throws IOException {
    return JSON.getGson().fromJson(jsonString, GetAnalyzedRecipeInstructions200ResponseInnerStepsInner.class);
  }

  /**
   * Convert an instance of GetAnalyzedRecipeInstructions200ResponseInnerStepsInner to an JSON string
   *
   * @return JSON string
   */
  public String toJson() {
    return JSON.getGson().toJson(this);
  }
}

