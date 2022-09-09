(ns spoonacular-api.specs.map-ingredients-to-grocery-products-request
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def map-ingredients-to-grocery-products-request-data
  {
   (ds/req :ingredients) (s/coll-of string?)
   (ds/req :servings) float?
   })

(def map-ingredients-to-grocery-products-request-spec
  (ds/spec
    {:name ::map-ingredients-to-grocery-products-request
     :spec map-ingredients-to-grocery-products-request-data}))
