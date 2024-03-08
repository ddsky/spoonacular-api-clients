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
    /// ImageAnalysisByURL200ResponseNutritionCalories
    /// </summary>
    [DataContract(Name = "imageAnalysisByURL_200_response_nutrition_calories")]
    public partial class ImageAnalysisByURL200ResponseNutritionCalories : IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="ImageAnalysisByURL200ResponseNutritionCalories" /> class.
        /// </summary>
        [JsonConstructorAttribute]
        protected ImageAnalysisByURL200ResponseNutritionCalories() { }
        /// <summary>
        /// Initializes a new instance of the <see cref="ImageAnalysisByURL200ResponseNutritionCalories" /> class.
        /// </summary>
        /// <param name="value">value (required).</param>
        /// <param name="unit">unit (required).</param>
        /// <param name="confidenceRange95Percent">confidenceRange95Percent (required).</param>
        /// <param name="standardDeviation">standardDeviation (required).</param>
        public ImageAnalysisByURL200ResponseNutritionCalories(decimal value = default(decimal), string unit = default(string), ImageAnalysisByURL200ResponseNutritionCaloriesConfidenceRange95Percent confidenceRange95Percent = default(ImageAnalysisByURL200ResponseNutritionCaloriesConfidenceRange95Percent), decimal standardDeviation = default(decimal))
        {
            this.Value = value;
            // to ensure "unit" is required (not null)
            if (unit == null)
            {
                throw new ArgumentNullException("unit is a required property for ImageAnalysisByURL200ResponseNutritionCalories and cannot be null");
            }
            this.Unit = unit;
            // to ensure "confidenceRange95Percent" is required (not null)
            if (confidenceRange95Percent == null)
            {
                throw new ArgumentNullException("confidenceRange95Percent is a required property for ImageAnalysisByURL200ResponseNutritionCalories and cannot be null");
            }
            this.ConfidenceRange95Percent = confidenceRange95Percent;
            this.StandardDeviation = standardDeviation;
        }

        /// <summary>
        /// Gets or Sets Value
        /// </summary>
        [DataMember(Name = "value", IsRequired = true, EmitDefaultValue = true)]
        public decimal Value { get; set; }

        /// <summary>
        /// Gets or Sets Unit
        /// </summary>
        [DataMember(Name = "unit", IsRequired = true, EmitDefaultValue = true)]
        public string Unit { get; set; }

        /// <summary>
        /// Gets or Sets ConfidenceRange95Percent
        /// </summary>
        [DataMember(Name = "confidenceRange95Percent", IsRequired = true, EmitDefaultValue = true)]
        public ImageAnalysisByURL200ResponseNutritionCaloriesConfidenceRange95Percent ConfidenceRange95Percent { get; set; }

        /// <summary>
        /// Gets or Sets StandardDeviation
        /// </summary>
        [DataMember(Name = "standardDeviation", IsRequired = true, EmitDefaultValue = true)]
        public decimal StandardDeviation { get; set; }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            StringBuilder sb = new StringBuilder();
            sb.Append("class ImageAnalysisByURL200ResponseNutritionCalories {\n");
            sb.Append("  Value: ").Append(Value).Append("\n");
            sb.Append("  Unit: ").Append(Unit).Append("\n");
            sb.Append("  ConfidenceRange95Percent: ").Append(ConfidenceRange95Percent).Append("\n");
            sb.Append("  StandardDeviation: ").Append(StandardDeviation).Append("\n");
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
            // Unit (string) minLength
            if (this.Unit != null && this.Unit.Length < 1)
            {
                yield return new System.ComponentModel.DataAnnotations.ValidationResult("Invalid value for Unit, length must be greater than 1.", new [] { "Unit" });
            }

            yield break;
        }
    }

}
