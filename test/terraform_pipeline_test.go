package test

import (
	"testing"

	"github.com/gruntwork-io/terratest/modules/terraform"
	"github.com/stretchr/testify/assert"
)

func TestTerraformPipeline(t *testing.T) {
	t.Parallel()

	tf := &terraform.Options{
		TerraformDir: "../terraform", // Adjust this path if your Terraform code is in a different directory
		Vars: map[string]interface{}{
			"codepipeline_name":       "my-devops-project-pipeline",
			"codestar_connection_arn": "arn:aws:codeconnections:eu-north-1:932117065109:connection/53a86147-18c6-4a50-b31e-4b3aecd20069",
		},
	}

	defer terraform.Destroy(t, tf) // Clean up resources after test
	terraform.InitAndApply(t, tf) // Initialize and apply Terraform

	pipelineName := terraform.Output(t, tf, "codepipeline_name")
	assert.Equal(t, "my-devops-project-pipeline", pipelineName)
}
