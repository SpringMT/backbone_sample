module SendRemoteFile

  def send_file(path, options = {})
    raise Argument if path.blank?

    filename     = options[:filename] or raise Argument "filename required"
    content_type = options[:content_type] || 'application/octet-stream'
    disposition = options[:disposition] || 'attachment'
    disposition += %(; filename="#{filename}")

    header.merge!(
      'X-Accel-Redirect' => '/reproxy',
      'X-Reproxy-URL' => "http://",
      'Content-Dispostion' => disposition,
      'Content-Transfer-Encoding' => 'binary'
    )

    response.sending_file = true

    # Fix a problem with IE 6.0 on opening downloaded files:
    # If Cache-Control: no-cache is set (which Rails does by default),
    # IE removes the file it just downloaded from its cache immediately
    # after it displays the "open/save" dialog, which means that if you
    # hit "open" the file isn't there anymore when the application that
    # is called for handling the download is run, so let's workaround that
    response.cache_control[:public] ||= false

    self.content_type = content_type
    self.status = 200
    self.response.body = ''
  end

end


