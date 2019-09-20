job "website" {
datacenters = ["dc1"]

	group "example" {
		task "server" {
			driver = "exec"

			config {
				command = "echo"
				args = [
					"hello",
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