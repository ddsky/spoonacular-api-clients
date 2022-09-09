package com.spoonacular.client.model;

import groovy.transform.Canonical
import com.spoonacular.client.model.GetRecipePriceBreakdownByID200ResponseIngredientsInnerAmount;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class GetRecipeIngredientsByID200ResponseIngredientsInner {
    
    GetRecipePriceBreakdownByID200ResponseIngredientsInnerAmount amount
    
    String image
    
    String name
}
