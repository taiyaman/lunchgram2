# config/initializers/refile.rb
require "refile/s3"

aws = {
  access_key_id: "AKIAVK3OEJ7LILXCQGGH",
  secret_access_key: "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",
  region: "ap-northeast-1",
  bucket: "Rails-photo-123456",
}
Refile.cache = Refile::S3.new(prefix: "cache", **aws)
Refile.store = Refile::S3.new(prefix: "store", **aws)