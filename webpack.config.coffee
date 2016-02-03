glob = require 'glob'
path = require 'path'
_    = require 'lodash'

module.exports = {
  entry: {
    app: [
      path.join __dirname, "app/assets/javascripts/main.coffee"
      path.join __dirname, "tmp/assets/build.coffee"
    ]
  }
  output: {
    filename: "public/assets/app.js"
  }
  # source-mapを出力
  devtool: "#source-map",
  module: {
    loaders: [
      {test: /\.coffee$/, loader: "coffee-loader"}
    ]
  }
  resolve: {
    # requireやimport時の拡張子を省略
    extensions: ['', '.js', '.coffee']
  }
}
