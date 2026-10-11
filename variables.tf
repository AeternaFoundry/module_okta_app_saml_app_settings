variable "app_saml_app_settings" {
  description = <<EOT
Map of app_saml_app_settings, attributes below
Required:
    - app_id
    - settings
EOT

  type = map(object({
    app_id   = string
    settings = string
  }))
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

