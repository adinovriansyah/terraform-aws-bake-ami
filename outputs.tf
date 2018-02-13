output "template-instance-sg" {
    value = "${aws_security_group.template.id}"
    description = "the id of the security group that this module creates. This should used by the baking AMI instances"
}

output "bake-ami-pipeline-input" {
    value = "s3://${aws_s3_bucket.bake-ami.id}/${local.bake-pipeline-input-key}"
    description = "where to store the zip file for the ami baking pipeline"
}

output "template-instance-profile" {
    value = "${aws_iam_instance_profile.template.name}"
    description = "the name of the instance profile created by this module. This should used by the baking AMI instances"
}

output "bake-buildspec" {
  value = "${data.template_file.buildspec.rendered}"
  description = "the bake-ami codebuild project's buildspec"
}
