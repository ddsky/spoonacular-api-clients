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

/*
 * OAIConvertAmounts_200_response.h
 *
 * 
 */

#ifndef OAIConvertAmounts_200_response_H
#define OAIConvertAmounts_200_response_H

#include <QJsonObject>

#include <QString>

#include "OAIEnum.h"
#include "OAIObject.h"

namespace OpenAPI {

class OAIConvertAmounts_200_response : public OAIObject {
public:
    OAIConvertAmounts_200_response();
    OAIConvertAmounts_200_response(QString json);
    ~OAIConvertAmounts_200_response() override;

    QString asJson() const override;
    QJsonObject asJsonObject() const override;
    void fromJsonObject(QJsonObject json) override;
    void fromJson(QString jsonString) override;

    double getSourceAmount() const;
    void setSourceAmount(const double &source_amount);
    bool is_source_amount_Set() const;
    bool is_source_amount_Valid() const;

    QString getSourceUnit() const;
    void setSourceUnit(const QString &source_unit);
    bool is_source_unit_Set() const;
    bool is_source_unit_Valid() const;

    double getTargetAmount() const;
    void setTargetAmount(const double &target_amount);
    bool is_target_amount_Set() const;
    bool is_target_amount_Valid() const;

    QString getTargetUnit() const;
    void setTargetUnit(const QString &target_unit);
    bool is_target_unit_Set() const;
    bool is_target_unit_Valid() const;

    QString getAnswer() const;
    void setAnswer(const QString &answer);
    bool is_answer_Set() const;
    bool is_answer_Valid() const;

    virtual bool isSet() const override;
    virtual bool isValid() const override;

private:
    void initializeModel();

    double m_source_amount;
    bool m_source_amount_isSet;
    bool m_source_amount_isValid;

    QString m_source_unit;
    bool m_source_unit_isSet;
    bool m_source_unit_isValid;

    double m_target_amount;
    bool m_target_amount_isSet;
    bool m_target_amount_isValid;

    QString m_target_unit;
    bool m_target_unit_isSet;
    bool m_target_unit_isValid;

    QString m_answer;
    bool m_answer_isSet;
    bool m_answer_isValid;
};

} // namespace OpenAPI

Q_DECLARE_METATYPE(OpenAPI::OAIConvertAmounts_200_response)

#endif // OAIConvertAmounts_200_response_H
