(ns spoonacular-api.specs.inline-response-200-23-ingredients
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def inline-response-200-23-ingredients-data
  {
   (ds/req :id) int?
   (ds/req :original) string?
   (ds/req :glycemicIndex) float?
   (ds/req :glycemicLoad) float?
   })

(def inline-response-200-23-ingredients-spec
  (ds/spec
    {:name ::inline-response-200-23-ingredients
     :spec inline-response-200-23-ingredients-data}))
