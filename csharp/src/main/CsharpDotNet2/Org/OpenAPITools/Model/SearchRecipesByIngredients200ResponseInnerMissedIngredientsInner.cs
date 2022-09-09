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
  public class SearchRecipesByIngredients200ResponseInnerMissedIngredientsInner {
    /// <summary>
    /// Gets or Sets Aisle
    /// </summary>
    [DataMember(Name="aisle", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "aisle")]
    public string Aisle { get; set; }

    /// <summary>
    /// Gets or Sets Amount
    /// </summary>
    [DataMember(Name="amount", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "amount")]
    public decimal? Amount { get; set; }

    /// <summary>
    /// Gets or Sets Id
    /// </summary>
    [DataMember(Name="id", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "id")]
    public int? Id { get; set; }

    /// <summary>
    /// Gets or Sets Image
    /// </summary>
    [DataMember(Name="image", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "image")]
    public string Image { get; set; }

    /// <summary>
    /// Gets or Sets Meta
    /// </summary>
    [DataMember(Name="meta", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "meta")]
    public List<string> Meta { get; set; }

    /// <summary>
    /// Gets or Sets Name
    /// </summary>
    [DataMember(Name="name", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "name")]
    public string Name { get; set; }

    /// <summary>
    /// Gets or Sets Original
    /// </summary>
    [DataMember(Name="original", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "original")]
    public string Original { get; set; }

    /// <summary>
    /// Gets or Sets OriginalName
    /// </summary>
    [DataMember(Name="originalName", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "originalName")]
    public string OriginalName { get; set; }

    /// <summary>
    /// Gets or Sets Unit
    /// </summary>
    [DataMember(Name="unit", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "unit")]
    public string Unit { get; set; }

    /// <summary>
    /// Gets or Sets UnitLong
    /// </summary>
    [DataMember(Name="unitLong", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "unitLong")]
    public string UnitLong { get; set; }

    /// <summary>
    /// Gets or Sets UnitShort
    /// </summary>
    [DataMember(Name="unitShort", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "unitShort")]
    public string UnitShort { get; set; }


    /// <summary>
    /// Get the string presentation of the object
    /// </summary>
    /// <returns>String presentation of the object</returns>
    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class SearchRecipesByIngredients200ResponseInnerMissedIngredientsInner {\n");
      sb.Append("  Aisle: ").Append(Aisle).Append("\n");
      sb.Append("  Amount: ").Append(Amount).Append("\n");
      sb.Append("  Id: ").Append(Id).Append("\n");
      sb.Append("  Image: ").Append(Image).Append("\n");
      sb.Append("  Meta: ").Append(Meta).Append("\n");
      sb.Append("  Name: ").Append(Name).Append("\n");
      sb.Append("  Original: ").Append(Original).Append("\n");
      sb.Append("  OriginalName: ").Append(OriginalName).Append("\n");
      sb.Append("  Unit: ").Append(Unit).Append("\n");
      sb.Append("  UnitLong: ").Append(UnitLong).Append("\n");
      sb.Append("  UnitShort: ").Append(UnitShort).Append("\n");
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
