(ns spoonacular-api.specs.analyze-recipe-instructions-200-response-ingredients-inner
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def analyze-recipe-instructions-200-response-ingredients-inner-data
  {
   (ds/req :id) int?
   (ds/req :name) string?
   })

(def analyze-recipe-instructions-200-response-ingredients-inner-spec
  (ds/spec
    {:name ::analyze-recipe-instructions-200-response-ingredients-inner
     :spec analyze-recipe-instructions-200-response-ingredients-inner-data}))
