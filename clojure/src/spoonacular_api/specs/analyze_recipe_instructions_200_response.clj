(ns spoonacular-api.specs.analyze-recipe-instructions-200-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [spoonacular-api.specs.analyze-recipe-instructions-200-response-parsed-instructions-inner :refer :all]
            [spoonacular-api.specs.analyze-recipe-instructions-200-response-ingredients-inner :refer :all]
            [spoonacular-api.specs.analyze-recipe-instructions-200-response-ingredients-inner :refer :all]
            )
  (:import (java.io File)))


(def analyze-recipe-instructions-200-response-data
  {
   (ds/req :parsedInstructions) (s/coll-of analyze-recipe-instructions-200-response-parsed-instructions-inner-spec)
   (ds/req :ingredients) (s/coll-of analyze-recipe-instructions-200-response-ingredients-inner-spec)
   (ds/req :equipment) (s/coll-of analyze-recipe-instructions-200-response-ingredients-inner-spec)
   })

(def analyze-recipe-instructions-200-response-spec
  (ds/spec
    {:name ::analyze-recipe-instructions-200-response
     :spec analyze-recipe-instructions-200-response-data}))
