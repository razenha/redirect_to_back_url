module RedirectToBackUrl
  module ApplicationHelper
    def save_back_url(back_url_key = "back_url")
      url = params[back_url_key] || request.referer
      return "<input type='hidden' name='#{back_url_key}' value='#{url}' />".html_safe unless url.blank?
    end
    
    def url_for_back_url(back_url_key = "back_url", failsafe = url_for(:action => :index))
      params[back_url_key] || request.referer || failsafe
    end
  end
end