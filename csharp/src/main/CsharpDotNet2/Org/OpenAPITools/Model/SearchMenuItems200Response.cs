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
  public class SearchMenuItems200Response {
    /// <summary>
    /// Gets or Sets MenuItems
    /// </summary>
    [DataMember(Name="menuItems", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "menuItems")]
    public List<SearchMenuItems200ResponseMenuItemsInner> MenuItems { get; set; }

    /// <summary>
    /// Gets or Sets TotalMenuItems
    /// </summary>
    [DataMember(Name="totalMenuItems", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "totalMenuItems")]
    public int? TotalMenuItems { get; set; }

    /// <summary>
    /// Gets or Sets Type
    /// </summary>
    [DataMember(Name="type", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "type")]
    public string Type { get; set; }

    /// <summary>
    /// Gets or Sets Offset
    /// </summary>
    [DataMember(Name="offset", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "offset")]
    public int? Offset { get; set; }

    /// <summary>
    /// Gets or Sets Number
    /// </summary>
    [DataMember(Name="number", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "number")]
    public int? Number { get; set; }


    /// <summary>
    /// Get the string presentation of the object
    /// </summary>
    /// <returns>String presentation of the object</returns>
    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class SearchMenuItems200Response {\n");
      sb.Append("  MenuItems: ").Append(MenuItems).Append("\n");
      sb.Append("  TotalMenuItems: ").Append(TotalMenuItems).Append("\n");
      sb.Append("  Type: ").Append(Type).Append("\n");
      sb.Append("  Offset: ").Append(Offset).Append("\n");
      sb.Append("  Number: ").Append(Number).Append("\n");
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
