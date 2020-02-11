const path = require("path");

module.exports = {
  mode: 'development',
  entry: path.resolve(__dirname, "./lib/puzzle.js"),
  output: {
    filename: "build/application.js"
  },
  devtool: "sourcemap"
};
