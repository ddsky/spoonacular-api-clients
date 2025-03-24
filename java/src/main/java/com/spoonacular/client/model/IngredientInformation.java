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
import com.spoonacular.client.model.IngredientInformationEstimatedCost;
import com.spoonacular.client.model.IngredientInformationNutrition;
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
public class IngredientInformation {
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
  private IngredientInformationEstimatedCost estimatedCost;

  public static final String SERIALIZED_NAME_CONSISTENCY = "consistency";
  @SerializedName(SERIALIZED_NAME_CONSISTENCY)
  private String consistency;

  public static final String SERIALIZED_NAME_SHOPPING_LIST_UNITS = "shoppingListUnits";
  @SerializedName(SERIALIZED_NAME_SHOPPING_LIST_UNITS)
  private List<String> shoppingListUnits = new ArrayList<>();

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
  private IngredientInformationNutrition nutrition;

  public static final String SERIALIZED_NAME_CATEGORY_PATH = "categoryPath";
  @SerializedName(SERIALIZED_NAME_CATEGORY_PATH)
  private List<String> categoryPath = new ArrayList<>();

  public IngredientInformation() {
  }

  public IngredientInformation id(Integer id) {
    this.id = id;
    return this;
  }

  /**
   * Get id
   * @return id
   */
  @javax.annotation.Nonnull
  public Integer getId() {
    return id;
  }

  public void setId(Integer id) {
    this.id = id;
  }


  public IngredientInformation original(String original) {
    this.original = original;
    return this;
  }

  /**
   * Get original
   * @return original
   */
  @javax.annotation.Nonnull
  public String getOriginal() {
    return original;
  }

  public void setOriginal(String original) {
    this.original = original;
  }


  public IngredientInformation originalName(String originalName) {
    this.originalName = originalName;
    return this;
  }

  /**
   * Get originalName
   * @return originalName
   */
  @javax.annotation.Nonnull
  public String getOriginalName() {
    return originalName;
  }

  public void setOriginalName(String originalName) {
    this.originalName = originalName;
  }


  public IngredientInformation name(String name) {
    this.name = name;
    return this;
  }

  /**
   * Get name
   * @return name
   */
  @javax.annotation.Nonnull
  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }


  public IngredientInformation amount(BigDecimal amount) {
    this.amount = amount;
    return this;
  }

  /**
   * Get amount
   * @return amount
   */
  @javax.annotation.Nonnull
  public BigDecimal getAmount() {
    return amount;
  }

  public void setAmount(BigDecimal amount) {
    this.amount = amount;
  }


  public IngredientInformation unit(String unit) {
    this.unit = unit;
    return this;
  }

  /**
   * Get unit
   * @return unit
   */
  @javax.annotation.Nonnull
  public String getUnit() {
    return unit;
  }

  public void setUnit(String unit) {
    this.unit = unit;
  }


  public IngredientInformation unitShort(String unitShort) {
    this.unitShort = unitShort;
    return this;
  }

  /**
   * Get unitShort
   * @return unitShort
   */
  @javax.annotation.Nonnull
  public String getUnitShort() {
    return unitShort;
  }

  public void setUnitShort(String unitShort) {
    this.unitShort = unitShort;
  }


  public IngredientInformation unitLong(String unitLong) {
    this.unitLong = unitLong;
    return this;
  }

  /**
   * Get unitLong
   * @return unitLong
   */
  @javax.annotation.Nonnull
  public String getUnitLong() {
    return unitLong;
  }

  public void setUnitLong(String unitLong) {
    this.unitLong = unitLong;
  }


  public IngredientInformation possibleUnits(List<String> possibleUnits) {
    this.possibleUnits = possibleUnits;
    return this;
  }

  public IngredientInformation addPossibleUnitsItem(String possibleUnitsItem) {
    if (this.possibleUnits == null) {
      this.possibleUnits = new ArrayList<>();
    }
    this.possibleUnits.add(possibleUnitsItem);
    return this;
  }

  /**
   * Get possibleUnits
   * @return possibleUnits
   */
  @javax.annotation.Nonnull
  public List<String> getPossibleUnits() {
    return possibleUnits;
  }

  public void setPossibleUnits(List<String> possibleUnits) {
    this.possibleUnits = possibleUnits;
  }


  public IngredientInformation estimatedCost(IngredientInformationEstimatedCost estimatedCost) {
    this.estimatedCost = estimatedCost;
    return this;
  }

  /**
   * Get estimatedCost
   * @return estimatedCost
   */
  @javax.annotation.Nonnull
  public IngredientInformationEstimatedCost getEstimatedCost() {
    return estimatedCost;
  }

  public void setEstimatedCost(IngredientInformationEstimatedCost estimatedCost) {
    this.estimatedCost = estimatedCost;
  }


  public IngredientInformation consistency(String consistency) {
    this.consistency = consistency;
    return this;
  }

  /**
   * Get consistency
   * @return consistency
   */
  @javax.annotation.Nonnull
  public String getConsistency() {
    return consistency;
  }

  public void setConsistency(String consistency) {
    this.consistency = consistency;
  }


  public IngredientInformation shoppingListUnits(List<String> shoppingListUnits) {
    this.shoppingListUnits = shoppingListUnits;
    return this;
  }

  public IngredientInformation addShoppingListUnitsItem(String shoppingListUnitsItem) {
    if (this.shoppingListUnits == null) {
      this.shoppingListUnits = new ArrayList<>();
    }
    this.shoppingListUnits.add(shoppingListUnitsItem);
    return this;
  }

  /**
   * Get shoppingListUnits
   * @return shoppingListUnits
   */
  @javax.annotation.Nullable
  public List<String> getShoppingListUnits() {
    return shoppingListUnits;
  }

  public void setShoppingListUnits(List<String> shoppingListUnits) {
    this.shoppingListUnits = shoppingListUnits;
  }


  public IngredientInformation aisle(String aisle) {
    this.aisle = aisle;
    return this;
  }

  /**
   * Get aisle
   * @return aisle
   */
  @javax.annotation.Nonnull
  public String getAisle() {
    return aisle;
  }

  public void setAisle(String aisle) {
    this.aisle = aisle;
  }


  public IngredientInformation image(String image) {
    this.image = image;
    return this;
  }

  /**
   * Get image
   * @return image
   */
  @javax.annotation.Nonnull
  public String getImage() {
    return image;
  }

  public void setImage(String image) {
    this.image = image;
  }


  public IngredientInformation meta(List<String> meta) {
    this.meta = meta;
    return this;
  }

  public IngredientInformation addMetaItem(String metaItem) {
    if (this.meta == null) {
      this.meta = new ArrayList<>();
    }
    this.meta.add(metaItem);
    return this;
  }

  /**
   * Get meta
   * @return meta
   */
  @javax.annotation.Nonnull
  public List<String> getMeta() {
    return meta;
  }

  public void setMeta(List<String> meta) {
    this.meta = meta;
  }


  public IngredientInformation nutrition(IngredientInformationNutrition nutrition) {
    this.nutrition = nutrition;
    return this;
  }

  /**
   * Get nutrition
   * @return nutrition
   */
  @javax.annotation.Nullable
  public IngredientInformationNutrition getNutrition() {
    return nutrition;
  }

  public void setNutrition(IngredientInformationNutrition nutrition) {
    this.nutrition = nutrition;
  }


  public IngredientInformation categoryPath(List<String> categoryPath) {
    this.categoryPath = categoryPath;
    return this;
  }

  public IngredientInformation addCategoryPathItem(String categoryPathItem) {
    if (this.categoryPath == null) {
      this.categoryPath = new ArrayList<>();
    }
    this.categoryPath.add(categoryPathItem);
    return this;
  }

  /**
   * Get categoryPath
   * @return categoryPath
   */
  @javax.annotation.Nullable
  public List<String> getCategoryPath() {
    return categoryPath;
  }

  public void setCategoryPath(List<String> categoryPath) {
    this.categoryPath = categoryPath;
  }



  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    IngredientInformation ingredientInformation = (IngredientInformation) o;
    return Objects.equals(this.id, ingredientInformation.id) &&
        Objects.equals(this.original, ingredientInformation.original) &&
        Objects.equals(this.originalName, ingredientInformation.originalName) &&
        Objects.equals(this.name, ingredientInformation.name) &&
        Objects.equals(this.amount, ingredientInformation.amount) &&
        Objects.equals(this.unit, ingredientInformation.unit) &&
        Objects.equals(this.unitShort, ingredientInformation.unitShort) &&
        Objects.equals(this.unitLong, ingredientInformation.unitLong) &&
        Objects.equals(this.possibleUnits, ingredientInformation.possibleUnits) &&
        Objects.equals(this.estimatedCost, ingredientInformation.estimatedCost) &&
        Objects.equals(this.consistency, ingredientInformation.consistency) &&
        Objects.equals(this.shoppingListUnits, ingredientInformation.shoppingListUnits) &&
        Objects.equals(this.aisle, ingredientInformation.aisle) &&
        Objects.equals(this.image, ingredientInformation.image) &&
        Objects.equals(this.meta, ingredientInformation.meta) &&
        Objects.equals(this.nutrition, ingredientInformation.nutrition) &&
        Objects.equals(this.categoryPath, ingredientInformation.categoryPath);
  }

  @Override
  public int hashCode() {
    return Objects.hash(id, original, originalName, name, amount, unit, unitShort, unitLong, possibleUnits, estimatedCost, consistency, shoppingListUnits, aisle, image, meta, nutrition, categoryPath);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class IngredientInformation {\n");
    sb.append("    id: ").append(toIndentedString(id)).append("\n");
    sb.append("    original: ").append(toIndentedString(original)).append("\n");
    sb.append("    originalName: ").append(toIndentedString(originalName)).append("\n");
    sb.append("    name: ").append(toIndentedString(name)).append("\n");
    sb.append("    amount: ").append(toIndentedString(amount)).append("\n");
    sb.append("    unit: ").append(toIndentedString(unit)).append("\n");
    sb.append("    unitShort: ").append(toIndentedString(unitShort)).append("\n");
    sb.append("    unitLong: ").append(toIndentedString(unitLong)).append("\n");
    sb.append("    possibleUnits: ").append(toIndentedString(possibleUnits)).append("\n");
    sb.append("    estimatedCost: ").append(toIndentedString(estimatedCost)).append("\n");
    sb.append("    consistency: ").append(toIndentedString(consistency)).append("\n");
    sb.append("    shoppingListUnits: ").append(toIndentedString(shoppingListUnits)).append("\n");
    sb.append("    aisle: ").append(toIndentedString(aisle)).append("\n");
    sb.append("    image: ").append(toIndentedString(image)).append("\n");
    sb.append("    meta: ").append(toIndentedString(meta)).append("\n");
    sb.append("    nutrition: ").append(toIndentedString(nutrition)).append("\n");
    sb.append("    categoryPath: ").append(toIndentedString(categoryPath)).append("\n");
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
    openapiFields.add("amount");
    openapiFields.add("unit");
    openapiFields.add("unitShort");
    openapiFields.add("unitLong");
    openapiFields.add("possibleUnits");
    openapiFields.add("estimatedCost");
    openapiFields.add("consistency");
    openapiFields.add("shoppingListUnits");
    openapiFields.add("aisle");
    openapiFields.add("image");
    openapiFields.add("meta");
    openapiFields.add("nutrition");
    openapiFields.add("categoryPath");

    // a set of required properties/fields (JSON key names)
    openapiRequiredFields = new HashSet<String>();
    openapiRequiredFields.add("id");
    openapiRequiredFields.add("original");
    openapiRequiredFields.add("originalName");
    openapiRequiredFields.add("name");
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
  }

  /**
   * Validates the JSON Element and throws an exception if issues found
   *
   * @param jsonElement JSON Element
   * @throws IOException if the JSON Element is invalid with respect to IngredientInformation
   */
  public static void validateJsonElement(JsonElement jsonElement) throws IOException {
      if (jsonElement == null) {
        if (!IngredientInformation.openapiRequiredFields.isEmpty()) { // has required fields but JSON element is null
          throw new IllegalArgumentException(String.format("The required field(s) %s in IngredientInformation is not found in the empty JSON string", IngredientInformation.openapiRequiredFields.toString()));
        }
      }

      Set<Map.Entry<String, JsonElement>> entries = jsonElement.getAsJsonObject().entrySet();
      // check to see if the JSON string contains additional fields
      for (Map.Entry<String, JsonElement> entry : entries) {
        if (!IngredientInformation.openapiFields.contains(entry.getKey())) {
          throw new IllegalArgumentException(String.format("The field `%s` in the JSON string is not defined in the `IngredientInformation` properties. JSON: %s", entry.getKey(), jsonElement.toString()));
        }
      }

      // check to make sure all required properties/fields are present in the JSON string
      for (String requiredField : IngredientInformation.openapiRequiredFields) {
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
      IngredientInformationEstimatedCost.validateJsonElement(jsonObj.get("estimatedCost"));
      if (!jsonObj.get("consistency").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `consistency` to be a primitive type in the JSON string but got `%s`", jsonObj.get("consistency").toString()));
      }
      // ensure the optional json data is an array if present
      if (jsonObj.get("shoppingListUnits") != null && !jsonObj.get("shoppingListUnits").isJsonNull() && !jsonObj.get("shoppingListUnits").isJsonArray()) {
        throw new IllegalArgumentException(String.format("Expected the field `shoppingListUnits` to be an array in the JSON string but got `%s`", jsonObj.get("shoppingListUnits").toString()));
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
      // validate the optional field `nutrition`
      if (jsonObj.get("nutrition") != null && !jsonObj.get("nutrition").isJsonNull()) {
        IngredientInformationNutrition.validateJsonElement(jsonObj.get("nutrition"));
      }
      // ensure the optional json data is an array if present
      if (jsonObj.get("categoryPath") != null && !jsonObj.get("categoryPath").isJsonNull() && !jsonObj.get("categoryPath").isJsonArray()) {
        throw new IllegalArgumentException(String.format("Expected the field `categoryPath` to be an array in the JSON string but got `%s`", jsonObj.get("categoryPath").toString()));
      }
  }

  public static class CustomTypeAdapterFactory implements TypeAdapterFactory {
    @SuppressWarnings("unchecked")
    @Override
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> type) {
       if (!IngredientInformation.class.isAssignableFrom(type.getRawType())) {
         return null; // this class only serializes 'IngredientInformation' and its subtypes
       }
       final TypeAdapter<JsonElement> elementAdapter = gson.getAdapter(JsonElement.class);
       final TypeAdapter<IngredientInformation> thisAdapter
                        = gson.getDelegateAdapter(this, TypeToken.get(IngredientInformation.class));

       return (TypeAdapter<T>) new TypeAdapter<IngredientInformation>() {
           @Override
           public void write(JsonWriter out, IngredientInformation value) throws IOException {
             JsonObject obj = thisAdapter.toJsonTree(value).getAsJsonObject();
             elementAdapter.write(out, obj);
           }

           @Override
           public IngredientInformation read(JsonReader in) throws IOException {
             JsonElement jsonElement = elementAdapter.read(in);
             validateJsonElement(jsonElement);
             return thisAdapter.fromJsonTree(jsonElement);
           }

       }.nullSafe();
    }
  }

  /**
   * Create an instance of IngredientInformation given an JSON string
   *
   * @param jsonString JSON string
   * @return An instance of IngredientInformation
   * @throws IOException if the JSON string is invalid with respect to IngredientInformation
   */
  public static IngredientInformation fromJson(String jsonString) throws IOException {
    return JSON.getGson().fromJson(jsonString, IngredientInformation.class);
  }

  /**
   * Convert an instance of IngredientInformation to an JSON string
   *
   * @return JSON string
   */
  public String toJson() {
    return JSON.getGson().toJson(this);
  }
}

