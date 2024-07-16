(ns spoonacular-api.specs.search-grocery-products-by-upc-200-response-nutrition-caloric-breakdown
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def search-grocery-products-by-upc-200-response-nutrition-caloric-breakdown-data
  {
   (ds/req :percentProtein) float?
   (ds/req :percentFat) float?
   (ds/req :percentCarbs) float?
   })

(def search-grocery-products-by-upc-200-response-nutrition-caloric-breakdown-spec
  (ds/spec
    {:name ::search-grocery-products-by-upc-200-response-nutrition-caloric-breakdown
     :spec search-grocery-products-by-upc-200-response-nutrition-caloric-breakdown-data}))
