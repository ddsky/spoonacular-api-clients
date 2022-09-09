(ns spoonacular-api.specs.search-custom-foods-200-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [spoonacular-api.specs.search-custom-foods-200-response-custom-foods-inner :refer :all]
            )
  (:import (java.io File)))


(def search-custom-foods-200-response-data
  {
   (ds/req :customFoods) (s/coll-of search-custom-foods-200-response-custom-foods-inner-spec)
   (ds/req :type) string?
   (ds/req :offset) int?
   (ds/req :number) int?
   })

(def search-custom-foods-200-response-spec
  (ds/spec
    {:name ::search-custom-foods-200-response
     :spec search-custom-foods-200-response-data}))
