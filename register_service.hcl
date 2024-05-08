service {
  name = "counting"
  id = "counting-1"
  port = 9003

# service connect upstream
connect {
  sidecar_service {}
}

# service connect downstream (dependent)
connect {
  sidecar_service {
    proxy {
      upstreams = [
        {
          destination_name = "counting"
          local_bind_port = 5000
        }
      ]
    }
  }
}
  
  check {
    id       = "counting-check"
    http     = "http://localhost:9003/health"
    method   = "GET"
    interval = "1s"
    timeout  = "1s"
  }
}
