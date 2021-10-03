(ns spoonacular-api.specs.inline-response-200-49-nutrition
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [spoonacular-api.specs.inline-response-200-49-nutrition-calories :refer :all]
            [spoonacular-api.specs.inline-response-200-49-nutrition-calories :refer :all]
            [spoonacular-api.specs.inline-response-200-49-nutrition-calories :refer :all]
            [spoonacular-api.specs.inline-response-200-49-nutrition-calories :refer :all]
            )
  (:import (java.io File)))


(def inline-response-200-49-nutrition-data
  {
   (ds/req :recipesUsed) int?
   (ds/req :calories) inline-response-200-49-nutrition-calories-spec
   (ds/req :fat) inline-response-200-49-nutrition-calories-spec
   (ds/req :protein) inline-response-200-49-nutrition-calories-spec
   (ds/req :carbs) inline-response-200-49-nutrition-calories-spec
   })

(def inline-response-200-49-nutrition-spec
  (ds/spec
    {:name ::inline-response-200-49-nutrition
     :spec inline-response-200-49-nutrition-data}))
