# frozen_string_literal: true

require "dry/schema"
require "etcher"

Dry::Schema.load_extensions :monads

module Git
  module Lint
    module Configuration
      Contract = Dry::Schema.Params do
        required(:commits_author_capitalization_enabled).filled :bool
        required(:commits_author_capitalization_severity).filled :string
        required(:commits_author_email_enabled).filled :bool
        required(:commits_author_email_severity).filled :string
        required(:commits_author_name_enabled).filled :bool
        required(:commits_author_name_severity).filled :string
        required(:commits_author_name_minimum).filled :integer
        required(:commits_body_bullet_capitalization_enabled).filled :bool
        required(:commits_body_bullet_capitalization_severity).filled :string
        required(:commits_body_bullet_capitalization_includes).array :string
        required(:commits_body_bullet_delimiter_enabled).filled :bool
        required(:commits_body_bullet_delimiter_severity).filled :string
        required(:commits_body_bullet_delimiter_includes).array :string
        required(:commits_body_bullet_only_enabled).filled :bool
        required(:commits_body_bullet_only_severity).filled :string
        required(:commits_body_bullet_only_includes).array :string
        required(:commits_body_leading_line_enabled).filled :bool
        required(:commits_body_leading_line_severity).filled :string
        required(:commits_body_line_length_enabled).filled :bool
        required(:commits_body_line_length_severity).filled :string
        required(:commits_body_line_length_maximum).filled :integer
        required(:commits_body_paragraph_capitalization_enabled).filled :bool
        required(:commits_body_paragraph_capitalization_severity).filled :string
        required(:commits_body_phrase_enabled).filled :bool
        required(:commits_body_phrase_severity).filled :string
        required(:commits_body_phrase_excludes).array :string
        required(:commits_body_presence_enabled).filled :bool
        required(:commits_body_presence_severity).filled :string
        required(:commits_body_presence_minimum).filled :integer
        required(:commits_body_tracker_shorthand_enabled).filled :bool
        required(:commits_body_tracker_shorthand_severity).filled :string
        required(:commits_body_tracker_shorthand_excludes).array :string
        required(:commits_signature_enabled).filled :bool
        required(:commits_signature_severity).filled :string
        required(:commits_signature_includes).array :string
        required(:commits_subject_length_enabled).filled :bool
        required(:commits_subject_length_severity).filled :string
        required(:commits_subject_length_maximum).filled :integer
        required(:commits_subject_prefix_enabled).filled :bool
        required(:commits_subject_prefix_severity).filled :string
        required(:commits_subject_prefix_delimiter).filled :string
        required(:commits_subject_prefix_includes).array :string
        required(:commits_subject_suffix_enabled).filled :bool
        required(:commits_subject_suffix_severity).filled :string
        required(:commits_subject_suffix_excludes).array :string
        required(:commits_trailer_collaborator_capitalization_enabled).filled :bool
        required(:commits_trailer_collaborator_capitalization_severity).filled :string
        required(:commits_trailer_collaborator_email_enabled).filled :bool
        required(:commits_trailer_collaborator_email_severity).filled :string
        required(:commits_trailer_collaborator_key_enabled).filled :bool
        required(:commits_trailer_collaborator_key_severity).filled :string
        required(:commits_trailer_collaborator_key_includes).array :string
        required(:commits_trailer_collaborator_name_enabled).filled :bool
        required(:commits_trailer_collaborator_name_severity).filled :string
        required(:commits_trailer_collaborator_name_minimum).filled :integer
        required(:commits_trailer_duplicate_enabled).filled :bool
        required(:commits_trailer_duplicate_severity).filled :string
        required(:commits_trailer_format_key_enabled).filled :bool
        required(:commits_trailer_format_key_severity).filled :string
        required(:commits_trailer_format_key_includes).array :string
        required(:commits_trailer_format_value_enabled).filled :bool
        required(:commits_trailer_format_value_severity).filled :string
        required(:commits_trailer_format_value_includes).array :string
        required(:commits_trailer_issue_key_enabled).filled :bool
        required(:commits_trailer_issue_key_severity).filled :string
        required(:commits_trailer_issue_key_includes).array :string
        required(:commits_trailer_issue_value_enabled).filled :bool
        required(:commits_trailer_issue_value_severity).filled :string
        required(:commits_trailer_issue_value_includes).array :string
        required(:commits_trailer_milestone_key_enabled).filled :bool
        required(:commits_trailer_milestone_key_severity).filled :string
        required(:commits_trailer_milestone_value_enabled).filled :bool
        required(:commits_trailer_milestone_value_severity).filled :string
        required(:commits_trailer_milestone_value_includes).array :string
        required(:commits_trailer_order_enabled).filled :bool
        required(:commits_trailer_order_severity).filled :string
        required(:commits_trailer_reviewer_key_enabled).filled :bool
        required(:commits_trailer_reviewer_key_severity).filled :string
        required(:commits_trailer_reviewer_value_enabled).filled :bool
        required(:commits_trailer_reviewer_value_severity).filled :string
        required(:commits_trailer_reviewer_value_includes).array :string
        required(:commits_trailer_signer_capitalization_enabled).filled :bool
        required(:commits_trailer_signer_capitalization_severity).filled :string
        required(:commits_trailer_signer_email_enabled).filled :bool
        required(:commits_trailer_signer_email_severity).filled :string
        required(:commits_trailer_signer_key_enabled).filled :bool
        required(:commits_trailer_signer_key_severity).filled :string
        required(:commits_trailer_signer_key_includes).array :string
        required(:commits_trailer_signer_name_enabled).filled :bool
        required(:commits_trailer_signer_name_severity).filled :string
        required(:commits_trailer_signer_name_minimum).filled :integer
        required(:commits_trailer_tracker_key_enabled).filled :bool
        required(:commits_trailer_tracker_key_severity).filled :string
        required(:commits_trailer_tracker_key_includes).array :string
        required(:commits_trailer_tracker_value_enabled).filled :bool
        required(:commits_trailer_tracker_value_severity).filled :string
        required(:commits_trailer_tracker_value_includes).array :string
      end
    end
  end
end
