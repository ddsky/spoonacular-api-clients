Set-ExecutionPolicy -ExecutionPolicy Unrestricted -Scope CurrentUser -F
java -jar .\openapi-generator-cli-6.0.1.jar generate -i .\spoonacular-openapi-3.json -g java --enable-post-process-file --api-package com.spoonacular --artifact-version 1.1 --model-package com.spoonacular.client.model  --invoker-package com.spoonacular.client --group-id com.spoonacular --artifact-id java-client -o java -c java-config.json --global-property apiTests=false
java -jar .\openapi-generator-cli-6.0.1.jar generate -i .\spoonacular-openapi-3.json -g javascript --api-package com.spoonacular --artifact-version 1.1 --model-package com.spoonacular.client.model  --invoker-package com.spoonacular.client --group-id com.spoonacular --artifact-id javascript-client -o javascript
java -jar .\openapi-generator-cli-6.0.1.jar generate -i .\spoonacular-openapi-3.json -g typescript --api-package com.spoonacular --artifact-version 1.1 --model-package com.spoonacular.client.model  --invoker-package com.spoonacular.client --group-id com.spoonacular --artifact-id typescript-client -o typescript
java -jar .\openapi-generator-cli-6.0.1.jar generate -i .\spoonacular-openapi-3.json -g typescript-angular --api-package com.spoonacular --artifact-version 1.1 --model-package com.spoonacular.client.model  --invoker-package com.spoonacular.client --group-id com.spoonacular --artifact-id angular-client -o angular
java -jar .\openapi-generator-cli-6.0.1.jar generate -i .\spoonacular-openapi-3.json -g android --api-package com.spoonacular --artifact-version 1.1 --model-package com.spoonacular.client.model  --invoker-package com.spoonacular.client --group-id com.spoonacular --artifact-id android-client -o android
java -jar .\openapi-generator-cli-6.0.1.jar generate -i .\spoonacular-openapi-3.json -g clojure --api-package com.spoonacular --artifact-version 1.1 --model-package com.spoonacular.client.model  --invoker-package com.spoonacular.client --group-id com.spoonacular --artifact-id clojure-client -o clojure
java -jar .\openapi-generator-cli-6.0.1.jar generate -i .\spoonacular-openapi-3.json -g cpp-qt-client --api-package com.spoonacular --artifact-version 1.1 --model-package com.spoonacular.client.model  --invoker-package com.spoonacular.client --group-id com.spoonacular --artifact-id cpp-client -o cpp
java -jar .\openapi-generator-cli-6.0.1.jar generate -i .\spoonacular-openapi-3.json -g csharp-dotnet2 --api-package com.spoonacular --artifact-version 1.1 --model-package com.spoonacular.client.model  --invoker-package com.spoonacular.client --group-id com.spoonacular --artifact-id csharp-client -o csharp --additional-properties hideGenerationTimestamp=true
java -jar .\openapi-generator-cli-6.0.1.jar generate -i .\spoonacular-openapi-3.json -g dart --api-package com.spoonacular --artifact-version 1.1 --model-package com.spoonacular.client.model  --invoker-package com.spoonacular.client --group-id com.spoonacular --artifact-id dart-client -o dart
java -jar .\openapi-generator-cli-6.0.1.jar generate -i .\spoonacular-openapi-3.json -g elixir --api-package com.spoonacular --artifact-version 1.1 --model-package com.spoonacular.client.model  --invoker-package com.spoonacular.client --group-id com.spoonacular --artifact-id elixir-client -o elixir
java -jar .\openapi-generator-cli-6.0.1.jar generate -i .\spoonacular-openapi-3.json -g erlang-client --api-package com.spoonacular --artifact-version 1.1 --model-package com.spoonacular.client.model  --invoker-package com.spoonacular.client --group-id com.spoonacular --artifact-id erlang-client -o erlang
java -jar .\openapi-generator-cli-6.0.1.jar generate -i .\spoonacular-openapi-3.json -g scala-finch --api-package com.spoonacular --artifact-version 1.1 --model-package com.spoonacular.client.model  --invoker-package com.spoonacular.client --group-id com.spoonacular --artifact-id scala-client -o scala -c java-config.json
java -jar .\openapi-generator-cli-6.0.1.jar generate -i .\spoonacular-openapi-3.json -g go --api-package com.spoonacular --artifact-version 1.1 --model-package com.spoonacular.client.model  --invoker-package com.spoonacular.client --group-id com.spoonacular --artifact-id go-client -o go
java -jar .\openapi-generator-cli-6.0.1.jar generate -i .\spoonacular-openapi-3.json -g php --api-package com.spoonacular --artifact-version 1.1 --model-package com.spoonacular.client.model  --invoker-package com.spoonacular.client --group-id com.spoonacular --artifact-id php-client -o php
java -jar .\openapi-generator-cli-6.0.1.jar generate -i .\spoonacular-openapi-3.json -g python --api-package com.spoonacular --artifact-version 1.1 --model-package com.spoonacular.client.model  --invoker-package com.spoonacular.client --group-id com.spoonacular --artifact-id python-client -o python
java -jar .\openapi-generator-cli-6.0.1.jar generate -i .\spoonacular-openapi-3.json -g rust --api-package com.spoonacular --artifact-version 1.1 --model-package com.spoonacular.client.model  --invoker-package com.spoonacular.client --group-id com.spoonacular --artifact-id rust-client -o rust
java -jar .\openapi-generator-cli-6.0.1.jar generate -i .\spoonacular-openapi-3.json -g ruby --api-package com.spoonacular --artifact-version 1.1 --model-package com.spoonacular.client.model  --invoker-package com.spoonacular.client --group-id com.spoonacular --artifact-id ruby-client -o ruby
java -jar .\openapi-generator-cli-6.0.1.jar generate -i .\spoonacular-openapi-3.json -g lua --api-package com.spoonacular --artifact-version 1.1 --model-package com.spoonacular.client.model  --invoker-package com.spoonacular.client --group-id com.spoonacular --artifact-id lua-client -o lua
java -jar .\openapi-generator-cli-6.0.1.jar generate -i .\spoonacular-openapi-3.json -g perl --api-package com.spoonacular --artifact-version 1.1 --model-package com.spoonacular.client.model  --invoker-package com.spoonacular.client --group-id com.spoonacular --artifact-id perl-client -o perl
java -jar .\openapi-generator-cli-6.0.1.jar generate -i .\spoonacular-openapi-3.json -g objc --api-package com.spoonacular --artifact-version 1.1 --model-package com.spoonacular.client.model  --invoker-package com.spoonacular.client --group-id com.spoonacular --artifact-id objc-client -o  objc
java -jar .\openapi-generator-cli-6.0.1.jar generate -i .\spoonacular-openapi-3.json -g groovy --api-package com.spoonacular --artifact-version 1.1 --model-package com.spoonacular.client.model  --invoker-package com.spoonacular.client --group-id com.spoonacular --artifact-id groovy-client -o groovy
java -jar .\openapi-generator-cli-6.0.1.jar generate -i .\spoonacular-openapi-3.json -g haskell-http-client --api-package com.spoonacular --artifact-version 1.1 --model-package com.spoonacular.client.model  --invoker-package com.spoonacular.client --group-id com.spoonacular --artifact-id haskell-client -o haskell
java -jar .\openapi-generator-cli-6.0.1.jar generate -i .\spoonacular-openapi-3.json -g kotlin --api-package com.spoonacular --artifact-version 1.1 --model-package com.spoonacular.client.model  --invoker-package com.spoonacular.client --group-id com.spoonacular --artifact-id kotlin-client -o kotlin -c java-config.json
java -jar .\openapi-generator-cli-6.0.1.jar generate -i .\spoonacular-openapi-3.json -g elm --api-package com.spoonacular --artifact-version 1.1 --model-package com.spoonacular.client.model  --invoker-package com.spoonacular.client --group-id com.spoonacular --artifact-id elm-client -o elm --additional-properties elmPrefixCustomTypeVariants=true
#java -jar .\openapi-generator-cli-6.0.1.jar generate -i .\spoonacular-openapi-3.json -g nodejs-server --api-package com.spoonacular --artifact-version 1.1 --model-package com.spoonacular.client.model  --invoker-package com.spoonacular.client --group-id com.spoonacular --artifact-id nodejs-client -o nodejs

# create sdk zips
.\7za.exe a -tzip .\zips\java-client.zip .\java\*
.\7za.exe a -tzip .\zips\javascript-client.zip .\javascript\*
.\7za.exe a -tzip .\zips\typescript-client.zip .\typescript\*
.\7za.exe a -tzip .\zips\angular-client.zip .\angular\*
.\7za.exe a -tzip .\zips\android-client.zip .\android\*
.\7za.exe a -tzip .\zips\clojure-client.zip .\clojure\*
.\7za.exe a -tzip .\zips\cpp-client.zip .\cpp\*
.\7za.exe a -tzip .\zips\csharp-client.zip .\csharp\*
.\7za.exe a -tzip .\zips\dart-client.zip .\dart\*
.\7za.exe a -tzip .\zips\elixir-client.zip .\elixir\*
.\7za.exe a -tzip .\zips\erlang-client.zip .\erlang\*
.\7za.exe a -tzip .\zips\scala-client.zip .\scala\*
.\7za.exe a -tzip .\zips\go-client.zip .\go\*
.\7za.exe a -tzip .\zips\php-client.zip .\php\*
.\7za.exe a -tzip .\zips\python-client.zip .\python\*
.\7za.exe a -tzip .\zips\rust-client.zip .\rust\*
.\7za.exe a -tzip .\zips\ruby-client.zip .\ruby\*
.\7za.exe a -tzip .\zips\lua-client.zip .\lua\*
.\7za.exe a -tzip .\zips\perl-client.zip .\perl\*
.\7za.exe a -tzip .\zips\objc-client.zip .\objc\*
.\7za.exe a -tzip .\zips\groovy-client.zip .\groovy\*
.\7za.exe a -tzip .\zips\haskell-client.zip .\haskell\*
.\7za.exe a -tzip .\zips\kotlin-client.zip .\kotlin\*
.\7za.exe a -tzip .\zips\elm-client.zip .\elm\*