module RedirectToBackUrl
  module ApplicationHelper
    def save_back_url(back_url_key = "back_url")
      url = params[back_url_key] || request.referer
      return "<input type='hidden' name='#{back_url_key}' value='#{url}' />" unless url.blank?
    end
  end
end