(ns spoonacular-api.specs.search-recipes-200-response-results-inner
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def search-recipes-200-response-results-inner-data
  {
   (ds/req :id) int?
   (ds/req :title) string?
   (ds/req :calories) float?
   (ds/req :carbs) string?
   (ds/req :fat) string?
   (ds/req :image) string?
   (ds/req :imageType) string?
   (ds/req :protein) string?
   })

(def search-recipes-200-response-results-inner-spec
  (ds/spec
    {:name ::search-recipes-200-response-results-inner
     :spec search-recipes-200-response-results-inner-data}))
