(ns spoonacular-api.specs.search-grocery-products-200-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [spoonacular-api.specs.autocomplete-recipe-search-200-response-inner :refer :all]
            )
  (:import (java.io File)))


(def search-grocery-products-200-response-data
  {
   (ds/req :products) (s/coll-of autocomplete-recipe-search-200-response-inner-spec)
   (ds/req :totalProducts) int?
   (ds/req :type) string?
   (ds/req :offset) int?
   (ds/req :number) int?
   })

(def search-grocery-products-200-response-spec
  (ds/spec
    {:name ::search-grocery-products-200-response
     :spec search-grocery-products-200-response-data}))
