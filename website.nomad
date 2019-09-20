job "website" {
datacenters = ["dc1"]

	group "example" {
		task "batch" {
			driver = "raw_exec"

			config {
				command = "cmd"
				args = [
					"mkdir", "stuff",
				]
			}

			resources {
				network {
					mbits = 10
					port "http" {}
				}
			}
		}
	}
}