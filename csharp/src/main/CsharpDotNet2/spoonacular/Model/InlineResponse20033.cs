using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;
using System.Runtime.Serialization;
using Newtonsoft.Json;

namespace spoonacular.Model {

  /// <summary>
  /// 
  /// </summary>
  [DataContract]
  public class InlineResponse20033 {
    /// <summary>
    /// Gets or Sets CleanTitle
    /// </summary>
    [DataMember(Name="cleanTitle", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "cleanTitle")]
    public string CleanTitle { get; set; }

    /// <summary>
    /// Gets or Sets Image
    /// </summary>
    [DataMember(Name="image", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "image")]
    public string Image { get; set; }

    /// <summary>
    /// Gets or Sets Category
    /// </summary>
    [DataMember(Name="category", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "category")]
    public string Category { get; set; }

    /// <summary>
    /// Gets or Sets Breadcrumbs
    /// </summary>
    [DataMember(Name="breadcrumbs", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "breadcrumbs")]
    public List<string> Breadcrumbs { get; set; }

    /// <summary>
    /// Gets or Sets UsdaCode
    /// </summary>
    [DataMember(Name="usdaCode", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "usdaCode")]
    public int? UsdaCode { get; set; }


    /// <summary>
    /// Get the string presentation of the object
    /// </summary>
    /// <returns>String presentation of the object</returns>
    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class InlineResponse20033 {\n");
      sb.Append("  CleanTitle: ").Append(CleanTitle).Append("\n");
      sb.Append("  Image: ").Append(Image).Append("\n");
      sb.Append("  Category: ").Append(Category).Append("\n");
      sb.Append("  Breadcrumbs: ").Append(Breadcrumbs).Append("\n");
      sb.Append("  UsdaCode: ").Append(UsdaCode).Append("\n");
      sb.Append("}\n");
      return sb.ToString();
    }

    /// <summary>
    /// Get the JSON string presentation of the object
    /// </summary>
    /// <returns>JSON string presentation of the object</returns>
    public string ToJson() {
      return JsonConvert.SerializeObject(this, Formatting.Indented);
    }

}
}
