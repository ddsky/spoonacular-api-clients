(ns spoonacular-api.specs.search-food-videos-200-response-videos-inner
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def search-food-videos-200-response-videos-inner-data
  {
   (ds/req :title) string?
   (ds/req :length) int?
   (ds/req :rating) float?
   (ds/req :shortTitle) string?
   (ds/req :thumbnail) string?
   (ds/req :views) int?
   (ds/req :youTubeId) string?
   })

(def search-food-videos-200-response-videos-inner-spec
  (ds/spec
    {:name ::search-food-videos-200-response-videos-inner
     :spec search-food-videos-200-response-videos-inner-data}))
