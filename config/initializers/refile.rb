# config/initializers/refile.rb
require "refile/s3"

aws = {
  access_key_id: "AKIAVK3OEJ7LA56QRJEM",
  secret_access_key: "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",
  region: "ap-northeast-1",
  bucket: "rails-photo-12345678",
}
Refile.cache = Refile::S3.new(prefix: "cache", **aws)
Refile.store = Refile::S3.new(prefix: "store", **aws)