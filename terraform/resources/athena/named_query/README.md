# Amazon Athena Named Query Terraform Resource

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

| Name                                                                                                                          | Type     |
| ----------------------------------------------------------------------------------------------------------------------------- | -------- |
| [aws_athena_named_query.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/athena_named_query) | resource |

## Inputs

| Name                                                               | Description                                      | Type          | Default                  | Required |
| ------------------------------------------------------------------ | ------------------------------------------------ | ------------- | ------------------------ | :------: |
| <a name="input_database"></a> [database](#input_database)          | Database to which the query belongs.             | `string`      | n/a                      |   yes    |
| <a name="input_description"></a> [description](#input_description) | Description of the query.                        | `string`      | `"Managed by Terraform"` |    no    |
| <a name="input_name"></a> [name](#input_name)                      | Name of the query.                               | `string`      | n/a                      |   yes    |
| <a name="input_path"></a> [path](#input_path)                      | Path to the query file.                          | `string`      | n/a                      |   yes    |
| <a name="input_vars"></a> [vars](#input_vars)                      | Map of variables to be passed to the query file. | `map(string)` | `{}`                     |    no    |
| <a name="input_workgroup"></a> [workgroup](#input_workgroup)       | Workgroup to which the query belongs.            | `string`      | `"primary"`              |    no    |

## Outputs

| Name                                                                                      | Description                         |
| ----------------------------------------------------------------------------------------- | ----------------------------------- |
| <a name="output_athena_named_query"></a> [athena_named_query](#output_athena_named_query) | Amazon Athena Named Query resource. |
