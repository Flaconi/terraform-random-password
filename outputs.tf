output "password" {
  value     = random_password.this.result
  sensitive = true
}

output "password_as_list" {
  value     = split("", random_password.this.result)
  sensitive = true
}

output "password_as_json" {
  value     = jsonencode({ "password" = random_password.this.result })
  sensitive = true
}

output "password_as_yaml" {
  value     = yamlencode({ "password" = random_password.this.result })
  sensitive = true
}

output "password_b64" {
  value     = base64encode(random_password.this.result)
  sensitive = true
}

output "password_md5" {
  value     = md5(random_password.this.result)
  sensitive = true
}

output "password_sha1" {
  value     = sha1(random_password.this.result)
  sensitive = true
}

output "password_sha256" {
  value     = sha256(random_password.this.result)
  sensitive = true
}

output "password_sha512" {
  value     = sha512(random_password.this.result)
  sensitive = true
}
