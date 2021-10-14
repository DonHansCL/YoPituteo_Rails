const { environment } = require('@rails/webpacker')

const webpack = require('webpack')

environment.plugins.prepend('Provide',
  new webpack.ProvidePlugin({
    $: 'jquery',
    jQuery: 'jquery',
    Popper: ['popper.js', 'default'],
    toastr: 'toastr/toastr',
    ApexCharts: ['apexcharts', 'default'],
    underscore: ['underscore', 'm'],
    Rails: ['@rails/ujs']
  })
)

module.exports = environment