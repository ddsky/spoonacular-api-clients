(ns spoonacular-api.specs.inline-response-200-47-recommended-wines
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def inline-response-200-47-recommended-wines-data
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

(def inline-response-200-47-recommended-wines-spec
  (ds/spec
    {:name ::inline-response-200-47-recommended-wines
     :spec inline-response-200-47-recommended-wines-data}))
