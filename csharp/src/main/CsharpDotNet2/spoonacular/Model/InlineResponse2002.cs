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
  public class InlineResponse2002 {
    /// <summary>
    /// Gets or Sets Calories
    /// </summary>
    [DataMember(Name="calories", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "calories")]
    public decimal? Calories { get; set; }

    /// <summary>
    /// Gets or Sets Carbs
    /// </summary>
    [DataMember(Name="carbs", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "carbs")]
    public string Carbs { get; set; }

    /// <summary>
    /// Gets or Sets Fat
    /// </summary>
    [DataMember(Name="fat", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "fat")]
    public string Fat { get; set; }

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
    /// Gets or Sets ImageType
    /// </summary>
    [DataMember(Name="imageType", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "imageType")]
    public string ImageType { get; set; }

    /// <summary>
    /// Gets or Sets Protein
    /// </summary>
    [DataMember(Name="protein", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "protein")]
    public string Protein { get; set; }

    /// <summary>
    /// Gets or Sets Title
    /// </summary>
    [DataMember(Name="title", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "title")]
    public string Title { get; set; }


    /// <summary>
    /// Get the string presentation of the object
    /// </summary>
    /// <returns>String presentation of the object</returns>
    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class InlineResponse2002 {\n");
      sb.Append("  Calories: ").Append(Calories).Append("\n");
      sb.Append("  Carbs: ").Append(Carbs).Append("\n");
      sb.Append("  Fat: ").Append(Fat).Append("\n");
      sb.Append("  Id: ").Append(Id).Append("\n");
      sb.Append("  Image: ").Append(Image).Append("\n");
      sb.Append("  ImageType: ").Append(ImageType).Append("\n");
      sb.Append("  Protein: ").Append(Protein).Append("\n");
      sb.Append("  Title: ").Append(Title).Append("\n");
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
