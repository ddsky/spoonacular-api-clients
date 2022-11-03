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
  public class SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational {
    /// <summary>
    /// Gets or Sets Monday
    /// </summary>
    [DataMember(Name="Monday", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "Monday")]
    public string Monday { get; set; }

    /// <summary>
    /// Gets or Sets Tuesday
    /// </summary>
    [DataMember(Name="Tuesday", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "Tuesday")]
    public string Tuesday { get; set; }

    /// <summary>
    /// Gets or Sets Wednesday
    /// </summary>
    [DataMember(Name="Wednesday", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "Wednesday")]
    public string Wednesday { get; set; }

    /// <summary>
    /// Gets or Sets Thursday
    /// </summary>
    [DataMember(Name="Thursday", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "Thursday")]
    public string Thursday { get; set; }

    /// <summary>
    /// Gets or Sets Friday
    /// </summary>
    [DataMember(Name="Friday", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "Friday")]
    public string Friday { get; set; }

    /// <summary>
    /// Gets or Sets Saturday
    /// </summary>
    [DataMember(Name="Saturday", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "Saturday")]
    public string Saturday { get; set; }

    /// <summary>
    /// Gets or Sets Sunday
    /// </summary>
    [DataMember(Name="Sunday", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "Sunday")]
    public string Sunday { get; set; }


    /// <summary>
    /// Get the string presentation of the object
    /// </summary>
    /// <returns>String presentation of the object</returns>
    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational {\n");
      sb.Append("  Monday: ").Append(Monday).Append("\n");
      sb.Append("  Tuesday: ").Append(Tuesday).Append("\n");
      sb.Append("  Wednesday: ").Append(Wednesday).Append("\n");
      sb.Append("  Thursday: ").Append(Thursday).Append("\n");
      sb.Append("  Friday: ").Append(Friday).Append("\n");
      sb.Append("  Saturday: ").Append(Saturday).Append("\n");
      sb.Append("  Sunday: ").Append(Sunday).Append("\n");
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
