# monkey patching this file https://github.com/rails/rails/blob/6-0-stable/activestorage/app/controllers/active_storage/disk_controller.rb#L44-L56

class ActiveStorage::DiskController < ActiveStorage::BaseController
  private

  def serve_file(path, content_type:, disposition:)
    Rack::File.new(nil).serving(request, path).tap do |(status, headers, body)|
      self.status = status
      self.response_body = body

      headers.each do |name, value|
        response.headers[name] = value
      end

      response.headers["Content-Type"] = content_type || DEFAULT_SEND_FILE_TYPE
      response.headers["Content-Disposition"] = disposition || DEFAULT_SEND_FILE_DISPOSITION

      expires_in ActiveStorage.service_urls_expire_in, :public => true
    end
  end
end
