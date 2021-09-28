(ns spoonacular-api.specs.inline-response-200-13
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [spoonacular-api.specs.inline-response-200-13-parsed-instructions :refer :all]
            [spoonacular-api.specs.inline-response-200-13-ingredients-1 :refer :all]
            [spoonacular-api.specs.inline-response-200-13-ingredients-1 :refer :all]
            )
  (:import (java.io File)))


(def inline-response-200-13-data
  {
   (ds/req :parsedInstructions) (s/coll-of inline-response-200-13-parsed-instructions-spec)
   (ds/req :ingredients) (s/coll-of inline-response-200-13-ingredients-1-spec)
   (ds/req :equipment) (s/coll-of inline-response-200-13-ingredients-1-spec)
   })

(def inline-response-200-13-spec
  (ds/spec
    {:name ::inline-response-200-13
     :spec inline-response-200-13-data}))
