(ns spoonacular-api.specs.inline-response-200-42-measures
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [spoonacular-api.specs.-recipes-parse-ingredients-nutrition-weight-per-serving :refer :all]
            [spoonacular-api.specs.-recipes-parse-ingredients-nutrition-weight-per-serving :refer :all]
            [spoonacular-api.specs.-recipes-parse-ingredients-nutrition-weight-per-serving :refer :all]
            )
  (:import (java.io File)))


(def inline-response-200-42-measures-data
  {
   (ds/req :original) -recipes-parse-ingredients-nutrition-weight-per-serving-spec
   (ds/req :metric) -recipes-parse-ingredients-nutrition-weight-per-serving-spec
   (ds/req :us) -recipes-parse-ingredients-nutrition-weight-per-serving-spec
   })

(def inline-response-200-42-measures-spec
  (ds/spec
    {:name ::inline-response-200-42-measures
     :spec inline-response-200-42-measures-data}))
