(ns spoonacular-api.specs.inline-response-200-21
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [spoonacular-api.specs.inline-response-200-21-calories :refer :all]
            [spoonacular-api.specs.inline-response-200-21-calories :refer :all]
            [spoonacular-api.specs.inline-response-200-21-calories :refer :all]
            [spoonacular-api.specs.inline-response-200-21-calories :refer :all]
            )
  (:import (java.io File)))


(def inline-response-200-21-data
  {
   (ds/req :calories) inline-response-200-21-calories-spec
   (ds/req :carbs) inline-response-200-21-calories-spec
   (ds/req :fat) inline-response-200-21-calories-spec
   (ds/req :protein) inline-response-200-21-calories-spec
   (ds/req :recipesUsed) int?
   })

(def inline-response-200-21-spec
  (ds/spec
    {:name ::inline-response-200-21
     :spec inline-response-200-21-data}))
