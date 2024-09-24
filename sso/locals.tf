locals {
  # This is a list of users to be created in the SSO identity store
  users = [
    {
      # The display name of the user
      display_name = "John Doe"
      # The user name of the user
      user_name = "jdoe"
      # The given name of the user
      given_name = "John"
      # The family name of the user
      family_name = "Doe"
      # The email of the user
      email = "jdoe@example.com"
      # The groups the user is a member of
      groups = ["DevOps", "Developers"]
    },
    {
      # The display name of the user
      display_name = "Jane Smith"
      # The user name of the user
      user_name = "jsmith"
      # The given name of the user
      given_name = "Jane"
      # The family name of the user
      family_name = "Smith"
      # The email of the user
      email = "jsmith@example.com"
      # The groups the user is a member of
      groups = ["Developers"]
    }
  ]

  # This is a list of groups to be created in the SSO identity store
  groups = [
    {
      # The display name of the group
      display_name = "DevOps"
      # The description of the group
      description = "This is my AWS ops Group"
    },
    {
      # The display name of the group
      display_name = "Developers"
      # The description of the group
      description = "This is my AWS developer Group"
    }
  ]

}
