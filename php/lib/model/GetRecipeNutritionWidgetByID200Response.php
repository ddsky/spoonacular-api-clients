<?php
/**
 * GetRecipeNutritionWidgetByID200Response
 *
 * PHP version 7.4
 *
 * @category Class
 * @package  OpenAPI\Client
 * @author   OpenAPI Generator team
 * @link     https://openapi-generator.tech
 */

/**
 * spoonacular API
 *
 * The spoonacular Nutrition, Recipe, and Food API allows you to access over thousands of recipes, thousands of ingredients, 800,000 food products, over 100,000 menu items, and restaurants. Our food ontology and semantic recipe search engine makes it possible to search for recipes using natural language queries, such as \"gluten free brownies without sugar\" or \"low fat vegan cupcakes.\" You can automatically calculate the nutritional information for any recipe, analyze recipe costs, visualize ingredient lists, find recipes for what's in your fridge, find recipes based on special diets, nutritional requirements, or favorite ingredients, classify recipes into types and cuisines, convert ingredient amounts, or even compute an entire meal plan. With our powerful API, you can create many kinds of food and especially nutrition apps.  Special diets/dietary requirements currently available include: vegan, vegetarian, pescetarian, gluten free, grain free, dairy free, high protein, whole 30, low sodium, low carb, Paleo, ketogenic, FODMAP, and Primal.
 *
 * The version of the OpenAPI document: 1.1
 * Contact: mail@spoonacular.com
 * Generated by: https://openapi-generator.tech
 * OpenAPI Generator version: 7.3.0
 */

/**
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

namespace OpenAPI\Client\Model;

use \ArrayAccess;
use \OpenAPI\Client\ObjectSerializer;

/**
 * GetRecipeNutritionWidgetByID200Response Class Doc Comment
 *
 * @category Class
 * @description 
 * @package  OpenAPI\Client
 * @author   OpenAPI Generator team
 * @link     https://openapi-generator.tech
 * @implements \ArrayAccess<string, mixed>
 */
class GetRecipeNutritionWidgetByID200Response implements ModelInterface, ArrayAccess, \JsonSerializable
{
    public const DISCRIMINATOR = null;

    /**
      * The original name of the model.
      *
      * @var string
      */
    protected static $openAPIModelName = 'getRecipeNutritionWidgetByID_200_response';

    /**
      * Array of property to type mappings. Used for (de)serialization
      *
      * @var string[]
      */
    protected static $openAPITypes = [
        'calories' => 'string',
        'carbs' => 'string',
        'fat' => 'string',
        'protein' => 'string',
        'bad' => '\OpenAPI\Client\Model\GetRecipeNutritionWidgetByID200ResponseBadInner[]',
        'good' => '\OpenAPI\Client\Model\GetRecipeNutritionWidgetByID200ResponseGoodInner[]'
    ];

    /**
      * Array of property to format mappings. Used for (de)serialization
      *
      * @var string[]
      * @phpstan-var array<string, string|null>
      * @psalm-var array<string, string|null>
      */
    protected static $openAPIFormats = [
        'calories' => null,
        'carbs' => null,
        'fat' => null,
        'protein' => null,
        'bad' => null,
        'good' => null
    ];

    /**
      * Array of nullable properties. Used for (de)serialization
      *
      * @var boolean[]
      */
    protected static array $openAPINullables = [
        'calories' => false,
        'carbs' => false,
        'fat' => false,
        'protein' => false,
        'bad' => false,
        'good' => false
    ];

    /**
      * If a nullable field gets set to null, insert it here
      *
      * @var boolean[]
      */
    protected array $openAPINullablesSetToNull = [];

    /**
     * Array of property to type mappings. Used for (de)serialization
     *
     * @return array
     */
    public static function openAPITypes()
    {
        return self::$openAPITypes;
    }

    /**
     * Array of property to format mappings. Used for (de)serialization
     *
     * @return array
     */
    public static function openAPIFormats()
    {
        return self::$openAPIFormats;
    }

    /**
     * Array of nullable properties
     *
     * @return array
     */
    protected static function openAPINullables(): array
    {
        return self::$openAPINullables;
    }

    /**
     * Array of nullable field names deliberately set to null
     *
     * @return boolean[]
     */
    private function getOpenAPINullablesSetToNull(): array
    {
        return $this->openAPINullablesSetToNull;
    }

    /**
     * Setter - Array of nullable field names deliberately set to null
     *
     * @param boolean[] $openAPINullablesSetToNull
     */
    private function setOpenAPINullablesSetToNull(array $openAPINullablesSetToNull): void
    {
        $this->openAPINullablesSetToNull = $openAPINullablesSetToNull;
    }

    /**
     * Checks if a property is nullable
     *
     * @param string $property
     * @return bool
     */
    public static function isNullable(string $property): bool
    {
        return self::openAPINullables()[$property] ?? false;
    }

    /**
     * Checks if a nullable property is set to null.
     *
     * @param string $property
     * @return bool
     */
    public function isNullableSetToNull(string $property): bool
    {
        return in_array($property, $this->getOpenAPINullablesSetToNull(), true);
    }

    /**
     * Array of attributes where the key is the local name,
     * and the value is the original name
     *
     * @var string[]
     */
    protected static $attributeMap = [
        'calories' => 'calories',
        'carbs' => 'carbs',
        'fat' => 'fat',
        'protein' => 'protein',
        'bad' => 'bad',
        'good' => 'good'
    ];

    /**
     * Array of attributes to setter functions (for deserialization of responses)
     *
     * @var string[]
     */
    protected static $setters = [
        'calories' => 'setCalories',
        'carbs' => 'setCarbs',
        'fat' => 'setFat',
        'protein' => 'setProtein',
        'bad' => 'setBad',
        'good' => 'setGood'
    ];

    /**
     * Array of attributes to getter functions (for serialization of requests)
     *
     * @var string[]
     */
    protected static $getters = [
        'calories' => 'getCalories',
        'carbs' => 'getCarbs',
        'fat' => 'getFat',
        'protein' => 'getProtein',
        'bad' => 'getBad',
        'good' => 'getGood'
    ];

    /**
     * Array of attributes where the key is the local name,
     * and the value is the original name
     *
     * @return array
     */
    public static function attributeMap()
    {
        return self::$attributeMap;
    }

    /**
     * Array of attributes to setter functions (for deserialization of responses)
     *
     * @return array
     */
    public static function setters()
    {
        return self::$setters;
    }

    /**
     * Array of attributes to getter functions (for serialization of requests)
     *
     * @return array
     */
    public static function getters()
    {
        return self::$getters;
    }

    /**
     * The original name of the model.
     *
     * @return string
     */
    public function getModelName()
    {
        return self::$openAPIModelName;
    }


    /**
     * Associative array for storing property values
     *
     * @var mixed[]
     */
    protected $container = [];

    /**
     * Constructor
     *
     * @param mixed[] $data Associated array of property values
     *                      initializing the model
     */
    public function __construct(array $data = null)
    {
        $this->setIfExists('calories', $data ?? [], null);
        $this->setIfExists('carbs', $data ?? [], null);
        $this->setIfExists('fat', $data ?? [], null);
        $this->setIfExists('protein', $data ?? [], null);
        $this->setIfExists('bad', $data ?? [], null);
        $this->setIfExists('good', $data ?? [], null);
    }

    /**
    * Sets $this->container[$variableName] to the given data or to the given default Value; if $variableName
    * is nullable and its value is set to null in the $fields array, then mark it as "set to null" in the
    * $this->openAPINullablesSetToNull array
    *
    * @param string $variableName
    * @param array  $fields
    * @param mixed  $defaultValue
    */
    private function setIfExists(string $variableName, array $fields, $defaultValue): void
    {
        if (self::isNullable($variableName) && array_key_exists($variableName, $fields) && is_null($fields[$variableName])) {
            $this->openAPINullablesSetToNull[] = $variableName;
        }

        $this->container[$variableName] = $fields[$variableName] ?? $defaultValue;
    }

    /**
     * Show all the invalid properties with reasons.
     *
     * @return array invalid properties with reasons
     */
    public function listInvalidProperties()
    {
        $invalidProperties = [];

        if ($this->container['calories'] === null) {
            $invalidProperties[] = "'calories' can't be null";
        }
        if ((mb_strlen($this->container['calories']) < 1)) {
            $invalidProperties[] = "invalid value for 'calories', the character length must be bigger than or equal to 1.";
        }

        if ($this->container['carbs'] === null) {
            $invalidProperties[] = "'carbs' can't be null";
        }
        if ((mb_strlen($this->container['carbs']) < 1)) {
            $invalidProperties[] = "invalid value for 'carbs', the character length must be bigger than or equal to 1.";
        }

        if ($this->container['fat'] === null) {
            $invalidProperties[] = "'fat' can't be null";
        }
        if ((mb_strlen($this->container['fat']) < 1)) {
            $invalidProperties[] = "invalid value for 'fat', the character length must be bigger than or equal to 1.";
        }

        if ($this->container['protein'] === null) {
            $invalidProperties[] = "'protein' can't be null";
        }
        if ((mb_strlen($this->container['protein']) < 1)) {
            $invalidProperties[] = "invalid value for 'protein', the character length must be bigger than or equal to 1.";
        }

        if ($this->container['bad'] === null) {
            $invalidProperties[] = "'bad' can't be null";
        }
        if ((count($this->container['bad']) < 0)) {
            $invalidProperties[] = "invalid value for 'bad', number of items must be greater than or equal to 0.";
        }

        if ($this->container['good'] === null) {
            $invalidProperties[] = "'good' can't be null";
        }
        if ((count($this->container['good']) < 0)) {
            $invalidProperties[] = "invalid value for 'good', number of items must be greater than or equal to 0.";
        }

        return $invalidProperties;
    }

    /**
     * Validate all the properties in the model
     * return true if all passed
     *
     * @return bool True if all properties are valid
     */
    public function valid()
    {
        return count($this->listInvalidProperties()) === 0;
    }


    /**
     * Gets calories
     *
     * @return string
     */
    public function getCalories()
    {
        return $this->container['calories'];
    }

    /**
     * Sets calories
     *
     * @param string $calories calories
     *
     * @return self
     */
    public function setCalories($calories)
    {
        if (is_null($calories)) {
            throw new \InvalidArgumentException('non-nullable calories cannot be null');
        }

        if ((mb_strlen($calories) < 1)) {
            throw new \InvalidArgumentException('invalid length for $calories when calling GetRecipeNutritionWidgetByID200Response., must be bigger than or equal to 1.');
        }

        $this->container['calories'] = $calories;

        return $this;
    }

    /**
     * Gets carbs
     *
     * @return string
     */
    public function getCarbs()
    {
        return $this->container['carbs'];
    }

    /**
     * Sets carbs
     *
     * @param string $carbs carbs
     *
     * @return self
     */
    public function setCarbs($carbs)
    {
        if (is_null($carbs)) {
            throw new \InvalidArgumentException('non-nullable carbs cannot be null');
        }

        if ((mb_strlen($carbs) < 1)) {
            throw new \InvalidArgumentException('invalid length for $carbs when calling GetRecipeNutritionWidgetByID200Response., must be bigger than or equal to 1.');
        }

        $this->container['carbs'] = $carbs;

        return $this;
    }

    /**
     * Gets fat
     *
     * @return string
     */
    public function getFat()
    {
        return $this->container['fat'];
    }

    /**
     * Sets fat
     *
     * @param string $fat fat
     *
     * @return self
     */
    public function setFat($fat)
    {
        if (is_null($fat)) {
            throw new \InvalidArgumentException('non-nullable fat cannot be null');
        }

        if ((mb_strlen($fat) < 1)) {
            throw new \InvalidArgumentException('invalid length for $fat when calling GetRecipeNutritionWidgetByID200Response., must be bigger than or equal to 1.');
        }

        $this->container['fat'] = $fat;

        return $this;
    }

    /**
     * Gets protein
     *
     * @return string
     */
    public function getProtein()
    {
        return $this->container['protein'];
    }

    /**
     * Sets protein
     *
     * @param string $protein protein
     *
     * @return self
     */
    public function setProtein($protein)
    {
        if (is_null($protein)) {
            throw new \InvalidArgumentException('non-nullable protein cannot be null');
        }

        if ((mb_strlen($protein) < 1)) {
            throw new \InvalidArgumentException('invalid length for $protein when calling GetRecipeNutritionWidgetByID200Response., must be bigger than or equal to 1.');
        }

        $this->container['protein'] = $protein;

        return $this;
    }

    /**
     * Gets bad
     *
     * @return \OpenAPI\Client\Model\GetRecipeNutritionWidgetByID200ResponseBadInner[]
     */
    public function getBad()
    {
        return $this->container['bad'];
    }

    /**
     * Sets bad
     *
     * @param \OpenAPI\Client\Model\GetRecipeNutritionWidgetByID200ResponseBadInner[] $bad bad
     *
     * @return self
     */
    public function setBad($bad)
    {
        if (is_null($bad)) {
            throw new \InvalidArgumentException('non-nullable bad cannot be null');
        }


        if ((count($bad) < 0)) {
            throw new \InvalidArgumentException('invalid length for $bad when calling GetRecipeNutritionWidgetByID200Response., number of items must be greater than or equal to 0.');
        }
        $this->container['bad'] = $bad;

        return $this;
    }

    /**
     * Gets good
     *
     * @return \OpenAPI\Client\Model\GetRecipeNutritionWidgetByID200ResponseGoodInner[]
     */
    public function getGood()
    {
        return $this->container['good'];
    }

    /**
     * Sets good
     *
     * @param \OpenAPI\Client\Model\GetRecipeNutritionWidgetByID200ResponseGoodInner[] $good good
     *
     * @return self
     */
    public function setGood($good)
    {
        if (is_null($good)) {
            throw new \InvalidArgumentException('non-nullable good cannot be null');
        }


        if ((count($good) < 0)) {
            throw new \InvalidArgumentException('invalid length for $good when calling GetRecipeNutritionWidgetByID200Response., number of items must be greater than or equal to 0.');
        }
        $this->container['good'] = $good;

        return $this;
    }
    /**
     * Returns true if offset exists. False otherwise.
     *
     * @param integer $offset Offset
     *
     * @return boolean
     */
    public function offsetExists($offset): bool
    {
        return isset($this->container[$offset]);
    }

    /**
     * Gets offset.
     *
     * @param integer $offset Offset
     *
     * @return mixed|null
     */
    #[\ReturnTypeWillChange]
    public function offsetGet($offset)
    {
        return $this->container[$offset] ?? null;
    }

    /**
     * Sets value based on offset.
     *
     * @param int|null $offset Offset
     * @param mixed    $value  Value to be set
     *
     * @return void
     */
    public function offsetSet($offset, $value): void
    {
        if (is_null($offset)) {
            $this->container[] = $value;
        } else {
            $this->container[$offset] = $value;
        }
    }

    /**
     * Unsets offset.
     *
     * @param integer $offset Offset
     *
     * @return void
     */
    public function offsetUnset($offset): void
    {
        unset($this->container[$offset]);
    }

    /**
     * Serializes the object to a value that can be serialized natively by json_encode().
     * @link https://www.php.net/manual/en/jsonserializable.jsonserialize.php
     *
     * @return mixed Returns data which can be serialized by json_encode(), which is a value
     * of any type other than a resource.
     */
    #[\ReturnTypeWillChange]
    public function jsonSerialize()
    {
       return ObjectSerializer::sanitizeForSerialization($this);
    }

    /**
     * Gets the string presentation of the object
     *
     * @return string
     */
    public function __toString()
    {
        return json_encode(
            ObjectSerializer::sanitizeForSerialization($this),
            JSON_PRETTY_PRINT
        );
    }

    /**
     * Gets a header-safe presentation of the object
     *
     * @return string
     */
    public function toHeaderValue()
    {
        return json_encode(ObjectSerializer::sanitizeForSerialization($this));
    }
}


