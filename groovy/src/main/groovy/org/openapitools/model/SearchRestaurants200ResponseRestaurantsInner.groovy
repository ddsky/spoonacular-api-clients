package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.SearchRestaurants200ResponseRestaurantsInnerAddress;
import org.openapitools.model.SearchRestaurants200ResponseRestaurantsInnerLocalHours;

@Canonical
class SearchRestaurants200ResponseRestaurantsInner {
    
    String id
    
    String name
    
    Integer phoneNumber
    
    SearchRestaurants200ResponseRestaurantsInnerAddress address
    
    String type
    
    String description
    
    SearchRestaurants200ResponseRestaurantsInnerLocalHours localHours
    
    List<String> cuisines
    
    List<String> foodPhotos
    
    List<String> logoPhotos
    
    List<Object> storePhotos
    
    Integer dollarSigns
    
    Boolean pickupEnabled
    
    Boolean deliveryEnabled
    
    Boolean isOpen
    
    Boolean offersFirstPartyDelivery
    
    Boolean offersThirdPartyDelivery
    
    BigDecimal miles
    
    BigDecimal weightedRatingValue
    
    Integer aggregatedRatingCount
}
