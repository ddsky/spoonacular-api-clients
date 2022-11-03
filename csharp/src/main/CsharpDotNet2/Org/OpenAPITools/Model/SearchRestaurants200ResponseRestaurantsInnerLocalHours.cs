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
  public class SearchRestaurants200ResponseRestaurantsInnerLocalHours {
    /// <summary>
    /// Gets or Sets Operational
    /// </summary>
    [DataMember(Name="operational", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "operational")]
    public SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational Operational { get; set; }

    /// <summary>
    /// Gets or Sets Delivery
    /// </summary>
    [DataMember(Name="delivery", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "delivery")]
    public SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational Delivery { get; set; }

    /// <summary>
    /// Gets or Sets Pickup
    /// </summary>
    [DataMember(Name="pickup", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "pickup")]
    public SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational Pickup { get; set; }

    /// <summary>
    /// Gets or Sets DineIn
    /// </summary>
    [DataMember(Name="dine_in", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "dine_in")]
    public SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational DineIn { get; set; }


    /// <summary>
    /// Get the string presentation of the object
    /// </summary>
    /// <returns>String presentation of the object</returns>
    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class SearchRestaurants200ResponseRestaurantsInnerLocalHours {\n");
      sb.Append("  Operational: ").Append(Operational).Append("\n");
      sb.Append("  Delivery: ").Append(Delivery).Append("\n");
      sb.Append("  Pickup: ").Append(Pickup).Append("\n");
      sb.Append("  DineIn: ").Append(DineIn).Append("\n");
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
