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

#include "OAIImageAnalysisByURL_200_response_nutrition_calories_confidenceRange95Percent.h"

#include <QDebug>
#include <QJsonArray>
#include <QJsonDocument>
#include <QObject>

#include "OAIHelpers.h"

namespace OpenAPI {

OAIImageAnalysisByURL_200_response_nutrition_calories_confidenceRange95Percent::OAIImageAnalysisByURL_200_response_nutrition_calories_confidenceRange95Percent(QString json) {
    this->initializeModel();
    this->fromJson(json);
}

OAIImageAnalysisByURL_200_response_nutrition_calories_confidenceRange95Percent::OAIImageAnalysisByURL_200_response_nutrition_calories_confidenceRange95Percent() {
    this->initializeModel();
}

OAIImageAnalysisByURL_200_response_nutrition_calories_confidenceRange95Percent::~OAIImageAnalysisByURL_200_response_nutrition_calories_confidenceRange95Percent() {}

void OAIImageAnalysisByURL_200_response_nutrition_calories_confidenceRange95Percent::initializeModel() {

    m_min_isSet = false;
    m_min_isValid = false;

    m_max_isSet = false;
    m_max_isValid = false;
}

void OAIImageAnalysisByURL_200_response_nutrition_calories_confidenceRange95Percent::fromJson(QString jsonString) {
    QByteArray array(jsonString.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
}

void OAIImageAnalysisByURL_200_response_nutrition_calories_confidenceRange95Percent::fromJsonObject(QJsonObject json) {

    m_min_isValid = ::OpenAPI::fromJsonValue(min, json[QString("min")]);
    m_min_isSet = !json[QString("min")].isNull() && m_min_isValid;

    m_max_isValid = ::OpenAPI::fromJsonValue(max, json[QString("max")]);
    m_max_isSet = !json[QString("max")].isNull() && m_max_isValid;
}

QString OAIImageAnalysisByURL_200_response_nutrition_calories_confidenceRange95Percent::asJson() const {
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject OAIImageAnalysisByURL_200_response_nutrition_calories_confidenceRange95Percent::asJsonObject() const {
    QJsonObject obj;
    if (m_min_isSet) {
        obj.insert(QString("min"), ::OpenAPI::toJsonValue(min));
    }
    if (m_max_isSet) {
        obj.insert(QString("max"), ::OpenAPI::toJsonValue(max));
    }
    return obj;
}

double OAIImageAnalysisByURL_200_response_nutrition_calories_confidenceRange95Percent::getMin() const {
    return min;
}
void OAIImageAnalysisByURL_200_response_nutrition_calories_confidenceRange95Percent::setMin(const double &min) {
    this->min = min;
    this->m_min_isSet = true;
}

bool OAIImageAnalysisByURL_200_response_nutrition_calories_confidenceRange95Percent::is_min_Set() const{
    return m_min_isSet;
}

bool OAIImageAnalysisByURL_200_response_nutrition_calories_confidenceRange95Percent::is_min_Valid() const{
    return m_min_isValid;
}

double OAIImageAnalysisByURL_200_response_nutrition_calories_confidenceRange95Percent::getMax() const {
    return max;
}
void OAIImageAnalysisByURL_200_response_nutrition_calories_confidenceRange95Percent::setMax(const double &max) {
    this->max = max;
    this->m_max_isSet = true;
}

bool OAIImageAnalysisByURL_200_response_nutrition_calories_confidenceRange95Percent::is_max_Set() const{
    return m_max_isSet;
}

bool OAIImageAnalysisByURL_200_response_nutrition_calories_confidenceRange95Percent::is_max_Valid() const{
    return m_max_isValid;
}

bool OAIImageAnalysisByURL_200_response_nutrition_calories_confidenceRange95Percent::isSet() const {
    bool isObjectUpdated = false;
    do {
        if (m_min_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_max_isSet) {
            isObjectUpdated = true;
            break;
        }
    } while (false);
    return isObjectUpdated;
}

bool OAIImageAnalysisByURL_200_response_nutrition_calories_confidenceRange95Percent::isValid() const {
    // only required properties are required for the object to be considered valid
    return m_min_isValid && m_max_isValid && true;
}

} // namespace OpenAPI
