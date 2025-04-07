function fn() {
  var env = karate.env;
  karate.log('karate.env:', env);

  if (!env) {
    env = 'qa';
  }

  var config = {
    baseUrl: 'https://jsonplaceholder.typicode.com',
    apiKey: 'abc123xyz456'
  };

  if (env == 'dev') {
    config.baseUrl = 'https://jsonplaceholder.typicode.com';

  } else if (env == 'qa') {
    config.baseUrl = 'https://reqres.in';
  }

  // hook útil para imprimir todas las solicitudes y respuestas
  karate.configure('logPrettyRequest', true);
  karate.configure('logPrettyResponse', true);

  return config;
}