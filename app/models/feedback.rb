before_create :add_token
private
def add_token
  begin
    self.token = SecureRandom.hex[0,10].upcase
  end while self.class.exists?(token: token)
end
