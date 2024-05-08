Kind = "service-intentions"
Name = "counting" #service upstream
#service downstream:
Sources = [
  {
    Name = "dashboard"
    Action = "allow"
  }
]
