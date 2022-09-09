(ns spoonacular-api.specs.map-ingredients-to-grocery-products-200-response-inner-products-inner
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def map-ingredients-to-grocery-products-200-response-inner-products-inner-data
  {
   (ds/req :id) int?
   (ds/req :title) string?
   (ds/req :upc) string?
   })

(def map-ingredients-to-grocery-products-200-response-inner-products-inner-spec
  (ds/spec
    {:name ::map-ingredients-to-grocery-products-200-response-inner-products-inner
     :spec map-ingredients-to-grocery-products-200-response-inner-products-inner-data}))
