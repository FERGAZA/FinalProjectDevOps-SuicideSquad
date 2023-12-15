variable "resource_group_name" {
  type    = string
  default = "your-default-resource-group-name"
}

variable "location" {
  type    = string
  default = "your-default-location"
}

variable "app_service_plan_name" {
  type    = string
  default = "your-default-app-service-plan-name"
}

variable "service_plan" {
  type    = string
  default = "your-default-service-plan"

}

variable "backend_app_name" {
  type    = string
  default = "your-default-backend-app-name"
}

variable "frontend_app_name" {
  type    = string
  default = "your-default-frontend-app-name"
}

variable "operating_system" {
  type    = string
  default = "your-default-operating-system"
}

variable "pricing_tier" {
  type    = string
  default = "your-default-pricing-tier"
}

variable "sku_tier" {
  type    = string
  default = "your-default-sku-tier"
}

variable "sku_size" {
  type    = string
  default = "your-default-sku-size"
}

