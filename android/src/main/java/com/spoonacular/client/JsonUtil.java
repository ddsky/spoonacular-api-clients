package com.spoonacular.client;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.reflect.TypeToken;
import java.lang.reflect.Type;
import java.util.List;

public class JsonUtil {
  public static GsonBuilder gsonBuilder;

  static {
    gsonBuilder = new GsonBuilder();
    gsonBuilder.serializeNulls();
    gsonBuilder.setDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSSZ");
  }

  public static Gson getGson() {
    return gsonBuilder.create();
  }

  public static String serialize(Object obj){
    return getGson().toJson(obj);
  }

  public static <T> T deserializeToList(String jsonString, Class cls){
    return getGson().fromJson(jsonString, getListTypeForDeserialization(cls));
  }

  public static <T> T deserializeToObject(String jsonString, Class cls){
    return getGson().fromJson(jsonString, getTypeForDeserialization(cls));
  }

  public static Type getListTypeForDeserialization(Class cls) {
    String className = cls.getSimpleName();
    
    if ("FoodIngredientsMapProducts".equalsIgnoreCase(className)) {
      return new TypeToken<List<FoodIngredientsMapProducts>>(){}.getType();
    }
    
    if ("InlineObject".equalsIgnoreCase(className)) {
      return new TypeToken<List<InlineObject>>(){}.getType();
    }
    
    if ("InlineObject1".equalsIgnoreCase(className)) {
      return new TypeToken<List<InlineObject1>>(){}.getType();
    }
    
    if ("InlineObject10".equalsIgnoreCase(className)) {
      return new TypeToken<List<InlineObject10>>(){}.getType();
    }
    
    if ("InlineObject2".equalsIgnoreCase(className)) {
      return new TypeToken<List<InlineObject2>>(){}.getType();
    }
    
    if ("InlineObject3".equalsIgnoreCase(className)) {
      return new TypeToken<List<InlineObject3>>(){}.getType();
    }
    
    if ("InlineObject4".equalsIgnoreCase(className)) {
      return new TypeToken<List<InlineObject4>>(){}.getType();
    }
    
    if ("InlineObject5".equalsIgnoreCase(className)) {
      return new TypeToken<List<InlineObject5>>(){}.getType();
    }
    
    if ("InlineObject6".equalsIgnoreCase(className)) {
      return new TypeToken<List<InlineObject6>>(){}.getType();
    }
    
    if ("InlineObject7".equalsIgnoreCase(className)) {
      return new TypeToken<List<InlineObject7>>(){}.getType();
    }
    
    if ("InlineObject8".equalsIgnoreCase(className)) {
      return new TypeToken<List<InlineObject8>>(){}.getType();
    }
    
    if ("InlineObject9".equalsIgnoreCase(className)) {
      return new TypeToken<List<InlineObject9>>(){}.getType();
    }
    
    if ("InlineResponse200".equalsIgnoreCase(className)) {
      return new TypeToken<List<InlineResponse200>>(){}.getType();
    }
    
    if ("InlineResponse2001".equalsIgnoreCase(className)) {
      return new TypeToken<List<InlineResponse2001>>(){}.getType();
    }
    
    if ("InlineResponse20010".equalsIgnoreCase(className)) {
      return new TypeToken<List<InlineResponse20010>>(){}.getType();
    }
    
    if ("InlineResponse20010Amount".equalsIgnoreCase(className)) {
      return new TypeToken<List<InlineResponse20010Amount>>(){}.getType();
    }
    
    if ("InlineResponse20010AmountMetric".equalsIgnoreCase(className)) {
      return new TypeToken<List<InlineResponse20010AmountMetric>>(){}.getType();
    }
    
    if ("InlineResponse20010Ingredients".equalsIgnoreCase(className)) {
      return new TypeToken<List<InlineResponse20010Ingredients>>(){}.getType();
    }
    
    if ("InlineResponse20011".equalsIgnoreCase(className)) {
      return new TypeToken<List<InlineResponse20011>>(){}.getType();
    }
    
    if ("InlineResponse20011Ingredients".equalsIgnoreCase(className)) {
      return new TypeToken<List<InlineResponse20011Ingredients>>(){}.getType();
    }
    
    if ("InlineResponse20012".equalsIgnoreCase(className)) {
      return new TypeToken<List<InlineResponse20012>>(){}.getType();
    }
    
    if ("InlineResponse20013".equalsIgnoreCase(className)) {
      return new TypeToken<List<InlineResponse20013>>(){}.getType();
    }
    
    if ("InlineResponse20013Ingredients".equalsIgnoreCase(className)) {
      return new TypeToken<List<InlineResponse20013Ingredients>>(){}.getType();
    }
    
    if ("InlineResponse20013Ingredients1".equalsIgnoreCase(className)) {
      return new TypeToken<List<InlineResponse20013Ingredients1>>(){}.getType();
    }
    
    if ("InlineResponse20013ParsedInstructions".equalsIgnoreCase(className)) {
      return new TypeToken<List<InlineResponse20013ParsedInstructions>>(){}.getType();
    }
    
    if ("InlineResponse20013Steps".equalsIgnoreCase(className)) {
      return new TypeToken<List<InlineResponse20013Steps>>(){}.getType();
    }
    
    if ("InlineResponse20014".equalsIgnoreCase(className)) {
      return new TypeToken<List<InlineResponse20014>>(){}.getType();
    }
    
    if ("InlineResponse20015".equalsIgnoreCase(className)) {
      return new TypeToken<List<InlineResponse20015>>(){}.getType();
    }
    
    if ("InlineResponse20016".equalsIgnoreCase(className)) {
      return new TypeToken<List<InlineResponse20016>>(){}.getType();
    }
    
    if ("InlineResponse20017".equalsIgnoreCase(className)) {
      return new TypeToken<List<InlineResponse20017>>(){}.getType();
    }
    
    if ("InlineResponse20018".equalsIgnoreCase(className)) {
      return new TypeToken<List<InlineResponse20018>>(){}.getType();
    }
    
    if ("InlineResponse20018Dishes".equalsIgnoreCase(className)) {
      return new TypeToken<List<InlineResponse20018Dishes>>(){}.getType();
    }
    
    if ("InlineResponse20018Ingredients".equalsIgnoreCase(className)) {
      return new TypeToken<List<InlineResponse20018Ingredients>>(){}.getType();
    }
    
    if ("InlineResponse20019".equalsIgnoreCase(className)) {
      return new TypeToken<List<InlineResponse20019>>(){}.getType();
    }
    
    if ("InlineResponse2002".equalsIgnoreCase(className)) {
      return new TypeToken<List<InlineResponse2002>>(){}.getType();
    }
    
    if ("InlineResponse20020".equalsIgnoreCase(className)) {
      return new TypeToken<List<InlineResponse20020>>(){}.getType();
    }
    
    if ("InlineResponse20021".equalsIgnoreCase(className)) {
      return new TypeToken<List<InlineResponse20021>>(){}.getType();
    }
    
    if ("InlineResponse20021Calories".equalsIgnoreCase(className)) {
      return new TypeToken<List<InlineResponse20021Calories>>(){}.getType();
    }
    
    if ("InlineResponse20021CaloriesConfidenceRange95Percent".equalsIgnoreCase(className)) {
      return new TypeToken<List<InlineResponse20021CaloriesConfidenceRange95Percent>>(){}.getType();
    }
    
    if ("InlineResponse20022".equalsIgnoreCase(className)) {
      return new TypeToken<List<InlineResponse20022>>(){}.getType();
    }
    
    if ("InlineResponse20022Nutrition".equalsIgnoreCase(className)) {
      return new TypeToken<List<InlineResponse20022Nutrition>>(){}.getType();
    }
    
    if ("InlineResponse20023".equalsIgnoreCase(className)) {
      return new TypeToken<List<InlineResponse20023>>(){}.getType();
    }
    
    if ("InlineResponse20023Ingredients".equalsIgnoreCase(className)) {
      return new TypeToken<List<InlineResponse20023Ingredients>>(){}.getType();
    }
    
    if ("InlineResponse20024".equalsIgnoreCase(className)) {
      return new TypeToken<List<InlineResponse20024>>(){}.getType();
    }
    
    if ("InlineResponse20025".equalsIgnoreCase(className)) {
      return new TypeToken<List<InlineResponse20025>>(){}.getType();
    }
    
    if ("InlineResponse20025Results".equalsIgnoreCase(className)) {
      return new TypeToken<List<InlineResponse20025Results>>(){}.getType();
    }
    
    if ("InlineResponse20026".equalsIgnoreCase(className)) {
      return new TypeToken<List<InlineResponse20026>>(){}.getType();
    }
    
    if ("InlineResponse20027".equalsIgnoreCase(className)) {
      return new TypeToken<List<InlineResponse20027>>(){}.getType();
    }
    
    if ("InlineResponse20028".equalsIgnoreCase(className)) {
      return new TypeToken<List<InlineResponse20028>>(){}.getType();
    }
    
    if ("InlineResponse20028Ingredients".equalsIgnoreCase(className)) {
      return new TypeToken<List<InlineResponse20028Ingredients>>(){}.getType();
    }
    
    if ("InlineResponse20028Nutrition".equalsIgnoreCase(className)) {
      return new TypeToken<List<InlineResponse20028Nutrition>>(){}.getType();
    }
    
    if ("InlineResponse20028Servings".equalsIgnoreCase(className)) {
      return new TypeToken<List<InlineResponse20028Servings>>(){}.getType();
    }
    
    if ("InlineResponse20029".equalsIgnoreCase(className)) {
      return new TypeToken<List<InlineResponse20029>>(){}.getType();
    }
    
    if ("InlineResponse20029CustomFoods".equalsIgnoreCase(className)) {
      return new TypeToken<List<InlineResponse20029CustomFoods>>(){}.getType();
    }
    
    if ("InlineResponse2003".equalsIgnoreCase(className)) {
      return new TypeToken<List<InlineResponse2003>>(){}.getType();
    }
    
    if ("InlineResponse20030".equalsIgnoreCase(className)) {
      return new TypeToken<List<InlineResponse20030>>(){}.getType();
    }
    
    if ("InlineResponse20030Ingredients".equalsIgnoreCase(className)) {
      return new TypeToken<List<InlineResponse20030Ingredients>>(){}.getType();
    }
    
    if ("InlineResponse20031".equalsIgnoreCase(className)) {
      return new TypeToken<List<InlineResponse20031>>(){}.getType();
    }
    
    if ("InlineResponse20031ComparableProducts".equalsIgnoreCase(className)) {
      return new TypeToken<List<InlineResponse20031ComparableProducts>>(){}.getType();
    }
    
    if ("InlineResponse20031ComparableProductsProtein".equalsIgnoreCase(className)) {
      return new TypeToken<List<InlineResponse20031ComparableProductsProtein>>(){}.getType();
    }
    
    if ("InlineResponse20032".equalsIgnoreCase(className)) {
      return new TypeToken<List<InlineResponse20032>>(){}.getType();
    }
    
    if ("InlineResponse20032Results".equalsIgnoreCase(className)) {
      return new TypeToken<List<InlineResponse20032Results>>(){}.getType();
    }
    
    if ("InlineResponse20033".equalsIgnoreCase(className)) {
      return new TypeToken<List<InlineResponse20033>>(){}.getType();
    }
    
    if ("InlineResponse20034".equalsIgnoreCase(className)) {
      return new TypeToken<List<InlineResponse20034>>(){}.getType();
    }
    
    if ("InlineResponse20035".equalsIgnoreCase(className)) {
      return new TypeToken<List<InlineResponse20035>>(){}.getType();
    }
    
    if ("InlineResponse20035MenuItems".equalsIgnoreCase(className)) {
      return new TypeToken<List<InlineResponse20035MenuItems>>(){}.getType();
    }
    
    if ("InlineResponse20036".equalsIgnoreCase(className)) {
      return new TypeToken<List<InlineResponse20036>>(){}.getType();
    }
    
    if ("InlineResponse20037".equalsIgnoreCase(className)) {
      return new TypeToken<List<InlineResponse20037>>(){}.getType();
    }
    
    if ("InlineResponse20037Nutrients".equalsIgnoreCase(className)) {
      return new TypeToken<List<InlineResponse20037Nutrients>>(){}.getType();
    }
    
    if ("InlineResponse20038".equalsIgnoreCase(className)) {
      return new TypeToken<List<InlineResponse20038>>(){}.getType();
    }
    
    if ("InlineResponse20038Days".equalsIgnoreCase(className)) {
      return new TypeToken<List<InlineResponse20038Days>>(){}.getType();
    }
    
    if ("InlineResponse20038Items".equalsIgnoreCase(className)) {
      return new TypeToken<List<InlineResponse20038Items>>(){}.getType();
    }
    
    if ("InlineResponse20038NutritionSummary".equalsIgnoreCase(className)) {
      return new TypeToken<List<InlineResponse20038NutritionSummary>>(){}.getType();
    }
    
    if ("InlineResponse20038NutritionSummaryNutrients".equalsIgnoreCase(className)) {
      return new TypeToken<List<InlineResponse20038NutritionSummaryNutrients>>(){}.getType();
    }
    
    if ("InlineResponse20038Value".equalsIgnoreCase(className)) {
      return new TypeToken<List<InlineResponse20038Value>>(){}.getType();
    }
    
    if ("InlineResponse20039".equalsIgnoreCase(className)) {
      return new TypeToken<List<InlineResponse20039>>(){}.getType();
    }
    
    if ("InlineResponse2003ExtendedIngredients".equalsIgnoreCase(className)) {
      return new TypeToken<List<InlineResponse2003ExtendedIngredients>>(){}.getType();
    }
    
    if ("InlineResponse2003Measures".equalsIgnoreCase(className)) {
      return new TypeToken<List<InlineResponse2003Measures>>(){}.getType();
    }
    
    if ("InlineResponse2003MeasuresMetric".equalsIgnoreCase(className)) {
      return new TypeToken<List<InlineResponse2003MeasuresMetric>>(){}.getType();
    }
    
    if ("InlineResponse2003WinePairing".equalsIgnoreCase(className)) {
      return new TypeToken<List<InlineResponse2003WinePairing>>(){}.getType();
    }
    
    if ("InlineResponse2003WinePairingProductMatches".equalsIgnoreCase(className)) {
      return new TypeToken<List<InlineResponse2003WinePairingProductMatches>>(){}.getType();
    }
    
    if ("InlineResponse2004".equalsIgnoreCase(className)) {
      return new TypeToken<List<InlineResponse2004>>(){}.getType();
    }
    
    if ("InlineResponse20040".equalsIgnoreCase(className)) {
      return new TypeToken<List<InlineResponse20040>>(){}.getType();
    }
    
    if ("InlineResponse20040Items".equalsIgnoreCase(className)) {
      return new TypeToken<List<InlineResponse20040Items>>(){}.getType();
    }
    
    if ("InlineResponse20040Value".equalsIgnoreCase(className)) {
      return new TypeToken<List<InlineResponse20040Value>>(){}.getType();
    }
    
    if ("InlineResponse20041".equalsIgnoreCase(className)) {
      return new TypeToken<List<InlineResponse20041>>(){}.getType();
    }
    
    if ("InlineResponse20041Days".equalsIgnoreCase(className)) {
      return new TypeToken<List<InlineResponse20041Days>>(){}.getType();
    }
    
    if ("InlineResponse20041Items".equalsIgnoreCase(className)) {
      return new TypeToken<List<InlineResponse20041Items>>(){}.getType();
    }
    
    if ("InlineResponse20041Value".equalsIgnoreCase(className)) {
      return new TypeToken<List<InlineResponse20041Value>>(){}.getType();
    }
    
    if ("InlineResponse20042".equalsIgnoreCase(className)) {
      return new TypeToken<List<InlineResponse20042>>(){}.getType();
    }
    
    if ("InlineResponse20042Aisles".equalsIgnoreCase(className)) {
      return new TypeToken<List<InlineResponse20042Aisles>>(){}.getType();
    }
    
    if ("InlineResponse20042Items".equalsIgnoreCase(className)) {
      return new TypeToken<List<InlineResponse20042Items>>(){}.getType();
    }
    
    if ("InlineResponse20042Measures".equalsIgnoreCase(className)) {
      return new TypeToken<List<InlineResponse20042Measures>>(){}.getType();
    }
    
    if ("InlineResponse20043".equalsIgnoreCase(className)) {
      return new TypeToken<List<InlineResponse20043>>(){}.getType();
    }
    
    if ("InlineResponse20044".equalsIgnoreCase(className)) {
      return new TypeToken<List<InlineResponse20044>>(){}.getType();
    }
    
    if ("InlineResponse20045".equalsIgnoreCase(className)) {
      return new TypeToken<List<InlineResponse20045>>(){}.getType();
    }
    
    if ("InlineResponse20045ProductMatches".equalsIgnoreCase(className)) {
      return new TypeToken<List<InlineResponse20045ProductMatches>>(){}.getType();
    }
    
    if ("InlineResponse20046".equalsIgnoreCase(className)) {
      return new TypeToken<List<InlineResponse20046>>(){}.getType();
    }
    
    if ("InlineResponse20047".equalsIgnoreCase(className)) {
      return new TypeToken<List<InlineResponse20047>>(){}.getType();
    }
    
    if ("InlineResponse20047RecommendedWines".equalsIgnoreCase(className)) {
      return new TypeToken<List<InlineResponse20047RecommendedWines>>(){}.getType();
    }
    
    if ("InlineResponse20048".equalsIgnoreCase(className)) {
      return new TypeToken<List<InlineResponse20048>>(){}.getType();
    }
    
    if ("InlineResponse20049".equalsIgnoreCase(className)) {
      return new TypeToken<List<InlineResponse20049>>(){}.getType();
    }
    
    if ("InlineResponse20049Category".equalsIgnoreCase(className)) {
      return new TypeToken<List<InlineResponse20049Category>>(){}.getType();
    }
    
    if ("InlineResponse20049Nutrition".equalsIgnoreCase(className)) {
      return new TypeToken<List<InlineResponse20049Nutrition>>(){}.getType();
    }
    
    if ("InlineResponse20049NutritionCalories".equalsIgnoreCase(className)) {
      return new TypeToken<List<InlineResponse20049NutritionCalories>>(){}.getType();
    }
    
    if ("InlineResponse20049NutritionCaloriesConfidenceRange95Percent".equalsIgnoreCase(className)) {
      return new TypeToken<List<InlineResponse20049NutritionCaloriesConfidenceRange95Percent>>(){}.getType();
    }
    
    if ("InlineResponse20049Recipes".equalsIgnoreCase(className)) {
      return new TypeToken<List<InlineResponse20049Recipes>>(){}.getType();
    }
    
    if ("InlineResponse2005".equalsIgnoreCase(className)) {
      return new TypeToken<List<InlineResponse2005>>(){}.getType();
    }
    
    if ("InlineResponse20050".equalsIgnoreCase(className)) {
      return new TypeToken<List<InlineResponse20050>>(){}.getType();
    }
    
    if ("InlineResponse20051".equalsIgnoreCase(className)) {
      return new TypeToken<List<InlineResponse20051>>(){}.getType();
    }
    
    if ("InlineResponse20052".equalsIgnoreCase(className)) {
      return new TypeToken<List<InlineResponse20052>>(){}.getType();
    }
    
    if ("InlineResponse20053".equalsIgnoreCase(className)) {
      return new TypeToken<List<InlineResponse20053>>(){}.getType();
    }
    
    if ("InlineResponse20053Results".equalsIgnoreCase(className)) {
      return new TypeToken<List<InlineResponse20053Results>>(){}.getType();
    }
    
    if ("InlineResponse20053SearchResults".equalsIgnoreCase(className)) {
      return new TypeToken<List<InlineResponse20053SearchResults>>(){}.getType();
    }
    
    if ("InlineResponse20054".equalsIgnoreCase(className)) {
      return new TypeToken<List<InlineResponse20054>>(){}.getType();
    }
    
    if ("InlineResponse20054Videos".equalsIgnoreCase(className)) {
      return new TypeToken<List<InlineResponse20054Videos>>(){}.getType();
    }
    
    if ("InlineResponse20055".equalsIgnoreCase(className)) {
      return new TypeToken<List<InlineResponse20055>>(){}.getType();
    }
    
    if ("InlineResponse20056".equalsIgnoreCase(className)) {
      return new TypeToken<List<InlineResponse20056>>(){}.getType();
    }
    
    if ("InlineResponse20057".equalsIgnoreCase(className)) {
      return new TypeToken<List<InlineResponse20057>>(){}.getType();
    }
    
    if ("InlineResponse20057Suggests".equalsIgnoreCase(className)) {
      return new TypeToken<List<InlineResponse20057Suggests>>(){}.getType();
    }
    
    if ("InlineResponse2006".equalsIgnoreCase(className)) {
      return new TypeToken<List<InlineResponse2006>>(){}.getType();
    }
    
    if ("InlineResponse2006Recipes".equalsIgnoreCase(className)) {
      return new TypeToken<List<InlineResponse2006Recipes>>(){}.getType();
    }
    
    if ("InlineResponse2007".equalsIgnoreCase(className)) {
      return new TypeToken<List<InlineResponse2007>>(){}.getType();
    }
    
    if ("InlineResponse2008".equalsIgnoreCase(className)) {
      return new TypeToken<List<InlineResponse2008>>(){}.getType();
    }
    
    if ("InlineResponse2009".equalsIgnoreCase(className)) {
      return new TypeToken<List<InlineResponse2009>>(){}.getType();
    }
    
    if ("InlineResponse200Results".equalsIgnoreCase(className)) {
      return new TypeToken<List<InlineResponse200Results>>(){}.getType();
    }
    
    if ("RecipesFindByIngredientsMissedIngredients".equalsIgnoreCase(className)) {
      return new TypeToken<List<RecipesFindByIngredientsMissedIngredients>>(){}.getType();
    }
    
    if ("RecipesParseIngredientsEstimatedCost".equalsIgnoreCase(className)) {
      return new TypeToken<List<RecipesParseIngredientsEstimatedCost>>(){}.getType();
    }
    
    if ("RecipesParseIngredientsNutrition".equalsIgnoreCase(className)) {
      return new TypeToken<List<RecipesParseIngredientsNutrition>>(){}.getType();
    }
    
    if ("RecipesParseIngredientsNutritionCaloricBreakdown".equalsIgnoreCase(className)) {
      return new TypeToken<List<RecipesParseIngredientsNutritionCaloricBreakdown>>(){}.getType();
    }
    
    if ("RecipesParseIngredientsNutritionNutrients".equalsIgnoreCase(className)) {
      return new TypeToken<List<RecipesParseIngredientsNutritionNutrients>>(){}.getType();
    }
    
    if ("RecipesParseIngredientsNutritionProperties".equalsIgnoreCase(className)) {
      return new TypeToken<List<RecipesParseIngredientsNutritionProperties>>(){}.getType();
    }
    
    if ("RecipesParseIngredientsNutritionWeightPerServing".equalsIgnoreCase(className)) {
      return new TypeToken<List<RecipesParseIngredientsNutritionWeightPerServing>>(){}.getType();
    }
    
    return new TypeToken<List<Object>>(){}.getType();
  }

  public static Type getTypeForDeserialization(Class cls) {
    String className = cls.getSimpleName();
    
    if ("FoodIngredientsMapProducts".equalsIgnoreCase(className)) {
      return new TypeToken<FoodIngredientsMapProducts>(){}.getType();
    }
    
    if ("InlineObject".equalsIgnoreCase(className)) {
      return new TypeToken<InlineObject>(){}.getType();
    }
    
    if ("InlineObject1".equalsIgnoreCase(className)) {
      return new TypeToken<InlineObject1>(){}.getType();
    }
    
    if ("InlineObject10".equalsIgnoreCase(className)) {
      return new TypeToken<InlineObject10>(){}.getType();
    }
    
    if ("InlineObject2".equalsIgnoreCase(className)) {
      return new TypeToken<InlineObject2>(){}.getType();
    }
    
    if ("InlineObject3".equalsIgnoreCase(className)) {
      return new TypeToken<InlineObject3>(){}.getType();
    }
    
    if ("InlineObject4".equalsIgnoreCase(className)) {
      return new TypeToken<InlineObject4>(){}.getType();
    }
    
    if ("InlineObject5".equalsIgnoreCase(className)) {
      return new TypeToken<InlineObject5>(){}.getType();
    }
    
    if ("InlineObject6".equalsIgnoreCase(className)) {
      return new TypeToken<InlineObject6>(){}.getType();
    }
    
    if ("InlineObject7".equalsIgnoreCase(className)) {
      return new TypeToken<InlineObject7>(){}.getType();
    }
    
    if ("InlineObject8".equalsIgnoreCase(className)) {
      return new TypeToken<InlineObject8>(){}.getType();
    }
    
    if ("InlineObject9".equalsIgnoreCase(className)) {
      return new TypeToken<InlineObject9>(){}.getType();
    }
    
    if ("InlineResponse200".equalsIgnoreCase(className)) {
      return new TypeToken<InlineResponse200>(){}.getType();
    }
    
    if ("InlineResponse2001".equalsIgnoreCase(className)) {
      return new TypeToken<InlineResponse2001>(){}.getType();
    }
    
    if ("InlineResponse20010".equalsIgnoreCase(className)) {
      return new TypeToken<InlineResponse20010>(){}.getType();
    }
    
    if ("InlineResponse20010Amount".equalsIgnoreCase(className)) {
      return new TypeToken<InlineResponse20010Amount>(){}.getType();
    }
    
    if ("InlineResponse20010AmountMetric".equalsIgnoreCase(className)) {
      return new TypeToken<InlineResponse20010AmountMetric>(){}.getType();
    }
    
    if ("InlineResponse20010Ingredients".equalsIgnoreCase(className)) {
      return new TypeToken<InlineResponse20010Ingredients>(){}.getType();
    }
    
    if ("InlineResponse20011".equalsIgnoreCase(className)) {
      return new TypeToken<InlineResponse20011>(){}.getType();
    }
    
    if ("InlineResponse20011Ingredients".equalsIgnoreCase(className)) {
      return new TypeToken<InlineResponse20011Ingredients>(){}.getType();
    }
    
    if ("InlineResponse20012".equalsIgnoreCase(className)) {
      return new TypeToken<InlineResponse20012>(){}.getType();
    }
    
    if ("InlineResponse20013".equalsIgnoreCase(className)) {
      return new TypeToken<InlineResponse20013>(){}.getType();
    }
    
    if ("InlineResponse20013Ingredients".equalsIgnoreCase(className)) {
      return new TypeToken<InlineResponse20013Ingredients>(){}.getType();
    }
    
    if ("InlineResponse20013Ingredients1".equalsIgnoreCase(className)) {
      return new TypeToken<InlineResponse20013Ingredients1>(){}.getType();
    }
    
    if ("InlineResponse20013ParsedInstructions".equalsIgnoreCase(className)) {
      return new TypeToken<InlineResponse20013ParsedInstructions>(){}.getType();
    }
    
    if ("InlineResponse20013Steps".equalsIgnoreCase(className)) {
      return new TypeToken<InlineResponse20013Steps>(){}.getType();
    }
    
    if ("InlineResponse20014".equalsIgnoreCase(className)) {
      return new TypeToken<InlineResponse20014>(){}.getType();
    }
    
    if ("InlineResponse20015".equalsIgnoreCase(className)) {
      return new TypeToken<InlineResponse20015>(){}.getType();
    }
    
    if ("InlineResponse20016".equalsIgnoreCase(className)) {
      return new TypeToken<InlineResponse20016>(){}.getType();
    }
    
    if ("InlineResponse20017".equalsIgnoreCase(className)) {
      return new TypeToken<InlineResponse20017>(){}.getType();
    }
    
    if ("InlineResponse20018".equalsIgnoreCase(className)) {
      return new TypeToken<InlineResponse20018>(){}.getType();
    }
    
    if ("InlineResponse20018Dishes".equalsIgnoreCase(className)) {
      return new TypeToken<InlineResponse20018Dishes>(){}.getType();
    }
    
    if ("InlineResponse20018Ingredients".equalsIgnoreCase(className)) {
      return new TypeToken<InlineResponse20018Ingredients>(){}.getType();
    }
    
    if ("InlineResponse20019".equalsIgnoreCase(className)) {
      return new TypeToken<InlineResponse20019>(){}.getType();
    }
    
    if ("InlineResponse2002".equalsIgnoreCase(className)) {
      return new TypeToken<InlineResponse2002>(){}.getType();
    }
    
    if ("InlineResponse20020".equalsIgnoreCase(className)) {
      return new TypeToken<InlineResponse20020>(){}.getType();
    }
    
    if ("InlineResponse20021".equalsIgnoreCase(className)) {
      return new TypeToken<InlineResponse20021>(){}.getType();
    }
    
    if ("InlineResponse20021Calories".equalsIgnoreCase(className)) {
      return new TypeToken<InlineResponse20021Calories>(){}.getType();
    }
    
    if ("InlineResponse20021CaloriesConfidenceRange95Percent".equalsIgnoreCase(className)) {
      return new TypeToken<InlineResponse20021CaloriesConfidenceRange95Percent>(){}.getType();
    }
    
    if ("InlineResponse20022".equalsIgnoreCase(className)) {
      return new TypeToken<InlineResponse20022>(){}.getType();
    }
    
    if ("InlineResponse20022Nutrition".equalsIgnoreCase(className)) {
      return new TypeToken<InlineResponse20022Nutrition>(){}.getType();
    }
    
    if ("InlineResponse20023".equalsIgnoreCase(className)) {
      return new TypeToken<InlineResponse20023>(){}.getType();
    }
    
    if ("InlineResponse20023Ingredients".equalsIgnoreCase(className)) {
      return new TypeToken<InlineResponse20023Ingredients>(){}.getType();
    }
    
    if ("InlineResponse20024".equalsIgnoreCase(className)) {
      return new TypeToken<InlineResponse20024>(){}.getType();
    }
    
    if ("InlineResponse20025".equalsIgnoreCase(className)) {
      return new TypeToken<InlineResponse20025>(){}.getType();
    }
    
    if ("InlineResponse20025Results".equalsIgnoreCase(className)) {
      return new TypeToken<InlineResponse20025Results>(){}.getType();
    }
    
    if ("InlineResponse20026".equalsIgnoreCase(className)) {
      return new TypeToken<InlineResponse20026>(){}.getType();
    }
    
    if ("InlineResponse20027".equalsIgnoreCase(className)) {
      return new TypeToken<InlineResponse20027>(){}.getType();
    }
    
    if ("InlineResponse20028".equalsIgnoreCase(className)) {
      return new TypeToken<InlineResponse20028>(){}.getType();
    }
    
    if ("InlineResponse20028Ingredients".equalsIgnoreCase(className)) {
      return new TypeToken<InlineResponse20028Ingredients>(){}.getType();
    }
    
    if ("InlineResponse20028Nutrition".equalsIgnoreCase(className)) {
      return new TypeToken<InlineResponse20028Nutrition>(){}.getType();
    }
    
    if ("InlineResponse20028Servings".equalsIgnoreCase(className)) {
      return new TypeToken<InlineResponse20028Servings>(){}.getType();
    }
    
    if ("InlineResponse20029".equalsIgnoreCase(className)) {
      return new TypeToken<InlineResponse20029>(){}.getType();
    }
    
    if ("InlineResponse20029CustomFoods".equalsIgnoreCase(className)) {
      return new TypeToken<InlineResponse20029CustomFoods>(){}.getType();
    }
    
    if ("InlineResponse2003".equalsIgnoreCase(className)) {
      return new TypeToken<InlineResponse2003>(){}.getType();
    }
    
    if ("InlineResponse20030".equalsIgnoreCase(className)) {
      return new TypeToken<InlineResponse20030>(){}.getType();
    }
    
    if ("InlineResponse20030Ingredients".equalsIgnoreCase(className)) {
      return new TypeToken<InlineResponse20030Ingredients>(){}.getType();
    }
    
    if ("InlineResponse20031".equalsIgnoreCase(className)) {
      return new TypeToken<InlineResponse20031>(){}.getType();
    }
    
    if ("InlineResponse20031ComparableProducts".equalsIgnoreCase(className)) {
      return new TypeToken<InlineResponse20031ComparableProducts>(){}.getType();
    }
    
    if ("InlineResponse20031ComparableProductsProtein".equalsIgnoreCase(className)) {
      return new TypeToken<InlineResponse20031ComparableProductsProtein>(){}.getType();
    }
    
    if ("InlineResponse20032".equalsIgnoreCase(className)) {
      return new TypeToken<InlineResponse20032>(){}.getType();
    }
    
    if ("InlineResponse20032Results".equalsIgnoreCase(className)) {
      return new TypeToken<InlineResponse20032Results>(){}.getType();
    }
    
    if ("InlineResponse20033".equalsIgnoreCase(className)) {
      return new TypeToken<InlineResponse20033>(){}.getType();
    }
    
    if ("InlineResponse20034".equalsIgnoreCase(className)) {
      return new TypeToken<InlineResponse20034>(){}.getType();
    }
    
    if ("InlineResponse20035".equalsIgnoreCase(className)) {
      return new TypeToken<InlineResponse20035>(){}.getType();
    }
    
    if ("InlineResponse20035MenuItems".equalsIgnoreCase(className)) {
      return new TypeToken<InlineResponse20035MenuItems>(){}.getType();
    }
    
    if ("InlineResponse20036".equalsIgnoreCase(className)) {
      return new TypeToken<InlineResponse20036>(){}.getType();
    }
    
    if ("InlineResponse20037".equalsIgnoreCase(className)) {
      return new TypeToken<InlineResponse20037>(){}.getType();
    }
    
    if ("InlineResponse20037Nutrients".equalsIgnoreCase(className)) {
      return new TypeToken<InlineResponse20037Nutrients>(){}.getType();
    }
    
    if ("InlineResponse20038".equalsIgnoreCase(className)) {
      return new TypeToken<InlineResponse20038>(){}.getType();
    }
    
    if ("InlineResponse20038Days".equalsIgnoreCase(className)) {
      return new TypeToken<InlineResponse20038Days>(){}.getType();
    }
    
    if ("InlineResponse20038Items".equalsIgnoreCase(className)) {
      return new TypeToken<InlineResponse20038Items>(){}.getType();
    }
    
    if ("InlineResponse20038NutritionSummary".equalsIgnoreCase(className)) {
      return new TypeToken<InlineResponse20038NutritionSummary>(){}.getType();
    }
    
    if ("InlineResponse20038NutritionSummaryNutrients".equalsIgnoreCase(className)) {
      return new TypeToken<InlineResponse20038NutritionSummaryNutrients>(){}.getType();
    }
    
    if ("InlineResponse20038Value".equalsIgnoreCase(className)) {
      return new TypeToken<InlineResponse20038Value>(){}.getType();
    }
    
    if ("InlineResponse20039".equalsIgnoreCase(className)) {
      return new TypeToken<InlineResponse20039>(){}.getType();
    }
    
    if ("InlineResponse2003ExtendedIngredients".equalsIgnoreCase(className)) {
      return new TypeToken<InlineResponse2003ExtendedIngredients>(){}.getType();
    }
    
    if ("InlineResponse2003Measures".equalsIgnoreCase(className)) {
      return new TypeToken<InlineResponse2003Measures>(){}.getType();
    }
    
    if ("InlineResponse2003MeasuresMetric".equalsIgnoreCase(className)) {
      return new TypeToken<InlineResponse2003MeasuresMetric>(){}.getType();
    }
    
    if ("InlineResponse2003WinePairing".equalsIgnoreCase(className)) {
      return new TypeToken<InlineResponse2003WinePairing>(){}.getType();
    }
    
    if ("InlineResponse2003WinePairingProductMatches".equalsIgnoreCase(className)) {
      return new TypeToken<InlineResponse2003WinePairingProductMatches>(){}.getType();
    }
    
    if ("InlineResponse2004".equalsIgnoreCase(className)) {
      return new TypeToken<InlineResponse2004>(){}.getType();
    }
    
    if ("InlineResponse20040".equalsIgnoreCase(className)) {
      return new TypeToken<InlineResponse20040>(){}.getType();
    }
    
    if ("InlineResponse20040Items".equalsIgnoreCase(className)) {
      return new TypeToken<InlineResponse20040Items>(){}.getType();
    }
    
    if ("InlineResponse20040Value".equalsIgnoreCase(className)) {
      return new TypeToken<InlineResponse20040Value>(){}.getType();
    }
    
    if ("InlineResponse20041".equalsIgnoreCase(className)) {
      return new TypeToken<InlineResponse20041>(){}.getType();
    }
    
    if ("InlineResponse20041Days".equalsIgnoreCase(className)) {
      return new TypeToken<InlineResponse20041Days>(){}.getType();
    }
    
    if ("InlineResponse20041Items".equalsIgnoreCase(className)) {
      return new TypeToken<InlineResponse20041Items>(){}.getType();
    }
    
    if ("InlineResponse20041Value".equalsIgnoreCase(className)) {
      return new TypeToken<InlineResponse20041Value>(){}.getType();
    }
    
    if ("InlineResponse20042".equalsIgnoreCase(className)) {
      return new TypeToken<InlineResponse20042>(){}.getType();
    }
    
    if ("InlineResponse20042Aisles".equalsIgnoreCase(className)) {
      return new TypeToken<InlineResponse20042Aisles>(){}.getType();
    }
    
    if ("InlineResponse20042Items".equalsIgnoreCase(className)) {
      return new TypeToken<InlineResponse20042Items>(){}.getType();
    }
    
    if ("InlineResponse20042Measures".equalsIgnoreCase(className)) {
      return new TypeToken<InlineResponse20042Measures>(){}.getType();
    }
    
    if ("InlineResponse20043".equalsIgnoreCase(className)) {
      return new TypeToken<InlineResponse20043>(){}.getType();
    }
    
    if ("InlineResponse20044".equalsIgnoreCase(className)) {
      return new TypeToken<InlineResponse20044>(){}.getType();
    }
    
    if ("InlineResponse20045".equalsIgnoreCase(className)) {
      return new TypeToken<InlineResponse20045>(){}.getType();
    }
    
    if ("InlineResponse20045ProductMatches".equalsIgnoreCase(className)) {
      return new TypeToken<InlineResponse20045ProductMatches>(){}.getType();
    }
    
    if ("InlineResponse20046".equalsIgnoreCase(className)) {
      return new TypeToken<InlineResponse20046>(){}.getType();
    }
    
    if ("InlineResponse20047".equalsIgnoreCase(className)) {
      return new TypeToken<InlineResponse20047>(){}.getType();
    }
    
    if ("InlineResponse20047RecommendedWines".equalsIgnoreCase(className)) {
      return new TypeToken<InlineResponse20047RecommendedWines>(){}.getType();
    }
    
    if ("InlineResponse20048".equalsIgnoreCase(className)) {
      return new TypeToken<InlineResponse20048>(){}.getType();
    }
    
    if ("InlineResponse20049".equalsIgnoreCase(className)) {
      return new TypeToken<InlineResponse20049>(){}.getType();
    }
    
    if ("InlineResponse20049Category".equalsIgnoreCase(className)) {
      return new TypeToken<InlineResponse20049Category>(){}.getType();
    }
    
    if ("InlineResponse20049Nutrition".equalsIgnoreCase(className)) {
      return new TypeToken<InlineResponse20049Nutrition>(){}.getType();
    }
    
    if ("InlineResponse20049NutritionCalories".equalsIgnoreCase(className)) {
      return new TypeToken<InlineResponse20049NutritionCalories>(){}.getType();
    }
    
    if ("InlineResponse20049NutritionCaloriesConfidenceRange95Percent".equalsIgnoreCase(className)) {
      return new TypeToken<InlineResponse20049NutritionCaloriesConfidenceRange95Percent>(){}.getType();
    }
    
    if ("InlineResponse20049Recipes".equalsIgnoreCase(className)) {
      return new TypeToken<InlineResponse20049Recipes>(){}.getType();
    }
    
    if ("InlineResponse2005".equalsIgnoreCase(className)) {
      return new TypeToken<InlineResponse2005>(){}.getType();
    }
    
    if ("InlineResponse20050".equalsIgnoreCase(className)) {
      return new TypeToken<InlineResponse20050>(){}.getType();
    }
    
    if ("InlineResponse20051".equalsIgnoreCase(className)) {
      return new TypeToken<InlineResponse20051>(){}.getType();
    }
    
    if ("InlineResponse20052".equalsIgnoreCase(className)) {
      return new TypeToken<InlineResponse20052>(){}.getType();
    }
    
    if ("InlineResponse20053".equalsIgnoreCase(className)) {
      return new TypeToken<InlineResponse20053>(){}.getType();
    }
    
    if ("InlineResponse20053Results".equalsIgnoreCase(className)) {
      return new TypeToken<InlineResponse20053Results>(){}.getType();
    }
    
    if ("InlineResponse20053SearchResults".equalsIgnoreCase(className)) {
      return new TypeToken<InlineResponse20053SearchResults>(){}.getType();
    }
    
    if ("InlineResponse20054".equalsIgnoreCase(className)) {
      return new TypeToken<InlineResponse20054>(){}.getType();
    }
    
    if ("InlineResponse20054Videos".equalsIgnoreCase(className)) {
      return new TypeToken<InlineResponse20054Videos>(){}.getType();
    }
    
    if ("InlineResponse20055".equalsIgnoreCase(className)) {
      return new TypeToken<InlineResponse20055>(){}.getType();
    }
    
    if ("InlineResponse20056".equalsIgnoreCase(className)) {
      return new TypeToken<InlineResponse20056>(){}.getType();
    }
    
    if ("InlineResponse20057".equalsIgnoreCase(className)) {
      return new TypeToken<InlineResponse20057>(){}.getType();
    }
    
    if ("InlineResponse20057Suggests".equalsIgnoreCase(className)) {
      return new TypeToken<InlineResponse20057Suggests>(){}.getType();
    }
    
    if ("InlineResponse2006".equalsIgnoreCase(className)) {
      return new TypeToken<InlineResponse2006>(){}.getType();
    }
    
    if ("InlineResponse2006Recipes".equalsIgnoreCase(className)) {
      return new TypeToken<InlineResponse2006Recipes>(){}.getType();
    }
    
    if ("InlineResponse2007".equalsIgnoreCase(className)) {
      return new TypeToken<InlineResponse2007>(){}.getType();
    }
    
    if ("InlineResponse2008".equalsIgnoreCase(className)) {
      return new TypeToken<InlineResponse2008>(){}.getType();
    }
    
    if ("InlineResponse2009".equalsIgnoreCase(className)) {
      return new TypeToken<InlineResponse2009>(){}.getType();
    }
    
    if ("InlineResponse200Results".equalsIgnoreCase(className)) {
      return new TypeToken<InlineResponse200Results>(){}.getType();
    }
    
    if ("RecipesFindByIngredientsMissedIngredients".equalsIgnoreCase(className)) {
      return new TypeToken<RecipesFindByIngredientsMissedIngredients>(){}.getType();
    }
    
    if ("RecipesParseIngredientsEstimatedCost".equalsIgnoreCase(className)) {
      return new TypeToken<RecipesParseIngredientsEstimatedCost>(){}.getType();
    }
    
    if ("RecipesParseIngredientsNutrition".equalsIgnoreCase(className)) {
      return new TypeToken<RecipesParseIngredientsNutrition>(){}.getType();
    }
    
    if ("RecipesParseIngredientsNutritionCaloricBreakdown".equalsIgnoreCase(className)) {
      return new TypeToken<RecipesParseIngredientsNutritionCaloricBreakdown>(){}.getType();
    }
    
    if ("RecipesParseIngredientsNutritionNutrients".equalsIgnoreCase(className)) {
      return new TypeToken<RecipesParseIngredientsNutritionNutrients>(){}.getType();
    }
    
    if ("RecipesParseIngredientsNutritionProperties".equalsIgnoreCase(className)) {
      return new TypeToken<RecipesParseIngredientsNutritionProperties>(){}.getType();
    }
    
    if ("RecipesParseIngredientsNutritionWeightPerServing".equalsIgnoreCase(className)) {
      return new TypeToken<RecipesParseIngredientsNutritionWeightPerServing>(){}.getType();
    }
    
    return new TypeToken<Object>(){}.getType();
  }

};
