(ns spoonacular-api.specs.inline-response-200-11
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [spoonacular-api.specs.inline-response-200-11-ingredients :refer :all]
            )
  (:import (java.io File)))


(def inline-response-200-11-data
  {
   (ds/req :ingredients) (s/coll-of inline-response-200-11-ingredients-spec)
   })

(def inline-response-200-11-spec
  (ds/spec
    {:name ::inline-response-200-11
     :spec inline-response-200-11-data}))
