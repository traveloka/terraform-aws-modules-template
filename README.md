# Terraform Aws Modules Template

This repository is a guide for our terraform module (and all repository in general) to build user friendly modules that easy to understand and self explaining. We hope this can help our team nurture opensource culture and create more welcoming to contribution. This template is not strict standard and improvisation beyond this template might produce more awesome modules.

**We write this module not only as an example but also as an explanation of how to implement this other modules**

## Prerequisites

---

Before jumping to use this module, you need to know standard knowledge of markdown language syntax.

[Markdown Language](https://www.markdownguide.org/basic-syntax)

Because specifically it explain about terraform modules, you also need to install a few tools such as

- [Terraform](https://releases.hashicorp.com/terraform/). To this date, I recommend at latest version `0.11.x` and not recommend `0.12.x` or above
- [awsudo](https://github.com/makethunder/awsudo) to assume role in AWS

## Quick Started

---

After module's code set and go, complete it with well written documentation. Start with a user friendly `README`. What is the content ? At least it explain.

- What does this project do?
- Why is this project useful?
- How do I get started?
- Where can I get more help, if I need it?

Follow along this reading to learn more. This document already explain 2 top questions above.

Standard terraform modules have an example and you can write this below in quick started section, e.g:

Copy folder example, change values in `/example/locals.tf`, after that run this scripts

```
cd /<dir>                               # Go to copied example folder
awsudo -u  <role> -- terraform init     # Initialize by downloading modules and providers
awsudo -u  <role> -- terraform plan     # See what resource will be created
awsudo -u  <role> -- terraform apply    # Apply the resource in plan
awsudo -u  <role> -- terraform destroy  # May be you change your mind ?
```

After this script run, explain what to expect, e.g:

This will add

- Instance Profile
- Auto Scaling Group
- Load Balancer Internal
- Private Link
- Route 53
- Security Group
- Security Group Rule

## Variables

---

Every terraform modules have variable and `README` is a good place to explain and help other developers not opening the `variables.tf`. e.g:

### Defaults

```
variable "application" {
  default     = "java-8"
  description = "Will be used in resources Application tag"
  type        = "string"
}
variable "asg_health_check_type" {
  default     = "EC2"
  description = "ASG health check type ELB or EC2"
  type        = "string"
}

```

### Required

```
variable "asg_max_capacity" {
  description = "The created ASG will have this number of instances at maximum"
  type        = "string"
}

variable "asg_min_capacity" {
  description = "The minimum size of the auto scaling group"
  type        = "string"
}

```

### Optional

```
variable "alb_access_logs" {
  default     = ""
  description = "Predefined Load Balancer Access Logs"
  type        = "string"
}

variable "lbint_additional_security_groups" {
  default     = []
  description = "Internal load balancer additional security groups"
  type        = "list"
}
```

## Dependencies

This section can explain dependency that needed to run module smoothly, lets say this is `acm-certificate` module

This project need dependencies:

- `vpc` module applied
- `public-route53-zone` module applied

## Versioning

This section can inform what the latest stable version that you recommend for any different case, latest change log that happen, and a link to `CHANGELOG` or `RELEASE`. It really can help others to quickly your latest work. e.g:

**Latest stable version** `v0.1.1`, 7th July 2019

**Latest version** `v0.1.2`, 10th July 2019

**Latest release** :

- Add README documentation
- Fix `managedBy` tags in `vpc` resources

Please also see our `CHANGELOG` document in this repository and see more detail

## Contributing

Contribution can come from not only code, but also idea, discussion, etc. You can explain how to contribute to this project in `CONTRIBUTION`. Please see our example of `CONTRIBUTION` document

## Authors and Contributor

For question, issue, and pull request you can contact these awesome people

- [Rafi Kurnia](https://github.com/rafikurnia) (**Author**)
- [Rukaan Adha](https://github.com/Rukaan)

## License

Last but not least, add License to modules. Most of our repository is licensed under MIT license - see the `LICENSE` file for details

## Acknowledgments

Finally, add some useful link and source and give appreciation to their share

- [Readme Template](https://gist.github.com/PurpleBooth/109311bb0361f32d87a2)
- [Friendly Readme](https://rowanmanning.com/posts/writing-a-friendly-readme/)
- [Opensource Guide](https://opensource.guide/starting-a-project/)
- Inspiration from other open source
