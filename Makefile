ANSIBLE_FLAGS=-u root -i hosts -e "ansible_python_interpreter=/usr/bin/python"

.PHONY:
changelog:
	git log --oneline > Changelog.txt

.PHONY:
install:
	 ansible-playbook $(ANSIBLE_FLAGS)  site.yml
