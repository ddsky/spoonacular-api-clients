package com.spoonacular.client.model;

import groovy.transform.Canonical
import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.spoonacular.client.model.GetComparableProducts200ResponseComparableProductsProteinInner;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;

@Canonical
class GetComparableProducts200ResponseComparableProducts {
    
    List<Object> calories = new ArrayList<>()
    
    List<Object> likes = new ArrayList<>()
    
    List<Object> price = new ArrayList<>()
    
    Set<GetComparableProducts200ResponseComparableProductsProteinInner> protein = new LinkedHashSet<>()
    
    Set<GetComparableProducts200ResponseComparableProductsProteinInner> spoonacularScore = new LinkedHashSet<>()
    
    List<Object> sugar = new ArrayList<>()
}
