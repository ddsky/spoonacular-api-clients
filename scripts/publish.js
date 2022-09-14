import { execSync } from "child_process";
import fs from "fs";
import prettier from "prettier";

execSync(`npm run clean`, { stdio: "inherit" });
execSync(`npm run build`, { stdio: "inherit" });
execSync(`cp ./package.json ./dist/package.json`, { stdio: "inherit" });
execSync(`cp ./.gitignore ./dist/.gitignore`, { stdio: "inherit" });
execSync(`cp ./LICENSE ./dist/LICENSE`, { stdio: "inherit" });

const pkgDist = JSON.parse(
  fs.readFileSync("./dist/package.json", { encoding: "utf8" })
);
const pkgOrginal = JSON.parse(
  fs.readFileSync("./javascript/package.json", { encoding: "utf8" })
);

pkgDist.name = "spoonacular-js-sdk";
pkgDist.description = "The Spoonacular JS SDK reexported with TS types";
pkgDist.types = "index.d.ts";
pkgDist.dependencies = pkgOrginal.dependencies;
delete pkgDist.scripts.publish;
delete pkgDist.type;

fs.writeFileSync(
  "./dist/package.json",
  prettier.format(JSON.stringify(pkgDist), { parser: "json" })
);

execSync(`cd dist && npm publish`, { stdio: "inherit" });
