# rdydev
![develop](https://github.com/m0xfff/rdydev/actions/workflows/rspec.yml/badge.svg?branch=develop)
[![Ruby Style Guide](https://img.shields.io/badge/code_style-standard-brightgreen.svg)](https://github.com/testdouble/standard)

Welcome to the `rdydev` project! This project aims to familiarize developers with the systems and procedures we use. This repository provides you with a sandbox to learn and experiment with our technology stack.

## Table of Contents

- [Getting Started](#getting-started)
- [Prerequisites](#prerequisites)
- [Installation](#installation)
  - [Dev Containers](#dev-containers)
- [Forking the Repository](#forking-the-repository)
- [Issues](#issues)
  - [Understanding Issues](#understanding-issues)
- [Software Development Lifecycle](#software-development-lifecycle)
  - [Feature Flags vs. Feature Branches](#feature-flags-vs-feature-branches)
- [Contributing](#contributing)
- [Resources](#resources)
- [Support](#support)
- [License](#license)

## Getting Started

To start working on this project, you'll need to set up your development environment. This guide will walk you through using dev containers.

## Prerequisites

Before you start, please ensure you have the following installed:

-   [Git](https://git-scm.com/)
-   [Docker](https://www.docker.com/) 

Additionally, please ensure you have performed the following:

- Create an SSH key: Follow the instructions in the [GitHub guide](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent) to create and add your SSH key to your GitHub account.
- Create a signing key: Follow the instructions in the [GitHub guide](https://docs.github.com/en/authentication/managing-commit-signature-verification/about-commit-signature-verification) to create and add your GPG key to your GitHub account.

## Installation

### Dev Containers

The `rdydev` project supports development using dev containers, which allow you to work on the application from your own machine or in GitHub Codespaces. To get started, follow these steps:

1.  Install [Docker](https://www.docker.com/) and [Visual Studio Code](https://code.visualstudio.com/).
2.  Install the [Remote - Containers](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers) extension for Visual Studio Code.
3.  Clone the `rdydev` repository: `git clone https://github.com/m0xfff/rdydev.git`
4.  Open the cloned `rdydev` folder in Visual Studio Code.
5.  Press `F1`, type `Remote-Containers: Reopen in Container`, and press `Enter`.

Visual Studio Code will then build the dev container and open the project within it. You can now start working on the application. Alternatively, you can develop in Github Codespaces.

[![Open in GitHub Codespaces](https://github.com/codespaces/badge.svg)](https://github.com/codespaces/new?hide_repo_select=true&ref=develop&repo=601419333)

## Forking the Repository

To get started, fork the repository by clicking the "Fork" button in the top-right corner of the GitHub page. This will create a copy of the repository under your GitHub account, where you can make changes and submit pull requests.

## Issues

Upon forking the repository, the GitHub issue tracker should include some issues that are ready to go. Pick an issue you'd like to work on, create a new branch for that issue, and start coding. When you're ready, submit a pull request to the original `rdydev` repository.

### Understanding Issues

An "issue" is a unit of work that represents a task, bug, or feature in the project. Each issue includes the following sections:

-   **Background:** Provides context and information about the issue.
-   **Requirements:** Specifies what needs to be done in order to resolve the issue.
-   **Acceptance Criteria:** Defines the conditions that must be met for the issue to be considered complete.

Issues also have attributes like "weight" and "priority" that help us estimate the effort required and decide which tasks to tackle first.

## Software Development Lifecycle

Our development process follows the Software Development Lifecycle (SDLC), which consists of the following steps:

1.  **Sprint Planning:** At the beginning of each sprint, the development team reviews and estimates the effort required for each issue by assigning "weights."
2.  **Committing to Work:** The team decides which issues to commit to the sprint based on priority and available resources.
3.  **Developing Features:** We use a trunk-based development workflow, merging work into the `develop` branch as soon as the acceptance criteria are met. Feature flags are used to disable incomplete features.
4.  **Review and Feedback:** Completed work is reviewed and feedback is provided for improvement.
5.  **Deployment:** Once all the issues in the sprint are completed, the new features and bug fixes are deployed.

Here's a quick overview of the `git` commands used throughout the SDLC:

-   `git clone`: Clone the repository to your local machine.
-   `git checkout -b your-branch-name`: Create a new branch for your feature.
-   `git add .`: Stage all changes for commit.
-   `git commit -m "Your commit message"`: Commit your changes with a descriptive message.
-   `git push -u origin your-branch-name`: Push your changes to the remote repository.
-   Open a pull request on GitHub to merge your changes into the `develop` branch.

### Feature Flags vs. Feature Branches

Feature flags are a way to enable or disable features in a codebase without modifying the code. They provide some advantages over feature branches:

-   **Faster Integration:** With feature flags, you can merge work into the `develop` branch as soon as it meets the acceptance criteria, which reduces integration conflicts.
-   **Easier Testing:** Feature flags allow you to test features in isolation or combination without needing to manage multiple branches.
-   **Gradual Rollout:** You can enable or disable features for specific users or environments, making it easier to roll out new features gradually.

However, there are also some disadvantages:

-   **Increased Complexity:** Managing feature flags can add complexity to the codebase and require additional maintenance.
-   **Potential Technical Debt:** Unused feature flags or poorly managed flags can lead to technical debt.

## Contributing

We appreciate your contributions to the `rdydev` project. To contribute, please follow the [forking workflow](https://www.atlassian.com/git/tutorials/comparing-workflows/forking-workflow). Make sure to submit a pull request when your changes are ready for review.

## Resources

-   [Ruby on Rails Guides](https://guides.rubyonrails.org/v4.2/)
-   [MySQL 8 Documentation](https://dev.mysql.com/doc/refman/8.0/en/)

## Support

If you have any questions or need assistance, please reach out to the team on [slack](https://readytech-group.slack.com/archives/C04TLUTS5QF) or contact the [maintainer](https://github.com/m0xfff).
