(ns spoonacular-api.specs.inline-response-200-3-wine-pairing-product-matches
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def inline-response-200-3-wine-pairing-product-matches-data
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

(def inline-response-200-3-wine-pairing-product-matches-spec
  (ds/spec
    {:name ::inline-response-200-3-wine-pairing-product-matches
     :spec inline-response-200-3-wine-pairing-product-matches-data}))
