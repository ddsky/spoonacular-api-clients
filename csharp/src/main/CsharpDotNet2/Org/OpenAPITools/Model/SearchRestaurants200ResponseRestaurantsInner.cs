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
  public class SearchRestaurants200ResponseRestaurantsInner {
    /// <summary>
    /// Gets or Sets Id
    /// </summary>
    [DataMember(Name="_id", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "_id")]
    public string Id { get; set; }

    /// <summary>
    /// Gets or Sets Name
    /// </summary>
    [DataMember(Name="name", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "name")]
    public string Name { get; set; }

    /// <summary>
    /// Gets or Sets PhoneNumber
    /// </summary>
    [DataMember(Name="phone_number", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "phone_number")]
    public int? PhoneNumber { get; set; }

    /// <summary>
    /// Gets or Sets Address
    /// </summary>
    [DataMember(Name="address", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "address")]
    public SearchRestaurants200ResponseRestaurantsInnerAddress Address { get; set; }

    /// <summary>
    /// Gets or Sets Type
    /// </summary>
    [DataMember(Name="type", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "type")]
    public string Type { get; set; }

    /// <summary>
    /// Gets or Sets Description
    /// </summary>
    [DataMember(Name="description", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "description")]
    public string Description { get; set; }

    /// <summary>
    /// Gets or Sets LocalHours
    /// </summary>
    [DataMember(Name="local_hours", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "local_hours")]
    public SearchRestaurants200ResponseRestaurantsInnerLocalHours LocalHours { get; set; }

    /// <summary>
    /// Gets or Sets Cuisines
    /// </summary>
    [DataMember(Name="cuisines", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "cuisines")]
    public List<string> Cuisines { get; set; }

    /// <summary>
    /// Gets or Sets FoodPhotos
    /// </summary>
    [DataMember(Name="food_photos", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "food_photos")]
    public List<string> FoodPhotos { get; set; }

    /// <summary>
    /// Gets or Sets LogoPhotos
    /// </summary>
    [DataMember(Name="logo_photos", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "logo_photos")]
    public List<string> LogoPhotos { get; set; }

    /// <summary>
    /// Gets or Sets StorePhotos
    /// </summary>
    [DataMember(Name="store_photos", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "store_photos")]
    public List<Object> StorePhotos { get; set; }

    /// <summary>
    /// Gets or Sets DollarSigns
    /// </summary>
    [DataMember(Name="dollar_signs", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "dollar_signs")]
    public int? DollarSigns { get; set; }

    /// <summary>
    /// Gets or Sets PickupEnabled
    /// </summary>
    [DataMember(Name="pickup_enabled", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "pickup_enabled")]
    public bool? PickupEnabled { get; set; }

    /// <summary>
    /// Gets or Sets DeliveryEnabled
    /// </summary>
    [DataMember(Name="delivery_enabled", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "delivery_enabled")]
    public bool? DeliveryEnabled { get; set; }

    /// <summary>
    /// Gets or Sets IsOpen
    /// </summary>
    [DataMember(Name="is_open", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "is_open")]
    public bool? IsOpen { get; set; }

    /// <summary>
    /// Gets or Sets OffersFirstPartyDelivery
    /// </summary>
    [DataMember(Name="offers_first_party_delivery", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "offers_first_party_delivery")]
    public bool? OffersFirstPartyDelivery { get; set; }

    /// <summary>
    /// Gets or Sets OffersThirdPartyDelivery
    /// </summary>
    [DataMember(Name="offers_third_party_delivery", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "offers_third_party_delivery")]
    public bool? OffersThirdPartyDelivery { get; set; }

    /// <summary>
    /// Gets or Sets Miles
    /// </summary>
    [DataMember(Name="miles", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "miles")]
    public decimal? Miles { get; set; }

    /// <summary>
    /// Gets or Sets WeightedRatingValue
    /// </summary>
    [DataMember(Name="weighted_rating_value", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "weighted_rating_value")]
    public decimal? WeightedRatingValue { get; set; }

    /// <summary>
    /// Gets or Sets AggregatedRatingCount
    /// </summary>
    [DataMember(Name="aggregated_rating_count", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "aggregated_rating_count")]
    public int? AggregatedRatingCount { get; set; }


    /// <summary>
    /// Get the string presentation of the object
    /// </summary>
    /// <returns>String presentation of the object</returns>
    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class SearchRestaurants200ResponseRestaurantsInner {\n");
      sb.Append("  Id: ").Append(Id).Append("\n");
      sb.Append("  Name: ").Append(Name).Append("\n");
      sb.Append("  PhoneNumber: ").Append(PhoneNumber).Append("\n");
      sb.Append("  Address: ").Append(Address).Append("\n");
      sb.Append("  Type: ").Append(Type).Append("\n");
      sb.Append("  Description: ").Append(Description).Append("\n");
      sb.Append("  LocalHours: ").Append(LocalHours).Append("\n");
      sb.Append("  Cuisines: ").Append(Cuisines).Append("\n");
      sb.Append("  FoodPhotos: ").Append(FoodPhotos).Append("\n");
      sb.Append("  LogoPhotos: ").Append(LogoPhotos).Append("\n");
      sb.Append("  StorePhotos: ").Append(StorePhotos).Append("\n");
      sb.Append("  DollarSigns: ").Append(DollarSigns).Append("\n");
      sb.Append("  PickupEnabled: ").Append(PickupEnabled).Append("\n");
      sb.Append("  DeliveryEnabled: ").Append(DeliveryEnabled).Append("\n");
      sb.Append("  IsOpen: ").Append(IsOpen).Append("\n");
      sb.Append("  OffersFirstPartyDelivery: ").Append(OffersFirstPartyDelivery).Append("\n");
      sb.Append("  OffersThirdPartyDelivery: ").Append(OffersThirdPartyDelivery).Append("\n");
      sb.Append("  Miles: ").Append(Miles).Append("\n");
      sb.Append("  WeightedRatingValue: ").Append(WeightedRatingValue).Append("\n");
      sb.Append("  AggregatedRatingCount: ").Append(AggregatedRatingCount).Append("\n");
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
