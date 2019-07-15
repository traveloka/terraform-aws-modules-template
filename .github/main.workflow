workflow "Terraform" {
  on = "pull_request"
  resolves = ["terraform-validate"]
}

action "filter-to-pr-open-synced" {
  uses = "actions/bin/filter@master"
  args = "action 'opened|synchronize|review_requested'"
}

action "terraform-fmt" {
  uses = "traveloka/terraform-github-actions/fmt@v1.0.0"
  needs = "filter-to-pr-open-synced"
  secrets = ["GITHUB_TOKEN"]
  env = {
    TF_ACTION_WORKING_DIR = "."
  }
}

action "terraform-init" {
  uses = "traveloka/terraform-github-actions/init@v1.0.0"
  needs = ["terraform-fmt"]
  secrets = ["GITHUB_TOKEN"]
  env = {
    TF_ACTION_WORKING_DIR = "."
  }
}

action "terraform-validate" {
  uses = "traveloka/terraform-github-actions/validate@v1.0.0"
  secrets = ["GITHUB_TOKEN"]
  needs = ["terraform-init"]
  env = {
    TF_ACTION_WORKING_DIR = "."
  }
}
