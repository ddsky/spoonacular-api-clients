(ns spoonacular-api.specs.search-recipes-by-nutrients-200-response-inner
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def search-recipes-by-nutrients-200-response-inner-data
  {
   (ds/req :calories) float?
   (ds/req :carbs) string?
   (ds/req :fat) string?
   (ds/req :id) int?
   (ds/req :image) string?
   (ds/req :imageType) string?
   (ds/req :protein) string?
   (ds/req :title) string?
   })

(def search-recipes-by-nutrients-200-response-inner-spec
  (ds/spec
    {:name ::search-recipes-by-nutrients-200-response-inner
     :spec search-recipes-by-nutrients-200-response-inner-data}))
