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
  public class MapIngredientsToGroceryProducts200ResponseInner {
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
    /// Gets or Sets IngredientImage
    /// </summary>
    [DataMember(Name="ingredientImage", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "ingredientImage")]
    public string IngredientImage { get; set; }

    /// <summary>
    /// Gets or Sets Meta
    /// </summary>
    [DataMember(Name="meta", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "meta")]
    public List<string> Meta { get; set; }

    /// <summary>
    /// Gets or Sets Products
    /// </summary>
    [DataMember(Name="products", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "products")]
    public List<MapIngredientsToGroceryProducts200ResponseInnerProductsInner> Products { get; set; }


    /// <summary>
    /// Get the string presentation of the object
    /// </summary>
    /// <returns>String presentation of the object</returns>
    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class MapIngredientsToGroceryProducts200ResponseInner {\n");
      sb.Append("  Original: ").Append(Original).Append("\n");
      sb.Append("  OriginalName: ").Append(OriginalName).Append("\n");
      sb.Append("  IngredientImage: ").Append(IngredientImage).Append("\n");
      sb.Append("  Meta: ").Append(Meta).Append("\n");
      sb.Append("  Products: ").Append(Products).Append("\n");
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
