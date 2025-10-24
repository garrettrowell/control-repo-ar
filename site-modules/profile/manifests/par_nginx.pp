class profile::par_nginx {
  par { 'deploy-nginx':
    playbook      => '/root/.ansible/collections/ansible_collections/nginxinc/nginx_core/playbooks/deploy-nginx.yml',
    playbook_vars => {
      'nginx_start' => false,
    },
    logoutput     => true,
  }
}
