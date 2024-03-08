package org.openapitools.model;

import groovy.transform.Canonical
import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.LinkedHashSet;
import java.util.Set;
import org.openapitools.model.GetComparableProducts200ResponseComparableProductsProteinInner;

@Canonical
class GetComparableProducts200ResponseComparableProducts {
    
    List<Object> calories = new ArrayList<>()
    
    List<Object> likes = new ArrayList<>()
    
    List<Object> price = new ArrayList<>()
    
    Set<GetComparableProducts200ResponseComparableProductsProteinInner> protein = new LinkedHashSet<>()
    
    Set<GetComparableProducts200ResponseComparableProductsProteinInner> spoonacularScore = new LinkedHashSet<>()
    
    List<Object> sugar = new ArrayList<>()
}
