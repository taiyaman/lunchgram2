# config/initializers/refile.rb
require "refile/s3"

aws = {
  access_key_id: "AKIAVK3OEJ7LBXM5N6BE",
  secret_access_key: "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",
  region: "ap-northeast-1",
  bucket: "rails-photo-12345678",
}
Refile.cache = Refile::S3.new(prefix: "cache", **aws)
Refile.store = Refile::S3.new(prefix: "store", **aws)