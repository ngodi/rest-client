require 'rest-client'

class Bing
  attr_accessor :search_query, :search_results

  URL = "https://www.bing.com/search"

  def initialize(search_query)
    @search_query = earch_query
  end

  def remove_spaces
    @search_query.gsub!(/\s/, '+')
  end

  def search
    remove_spaces
    @search_results = RestClient.get URL, {params: {q: @search_query}}
  end

  def display_search_results
    p search_results.code
    p search_results.cookies
    p search_results.headers
    p search_results.body
  end
    def display_response_cookies
        p @search_results.cookies
    end

  def display_response_code
    p @search_results.code
  end

  
  def display_response_headers
    p @search_results.headers
  end

  def display_response_body
    p @search_results.body
  end
end


