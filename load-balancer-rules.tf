resource "azurerm_lb_rule" "load_balancer_01_rule_01" {
  resource_group_name            = azurerm_resource_group.azure_demo.name
  loadbalancer_id                = azurerm_lb.load_balancer_01.id
  name                           = "load-balancer-01-rule-01"
  protocol                       = "Tcp"
  frontend_port                  = 80
  backend_port                   = 80
  frontend_ip_configuration_name = "PublicIPAddress"
  backend_address_pool_id        = azurerm_lb_backend_address_pool.backend_address_pool_01.id
  probe_id                       = azurerm_lb_probe.load_balancer_01_probe_01.id
  load_distribution              = "SourceIPProtocol"
  disable_outbound_snat          = true
}

resource "azurerm_lb_rule" "load_balancer_01_rule_02" {
  resource_group_name            = azurerm_resource_group.azure_demo.name
  loadbalancer_id                = azurerm_lb.load_balancer_01.id
  name                           = "load-balancer-01-rule-02"
  protocol                       = "Tcp"
  frontend_port                  = 443
  backend_port                   = 443
  frontend_ip_configuration_name = "PublicIPAddress"
  backend_address_pool_id        = azurerm_lb_backend_address_pool.backend_address_pool_01.id
  probe_id                       = azurerm_lb_probe.load_balancer_01_probe_01.id
  load_distribution              = "SourceIPProtocol"
  disable_outbound_snat          = true
}
