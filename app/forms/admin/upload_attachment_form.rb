class Admin::UploadAttachmentForm
  include ActiveModel::Model

  delegate :persisted?, :to_param, to: :@object

  validates :notes, presence: true
  validate :validate_file_size

  def initialize(object, params = {})
    @object = object
    @params = params
  end

  def notes
    @params[:notes]
  end

  def file_size
    42
  end

  def validate_file_size
    errors.add(:file_size, :too_big)
  end

  def model_name
    ActiveModel::Name.new(self, nil, 'Admin::UploadAttachmentForm')
  end
end
