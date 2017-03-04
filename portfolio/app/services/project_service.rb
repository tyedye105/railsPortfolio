class Project

def self.get_all
  response = HTTParty.get("https://api.github.com/users/tyedye105/repos?access_token=#{ENV['GH_API_KEY']}&per_page=100")
  end

end
