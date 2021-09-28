(ns spoonacular-api.specs.inline-response-200-53-videos
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def inline-response-200-53-videos-data
  {
   (ds/req :title) string?
   (ds/req :length) int?
   (ds/req :rating) float?
   (ds/req :shortTitle) string?
   (ds/req :thumbnail) string?
   (ds/req :views) int?
   (ds/req :youTubeId) string?
   })

(def inline-response-200-53-videos-spec
  (ds/spec
    {:name ::inline-response-200-53-videos
     :spec inline-response-200-53-videos-data}))
