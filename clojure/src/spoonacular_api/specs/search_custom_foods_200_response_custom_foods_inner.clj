(ns spoonacular-api.specs.search-custom-foods-200-response-custom-foods-inner
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def search-custom-foods-200-response-custom-foods-inner-data
  {
   (ds/req :id) int?
   (ds/req :title) string?
   (ds/req :servings) float?
   (ds/req :imageUrl) string?
   (ds/req :price) float?
   })

(def search-custom-foods-200-response-custom-foods-inner-spec
  (ds/spec
    {:name ::search-custom-foods-200-response-custom-foods-inner
     :spec search-custom-foods-200-response-custom-foods-inner-data}))
