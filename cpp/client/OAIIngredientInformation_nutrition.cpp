/**
 * spoonacular API
 * The spoonacular Nutrition, Recipe, and Food API allows you to access over thousands of recipes, thousands of ingredients, 800,000 food products, over 100,000 menu items, and restaurants. Our food ontology and semantic recipe search engine makes it possible to search for recipes using natural language queries, such as \"gluten free brownies without sugar\" or \"low fat vegan cupcakes.\" You can automatically calculate the nutritional information for any recipe, analyze recipe costs, visualize ingredient lists, find recipes for what's in your fridge, find recipes based on special diets, nutritional requirements, or favorite ingredients, classify recipes into types and cuisines, convert ingredient amounts, or even compute an entire meal plan. With our powerful API, you can create many kinds of food and especially nutrition apps.  Special diets/dietary requirements currently available include: vegan, vegetarian, pescetarian, gluten free, grain free, dairy free, high protein, whole 30, low sodium, low carb, Paleo, ketogenic, FODMAP, and Primal.
 *
 * The version of the OpenAPI document: 2.0.2
 * Contact: mail@spoonacular.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

#include "OAIIngredientInformation_nutrition.h"

#include <QDebug>
#include <QJsonArray>
#include <QJsonDocument>
#include <QObject>

#include "OAIHelpers.h"

namespace OpenAPI {

OAIIngredientInformation_nutrition::OAIIngredientInformation_nutrition(QString json) {
    this->initializeModel();
    this->fromJson(json);
}

OAIIngredientInformation_nutrition::OAIIngredientInformation_nutrition() {
    this->initializeModel();
}

OAIIngredientInformation_nutrition::~OAIIngredientInformation_nutrition() {}

void OAIIngredientInformation_nutrition::initializeModel() {

    m_nutrients_isSet = false;
    m_nutrients_isValid = false;

    m_properties_isSet = false;
    m_properties_isValid = false;

    m_caloric_breakdown_isSet = false;
    m_caloric_breakdown_isValid = false;

    m_weight_per_serving_isSet = false;
    m_weight_per_serving_isValid = false;
}

void OAIIngredientInformation_nutrition::fromJson(QString jsonString) {
    QByteArray array(jsonString.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
}

void OAIIngredientInformation_nutrition::fromJsonObject(QJsonObject json) {

    m_nutrients_isValid = ::OpenAPI::fromJsonValue(m_nutrients, json[QString("nutrients")]);
    m_nutrients_isSet = !json[QString("nutrients")].isNull() && m_nutrients_isValid;

    m_properties_isValid = ::OpenAPI::fromJsonValue(m_properties, json[QString("properties")]);
    m_properties_isSet = !json[QString("properties")].isNull() && m_properties_isValid;

    m_caloric_breakdown_isValid = ::OpenAPI::fromJsonValue(m_caloric_breakdown, json[QString("caloricBreakdown")]);
    m_caloric_breakdown_isSet = !json[QString("caloricBreakdown")].isNull() && m_caloric_breakdown_isValid;

    m_weight_per_serving_isValid = ::OpenAPI::fromJsonValue(m_weight_per_serving, json[QString("weightPerServing")]);
    m_weight_per_serving_isSet = !json[QString("weightPerServing")].isNull() && m_weight_per_serving_isValid;
}

QString OAIIngredientInformation_nutrition::asJson() const {
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject OAIIngredientInformation_nutrition::asJsonObject() const {
    QJsonObject obj;
    if (m_nutrients.size() > 0) {
        obj.insert(QString("nutrients"), ::OpenAPI::toJsonValue(m_nutrients));
    }
    if (m_properties.size() > 0) {
        obj.insert(QString("properties"), ::OpenAPI::toJsonValue(m_properties));
    }
    if (m_caloric_breakdown.isSet()) {
        obj.insert(QString("caloricBreakdown"), ::OpenAPI::toJsonValue(m_caloric_breakdown));
    }
    if (m_weight_per_serving.isSet()) {
        obj.insert(QString("weightPerServing"), ::OpenAPI::toJsonValue(m_weight_per_serving));
    }
    return obj;
}

QSet<OAISearchGroceryProductsByUPC_200_response_nutrition_nutrients_inner> OAIIngredientInformation_nutrition::getNutrients() const {
    return m_nutrients;
}
void OAIIngredientInformation_nutrition::setNutrients(const QSet<OAISearchGroceryProductsByUPC_200_response_nutrition_nutrients_inner> &nutrients) {
    m_nutrients = nutrients;
    m_nutrients_isSet = true;
}

bool OAIIngredientInformation_nutrition::is_nutrients_Set() const{
    return m_nutrients_isSet;
}

bool OAIIngredientInformation_nutrition::is_nutrients_Valid() const{
    return m_nutrients_isValid;
}

QSet<OAIIngredientInformation_nutrition_properties_inner> OAIIngredientInformation_nutrition::getProperties() const {
    return m_properties;
}
void OAIIngredientInformation_nutrition::setProperties(const QSet<OAIIngredientInformation_nutrition_properties_inner> &properties) {
    m_properties = properties;
    m_properties_isSet = true;
}

bool OAIIngredientInformation_nutrition::is_properties_Set() const{
    return m_properties_isSet;
}

bool OAIIngredientInformation_nutrition::is_properties_Valid() const{
    return m_properties_isValid;
}

OAISearchGroceryProductsByUPC_200_response_nutrition_caloricBreakdown OAIIngredientInformation_nutrition::getCaloricBreakdown() const {
    return m_caloric_breakdown;
}
void OAIIngredientInformation_nutrition::setCaloricBreakdown(const OAISearchGroceryProductsByUPC_200_response_nutrition_caloricBreakdown &caloric_breakdown) {
    m_caloric_breakdown = caloric_breakdown;
    m_caloric_breakdown_isSet = true;
}

bool OAIIngredientInformation_nutrition::is_caloric_breakdown_Set() const{
    return m_caloric_breakdown_isSet;
}

bool OAIIngredientInformation_nutrition::is_caloric_breakdown_Valid() const{
    return m_caloric_breakdown_isValid;
}

OAIGetShoppingList_200_response_aisles_inner_items_inner_measures_original OAIIngredientInformation_nutrition::getWeightPerServing() const {
    return m_weight_per_serving;
}
void OAIIngredientInformation_nutrition::setWeightPerServing(const OAIGetShoppingList_200_response_aisles_inner_items_inner_measures_original &weight_per_serving) {
    m_weight_per_serving = weight_per_serving;
    m_weight_per_serving_isSet = true;
}

bool OAIIngredientInformation_nutrition::is_weight_per_serving_Set() const{
    return m_weight_per_serving_isSet;
}

bool OAIIngredientInformation_nutrition::is_weight_per_serving_Valid() const{
    return m_weight_per_serving_isValid;
}

bool OAIIngredientInformation_nutrition::isSet() const {
    bool isObjectUpdated = false;
    do {
        if (m_nutrients.size() > 0) {
            isObjectUpdated = true;
            break;
        }

        if (m_properties.size() > 0) {
            isObjectUpdated = true;
            break;
        }

        if (m_caloric_breakdown.isSet()) {
            isObjectUpdated = true;
            break;
        }

        if (m_weight_per_serving.isSet()) {
            isObjectUpdated = true;
            break;
        }
    } while (false);
    return isObjectUpdated;
}

bool OAIIngredientInformation_nutrition::isValid() const {
    // only required properties are required for the object to be considered valid
    return m_nutrients_isValid && m_properties_isValid && m_caloric_breakdown_isValid && m_weight_per_serving_isValid && true;
}

} // namespace OpenAPI
