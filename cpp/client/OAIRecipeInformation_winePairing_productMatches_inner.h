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
 * OAIRecipeInformation_winePairing_productMatches_inner.h
 *
 * 
 */

#ifndef OAIRecipeInformation_winePairing_productMatches_inner_H
#define OAIRecipeInformation_winePairing_productMatches_inner_H

#include <QJsonObject>

#include <QString>

#include "OAIEnum.h"
#include "OAIObject.h"

namespace OpenAPI {

class OAIRecipeInformation_winePairing_productMatches_inner : public OAIObject {
public:
    OAIRecipeInformation_winePairing_productMatches_inner();
    OAIRecipeInformation_winePairing_productMatches_inner(QString json);
    ~OAIRecipeInformation_winePairing_productMatches_inner() override;

    QString asJson() const override;
    QJsonObject asJsonObject() const override;
    void fromJsonObject(QJsonObject json) override;
    void fromJson(QString jsonString) override;

    qint32 getId() const;
    void setId(const qint32 &id);
    bool is_id_Set() const;
    bool is_id_Valid() const;

    QString getTitle() const;
    void setTitle(const QString &title);
    bool is_title_Set() const;
    bool is_title_Valid() const;

    QString getDescription() const;
    void setDescription(const QString &description);
    bool is_description_Set() const;
    bool is_description_Valid() const;

    QString getPrice() const;
    void setPrice(const QString &price);
    bool is_price_Set() const;
    bool is_price_Valid() const;

    QString getImageUrl() const;
    void setImageUrl(const QString &image_url);
    bool is_image_url_Set() const;
    bool is_image_url_Valid() const;

    double getAverageRating() const;
    void setAverageRating(const double &average_rating);
    bool is_average_rating_Set() const;
    bool is_average_rating_Valid() const;

    qint32 getRatingCount() const;
    void setRatingCount(const qint32 &rating_count);
    bool is_rating_count_Set() const;
    bool is_rating_count_Valid() const;

    double getScore() const;
    void setScore(const double &score);
    bool is_score_Set() const;
    bool is_score_Valid() const;

    QString getLink() const;
    void setLink(const QString &link);
    bool is_link_Set() const;
    bool is_link_Valid() const;

    virtual bool isSet() const override;
    virtual bool isValid() const override;

private:
    void initializeModel();

    qint32 m_id;
    bool m_id_isSet;
    bool m_id_isValid;

    QString m_title;
    bool m_title_isSet;
    bool m_title_isValid;

    QString m_description;
    bool m_description_isSet;
    bool m_description_isValid;

    QString m_price;
    bool m_price_isSet;
    bool m_price_isValid;

    QString m_image_url;
    bool m_image_url_isSet;
    bool m_image_url_isValid;

    double m_average_rating;
    bool m_average_rating_isSet;
    bool m_average_rating_isValid;

    qint32 m_rating_count;
    bool m_rating_count_isSet;
    bool m_rating_count_isValid;

    double m_score;
    bool m_score_isSet;
    bool m_score_isValid;

    QString m_link;
    bool m_link_isSet;
    bool m_link_isValid;
};

} // namespace OpenAPI

Q_DECLARE_METATYPE(OpenAPI::OAIRecipeInformation_winePairing_productMatches_inner)

#endif // OAIRecipeInformation_winePairing_productMatches_inner_H
