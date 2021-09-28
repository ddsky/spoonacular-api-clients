(ns spoonacular-api.specs.-food-ingredients-map-products
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def -food-ingredients-map-products-data
  {
   (ds/req :id) int?
   (ds/req :title) string?
   (ds/req :upc) string?
   })

(def -food-ingredients-map-products-spec
  (ds/spec
    {:name ::-food-ingredients-map-products
     :spec -food-ingredients-map-products-data}))
