require 'convection'

module Templates
  VPC = Convection.template do
    description 'VPC with Public and Private Subnets (NAT)'

    ec2_vpc 'DemoVPC' do
      network '10.0.0.0/16'
      tag 'Name', "#{stack.cloud}-#{stack.name}"
    end

    ec2_subnet 'PrivateSubnet' do
      network '10.0.1.0/24'
      tag 'Name', "#{stack.cloud}-#{stack.name}-private"
      vpc fn_ref('DemoVPC')
    end

    ec2_subnet 'PublicSubnet' do
      network '10.0.2.0/24'
      tag 'Name', "#{stack.cloud}-#{stack.name}-public"
      vpc fn_ref('DemoVPC')
      public_ips true
    end

    ec2_security_group 'NATSecurityGroup' do
      description 'NAT access for private subnet'
      vpc fn_ref('DemoVPC')
      tag 'Name', "#{stack.cloud}-#{stack.name}-nat-security-group"
      ingress_rule :tcp, 443 do
        source '10.0.1.0/24'
      end
      ingress_rule :tcp, 80 do
        source '10.0.1.0/24'
      end
      egress_rule :tcp, 443 do
        source '0.0.0.0/0'
      end
      egress_rule :tcp, 80 do
        source '0.0.0.0/0'
      end
    end
  end
end
