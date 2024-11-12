cd dist

# Sync bundles with strong cache for catalog
aws s3 sync ./common/favicons s3://$S3_ORIGIN_BUCKET/common/favicons --exclude "site.webmanifest" --metadata-directive 'REPLACE' --cache-control max-age=31536000,public,must-revalidate --delete
aws s3 sync ./common/assets s3://$S3_ORIGIN_BUCKET/common/assets --metadata-directive 'REPLACE' --cache-control max-age=31536000,public,must-revalidate --delete

# Deploy catalog application
aws s3 sync ./apps/catalog s3://$S3_ORIGIN_BUCKET/apps/catalog --metadata-directive 'REPLACE' --cache-control max-age=31536000,public,immutable --delete

# Deploy checkout application
aws s3 sync ./apps/checkout s3://$S3_ORIGIN_BUCKET/apps/checkout --metadata-directive 'REPLACE' --cache-control max-age=31536000,public,immutable --delete

# Sync HTML and other files with no cache
aws s3 sync ./ s3://$S3_ORIGIN_BUCKET --exclude "common/favicons/*" --exclude "apps/catalog/*" --exclude "apps/checkout/*" --exclude "common/assets/*" --include "common/favicons/site.webmanifest" --metadata-directive 'REPLACE' --cache-control no-cache,no-store,must-revalidate --delete