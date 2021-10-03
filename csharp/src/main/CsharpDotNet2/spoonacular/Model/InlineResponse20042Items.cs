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
  public class InlineResponse20042Items {
    /// <summary>
    /// Gets or Sets Id
    /// </summary>
    [DataMember(Name="id", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "id")]
    public int? Id { get; set; }

    /// <summary>
    /// Gets or Sets Name
    /// </summary>
    [DataMember(Name="name", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "name")]
    public string Name { get; set; }

    /// <summary>
    /// Gets or Sets Measures
    /// </summary>
    [DataMember(Name="measures", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "measures")]
    public InlineResponse20042Measures Measures { get; set; }

    /// <summary>
    /// Gets or Sets PantryItem
    /// </summary>
    [DataMember(Name="pantryItem", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "pantryItem")]
    public bool? PantryItem { get; set; }

    /// <summary>
    /// Gets or Sets Aisle
    /// </summary>
    [DataMember(Name="aisle", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "aisle")]
    public string Aisle { get; set; }

    /// <summary>
    /// Gets or Sets Cost
    /// </summary>
    [DataMember(Name="cost", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "cost")]
    public decimal? Cost { get; set; }

    /// <summary>
    /// Gets or Sets IngredientId
    /// </summary>
    [DataMember(Name="ingredientId", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "ingredientId")]
    public int? IngredientId { get; set; }


    /// <summary>
    /// Get the string presentation of the object
    /// </summary>
    /// <returns>String presentation of the object</returns>
    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class InlineResponse20042Items {\n");
      sb.Append("  Id: ").Append(Id).Append("\n");
      sb.Append("  Name: ").Append(Name).Append("\n");
      sb.Append("  Measures: ").Append(Measures).Append("\n");
      sb.Append("  PantryItem: ").Append(PantryItem).Append("\n");
      sb.Append("  Aisle: ").Append(Aisle).Append("\n");
      sb.Append("  Cost: ").Append(Cost).Append("\n");
      sb.Append("  IngredientId: ").Append(IngredientId).Append("\n");
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
