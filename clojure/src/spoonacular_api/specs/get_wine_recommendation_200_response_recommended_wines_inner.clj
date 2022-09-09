(ns spoonacular-api.specs.get-wine-recommendation-200-response-recommended-wines-inner
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def get-wine-recommendation-200-response-recommended-wines-inner-data
  {
   (ds/req :id) int?
   (ds/req :title) string?
   (ds/req :averageRating) float?
   (ds/req :description) string?
   (ds/req :imageUrl) string?
   (ds/req :link) string?
   (ds/req :price) string?
   (ds/req :ratingCount) int?
   (ds/req :score) float?
   })

(def get-wine-recommendation-200-response-recommended-wines-inner-spec
  (ds/spec
    {:name ::get-wine-recommendation-200-response-recommended-wines-inner
     :spec get-wine-recommendation-200-response-recommended-wines-inner-data}))
