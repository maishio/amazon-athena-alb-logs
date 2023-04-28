# Amazon Athena Workgroup Terraform Resource

## Requirements

| Name      | Version  |
| --------- | -------- |
| terraform | ~> 1.4.0 |

## Providers

| Name | Version   |
| ---- | --------- |
| aws  | ~> 4.57.0 |

## Modules

No modules.

## Resources

| Name                                                                                                                      | Type     |
| ------------------------------------------------------------------------------------------------------------------------- | -------- |
| [aws_athena_workgroup.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/athena_workgroup) | resource |

## Inputs

| Name                                                                                                                                    | Description                                                                                                               | Type          | Default                  | Required |
| --------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------- | ------------- | ------------------------ | :------: |
| <a name="input_bytes_scanned_cutoff_per_query"></a> [bytes_scanned_cutoff_per_query](#input_bytes_scanned_cutoff_per_query)             | Integer for the upper data usage limit (cutoff) for the amount of bytes a single query in a workgroup is allowed to scan. | `number`      | `0`                      |    no    |
| <a name="input_description"></a> [description](#input_description)                                                                      | Description of the workgroup.                                                                                             | `string`      | `"Managed by Terraform"` |    no    |
| <a name="input_encryption_option"></a> [encryption_option](#input_encryption_option)                                                    | It specifies whether query results must be encrypted, for all queries that run in this workgroup.                         | `string`      | n/a                      |   yes    |
| <a name="input_enforce_workgroup_configuration"></a> [enforce_workgroup_configuration](#input_enforce_workgroup_configuration)          | Boolean whether the settings for the workgroup override client-side settings.                                             | `bool`        | `true`                   |    no    |
| <a name="input_force_destroy"></a> [force_destroy](#input_force_destroy)                                                                | When destroying this workgroup, destroy even if the workgroup contains any named queries.                                 | `bool`        | `false`                  |    no    |
| <a name="input_kms_key"></a> [kms_key](#input_kms_key)                                                                                  | ARN of the KMS key that is used to encrypt query results.                                                                 | `string`      | `null`                   |    no    |
| <a name="input_name"></a> [name](#input_name)                                                                                           | Name of the workgroup.                                                                                                    | `string`      | n/a                      |   yes    |
| <a name="input_output_location"></a> [output_location](#input_output_location)                                                          | Location in Amazon S3 where your query results are stored, such as `s3://path/to/query/bucket/`.                          | `string`      | `null`                   |    no    |
| <a name="input_publish_cloudwatch_metrics_enabled"></a> [publish_cloudwatch_metrics_enabled](#input_publish_cloudwatch_metrics_enabled) | Boolean whether Amazon CloudWatch metrics are enabled for the workgroup.                                                  | `bool`        | `true`                   |    no    |
| <a name="input_requester_pays_enabled"></a> [requester_pays_enabled](#input_requester_pays_enabled)                                     | If set to true , allows members assigned to a workgroup to reference Amazon S3 Requester Pays buckets in queries.         | `bool`        | `false`                  |    no    |
| <a name="input_selected_engine_version"></a> [selected_engine_version](#input_selected_engine_version)                                  | Requested engine version.                                                                                                 | `string`      | `"AUTO"`                 |    no    |
| <a name="input_state"></a> [state](#input_state)                                                                                        | State of the workgroup.                                                                                                   | `string`      | `"ENABLED"`              |    no    |
| <a name="input_tags"></a> [tags](#input_tags)                                                                                           | Key-value map of resource tags for the workgroup.                                                                         | `map(string)` | `{}`                     |    no    |

## Outputs

| Name                                                                                | Description                       |
| ----------------------------------------------------------------------------------- | --------------------------------- |
| <a name="output_athena_workgroup"></a> [athena_workgroup](#output_athena_workgroup) | Amazon Athena Workgroup resource. |
