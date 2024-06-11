package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.TalkToChatbot200ResponseMediaInner;

@Canonical
class TalkToChatbot200Response {
    
    String answerText
    
    List<TalkToChatbot200ResponseMediaInner> media = new ArrayList<>()
}
