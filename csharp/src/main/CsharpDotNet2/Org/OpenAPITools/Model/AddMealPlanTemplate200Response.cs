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
  public class AddMealPlanTemplate200Response {
    /// <summary>
    /// Gets or Sets Name
    /// </summary>
    [DataMember(Name="name", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "name")]
    public string Name { get; set; }

    /// <summary>
    /// Gets or Sets Items
    /// </summary>
    [DataMember(Name="items", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "items")]
    public List<AddMealPlanTemplate200ResponseItemsInner> Items { get; set; }

    /// <summary>
    /// Gets or Sets PublishAsPublic
    /// </summary>
    [DataMember(Name="publishAsPublic", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "publishAsPublic")]
    public bool? PublishAsPublic { get; set; }


    /// <summary>
    /// Get the string presentation of the object
    /// </summary>
    /// <returns>String presentation of the object</returns>
    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class AddMealPlanTemplate200Response {\n");
      sb.Append("  Name: ").Append(Name).Append("\n");
      sb.Append("  Items: ").Append(Items).Append("\n");
      sb.Append("  PublishAsPublic: ").Append(PublishAsPublic).Append("\n");
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
