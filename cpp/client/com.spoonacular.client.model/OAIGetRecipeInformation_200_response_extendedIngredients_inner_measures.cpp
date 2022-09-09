/**
 * spoonacular API
 * The spoonacular Nutrition, Recipe, and Food API allows you to access over 380,000 recipes, thousands of ingredients, 800,000 food products, and 100,000 menu items. Our food ontology and semantic recipe search engine makes it possible to search for recipes using natural language queries, such as \"gluten free brownies without sugar\" or \"low fat vegan cupcakes.\" You can automatically calculate the nutritional information for any recipe, analyze recipe costs, visualize ingredient lists, find recipes for what's in your fridge, find recipes based on special diets, nutritional requirements, or favorite ingredients, classify recipes into types and cuisines, convert ingredient amounts, or even compute an entire meal plan. With our powerful API, you can create many kinds of food and especially nutrition apps.  Special diets/dietary requirements currently available include: vegan, vegetarian, pescetarian, gluten free, grain free, dairy free, high protein, whole 30, low sodium, low carb, Paleo, ketogenic, FODMAP, and Primal.
 *
 * The version of the OpenAPI document: 1.1
 * Contact: mail@spoonacular.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

#include "OAIGetRecipeInformation_200_response_extendedIngredients_inner_measures.h"

#include <QDebug>
#include <QJsonArray>
#include <QJsonDocument>
#include <QObject>

#include "OAIHelpers.h"

namespace OpenAPI {

OAIGetRecipeInformation_200_response_extendedIngredients_inner_measures::OAIGetRecipeInformation_200_response_extendedIngredients_inner_measures(QString json) {
    this->initializeModel();
    this->fromJson(json);
}

OAIGetRecipeInformation_200_response_extendedIngredients_inner_measures::OAIGetRecipeInformation_200_response_extendedIngredients_inner_measures() {
    this->initializeModel();
}

OAIGetRecipeInformation_200_response_extendedIngredients_inner_measures::~OAIGetRecipeInformation_200_response_extendedIngredients_inner_measures() {}

void OAIGetRecipeInformation_200_response_extendedIngredients_inner_measures::initializeModel() {

    m_metric_isSet = false;
    m_metric_isValid = false;

    m_us_isSet = false;
    m_us_isValid = false;
}

void OAIGetRecipeInformation_200_response_extendedIngredients_inner_measures::fromJson(QString jsonString) {
    QByteArray array(jsonString.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
}

void OAIGetRecipeInformation_200_response_extendedIngredients_inner_measures::fromJsonObject(QJsonObject json) {

    m_metric_isValid = ::OpenAPI::fromJsonValue(metric, json[QString("metric")]);
    m_metric_isSet = !json[QString("metric")].isNull() && m_metric_isValid;

    m_us_isValid = ::OpenAPI::fromJsonValue(us, json[QString("us")]);
    m_us_isSet = !json[QString("us")].isNull() && m_us_isValid;
}

QString OAIGetRecipeInformation_200_response_extendedIngredients_inner_measures::asJson() const {
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject OAIGetRecipeInformation_200_response_extendedIngredients_inner_measures::asJsonObject() const {
    QJsonObject obj;
    if (metric.isSet()) {
        obj.insert(QString("metric"), ::OpenAPI::toJsonValue(metric));
    }
    if (us.isSet()) {
        obj.insert(QString("us"), ::OpenAPI::toJsonValue(us));
    }
    return obj;
}

OAIGetRecipeInformation_200_response_extendedIngredients_inner_measures_metric OAIGetRecipeInformation_200_response_extendedIngredients_inner_measures::getMetric() const {
    return metric;
}
void OAIGetRecipeInformation_200_response_extendedIngredients_inner_measures::setMetric(const OAIGetRecipeInformation_200_response_extendedIngredients_inner_measures_metric &metric) {
    this->metric = metric;
    this->m_metric_isSet = true;
}

bool OAIGetRecipeInformation_200_response_extendedIngredients_inner_measures::is_metric_Set() const{
    return m_metric_isSet;
}

bool OAIGetRecipeInformation_200_response_extendedIngredients_inner_measures::is_metric_Valid() const{
    return m_metric_isValid;
}

OAIGetRecipeInformation_200_response_extendedIngredients_inner_measures_metric OAIGetRecipeInformation_200_response_extendedIngredients_inner_measures::getUs() const {
    return us;
}
void OAIGetRecipeInformation_200_response_extendedIngredients_inner_measures::setUs(const OAIGetRecipeInformation_200_response_extendedIngredients_inner_measures_metric &us) {
    this->us = us;
    this->m_us_isSet = true;
}

bool OAIGetRecipeInformation_200_response_extendedIngredients_inner_measures::is_us_Set() const{
    return m_us_isSet;
}

bool OAIGetRecipeInformation_200_response_extendedIngredients_inner_measures::is_us_Valid() const{
    return m_us_isValid;
}

bool OAIGetRecipeInformation_200_response_extendedIngredients_inner_measures::isSet() const {
    bool isObjectUpdated = false;
    do {
        if (metric.isSet()) {
            isObjectUpdated = true;
            break;
        }

        if (us.isSet()) {
            isObjectUpdated = true;
            break;
        }
    } while (false);
    return isObjectUpdated;
}

bool OAIGetRecipeInformation_200_response_extendedIngredients_inner_measures::isValid() const {
    // only required properties are required for the object to be considered valid
    return m_metric_isValid && m_us_isValid && true;
}

} // namespace OpenAPI
