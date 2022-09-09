(ns spoonacular-api.specs.summarize-recipe-200-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def summarize-recipe-200-response-data
  {
   (ds/req :id) int?
   (ds/req :summary) string?
   (ds/req :title) string?
   })

(def summarize-recipe-200-response-spec
  (ds/spec
    {:name ::summarize-recipe-200-response
     :spec summarize-recipe-200-response-data}))
