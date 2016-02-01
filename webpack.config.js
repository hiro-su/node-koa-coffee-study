module.exports = {
  entry: {
    app: ["./src/entry.js"]
  },
  output: {
    filename: "build/[name].js"
  },
  // source-mapを出力
  devtool: "#source-map",
  module: {
    // ローダ設定
    loaders: [
      {test: /\.js$/, loader: "babel"},
      {test: /\.coffee$/, loader: "coffee"},
    ]
  },
  resolve: {
    // requireやimport時の拡張子を省略
    extensions: ['', '.js', '.coffee']
  },
};
