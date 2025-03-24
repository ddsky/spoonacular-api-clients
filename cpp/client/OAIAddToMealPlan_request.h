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
 * OAIAddToMealPlan_request.h
 *
 * 
 */

#ifndef OAIAddToMealPlan_request_H
#define OAIAddToMealPlan_request_H

#include <QJsonObject>

#include "OAIAddToMealPlan_request_value.h"
#include <QString>

#include "OAIEnum.h"
#include "OAIObject.h"

namespace OpenAPI {
class OAIAddToMealPlan_request_value;

class OAIAddToMealPlan_request : public OAIObject {
public:
    OAIAddToMealPlan_request();
    OAIAddToMealPlan_request(QString json);
    ~OAIAddToMealPlan_request() override;

    QString asJson() const override;
    QJsonObject asJsonObject() const override;
    void fromJsonObject(QJsonObject json) override;
    void fromJson(QString jsonString) override;

    double getDate() const;
    void setDate(const double &date);
    bool is_date_Set() const;
    bool is_date_Valid() const;

    qint32 getSlot() const;
    void setSlot(const qint32 &slot);
    bool is_slot_Set() const;
    bool is_slot_Valid() const;

    qint32 getPosition() const;
    void setPosition(const qint32 &position);
    bool is_position_Set() const;
    bool is_position_Valid() const;

    QString getType() const;
    void setType(const QString &type);
    bool is_type_Set() const;
    bool is_type_Valid() const;

    OAIAddToMealPlan_request_value getValue() const;
    void setValue(const OAIAddToMealPlan_request_value &value);
    bool is_value_Set() const;
    bool is_value_Valid() const;

    virtual bool isSet() const override;
    virtual bool isValid() const override;

private:
    void initializeModel();

    double m_date;
    bool m_date_isSet;
    bool m_date_isValid;

    qint32 m_slot;
    bool m_slot_isSet;
    bool m_slot_isValid;

    qint32 m_position;
    bool m_position_isSet;
    bool m_position_isValid;

    QString m_type;
    bool m_type_isSet;
    bool m_type_isValid;

    OAIAddToMealPlan_request_value m_value;
    bool m_value_isSet;
    bool m_value_isValid;
};

} // namespace OpenAPI

Q_DECLARE_METATYPE(OpenAPI::OAIAddToMealPlan_request)

#endif // OAIAddToMealPlan_request_H
