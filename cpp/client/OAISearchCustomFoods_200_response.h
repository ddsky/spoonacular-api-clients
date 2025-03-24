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
 * OAISearchCustomFoods_200_response.h
 *
 * 
 */

#ifndef OAISearchCustomFoods_200_response_H
#define OAISearchCustomFoods_200_response_H

#include <QJsonObject>

#include "OAISearchCustomFoods_200_response_customFoods_inner.h"
#include <QSet>
#include <QString>

#include "OAIEnum.h"
#include "OAIObject.h"

namespace OpenAPI {
class OAISearchCustomFoods_200_response_customFoods_inner;

class OAISearchCustomFoods_200_response : public OAIObject {
public:
    OAISearchCustomFoods_200_response();
    OAISearchCustomFoods_200_response(QString json);
    ~OAISearchCustomFoods_200_response() override;

    QString asJson() const override;
    QJsonObject asJsonObject() const override;
    void fromJsonObject(QJsonObject json) override;
    void fromJson(QString jsonString) override;

    QSet<OAISearchCustomFoods_200_response_customFoods_inner> getCustomFoods() const;
    void setCustomFoods(const QSet<OAISearchCustomFoods_200_response_customFoods_inner> &custom_foods);
    bool is_custom_foods_Set() const;
    bool is_custom_foods_Valid() const;

    QString getType() const;
    void setType(const QString &type);
    bool is_type_Set() const;
    bool is_type_Valid() const;

    qint32 getOffset() const;
    void setOffset(const qint32 &offset);
    bool is_offset_Set() const;
    bool is_offset_Valid() const;

    qint32 getNumber() const;
    void setNumber(const qint32 &number);
    bool is_number_Set() const;
    bool is_number_Valid() const;

    virtual bool isSet() const override;
    virtual bool isValid() const override;

private:
    void initializeModel();

    QSet<OAISearchCustomFoods_200_response_customFoods_inner> m_custom_foods;
    bool m_custom_foods_isSet;
    bool m_custom_foods_isValid;

    QString m_type;
    bool m_type_isSet;
    bool m_type_isValid;

    qint32 m_offset;
    bool m_offset_isSet;
    bool m_offset_isValid;

    qint32 m_number;
    bool m_number_isSet;
    bool m_number_isValid;
};

} // namespace OpenAPI

Q_DECLARE_METATYPE(OpenAPI::OAISearchCustomFoods_200_response)

#endif // OAISearchCustomFoods_200_response_H
