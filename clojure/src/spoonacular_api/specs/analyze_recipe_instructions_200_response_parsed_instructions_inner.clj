(ns spoonacular-api.specs.analyze-recipe-instructions-200-response-parsed-instructions-inner
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [spoonacular-api.specs.analyze-recipe-instructions-200-response-parsed-instructions-inner-steps-inner :refer :all]
            )
  (:import (java.io File)))


(def analyze-recipe-instructions-200-response-parsed-instructions-inner-data
  {
   (ds/req :name) string?
   (ds/opt :steps) (s/coll-of analyze-recipe-instructions-200-response-parsed-instructions-inner-steps-inner-spec)
   })

(def analyze-recipe-instructions-200-response-parsed-instructions-inner-spec
  (ds/spec
    {:name ::analyze-recipe-instructions-200-response-parsed-instructions-inner
     :spec analyze-recipe-instructions-200-response-parsed-instructions-inner-data}))
