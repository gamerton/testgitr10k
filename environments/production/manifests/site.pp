
node '10.16.7.20' {
    include nginx
    nginx::resource::server { 'kibana.myhost.com':
    listen_port => 80,
    proxy       => 'http://localhost:5601',
    }
}
