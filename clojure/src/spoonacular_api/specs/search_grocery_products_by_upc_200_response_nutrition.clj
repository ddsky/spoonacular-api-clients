(ns spoonacular-api.specs.search-grocery-products-by-upc-200-response-nutrition
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [spoonacular-api.specs.search-grocery-products-by-upc-200-response-nutrition-nutrients-inner :refer :all]
            [spoonacular-api.specs.search-grocery-products-by-upc-200-response-nutrition-caloric-breakdown :refer :all]
            )
  (:import (java.io File)))


(def search-grocery-products-by-upc-200-response-nutrition-data
  {
   (ds/req :nutrients) (s/coll-of search-grocery-products-by-upc-200-response-nutrition-nutrients-inner-spec)
   (ds/req :caloricBreakdown) search-grocery-products-by-upc-200-response-nutrition-caloric-breakdown-spec
   })

(def search-grocery-products-by-upc-200-response-nutrition-spec
  (ds/spec
    {:name ::search-grocery-products-by-upc-200-response-nutrition
     :spec search-grocery-products-by-upc-200-response-nutrition-data}))
