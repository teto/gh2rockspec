local MODREV, SPECREV = "scm", "-1"
rockspec_format = "3.0"
package = "$name"
version = MODREV .. SPECREV

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
	url = "http://github.com/$owner/$repo/archive/v" .. MODREV .. ".zip",
}

if MODREV == "scm" then
	source = {
		url = "git://github.com/$owner/$repo",
	}
end

build = {
   type = "builtin",
   copy_directories = {
   	  'after',
	  'plugin'
   }
}
