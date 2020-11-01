/**
 * spoonacular API
 * The spoonacular Nutrition, Recipe, and Food API allows you to access over 380,000 recipes, thousands of ingredients, 80,000 food products, and 100,000 menu items. Our food ontology and semantic recipe search engine makes it possible to search for recipes using natural language queries, such as \"gluten free brownies without sugar\" or \"low fat vegan cupcakes.\" You can automatically calculate the nutritional information for any recipe, analyze recipe costs, visualize ingredient lists, find recipes for what's in your fridge, find recipes based on special diets, nutritional requirements, or favorite ingredients, classify recipes into types and cuisines, convert ingredient amounts, or even compute an entire meal plan. With our powerful API, you can create many kinds of food and especially nutrition apps.  Special diets/dietary requirements currently available include: vegan, vegetarian, pescetarian, gluten free, grain free, dairy free, high protein, whole 30, low sodium, low carb, Paleo, ketogenic, FODMAP, and Primal.
 *
 * The version of the OpenAPI document: 1.0
 * Contact: david@spoonacular.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

/*
 * OAIInline_object_10.h
 *
 * 
 */

#ifndef OAIInline_object_10_H
#define OAIInline_object_10_H

#include <QJsonObject>


#include <QString>

#include "OAIObject.h"
#include "OAIEnum.h"

namespace OpenAPI {

class OAIInline_object_10: public OAIObject {
public:
    OAIInline_object_10();
    OAIInline_object_10(QString json);
    ~OAIInline_object_10() override;

    QString asJson () const override;
    QJsonObject asJsonObject() const override;
    void fromJsonObject(QJsonObject json) override;
    void fromJson(QString jsonString) override;

    
    QString getUsername() const;
    void setUsername(const QString &username);

    
    QString getDate() const;
    void setDate(const QString &date);

    
    QString getHash() const;
    void setHash(const QString &hash);

    
    
    virtual bool isSet() const override;
    virtual bool isValid() const override;

private:
    void init();
    
    QString username;
    bool m_username_isSet;
    bool m_username_isValid;
    
    QString date;
    bool m_date_isSet;
    bool m_date_isValid;
    
    QString hash;
    bool m_hash_isSet;
    bool m_hash_isValid;
    
    };

}

#endif // OAIInline_object_10_H
