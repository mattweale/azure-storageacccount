#######################################################################
## Initialise variables
#######################################################################
variable "location" {
  description = "Region"
  type        = string
  default     = "UK West"
}
variable "prefix" {
  description = "Default Naming Prefix"
  type        = string
  default     = "sacshelltest"
}
variable "tags" {
  type        = map(any)
  description = "Tags to be attached to azure resources"
  default = {
    "deployed" = "terraform"
    "env"      = "dev"
  }
}