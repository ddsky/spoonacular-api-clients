Set-ExecutionPolicy -ExecutionPolicy Unrestricted -Scope CurrentUser -F

# Setting environment variables
$env:PYTHON_POST_PROCESS_FILE = "yapf -i"
$VERSION = "2.0.1"
$GEN = "openapi-generator-cli-7.8.0-SNAPSHOT.jar"
$SPEC = "spoonacular-openapi-3.json"

# Removing the 'python' directory
Remove-Item -Path python -Recurse -Force
Remove-Item -Path java -Recurse -Force
Remove-Item -Path javascript -Recurse -Force
Remove-Item -Path typescript -Recurse -Force
Remove-Item -Path angular -Recurse -Force
Remove-Item -Path android -Recurse -Force
Remove-Item -Path clojure -Recurse -Force
Remove-Item -Path cpp -Recurse -Force
Remove-Item -Path csharp -Recurse -Force
Remove-Item -Path dart -Recurse -Force
Remove-Item -Path elixir -Recurse -Force
Remove-Item -Path erlang -Recurse -Force
Remove-Item -Path go -Recurse -Force
Remove-Item -Path php -Recurse -Force
Remove-Item -Path rust -Recurse -Force
Remove-Item -Path ruby -Recurse -Force
Remove-Item -Path lua -Recurse -Force
Remove-Item -Path perl -Recurse -Force
Remove-Item -Path haskell -Recurse -Force
Remove-Item -Path kotlin -Recurse -Force
Remove-Item -Path elm -Recurse -Force

java -jar $GEN generate -i $SPEC -g java --enable-post-process-file --api-package com.spoonacular --artifact-version $VERSION --additional-properties "packageVersion=${VERSION},project-name=spoonacular,packageName=spoonacular" --model-package com.spoonacular.client.model  --invoker-package com.spoonacular.client --group-id com.spoonacular --git-repo-id=spoonacular-api-clients/tree/master/java/ --git-user-id=ddsky --artifact-id java-client --additional-properties hideGenerationTimestamp=true -o java -c java-config.json
java -jar $GEN generate -i $SPEC -g javascript --artifact-version $VERSION --additional-properties "packageVersion=${VERSION},projectName=spoonacular" --git-repo-id=spoonacular-api-clients/tree/master/javascript/ --git-user-id=ddsky --artifact-id javascript-client -o javascript
java -jar $GEN generate -i $SPEC -g typescript --artifact-version $VERSION --additional-properties "packageVersion=${VERSION},project-name=spoonacular,packageName=spoonacular"  --git-repo-id=spoonacular-api-clients/tree/master/typescript/ --git-user-id=ddsky --artifact-id typescript-client -o typescript
java -jar $GEN generate -i $SPEC -g typescript-angular --artifact-version $VERSION --additional-properties "packageVersion=${VERSION},project-name=spoonacular,packageName=spoonacular"  --git-repo-id=spoonacular-api-clients/tree/master/angular/ --git-user-id=ddsky --artifact-id angular-client -o angular --additional-properties "npmName=spoonacular-angular"
java -jar $GEN generate -i $SPEC -g android --artifact-version $VERSION --api-package com.spoonacular --model-package com.spoonacular.client.model --invoker-package com.spoonacular.client --group-id com.spoonacular --additional-properties "packageVersion=${VERSION},project-name=spoonacular,packageName=spoonacular"  --git-repo-id=spoonacular-api-clients/tree/master/android/ --git-user-id=ddsky --artifact-id android-client -o android --additional-properties "androidGradleVersion=7.4.2,useAndroidMavenGradlePlugin=false"
java -jar $GEN generate -i $SPEC -g clojure --artifact-version $VERSION --additional-properties "packageVersion=${VERSION},project-name=spoonacular,packageName=spoonacular"  --git-repo-id=spoonacular-api-clients/tree/master/clojure/ --git-user-id=ddsky --artifact-id clojure-client -o clojure
java -jar $GEN generate -i $SPEC -g cpp-qt-client --artifact-version $VERSION --additional-properties "packageVersion=${VERSION},project-name=spoonacular,packageName=spoonacular"  --git-repo-id=spoonacular-api-clients/tree/master/cpp/ --git-user-id=ddsky --artifact-id cpp-client -o cpp
java -jar $GEN generate -i $SPEC -g csharp --artifact-version $VERSION --additional-properties "packageVersion=${VERSION},project-name=spoonacular,packageName=spoonacular"  --git-repo-id=spoonacular-api-clients/tree/master/csharp/ --git-user-id=ddsky --artifact-id csharp-client -o csharp --additional-properties "hideGenerationTimestamp=true,packageGuid={F31A0234-3AB7-4F0C-B889-AECE893F4AC5}" --name-mappings _=Underscore
java -jar $GEN generate -i $SPEC -g dart --artifact-version $VERSION --additional-properties "packageVersion=${VERSION},project-name=spoonacular,packageName=spoonacular"  --git-repo-id=spoonacular-api-clients/tree/master/dart/ --git-user-id=ddsky --artifact-id dart-client -o dart
java -jar $GEN generate -i $SPEC -g elixir --artifact-version $VERSION --additional-properties "packageVersion=${VERSION},project-name=spoonacular,packageName=spoonacular"  --git-repo-id=spoonacular-api-clients/tree/master/elixir/ --git-user-id=ddsky --artifact-id elixir-client -o elixir
java -jar $GEN generate -i $SPEC -g erlang-client --artifact-version $VERSION --additional-properties "packageVersion=${VERSION},project-name=spoonacular,packageName=spoonacular"  --git-repo-id=spoonacular-api-clients/tree/master/erlang/ --git-user-id=ddsky --artifact-id erlang-client -o erlang --name-mappings _=Underscore
java -jar $GEN generate -i $SPEC -g go --artifact-version $VERSION --additional-properties "packageVersion=${VERSION},project-name=spoonacular,packageName=spoonacular"  --git-repo-id=spoonacular-api-clients/go --git-user-id=ddsky --artifact-id go-client -o go --name-mappings _=Underscore
java -jar $GEN generate -i $SPEC -g php --artifact-version $VERSION --additional-properties "packageVersion=${VERSION},project-name=spoonacular,packageName=spoonacular"  --git-repo-id=spoonacular-api-clients/tree/master/php/ --git-user-id=ddsky --artifact-id php-client -o php
java -jar $GEN generate -i $SPEC -g python --artifact-version $VERSION --additional-properties "packageVersion=${VERSION},project-name=spoonacular,packageName=spoonacular"  --git-repo-id=spoonacular-api-clients/tree/master/python/ --git-user-id=ddsky --artifact-id python-client -o python --name-mappings _=underscore
java -jar $GEN generate -i $SPEC -g rust --artifact-version $VERSION --additional-properties "packageVersion=${VERSION},project-name=spoonacular,packageName=spoonacular"  --git-repo-id=spoonacular-api-clients/tree/master/rust/ --git-user-id=ddsky --artifact-id rust-client -o rust --name-mappings _=underscore
java -jar $GEN generate -i $SPEC -g ruby --artifact-version $VERSION --additional-properties "packageVersion=${VERSION},project-name=spoonacular,packageName=spoonacular"  --git-repo-id=spoonacular-api-clients/tree/master/ruby/ --git-user-id=ddsky --artifact-id ruby-client -o ruby
java -jar $GEN generate -i $SPEC -g lua --artifact-version $VERSION --additional-properties "packageVersion=${VERSION}-1,project-name=spoonacular,packageName=spoonacular"  --git-repo-id=spoonacular-api-clients/tree/master/lua/ --git-user-id=ddsky --artifact-id lua-client -o lua
java -jar $GEN generate -i $SPEC -g perl --artifact-version $VERSION --additional-properties "packageVersion=${VERSION},project-name=spoonacular,packageName=spoonacular"  --git-repo-id=spoonacular-api-clients/tree/master/perl/ --git-user-id=ddsky --artifact-id perl-client -o perl
java -jar $GEN generate -i $SPEC -g haskell-http-client --artifact-version $VERSION --additional-properties "packageVersion=${VERSION},project-name=spoonacular,packageName=spoonacular"  --git-repo-id=spoonacular-api-clients/tree/master/haskell/ --git-user-id=ddsky --artifact-id haskell-client -o haskell
java -jar $GEN generate -i $SPEC -g kotlin --artifact-version $VERSION --api-package com.spoonacular --model-package com.spoonacular.client.model --invoker-package com.spoonacular.client --group-id com.spoonacular --additional-properties "packageVersion=${VERSION},project-name=spoonacular,packageName=spoonacular"  --git-repo-id=spoonacular-api-clients/tree/master/kotlin/ --git-user-id=ddsky --artifact-id kotlin-client -o kotlin -c java-config.json
java -jar $GEN generate -i $SPEC -g elm --artifact-version $VERSION --additional-properties "packageVersion=${VERSION},project-name=spoonacular,packageName=spoonacular"  --git-repo-id=spoonacular-api-clients/tree/master/elm/ --git-user-id=ddsky --artifact-id elm-client -o elm --additional-properties elmPrefixCustomTypeVariants=true

# build npm package
cd javascript
npm uninstall babel
npm run build
npm publish
Remove-Item -Path node_modules -Recurse -Force
cd ..

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
.\7za.exe a -tzip .\zips\go-client.zip .\go\*
.\7za.exe a -tzip .\zips\php-client.zip .\php\*
.\7za.exe a -tzip .\zips\python-client.zip .\python\*
.\7za.exe a -tzip .\zips\rust-client.zip .\rust\*
.\7za.exe a -tzip .\zips\ruby-client.zip .\ruby\*
.\7za.exe a -tzip .\zips\lua-client.zip .\lua\*
.\7za.exe a -tzip .\zips\perl-client.zip .\perl\*
.\7za.exe a -tzip .\zips\haskell-client.zip .\haskell\*
.\7za.exe a -tzip .\zips\kotlin-client.zip .\kotlin\*
.\7za.exe a -tzip .\zips\elm-client.zip .\elm\*

Copy-Item .\zips\* D:\Software\xampp\htdocs\spoonacular\application\frontend\downloads\sdks\
