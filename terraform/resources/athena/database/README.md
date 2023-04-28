# Amazon Athena Database Terraform Resource

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

| Name                                                                                                                    | Type     |
| ----------------------------------------------------------------------------------------------------------------------- | -------- |
| [aws_athena_database.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/athena_database) | resource |

## Inputs

| Name                                                                     | Description                                                      | Type     | Default                  | Required |
| ------------------------------------------------------------------------ | ---------------------------------------------------------------- | -------- | ------------------------ | :------: |
| <a name="input_bucket"></a> [bucket](#input_bucket)                      | Name of S3 bucket to save the results of the query execution.    | `string` | n/a                      |   yes    |
| <a name="input_comment"></a> [comment](#input_comment)                   | Description of the database.                                     | `string` | `"Managed by Terraform"` |    no    |
| <a name="input_force_destroy"></a> [force_destroy](#input_force_destroy) | When destroying this database, destroy even if it contains data. | `bool`   | `false`                  |    no    |
| <a name="input_name"></a> [name](#input_name)                            | Name of the database to create.                                  | `string` | n/a                      |   yes    |

## Outputs

| Name                                                                             | Description                      |
| -------------------------------------------------------------------------------- | -------------------------------- |
| <a name="output_athena_database"></a> [athena_database](#output_athena_database) | Amazon Athena Database resource. |
