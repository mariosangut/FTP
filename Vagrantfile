Vagrant.configure("2") do |config|
  config.vm.box = "bento/debian-12"
  config.vm.provider "virtualbox" do |vb| 
      vb.gui = false # headless mode | without interfaz
      vb.memory = 2048
      vb.cpus = 2
  end # vb

  config.vm.define "anonymous" do |anonymous|
    anonymous.vm.hostname = "mirror.sistema.sol"
    anonymous.vm.network "private_network", ip: "192.168.58.10",  virtualbox__intnet: "internal"
  end #anonymous

  config.vm.define "secure" do |secure|
    secure.vm.hostname = "cliente"
    secure.vm.network "private_network", ip: "192.168.58.20", virtualbox__intnet: "internal"
  end #secure
end