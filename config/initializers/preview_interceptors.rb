# frozen_string_literal: true

ActionMailer::Base.register_preview_interceptor(ActionMailer::InlinePreviewInterceptor)
