/*
 * spoonacular API
 *
 * The spoonacular Nutrition, Recipe, and Food API allows you to access over thousands of recipes, thousands of ingredients, 800,000 food products, over 100,000 menu items, and restaurants. Our food ontology and semantic recipe search engine makes it possible to search for recipes using natural language queries, such as \"gluten free brownies without sugar\" or \"low fat vegan cupcakes.\" You can automatically calculate the nutritional information for any recipe, analyze recipe costs, visualize ingredient lists, find recipes for what's in your fridge, find recipes based on special diets, nutritional requirements, or favorite ingredients, classify recipes into types and cuisines, convert ingredient amounts, or even compute an entire meal plan. With our powerful API, you can create many kinds of food and especially nutrition apps.  Special diets/dietary requirements currently available include: vegan, vegetarian, pescetarian, gluten free, grain free, dairy free, high protein, whole 30, low sodium, low carb, Paleo, ketogenic, FODMAP, and Primal.
 *
 * The version of the OpenAPI document: 1.1
 * Contact: mail@spoonacular.com
 * Generated by: https://github.com/openapitools/openapi-generator.git
 */


using System;
using System.Collections;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.IO;
using System.Runtime.Serialization;
using System.Text;
using System.Text.RegularExpressions;
using Newtonsoft.Json;
using Newtonsoft.Json.Converters;
using Newtonsoft.Json.Linq;
using System.ComponentModel.DataAnnotations;
using OpenAPIDateConverter = spoonacular.Client.OpenAPIDateConverter;

namespace spoonacular.Model
{
    /// <summary>
    /// GetRecipeNutritionWidgetByID200ResponseGoodInner
    /// </summary>
    [DataContract(Name = "getRecipeNutritionWidgetByID_200_response_good_inner")]
    public partial class GetRecipeNutritionWidgetByID200ResponseGoodInner : IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="GetRecipeNutritionWidgetByID200ResponseGoodInner" /> class.
        /// </summary>
        [JsonConstructorAttribute]
        protected GetRecipeNutritionWidgetByID200ResponseGoodInner() { }
        /// <summary>
        /// Initializes a new instance of the <see cref="GetRecipeNutritionWidgetByID200ResponseGoodInner" /> class.
        /// </summary>
        /// <param name="amount">amount (required).</param>
        /// <param name="indented">indented (required).</param>
        /// <param name="percentOfDailyNeeds">percentOfDailyNeeds (required).</param>
        /// <param name="name">name (required).</param>
        public GetRecipeNutritionWidgetByID200ResponseGoodInner(string amount = default(string), bool indented = default(bool), decimal percentOfDailyNeeds = default(decimal), string name = default(string))
        {
            // to ensure "amount" is required (not null)
            if (amount == null)
            {
                throw new ArgumentNullException("amount is a required property for GetRecipeNutritionWidgetByID200ResponseGoodInner and cannot be null");
            }
            this.Amount = amount;
            this.Indented = indented;
            this.PercentOfDailyNeeds = percentOfDailyNeeds;
            // to ensure "name" is required (not null)
            if (name == null)
            {
                throw new ArgumentNullException("name is a required property for GetRecipeNutritionWidgetByID200ResponseGoodInner and cannot be null");
            }
            this.Name = name;
        }

        /// <summary>
        /// Gets or Sets Amount
        /// </summary>
        [DataMember(Name = "amount", IsRequired = true, EmitDefaultValue = true)]
        public string Amount { get; set; }

        /// <summary>
        /// Gets or Sets Indented
        /// </summary>
        [DataMember(Name = "indented", IsRequired = true, EmitDefaultValue = true)]
        public bool Indented { get; set; }

        /// <summary>
        /// Gets or Sets PercentOfDailyNeeds
        /// </summary>
        [DataMember(Name = "percentOfDailyNeeds", IsRequired = true, EmitDefaultValue = true)]
        public decimal PercentOfDailyNeeds { get; set; }

        /// <summary>
        /// Gets or Sets Name
        /// </summary>
        [DataMember(Name = "name", IsRequired = true, EmitDefaultValue = true)]
        public string Name { get; set; }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            StringBuilder sb = new StringBuilder();
            sb.Append("class GetRecipeNutritionWidgetByID200ResponseGoodInner {\n");
            sb.Append("  Amount: ").Append(Amount).Append("\n");
            sb.Append("  Indented: ").Append(Indented).Append("\n");
            sb.Append("  PercentOfDailyNeeds: ").Append(PercentOfDailyNeeds).Append("\n");
            sb.Append("  Name: ").Append(Name).Append("\n");
            sb.Append("}\n");
            return sb.ToString();
        }

        /// <summary>
        /// Returns the JSON string presentation of the object
        /// </summary>
        /// <returns>JSON string presentation of the object</returns>
        public virtual string ToJson()
        {
            return Newtonsoft.Json.JsonConvert.SerializeObject(this, Newtonsoft.Json.Formatting.Indented);
        }

        /// <summary>
        /// To validate all properties of the instance
        /// </summary>
        /// <param name="validationContext">Validation context</param>
        /// <returns>Validation Result</returns>
        IEnumerable<System.ComponentModel.DataAnnotations.ValidationResult> IValidatableObject.Validate(ValidationContext validationContext)
        {
            // Amount (string) minLength
            if (this.Amount != null && this.Amount.Length < 1)
            {
                yield return new System.ComponentModel.DataAnnotations.ValidationResult("Invalid value for Amount, length must be greater than 1.", new [] { "Amount" });
            }

            // Name (string) minLength
            if (this.Name != null && this.Name.Length < 1)
            {
                yield return new System.ComponentModel.DataAnnotations.ValidationResult("Invalid value for Name, length must be greater than 1.", new [] { "Name" });
            }

            yield break;
        }
    }

}