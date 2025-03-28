/*
 * spoonacular API
 *
 * The spoonacular Nutrition, Recipe, and Food API allows you to access over thousands of recipes, thousands of ingredients, 800,000 food products, over 100,000 menu items, and restaurants. Our food ontology and semantic recipe search engine makes it possible to search for recipes using natural language queries, such as \"gluten free brownies without sugar\" or \"low fat vegan cupcakes.\" You can automatically calculate the nutritional information for any recipe, analyze recipe costs, visualize ingredient lists, find recipes for what's in your fridge, find recipes based on special diets, nutritional requirements, or favorite ingredients, classify recipes into types and cuisines, convert ingredient amounts, or even compute an entire meal plan. With our powerful API, you can create many kinds of food and especially nutrition apps.  Special diets/dietary requirements currently available include: vegan, vegetarian, pescetarian, gluten free, grain free, dairy free, high protein, whole 30, low sodium, low carb, Paleo, ketogenic, FODMAP, and Primal.
 *
 * The version of the OpenAPI document: 2.0.2
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
    /// RecipeInformationExtendedIngredientsInnerMeasuresMetric
    /// </summary>
    [DataContract(Name = "RecipeInformation_extendedIngredients_inner_measures_metric")]
    public partial class RecipeInformationExtendedIngredientsInnerMeasuresMetric : IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="RecipeInformationExtendedIngredientsInnerMeasuresMetric" /> class.
        /// </summary>
        [JsonConstructorAttribute]
        protected RecipeInformationExtendedIngredientsInnerMeasuresMetric() { }
        /// <summary>
        /// Initializes a new instance of the <see cref="RecipeInformationExtendedIngredientsInnerMeasuresMetric" /> class.
        /// </summary>
        /// <param name="amount">amount (required).</param>
        /// <param name="unitLong">unitLong (required).</param>
        /// <param name="unitShort">unitShort (required).</param>
        public RecipeInformationExtendedIngredientsInnerMeasuresMetric(decimal amount = default(decimal), string unitLong = default(string), string unitShort = default(string))
        {
            this.Amount = amount;
            // to ensure "unitLong" is required (not null)
            if (unitLong == null)
            {
                throw new ArgumentNullException("unitLong is a required property for RecipeInformationExtendedIngredientsInnerMeasuresMetric and cannot be null");
            }
            this.UnitLong = unitLong;
            // to ensure "unitShort" is required (not null)
            if (unitShort == null)
            {
                throw new ArgumentNullException("unitShort is a required property for RecipeInformationExtendedIngredientsInnerMeasuresMetric and cannot be null");
            }
            this.UnitShort = unitShort;
        }

        /// <summary>
        /// Gets or Sets Amount
        /// </summary>
        [DataMember(Name = "amount", IsRequired = true, EmitDefaultValue = true)]
        public decimal Amount { get; set; }

        /// <summary>
        /// Gets or Sets UnitLong
        /// </summary>
        [DataMember(Name = "unitLong", IsRequired = true, EmitDefaultValue = true)]
        public string UnitLong { get; set; }

        /// <summary>
        /// Gets or Sets UnitShort
        /// </summary>
        [DataMember(Name = "unitShort", IsRequired = true, EmitDefaultValue = true)]
        public string UnitShort { get; set; }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            StringBuilder sb = new StringBuilder();
            sb.Append("class RecipeInformationExtendedIngredientsInnerMeasuresMetric {\n");
            sb.Append("  Amount: ").Append(Amount).Append("\n");
            sb.Append("  UnitLong: ").Append(UnitLong).Append("\n");
            sb.Append("  UnitShort: ").Append(UnitShort).Append("\n");
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
        IEnumerable<ValidationResult> IValidatableObject.Validate(ValidationContext validationContext)
        {
            // UnitLong (string) minLength
            if (this.UnitLong != null && this.UnitLong.Length < 0)
            {
                yield return new ValidationResult("Invalid value for UnitLong, length must be greater than 0.", new [] { "UnitLong" });
            }

            // UnitShort (string) minLength
            if (this.UnitShort != null && this.UnitShort.Length < 0)
            {
                yield return new ValidationResult("Invalid value for UnitShort, length must be greater than 0.", new [] { "UnitShort" });
            }

            yield break;
        }
    }

}
