(ns spoonacular-api.specs.menu-item-servings
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def menu-item-servings-data
  {
   (ds/req :number) float?
   (ds/req :size) float?
   (ds/req :unit) string?
   })

(def menu-item-servings-spec
  (ds/spec
    {:name ::menu-item-servings
     :spec menu-item-servings-data}))
