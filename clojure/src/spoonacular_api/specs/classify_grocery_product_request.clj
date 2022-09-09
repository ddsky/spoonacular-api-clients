(ns spoonacular-api.specs.classify-grocery-product-request
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def classify-grocery-product-request-data
  {
   (ds/req :title) string?
   (ds/req :upc) string?
   (ds/req :plu_code) string?
   })

(def classify-grocery-product-request-spec
  (ds/spec
    {:name ::classify-grocery-product-request
     :spec classify-grocery-product-request-data}))
