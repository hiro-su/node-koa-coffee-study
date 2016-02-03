glob = require 'glob'
path = require 'path'
_    = require 'lodash'

console.log _.uniq [
  path.join __dirname, "app/assets/javascripts/main.coffee"
  path.join __dirname, "tmp/assets/build.coffee"
].concat(glob.sync(path.join(__dirname, "app/assets/javascripts/**/*.coffee")))

module.exports = {
  entry: {
    app: [
      path.join __dirname, "app/assets/javascripts/main.coffee"
      path.join __dirname, "public"
    ]
    #glob.sync(path.join(__dirname, "app/assets/javascripts/**/*.coffee"))
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
