package test

import (
  "testing"

  "github.com/gruntwork-io/terratest/modules/terraform"
  "github.com/stretchr/testify/assert"
)

func TestTerraformPipeline(t *testing.T) {
  t.Parallel()

  tf := &terraform.Options{
    TerraformDir: "../terraform", // Path to your Terraform config
  }

  defer terraform.Destroy(t, tf)             // Cleanup resources after test
  terraform.InitAndApply(t, tf)             // Run terraform init + apply

  pipelineName := terraform.Output(t, tf, "codepipeline_name") // Updated to match output.tf
  assert.NotEmpty(t, pipelineName)
}
