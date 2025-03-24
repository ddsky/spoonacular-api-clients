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

#include "OAIMapIngredientsToGroceryProducts_request.h"

#include <QDebug>
#include <QJsonArray>
#include <QJsonDocument>
#include <QObject>

#include "OAIHelpers.h"

namespace OpenAPI {

OAIMapIngredientsToGroceryProducts_request::OAIMapIngredientsToGroceryProducts_request(QString json) {
    this->initializeModel();
    this->fromJson(json);
}

OAIMapIngredientsToGroceryProducts_request::OAIMapIngredientsToGroceryProducts_request() {
    this->initializeModel();
}

OAIMapIngredientsToGroceryProducts_request::~OAIMapIngredientsToGroceryProducts_request() {}

void OAIMapIngredientsToGroceryProducts_request::initializeModel() {

    m_ingredients_isSet = false;
    m_ingredients_isValid = false;

    m_servings_isSet = false;
    m_servings_isValid = false;
}

void OAIMapIngredientsToGroceryProducts_request::fromJson(QString jsonString) {
    QByteArray array(jsonString.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
}

void OAIMapIngredientsToGroceryProducts_request::fromJsonObject(QJsonObject json) {

    m_ingredients_isValid = ::OpenAPI::fromJsonValue(m_ingredients, json[QString("ingredients")]);
    m_ingredients_isSet = !json[QString("ingredients")].isNull() && m_ingredients_isValid;

    m_servings_isValid = ::OpenAPI::fromJsonValue(m_servings, json[QString("servings")]);
    m_servings_isSet = !json[QString("servings")].isNull() && m_servings_isValid;
}

QString OAIMapIngredientsToGroceryProducts_request::asJson() const {
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject OAIMapIngredientsToGroceryProducts_request::asJsonObject() const {
    QJsonObject obj;
    if (m_ingredients.size() > 0) {
        obj.insert(QString("ingredients"), ::OpenAPI::toJsonValue(m_ingredients));
    }
    if (m_servings_isSet) {
        obj.insert(QString("servings"), ::OpenAPI::toJsonValue(m_servings));
    }
    return obj;
}

QList<QString> OAIMapIngredientsToGroceryProducts_request::getIngredients() const {
    return m_ingredients;
}
void OAIMapIngredientsToGroceryProducts_request::setIngredients(const QList<QString> &ingredients) {
    m_ingredients = ingredients;
    m_ingredients_isSet = true;
}

bool OAIMapIngredientsToGroceryProducts_request::is_ingredients_Set() const{
    return m_ingredients_isSet;
}

bool OAIMapIngredientsToGroceryProducts_request::is_ingredients_Valid() const{
    return m_ingredients_isValid;
}

double OAIMapIngredientsToGroceryProducts_request::getServings() const {
    return m_servings;
}
void OAIMapIngredientsToGroceryProducts_request::setServings(const double &servings) {
    m_servings = servings;
    m_servings_isSet = true;
}

bool OAIMapIngredientsToGroceryProducts_request::is_servings_Set() const{
    return m_servings_isSet;
}

bool OAIMapIngredientsToGroceryProducts_request::is_servings_Valid() const{
    return m_servings_isValid;
}

bool OAIMapIngredientsToGroceryProducts_request::isSet() const {
    bool isObjectUpdated = false;
    do {
        if (m_ingredients.size() > 0) {
            isObjectUpdated = true;
            break;
        }

        if (m_servings_isSet) {
            isObjectUpdated = true;
            break;
        }
    } while (false);
    return isObjectUpdated;
}

bool OAIMapIngredientsToGroceryProducts_request::isValid() const {
    // only required properties are required for the object to be considered valid
    return m_ingredients_isValid && m_servings_isValid && true;
}

} // namespace OpenAPI
