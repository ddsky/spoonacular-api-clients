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

#include "OAIGetRandomRecipes_200_response.h"

#include <QDebug>
#include <QJsonArray>
#include <QJsonDocument>
#include <QObject>

#include "OAIHelpers.h"

namespace OpenAPI {

OAIGetRandomRecipes_200_response::OAIGetRandomRecipes_200_response(QString json) {
    this->initializeModel();
    this->fromJson(json);
}

OAIGetRandomRecipes_200_response::OAIGetRandomRecipes_200_response() {
    this->initializeModel();
}

OAIGetRandomRecipes_200_response::~OAIGetRandomRecipes_200_response() {}

void OAIGetRandomRecipes_200_response::initializeModel() {

    m_recipes_isSet = false;
    m_recipes_isValid = false;
}

void OAIGetRandomRecipes_200_response::fromJson(QString jsonString) {
    QByteArray array(jsonString.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
}

void OAIGetRandomRecipes_200_response::fromJsonObject(QJsonObject json) {

    m_recipes_isValid = ::OpenAPI::fromJsonValue(m_recipes, json[QString("recipes")]);
    m_recipes_isSet = !json[QString("recipes")].isNull() && m_recipes_isValid;
}

QString OAIGetRandomRecipes_200_response::asJson() const {
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject OAIGetRandomRecipes_200_response::asJsonObject() const {
    QJsonObject obj;
    if (m_recipes.size() > 0) {
        obj.insert(QString("recipes"), ::OpenAPI::toJsonValue(m_recipes));
    }
    return obj;
}

QSet<OAIGetRandomRecipes_200_response_recipes_inner> OAIGetRandomRecipes_200_response::getRecipes() const {
    return m_recipes;
}
void OAIGetRandomRecipes_200_response::setRecipes(const QSet<OAIGetRandomRecipes_200_response_recipes_inner> &recipes) {
    m_recipes = recipes;
    m_recipes_isSet = true;
}

bool OAIGetRandomRecipes_200_response::is_recipes_Set() const{
    return m_recipes_isSet;
}

bool OAIGetRandomRecipes_200_response::is_recipes_Valid() const{
    return m_recipes_isValid;
}

bool OAIGetRandomRecipes_200_response::isSet() const {
    bool isObjectUpdated = false;
    do {
        if (m_recipes.size() > 0) {
            isObjectUpdated = true;
            break;
        }
    } while (false);
    return isObjectUpdated;
}

bool OAIGetRandomRecipes_200_response::isValid() const {
    // only required properties are required for the object to be considered valid
    return m_recipes_isValid && true;
}

} // namespace OpenAPI