package com.spoonacular.client.model;

import groovy.transform.Canonical
import com.spoonacular.client.model.InlineResponse20041Aisles;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

@Canonical
class InlineResponse20041 {
    
    List<InlineResponse20041Aisles> aisles = new ArrayList<InlineResponse20041Aisles>()
    
    BigDecimal cost
    
    BigDecimal startDate
    
    BigDecimal endDate
}
