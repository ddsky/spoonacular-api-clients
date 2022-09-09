(ns spoonacular-api.specs.create-recipe-card-200-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def create-recipe-card-200-response-data
  {
   (ds/req :url) string?
   })

(def create-recipe-card-200-response-spec
  (ds/spec
    {:name ::create-recipe-card-200-response
     :spec create-recipe-card-200-response-data}))
