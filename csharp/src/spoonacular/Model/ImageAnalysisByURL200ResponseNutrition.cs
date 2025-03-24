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
    /// ImageAnalysisByURL200ResponseNutrition
    /// </summary>
    [DataContract(Name = "imageAnalysisByURL_200_response_nutrition")]
    public partial class ImageAnalysisByURL200ResponseNutrition : IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="ImageAnalysisByURL200ResponseNutrition" /> class.
        /// </summary>
        [JsonConstructorAttribute]
        protected ImageAnalysisByURL200ResponseNutrition() { }
        /// <summary>
        /// Initializes a new instance of the <see cref="ImageAnalysisByURL200ResponseNutrition" /> class.
        /// </summary>
        /// <param name="recipesUsed">recipesUsed (required).</param>
        /// <param name="calories">calories (required).</param>
        /// <param name="fat">fat (required).</param>
        /// <param name="protein">protein (required).</param>
        /// <param name="carbs">carbs (required).</param>
        public ImageAnalysisByURL200ResponseNutrition(int recipesUsed = default(int), ImageAnalysisByURL200ResponseNutritionCalories calories = default(ImageAnalysisByURL200ResponseNutritionCalories), ImageAnalysisByURL200ResponseNutritionCalories fat = default(ImageAnalysisByURL200ResponseNutritionCalories), ImageAnalysisByURL200ResponseNutritionCalories protein = default(ImageAnalysisByURL200ResponseNutritionCalories), ImageAnalysisByURL200ResponseNutritionCalories carbs = default(ImageAnalysisByURL200ResponseNutritionCalories))
        {
            this.RecipesUsed = recipesUsed;
            // to ensure "calories" is required (not null)
            if (calories == null)
            {
                throw new ArgumentNullException("calories is a required property for ImageAnalysisByURL200ResponseNutrition and cannot be null");
            }
            this.Calories = calories;
            // to ensure "fat" is required (not null)
            if (fat == null)
            {
                throw new ArgumentNullException("fat is a required property for ImageAnalysisByURL200ResponseNutrition and cannot be null");
            }
            this.Fat = fat;
            // to ensure "protein" is required (not null)
            if (protein == null)
            {
                throw new ArgumentNullException("protein is a required property for ImageAnalysisByURL200ResponseNutrition and cannot be null");
            }
            this.Protein = protein;
            // to ensure "carbs" is required (not null)
            if (carbs == null)
            {
                throw new ArgumentNullException("carbs is a required property for ImageAnalysisByURL200ResponseNutrition and cannot be null");
            }
            this.Carbs = carbs;
        }

        /// <summary>
        /// Gets or Sets RecipesUsed
        /// </summary>
        [DataMember(Name = "recipesUsed", IsRequired = true, EmitDefaultValue = true)]
        public int RecipesUsed { get; set; }

        /// <summary>
        /// Gets or Sets Calories
        /// </summary>
        [DataMember(Name = "calories", IsRequired = true, EmitDefaultValue = true)]
        public ImageAnalysisByURL200ResponseNutritionCalories Calories { get; set; }

        /// <summary>
        /// Gets or Sets Fat
        /// </summary>
        [DataMember(Name = "fat", IsRequired = true, EmitDefaultValue = true)]
        public ImageAnalysisByURL200ResponseNutritionCalories Fat { get; set; }

        /// <summary>
        /// Gets or Sets Protein
        /// </summary>
        [DataMember(Name = "protein", IsRequired = true, EmitDefaultValue = true)]
        public ImageAnalysisByURL200ResponseNutritionCalories Protein { get; set; }

        /// <summary>
        /// Gets or Sets Carbs
        /// </summary>
        [DataMember(Name = "carbs", IsRequired = true, EmitDefaultValue = true)]
        public ImageAnalysisByURL200ResponseNutritionCalories Carbs { get; set; }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            StringBuilder sb = new StringBuilder();
            sb.Append("class ImageAnalysisByURL200ResponseNutrition {\n");
            sb.Append("  RecipesUsed: ").Append(RecipesUsed).Append("\n");
            sb.Append("  Calories: ").Append(Calories).Append("\n");
            sb.Append("  Fat: ").Append(Fat).Append("\n");
            sb.Append("  Protein: ").Append(Protein).Append("\n");
            sb.Append("  Carbs: ").Append(Carbs).Append("\n");
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
            yield break;
        }
    }

}
