(ns spoonacular-api.specs.analyze-a-recipe-search-query-200-response-dishes-inner
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def analyze-a-recipe-search-query-200-response-dishes-inner-data
  {
   (ds/req :image) string?
   (ds/req :name) string?
   })

(def analyze-a-recipe-search-query-200-response-dishes-inner-spec
  (ds/spec
    {:name ::analyze-a-recipe-search-query-200-response-dishes-inner
     :spec analyze-a-recipe-search-query-200-response-dishes-inner-data}))
