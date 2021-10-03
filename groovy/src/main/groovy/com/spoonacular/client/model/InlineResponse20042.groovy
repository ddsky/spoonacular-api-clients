package com.spoonacular.client.model;

import groovy.transform.Canonical
import com.spoonacular.client.model.InlineResponse20042Aisles;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

@Canonical
class InlineResponse20042 {
    
    List<InlineResponse20042Aisles> aisles = new ArrayList<InlineResponse20042Aisles>()
    
    BigDecimal cost
    
    BigDecimal startDate
    
    BigDecimal endDate
}
