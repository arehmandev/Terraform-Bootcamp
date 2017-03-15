# DevOps Bootcamp: AWS-Terraform

Each folder is a task to be completed through the bootcamp.
The final task brings them all together as modules


Remember:

- terraform fmt - cleans up your code formatting
- terraform get - retrieves your modules
- terraform plan - plans the AWS infrastructure
- terraform apply - creates the AWS infrastructure
- terraform graph | dot -Tpng > graph.png - create a rough chart of your infrastructure (requires graphviz e.g. brew install graphviz)

misc:
terraform validate - checks the code for errors (usually found in plan anyway)
variables.tf - where you list the name and type of the variables
terraform.tfvars - where you list the actual value of the variable


Think of modules as 'apis' 
- Outputs used to refer to resources in other modules
- Make anything you require from another module a variable - then insert any outputs in the "main.tf" where the module is called
- When you run terraform get, the modules are retrieved into the ".terraform" folder.
- Take care never to tamper with your .tfstate

Homework:

- Look into remote state
- Create an S3 Bucket and push your state to the S3 Bucket.
- Look into interpolation syntax e.g. conditionals, lookup, merge, values, keys etc
- Look at the amazing 0.9 Terraform changelog
