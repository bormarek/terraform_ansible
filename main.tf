provider "local" {}

# Lokalny plik konfiguracyjny
resource "local_file" "example_config" {
  content  = "To jest przykładowy plik konfiguracyjny."
  filename = "example_config.txt"
}

# Wywołanie Ansible po utworzeniu lokalnego pliku
resource "null_resource" "configure_instance" {
  depends_on = [local_file.example_config]

  provisioner "local-exec" {
    command = "./run_ansible.sh"
  }
}

