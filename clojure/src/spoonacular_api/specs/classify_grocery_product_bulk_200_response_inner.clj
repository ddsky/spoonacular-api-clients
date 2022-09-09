(ns spoonacular-api.specs.classify-grocery-product-bulk-200-response-inner
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def classify-grocery-product-bulk-200-response-inner-data
  {
   (ds/req :cleanTitle) string?
   (ds/req :image) string?
   (ds/req :category) string?
   (ds/req :breadcrumbs) (s/coll-of string?)
   (ds/req :usdaCode) int?
   })

(def classify-grocery-product-bulk-200-response-inner-spec
  (ds/spec
    {:name ::classify-grocery-product-bulk-200-response-inner
     :spec classify-grocery-product-bulk-200-response-inner-data}))
