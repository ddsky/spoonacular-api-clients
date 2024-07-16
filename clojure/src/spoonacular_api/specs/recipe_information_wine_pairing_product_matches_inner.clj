(ns spoonacular-api.specs.recipe-information-wine-pairing-product-matches-inner
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def recipe-information-wine-pairing-product-matches-inner-data
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

(def recipe-information-wine-pairing-product-matches-inner-spec
  (ds/spec
    {:name ::recipe-information-wine-pairing-product-matches-inner
     :spec recipe-information-wine-pairing-product-matches-inner-data}))
