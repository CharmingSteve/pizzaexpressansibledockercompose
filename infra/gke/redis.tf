resource "helm_release" "redis" {
  name  = "redis"
  chart = "./helm-chart-redis/"

  values = [
    file("./helm-chart-redis/values.yaml")
  ]
}
