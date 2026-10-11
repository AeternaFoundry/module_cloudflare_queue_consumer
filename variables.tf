variable "queue_consumers" {
  description = <<EOT
Map of queue_consumers, attributes below
Required:
    - account_id
    - queue_id
    - type
Optional:
    - dead_letter_queue
    - script_name
    - settings
EOT

  type = map(object({
    account_id        = string
    queue_id          = string
    type              = string
    dead_letter_queue = optional(string)
    script_name       = optional(string)
    settings = optional(object({
      batch_size            = optional(number)
      max_concurrency       = optional(number)
      max_retries           = optional(number)
      max_wait_time_ms      = optional(number)
      retry_delay           = optional(number)
      visibility_timeout_ms = optional(number)
    }))
  }))
}

