SimpleForm.setup do |config|

  config.wrappers :default, class: :input,
    hint_class: :field_with_hint, error_class: :field_with_errors, valid_class: :field_without_errors do |b|
    b.use :html5
    b.use :placeholder
    b.use :label, class: "visually-hidden"
    b.use :input, class: "form__input", error_class: "form__input--invalid"
 
    # b.optional :maxlength
    # b.optional :minlength
    # b.optional :pattern
    # b.optional :min_max
    # b.optional :readonly

    # ## Inputs
    # # b.use :input, class: 'input', error_class: 'is-invalid', valid_class: 'is-valid'
    # b.use :label_input
    # b.use :hint,  wrap_with: { tag: :span, class: :hint }
    # b.use :error, wrap_with: { tag: :span, class: :error }

    ## full_messages_for
    # If you want to display the full error message for the attribute, you can
    # use the component :full_error, like:
    #
    # b.use :full_error, wrap_with: { tag: :span, class: :error }
  end

  # Default configuration
  config.generate_additional_classes_for = []
  config.default_wrapper                 = :default
  config.button_class                    = "btn"
  config.label_text                      = lambda { |label, _, _| label }
  config.error_notification_tag          = :div
  config.error_notification_class        = "error_notification"
  config.browser_validations             = false
  config.boolean_style                   = :nested
  config.boolean_label_class             = "form__checkbox-label"
end
