/**
 * spoonacular API
 * The spoonacular Nutrition, Recipe, and Food API allows you to access over thousands of recipes, thousands of ingredients, 800,000 food products, over 100,000 menu items, and restaurants. Our food ontology and semantic recipe search engine makes it possible to search for recipes using natural language queries, such as \"gluten free brownies without sugar\" or \"low fat vegan cupcakes.\" You can automatically calculate the nutritional information for any recipe, analyze recipe costs, visualize ingredient lists, find recipes for what's in your fridge, find recipes based on special diets, nutritional requirements, or favorite ingredients, classify recipes into types and cuisines, convert ingredient amounts, or even compute an entire meal plan. With our powerful API, you can create many kinds of food and especially nutrition apps.  Special diets/dietary requirements currently available include: vegan, vegetarian, pescetarian, gluten free, grain free, dairy free, high protein, whole 30, low sodium, low carb, Paleo, ketogenic, FODMAP, and Primal.
 *
 * The version of the OpenAPI document: 1.1
 * Contact: mail@spoonacular.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

#include "OAIGetRecipePriceBreakdownByID_200_response.h"

#include <QDebug>
#include <QJsonArray>
#include <QJsonDocument>
#include <QObject>

#include "OAIHelpers.h"

namespace OpenAPI {

OAIGetRecipePriceBreakdownByID_200_response::OAIGetRecipePriceBreakdownByID_200_response(QString json) {
    this->initializeModel();
    this->fromJson(json);
}

OAIGetRecipePriceBreakdownByID_200_response::OAIGetRecipePriceBreakdownByID_200_response() {
    this->initializeModel();
}

OAIGetRecipePriceBreakdownByID_200_response::~OAIGetRecipePriceBreakdownByID_200_response() {}

void OAIGetRecipePriceBreakdownByID_200_response::initializeModel() {

    m_ingredients_isSet = false;
    m_ingredients_isValid = false;

    m_total_cost_isSet = false;
    m_total_cost_isValid = false;

    m_total_cost_per_serving_isSet = false;
    m_total_cost_per_serving_isValid = false;
}

void OAIGetRecipePriceBreakdownByID_200_response::fromJson(QString jsonString) {
    QByteArray array(jsonString.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
}

void OAIGetRecipePriceBreakdownByID_200_response::fromJsonObject(QJsonObject json) {

    m_ingredients_isValid = ::OpenAPI::fromJsonValue(ingredients, json[QString("ingredients")]);
    m_ingredients_isSet = !json[QString("ingredients")].isNull() && m_ingredients_isValid;

    m_total_cost_isValid = ::OpenAPI::fromJsonValue(total_cost, json[QString("totalCost")]);
    m_total_cost_isSet = !json[QString("totalCost")].isNull() && m_total_cost_isValid;

    m_total_cost_per_serving_isValid = ::OpenAPI::fromJsonValue(total_cost_per_serving, json[QString("totalCostPerServing")]);
    m_total_cost_per_serving_isSet = !json[QString("totalCostPerServing")].isNull() && m_total_cost_per_serving_isValid;
}

QString OAIGetRecipePriceBreakdownByID_200_response::asJson() const {
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject OAIGetRecipePriceBreakdownByID_200_response::asJsonObject() const {
    QJsonObject obj;
    if (ingredients.size() > 0) {
        obj.insert(QString("ingredients"), ::OpenAPI::toJsonValue(ingredients));
    }
    if (m_total_cost_isSet) {
        obj.insert(QString("totalCost"), ::OpenAPI::toJsonValue(total_cost));
    }
    if (m_total_cost_per_serving_isSet) {
        obj.insert(QString("totalCostPerServing"), ::OpenAPI::toJsonValue(total_cost_per_serving));
    }
    return obj;
}

QSet<OAIGetRecipePriceBreakdownByID_200_response_ingredients_inner> OAIGetRecipePriceBreakdownByID_200_response::getIngredients() const {
    return ingredients;
}
void OAIGetRecipePriceBreakdownByID_200_response::setIngredients(const QSet<OAIGetRecipePriceBreakdownByID_200_response_ingredients_inner> &ingredients) {
    this->ingredients = ingredients;
    this->m_ingredients_isSet = true;
}

bool OAIGetRecipePriceBreakdownByID_200_response::is_ingredients_Set() const{
    return m_ingredients_isSet;
}

bool OAIGetRecipePriceBreakdownByID_200_response::is_ingredients_Valid() const{
    return m_ingredients_isValid;
}

double OAIGetRecipePriceBreakdownByID_200_response::getTotalCost() const {
    return total_cost;
}
void OAIGetRecipePriceBreakdownByID_200_response::setTotalCost(const double &total_cost) {
    this->total_cost = total_cost;
    this->m_total_cost_isSet = true;
}

bool OAIGetRecipePriceBreakdownByID_200_response::is_total_cost_Set() const{
    return m_total_cost_isSet;
}

bool OAIGetRecipePriceBreakdownByID_200_response::is_total_cost_Valid() const{
    return m_total_cost_isValid;
}

double OAIGetRecipePriceBreakdownByID_200_response::getTotalCostPerServing() const {
    return total_cost_per_serving;
}
void OAIGetRecipePriceBreakdownByID_200_response::setTotalCostPerServing(const double &total_cost_per_serving) {
    this->total_cost_per_serving = total_cost_per_serving;
    this->m_total_cost_per_serving_isSet = true;
}

bool OAIGetRecipePriceBreakdownByID_200_response::is_total_cost_per_serving_Set() const{
    return m_total_cost_per_serving_isSet;
}

bool OAIGetRecipePriceBreakdownByID_200_response::is_total_cost_per_serving_Valid() const{
    return m_total_cost_per_serving_isValid;
}

bool OAIGetRecipePriceBreakdownByID_200_response::isSet() const {
    bool isObjectUpdated = false;
    do {
        if (ingredients.size() > 0) {
            isObjectUpdated = true;
            break;
        }

        if (m_total_cost_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_total_cost_per_serving_isSet) {
            isObjectUpdated = true;
            break;
        }
    } while (false);
    return isObjectUpdated;
}

bool OAIGetRecipePriceBreakdownByID_200_response::isValid() const {
    // only required properties are required for the object to be considered valid
    return m_ingredients_isValid && m_total_cost_isValid && m_total_cost_per_serving_isValid && true;
}

} // namespace OpenAPI
