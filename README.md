Karate API Test Framework

Welcome to the Karate API Testing Project! This project is designed to provide a robust and user-friendly framework for API testing using the Karate DSL. Whether you're an experienced tester or just getting started, this repository offers everything you need to test APIs effectively and efficiently.

Table of Contents

Overview

Features

Setup

Usage

Folder Structure

Writing Tests

Running Tests

Reporting

Contributing

Overview

Karate is a powerful API testing framework that simplifies the process of writing, executing, and managing API tests. This project leverages Karate's capabilities to:

Validate RESTful APIs

Automate API workflows

Integrate with CI/CD pipelines

Features

Easy to Use: Write tests in a readable, Gherkin-like syntax.

Powerful Assertions: Built-in JSON and XML comparison support.

Reusability: Modularize tests for reusability and maintainability.

Seamless Integration: Compatible with Jenkins, GitHub Actions, and other CI/CD tools.

Comprehensive Reporting: Generate detailed HTML reports.

Setup

Prerequisites

Java Development Kit (JDK): Version 11 or later.

Maven: Ensure Maven is installed and added to your PATH.

Clone the Repository

git clone https://github.com/seflekL/karate_api.git
cd karate_api

Install Dependencies

Run the following Maven command to install all required dependencies:

mvn clean install

Usage

Running Tests

Execute all tests using Maven:

mvn test

Specific Test Suite

To run a specific test, use:

mvn test -Dkarate.options="classpath:features/<feature_name>.feature"

Generating Reports

Generate detailed test reports:

mvn clean test-compile

Reports will be located in the target/surefire-reports directory.

Folder Structure

karate_api/
├── src/
│   ├── test/
│   │   ├── java/
│   │   ├── resources/
│   │   │   └── features/
│   │   │       └── example.feature
│   │   └── karate-config.js
├── pom.xml

features/: Contains all feature files for API testing.

karate-config.js: Global configuration for Karate tests.

pom.xml: Maven configuration file.

Writing Tests

Tests are written in .feature files using Gherkin syntax. Here's an example:

Feature: Test an example API endpoint

  Scenario: Validate the response status and content
    Given url 'https://example.com/api'
    When method GET
    Then status 200
    And match response == { "message": "success" }

Contributing

We welcome contributions! Please follow these steps:

Fork the repository.

Create a new branch for your feature or bug fix.

Submit a pull request.

For any questions or feedback, feel free to open an issue in this repository.
