(ns spoonacular-api.specs.get-recipe-information-200-response-wine-pairing-product-matches-inner
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def get-recipe-information-200-response-wine-pairing-product-matches-inner-data
  {
   (ds/req :id) int?
   (ds/req :title) string?
   (ds/req :description) string?
   (ds/req :price) string?
   (ds/req :imageUrl) string?
   (ds/req :averageRating) float?
   (ds/req :ratingCount) int?
   (ds/req :score) float?
   (ds/req :link) string?
   })

(def get-recipe-information-200-response-wine-pairing-product-matches-inner-spec
  (ds/spec
    {:name ::get-recipe-information-200-response-wine-pairing-product-matches-inner
     :spec get-recipe-information-200-response-wine-pairing-product-matches-inner-data}))
