provider "aws" {
    region = "ap-south-1"
}

import {
    id = "import-bucket-punam"
    to = aws_s3_bucket.thispunam
}

import {
    id = "import-bucket-punam-2"
    to = aws_s3_bucket.thispunam2
}