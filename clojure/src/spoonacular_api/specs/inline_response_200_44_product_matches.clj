(ns spoonacular-api.specs.inline-response-200-44-product-matches
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def inline-response-200-44-product-matches-data
  {
   (ds/req :id) int?
   (ds/req :title) string?
   (ds/req :averageRating) float?
   (ds/opt :description) any?
   (ds/req :imageUrl) string?
   (ds/req :link) string?
   (ds/req :price) string?
   (ds/req :ratingCount) int?
   (ds/req :score) float?
   })

(def inline-response-200-44-product-matches-spec
  (ds/spec
    {:name ::inline-response-200-44-product-matches
     :spec inline-response-200-44-product-matches-data}))
