(ns spoonacular-api.specs.inline-object-6
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def inline-object-6-data
  {
   (ds/req :title) string?
   (ds/req :ingredientList) string?
   })

(def inline-object-6-spec
  (ds/spec
    {:name ::inline-object-6
     :spec inline-object-6-data}))
