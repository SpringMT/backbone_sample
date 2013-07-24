BackboneSample::Application.configure do
  config.after_initialize do
    notifier = ActiveSupport::Notifications.notifier
    subscribers = notifier.listeners_for 'sql.active_record'
    subscribers += notifier.listeners_for 'indentify.active_record'

    subscribers.each { |s| ActiveSupport::Notifications.unsubscribe s }
  end
end

