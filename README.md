# Playing with Convection - A fully generic, modular DSL for AWS CloudFormation
 
Convection is DSL for AWS Cloudformation. It's written as ruby gem.

< What problem does it exactly solves? >

< How is it different from cloudformation? >

< Why should i invest time to learn instead, instead of dealing with cloudformation directly?>
 
## How to install Convection?

Following instruction are for Mac OS. ( Tested only in Sierra, but should work on other versions of Mac OS)

1. Install Homebrew - It's a package manager tool for OS X. I use it for installing packages like wget and tree.
	1. https://brew.sh/ <- Follow this guide to install homebew
2. Install latest ruby
	1. brew install ruby  <- This will install latest ruby.
3. Install bundler - It's a package manager for installing ruby gems ( gems are libraries for ruby )
	1. gem install bundler
4. Install 'convection' gem
	1. Install using bundler by placing Gemfile in root folder of project and running 'bundle'
	2. gem install convection
5. Install awscli tool
	1. brew install awscli
6. Install Awsaml - is an application for providing automatically rotated temporary AWS credentials.
	1. https://github.com/rapid7/awsaml <- Follow this guide

Note: I am using RVM and happy with it.

## How to run Convection?

1. Create directory structure and files as described in getting started guide of convection

2. Switch to directory ~/my-convection-project/clouds/us-east-1/

3. convection diff 
 
Sample workflow to create basic VPC
http://rapid7.viewdocs.io/convection/getting-started/
 
## References:
http://rapid7.viewdocs.io/convection/
https://github.com/rapid7/convection

test
