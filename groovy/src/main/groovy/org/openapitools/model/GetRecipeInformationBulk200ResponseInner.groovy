package org.openapitools.model;

import groovy.transform.Canonical
import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.LinkedHashSet;
import java.util.Set;
import org.openapitools.model.GetRecipeInformation200ResponseExtendedIngredientsInner;
import org.openapitools.model.GetRecipeInformation200ResponseWinePairing;

@Canonical
class GetRecipeInformationBulk200ResponseInner {
    
    Integer id
    
    String title
    
    String image
    
    String imageType
    
    BigDecimal servings
    
    Integer readyInMinutes
    
    String license
    
    String sourceName
    
    String sourceUrl
    
    String spoonacularSourceUrl
    
    Integer aggregateLikes
    
    BigDecimal healthScore
    
    BigDecimal spoonacularScore
    
    BigDecimal pricePerServing
    
    List<String> analyzedInstructions = new ArrayList<>()
    
    Boolean cheap
    
    String creditsText
    
    List<String> cuisines = new ArrayList<>()
    
    Boolean dairyFree
    
    List<String> diets = new ArrayList<>()
    
    String gaps
    
    Boolean glutenFree
    
    String instructions
    
    Boolean ketogenic
    
    Boolean lowFodmap
    
    List<String> occasions = new ArrayList<>()
    
    Boolean sustainable
    
    Boolean vegan
    
    Boolean vegetarian
    
    Boolean veryHealthy
    
    Boolean veryPopular
    
    Boolean whole30
    
    BigDecimal weightWatcherSmartPoints
    
    List<String> dishTypes = new ArrayList<>()
    
    Set<GetRecipeInformation200ResponseExtendedIngredientsInner> extendedIngredients = new LinkedHashSet<>()
    
    String summary
    
    GetRecipeInformation200ResponseWinePairing winePairing
}
