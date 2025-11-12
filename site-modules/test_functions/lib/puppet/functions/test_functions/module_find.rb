Puppet::Functions.create_function(:'test_functions::module_find') do
  dispatch :module_find do
    param 'String', :module_name
  end

  def module_find(module_name)
    Puppet::Module.find(module_name, closure_scope.compiler.environment).inspect
  end
end
