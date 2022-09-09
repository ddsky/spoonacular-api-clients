(ns spoonacular-api.specs.get-comparable-products-200-response-comparable-products-protein-inner
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def get-comparable-products-200-response-comparable-products-protein-inner-data
  {
   (ds/req :difference) float?
   (ds/req :id) int?
   (ds/req :image) string?
   (ds/req :title) string?
   })

(def get-comparable-products-200-response-comparable-products-protein-inner-spec
  (ds/spec
    {:name ::get-comparable-products-200-response-comparable-products-protein-inner
     :spec get-comparable-products-200-response-comparable-products-protein-inner-data}))
