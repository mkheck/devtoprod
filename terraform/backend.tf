# Uncomment and configure this file when you're ready to use a remote backend like Azure Storage

# terraform {
#   backend "azurerm" {
#     resource_group_name  = "terraform-state-rg"
#     storage_account_name = "devtoprodtfstate"
#     container_name       = "tfstate"
#     key                  = "devtoprod.terraform.tfstate"
#   }
# }