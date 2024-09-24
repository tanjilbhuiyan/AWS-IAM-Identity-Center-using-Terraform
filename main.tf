# This module provisions the AWS SSO service
# It will create the SSO instance, the users, groups and the permission sets
# It will also create the group membership and the user-group membership
module "sso" {
  # The source of the module is the local path ./sso
  source = "./sso"
}
