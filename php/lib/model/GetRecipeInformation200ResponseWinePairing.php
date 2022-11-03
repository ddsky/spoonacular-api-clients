<?php
/**
 * GetRecipeInformation200ResponseWinePairing
 *
 * PHP version 7.4
 *
 * @category Class
 * @package  com.spoonacular.client
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
 * OpenAPI Generator version: 6.0.1
 */

/**
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

namespace com.spoonacular.client\com.spoonacular.client.model;

use \ArrayAccess;
use \com.spoonacular.client\ObjectSerializer;

/**
 * GetRecipeInformation200ResponseWinePairing Class Doc Comment
 *
 * @category Class
 * @package  com.spoonacular.client
 * @author   OpenAPI Generator team
 * @link     https://openapi-generator.tech
 * @implements \ArrayAccess<string, mixed>
 */
class GetRecipeInformation200ResponseWinePairing implements ModelInterface, ArrayAccess, \JsonSerializable
{
    public const DISCRIMINATOR = null;

    /**
      * The original name of the model.
      *
      * @var string
      */
    protected static $openAPIModelName = 'getRecipeInformation_200_response_winePairing';

    /**
      * Array of property to type mappings. Used for (de)serialization
      *
      * @var string[]
      */
    protected static $openAPITypes = [
        'paired_wines' => 'string[]',
        'pairing_text' => 'string',
        'product_matches' => '\com.spoonacular.client\com.spoonacular.client.model\GetRecipeInformation200ResponseWinePairingProductMatchesInner[]'
    ];

    /**
      * Array of property to format mappings. Used for (de)serialization
      *
      * @var string[]
      * @phpstan-var array<string, string|null>
      * @psalm-var array<string, string|null>
      */
    protected static $openAPIFormats = [
        'paired_wines' => null,
        'pairing_text' => null,
        'product_matches' => null
    ];

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
     * Array of attributes where the key is the local name,
     * and the value is the original name
     *
     * @var string[]
     */
    protected static $attributeMap = [
        'paired_wines' => 'pairedWines',
        'pairing_text' => 'pairingText',
        'product_matches' => 'productMatches'
    ];

    /**
     * Array of attributes to setter functions (for deserialization of responses)
     *
     * @var string[]
     */
    protected static $setters = [
        'paired_wines' => 'setPairedWines',
        'pairing_text' => 'setPairingText',
        'product_matches' => 'setProductMatches'
    ];

    /**
     * Array of attributes to getter functions (for serialization of requests)
     *
     * @var string[]
     */
    protected static $getters = [
        'paired_wines' => 'getPairedWines',
        'pairing_text' => 'getPairingText',
        'product_matches' => 'getProductMatches'
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
        $this->container['paired_wines'] = $data['paired_wines'] ?? null;
        $this->container['pairing_text'] = $data['pairing_text'] ?? null;
        $this->container['product_matches'] = $data['product_matches'] ?? null;
    }

    /**
     * Show all the invalid properties with reasons.
     *
     * @return array invalid properties with reasons
     */
    public function listInvalidProperties()
    {
        $invalidProperties = [];

        if ($this->container['paired_wines'] === null) {
            $invalidProperties[] = "'paired_wines' can't be null";
        }
        if ($this->container['pairing_text'] === null) {
            $invalidProperties[] = "'pairing_text' can't be null";
        }
        if ((mb_strlen($this->container['pairing_text']) < 1)) {
            $invalidProperties[] = "invalid value for 'pairing_text', the character length must be bigger than or equal to 1.";
        }

        if ($this->container['product_matches'] === null) {
            $invalidProperties[] = "'product_matches' can't be null";
        }
        if ((count($this->container['product_matches']) < 0)) {
            $invalidProperties[] = "invalid value for 'product_matches', number of items must be greater than or equal to 0.";
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
     * Gets paired_wines
     *
     * @return string[]
     */
    public function getPairedWines()
    {
        return $this->container['paired_wines'];
    }

    /**
     * Sets paired_wines
     *
     * @param string[] $paired_wines paired_wines
     *
     * @return self
     */
    public function setPairedWines($paired_wines)
    {
        $this->container['paired_wines'] = $paired_wines;

        return $this;
    }

    /**
     * Gets pairing_text
     *
     * @return string
     */
    public function getPairingText()
    {
        return $this->container['pairing_text'];
    }

    /**
     * Sets pairing_text
     *
     * @param string $pairing_text pairing_text
     *
     * @return self
     */
    public function setPairingText($pairing_text)
    {

        if ((mb_strlen($pairing_text) < 1)) {
            throw new \InvalidArgumentException('invalid length for $pairing_text when calling GetRecipeInformation200ResponseWinePairing., must be bigger than or equal to 1.');
        }

        $this->container['pairing_text'] = $pairing_text;

        return $this;
    }

    /**
     * Gets product_matches
     *
     * @return \com.spoonacular.client\com.spoonacular.client.model\GetRecipeInformation200ResponseWinePairingProductMatchesInner[]
     */
    public function getProductMatches()
    {
        return $this->container['product_matches'];
    }

    /**
     * Sets product_matches
     *
     * @param \com.spoonacular.client\com.spoonacular.client.model\GetRecipeInformation200ResponseWinePairingProductMatchesInner[] $product_matches product_matches
     *
     * @return self
     */
    public function setProductMatches($product_matches)
    {


        if ((count($product_matches) < 0)) {
            throw new \InvalidArgumentException('invalid length for $product_matches when calling GetRecipeInformation200ResponseWinePairing., number of items must be greater than or equal to 0.');
        }
        $this->container['product_matches'] = $product_matches;

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


