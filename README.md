# Terraform AWS Modules Template

[![Terraform Version](https://img.shields.io/badge/Terraform%20Version-0.11.13-blue.svg)](https://releases.hashicorp.com/terraform/)
[![Release](https://img.shields.io/github/release/traveloka/terraform-aws-modules-template.svg)](https://github.com/traveloka/terraform-aws-modules-template/releases)
[![Last Commit](https://img.shields.io/github/last-commit/traveloka/terraform-aws-modules-template.svg)](https://github.com/traveloka/terraform-aws-modules-template/commits/master)
[![Issues](https://img.shields.io/github/issues/traveloka/terraform-aws-modules-template.svg)](https://github.com/traveloka/terraform-aws-modules-template/issues)
[![Pull Requests](https://img.shields.io/github/issues-pr/traveloka/terraform-aws-modules-template.svg)](https://github.com/traveloka/terraform-aws-modules-template/pulls)
[![License](https://img.shields.io/github/license/traveloka/terraform-aws-modules-template.svg)](https://github.com/traveloka/terraform-aws-modules-template/blob/master/LICENSE)
![Open Source Love](https://badges.frapsoft.com/os/v1/open-source.png?v=103)

This repository is a guide for our terraform module (and all repository in general) to build user friendly modules that easy to understand and self explaining. We hope this can help our team nurture opensource culture and create more welcoming to contribution. This template is not strict standard and improvisation beyond this template might produce more awesome modules.

**We write this module not only as an example but also as an explanation of how to implement this other modules**

## Table of Content

- [Prerequisites](#Prerequisites)
- [Quick Start](#Quick-Start)
- [Dependencies](#Dependencies)
- [Contributing](#Contributing)
- [Contributor](#Contributor)
- [License](#License)
- [Acknowledgments](#Acknowledgments)

## Prerequisites

Before jumping to use this module, you need to know standard knowledge of markdown language syntax.

[Github Markdown](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet)

Because specifically it explain about terraform modules, you also need to install a few tools such as

- [Terraform](https://releases.hashicorp.com/terraform/). To this date, I recommend at latest version `0.11.x` and not recommend `0.12.x` or above
- [awsudo](https://github.com/makethunder/awsudo) to assume role in AWS
- [Visual Studio Code](https://code.visualstudio.com/download) is the best editor for the [Terraform Extension](https://marketplace.visualstudio.com/items?itemName=mauve.terraform). After install activate auto format by go to`File`→`Preferences`→`Settings`. Choose`Text Editor`→`Formatting`and check`Format on Save`

Terraform Providers. You don't need to download or install anything. Just make sure this is the version you use in code if it is used

- Provider [aws](https://www.terraform.io/docs/providers/aws/index.html) version `1.60.0`. We are not recommending usage of `2.0.0` and above.
- Provider [random](https://www.terraform.io/docs/providers/random/index.html) version `1.0.0`.

## Dependencies

This section can explain dependency that needed to run module, lets say this is `acm-certificate` module

This project need dependencies:

- `vpc` module applied
- `public-route53-zone` module applied

## Quick Start

After module's code set and go, complete it with well written documentation. Start with a user friendly `README`. What is the content ? At least it explain.

- What does this project do?
- Why is this project useful?
- How do I get started?
- Where can I get more help, if I need it?

Follow along this reading to learn more. This document already explain 2 top questions above.

Standard terraform modules have an example and you can write this below in quick started section, e.g:

Quick check the `variable.tf` to learn more about what you can customize, we state default value but it might not fulfill your expectation. Copy folder example, change values in `/example/locals.tf`, and After that run this scripts

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

## Versioning

This section can inform what the latest stable version that you recommend for any different case, latest change log that happen, and a link to `CHANGELOG` or `RELEASE`. It really can help others to quickly your latest work. e.g:

We use [SemVer](https://semver.org/) for our versioning

**Latest stable version** `v0.1.1`, 7th July 2019

**Latest version** `v0.1.2`, 10th July 2019

**Latest release** :

- Add README documentation
- Fix `managedBy` tags in `vpc` resources

Please also see our `CHANGELOG` document in this repository and see more detail

## Contributing

Contribution can come from not only code, but also idea, discussion, etc. You can explain how to contribute to this project in `CONTRIBUTION`. Please see our example of `CONTRIBUTION` document

## Contributor

For question, issue, and pull request you can contact these awesome people

- [Rafi Kurnia](https://github.com/rafikurnia) (**Author**)
- [Rukaan Adha](https://github.com/Rukaan)
- [Muhammad Panji](https://github.com/sumodirjo)

## License

Last but not least, add License to modules. Most of our repository is licensed under Apache License 2.0 - see the `LICENSE` file for details

## Acknowledgments

Finally, add some useful link and source and give appreciation to their share

- [Readme Template](https://gist.github.com/PurpleBooth/109311bb0361f32d87a2)
- [Friendly Readme](https://rowanmanning.com/posts/writing-a-friendly-readme/)
- [Opensource Guide](https://opensource.guide/starting-a-project/)
- Inspiration from other open source
