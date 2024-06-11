(ns spoonacular-api.specs.search-grocery-products-by-upc-200-response-ingredients-inner
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def search-grocery-products-by-upc-200-response-ingredients-inner-data
  {
   (ds/opt :description) string?
   (ds/req :name) string?
   (ds/opt :safety_level) string?
   })

(def search-grocery-products-by-upc-200-response-ingredients-inner-spec
  (ds/spec
    {:name ::search-grocery-products-by-upc-200-response-ingredients-inner
     :spec search-grocery-products-by-upc-200-response-ingredients-inner-data}))
