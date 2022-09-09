(ns spoonacular-api.specs.search-grocery-products-by-upc-200-response-servings
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def search-grocery-products-by-upc-200-response-servings-data
  {
   (ds/req :number) float?
   (ds/req :size) float?
   (ds/req :unit) string?
   })

(def search-grocery-products-by-upc-200-response-servings-spec
  (ds/spec
    {:name ::search-grocery-products-by-upc-200-response-servings
     :spec search-grocery-products-by-upc-200-response-servings-data}))
