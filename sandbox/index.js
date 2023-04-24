const fs = require("fs");
const path = require("path");

// console.log(__dirname,__filename);
//console.log(fs.readdirSync(__dirname));
const baseName = path.basename(__filename);

fs.readdirSync(__dirname)
  .filter((fileName) => /\.js$/.test(fileName) && fileName !== baseName)
  .forEach((fileName) => {
    const absPathToFile = path.resolve(__dirname, fileName);
    console.log(absPathToFile);
    const model = require(absPathToFile);
  });
