resource "okta_app_saml_app_settings" "app_saml_app_settings" {
  for_each = var.app_saml_app_settings

  app_id   = each.value.app_id
  settings = each.value.settings
}

