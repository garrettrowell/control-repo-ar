class profile::par_nginx {
  class { 'paw_nginxinc_nginx_core::nginx':
    nginx_start => false,
  }
  #par { 'deploy-nginx':
  #  playbook      => '/root/.ansible/collections/ansible_collections/nginxinc/nginx_core/playbooks/deploy-nginx.yml',
  #  playbook_vars => {
  #    'nginx_start' => false,
  #  },
  #  logoutput     => true,
  #}
}
