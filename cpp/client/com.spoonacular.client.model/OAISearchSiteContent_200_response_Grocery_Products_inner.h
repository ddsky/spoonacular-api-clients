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

/*
 * OAISearchSiteContent_200_response_Grocery_Products_inner.h
 *
 * 
 */

#ifndef OAISearchSiteContent_200_response_Grocery_Products_inner_H
#define OAISearchSiteContent_200_response_Grocery_Products_inner_H

#include <QJsonObject>

#include "com.spoonacular.client.model\OAISearchSiteContent_200_response_Grocery_Products_inner_dataPoints_inner.h"
#include <QList>
#include <QSet>
#include <QString>

#include "OAIEnum.h"
#include "OAIObject.h"

namespace OpenAPI {
class OAISearchSiteContent_200_response_Grocery_Products_inner_dataPoints_inner;

class OAISearchSiteContent_200_response_Grocery_Products_inner : public OAIObject {
public:
    OAISearchSiteContent_200_response_Grocery_Products_inner();
    OAISearchSiteContent_200_response_Grocery_Products_inner(QString json);
    ~OAISearchSiteContent_200_response_Grocery_Products_inner() override;

    QString asJson() const override;
    QJsonObject asJsonObject() const override;
    void fromJsonObject(QJsonObject json) override;
    void fromJson(QString jsonString) override;

    QSet<OAISearchSiteContent_200_response_Grocery_Products_inner_dataPoints_inner> getDataPoints() const;
    void setDataPoints(const QSet<OAISearchSiteContent_200_response_Grocery_Products_inner_dataPoints_inner> &data_points);
    bool is_data_points_Set() const;
    bool is_data_points_Valid() const;

    QString getImage() const;
    void setImage(const QString &image);
    bool is_image_Set() const;
    bool is_image_Valid() const;

    QString getLink() const;
    void setLink(const QString &link);
    bool is_link_Set() const;
    bool is_link_Valid() const;

    QString getName() const;
    void setName(const QString &name);
    bool is_name_Set() const;
    bool is_name_Valid() const;

    virtual bool isSet() const override;
    virtual bool isValid() const override;

private:
    void initializeModel();

    QSet<OAISearchSiteContent_200_response_Grocery_Products_inner_dataPoints_inner> data_points;
    bool m_data_points_isSet;
    bool m_data_points_isValid;

    QString image;
    bool m_image_isSet;
    bool m_image_isValid;

    QString link;
    bool m_link_isSet;
    bool m_link_isValid;

    QString name;
    bool m_name_isSet;
    bool m_name_isValid;
};

} // namespace OpenAPI

Q_DECLARE_METATYPE(OpenAPI::OAISearchSiteContent_200_response_Grocery_Products_inner)

#endif // OAISearchSiteContent_200_response_Grocery_Products_inner_H
