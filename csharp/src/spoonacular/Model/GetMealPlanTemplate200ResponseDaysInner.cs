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
    /// GetMealPlanTemplate200ResponseDaysInner
    /// </summary>
    [DataContract(Name = "getMealPlanTemplate_200_response_days_inner")]
    public partial class GetMealPlanTemplate200ResponseDaysInner : IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="GetMealPlanTemplate200ResponseDaysInner" /> class.
        /// </summary>
        [JsonConstructorAttribute]
        protected GetMealPlanTemplate200ResponseDaysInner() { }
        /// <summary>
        /// Initializes a new instance of the <see cref="GetMealPlanTemplate200ResponseDaysInner" /> class.
        /// </summary>
        /// <param name="nutritionSummary">nutritionSummary.</param>
        /// <param name="nutritionSummaryBreakfast">nutritionSummaryBreakfast.</param>
        /// <param name="nutritionSummaryLunch">nutritionSummaryLunch.</param>
        /// <param name="nutritionSummaryDinner">nutritionSummaryDinner.</param>
        /// <param name="day">day (required).</param>
        /// <param name="items">items.</param>
        public GetMealPlanTemplate200ResponseDaysInner(GetMealPlanWeek200ResponseDaysInnerNutritionSummary nutritionSummary = default(GetMealPlanWeek200ResponseDaysInnerNutritionSummary), GetMealPlanWeek200ResponseDaysInnerNutritionSummary nutritionSummaryBreakfast = default(GetMealPlanWeek200ResponseDaysInnerNutritionSummary), GetMealPlanWeek200ResponseDaysInnerNutritionSummary nutritionSummaryLunch = default(GetMealPlanWeek200ResponseDaysInnerNutritionSummary), GetMealPlanWeek200ResponseDaysInnerNutritionSummary nutritionSummaryDinner = default(GetMealPlanWeek200ResponseDaysInnerNutritionSummary), string day = default(string), List<GetMealPlanTemplate200ResponseDaysInnerItemsInner> items = default(List<GetMealPlanTemplate200ResponseDaysInnerItemsInner>))
        {
            // to ensure "day" is required (not null)
            if (day == null)
            {
                throw new ArgumentNullException("day is a required property for GetMealPlanTemplate200ResponseDaysInner and cannot be null");
            }
            this.Day = day;
            this.NutritionSummary = nutritionSummary;
            this.NutritionSummaryBreakfast = nutritionSummaryBreakfast;
            this.NutritionSummaryLunch = nutritionSummaryLunch;
            this.NutritionSummaryDinner = nutritionSummaryDinner;
            this.Items = items;
        }

        /// <summary>
        /// Gets or Sets NutritionSummary
        /// </summary>
        [DataMember(Name = "nutritionSummary", EmitDefaultValue = false)]
        public GetMealPlanWeek200ResponseDaysInnerNutritionSummary NutritionSummary { get; set; }

        /// <summary>
        /// Gets or Sets NutritionSummaryBreakfast
        /// </summary>
        [DataMember(Name = "nutritionSummaryBreakfast", EmitDefaultValue = false)]
        public GetMealPlanWeek200ResponseDaysInnerNutritionSummary NutritionSummaryBreakfast { get; set; }

        /// <summary>
        /// Gets or Sets NutritionSummaryLunch
        /// </summary>
        [DataMember(Name = "nutritionSummaryLunch", EmitDefaultValue = false)]
        public GetMealPlanWeek200ResponseDaysInnerNutritionSummary NutritionSummaryLunch { get; set; }

        /// <summary>
        /// Gets or Sets NutritionSummaryDinner
        /// </summary>
        [DataMember(Name = "nutritionSummaryDinner", EmitDefaultValue = false)]
        public GetMealPlanWeek200ResponseDaysInnerNutritionSummary NutritionSummaryDinner { get; set; }

        /// <summary>
        /// Gets or Sets Day
        /// </summary>
        [DataMember(Name = "day", IsRequired = true, EmitDefaultValue = true)]
        public string Day { get; set; }

        /// <summary>
        /// Gets or Sets Items
        /// </summary>
        [DataMember(Name = "items", EmitDefaultValue = false)]
        public List<GetMealPlanTemplate200ResponseDaysInnerItemsInner> Items { get; set; }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            StringBuilder sb = new StringBuilder();
            sb.Append("class GetMealPlanTemplate200ResponseDaysInner {\n");
            sb.Append("  NutritionSummary: ").Append(NutritionSummary).Append("\n");
            sb.Append("  NutritionSummaryBreakfast: ").Append(NutritionSummaryBreakfast).Append("\n");
            sb.Append("  NutritionSummaryLunch: ").Append(NutritionSummaryLunch).Append("\n");
            sb.Append("  NutritionSummaryDinner: ").Append(NutritionSummaryDinner).Append("\n");
            sb.Append("  Day: ").Append(Day).Append("\n");
            sb.Append("  Items: ").Append(Items).Append("\n");
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
            // Day (string) minLength
            if (this.Day != null && this.Day.Length < 1)
            {
                yield return new ValidationResult("Invalid value for Day, length must be greater than 1.", new [] { "Day" });
            }

            yield break;
        }
    }

}
