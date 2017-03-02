require 'convection'

module Templates
  VPC = Convection.template do
    description 'VPC with Public and Private Subnets (NAT)'

    ec2_vpc 'DemoVPC' do
      network '10.10.10.0/16'
      tag 'Name', "#{stack.cloud}-#{stack.name}"
    end
  end
end