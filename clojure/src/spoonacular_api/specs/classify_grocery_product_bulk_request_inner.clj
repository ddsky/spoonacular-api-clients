(ns spoonacular-api.specs.classify-grocery-product-bulk-request-inner
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def classify-grocery-product-bulk-request-inner-data
  {
   (ds/req :title) string?
   (ds/req :upc) string?
   (ds/req :plu_code) string?
   })

(def classify-grocery-product-bulk-request-inner-spec
  (ds/spec
    {:name ::classify-grocery-product-bulk-request-inner
     :spec classify-grocery-product-bulk-request-inner-data}))
