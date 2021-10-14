module.exports = {
    test: require.resolve('@Rails/ujs'),
    use: [{
      loader: 'expose-loader',
      options: 'Rails'
     }]
  }