# Managing infrastructure as code with Terraform, Cloud Build, & Github

If you need to redeploy to the cloud or another cloud provider, 
the following link will help a lot to understand the basic process 
of deploying to various providers:
https://learn.hashicorp.com/terraform

If you need to make changes to the infrastructure, 
it is actually setup to automatically propagate all the way up, 
if something fails, just rollback to a previous version of this repo in github
and then push that version as a change