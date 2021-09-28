(ns spoonacular-api.specs.inline-response-200-37-nutrients
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def inline-response-200-37-nutrients-data
  {
   (ds/req :calories) float?
   (ds/req :carbohydrates) float?
   (ds/req :fat) float?
   (ds/req :protein) float?
   })

(def inline-response-200-37-nutrients-spec
  (ds/spec
    {:name ::inline-response-200-37-nutrients
     :spec inline-response-200-37-nutrients-data}))
