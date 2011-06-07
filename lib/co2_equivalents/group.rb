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
        equivalent = CO2Equivalents.register *args
        equivalences[equivalent.name] = equivalent
        equivalent
      end

      def equivalences
        @equivalences ||= {}
      end
    end
  end
end
