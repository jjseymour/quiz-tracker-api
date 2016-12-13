class Auth

  ALGORITHM='HS256'

  def self.issue(payload)
    JWT.encode(payload, secret_key, ALGORITHM)
  end

  def self.decode(payload)
    JWT.decode(payload, secret_key, true, {algorithm: ALGORITHM})
    binding.pry
  end

  def self.secret_key
    # ENV["SECRET_KEY"]
    # temp key
    "b632b9fb9544bb74a005026113e235b09212f2c92c1704b8544a0c86ef109dd45f21a1606c4eb3c56def7a61bdc48698592a18bfcbe9887206086e765debfaa2"
  end
end
