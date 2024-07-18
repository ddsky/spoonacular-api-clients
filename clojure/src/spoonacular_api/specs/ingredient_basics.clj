(ns spoonacular-api.specs.ingredient-basics
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def ingredient-basics-data
  {
   (ds/req :description) string?
   (ds/req :name) string?
   (ds/req :safety_level) string?
   })

(def ingredient-basics-spec
  (ds/spec
    {:name ::ingredient-basics
     :spec ingredient-basics-data}))
