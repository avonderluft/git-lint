# frozen_string_literal: true

require "refinements/hashes"

module Git
  module Lint
    # Collects and categorizes all issues (if any) of branch commits.
    class Collector
      using ::Refinements::Hashes

      def initialize
        @collection = Hash.new { |default, missing_id| default[missing_id] = [] }
      end

      def add analyzer
        collection[analyzer.commit] << analyzer
        analyzer
      end

      def retrieve(id) = collection[id]

      def empty? = collection.empty?

      def warnings? = collection.values.flatten.any?(&:warning?)

      def errors? = collection.values.flatten.any?(&:error?)

      def issues? = collection.values.flatten.any?(&:invalid?)

      def total_warnings = collection.values.flatten.count(&:warning?)

      def total_errors = collection.values.flatten.count(&:error?)

      def total_issues = collection.values.flatten.count(&:invalid?)

      def total_commits = collection.keys.size

      def to_h = collection

      private

      attr_reader :collection
    end
  end
end
