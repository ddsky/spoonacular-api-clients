package com.spoonacular.client;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.reflect.TypeToken;
import java.lang.reflect.Type;
import java.util.List;

public class JsonUtil {
  public static GsonBuilder gsonBuilder;

  static {
    gsonBuilder = new GsonBuilder();
    gsonBuilder.serializeNulls();
    gsonBuilder.setDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSSZ");
  }

  public static Gson getGson() {
    return gsonBuilder.create();
  }

  public static String serialize(Object obj){
    return getGson().toJson(obj);
  }

  public static <T> T deserializeToList(String jsonString, Class cls){
    return getGson().fromJson(jsonString, getListTypeForDeserialization(cls));
  }

  public static <T> T deserializeToObject(String jsonString, Class cls){
    return getGson().fromJson(jsonString, getTypeForDeserialization(cls));
  }

  public static Type getListTypeForDeserialization(Class cls) {
    String className = cls.getSimpleName();
    
    if ("InlineObject".equalsIgnoreCase(className)) {
      return new TypeToken<List<InlineObject>>(){}.getType();
    }
    
    if ("InlineObject1".equalsIgnoreCase(className)) {
      return new TypeToken<List<InlineObject1>>(){}.getType();
    }
    
    if ("InlineObject2".equalsIgnoreCase(className)) {
      return new TypeToken<List<InlineObject2>>(){}.getType();
    }
    
    if ("InlineObject3".equalsIgnoreCase(className)) {
      return new TypeToken<List<InlineObject3>>(){}.getType();
    }
    
    if ("InlineObject4".equalsIgnoreCase(className)) {
      return new TypeToken<List<InlineObject4>>(){}.getType();
    }
    
    if ("InlineObject5".equalsIgnoreCase(className)) {
      return new TypeToken<List<InlineObject5>>(){}.getType();
    }
    
    if ("InlineObject6".equalsIgnoreCase(className)) {
      return new TypeToken<List<InlineObject6>>(){}.getType();
    }
    
    if ("InlineObject7".equalsIgnoreCase(className)) {
      return new TypeToken<List<InlineObject7>>(){}.getType();
    }
    
    if ("InlineObject8".equalsIgnoreCase(className)) {
      return new TypeToken<List<InlineObject8>>(){}.getType();
    }
    
    if ("InlineObject9".equalsIgnoreCase(className)) {
      return new TypeToken<List<InlineObject9>>(){}.getType();
    }
    
    return new TypeToken<List<Object>>(){}.getType();
  }

  public static Type getTypeForDeserialization(Class cls) {
    String className = cls.getSimpleName();
    
    if ("InlineObject".equalsIgnoreCase(className)) {
      return new TypeToken<InlineObject>(){}.getType();
    }
    
    if ("InlineObject1".equalsIgnoreCase(className)) {
      return new TypeToken<InlineObject1>(){}.getType();
    }
    
    if ("InlineObject2".equalsIgnoreCase(className)) {
      return new TypeToken<InlineObject2>(){}.getType();
    }
    
    if ("InlineObject3".equalsIgnoreCase(className)) {
      return new TypeToken<InlineObject3>(){}.getType();
    }
    
    if ("InlineObject4".equalsIgnoreCase(className)) {
      return new TypeToken<InlineObject4>(){}.getType();
    }
    
    if ("InlineObject5".equalsIgnoreCase(className)) {
      return new TypeToken<InlineObject5>(){}.getType();
    }
    
    if ("InlineObject6".equalsIgnoreCase(className)) {
      return new TypeToken<InlineObject6>(){}.getType();
    }
    
    if ("InlineObject7".equalsIgnoreCase(className)) {
      return new TypeToken<InlineObject7>(){}.getType();
    }
    
    if ("InlineObject8".equalsIgnoreCase(className)) {
      return new TypeToken<InlineObject8>(){}.getType();
    }
    
    if ("InlineObject9".equalsIgnoreCase(className)) {
      return new TypeToken<InlineObject9>(){}.getType();
    }
    
    return new TypeToken<Object>(){}.getType();
  }

};
