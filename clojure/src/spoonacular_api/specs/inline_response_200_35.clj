(ns spoonacular-api.specs.inline-response-200-35
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [spoonacular-api.specs.inline-response-200-35-menu-items :refer :all]
            )
  (:import (java.io File)))


(def inline-response-200-35-data
  {
   (ds/req :menuItems) (s/coll-of inline-response-200-35-menu-items-spec)
   (ds/req :totalMenuItems) int?
   (ds/req :type) string?
   (ds/req :offset) int?
   (ds/req :number) int?
   })

(def inline-response-200-35-spec
  (ds/spec
    {:name ::inline-response-200-35
     :spec inline-response-200-35-data}))
