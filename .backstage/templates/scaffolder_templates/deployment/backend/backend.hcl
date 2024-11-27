# backend.hcl
bucket         = "${{ values.solution }}-${{ values.environment }}-infra-${{ values.accountId }}"
region         = "${{ values.region }}"
dynamodb_table = "${{ values.solution }}-${{ values.environment }}-lock-${{ values.accountId }}"
encrypt        = true