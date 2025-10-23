class profile::par_nginx {
  par { 'deploy-nginx':
    ensure   => present,
    playbook => '/root/.ansible/collections/ansible_collections/nginxinc/nginx_core/playbooks/deploy-nginx.yml',
  }
}
