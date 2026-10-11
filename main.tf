resource "cloudflare_queue_consumer" "queue_consumers" {
  for_each = var.queue_consumers

  account_id        = each.value.account_id
  queue_id          = each.value.queue_id
  type              = each.value.type
  dead_letter_queue = each.value.dead_letter_queue
  script_name       = each.value.script_name
  settings          = each.value.settings
}

