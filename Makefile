prod:
	ansible-playbook -i hosts.yaml prepare-server.yaml
gitlab-runner:
	ansible-playbook -i hosts.yaml gitlab-runner.yaml
