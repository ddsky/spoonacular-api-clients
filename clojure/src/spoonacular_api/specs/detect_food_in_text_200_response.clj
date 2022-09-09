(ns spoonacular-api.specs.detect-food-in-text-200-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [spoonacular-api.specs.detect-food-in-text-200-response-annotations-inner :refer :all]
            )
  (:import (java.io File)))


(def detect-food-in-text-200-response-data
  {
   (ds/req :annotations) (s/coll-of detect-food-in-text-200-response-annotations-inner-spec)
   })

(def detect-food-in-text-200-response-spec
  (ds/spec
    {:name ::detect-food-in-text-200-response
     :spec detect-food-in-text-200-response-data}))
