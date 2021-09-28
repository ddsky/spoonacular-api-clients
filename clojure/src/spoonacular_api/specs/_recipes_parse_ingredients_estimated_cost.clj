(ns spoonacular-api.specs.-recipes-parse-ingredients-estimated-cost
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def -recipes-parse-ingredients-estimated-cost-data
  {
   (ds/req :value) float?
   (ds/req :unit) string?
   })

(def -recipes-parse-ingredients-estimated-cost-spec
  (ds/spec
    {:name ::-recipes-parse-ingredients-estimated-cost
     :spec -recipes-parse-ingredients-estimated-cost-data}))
