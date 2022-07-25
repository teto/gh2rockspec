local _MODREV, _SPECREV = "scm", "-1"
rockspec_format = "3.0"
package = "$name"
version = _MODREV .. _SPECREV

description = {
	summary = "$description",
	labels = { "neovim"},
	homepage = "$homepage",
	license = "$license",
}

dependencies = {
	"lua >= 5.1, < 5.4",
}

source = {
	url = "http://github.com/$owner/$repo/archive/v" .. _MODREV .. ".zip",
}

build = {
   type = "builtin",
   copy_directories = {
   	  'after',
	  'plugin'
   }
}
