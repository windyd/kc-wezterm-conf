return {
	-- ref: https://wezfurlong.org/wezterm/config/lua/SshDomain.html
	ssh_domains = {
		{
			name = "3090Ti",

			remote_address = "10.147.17.98",
			username = "kevin",
			ssh_option = {
				identity_file = "/Users/kevin/.ssh/id_rsa_company",
			},
		},
	},

	-- ref: https://wezfurlong.org/wezterm/multiplexing.html#unix-domains
	unix_domains = {},

	-- ref: https://wezfurlong.org/wezterm/config/lua/WslDomain.html
	wsl_domains = {
		{
			name = "WSL:Ubuntu",
			distribution = "Ubuntu",
			username = "kevin",
			default_cwd = "/home/kevin",
			default_prog = { "fish", "-l" },
		},
	},
}
