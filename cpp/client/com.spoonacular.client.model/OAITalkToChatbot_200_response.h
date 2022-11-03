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

/*
 * OAITalkToChatbot_200_response.h
 *
 * 
 */

#ifndef OAITalkToChatbot_200_response_H
#define OAITalkToChatbot_200_response_H

#include <QJsonObject>

#include <QJsonValue>
#include <QList>
#include <QString>

#include "OAIEnum.h"
#include "OAIObject.h"

namespace OpenAPI {

class OAITalkToChatbot_200_response : public OAIObject {
public:
    OAITalkToChatbot_200_response();
    OAITalkToChatbot_200_response(QString json);
    ~OAITalkToChatbot_200_response() override;

    QString asJson() const override;
    QJsonObject asJsonObject() const override;
    void fromJsonObject(QJsonObject json) override;
    void fromJson(QString jsonString) override;

    QString getAnswerText() const;
    void setAnswerText(const QString &answer_text);
    bool is_answer_text_Set() const;
    bool is_answer_text_Valid() const;

    QList<QJsonValue> getMedia() const;
    void setMedia(const QList<QJsonValue> &media);
    bool is_media_Set() const;
    bool is_media_Valid() const;

    virtual bool isSet() const override;
    virtual bool isValid() const override;

private:
    void initializeModel();

    QString answer_text;
    bool m_answer_text_isSet;
    bool m_answer_text_isValid;

    QList<QJsonValue> media;
    bool m_media_isSet;
    bool m_media_isValid;
};

} // namespace OpenAPI

Q_DECLARE_METATYPE(OpenAPI::OAITalkToChatbot_200_response)

#endif // OAITalkToChatbot_200_response_H
