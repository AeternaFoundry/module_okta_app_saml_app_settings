output "app_saml_app_settings_id" {
  description = "Map of id values across all app_saml_app_settings, keyed the same as var.app_saml_app_settings except keys with no id are omitted"
  value       = { for k, v in okta_app_saml_app_settings.app_saml_app_settings : k => v.id if v.id != null && length(v.id) > 0 }
}
output "app_saml_app_settings_app_id" {
  description = "Map of app_id values across all app_saml_app_settings, keyed the same as var.app_saml_app_settings except keys with no app_id are omitted"
  value       = { for k, v in okta_app_saml_app_settings.app_saml_app_settings : k => v.app_id if v.app_id != null && length(v.app_id) > 0 }
}
output "app_saml_app_settings_settings" {
  description = "Map of settings values across all app_saml_app_settings, keyed the same as var.app_saml_app_settings except keys with no settings are omitted"
  value       = { for k, v in okta_app_saml_app_settings.app_saml_app_settings : k => v.settings if v.settings != null && length(v.settings) > 0 }
}

