prod:
	ansible-playbook -i hosts.yaml prepare_server.yaml
gitlab-runner:
	ansible-playbook -i hosts.yaml gitlab-runner.yaml
