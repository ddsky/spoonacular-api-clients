package com.spoonacular.client.model;

import groovy.transform.Canonical
import com.spoonacular.client.model.InlineResponse20031ComparableProductsProtein;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;

@Canonical
class InlineResponse20031ComparableProducts {
    
    List<Object> calories = new ArrayList<Object>()
    
    List<Object> likes = new ArrayList<Object>()
    
    List<Object> price = new ArrayList<Object>()
    
    List<InlineResponse20031ComparableProductsProtein> protein = new ArrayList<InlineResponse20031ComparableProductsProtein>()
    
    List<InlineResponse20031ComparableProductsProtein> spoonacularScore = new ArrayList<InlineResponse20031ComparableProductsProtein>()
    
    List<Object> sugar = new ArrayList<Object>()
}
