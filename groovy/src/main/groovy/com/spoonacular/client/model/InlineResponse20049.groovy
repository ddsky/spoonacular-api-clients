package com.spoonacular.client.model;

import groovy.transform.Canonical
import com.spoonacular.client.model.InlineResponse20049Category;
import com.spoonacular.client.model.InlineResponse20049Nutrition;
import com.spoonacular.client.model.InlineResponse20049Recipes;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;

@Canonical
class InlineResponse20049 {
    
    InlineResponse20049Nutrition nutrition = null
    
    InlineResponse20049Category category = null
    
    List<InlineResponse20049Recipes> recipes = new ArrayList<InlineResponse20049Recipes>()
}
