# frozen_string_literal: true

module Git
  module Lint
    module Configuration
      # Defines configuration content as the primary source of truth for use throughout the gem.
      Model = Data.define :commits_author_capitalization_enabled,
                          :commits_author_capitalization_severity,
                          :commits_author_email_enabled,
                          :commits_author_email_severity,
                          :commits_author_name_enabled,
                          :commits_author_name_severity,
                          :commits_author_name_minimum,
                          :commits_body_bullet_capitalization_enabled,
                          :commits_body_bullet_capitalization_severity,
                          :commits_body_bullet_capitalization_includes,
                          :commits_body_bullet_delimiter_enabled,
                          :commits_body_bullet_delimiter_severity,
                          :commits_body_bullet_delimiter_includes,
                          :commits_body_bullet_only_enabled,
                          :commits_body_bullet_only_severity,
                          :commits_body_bullet_only_includes,
                          :commits_body_leading_line_enabled,
                          :commits_body_leading_line_severity,
                          :commits_body_line_length_enabled,
                          :commits_body_line_length_severity,
                          :commits_body_line_length_maximum,
                          :commits_body_paragraph_capitalization_enabled,
                          :commits_body_paragraph_capitalization_severity,
                          :commits_body_phrase_enabled,
                          :commits_body_phrase_severity,
                          :commits_body_phrase_excludes,
                          :commits_body_presence_enabled,
                          :commits_body_presence_severity,
                          :commits_body_presence_minimum,
                          :commits_body_tracker_shorthand_enabled,
                          :commits_body_tracker_shorthand_severity,
                          :commits_body_tracker_shorthand_excludes,
                          :commits_signature_enabled,
                          :commits_signature_severity,
                          :commits_signature_includes,
                          :commits_subject_length_enabled,
                          :commits_subject_length_severity,
                          :commits_subject_length_maximum,
                          :commits_subject_prefix_enabled,
                          :commits_subject_prefix_severity,
                          :commits_subject_prefix_delimiter,
                          :commits_subject_prefix_includes,
                          :commits_subject_suffix_enabled,
                          :commits_subject_suffix_severity,
                          :commits_subject_suffix_excludes,
                          :commits_trailer_collaborator_capitalization_enabled,
                          :commits_trailer_collaborator_capitalization_severity,
                          :commits_trailer_collaborator_email_enabled,
                          :commits_trailer_collaborator_email_severity,
                          :commits_trailer_collaborator_key_enabled,
                          :commits_trailer_collaborator_key_severity,
                          :commits_trailer_collaborator_key_includes,
                          :commits_trailer_collaborator_name_enabled,
                          :commits_trailer_collaborator_name_severity,
                          :commits_trailer_collaborator_name_minimum,
                          :commits_trailer_duplicate_enabled,
                          :commits_trailer_duplicate_severity,
                          :commits_trailer_format_key_enabled,
                          :commits_trailer_format_key_severity,
                          :commits_trailer_format_key_includes,
                          :commits_trailer_format_value_enabled,
                          :commits_trailer_format_value_severity,
                          :commits_trailer_format_value_includes,
                          :commits_trailer_issue_key_enabled,
                          :commits_trailer_issue_key_severity,
                          :commits_trailer_issue_key_includes,
                          :commits_trailer_issue_value_enabled,
                          :commits_trailer_issue_value_severity,
                          :commits_trailer_issue_value_includes,
                          :commits_trailer_milestone_key_enabled,
                          :commits_trailer_milestone_key_severity,
                          :commits_trailer_milestone_value_enabled,
                          :commits_trailer_milestone_value_severity,
                          :commits_trailer_milestone_value_includes,
                          :commits_trailer_order_enabled,
                          :commits_trailer_order_severity,
                          :commits_trailer_reviewer_key_enabled,
                          :commits_trailer_reviewer_key_severity,
                          :commits_trailer_reviewer_value_enabled,
                          :commits_trailer_reviewer_value_severity,
                          :commits_trailer_reviewer_value_includes,
                          :commits_trailer_signer_capitalization_enabled,
                          :commits_trailer_signer_capitalization_severity,
                          :commits_trailer_signer_email_enabled,
                          :commits_trailer_signer_email_severity,
                          :commits_trailer_signer_key_enabled,
                          :commits_trailer_signer_key_severity,
                          :commits_trailer_signer_key_includes,
                          :commits_trailer_signer_name_enabled,
                          :commits_trailer_signer_name_severity,
                          :commits_trailer_signer_name_minimum,
                          :commits_trailer_tracker_key_enabled,
                          :commits_trailer_tracker_key_severity,
                          :commits_trailer_tracker_key_includes,
                          :commits_trailer_tracker_value_enabled,
                          :commits_trailer_tracker_value_severity,
                          :commits_trailer_tracker_value_includes
    end
  end
end
