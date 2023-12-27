}

func (ud *UserDatabase) Login(username, password string) {
 user, ok := ud.users[username]
 if ok {
  user.Authenticate(username, password)
 } else {
  fmt.Println("User not found. Login failed.")
 }
