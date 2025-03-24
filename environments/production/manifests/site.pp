
node 'ecs-test-test-0001.zvq.me' {
    include nginx
    nginx::resource::server { 'kibana.myhost.com':
    listen_port => 80,
    proxy       => 'http://localhost:5601',
    }
}
