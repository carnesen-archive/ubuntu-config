module.exports = {
  apps: [
    {
      name: 'mathjs-app',
      script: './bin/www.js',
      env: {
        NODE_ENV: 'production'
      }
    }
  ]
}
