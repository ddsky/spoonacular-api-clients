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

#include "OAIGetMealPlanTemplates_200_response.h"

#include <QDebug>
#include <QJsonArray>
#include <QJsonDocument>
#include <QObject>

#include "OAIHelpers.h"

namespace OpenAPI {

OAIGetMealPlanTemplates_200_response::OAIGetMealPlanTemplates_200_response(QString json) {
    this->initializeModel();
    this->fromJson(json);
}

OAIGetMealPlanTemplates_200_response::OAIGetMealPlanTemplates_200_response() {
    this->initializeModel();
}

OAIGetMealPlanTemplates_200_response::~OAIGetMealPlanTemplates_200_response() {}

void OAIGetMealPlanTemplates_200_response::initializeModel() {

    m_templates_isSet = false;
    m_templates_isValid = false;
}

void OAIGetMealPlanTemplates_200_response::fromJson(QString jsonString) {
    QByteArray array(jsonString.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
}

void OAIGetMealPlanTemplates_200_response::fromJsonObject(QJsonObject json) {

    m_templates_isValid = ::OpenAPI::fromJsonValue(m_templates, json[QString("templates")]);
    m_templates_isSet = !json[QString("templates")].isNull() && m_templates_isValid;
}

QString OAIGetMealPlanTemplates_200_response::asJson() const {
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject OAIGetMealPlanTemplates_200_response::asJsonObject() const {
    QJsonObject obj;
    if (m_templates.size() > 0) {
        obj.insert(QString("templates"), ::OpenAPI::toJsonValue(m_templates));
    }
    return obj;
}

QSet<OAIGetMealPlanTemplates_200_response_templates_inner> OAIGetMealPlanTemplates_200_response::getTemplates() const {
    return m_templates;
}
void OAIGetMealPlanTemplates_200_response::setTemplates(const QSet<OAIGetMealPlanTemplates_200_response_templates_inner> &templates) {
    m_templates = templates;
    m_templates_isSet = true;
}

bool OAIGetMealPlanTemplates_200_response::is_templates_Set() const{
    return m_templates_isSet;
}

bool OAIGetMealPlanTemplates_200_response::is_templates_Valid() const{
    return m_templates_isValid;
}

bool OAIGetMealPlanTemplates_200_response::isSet() const {
    bool isObjectUpdated = false;
    do {
        if (m_templates.size() > 0) {
            isObjectUpdated = true;
            break;
        }
    } while (false);
    return isObjectUpdated;
}

bool OAIGetMealPlanTemplates_200_response::isValid() const {
    // only required properties are required for the object to be considered valid
    return m_templates_isValid && true;
}

} // namespace OpenAPI
