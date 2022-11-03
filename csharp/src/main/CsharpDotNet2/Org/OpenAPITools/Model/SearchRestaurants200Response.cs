using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;
using System.Runtime.Serialization;
using Newtonsoft.Json;

namespace Org.OpenAPITools.Model {

  /// <summary>
  /// 
  /// </summary>
  [DataContract]
  public class SearchRestaurants200Response {
    /// <summary>
    /// Gets or Sets Restaurants
    /// </summary>
    [DataMember(Name="restaurants", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "restaurants")]
    public List<SearchRestaurants200ResponseRestaurantsInner> Restaurants { get; set; }


    /// <summary>
    /// Get the string presentation of the object
    /// </summary>
    /// <returns>String presentation of the object</returns>
    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class SearchRestaurants200Response {\n");
      sb.Append("  Restaurants: ").Append(Restaurants).Append("\n");
      sb.Append("}\n");
      return sb.ToString();
    }

    /// <summary>
    /// Get the JSON string presentation of the object
    /// </summary>
    /// <returns>JSON string presentation of the object</returns>
    public string ToJson() {
      return Newtonsoft.Json.JsonConvert.SerializeObject(this, Newtonsoft.Json.Formatting.Indented);
    }

}
}
