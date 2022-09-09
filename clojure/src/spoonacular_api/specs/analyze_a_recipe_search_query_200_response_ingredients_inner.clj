(ns spoonacular-api.specs.analyze-a-recipe-search-query-200-response-ingredients-inner
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def analyze-a-recipe-search-query-200-response-ingredients-inner-data
  {
   (ds/req :image) string?
   (ds/req :include) boolean?
   (ds/req :name) string?
   })

(def analyze-a-recipe-search-query-200-response-ingredients-inner-spec
  (ds/spec
    {:name ::analyze-a-recipe-search-query-200-response-ingredients-inner
     :spec analyze-a-recipe-search-query-200-response-ingredients-inner-data}))
