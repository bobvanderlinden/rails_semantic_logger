module RailsSemanticLogger
  class SidekiqLogger < SimpleDelegator
    def initialize(semantic_logger)
      super
    end

    def with_context(context)
      SidekiqLogger.new(logger(context))
    end
  end
end
