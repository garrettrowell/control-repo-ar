# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include test_functions
class test_functions {
  $mod = test_functions::module_find('test_functions')
  notify { "Module path is ${mod}": }
}
