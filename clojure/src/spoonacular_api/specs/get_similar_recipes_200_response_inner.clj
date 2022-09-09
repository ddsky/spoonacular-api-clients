(ns spoonacular-api.specs.get-similar-recipes-200-response-inner
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def get-similar-recipes-200-response-inner-data
  {
   (ds/req :id) int?
   (ds/req :title) string?
   (ds/req :imageType) string?
   (ds/req :readyInMinutes) int?
   (ds/req :servings) float?
   (ds/req :sourceUrl) string?
   })

(def get-similar-recipes-200-response-inner-spec
  (ds/spec
    {:name ::get-similar-recipes-200-response-inner
     :spec get-similar-recipes-200-response-inner-data}))
