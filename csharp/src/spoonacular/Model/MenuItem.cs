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
    /// MenuItem
    /// </summary>
    [DataContract(Name = "MenuItem")]
    public partial class MenuItem : IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="MenuItem" /> class.
        /// </summary>
        [JsonConstructorAttribute]
        protected MenuItem() { }
        /// <summary>
        /// Initializes a new instance of the <see cref="MenuItem" /> class.
        /// </summary>
        /// <param name="id">id (required).</param>
        /// <param name="title">title (required).</param>
        /// <param name="restaurantChain">restaurantChain (required).</param>
        /// <param name="nutrition">nutrition.</param>
        /// <param name="badges">badges.</param>
        /// <param name="breadcrumbs">breadcrumbs.</param>
        /// <param name="generatedText">generatedText.</param>
        /// <param name="imageType">imageType.</param>
        /// <param name="likes">likes.</param>
        /// <param name="servings">servings.</param>
        /// <param name="price">price (required).</param>
        /// <param name="spoonacularScore">spoonacularScore (required).</param>
        public MenuItem(int id = default(int), string title = default(string), string restaurantChain = default(string), SearchGroceryProductsByUPC200ResponseNutrition nutrition = default(SearchGroceryProductsByUPC200ResponseNutrition), List<string> badges = default(List<string>), List<string> breadcrumbs = default(List<string>), string generatedText = default(string), string imageType = default(string), int likes = default(int), MenuItemServings servings = default(MenuItemServings), decimal? price = default(decimal?), decimal? spoonacularScore = default(decimal?))
        {
            this.Id = id;
            // to ensure "title" is required (not null)
            if (title == null)
            {
                throw new ArgumentNullException("title is a required property for MenuItem and cannot be null");
            }
            this.Title = title;
            // to ensure "restaurantChain" is required (not null)
            if (restaurantChain == null)
            {
                throw new ArgumentNullException("restaurantChain is a required property for MenuItem and cannot be null");
            }
            this.RestaurantChain = restaurantChain;
            // to ensure "price" is required (not null)
            if (price == null)
            {
                throw new ArgumentNullException("price is a required property for MenuItem and cannot be null");
            }
            this.Price = price;
            // to ensure "spoonacularScore" is required (not null)
            if (spoonacularScore == null)
            {
                throw new ArgumentNullException("spoonacularScore is a required property for MenuItem and cannot be null");
            }
            this.SpoonacularScore = spoonacularScore;
            this.Nutrition = nutrition;
            this.Badges = badges;
            this.Breadcrumbs = breadcrumbs;
            this.GeneratedText = generatedText;
            this.ImageType = imageType;
            this.Likes = likes;
            this.Servings = servings;
        }

        /// <summary>
        /// Gets or Sets Id
        /// </summary>
        [DataMember(Name = "id", IsRequired = true, EmitDefaultValue = true)]
        public int Id { get; set; }

        /// <summary>
        /// Gets or Sets Title
        /// </summary>
        [DataMember(Name = "title", IsRequired = true, EmitDefaultValue = true)]
        public string Title { get; set; }

        /// <summary>
        /// Gets or Sets RestaurantChain
        /// </summary>
        [DataMember(Name = "restaurantChain", IsRequired = true, EmitDefaultValue = true)]
        public string RestaurantChain { get; set; }

        /// <summary>
        /// Gets or Sets Nutrition
        /// </summary>
        [DataMember(Name = "nutrition", EmitDefaultValue = false)]
        public SearchGroceryProductsByUPC200ResponseNutrition Nutrition { get; set; }

        /// <summary>
        /// Gets or Sets Badges
        /// </summary>
        [DataMember(Name = "badges", EmitDefaultValue = false)]
        public List<string> Badges { get; set; }

        /// <summary>
        /// Gets or Sets Breadcrumbs
        /// </summary>
        [DataMember(Name = "breadcrumbs", EmitDefaultValue = false)]
        public List<string> Breadcrumbs { get; set; }

        /// <summary>
        /// Gets or Sets GeneratedText
        /// </summary>
        [DataMember(Name = "generatedText", EmitDefaultValue = true)]
        public string GeneratedText { get; set; }

        /// <summary>
        /// Gets or Sets ImageType
        /// </summary>
        [DataMember(Name = "imageType", EmitDefaultValue = false)]
        public string ImageType { get; set; }

        /// <summary>
        /// Gets or Sets Likes
        /// </summary>
        [DataMember(Name = "likes", EmitDefaultValue = false)]
        public int Likes { get; set; }

        /// <summary>
        /// Gets or Sets Servings
        /// </summary>
        [DataMember(Name = "servings", EmitDefaultValue = false)]
        public MenuItemServings Servings { get; set; }

        /// <summary>
        /// Gets or Sets Price
        /// </summary>
        [DataMember(Name = "price", IsRequired = true, EmitDefaultValue = true)]
        public decimal? Price { get; set; }

        /// <summary>
        /// Gets or Sets SpoonacularScore
        /// </summary>
        [DataMember(Name = "spoonacularScore", IsRequired = true, EmitDefaultValue = true)]
        public decimal? SpoonacularScore { get; set; }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            StringBuilder sb = new StringBuilder();
            sb.Append("class MenuItem {\n");
            sb.Append("  Id: ").Append(Id).Append("\n");
            sb.Append("  Title: ").Append(Title).Append("\n");
            sb.Append("  RestaurantChain: ").Append(RestaurantChain).Append("\n");
            sb.Append("  Nutrition: ").Append(Nutrition).Append("\n");
            sb.Append("  Badges: ").Append(Badges).Append("\n");
            sb.Append("  Breadcrumbs: ").Append(Breadcrumbs).Append("\n");
            sb.Append("  GeneratedText: ").Append(GeneratedText).Append("\n");
            sb.Append("  ImageType: ").Append(ImageType).Append("\n");
            sb.Append("  Likes: ").Append(Likes).Append("\n");
            sb.Append("  Servings: ").Append(Servings).Append("\n");
            sb.Append("  Price: ").Append(Price).Append("\n");
            sb.Append("  SpoonacularScore: ").Append(SpoonacularScore).Append("\n");
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
            // Title (string) minLength
            if (this.Title != null && this.Title.Length < 1)
            {
                yield return new ValidationResult("Invalid value for Title, length must be greater than 1.", new [] { "Title" });
            }

            // RestaurantChain (string) minLength
            if (this.RestaurantChain != null && this.RestaurantChain.Length < 1)
            {
                yield return new ValidationResult("Invalid value for RestaurantChain, length must be greater than 1.", new [] { "RestaurantChain" });
            }

            // ImageType (string) minLength
            if (this.ImageType != null && this.ImageType.Length < 1)
            {
                yield return new ValidationResult("Invalid value for ImageType, length must be greater than 1.", new [] { "ImageType" });
            }

            yield break;
        }
    }

}
