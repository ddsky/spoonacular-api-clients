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
  public class InlineResponse20054Videos {
    /// <summary>
    /// Gets or Sets Title
    /// </summary>
    [DataMember(Name="title", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "title")]
    public string Title { get; set; }

    /// <summary>
    /// Gets or Sets Length
    /// </summary>
    [DataMember(Name="length", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "length")]
    public int? Length { get; set; }

    /// <summary>
    /// Gets or Sets Rating
    /// </summary>
    [DataMember(Name="rating", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "rating")]
    public decimal? Rating { get; set; }

    /// <summary>
    /// Gets or Sets ShortTitle
    /// </summary>
    [DataMember(Name="shortTitle", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "shortTitle")]
    public string ShortTitle { get; set; }

    /// <summary>
    /// Gets or Sets Thumbnail
    /// </summary>
    [DataMember(Name="thumbnail", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "thumbnail")]
    public string Thumbnail { get; set; }

    /// <summary>
    /// Gets or Sets Views
    /// </summary>
    [DataMember(Name="views", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "views")]
    public int? Views { get; set; }

    /// <summary>
    /// Gets or Sets YouTubeId
    /// </summary>
    [DataMember(Name="youTubeId", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "youTubeId")]
    public string YouTubeId { get; set; }


    /// <summary>
    /// Get the string presentation of the object
    /// </summary>
    /// <returns>String presentation of the object</returns>
    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class InlineResponse20054Videos {\n");
      sb.Append("  Title: ").Append(Title).Append("\n");
      sb.Append("  Length: ").Append(Length).Append("\n");
      sb.Append("  Rating: ").Append(Rating).Append("\n");
      sb.Append("  ShortTitle: ").Append(ShortTitle).Append("\n");
      sb.Append("  Thumbnail: ").Append(Thumbnail).Append("\n");
      sb.Append("  Views: ").Append(Views).Append("\n");
      sb.Append("  YouTubeId: ").Append(YouTubeId).Append("\n");
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
