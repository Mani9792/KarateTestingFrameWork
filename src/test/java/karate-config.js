function fn() {
  var env = karate.env; // get system property 'karate.env'
  karate.log('karate.env system property was:', env);
  if (!env) {
    env = 'dev';
  }
  var config = {
    env: env,
    myVarName: 'someValue',
    baseUrl: ''
  }
  if (env == 'dev') {
    config.baseUrl = 'https://dev.reqres.in/api/users';
  } else if (env == 'qa') {
    config.baseUrl = 'https://qa.reqres.in/api/users';
  } else if (env == 'prod') {
    config.baseUrl = 'https://prod.reqres.in/api/users';
  }
  return config;
}
