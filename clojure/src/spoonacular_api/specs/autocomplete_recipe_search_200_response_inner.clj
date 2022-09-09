(ns spoonacular-api.specs.autocomplete-recipe-search-200-response-inner
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def autocomplete-recipe-search-200-response-inner-data
  {
   (ds/req :id) int?
   (ds/req :title) string?
   (ds/req :imageType) string?
   })

(def autocomplete-recipe-search-200-response-inner-spec
  (ds/spec
    {:name ::autocomplete-recipe-search-200-response-inner
     :spec autocomplete-recipe-search-200-response-inner-data}))
