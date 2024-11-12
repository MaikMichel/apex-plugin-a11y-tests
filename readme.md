
# APEX Plugin - Run Accessibility Test

![](https://img.shields.io/badge/APEX%20Versions-23.1%20--%2024.1-green)   ![](https://img.shields.io/badge/Plug--In%20Type-Dynamic--Action-orange)

- [What it does](#what-it-does)
- [Release History](#release-history)
- [Usage](#usage)
- [Installation](#installation)


## What it does

The "Run Accessibility Test" plugin performs accessibility tests on the respective page. The plugin can easily be executed via a Dynamic Action, for example, on page 0 during a specific event (KeyUp) or each time a page loads. The plugin uses the axe-core library to run the tests and is initially supplied here in version 4.10.2. (https://github.com/dequelabs/axe-core)

![](docs\screen-record-show-plugin-with-companion-app.gif)

## Release History

- 1.0.0
  - Initial Version



## Usage

Ideally, create a Dynamic Action based on a specific event (PageLoad, KeyRelease, ButtonClick) and use the plugin as the action. The plugin can be configured using two attributes.

### 1. Run with Tags

You can specify the tags separated by colons. You can find which tags you can use here: https://www.deque.com/axe/core-documentation/api-documentation/#axecore-tags

### 2. Store Results

With this toggle, the test results are written to a table. This table, "a11y_results," is part of the companion app ally-view, which is also included in this repository.



## Installation

- Download Release Zip File from latest release
- Unzip content

### Install Plugin

- Log in to the workspace
- Click on Import
- Select the plugin and upload file: `dist/de_die21_apex_a11y.sql`

### Install Companion APP

- Log in to the workspace
- Click on Import
- Select the Application and upload file: `dist/a11y-view-f111.sql`

### Install DEMO App

- Log in to the workspace
- Click on Import
- Select the Application and upload file: `dist/a11y-tasks-demo-f101.sql`


## Sample APP

To be able to try everything out, a sample application is included with the project. This was created using the sample dataset for projects and tasks and the wizard. The sample application already includes the plugin and can test the current page using "Alt+T".

Just visit: ![Screeshot](https://github.com/MaikMichel/apex-plugin-a11y-tests/blob/main/docs/screenshot-showing-a11y-view-board.png?raw=true)
