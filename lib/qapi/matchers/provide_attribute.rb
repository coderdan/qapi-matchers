module Qapi
  module Matchers
    class ProvideAttribute
      def initialize(attribute)
        @attribute = attribute
      end

      def matches?(subject)
        @subject = subject
        @subject.class.attrs.include?(@attribute.to_s)
      end

      def failure_message
        "Expected #{@subject.class} to define #{@attribute} attribute"
      end

      def description
        "define attribute #{@attribute}"
      end
    end
  end
end
