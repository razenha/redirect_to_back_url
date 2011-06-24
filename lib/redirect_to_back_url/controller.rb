module RedirectToBackUrl
  module Controller
    def redirect_to_back_url(back_url_key = :back_urk)
      url = params[back_url_key]
      if url
        redirect_to url
      else
        if block_given?
          yield
        else
          raise "Neither back url in params nor optional back url provided"
        end
      end
    end
  end
end
