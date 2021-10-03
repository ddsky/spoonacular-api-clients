(ns spoonacular-api.specs.inline-response-200-49-recipes
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def inline-response-200-49-recipes-data
  {
   (ds/req :id) int?
   (ds/req :title) string?
   (ds/req :imageType) string?
   (ds/req :url) string?
   })

(def inline-response-200-49-recipes-spec
  (ds/spec
    {:name ::inline-response-200-49-recipes
     :spec inline-response-200-49-recipes-data}))
