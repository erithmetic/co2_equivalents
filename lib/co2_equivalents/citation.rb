module CO2Equivalents
  class Citation
    attr_accessor :url, :title, :author

    def initialize(url, deets = {})
      self.url = url
      deets.each do |deet, value|
        self.send "#{deet}=", value
      end
    end
  end
end
