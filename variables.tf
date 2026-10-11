variable "compute_instant_snapshot_iam_bindings" {
  description = <<EOT
Map of compute_instant_snapshot_iam_bindings, attributes below
Required:
    - members
    - name
    - role
Optional:
    - project
    - zone
    - condition (block):
        - description (optional)
        - expression (required)
        - title (required)
EOT

  type = map(object({
    members = set(string)
    name    = string
    role    = string
    project = optional(string)
    zone    = optional(string)
    condition = optional(object({
      description = optional(string)
      expression  = string
      title       = string
    }))
  }))
}

