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

#include "OAISearchGroceryProductsByUPC_200_response_nutrition_nutrients_inner.h"

#include <QDebug>
#include <QJsonArray>
#include <QJsonDocument>
#include <QObject>

#include "OAIHelpers.h"

namespace OpenAPI {

OAISearchGroceryProductsByUPC_200_response_nutrition_nutrients_inner::OAISearchGroceryProductsByUPC_200_response_nutrition_nutrients_inner(QString json) {
    this->initializeModel();
    this->fromJson(json);
}

OAISearchGroceryProductsByUPC_200_response_nutrition_nutrients_inner::OAISearchGroceryProductsByUPC_200_response_nutrition_nutrients_inner() {
    this->initializeModel();
}

OAISearchGroceryProductsByUPC_200_response_nutrition_nutrients_inner::~OAISearchGroceryProductsByUPC_200_response_nutrition_nutrients_inner() {}

void OAISearchGroceryProductsByUPC_200_response_nutrition_nutrients_inner::initializeModel() {

    m_name_isSet = false;
    m_name_isValid = false;

    m_amount_isSet = false;
    m_amount_isValid = false;

    m_unit_isSet = false;
    m_unit_isValid = false;

    m_percent_of_daily_needs_isSet = false;
    m_percent_of_daily_needs_isValid = false;
}

void OAISearchGroceryProductsByUPC_200_response_nutrition_nutrients_inner::fromJson(QString jsonString) {
    QByteArray array(jsonString.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
}

void OAISearchGroceryProductsByUPC_200_response_nutrition_nutrients_inner::fromJsonObject(QJsonObject json) {

    m_name_isValid = ::OpenAPI::fromJsonValue(m_name, json[QString("name")]);
    m_name_isSet = !json[QString("name")].isNull() && m_name_isValid;

    m_amount_isValid = ::OpenAPI::fromJsonValue(m_amount, json[QString("amount")]);
    m_amount_isSet = !json[QString("amount")].isNull() && m_amount_isValid;

    m_unit_isValid = ::OpenAPI::fromJsonValue(m_unit, json[QString("unit")]);
    m_unit_isSet = !json[QString("unit")].isNull() && m_unit_isValid;

    m_percent_of_daily_needs_isValid = ::OpenAPI::fromJsonValue(m_percent_of_daily_needs, json[QString("percentOfDailyNeeds")]);
    m_percent_of_daily_needs_isSet = !json[QString("percentOfDailyNeeds")].isNull() && m_percent_of_daily_needs_isValid;
}

QString OAISearchGroceryProductsByUPC_200_response_nutrition_nutrients_inner::asJson() const {
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject OAISearchGroceryProductsByUPC_200_response_nutrition_nutrients_inner::asJsonObject() const {
    QJsonObject obj;
    if (m_name_isSet) {
        obj.insert(QString("name"), ::OpenAPI::toJsonValue(m_name));
    }
    if (m_amount_isSet) {
        obj.insert(QString("amount"), ::OpenAPI::toJsonValue(m_amount));
    }
    if (m_unit_isSet) {
        obj.insert(QString("unit"), ::OpenAPI::toJsonValue(m_unit));
    }
    if (m_percent_of_daily_needs_isSet) {
        obj.insert(QString("percentOfDailyNeeds"), ::OpenAPI::toJsonValue(m_percent_of_daily_needs));
    }
    return obj;
}

QString OAISearchGroceryProductsByUPC_200_response_nutrition_nutrients_inner::getName() const {
    return m_name;
}
void OAISearchGroceryProductsByUPC_200_response_nutrition_nutrients_inner::setName(const QString &name) {
    m_name = name;
    m_name_isSet = true;
}

bool OAISearchGroceryProductsByUPC_200_response_nutrition_nutrients_inner::is_name_Set() const{
    return m_name_isSet;
}

bool OAISearchGroceryProductsByUPC_200_response_nutrition_nutrients_inner::is_name_Valid() const{
    return m_name_isValid;
}

double OAISearchGroceryProductsByUPC_200_response_nutrition_nutrients_inner::getAmount() const {
    return m_amount;
}
void OAISearchGroceryProductsByUPC_200_response_nutrition_nutrients_inner::setAmount(const double &amount) {
    m_amount = amount;
    m_amount_isSet = true;
}

bool OAISearchGroceryProductsByUPC_200_response_nutrition_nutrients_inner::is_amount_Set() const{
    return m_amount_isSet;
}

bool OAISearchGroceryProductsByUPC_200_response_nutrition_nutrients_inner::is_amount_Valid() const{
    return m_amount_isValid;
}

QString OAISearchGroceryProductsByUPC_200_response_nutrition_nutrients_inner::getUnit() const {
    return m_unit;
}
void OAISearchGroceryProductsByUPC_200_response_nutrition_nutrients_inner::setUnit(const QString &unit) {
    m_unit = unit;
    m_unit_isSet = true;
}

bool OAISearchGroceryProductsByUPC_200_response_nutrition_nutrients_inner::is_unit_Set() const{
    return m_unit_isSet;
}

bool OAISearchGroceryProductsByUPC_200_response_nutrition_nutrients_inner::is_unit_Valid() const{
    return m_unit_isValid;
}

double OAISearchGroceryProductsByUPC_200_response_nutrition_nutrients_inner::getPercentOfDailyNeeds() const {
    return m_percent_of_daily_needs;
}
void OAISearchGroceryProductsByUPC_200_response_nutrition_nutrients_inner::setPercentOfDailyNeeds(const double &percent_of_daily_needs) {
    m_percent_of_daily_needs = percent_of_daily_needs;
    m_percent_of_daily_needs_isSet = true;
}

bool OAISearchGroceryProductsByUPC_200_response_nutrition_nutrients_inner::is_percent_of_daily_needs_Set() const{
    return m_percent_of_daily_needs_isSet;
}

bool OAISearchGroceryProductsByUPC_200_response_nutrition_nutrients_inner::is_percent_of_daily_needs_Valid() const{
    return m_percent_of_daily_needs_isValid;
}

bool OAISearchGroceryProductsByUPC_200_response_nutrition_nutrients_inner::isSet() const {
    bool isObjectUpdated = false;
    do {
        if (m_name_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_amount_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_unit_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_percent_of_daily_needs_isSet) {
            isObjectUpdated = true;
            break;
        }
    } while (false);
    return isObjectUpdated;
}

bool OAISearchGroceryProductsByUPC_200_response_nutrition_nutrients_inner::isValid() const {
    // only required properties are required for the object to be considered valid
    return m_name_isValid && m_amount_isValid && m_unit_isValid && m_percent_of_daily_needs_isValid && true;
}

} // namespace OpenAPI
