variable "project_id" {
  description = "The project ID to manage the Cloud SQL resources"
}

variable "project_name" {
  description = "The project name to manage the Cloud SQL resources"
  default     = "MySQL-Cluster"
}

variable "project_env" {
  description = "The project ENV of the Cloud SQL resources"
  default     = "production"
}

variable "project_env_short" {
  description = "The short ENV of the Cloud SQL resources"
  default     = "prd"
}

variable "time_zone" {
  description = "The Time zone of the Cloud SQL resources"
  default     = "+09:00"
}

variable "region" {
  description = "The region of the Cloud SQL resources"
  default     = "us-west1"
}

// Terraform remote state for vpc:
variable "terraform_remote_state_bucket" { default = "" }
variable "terraform_remote_state_key" { default = "" }
variable "terraform_remote_state_region" { default = "" }
variable "terraform_remote_state_profile" { default = "" }
variable "terraform_remote_state_arn" { default = "" }

// Private connection:
variable "cloud_sql_ip_name" {
  description = "The IP name of the Cloud SQL resources"
  default     = "cloud-sql-ip"
}

variable "cloud_sql_ip" {
  description = "The IP of the Cloud SQL resources"
  default     = "192.168.0.0"
}

variable "cloud_sql_prefix" {
  description = "The IP prefix of the Cloud SQL resources"
  default     = "24"
}

// Master
variable "name" {
  description = "The name of the Cloud SQL resources"
  default     = ""
}

variable "tier" {
  description = "The tier for the master instance."
  default     = "db-f1-micro"
}

variable "zone" {
  description = "The zone for the master instance, it should be something like: `a`, `c`."
}

variable "activation_policy" {
  description = "The activation policy for the master instance. Can be either `ALWAYS`, `NEVER` or `ON_DEMAND`."
  default     = "ALWAYS"
}

variable "authorized_gae_applications" {
  description = "The list of authorized App Engine project names"
  default     = []
}

variable "disk_autoresize" {
  description = "Configuration to increase storage size"
  default     = true
}

variable "disk_size" {
  description = "The disk size for the master instance"
  default     = 10
}

variable "disk_type" {
  description = "The disk type for the master instance."
  default     = "PD_SSD"
}

variable "pricing_plan" {
  description = "The pricing plan for the master instance."
  default     = "PER_USE"
}

variable "maintenance_window_day" {
  description = "The day of week (1-7) for the master instance maintenance."
  default     = 1
}

variable "maintenance_window_hour" {
  description = "The hour of day (0-23) maintenance window for the master instance maintenance."
  default     = 3
}

variable "maintenance_window_update_track" {
  description = "The update track of maintenance window for the master instance maintenance. Can be either `canary` or `stable`."
  default     = "canary"
}

variable "database_flags" {
  description = "The database flags for the master instance. See [more details](https://cloud.google.com/sql/docs/mysql/flags)"
  default     = []
}

variable "user_labels" {
  default     = {}
  description = "The key/value labels for the master instances."
}

variable "backup_configuration" {
  default     = {}
  description = "The backup configuration block of the Cloud SQL resources"
}

variable "ip_configuration" {
  description = "The ip configuration for the master instance."
  default     = {}
}

variable "database_version" {
  description = "The database version to use"
  default     = "MYSQL_5_6"
}

variable "backup_start_time" {
  description = "The Backup Time of the Cloud SQL resources"
  default     = "02:00"
}

// Read Replicas

variable "read_replica_configuration" {
  description = "The replica configuration for use in all read replica instances."
  default     = {}
}

variable "read_replica_size" {
  description = "The size of read replicas"
  default     = 0
}

variable "read_replica_tier" {
  description = "The tier for the read replica instances."
  default     = "db-f1-micro"
}

variable "read_replica_zones" {
  description = "The zones for the read replica instancess, it should be something like: `a,b,c`. Given zones are used rotationally for creating read replicas."
  default     = ""
}

variable "read_replica_activation_policy" {
  description = "The activation policy for the read replica instances. Can be either `ALWAYS`, `NEVER` or `ON_DEMAND`."
  default     = "ALWAYS"
}

variable "read_replica_crash_safe_replication" {
  description = "The crash safe replication is to indicates when crash-safe replication flags are enabled."
  default     = true
}

variable "read_replica_disk_autoresize" {
  description = "Configuration to increase storage size for the read replica instances."
  default     = true
}

variable "read_replica_disk_size" {
  description = "The disk size for the read replica instances."
  default     = 10
}

variable "read_replica_disk_type" {
  description = "The disk type for the read replica instances."
  default     = "PD_SSD"
}

variable "read_replica_pricing_plan" {
  description = "The pricing plan for the read replica instances."
  default     = "PER_USE"
}

variable "read_replica_replication_type" {
  description = "The replication type for read replica instances. Can be one of ASYNCHRONOUS or SYNCHRONOUS."
  default     = "ASYNCHRONOUS"
}

variable "read_replica_database_flags" {
  description = "The database flags for the read replica instances. See [more details](https://cloud.google.com/sql/docs/mysql/flags)"
  default     = []
}

variable "read_replica_user_labels" {
  default     = {}
  description = "The key/value labels for the read replica instances."
}

variable "read_replica_maintenance_window_day" {
  description = "The day of week (1-7) for the read replica instances maintenance."
  default     = 1
}

variable "read_replica_maintenance_window_hour" {
  description = "The hour of day (0-23) maintenance window for the read replica instances maintenance."
  default     = 3
}

variable "read_replica_maintenance_window_update_track" {
  description = "The update track of maintenance window for the read replica instances maintenance. Can be either `canary` or `stable`."
  default     = "canary"
}

// Failover replica

variable "failover_replica" {
  description = "Specify true if the failover instance is required"
  default     = false
}

variable "failover_replica_configuration" {
  description = "The replica configuration for the failover replica instance. In order to create a failover instance, need to specify this argument."
  default     = {}
}

variable "failover_replica_tier" {
  description = "The tier for the failover replica instance."
  default     = ""
}

variable "failover_replica_zone" {
  description = "The zone for the failover replica instance, it should be something like: `a`, `c`."
  default     = ""
}

variable "failover_replica_crash_safe_replication" {
  description = "The crash safe replication is to indicates when crash-safe replication flags are enabled."
  default     = true
}

variable "failover_replica_disk_size" {
  description = "The disk size for the failover replica instance."
  default     = 10
}

variable "failover_replica_disk_type" {
  description = "The disk type for the failover replica instance."
  default     = "PD_SSD"
}

variable "failover_replica_pricing_plan" {
  description = "The pricing plan for the failover replica instance."
  default     = "PER_USE"
}

variable "failover_replica_replication_type" {
  description = "The replication type for the failover replica instance. Can be one of ASYNCHRONOUS or SYNCHRONOUS."
  default     = "SYNCHRONOUS"
}

variable "failover_replica_database_flags" {
  description = "The database flags for the failover replica instance. See [more details](https://cloud.google.com/sql/docs/mysql/flags)"
  default     = []
}

variable "failover_replica_ip_configuration" {
  description = "The ip configuration for the failover replica instances."
  default     = {}
}

variable "failover_replica_user_labels" {
  default     = {}
  description = "The key/value labels for the failover replica instance."
}

variable "failover_replica_maintenance_window_day" {
  description = "The day of week (1-7) for the failover replica instance maintenance."
  default     = 7
}

variable "failover_replica_maintenance_window_hour" {
  description = "The hour of day (0-23) maintenance window for the failover replica instance maintenance."
  default     = 19
}

variable "failover_replica_maintenance_window_update_track" {
  description = "The update track of maintenance window for the failover replica instance maintenance. Can be either `canary` or `stable`."
  default     = "canary"
}

variable "failover_replica_disk_autoresize" {
  description = "Configuration to increase storage size."
  default     = true
}

variable "failover_replica_activation_policy" {
  description = "The activation policy for the failover replica instance. Can be either `ALWAYS`, `NEVER` or `ON_DEMAND`."
  default     = "ALWAYS"
}


// Database and User:
variable "db_name" {
  description = "The name of the default database to create"
  default     = "default"
}

variable "db_charset" {
  description = "The charset for the default database"
  default     = ""
}

variable "db_collation" {
  description = "The collation for the default database. Example: 'utf8_general_ci'"
  default     = ""
}

variable "additional_databases" {
  description = "A list of databases to be created in your cluster"
  default     = []
}

variable "user_name" {
  description = "The name of the default user"
  default     = "default"
}

variable "user_host" {
  description = "The host for the default user"
  default     = "%"
}

variable "user_password" {
  description = "The password for the default user. If not set, a random one will be generated and available in the generated_user_password output variable."
  default     = ""
}

variable "additional_users" {
  description = "A list of users to be created in your cluster"
  default     = []
}

// Terraform vars for commands:
variable create_timeout {
  description = "The optional timout that is applied to limit long database creates."
  default     = "30m"
}

variable update_timeout {
  description = "The optional timout that is applied to limit long database updates."
  default     = "30m"
}

variable delete_timeout {
  description = "The optional timout that is applied to limit long database deletes."
  default     = "30m"
}
