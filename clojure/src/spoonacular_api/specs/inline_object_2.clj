(ns spoonacular-api.specs.inline-object-2
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def inline-object-2-data
  {
   (ds/req :ingredients) (s/coll-of string?)
   (ds/req :servings) float?
   })

(def inline-object-2-spec
  (ds/spec
    {:name ::inline-object-2
     :spec inline-object-2-data}))
