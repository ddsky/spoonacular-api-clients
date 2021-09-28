(ns spoonacular-api.specs.inline-response-200-6
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [spoonacular-api.specs.inline-response-200-6-recipes :refer :all]
            )
  (:import (java.io File)))


(def inline-response-200-6-data
  {
   (ds/req :recipes) (s/coll-of inline-response-200-6-recipes-spec)
   })

(def inline-response-200-6-spec
  (ds/spec
    {:name ::inline-response-200-6
     :spec inline-response-200-6-data}))
