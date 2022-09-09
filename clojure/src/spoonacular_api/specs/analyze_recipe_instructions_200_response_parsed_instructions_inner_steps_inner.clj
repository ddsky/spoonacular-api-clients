(ns spoonacular-api.specs.analyze-recipe-instructions-200-response-parsed-instructions-inner-steps-inner
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [spoonacular-api.specs.analyze-recipe-instructions-200-response-parsed-instructions-inner-steps-inner-ingredients-inner :refer :all]
            [spoonacular-api.specs.analyze-recipe-instructions-200-response-parsed-instructions-inner-steps-inner-ingredients-inner :refer :all]
            )
  (:import (java.io File)))


(def analyze-recipe-instructions-200-response-parsed-instructions-inner-steps-inner-data
  {
   (ds/req :number) float?
   (ds/req :step) string?
   (ds/opt :ingredients) (s/coll-of analyze-recipe-instructions-200-response-parsed-instructions-inner-steps-inner-ingredients-inner-spec)
   (ds/opt :equipment) (s/coll-of analyze-recipe-instructions-200-response-parsed-instructions-inner-steps-inner-ingredients-inner-spec)
   })

(def analyze-recipe-instructions-200-response-parsed-instructions-inner-steps-inner-spec
  (ds/spec
    {:name ::analyze-recipe-instructions-200-response-parsed-instructions-inner-steps-inner
     :spec analyze-recipe-instructions-200-response-parsed-instructions-inner-steps-inner-data}))
