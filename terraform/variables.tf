variable "app_name" {
  description = "The name of the application"
  type        = string
  default     = "devtoprodapp"
}

variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
  default     = "devtoprodrg"
}

variable "location" {
  description = "The Azure region where resources will be created"
  type        = string
  default     = "eastus"
}

variable "container_cpu" {
  description = "CPU cores allocated to container (0.25, 0.5, 0.75, 1.0, etc.)"
  type        = number
  default     = 0.5
}

variable "container_memory" {
  description = "Memory allocated to container in GB (0.5, 1.0, 1.5, etc.)"
  type        = string
  default     = "1.0Gi"
}

variable "min_replicas" {
  description = "Minimum number of container replicas"
  type        = number
  default     = 1
}

variable "max_replicas" {
  description = "Maximum number of container replicas"
  type        = number
  default     = 3
}

variable "tags" {
  description = "Tags to apply to all resources"
  type        = map(string)
  default = {
    environment = "production"
    app         = "devtoprod"
    managed_by  = "terraform"
  }
}