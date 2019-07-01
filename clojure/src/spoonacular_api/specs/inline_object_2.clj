(ns spoonacular-api.specs.inline-object-2
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def inline-object-2-data
  {
   (ds/req :ingredientList) string?
   (ds/req :servings) float?
   (ds/opt :view) string?
   (ds/opt :defaultCss) boolean?
   (ds/opt :showBacklink) boolean?
   })

(def inline-object-2-spec
  (ds/spec
    {:name ::inline-object-2
     :spec inline-object-2-data}))
