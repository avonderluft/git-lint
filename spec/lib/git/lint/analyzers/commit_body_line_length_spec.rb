# frozen_string_literal: true

require "spec_helper"

RSpec.describe Git::Lint::Analyzers::CommitBodyLineLength do
  subject(:analyzer) { described_class.new commit: commit }

  describe ".id" do
    it "answers class ID" do
      expect(described_class.id).to eq(:commit_body_line_length)
    end
  end

  describe ".label" do
    it "answers class label" do
      expect(described_class.label).to eq("Commit Body Line Length")
    end
  end

  describe ".defaults" do
    it "answers defaults" do
      expect(described_class.defaults).to eq(enabled: true, severity: :error, length: 72)
    end
  end

  describe "#valid?" do
    context "when valid" do
      let(:commit) { GitPlus::Commit[body_lines: ["Test."]] }

      it "answers true" do
        expect(analyzer.valid?).to eq(true)
      end
    end

    context "when invalid (single line)" do
      let :commit do
        GitPlus::Commit[
          body_lines: ["Pellentque morbi-trist sentus et netus et malesuada fames ac turpis egest."]
        ]
      end

      it "answers false" do
        expect(analyzer.valid?).to eq(false)
      end
    end

    context "when invalid (multiple lines)" do
      let :commit do
        GitPlus::Commit[
          body_lines: [
            "- Curabitur eleifend wisi iaculis ipsum.",
            "- Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante.",
            "- Donec eu_libero sit amet quam egestas semper. Aenean ultricies mi vitae est."
          ]
        ]
      end

      it "answers false" do
        expect(analyzer.valid?).to eq(false)
      end
    end
  end

  describe "#issue" do
    let(:issue) { analyzer.issue }

    context "when valid" do
      let(:commit) { GitPlus::Commit[body_lines: ["Test."]] }

      it "answers empty hash" do
        expect(issue).to eq({})
      end
    end

    context "when invalid" do
      subject :analyzer do
        described_class.new commit: commit, settings: {enabled: true, length: 55}
      end

      let :commit do
        GitPlus::Commit[
          body_lines: [
            "- Curabitur eleifend wisi iaculis ipsum.",
            "- Vestibulum tortor quam, feugiat vitae, ultricies eget bon.",
            "- Donec eu_libero sit amet quam egestas semper. Aenean ultr."
          ]
        ]
      end

      it "answers issue hint" do
        expect(issue[:hint]).to eq("Use 55 characters or less per line.")
      end

      it "answers issue lines" do
        expect(issue[:lines]).to eq(
          [
            {number: 3, content: "- Vestibulum tortor quam, feugiat vitae, ultricies eget bon."},
            {number: 4, content: "- Donec eu_libero sit amet quam egestas semper. Aenean ultr."}
          ]
        )
      end
    end
  end
end
