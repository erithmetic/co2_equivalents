module CO2Equivalents
  class Group
    class << self
      def description(value = nil)
        if value
          @description = value
        end
        @description
      end

      def citation(*args)
        @citations ||= []
        citation = Citation.new *args
        @citations.push(citation)
        citation
      end

      def citations
        @citations
      end

      def equivalent(*args)
        args.unshift self
        CO2Equivalents.register *args
      end
    end
  end
end
