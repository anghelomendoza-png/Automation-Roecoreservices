function fn() {

    var config = {
        baseUrl: 'https://ww2test.labroe.com/roecoreservices_preprod_digital',

        endpoints: {
            login: '/api/security/login',
            consultarConsentimiento: '/api/consentimiento/consultar-por-paciente'
        },

        authUser: 'RWBLAB',
        authPassword: 'W3bS3rv1c3!2021'
    };

    karate.configure('connectTimeout', 10000);
    karate.configure('readTimeout', 30000);

    var auth = karate.callSingle(
        'classpath:helpers/login-token.feature',
        config
    );

    config.accessToken = auth.accessToken;

    return config;
}