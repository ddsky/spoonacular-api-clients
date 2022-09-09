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

#include "OAIConnectUser_200_response.h"

#include <QDebug>
#include <QJsonArray>
#include <QJsonDocument>
#include <QObject>

#include "OAIHelpers.h"

namespace OpenAPI {

OAIConnectUser_200_response::OAIConnectUser_200_response(QString json) {
    this->initializeModel();
    this->fromJson(json);
}

OAIConnectUser_200_response::OAIConnectUser_200_response() {
    this->initializeModel();
}

OAIConnectUser_200_response::~OAIConnectUser_200_response() {}

void OAIConnectUser_200_response::initializeModel() {

    m_username_isSet = false;
    m_username_isValid = false;

    m_hash_isSet = false;
    m_hash_isValid = false;
}

void OAIConnectUser_200_response::fromJson(QString jsonString) {
    QByteArray array(jsonString.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
}

void OAIConnectUser_200_response::fromJsonObject(QJsonObject json) {

    m_username_isValid = ::OpenAPI::fromJsonValue(username, json[QString("username")]);
    m_username_isSet = !json[QString("username")].isNull() && m_username_isValid;

    m_hash_isValid = ::OpenAPI::fromJsonValue(hash, json[QString("hash")]);
    m_hash_isSet = !json[QString("hash")].isNull() && m_hash_isValid;
}

QString OAIConnectUser_200_response::asJson() const {
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject OAIConnectUser_200_response::asJsonObject() const {
    QJsonObject obj;
    if (m_username_isSet) {
        obj.insert(QString("username"), ::OpenAPI::toJsonValue(username));
    }
    if (m_hash_isSet) {
        obj.insert(QString("hash"), ::OpenAPI::toJsonValue(hash));
    }
    return obj;
}

QString OAIConnectUser_200_response::getUsername() const {
    return username;
}
void OAIConnectUser_200_response::setUsername(const QString &username) {
    this->username = username;
    this->m_username_isSet = true;
}

bool OAIConnectUser_200_response::is_username_Set() const{
    return m_username_isSet;
}

bool OAIConnectUser_200_response::is_username_Valid() const{
    return m_username_isValid;
}

QString OAIConnectUser_200_response::getHash() const {
    return hash;
}
void OAIConnectUser_200_response::setHash(const QString &hash) {
    this->hash = hash;
    this->m_hash_isSet = true;
}

bool OAIConnectUser_200_response::is_hash_Set() const{
    return m_hash_isSet;
}

bool OAIConnectUser_200_response::is_hash_Valid() const{
    return m_hash_isValid;
}

bool OAIConnectUser_200_response::isSet() const {
    bool isObjectUpdated = false;
    do {
        if (m_username_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_hash_isSet) {
            isObjectUpdated = true;
            break;
        }
    } while (false);
    return isObjectUpdated;
}

bool OAIConnectUser_200_response::isValid() const {
    // only required properties are required for the object to be considered valid
    return m_username_isValid && m_hash_isValid && true;
}

} // namespace OpenAPI
