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
 * OAIGetMealPlanTemplate_200_response.h
 *
 * 
 */

#ifndef OAIGetMealPlanTemplate_200_response_H
#define OAIGetMealPlanTemplate_200_response_H

#include <QJsonObject>

#include "OAIGetMealPlanTemplate_200_response_days_inner.h"
#include <QSet>
#include <QString>

#include "OAIEnum.h"
#include "OAIObject.h"

namespace OpenAPI {
class OAIGetMealPlanTemplate_200_response_days_inner;

class OAIGetMealPlanTemplate_200_response : public OAIObject {
public:
    OAIGetMealPlanTemplate_200_response();
    OAIGetMealPlanTemplate_200_response(QString json);
    ~OAIGetMealPlanTemplate_200_response() override;

    QString asJson() const override;
    QJsonObject asJsonObject() const override;
    void fromJsonObject(QJsonObject json) override;
    void fromJson(QString jsonString) override;

    qint32 getId() const;
    void setId(const qint32 &id);
    bool is_id_Set() const;
    bool is_id_Valid() const;

    QString getName() const;
    void setName(const QString &name);
    bool is_name_Set() const;
    bool is_name_Valid() const;

    QSet<OAIGetMealPlanTemplate_200_response_days_inner> getDays() const;
    void setDays(const QSet<OAIGetMealPlanTemplate_200_response_days_inner> &days);
    bool is_days_Set() const;
    bool is_days_Valid() const;

    virtual bool isSet() const override;
    virtual bool isValid() const override;

private:
    void initializeModel();

    qint32 m_id;
    bool m_id_isSet;
    bool m_id_isValid;

    QString m_name;
    bool m_name_isSet;
    bool m_name_isValid;

    QSet<OAIGetMealPlanTemplate_200_response_days_inner> m_days;
    bool m_days_isSet;
    bool m_days_isValid;
};

} // namespace OpenAPI

Q_DECLARE_METATYPE(OpenAPI::OAIGetMealPlanTemplate_200_response)

#endif // OAIGetMealPlanTemplate_200_response_H
