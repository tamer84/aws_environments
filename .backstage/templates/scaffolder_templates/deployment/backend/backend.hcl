# backend.hcl
bucket         = "${{ values.solution }}-${{ values.environment }}-infra-${{ values.account_id }}"
region         = "${{ values.region }}"
dynamodb_table = "${{ values.solution }}-${{ values.environment }}-lock-${{ values.account_id }}"
encrypt        = true