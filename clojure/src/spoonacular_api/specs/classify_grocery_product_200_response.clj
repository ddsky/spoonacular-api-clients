(ns spoonacular-api.specs.classify-grocery-product-200-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def classify-grocery-product-200-response-data
  {
   (ds/req :cleanTitle) string?
   (ds/req :image) string?
   (ds/req :category) string?
   (ds/req :breadcrumbs) (s/coll-of string?)
   (ds/req :usdaCode) int?
   })

(def classify-grocery-product-200-response-spec
  (ds/spec
    {:name ::classify-grocery-product-200-response
     :spec classify-grocery-product-200-response-data}))
