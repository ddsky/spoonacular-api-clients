(ns spoonacular-api.specs.comparable-product
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def comparable-product-data
  {
   (ds/req :difference) float?
   (ds/req :id) int?
   (ds/req :image) string?
   (ds/req :title) string?
   })

(def comparable-product-spec
  (ds/spec
    {:name ::comparable-product
     :spec comparable-product-data}))
