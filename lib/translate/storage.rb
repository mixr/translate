class Translate::Storage
  attr_accessor :locale
  
  def initialize(locale)
    self.locale = locale.to_sym
  end
  
  def write_to_file
    Translate::File.new(file_path).write(keys)
  end
  
  private
  def keys
    {locale => I18n.backend.send(:translations)[locale]}
  end
  
  def file_path
    File.join(Rails.root, "config", "locales", "extracted", "#{locale}.yml")
  end
end
