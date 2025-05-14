Feature: Asset Subtypes and AutoML Workflow Creation

  @smoke @regression
  Scenario: Create Asset Subtypes in IDP for AutoML
    Given the user is logged into the IDP
    When the user navigates to the Asset Subtypes section
    And the user creates a new Asset Subtype for AutoML
    Then the Asset Subtype should be successfully created
    And the Asset Subtype should be listed in the Asset Subtypes overview

  @smoke @regression
  Scenario: Create Datasets from Asset Subtypes
    Given the user has created an Asset Subtype for AutoML
    When the user selects the Asset Subtype
    And the user creates a new dataset from the selected Asset Subtype
    Then the dataset should be successfully created
    And the dataset should be listed in the Datasets overview

  @smoke @regression
  Scenario: Select AutoML Model for Dataset Training
    Given the user has created a dataset
    When the user selects the dataset
    And the user chooses the AutoML model type as "Classification"
    Then the AutoML model should be set for the dataset
    And the dataset should be ready for training

  @smoke @regression
  Scenario: Create Workflow for Trained Models
    Given the user has trained a model using the dataset
    When the user navigates to the Workflows section
    And the user creates a new workflow for the trained model
    Then the workflow should be successfully created
    And the workflow should be listed in the Workflows overview

  @smoke @regression
  Scenario: Test Feature Using Try It Feature
    Given the user has created a workflow for the trained model
    When the user navigates to the Try It feature
    And the user selects the created workflow
    Then the feature should execute successfully
    And the results should match the expected output of the trained model
```