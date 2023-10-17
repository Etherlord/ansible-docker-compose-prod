prod:
	ansible-playbook -i hosts.yaml prepare-server.yaml
node-exporter:
	ansible-playbook -i hosts.yaml node-exporter.yaml
software-upgrade:
	ansible-playbook -i hosts.yaml software-upgrade.yaml
