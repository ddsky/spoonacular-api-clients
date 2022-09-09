(ns spoonacular-api.specs.analyze-recipe-instructions-200-response-parsed-instructions-inner-steps-inner-ingredients-inner
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def analyze-recipe-instructions-200-response-parsed-instructions-inner-steps-inner-ingredients-inner-data
  {
   (ds/req :id) float?
   (ds/req :name) string?
   (ds/req :localizedName) string?
   (ds/req :image) string?
   })

(def analyze-recipe-instructions-200-response-parsed-instructions-inner-steps-inner-ingredients-inner-spec
  (ds/spec
    {:name ::analyze-recipe-instructions-200-response-parsed-instructions-inner-steps-inner-ingredients-inner
     :spec analyze-recipe-instructions-200-response-parsed-instructions-inner-steps-inner-ingredients-inner-data}))
