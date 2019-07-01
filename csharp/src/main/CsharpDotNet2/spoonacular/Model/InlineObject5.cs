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
  public class InlineObject5 {
    /// <summary>
    /// The title of the recipe.
    /// </summary>
    /// <value>The title of the recipe.</value>
    [DataMember(Name="title", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "title")]
    public string Title { get; set; }

    /// <summary>
    /// The ingredient list of the recipe, one ingredient per line (separate lines with \\n).
    /// </summary>
    /// <value>The ingredient list of the recipe, one ingredient per line (separate lines with \\n).</value>
    [DataMember(Name="ingredientList", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "ingredientList")]
    public string IngredientList { get; set; }


    /// <summary>
    /// Get the string presentation of the object
    /// </summary>
    /// <returns>String presentation of the object</returns>
    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class InlineObject5 {\n");
      sb.Append("  Title: ").Append(Title).Append("\n");
      sb.Append("  IngredientList: ").Append(IngredientList).Append("\n");
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
