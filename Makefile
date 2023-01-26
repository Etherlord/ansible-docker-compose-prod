prod:
	ansible-playbook -i hosts.yaml prepare-server.yaml
gitlab-runner:
	ansible-playbook -i hosts.yaml gitlab-runner.yaml
node-exporter:
	ansible-playbook -i hosts.yaml node-exporter.yaml
