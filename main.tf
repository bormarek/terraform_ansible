provider "local" {}

# Wywołanie Ansible po utworzeniu lokalnego pliku
resource "null_resource" "configure_instance" {

  provisioner "local-exec" {
    command = "./run_ansible.sh"
  }
}

