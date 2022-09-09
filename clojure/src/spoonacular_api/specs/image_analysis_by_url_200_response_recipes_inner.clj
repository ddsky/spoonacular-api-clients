(ns spoonacular-api.specs.image-analysis-by-url-200-response-recipes-inner
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def image-analysis-by-url-200-response-recipes-inner-data
  {
   (ds/req :id) int?
   (ds/req :title) string?
   (ds/req :imageType) string?
   (ds/req :url) string?
   })

(def image-analysis-by-url-200-response-recipes-inner-spec
  (ds/spec
    {:name ::image-analysis-by-url-200-response-recipes-inner
     :spec image-analysis-by-url-200-response-recipes-inner-data}))
