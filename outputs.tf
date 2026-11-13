output "app_saml_app_settings_id" {
  description = "Map of id values across all app_saml_app_settings, keyed the same as var.app_saml_app_settings"
  value       = { for k, v in okta_app_saml_app_settings.app_saml_app_settings : k => v.id }
}
output "app_saml_app_settings_app_id" {
  description = "Map of app_id values across all app_saml_app_settings, keyed the same as var.app_saml_app_settings"
  value       = { for k, v in okta_app_saml_app_settings.app_saml_app_settings : k => v.app_id }
}
output "app_saml_app_settings_settings" {
  description = "Map of settings values across all app_saml_app_settings, keyed the same as var.app_saml_app_settings"
  value       = { for k, v in okta_app_saml_app_settings.app_saml_app_settings : k => v.settings }
}

