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
  public class InlineResponse20049 {
    /// <summary>
    /// Gets or Sets Nutrition
    /// </summary>
    [DataMember(Name="nutrition", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "nutrition")]
    public InlineResponse20049Nutrition Nutrition { get; set; }

    /// <summary>
    /// Gets or Sets Category
    /// </summary>
    [DataMember(Name="category", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "category")]
    public InlineResponse20049Category Category { get; set; }

    /// <summary>
    /// Gets or Sets Recipes
    /// </summary>
    [DataMember(Name="recipes", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "recipes")]
    public List<InlineResponse20049Recipes> Recipes { get; set; }


    /// <summary>
    /// Get the string presentation of the object
    /// </summary>
    /// <returns>String presentation of the object</returns>
    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class InlineResponse20049 {\n");
      sb.Append("  Nutrition: ").Append(Nutrition).Append("\n");
      sb.Append("  Category: ").Append(Category).Append("\n");
      sb.Append("  Recipes: ").Append(Recipes).Append("\n");
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
