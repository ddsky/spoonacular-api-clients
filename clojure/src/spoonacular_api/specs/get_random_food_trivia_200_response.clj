(ns spoonacular-api.specs.get-random-food-trivia-200-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def get-random-food-trivia-200-response-data
  {
   (ds/req :text) string?
   })

(def get-random-food-trivia-200-response-spec
  (ds/spec
    {:name ::get-random-food-trivia-200-response
     :spec get-random-food-trivia-200-response-data}))
