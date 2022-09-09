(ns spoonacular-api.specs.map-ingredients-to-grocery-products-200-response-inner
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [spoonacular-api.specs.map-ingredients-to-grocery-products-200-response-inner-products-inner :refer :all]
            )
  (:import (java.io File)))


(def map-ingredients-to-grocery-products-200-response-inner-data
  {
   (ds/req :original) string?
   (ds/req :originalName) string?
   (ds/req :ingredientImage) string?
   (ds/req :meta) (s/coll-of string?)
   (ds/req :products) (s/coll-of map-ingredients-to-grocery-products-200-response-inner-products-inner-spec)
   })

(def map-ingredients-to-grocery-products-200-response-inner-spec
  (ds/spec
    {:name ::map-ingredients-to-grocery-products-200-response-inner
     :spec map-ingredients-to-grocery-products-200-response-inner-data}))
