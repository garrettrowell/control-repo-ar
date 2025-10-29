class profile::par_nginx {
  class { 'paw_nginxinc_nginx_core::nginx':
    nginx_start => false,
  }
  Par <| title == 'paw_nginxinc_nginx_core::nginx-main'|> {
    playbook => "${facts['puppet_vardir']}/lib/puppet_x/ansible_modules/nginxinc_nginx_core/roles/nginx/playbook.yml"
  }
  #par { 'deploy-nginx':
  #  playbook      => '/root/.ansible/collections/ansible_collections/nginxinc/nginx_core/playbooks/deploy-nginx.yml',
  #  playbook_vars => {
  #    'nginx_start' => false,
  #  },
  #  logoutput     => true,
  #}
}
