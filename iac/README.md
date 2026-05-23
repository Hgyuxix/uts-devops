# Infrastructure as Code - Ansible

## Cara Menjalankan (jika Ansible terinstall)

Install Ansible:
  sudo apt install ansible -y

Jalankan playbook:
  ansible-playbook -i inventory.ini playbook.yml

## Penjelasan Konfigurasi

- playbook.yml : mendefinisikan tugas otomatis di server
- inventory.ini: mendefinisikan server yang dikelola
