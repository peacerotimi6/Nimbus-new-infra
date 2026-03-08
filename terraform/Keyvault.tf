# Wait for RBAC propagation
resource "time_sleep" "wait_for_kv_rbac" {
  depends_on      = [azurerm_role_assignment.you_kv_admin_at_rg]
  create_duration = "60s"
}

resource "azurerm_key_vault" "kv" {
  depends_on = [time_sleep.wait_for_kv_rbac]

  name                       = local.kv_name
  location                   = azurerm_resource_group.rg.location
  resource_group_name        = azurerm_resource_group.rg.name
  tenant_id                  = data.azurerm_client_config.current.tenant_id
  sku_name                   = var.kv_sku
  enable_rbac_authorization  = true
  soft_delete_retention_days = 7
  purge_protection_enabled   = false
  tags                       = var.tags
}
