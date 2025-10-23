module "rg" {
  source = "../Child/rg"
  rg_name = "rajuchacha"
  rg_location = "centralus"
}

module "stg" {
    depends_on = [ module.rg ]
  source = "../Child/stg"
  rg_name = "rajuchacha"
  rg_location = "centralus"
  storage_account_name = "rajustorageaccount"
}

module "cont" {
    depends_on = [ module.stg ]
  source = "../Child/cont"
  rg_name = "rajuchacha"
    storage_account_name = "rajustorageaccount"
}
module "app" {
    depends_on = [ module.cont ]
  source = "../Child/app"
  rg_name = "rajuchacha"
  rg_location = "centralus"
  app_name = "rajuappservice"
  storage_account_name = "rajustorageaccount"
}

