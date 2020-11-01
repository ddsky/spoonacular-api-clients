(ns spoonacular-api.specs.inline-object
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def inline-object-data
  {
   (ds/req :ingredientList) string?
   })

(def inline-object-spec
  (ds/spec
    {:name ::inline-object
     :spec inline-object-data}))
