# Installing and setting up Ansible
  ```
  sudo apt update
  ``` 
  
  ```
  sudo apt install ansible -y
  ```

  ```
  ansible --version
  ```

## Creating ansible folder

  ```
  mkdir ansible_workspace
  ```

## Add hosts and their connections
  ```
  nano hosts
  ```

## Adding an inventory for hosts
  ```
  nano ansible.cfg
  ```
  ```
  ansible all --list-hosts
  ```
# Creating Prometheus and Grafana Playbooks

  ## Here we add our Prometheus config which is in the prometheus.yml
  ```
  sudo nano /etc/prometheus.yml
  ```

  ### We run the playbook
  ```
  ansible-playbook install_prometheus.yml
  ```
  ### We check if it has been installed correctly
  ```
  systemctl status prometheus
  ```

  ### We run the playbook
  ```
  ansible-playbook install_grafana.yml
  ```
  ### We check if it has been installed correctly
  ```
  systemctl status grafana-server
  ```