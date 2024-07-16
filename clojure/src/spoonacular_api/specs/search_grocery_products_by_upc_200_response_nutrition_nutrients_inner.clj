(ns spoonacular-api.specs.search-grocery-products-by-upc-200-response-nutrition-nutrients-inner
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def search-grocery-products-by-upc-200-response-nutrition-nutrients-inner-data
  {
   (ds/req :name) string?
   (ds/req :amount) float?
   (ds/req :unit) string?
   (ds/req :percentOfDailyNeeds) float?
   })

(def search-grocery-products-by-upc-200-response-nutrition-nutrients-inner-spec
  (ds/spec
    {:name ::search-grocery-products-by-upc-200-response-nutrition-nutrients-inner
     :spec search-grocery-products-by-upc-200-response-nutrition-nutrients-inner-data}))
