# Create a permission set with ReadOnlyAccess policy
resource "aws_ssoadmin_permission_set" "example" {
  name             = "ReadOnlyAccess"
  instance_arn     = var.instance_arn
  session_duration = "PT2H"
}

# Attach the ReadOnlyAccess policy to the permission set
resource "aws_ssoadmin_managed_policy_attachment" "example" {
  instance_arn       = var.instance_arn
  managed_policy_arn = "arn:aws:iam::aws:policy/ReadOnlyAccess"
  permission_set_arn = aws_ssoadmin_permission_set.example.arn
}

# Assign the permission set to a group in the specified AWS account
resource "aws_ssoadmin_account_assignment" "example" {
  instance_arn       = var.instance_arn
  permission_set_arn = aws_ssoadmin_permission_set.example.arn

  # The ID of the group in the identity store
  principal_id   = var.group_ids[1]
  principal_type = "GROUP"

  # The ID of the AWS account
  target_id   = "8888888888"
  target_type = "AWS_ACCOUNT"
}
