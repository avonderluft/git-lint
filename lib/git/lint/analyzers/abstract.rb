# frozen_string_literal: true

require "refinements/strings"

module Git
  module Lint
    module Analyzers
      # An abstract class which provides basic functionality from which all analyzers inherit from.
      class Abstract
        using ::Refinements::Strings

        LEVELS = %i[warn error].freeze
        ISSUE_LINE_OFFSET = 2

        def self.inherited klass
          super
          @descendants ||= []
          @descendants << klass unless klass.to_s.start_with? "#<Class" # Ignore anonymous classes.
        end

        def self.id = to_s.delete_prefix("Git::Lint::Analyzers").snakecase.to_sym

        def self.label = to_s.delete_prefix("Git::Lint::Analyzers").titleize

        def self.defaults
          fail NotImplementedError, "The `.#{__method__}` method must be implemented."
        end

        def self.descendants = @descendants || []

        def self.build_issue_line(index, line) = {number: index + ISSUE_LINE_OFFSET, content: line}

        attr_reader :commit

        def initialize commit:, settings: self.class.defaults
          @commit = commit
          @settings = settings
          @filter_list = load_filter_list
        end

        def enabled? = settings.fetch(:enabled)

        def severity
          settings.fetch(:severity).tap do |level|
            fail Errors::Severity, level unless LEVELS.include? level
          end
        end

        def valid?
          fail NotImplementedError, "The `##{__method__}` method must be implemented."
        end

        def invalid? = !valid?

        def warning? = invalid? && severity == :warn

        def error? = invalid? && severity == :error

        def issue
          fail NotImplementedError, "The `##{__method__}` method must be implemented."
        end

        protected

        attr_reader :settings, :filter_list

        def load_filter_list = Kit::FilterList.new(settings[:list])

        def affected_commit_body_lines
          commit.body_lines.each.with_object([]).with_index do |(line, lines), index|
            yield if block_given?
            lines << self.class.build_issue_line(index, line) if invalid_line? line
          end
        end

        def affected_commit_trailers
          commit.trailers
                .each.with_object([])
                .with_index(commit.trailers_index) do |(line, lines), index|
                  yield if block_given?
                  lines << self.class.build_issue_line(index, line) if invalid_line? line
                end
        end

        def invalid_line? _line
          fail NotImplementedError, "The `.#{__method__}` method must be implemented."
        end
      end
    end
  end
end
