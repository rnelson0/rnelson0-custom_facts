# ([a-z]+)[0-9]+, i.e. www01 or logger22 have a puppet_role of www or logger
if Facter.value(:hostname) =~ /^([a-z]+)[0-9]+$/
  Facter.add('puppet_role') do
    setcode {$1}
  end
end
