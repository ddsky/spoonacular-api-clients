(ns spoonacular-api.specs.search-grocery-products-by-upc-200-response-nutrition
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [spoonacular-api.specs.parse-ingredients-200-response-inner-nutrition-nutrients-inner :refer :all]
            [spoonacular-api.specs.parse-ingredients-200-response-inner-nutrition-caloric-breakdown :refer :all]
            )
  (:import (java.io File)))


(def search-grocery-products-by-upc-200-response-nutrition-data
  {
   (ds/req :nutrients) (s/coll-of parse-ingredients-200-response-inner-nutrition-nutrients-inner-spec)
   (ds/req :caloricBreakdown) parse-ingredients-200-response-inner-nutrition-caloric-breakdown-spec
   })

(def search-grocery-products-by-upc-200-response-nutrition-spec
  (ds/spec
    {:name ::search-grocery-products-by-upc-200-response-nutrition
     :spec search-grocery-products-by-upc-200-response-nutrition-data}))
