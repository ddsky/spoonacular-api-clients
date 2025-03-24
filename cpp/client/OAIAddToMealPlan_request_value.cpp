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

#include "OAIAddToMealPlan_request_value.h"

#include <QDebug>
#include <QJsonArray>
#include <QJsonDocument>
#include <QObject>

#include "OAIHelpers.h"

namespace OpenAPI {

OAIAddToMealPlan_request_value::OAIAddToMealPlan_request_value(QString json) {
    this->initializeModel();
    this->fromJson(json);
}

OAIAddToMealPlan_request_value::OAIAddToMealPlan_request_value() {
    this->initializeModel();
}

OAIAddToMealPlan_request_value::~OAIAddToMealPlan_request_value() {}

void OAIAddToMealPlan_request_value::initializeModel() {

    m_ingredients_isSet = false;
    m_ingredients_isValid = false;
}

void OAIAddToMealPlan_request_value::fromJson(QString jsonString) {
    QByteArray array(jsonString.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
}

void OAIAddToMealPlan_request_value::fromJsonObject(QJsonObject json) {

    m_ingredients_isValid = ::OpenAPI::fromJsonValue(m_ingredients, json[QString("ingredients")]);
    m_ingredients_isSet = !json[QString("ingredients")].isNull() && m_ingredients_isValid;
}

QString OAIAddToMealPlan_request_value::asJson() const {
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject OAIAddToMealPlan_request_value::asJsonObject() const {
    QJsonObject obj;
    if (m_ingredients.size() > 0) {
        obj.insert(QString("ingredients"), ::OpenAPI::toJsonValue(m_ingredients));
    }
    return obj;
}

QSet<OAIAddToMealPlan_request_value_ingredients_inner> OAIAddToMealPlan_request_value::getIngredients() const {
    return m_ingredients;
}
void OAIAddToMealPlan_request_value::setIngredients(const QSet<OAIAddToMealPlan_request_value_ingredients_inner> &ingredients) {
    m_ingredients = ingredients;
    m_ingredients_isSet = true;
}

bool OAIAddToMealPlan_request_value::is_ingredients_Set() const{
    return m_ingredients_isSet;
}

bool OAIAddToMealPlan_request_value::is_ingredients_Valid() const{
    return m_ingredients_isValid;
}

bool OAIAddToMealPlan_request_value::isSet() const {
    bool isObjectUpdated = false;
    do {
        if (m_ingredients.size() > 0) {
            isObjectUpdated = true;
            break;
        }
    } while (false);
    return isObjectUpdated;
}

bool OAIAddToMealPlan_request_value::isValid() const {
    // only required properties are required for the object to be considered valid
    return m_ingredients_isValid && true;
}

} // namespace OpenAPI
