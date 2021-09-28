(ns spoonacular-api.specs.inline-response-200-31-comparable-products-protein
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def inline-response-200-31-comparable-products-protein-data
  {
   (ds/req :difference) float?
   (ds/req :id) int?
   (ds/req :image) string?
   (ds/req :title) string?
   })

(def inline-response-200-31-comparable-products-protein-spec
  (ds/spec
    {:name ::inline-response-200-31-comparable-products-protein
     :spec inline-response-200-31-comparable-products-protein-data}))
