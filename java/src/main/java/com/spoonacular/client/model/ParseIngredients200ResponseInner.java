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
import com.spoonacular.client.model.ParseIngredients200ResponseInnerEstimatedCost;
import com.spoonacular.client.model.ParseIngredients200ResponseInnerNutrition;
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
 * ParseIngredients200ResponseInner
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", comments = "Generator version: 7.7.0-SNAPSHOT")
public class ParseIngredients200ResponseInner {
  public static final String SERIALIZED_NAME_ID = "id";
  @SerializedName(SERIALIZED_NAME_ID)
  private Integer id;

  public static final String SERIALIZED_NAME_ORIGINAL = "original";
  @SerializedName(SERIALIZED_NAME_ORIGINAL)
  private String original;

  public static final String SERIALIZED_NAME_ORIGINAL_NAME = "originalName";
  @SerializedName(SERIALIZED_NAME_ORIGINAL_NAME)
  private String originalName;

  public static final String SERIALIZED_NAME_NAME = "name";
  @SerializedName(SERIALIZED_NAME_NAME)
  private String name;

  public static final String SERIALIZED_NAME_NAME_CLEAN = "nameClean";
  @SerializedName(SERIALIZED_NAME_NAME_CLEAN)
  private String nameClean;

  public static final String SERIALIZED_NAME_AMOUNT = "amount";
  @SerializedName(SERIALIZED_NAME_AMOUNT)
  private BigDecimal amount;

  public static final String SERIALIZED_NAME_UNIT = "unit";
  @SerializedName(SERIALIZED_NAME_UNIT)
  private String unit;

  public static final String SERIALIZED_NAME_UNIT_SHORT = "unitShort";
  @SerializedName(SERIALIZED_NAME_UNIT_SHORT)
  private String unitShort;

  public static final String SERIALIZED_NAME_UNIT_LONG = "unitLong";
  @SerializedName(SERIALIZED_NAME_UNIT_LONG)
  private String unitLong;

  public static final String SERIALIZED_NAME_POSSIBLE_UNITS = "possibleUnits";
  @SerializedName(SERIALIZED_NAME_POSSIBLE_UNITS)
  private List<String> possibleUnits = new ArrayList<>();

  public static final String SERIALIZED_NAME_ESTIMATED_COST = "estimatedCost";
  @SerializedName(SERIALIZED_NAME_ESTIMATED_COST)
  private ParseIngredients200ResponseInnerEstimatedCost estimatedCost;

  public static final String SERIALIZED_NAME_CONSISTENCY = "consistency";
  @SerializedName(SERIALIZED_NAME_CONSISTENCY)
  private String consistency;

  public static final String SERIALIZED_NAME_AISLE = "aisle";
  @SerializedName(SERIALIZED_NAME_AISLE)
  private String aisle;

  public static final String SERIALIZED_NAME_IMAGE = "image";
  @SerializedName(SERIALIZED_NAME_IMAGE)
  private String image;

  public static final String SERIALIZED_NAME_META = "meta";
  @SerializedName(SERIALIZED_NAME_META)
  private List<String> meta = new ArrayList<>();

  public static final String SERIALIZED_NAME_NUTRITION = "nutrition";
  @SerializedName(SERIALIZED_NAME_NUTRITION)
  private ParseIngredients200ResponseInnerNutrition nutrition;

  public ParseIngredients200ResponseInner() {
  }

  public ParseIngredients200ResponseInner id(Integer id) {
    this.id = id;
    return this;
  }

   /**
   * Get id
   * @return id
  **/
  @javax.annotation.Nonnull
  public Integer getId() {
    return id;
  }

  public void setId(Integer id) {
    this.id = id;
  }


  public ParseIngredients200ResponseInner original(String original) {
    this.original = original;
    return this;
  }

   /**
   * Get original
   * @return original
  **/
  @javax.annotation.Nonnull
  public String getOriginal() {
    return original;
  }

  public void setOriginal(String original) {
    this.original = original;
  }


  public ParseIngredients200ResponseInner originalName(String originalName) {
    this.originalName = originalName;
    return this;
  }

   /**
   * Get originalName
   * @return originalName
  **/
  @javax.annotation.Nonnull
  public String getOriginalName() {
    return originalName;
  }

  public void setOriginalName(String originalName) {
    this.originalName = originalName;
  }


  public ParseIngredients200ResponseInner name(String name) {
    this.name = name;
    return this;
  }

   /**
   * Get name
   * @return name
  **/
  @javax.annotation.Nonnull
  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }


  public ParseIngredients200ResponseInner nameClean(String nameClean) {
    this.nameClean = nameClean;
    return this;
  }

   /**
   * Get nameClean
   * @return nameClean
  **/
  @javax.annotation.Nonnull
  public String getNameClean() {
    return nameClean;
  }

  public void setNameClean(String nameClean) {
    this.nameClean = nameClean;
  }


  public ParseIngredients200ResponseInner amount(BigDecimal amount) {
    this.amount = amount;
    return this;
  }

   /**
   * Get amount
   * @return amount
  **/
  @javax.annotation.Nonnull
  public BigDecimal getAmount() {
    return amount;
  }

  public void setAmount(BigDecimal amount) {
    this.amount = amount;
  }


  public ParseIngredients200ResponseInner unit(String unit) {
    this.unit = unit;
    return this;
  }

   /**
   * Get unit
   * @return unit
  **/
  @javax.annotation.Nonnull
  public String getUnit() {
    return unit;
  }

  public void setUnit(String unit) {
    this.unit = unit;
  }


  public ParseIngredients200ResponseInner unitShort(String unitShort) {
    this.unitShort = unitShort;
    return this;
  }

   /**
   * Get unitShort
   * @return unitShort
  **/
  @javax.annotation.Nonnull
  public String getUnitShort() {
    return unitShort;
  }

  public void setUnitShort(String unitShort) {
    this.unitShort = unitShort;
  }


  public ParseIngredients200ResponseInner unitLong(String unitLong) {
    this.unitLong = unitLong;
    return this;
  }

   /**
   * Get unitLong
   * @return unitLong
  **/
  @javax.annotation.Nonnull
  public String getUnitLong() {
    return unitLong;
  }

  public void setUnitLong(String unitLong) {
    this.unitLong = unitLong;
  }


  public ParseIngredients200ResponseInner possibleUnits(List<String> possibleUnits) {
    this.possibleUnits = possibleUnits;
    return this;
  }

  public ParseIngredients200ResponseInner addPossibleUnitsItem(String possibleUnitsItem) {
    if (this.possibleUnits == null) {
      this.possibleUnits = new ArrayList<>();
    }
    this.possibleUnits.add(possibleUnitsItem);
    return this;
  }

   /**
   * Get possibleUnits
   * @return possibleUnits
  **/
  @javax.annotation.Nonnull
  public List<String> getPossibleUnits() {
    return possibleUnits;
  }

  public void setPossibleUnits(List<String> possibleUnits) {
    this.possibleUnits = possibleUnits;
  }


  public ParseIngredients200ResponseInner estimatedCost(ParseIngredients200ResponseInnerEstimatedCost estimatedCost) {
    this.estimatedCost = estimatedCost;
    return this;
  }

   /**
   * Get estimatedCost
   * @return estimatedCost
  **/
  @javax.annotation.Nonnull
  public ParseIngredients200ResponseInnerEstimatedCost getEstimatedCost() {
    return estimatedCost;
  }

  public void setEstimatedCost(ParseIngredients200ResponseInnerEstimatedCost estimatedCost) {
    this.estimatedCost = estimatedCost;
  }


  public ParseIngredients200ResponseInner consistency(String consistency) {
    this.consistency = consistency;
    return this;
  }

   /**
   * Get consistency
   * @return consistency
  **/
  @javax.annotation.Nonnull
  public String getConsistency() {
    return consistency;
  }

  public void setConsistency(String consistency) {
    this.consistency = consistency;
  }


  public ParseIngredients200ResponseInner aisle(String aisle) {
    this.aisle = aisle;
    return this;
  }

   /**
   * Get aisle
   * @return aisle
  **/
  @javax.annotation.Nonnull
  public String getAisle() {
    return aisle;
  }

  public void setAisle(String aisle) {
    this.aisle = aisle;
  }


  public ParseIngredients200ResponseInner image(String image) {
    this.image = image;
    return this;
  }

   /**
   * Get image
   * @return image
  **/
  @javax.annotation.Nonnull
  public String getImage() {
    return image;
  }

  public void setImage(String image) {
    this.image = image;
  }


  public ParseIngredients200ResponseInner meta(List<String> meta) {
    this.meta = meta;
    return this;
  }

  public ParseIngredients200ResponseInner addMetaItem(String metaItem) {
    if (this.meta == null) {
      this.meta = new ArrayList<>();
    }
    this.meta.add(metaItem);
    return this;
  }

   /**
   * Get meta
   * @return meta
  **/
  @javax.annotation.Nonnull
  public List<String> getMeta() {
    return meta;
  }

  public void setMeta(List<String> meta) {
    this.meta = meta;
  }


  public ParseIngredients200ResponseInner nutrition(ParseIngredients200ResponseInnerNutrition nutrition) {
    this.nutrition = nutrition;
    return this;
  }

   /**
   * Get nutrition
   * @return nutrition
  **/
  @javax.annotation.Nonnull
  public ParseIngredients200ResponseInnerNutrition getNutrition() {
    return nutrition;
  }

  public void setNutrition(ParseIngredients200ResponseInnerNutrition nutrition) {
    this.nutrition = nutrition;
  }



  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    ParseIngredients200ResponseInner parseIngredients200ResponseInner = (ParseIngredients200ResponseInner) o;
    return Objects.equals(this.id, parseIngredients200ResponseInner.id) &&
        Objects.equals(this.original, parseIngredients200ResponseInner.original) &&
        Objects.equals(this.originalName, parseIngredients200ResponseInner.originalName) &&
        Objects.equals(this.name, parseIngredients200ResponseInner.name) &&
        Objects.equals(this.nameClean, parseIngredients200ResponseInner.nameClean) &&
        Objects.equals(this.amount, parseIngredients200ResponseInner.amount) &&
        Objects.equals(this.unit, parseIngredients200ResponseInner.unit) &&
        Objects.equals(this.unitShort, parseIngredients200ResponseInner.unitShort) &&
        Objects.equals(this.unitLong, parseIngredients200ResponseInner.unitLong) &&
        Objects.equals(this.possibleUnits, parseIngredients200ResponseInner.possibleUnits) &&
        Objects.equals(this.estimatedCost, parseIngredients200ResponseInner.estimatedCost) &&
        Objects.equals(this.consistency, parseIngredients200ResponseInner.consistency) &&
        Objects.equals(this.aisle, parseIngredients200ResponseInner.aisle) &&
        Objects.equals(this.image, parseIngredients200ResponseInner.image) &&
        Objects.equals(this.meta, parseIngredients200ResponseInner.meta) &&
        Objects.equals(this.nutrition, parseIngredients200ResponseInner.nutrition);
  }

  @Override
  public int hashCode() {
    return Objects.hash(id, original, originalName, name, nameClean, amount, unit, unitShort, unitLong, possibleUnits, estimatedCost, consistency, aisle, image, meta, nutrition);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ParseIngredients200ResponseInner {\n");
    sb.append("    id: ").append(toIndentedString(id)).append("\n");
    sb.append("    original: ").append(toIndentedString(original)).append("\n");
    sb.append("    originalName: ").append(toIndentedString(originalName)).append("\n");
    sb.append("    name: ").append(toIndentedString(name)).append("\n");
    sb.append("    nameClean: ").append(toIndentedString(nameClean)).append("\n");
    sb.append("    amount: ").append(toIndentedString(amount)).append("\n");
    sb.append("    unit: ").append(toIndentedString(unit)).append("\n");
    sb.append("    unitShort: ").append(toIndentedString(unitShort)).append("\n");
    sb.append("    unitLong: ").append(toIndentedString(unitLong)).append("\n");
    sb.append("    possibleUnits: ").append(toIndentedString(possibleUnits)).append("\n");
    sb.append("    estimatedCost: ").append(toIndentedString(estimatedCost)).append("\n");
    sb.append("    consistency: ").append(toIndentedString(consistency)).append("\n");
    sb.append("    aisle: ").append(toIndentedString(aisle)).append("\n");
    sb.append("    image: ").append(toIndentedString(image)).append("\n");
    sb.append("    meta: ").append(toIndentedString(meta)).append("\n");
    sb.append("    nutrition: ").append(toIndentedString(nutrition)).append("\n");
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
    openapiFields.add("original");
    openapiFields.add("originalName");
    openapiFields.add("name");
    openapiFields.add("nameClean");
    openapiFields.add("amount");
    openapiFields.add("unit");
    openapiFields.add("unitShort");
    openapiFields.add("unitLong");
    openapiFields.add("possibleUnits");
    openapiFields.add("estimatedCost");
    openapiFields.add("consistency");
    openapiFields.add("aisle");
    openapiFields.add("image");
    openapiFields.add("meta");
    openapiFields.add("nutrition");

    // a set of required properties/fields (JSON key names)
    openapiRequiredFields = new HashSet<String>();
    openapiRequiredFields.add("id");
    openapiRequiredFields.add("original");
    openapiRequiredFields.add("originalName");
    openapiRequiredFields.add("name");
    openapiRequiredFields.add("nameClean");
    openapiRequiredFields.add("amount");
    openapiRequiredFields.add("unit");
    openapiRequiredFields.add("unitShort");
    openapiRequiredFields.add("unitLong");
    openapiRequiredFields.add("possibleUnits");
    openapiRequiredFields.add("estimatedCost");
    openapiRequiredFields.add("consistency");
    openapiRequiredFields.add("aisle");
    openapiRequiredFields.add("image");
    openapiRequiredFields.add("meta");
    openapiRequiredFields.add("nutrition");
  }

 /**
  * Validates the JSON Element and throws an exception if issues found
  *
  * @param jsonElement JSON Element
  * @throws IOException if the JSON Element is invalid with respect to ParseIngredients200ResponseInner
  */
  public static void validateJsonElement(JsonElement jsonElement) throws IOException {
      if (jsonElement == null) {
        if (!ParseIngredients200ResponseInner.openapiRequiredFields.isEmpty()) { // has required fields but JSON element is null
          throw new IllegalArgumentException(String.format("The required field(s) %s in ParseIngredients200ResponseInner is not found in the empty JSON string", ParseIngredients200ResponseInner.openapiRequiredFields.toString()));
        }
      }

      Set<Map.Entry<String, JsonElement>> entries = jsonElement.getAsJsonObject().entrySet();
      // check to see if the JSON string contains additional fields
      for (Map.Entry<String, JsonElement> entry : entries) {
        if (!ParseIngredients200ResponseInner.openapiFields.contains(entry.getKey())) {
          throw new IllegalArgumentException(String.format("The field `%s` in the JSON string is not defined in the `ParseIngredients200ResponseInner` properties. JSON: %s", entry.getKey(), jsonElement.toString()));
        }
      }

      // check to make sure all required properties/fields are present in the JSON string
      for (String requiredField : ParseIngredients200ResponseInner.openapiRequiredFields) {
        if (jsonElement.getAsJsonObject().get(requiredField) == null) {
          throw new IllegalArgumentException(String.format("The required field `%s` is not found in the JSON string: %s", requiredField, jsonElement.toString()));
        }
      }
        JsonObject jsonObj = jsonElement.getAsJsonObject();
      if (!jsonObj.get("original").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `original` to be a primitive type in the JSON string but got `%s`", jsonObj.get("original").toString()));
      }
      if (!jsonObj.get("originalName").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `originalName` to be a primitive type in the JSON string but got `%s`", jsonObj.get("originalName").toString()));
      }
      if (!jsonObj.get("name").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `name` to be a primitive type in the JSON string but got `%s`", jsonObj.get("name").toString()));
      }
      if (!jsonObj.get("nameClean").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `nameClean` to be a primitive type in the JSON string but got `%s`", jsonObj.get("nameClean").toString()));
      }
      if (!jsonObj.get("unit").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `unit` to be a primitive type in the JSON string but got `%s`", jsonObj.get("unit").toString()));
      }
      if (!jsonObj.get("unitShort").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `unitShort` to be a primitive type in the JSON string but got `%s`", jsonObj.get("unitShort").toString()));
      }
      if (!jsonObj.get("unitLong").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `unitLong` to be a primitive type in the JSON string but got `%s`", jsonObj.get("unitLong").toString()));
      }
      // ensure the required json array is present
      if (jsonObj.get("possibleUnits") == null) {
        throw new IllegalArgumentException("Expected the field `linkedContent` to be an array in the JSON string but got `null`");
      } else if (!jsonObj.get("possibleUnits").isJsonArray()) {
        throw new IllegalArgumentException(String.format("Expected the field `possibleUnits` to be an array in the JSON string but got `%s`", jsonObj.get("possibleUnits").toString()));
      }
      // validate the required field `estimatedCost`
      ParseIngredients200ResponseInnerEstimatedCost.validateJsonElement(jsonObj.get("estimatedCost"));
      if (!jsonObj.get("consistency").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `consistency` to be a primitive type in the JSON string but got `%s`", jsonObj.get("consistency").toString()));
      }
      if (!jsonObj.get("aisle").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `aisle` to be a primitive type in the JSON string but got `%s`", jsonObj.get("aisle").toString()));
      }
      if (!jsonObj.get("image").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `image` to be a primitive type in the JSON string but got `%s`", jsonObj.get("image").toString()));
      }
      // ensure the required json array is present
      if (jsonObj.get("meta") == null) {
        throw new IllegalArgumentException("Expected the field `linkedContent` to be an array in the JSON string but got `null`");
      } else if (!jsonObj.get("meta").isJsonArray()) {
        throw new IllegalArgumentException(String.format("Expected the field `meta` to be an array in the JSON string but got `%s`", jsonObj.get("meta").toString()));
      }
      // validate the required field `nutrition`
      ParseIngredients200ResponseInnerNutrition.validateJsonElement(jsonObj.get("nutrition"));
  }

  public static class CustomTypeAdapterFactory implements TypeAdapterFactory {
    @SuppressWarnings("unchecked")
    @Override
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> type) {
       if (!ParseIngredients200ResponseInner.class.isAssignableFrom(type.getRawType())) {
         return null; // this class only serializes 'ParseIngredients200ResponseInner' and its subtypes
       }
       final TypeAdapter<JsonElement> elementAdapter = gson.getAdapter(JsonElement.class);
       final TypeAdapter<ParseIngredients200ResponseInner> thisAdapter
                        = gson.getDelegateAdapter(this, TypeToken.get(ParseIngredients200ResponseInner.class));

       return (TypeAdapter<T>) new TypeAdapter<ParseIngredients200ResponseInner>() {
           @Override
           public void write(JsonWriter out, ParseIngredients200ResponseInner value) throws IOException {
             JsonObject obj = thisAdapter.toJsonTree(value).getAsJsonObject();
             elementAdapter.write(out, obj);
           }

           @Override
           public ParseIngredients200ResponseInner read(JsonReader in) throws IOException {
             JsonElement jsonElement = elementAdapter.read(in);
             validateJsonElement(jsonElement);
             return thisAdapter.fromJsonTree(jsonElement);
           }

       }.nullSafe();
    }
  }

 /**
  * Create an instance of ParseIngredients200ResponseInner given an JSON string
  *
  * @param jsonString JSON string
  * @return An instance of ParseIngredients200ResponseInner
  * @throws IOException if the JSON string is invalid with respect to ParseIngredients200ResponseInner
  */
  public static ParseIngredients200ResponseInner fromJson(String jsonString) throws IOException {
    return JSON.getGson().fromJson(jsonString, ParseIngredients200ResponseInner.class);
  }

 /**
  * Convert an instance of ParseIngredients200ResponseInner to an JSON string
  *
  * @return JSON string
  */
  public String toJson() {
    return JSON.getGson().toJson(this);
  }
}

