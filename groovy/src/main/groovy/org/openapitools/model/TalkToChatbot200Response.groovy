package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;

@Canonical
class TalkToChatbot200Response {
    
    String answerText
    
    List<Object> media = new ArrayList<>()
}
