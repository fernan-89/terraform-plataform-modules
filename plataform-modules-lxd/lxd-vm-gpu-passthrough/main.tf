resource "lxd_instance" "this" {
  name    = var.vm_name
  image   = var.image
  project = var.project_name
  type    = "virtual-machine"

  config {
    "limits.cpu"    = var.cpu
    "limits.memory" = var.memory
    # Necessário para habilitar dispositivos PCI
    "raw.qemu"      = "-device vfio-pci,host=var.pci_address"
  }
}

# Adicionar o dispositivo de GPU via PCI
resource "lxd_instance_device" "gpu" {
  instance_name = lxd_instance.this.name
  name          = "gpu0"
  type          = "gpu"
  
  properties = {
    "pci" = var.pci_address
  }
}
