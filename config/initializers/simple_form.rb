# frozen_string_literal: true

SimpleForm.setup do |config|
  config.wrappers :default, class: 'form__group' do |b|
    b.use :html5
    b.use :placeholder
    b.optional :maxlength
    b.use :label, class: 'visually-hidden'
    b.use :input, class: 'form__input', error_class: 'form__input--invalid'
  end

  config.generate_additional_classes_for = []
  config.default_wrapper = :default
  config.boolean_style = :nested
  config.button_class = 'btn'
  config.error_notification_tag = :div
  config.error_notification_class = 'error_notification'
  config.browser_validations = false
  config.boolean_label_class = 'form__checkbox-label'
end
