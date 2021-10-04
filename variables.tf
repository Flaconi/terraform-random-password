variable "keepers" {
  description = "Arbitrary map of values that, when changed, will trigger recreation of resource."
  default     = {}
  type        = map(string)
}

variable "length" {
  description = "The length of the string desired."
  default     = 16
  type        = number
}

variable "lower" {
  description = "Include lowercase alphabet characters in the result."
  default     = true
  type        = bool
}

variable "min_lower" {
  description = "Minimum number of lowercase alphabet characters in the result."
  default     = 2
  type        = number
}

variable "min_numeric" {
  description = "Minimum number of numeric characters in the result."
  default     = 2
  type        = number
}

variable "min_special" {
  description = "Minimum number of special characters in the result."
  default     = 2
  type        = number
}

variable "min_upper" {
  description = "Minimum number of uppercase alphabet characters in the result."
  default     = 2
  type        = number
}

variable "number" {
  description = "Include numeric characters in the result."
  default     = true
  type        = bool
}

variable "override_special" {
  description = "Supply your own list of special characters to use for string generation."
  default     = "!@#$%&*()-_=+[]{}<>:?"
  type        = string
}

variable "special" {
  description = "Include special characters in the result."
  default     = true
  type        = bool
}

variable "upper" {
  description = "Include uppercase alphabet characters in the result."
  default     = true
  type        = bool
}
