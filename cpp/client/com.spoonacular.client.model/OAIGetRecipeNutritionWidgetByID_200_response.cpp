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

#include "OAIGetRecipeNutritionWidgetByID_200_response.h"

#include <QDebug>
#include <QJsonArray>
#include <QJsonDocument>
#include <QObject>

#include "OAIHelpers.h"

namespace OpenAPI {

OAIGetRecipeNutritionWidgetByID_200_response::OAIGetRecipeNutritionWidgetByID_200_response(QString json) {
    this->initializeModel();
    this->fromJson(json);
}

OAIGetRecipeNutritionWidgetByID_200_response::OAIGetRecipeNutritionWidgetByID_200_response() {
    this->initializeModel();
}

OAIGetRecipeNutritionWidgetByID_200_response::~OAIGetRecipeNutritionWidgetByID_200_response() {}

void OAIGetRecipeNutritionWidgetByID_200_response::initializeModel() {

    m_calories_isSet = false;
    m_calories_isValid = false;

    m_carbs_isSet = false;
    m_carbs_isValid = false;

    m_fat_isSet = false;
    m_fat_isValid = false;

    m_protein_isSet = false;
    m_protein_isValid = false;

    m_bad_isSet = false;
    m_bad_isValid = false;

    m_good_isSet = false;
    m_good_isValid = false;
}

void OAIGetRecipeNutritionWidgetByID_200_response::fromJson(QString jsonString) {
    QByteArray array(jsonString.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
}

void OAIGetRecipeNutritionWidgetByID_200_response::fromJsonObject(QJsonObject json) {

    m_calories_isValid = ::OpenAPI::fromJsonValue(calories, json[QString("calories")]);
    m_calories_isSet = !json[QString("calories")].isNull() && m_calories_isValid;

    m_carbs_isValid = ::OpenAPI::fromJsonValue(carbs, json[QString("carbs")]);
    m_carbs_isSet = !json[QString("carbs")].isNull() && m_carbs_isValid;

    m_fat_isValid = ::OpenAPI::fromJsonValue(fat, json[QString("fat")]);
    m_fat_isSet = !json[QString("fat")].isNull() && m_fat_isValid;

    m_protein_isValid = ::OpenAPI::fromJsonValue(protein, json[QString("protein")]);
    m_protein_isSet = !json[QString("protein")].isNull() && m_protein_isValid;

    m_bad_isValid = ::OpenAPI::fromJsonValue(bad, json[QString("bad")]);
    m_bad_isSet = !json[QString("bad")].isNull() && m_bad_isValid;

    m_good_isValid = ::OpenAPI::fromJsonValue(good, json[QString("good")]);
    m_good_isSet = !json[QString("good")].isNull() && m_good_isValid;
}

QString OAIGetRecipeNutritionWidgetByID_200_response::asJson() const {
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject OAIGetRecipeNutritionWidgetByID_200_response::asJsonObject() const {
    QJsonObject obj;
    if (m_calories_isSet) {
        obj.insert(QString("calories"), ::OpenAPI::toJsonValue(calories));
    }
    if (m_carbs_isSet) {
        obj.insert(QString("carbs"), ::OpenAPI::toJsonValue(carbs));
    }
    if (m_fat_isSet) {
        obj.insert(QString("fat"), ::OpenAPI::toJsonValue(fat));
    }
    if (m_protein_isSet) {
        obj.insert(QString("protein"), ::OpenAPI::toJsonValue(protein));
    }
    if (bad.size() > 0) {
        obj.insert(QString("bad"), ::OpenAPI::toJsonValue(bad));
    }
    if (good.size() > 0) {
        obj.insert(QString("good"), ::OpenAPI::toJsonValue(good));
    }
    return obj;
}

QString OAIGetRecipeNutritionWidgetByID_200_response::getCalories() const {
    return calories;
}
void OAIGetRecipeNutritionWidgetByID_200_response::setCalories(const QString &calories) {
    this->calories = calories;
    this->m_calories_isSet = true;
}

bool OAIGetRecipeNutritionWidgetByID_200_response::is_calories_Set() const{
    return m_calories_isSet;
}

bool OAIGetRecipeNutritionWidgetByID_200_response::is_calories_Valid() const{
    return m_calories_isValid;
}

QString OAIGetRecipeNutritionWidgetByID_200_response::getCarbs() const {
    return carbs;
}
void OAIGetRecipeNutritionWidgetByID_200_response::setCarbs(const QString &carbs) {
    this->carbs = carbs;
    this->m_carbs_isSet = true;
}

bool OAIGetRecipeNutritionWidgetByID_200_response::is_carbs_Set() const{
    return m_carbs_isSet;
}

bool OAIGetRecipeNutritionWidgetByID_200_response::is_carbs_Valid() const{
    return m_carbs_isValid;
}

QString OAIGetRecipeNutritionWidgetByID_200_response::getFat() const {
    return fat;
}
void OAIGetRecipeNutritionWidgetByID_200_response::setFat(const QString &fat) {
    this->fat = fat;
    this->m_fat_isSet = true;
}

bool OAIGetRecipeNutritionWidgetByID_200_response::is_fat_Set() const{
    return m_fat_isSet;
}

bool OAIGetRecipeNutritionWidgetByID_200_response::is_fat_Valid() const{
    return m_fat_isValid;
}

QString OAIGetRecipeNutritionWidgetByID_200_response::getProtein() const {
    return protein;
}
void OAIGetRecipeNutritionWidgetByID_200_response::setProtein(const QString &protein) {
    this->protein = protein;
    this->m_protein_isSet = true;
}

bool OAIGetRecipeNutritionWidgetByID_200_response::is_protein_Set() const{
    return m_protein_isSet;
}

bool OAIGetRecipeNutritionWidgetByID_200_response::is_protein_Valid() const{
    return m_protein_isValid;
}

QSet<OAIGetRecipeNutritionWidgetByID_200_response_bad_inner> OAIGetRecipeNutritionWidgetByID_200_response::getBad() const {
    return bad;
}
void OAIGetRecipeNutritionWidgetByID_200_response::setBad(const QSet<OAIGetRecipeNutritionWidgetByID_200_response_bad_inner> &bad) {
    this->bad = bad;
    this->m_bad_isSet = true;
}

bool OAIGetRecipeNutritionWidgetByID_200_response::is_bad_Set() const{
    return m_bad_isSet;
}

bool OAIGetRecipeNutritionWidgetByID_200_response::is_bad_Valid() const{
    return m_bad_isValid;
}

QSet<OAIGetRecipeNutritionWidgetByID_200_response_good_inner> OAIGetRecipeNutritionWidgetByID_200_response::getGood() const {
    return good;
}
void OAIGetRecipeNutritionWidgetByID_200_response::setGood(const QSet<OAIGetRecipeNutritionWidgetByID_200_response_good_inner> &good) {
    this->good = good;
    this->m_good_isSet = true;
}

bool OAIGetRecipeNutritionWidgetByID_200_response::is_good_Set() const{
    return m_good_isSet;
}

bool OAIGetRecipeNutritionWidgetByID_200_response::is_good_Valid() const{
    return m_good_isValid;
}

bool OAIGetRecipeNutritionWidgetByID_200_response::isSet() const {
    bool isObjectUpdated = false;
    do {
        if (m_calories_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_carbs_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_fat_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_protein_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (bad.size() > 0) {
            isObjectUpdated = true;
            break;
        }

        if (good.size() > 0) {
            isObjectUpdated = true;
            break;
        }
    } while (false);
    return isObjectUpdated;
}

bool OAIGetRecipeNutritionWidgetByID_200_response::isValid() const {
    // only required properties are required for the object to be considered valid
    return m_calories_isValid && m_carbs_isValid && m_fat_isValid && m_protein_isValid && m_bad_isValid && m_good_isValid && true;
}

} // namespace OpenAPI
