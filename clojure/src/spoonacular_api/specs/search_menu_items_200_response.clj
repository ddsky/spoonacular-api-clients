(ns spoonacular-api.specs.search-menu-items-200-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [spoonacular-api.specs.search-menu-items-200-response-menu-items-inner :refer :all]
            )
  (:import (java.io File)))


(def search-menu-items-200-response-data
  {
   (ds/req :menuItems) (s/coll-of search-menu-items-200-response-menu-items-inner-spec)
   (ds/req :totalMenuItems) int?
   (ds/req :type) string?
   (ds/req :offset) int?
   (ds/req :number) int?
   })

(def search-menu-items-200-response-spec
  (ds/spec
    {:name ::search-menu-items-200-response
     :spec search-menu-items-200-response-data}))
