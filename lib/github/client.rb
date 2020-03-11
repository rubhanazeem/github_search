module Github
  class Client
    BASE_URI = 'https://api.github.com/search/repositories'

    def search(search_term: nil, page: 1, per_page: 10)
      raise ArgumentError, 'You must search for something' if search_term.nil?

      HTTParty.get("#{BASE_URI}?q=#{search_term}&per_page=#{per_page}&page=#{page}")
    end
  end
end