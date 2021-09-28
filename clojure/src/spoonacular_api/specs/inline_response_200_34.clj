(ns spoonacular-api.specs.inline-response-200-34
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [spoonacular-api.specs.-food-ingredients-map-products :refer :all]
            )
  (:import (java.io File)))


(def inline-response-200-34-data
  {
   (ds/req :original) string?
   (ds/req :originalName) string?
   (ds/req :ingredientImage) string?
   (ds/req :meta) (s/coll-of string?)
   (ds/req :products) (s/coll-of -food-ingredients-map-products-spec)
   })

(def inline-response-200-34-spec
  (ds/spec
    {:name ::inline-response-200-34
     :spec inline-response-200-34-data}))
