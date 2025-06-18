provider "azurerm" {
  features {}

  subscription_id = "1c798538-1b49-4bf7-b045-dab5112646c2"
}

module "dev_backend" {
  source = "./modules/backend"
  environment = "dev"
}

module "test_backend" {
  source = "./modules/backend"
  environment = "test"
}

module "prod_backend" {
  source = "./modules/backend"
  environment = "prod"
}
