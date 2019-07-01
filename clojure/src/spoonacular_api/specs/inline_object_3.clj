(ns spoonacular-api.specs.inline-object-3
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def inline-object-3-data
  {
   (ds/req :title) string?
   (ds/req :image) any?
   (ds/req :ingredients) string?
   (ds/req :instructions) string?
   (ds/req :readyInMinutes) float?
   (ds/req :servings) float?
   (ds/req :mask) string?
   (ds/req :backgroundImage) string?
   (ds/opt :author) string?
   (ds/opt :backgroundColor) string?
   (ds/opt :fontColor) string?
   (ds/opt :source) string?
   })

(def inline-object-3-spec
  (ds/spec
    {:name ::inline-object-3
     :spec inline-object-3-data}))
