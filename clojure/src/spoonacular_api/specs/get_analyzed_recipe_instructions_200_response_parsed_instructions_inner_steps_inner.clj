(ns spoonacular-api.specs.get-analyzed-recipe-instructions-200-response-parsed-instructions-inner-steps-inner
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [spoonacular-api.specs.get-analyzed-recipe-instructions-200-response-parsed-instructions-inner-steps-inner-ingredients-inner :refer :all]
            [spoonacular-api.specs.get-analyzed-recipe-instructions-200-response-parsed-instructions-inner-steps-inner-ingredients-inner :refer :all]
            )
  (:import (java.io File)))


(def get-analyzed-recipe-instructions-200-response-parsed-instructions-inner-steps-inner-data
  {
   (ds/req :number) float?
   (ds/req :step) string?
   (ds/opt :ingredients) (s/coll-of get-analyzed-recipe-instructions-200-response-parsed-instructions-inner-steps-inner-ingredients-inner-spec)
   (ds/opt :equipment) (s/coll-of get-analyzed-recipe-instructions-200-response-parsed-instructions-inner-steps-inner-ingredients-inner-spec)
   })

(def get-analyzed-recipe-instructions-200-response-parsed-instructions-inner-steps-inner-spec
  (ds/spec
    {:name ::get-analyzed-recipe-instructions-200-response-parsed-instructions-inner-steps-inner
     :spec get-analyzed-recipe-instructions-200-response-parsed-instructions-inner-steps-inner-data}))
