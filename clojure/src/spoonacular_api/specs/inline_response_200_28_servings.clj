(ns spoonacular-api.specs.inline-response-200-28-servings
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def inline-response-200-28-servings-data
  {
   (ds/req :number) float?
   (ds/req :size) float?
   (ds/req :unit) string?
   })

(def inline-response-200-28-servings-spec
  (ds/spec
    {:name ::inline-response-200-28-servings
     :spec inline-response-200-28-servings-data}))
