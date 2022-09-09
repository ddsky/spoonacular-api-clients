(ns spoonacular-api.specs.guess-nutrition-by-dish-name-200-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [spoonacular-api.specs.guess-nutrition-by-dish-name-200-response-calories :refer :all]
            [spoonacular-api.specs.guess-nutrition-by-dish-name-200-response-calories :refer :all]
            [spoonacular-api.specs.guess-nutrition-by-dish-name-200-response-calories :refer :all]
            [spoonacular-api.specs.guess-nutrition-by-dish-name-200-response-calories :refer :all]
            )
  (:import (java.io File)))


(def guess-nutrition-by-dish-name-200-response-data
  {
   (ds/req :calories) guess-nutrition-by-dish-name-200-response-calories-spec
   (ds/req :carbs) guess-nutrition-by-dish-name-200-response-calories-spec
   (ds/req :fat) guess-nutrition-by-dish-name-200-response-calories-spec
   (ds/req :protein) guess-nutrition-by-dish-name-200-response-calories-spec
   (ds/req :recipesUsed) int?
   })

(def guess-nutrition-by-dish-name-200-response-spec
  (ds/spec
    {:name ::guess-nutrition-by-dish-name-200-response
     :spec guess-nutrition-by-dish-name-200-response-data}))
