class Map < ActiveRecord::Base

  def jobsearch(jobs, city, state)
    HTTParty.get("http://service.dice.com/api/rest/jobsearch/v1/simple.json?text=#{jobs}&city=#{city},+#{state}&sort=0")
  end
end