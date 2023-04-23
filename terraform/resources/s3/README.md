# Amazon S3 Terraform Resource

## Requirements

| Name      | Version  |
| --------- | -------- |
| terraform | >= 1.4.0 |

## Providers

| Name | Version   |
| ---- | --------- |
| aws  | ~> 4.62.0 |

## Modules

No modules.

## Resources

| Name                                                                                                                                                                                  | Type     |
| ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | -------- |
| [aws_s3_bucket.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket)                                                                           | resource |
| [aws_s3_bucket_accelerate_configuration.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_accelerate_configuration)                         | resource |
| [aws_s3_bucket_acl.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_acl)                                                                   | resource |
| [aws_s3_bucket_cors_configuration.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_cors_configuration)                                     | resource |
| [aws_s3_bucket_lifecycle_configuration.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_lifecycle_configuration)                           | resource |
| [aws_s3_bucket_logging.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_logging)                                                           | resource |
| [aws_s3_bucket_notification.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_notification)                                                 | resource |
| [aws_s3_bucket_policy.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_policy)                                                             | resource |
| [aws_s3_bucket_public_access_block.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_public_access_block)                                   | resource |
| [aws_s3_bucket_request_payment_configuration.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_request_payment_configuration)               | resource |
| [aws_s3_bucket_server_side_encryption_configuration.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_server_side_encryption_configuration) | resource |
| [aws_s3_bucket_versioning.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_versioning)                                                     | resource |

## Inputs

| Name                                                                                                                                                      | Description                                                                                                             | Type          | Default         | Required |
| --------------------------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- | ------------- | --------------- | :------: |
| <a name="input_accelerate_status"></a> [accelerate_status](#input_accelerate_status)                                                                      | Transfer acceleration state of the bucket. Valid values are `Enabled` and `Suspended`.                                  | `string`      | `"Suspended"`   |    no    |
| <a name="input_acl"></a> [acl](#input_acl)                                                                                                                | Canned ACL to apply to the bucket.                                                                                      | `string`      | `"private"`     |    no    |
| <a name="input_block_public_acls"></a> [block_public_acls](#input_block_public_acls)                                                                      | Whether Amazon S3 should block public ACLs for this bucket.                                                             | `bool`        | `true`          |    no    |
| <a name="input_block_public_policy"></a> [block_public_policy](#input_block_public_policy)                                                                | Whether Amazon S3 should block public bucket policies for this bucket.                                                  | `bool`        | `true`          |    no    |
| <a name="input_bucket"></a> [bucket](#input_bucket)                                                                                                       | Name of the bucket.                                                                                                     | `string`      | n/a             |   yes    |
| <a name="input_bucket_key_enabled"></a> [bucket_key_enabled](#input_bucket_key_enabled)                                                                   | Whether or not to use Amazon S3 Bucket Keys for SSE-KMS.                                                                | `bool`        | `false`         |    no    |
| <a name="input_cors_rule"></a> [cors_rule](#input_cors_rule)                                                                                              | Dynamic block for create the cors_rule.                                                                                 | `list(any)`   | `[]`            |    no    |
| <a name="input_create_s3_bucket_cors_configuration"></a> [create_s3_bucket_cors_configuration](#input_create_s3_bucket_cors_configuration)                | Whether to create a CORS configuration for the bucket.                                                                  | `bool`        | `false`         |    no    |
| <a name="input_create_s3_bucket_lifecycle_configuration"></a> [create_s3_bucket_lifecycle_configuration](#input_create_s3_bucket_lifecycle_configuration) | Whether to create a lifecycle configuration for the bucket.                                                             | `bool`        | `false`         |    no    |
| <a name="input_create_s3_bucket_logging"></a> [create_s3_bucket_logging](#input_create_s3_bucket_logging)                                                 | Whether to create a logging configuration for the bucket.                                                               | `bool`        | `false`         |    no    |
| <a name="input_create_s3_bucket_notification"></a> [create_s3_bucket_notification](#input_create_s3_bucket_notification)                                  | Whether to create a notification configuration for the bucket.                                                          | `bool`        | `false`         |    no    |
| <a name="input_create_s3_bucket_policy"></a> [create_s3_bucket_policy](#input_create_s3_bucket_policy)                                                    | Whether to create a policy for the bucket.                                                                              | `bool`        | `false`         |    no    |
| <a name="input_expected_bucket_owner"></a> [expected_bucket_owner](#input_expected_bucket_owner)                                                          | Account ID of the expected bucket owner.                                                                                | `string`      | `null`          |    no    |
| <a name="input_force_destroy"></a> [force_destroy](#input_force_destroy)                                                                                  | Boolean that indicates all objects should be deleted from the bucket so that the bucket can be destroyed without error. | `bool`        | `false`         |    no    |
| <a name="input_ignore_public_acls"></a> [ignore_public_acls](#input_ignore_public_acls)                                                                   | Whether Amazon S3 should ignore public ACLs for this bucket.                                                            | `bool`        | `true`          |    no    |
| <a name="input_lambda_function"></a> [lambda_function](#input_lambda_function)                                                                            | Dynamic block for create the lambda_function.                                                                           | `list(any)`   | `[]`            |    no    |
| <a name="input_path"></a> [path](#input_path)                                                                                                             | Path to the policy document.                                                                                            | `string`      | `null`          |    no    |
| <a name="input_request_payer"></a> [request_payer](#input_request_payer)                                                                                  | Specifies who pays for the download and request fees. Valid values are `BucketOwner` and `Requester`.                   | `string`      | `"BucketOwner"` |    no    |
| <a name="input_restrict_public_buckets"></a> [restrict_public_buckets](#input_restrict_public_buckets)                                                    | Whether Amazon S3 should restrict public bucket policies for this bucket.                                               | `bool`        | `true`          |    no    |
| <a name="input_rule"></a> [rule](#input_rule)                                                                                                             | Dynamic block for create the lifecycle rules.                                                                           | `list(any)`   | `[]`            |    no    |
| <a name="input_sse_algorithm"></a> [sse_algorithm](#input_sse_algorithm)                                                                                  | Server-side encryption algorithm to use. Valid values are `AES256` and `aws:kms`.                                       | `string`      | `"AES256"`      |    no    |
| <a name="input_tags"></a> [tags](#input_tags)                                                                                                             | A mapping of tags to assign to the resource.                                                                            | `map(string)` | `{}`            |    no    |
| <a name="input_target_bucket"></a> [target_bucket](#input_target_bucket)                                                                                  | Name of the bucket where you want Amazon S3 to store server access logs.                                                | `string`      | `null`          |    no    |
| <a name="input_target_prefix"></a> [target_prefix](#input_target_prefix)                                                                                  | Prefix for all log object keys.                                                                                         | `string`      | `null`          |    no    |
| <a name="input_vars"></a> [vars](#input_vars)                                                                                                             | Variables to pass to the policy document.                                                                               | `map(string)` | `{}`            |    no    |
| <a name="input_versioning_status"></a> [versioning_status](#input_versioning_status)                                                                      | Versioning state of the bucket. Valid values are `Enabled`, `Suspended`, or `Disabled`.                                 | `string`      | `"Disabled"`    |    no    |

## Outputs

| Name                                                           | Description                |
| -------------------------------------------------------------- | -------------------------- |
| <a name="output_s3_bucket"></a> [s3_bucket](#output_s3_bucket) | Amazon S3 Bucket resource. |
