Puppet::Functions.create_function(:module_find) do
  dispacth :module_find do
    param 'String', :module_name
  end

  def module_find(module_name)
    Puppet::Module.find(module_name, closure_scope.compiler.environment)
  end
end
