(ns spoonacular-api.specs.get-a-random-food-joke-200-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def get-a-random-food-joke-200-response-data
  {
   (ds/req :text) string?
   })

(def get-a-random-food-joke-200-response-spec
  (ds/spec
    {:name ::get-a-random-food-joke-200-response
     :spec get-a-random-food-joke-200-response-data}))
