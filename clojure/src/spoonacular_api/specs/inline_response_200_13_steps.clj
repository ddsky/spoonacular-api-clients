(ns spoonacular-api.specs.inline-response-200-13-steps
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [spoonacular-api.specs.inline-response-200-13-ingredients :refer :all]
            [spoonacular-api.specs.inline-response-200-13-ingredients :refer :all]
            )
  (:import (java.io File)))


(def inline-response-200-13-steps-data
  {
   (ds/req :number) float?
   (ds/req :step) string?
   (ds/opt :ingredients) (s/coll-of inline-response-200-13-ingredients-spec)
   (ds/opt :equipment) (s/coll-of inline-response-200-13-ingredients-spec)
   })

(def inline-response-200-13-steps-spec
  (ds/spec
    {:name ::inline-response-200-13-steps
     :spec inline-response-200-13-steps-data}))
