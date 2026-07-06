output "cosmosdb_cassandra_clusters" {
  description = "All cosmosdb_cassandra_cluster resources"
  value       = azurerm_cosmosdb_cassandra_cluster.cosmosdb_cassandra_clusters
  sensitive   = true
}
output "cosmosdb_cassandra_clusters_authentication_method" {
  description = "List of authentication_method values across all cosmosdb_cassandra_clusters"
  value       = [for k, v in azurerm_cosmosdb_cassandra_cluster.cosmosdb_cassandra_clusters : v.authentication_method]
}
output "cosmosdb_cassandra_clusters_client_certificate_pems" {
  description = "List of client_certificate_pems values across all cosmosdb_cassandra_clusters"
  value       = [for k, v in azurerm_cosmosdb_cassandra_cluster.cosmosdb_cassandra_clusters : v.client_certificate_pems]
}
output "cosmosdb_cassandra_clusters_default_admin_password" {
  description = "List of default_admin_password values across all cosmosdb_cassandra_clusters"
  value       = [for k, v in azurerm_cosmosdb_cassandra_cluster.cosmosdb_cassandra_clusters : v.default_admin_password]
  sensitive   = true
}
output "cosmosdb_cassandra_clusters_delegated_management_subnet_id" {
  description = "List of delegated_management_subnet_id values across all cosmosdb_cassandra_clusters"
  value       = [for k, v in azurerm_cosmosdb_cassandra_cluster.cosmosdb_cassandra_clusters : v.delegated_management_subnet_id]
}
output "cosmosdb_cassandra_clusters_external_gossip_certificate_pems" {
  description = "List of external_gossip_certificate_pems values across all cosmosdb_cassandra_clusters"
  value       = [for k, v in azurerm_cosmosdb_cassandra_cluster.cosmosdb_cassandra_clusters : v.external_gossip_certificate_pems]
}
output "cosmosdb_cassandra_clusters_external_seed_node_ip_addresses" {
  description = "List of external_seed_node_ip_addresses values across all cosmosdb_cassandra_clusters"
  value       = [for k, v in azurerm_cosmosdb_cassandra_cluster.cosmosdb_cassandra_clusters : v.external_seed_node_ip_addresses]
}
output "cosmosdb_cassandra_clusters_hours_between_backups" {
  description = "List of hours_between_backups values across all cosmosdb_cassandra_clusters"
  value       = [for k, v in azurerm_cosmosdb_cassandra_cluster.cosmosdb_cassandra_clusters : v.hours_between_backups]
}
output "cosmosdb_cassandra_clusters_identity" {
  description = "List of identity values across all cosmosdb_cassandra_clusters"
  value       = [for k, v in azurerm_cosmosdb_cassandra_cluster.cosmosdb_cassandra_clusters : v.identity]
}
output "cosmosdb_cassandra_clusters_location" {
  description = "List of location values across all cosmosdb_cassandra_clusters"
  value       = [for k, v in azurerm_cosmosdb_cassandra_cluster.cosmosdb_cassandra_clusters : v.location]
}
output "cosmosdb_cassandra_clusters_name" {
  description = "List of name values across all cosmosdb_cassandra_clusters"
  value       = [for k, v in azurerm_cosmosdb_cassandra_cluster.cosmosdb_cassandra_clusters : v.name]
}
output "cosmosdb_cassandra_clusters_repair_enabled" {
  description = "List of repair_enabled values across all cosmosdb_cassandra_clusters"
  value       = [for k, v in azurerm_cosmosdb_cassandra_cluster.cosmosdb_cassandra_clusters : v.repair_enabled]
}
output "cosmosdb_cassandra_clusters_resource_group_name" {
  description = "List of resource_group_name values across all cosmosdb_cassandra_clusters"
  value       = [for k, v in azurerm_cosmosdb_cassandra_cluster.cosmosdb_cassandra_clusters : v.resource_group_name]
}
output "cosmosdb_cassandra_clusters_tags" {
  description = "List of tags values across all cosmosdb_cassandra_clusters"
  value       = [for k, v in azurerm_cosmosdb_cassandra_cluster.cosmosdb_cassandra_clusters : v.tags]
}
output "cosmosdb_cassandra_clusters_version" {
  description = "List of version values across all cosmosdb_cassandra_clusters"
  value       = [for k, v in azurerm_cosmosdb_cassandra_cluster.cosmosdb_cassandra_clusters : v.version]
}

