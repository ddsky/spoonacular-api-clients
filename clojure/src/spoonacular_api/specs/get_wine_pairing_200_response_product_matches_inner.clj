(ns spoonacular-api.specs.get-wine-pairing-200-response-product-matches-inner
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [spoonacular-api.specs. :refer :all]
            )
  (:import (java.io File)))


(def get-wine-pairing-200-response-product-matches-inner-data
  {
   (ds/req :id) int?
   (ds/req :title) string?
   (ds/req :averageRating) float?
   (ds/opt :description) any-type-spec
   (ds/req :imageUrl) string?
   (ds/req :link) string?
   (ds/req :price) string?
   (ds/req :ratingCount) int?
   (ds/req :score) float?
   })

(def get-wine-pairing-200-response-product-matches-inner-spec
  (ds/spec
    {:name ::get-wine-pairing-200-response-product-matches-inner
     :spec get-wine-pairing-200-response-product-matches-inner-data}))
