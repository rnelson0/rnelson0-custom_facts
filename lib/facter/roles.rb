# ([a-z]+)[0-9]+, i.e. www01 or logger22 have a puppet_role of www or logger
if Facter.value(:hostname) =~ /^([a-z]+)[0-9]+$/
  Facter.add('puppet_role') do
    setcode {$1}
  end

# ([a-z]+), i.e. www or logger have a puppet_role of www or logger
elsif Facter.value(:hostname) =~ /^([a-z]+)$/
  Facter.add('puppet_role') do
    setcode {$1}
  end

# Set to hostname if no patterns match
else
  Facter.add('puppet_role') do
    setcode 'default'
  end
end
