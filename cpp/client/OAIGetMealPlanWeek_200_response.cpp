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

#include "OAIGetMealPlanWeek_200_response.h"

#include <QDebug>
#include <QJsonArray>
#include <QJsonDocument>
#include <QObject>

#include "OAIHelpers.h"

namespace OpenAPI {

OAIGetMealPlanWeek_200_response::OAIGetMealPlanWeek_200_response(QString json) {
    this->initializeModel();
    this->fromJson(json);
}

OAIGetMealPlanWeek_200_response::OAIGetMealPlanWeek_200_response() {
    this->initializeModel();
}

OAIGetMealPlanWeek_200_response::~OAIGetMealPlanWeek_200_response() {}

void OAIGetMealPlanWeek_200_response::initializeModel() {

    m_days_isSet = false;
    m_days_isValid = false;
}

void OAIGetMealPlanWeek_200_response::fromJson(QString jsonString) {
    QByteArray array(jsonString.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
}

void OAIGetMealPlanWeek_200_response::fromJsonObject(QJsonObject json) {

    m_days_isValid = ::OpenAPI::fromJsonValue(m_days, json[QString("days")]);
    m_days_isSet = !json[QString("days")].isNull() && m_days_isValid;
}

QString OAIGetMealPlanWeek_200_response::asJson() const {
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject OAIGetMealPlanWeek_200_response::asJsonObject() const {
    QJsonObject obj;
    if (m_days.size() > 0) {
        obj.insert(QString("days"), ::OpenAPI::toJsonValue(m_days));
    }
    return obj;
}

QSet<OAIGetMealPlanWeek_200_response_days_inner> OAIGetMealPlanWeek_200_response::getDays() const {
    return m_days;
}
void OAIGetMealPlanWeek_200_response::setDays(const QSet<OAIGetMealPlanWeek_200_response_days_inner> &days) {
    m_days = days;
    m_days_isSet = true;
}

bool OAIGetMealPlanWeek_200_response::is_days_Set() const{
    return m_days_isSet;
}

bool OAIGetMealPlanWeek_200_response::is_days_Valid() const{
    return m_days_isValid;
}

bool OAIGetMealPlanWeek_200_response::isSet() const {
    bool isObjectUpdated = false;
    do {
        if (m_days.size() > 0) {
            isObjectUpdated = true;
            break;
        }
    } while (false);
    return isObjectUpdated;
}

bool OAIGetMealPlanWeek_200_response::isValid() const {
    // only required properties are required for the object to be considered valid
    return m_days_isValid && true;
}

} // namespace OpenAPI
