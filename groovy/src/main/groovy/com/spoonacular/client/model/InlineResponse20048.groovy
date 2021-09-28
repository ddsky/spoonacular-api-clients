package com.spoonacular.client.model;

import groovy.transform.Canonical
import com.spoonacular.client.model.InlineResponse20048Category;
import com.spoonacular.client.model.InlineResponse20048Nutrition;
import com.spoonacular.client.model.InlineResponse20048Recipes;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;

@Canonical
class InlineResponse20048 {
    
    InlineResponse20048Nutrition nutrition = null
    
    InlineResponse20048Category category = null
    
    List<InlineResponse20048Recipes> recipes = new ArrayList<InlineResponse20048Recipes>()
}
