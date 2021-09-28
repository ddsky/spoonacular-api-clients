package com.spoonacular.client.model;

import groovy.transform.Canonical
import com.spoonacular.client.model.InlineResponse2006Recipes;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;

@Canonical
class InlineResponse2006 {
    
    List<InlineResponse2006Recipes> recipes = new ArrayList<InlineResponse2006Recipes>()
}
