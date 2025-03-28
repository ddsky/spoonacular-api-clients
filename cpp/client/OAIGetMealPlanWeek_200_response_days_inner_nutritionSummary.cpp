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

#include "OAIGetMealPlanWeek_200_response_days_inner_nutritionSummary.h"

#include <QDebug>
#include <QJsonArray>
#include <QJsonDocument>
#include <QObject>

#include "OAIHelpers.h"

namespace OpenAPI {

OAIGetMealPlanWeek_200_response_days_inner_nutritionSummary::OAIGetMealPlanWeek_200_response_days_inner_nutritionSummary(QString json) {
    this->initializeModel();
    this->fromJson(json);
}

OAIGetMealPlanWeek_200_response_days_inner_nutritionSummary::OAIGetMealPlanWeek_200_response_days_inner_nutritionSummary() {
    this->initializeModel();
}

OAIGetMealPlanWeek_200_response_days_inner_nutritionSummary::~OAIGetMealPlanWeek_200_response_days_inner_nutritionSummary() {}

void OAIGetMealPlanWeek_200_response_days_inner_nutritionSummary::initializeModel() {

    m_nutrients_isSet = false;
    m_nutrients_isValid = false;
}

void OAIGetMealPlanWeek_200_response_days_inner_nutritionSummary::fromJson(QString jsonString) {
    QByteArray array(jsonString.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
}

void OAIGetMealPlanWeek_200_response_days_inner_nutritionSummary::fromJsonObject(QJsonObject json) {

    m_nutrients_isValid = ::OpenAPI::fromJsonValue(m_nutrients, json[QString("nutrients")]);
    m_nutrients_isSet = !json[QString("nutrients")].isNull() && m_nutrients_isValid;
}

QString OAIGetMealPlanWeek_200_response_days_inner_nutritionSummary::asJson() const {
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject OAIGetMealPlanWeek_200_response_days_inner_nutritionSummary::asJsonObject() const {
    QJsonObject obj;
    if (m_nutrients.size() > 0) {
        obj.insert(QString("nutrients"), ::OpenAPI::toJsonValue(m_nutrients));
    }
    return obj;
}

QSet<OAIGetMealPlanWeek_200_response_days_inner_nutritionSummary_nutrients_inner> OAIGetMealPlanWeek_200_response_days_inner_nutritionSummary::getNutrients() const {
    return m_nutrients;
}
void OAIGetMealPlanWeek_200_response_days_inner_nutritionSummary::setNutrients(const QSet<OAIGetMealPlanWeek_200_response_days_inner_nutritionSummary_nutrients_inner> &nutrients) {
    m_nutrients = nutrients;
    m_nutrients_isSet = true;
}

bool OAIGetMealPlanWeek_200_response_days_inner_nutritionSummary::is_nutrients_Set() const{
    return m_nutrients_isSet;
}

bool OAIGetMealPlanWeek_200_response_days_inner_nutritionSummary::is_nutrients_Valid() const{
    return m_nutrients_isValid;
}

bool OAIGetMealPlanWeek_200_response_days_inner_nutritionSummary::isSet() const {
    bool isObjectUpdated = false;
    do {
        if (m_nutrients.size() > 0) {
            isObjectUpdated = true;
            break;
        }
    } while (false);
    return isObjectUpdated;
}

bool OAIGetMealPlanWeek_200_response_days_inner_nutritionSummary::isValid() const {
    // only required properties are required for the object to be considered valid
    return m_nutrients_isValid && true;
}

} // namespace OpenAPI
