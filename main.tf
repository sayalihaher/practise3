module "rsg" {
  source = "./modules/rsg"
  rg_name = var.rg_name
  rg_location = var.rg_location
  
}

module "vnet" {
  source = "./modules/vnet"
  rgname = module.rsg.rg_out_name
  addr = var.addr
  vnetname = "${module.rsg.rg_out_name}-vnet"
  vnet_location = module.rsg.rg_out_location
}

module "subnet" {
  source = "./modules/subnet"
  subrgname = module.rsg.rg_out_name
  vnetnamesub = module.vnet.vnet_out_name
  addrsub = var.addrsub
  subname = var.subname
}

