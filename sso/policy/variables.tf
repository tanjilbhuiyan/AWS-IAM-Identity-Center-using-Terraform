# This variable contains the ARN of the AWS SSO instance
# It is required to create the permission set and assign it to the groups
variable "instance_arn" {
  type        = string
  description = "The ARN of the AWS SSO instance"
}

# This variable contains a list of group IDs
# It is required to assign the permission set to the groups
variable "group_ids" {
  type        = list(string)
  description = "A list of group IDs to assign the permission set to"
}
