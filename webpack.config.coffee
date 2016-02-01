glob = require 'glob'

module.exports = {
  #entry: {
  #  app: [
  #    "./app/assets/javascripts/main.coffee"
  #    glob.sync("./app/assets/javascripts/**/*.coffee")
  #  ]
  #},
  entry: glob.sync("./app/assets/javascripts/**/*.coffee"),
  output: {
    filename: "public/assets/[name].js"
  },
  # source-mapを出力
  devtool: "#source-map",
  module: {
    loaders: [
      {test: /\.coffee$/, loader: "coffee-loader"},
    ]
  },
  resolve: {
    # requireやimport時の拡張子を省略
    extensions: ['', '.js', '.coffee']
  }
};
